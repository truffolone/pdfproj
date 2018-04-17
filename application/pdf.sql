-- phpMyAdmin SQL Dump
-- version 4.7.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Creato il: Apr 17, 2018 alle 12:18
-- Versione del server: 5.7.19-17
-- Versione PHP: 7.1.13-1+ubuntu17.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pdf`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `applications`
--

CREATE TABLE `applications` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `applications`
--

INSERT INTO `applications` (`id`, `name`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'Fluidi di processo in raffineria', '2018-02-25 16:25:50', '2018-03-07 17:14:37', '2018-03-14 11:22:10'),
(2, 'Gas Treatment', '2018-03-07 15:35:15', '2018-03-07 15:35:15', '2018-03-08 10:18:19'),
(3, 'Gas Treatment1', '2018-03-07 15:56:28', '2018-03-07 16:04:41', '2018-03-14 11:22:12'),
(4, 'Refinery process fluids', '2018-03-14 12:40:38', '2018-03-14 12:40:38', NULL),
(5, 'Gas Treatment', '2018-03-14 12:40:54', '2018-04-16 12:08:09', NULL),
(6, 'Catalysts Recovery', '2018-03-14 12:41:11', '2018-04-16 12:07:53', NULL),
(7, 'Off-shore water injection', '2018-03-14 12:41:27', '2018-03-14 12:41:27', NULL),
(8, 'Ammine Filtration', '2018-03-14 12:41:38', '2018-04-16 12:17:00', NULL),
(9, 'Cosmetic', '2018-03-14 16:28:05', '2018-03-14 16:28:05', NULL),
(10, 'Fermentation', '2018-03-14 16:28:22', '2018-03-14 16:28:22', NULL),
(11, 'Prefiltration', '2018-03-14 16:28:36', '2018-04-16 12:08:40', NULL),
(12, 'Beverage and Water', '2018-03-14 16:28:57', '2018-03-14 16:28:57', NULL),
(13, 'Chocolate', '2018-03-14 16:29:10', '2018-03-14 16:29:10', NULL),
(14, 'Dairy', '2018-03-14 16:29:16', '2018-03-14 16:29:16', NULL),
(15, 'Process Fluids', '2018-03-14 16:30:18', '2018-04-16 12:09:12', NULL),
(16, 'Reagent', '2018-03-14 16:30:57', '2018-03-14 16:30:57', NULL),
(17, 'Solvent', '2018-03-14 16:31:04', '2018-03-14 16:31:04', NULL),
(18, 'Industrial process water filtration', '2018-03-14 16:31:41', '2018-03-14 16:31:41', NULL),
(19, 'Drinking water filtration', '2018-03-14 16:31:54', '2018-03-14 16:31:54', NULL),
(20, 'Waste water treatment', '2018-03-14 16:32:12', '2018-03-14 16:32:12', NULL),
(21, 'Softening system protection', '2018-03-14 16:32:23', '2018-03-14 16:32:23', NULL),
(22, 'Gas separations & treatment', '2018-03-14 16:33:11', '2018-03-14 16:33:11', NULL),
(23, 'Water treatment', '2018-03-14 16:33:36', '2018-03-14 16:33:36', NULL),
(24, 'Paints & inks production', '2018-03-14 16:33:56', '2018-03-14 16:33:56', NULL),
(25, 'Cataphoresis', '2018-03-14 16:34:07', '2018-03-14 16:34:07', NULL),
(26, 'Steel sector', '2018-03-14 16:34:19', '2018-03-14 16:34:19', NULL),
(27, 'Mechanic Industry', '2018-03-14 16:34:34', '2018-03-14 16:34:34', NULL),
(28, 'Paper Mills', '2018-03-14 16:34:45', '2018-03-14 16:34:45', NULL),
(29, 'Textile Industry', '2018-03-14 16:34:56', '2018-03-14 16:34:56', NULL),
(30, 'Pre-Prefiltration', '2018-04-16 10:38:06', '2018-04-16 10:38:06', NULL),
(31, 'Steel Production', '2018-04-16 10:53:42', '2018-04-16 10:53:42', NULL),
(32, 'Catalysts Recovery', '2018-04-16 12:07:59', '2018-04-16 12:07:59', NULL),
(33, 'Gas Treatment', '2018-04-16 12:08:16', '2018-04-16 12:08:16', NULL),
(34, 'Prefiltration', '2018-04-16 12:08:46', '2018-04-16 12:08:46', NULL),
(35, 'Process Fluids', '2018-04-16 12:09:18', '2018-04-16 12:09:18', NULL),
(36, 'Ammine Filtration', '2018-04-16 12:42:16', '2018-04-16 12:42:16', NULL),
(37, 'Iron & Steel', '2018-04-16 12:53:23', '2018-04-16 12:53:23', NULL),
(38, 'Prefiltration', '2018-04-16 12:58:36', '2018-04-16 12:58:36', NULL),
(39, 'Industrial Process water Filtration', '2018-04-16 12:58:57', '2018-04-16 12:58:57', NULL),
(40, 'Softening System Protection', '2018-04-16 12:59:13', '2018-04-16 12:59:13', NULL),
(41, 'Water Treatment', '2018-04-16 16:55:06', '2018-04-16 16:55:06', NULL),
(42, 'Gas Separetion & Treatment', '2018-04-16 17:14:09', '2018-04-16 17:14:09', NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `applications_categories`
--

CREATE TABLE `applications_categories` (
  `application_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `applications_categories`
--

INSERT INTO `applications_categories` (`application_id`, `category_id`) VALUES
(1, 2),
(1, 5),
(1, 6),
(3, 1),
(4, 4),
(5, 4),
(6, 4),
(7, 4),
(8, 1),
(9, 2),
(10, 2),
(11, 5),
(12, 2),
(13, 2),
(14, 2),
(15, 6),
(16, 1),
(17, 1),
(18, 5),
(19, 5),
(20, 5),
(21, 5),
(22, 6),
(23, 6),
(24, 3),
(25, 3),
(26, 3),
(27, 3),
(28, 3),
(29, 3),
(30, 2),
(31, 3),
(32, 1),
(33, 1),
(34, 2),
(35, 1),
(36, 4),
(37, 3),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 6);

-- --------------------------------------------------------

--
-- Struttura della tabella `application_translations`
--

CREATE TABLE `application_translations` (
  `id` int(11) NOT NULL,
  `object_id` int(11) DEFAULT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `application_translations`
--

INSERT INTO `application_translations` (`id`, `object_id`, `locale`, `field`, `content`) VALUES
(1, 1, 'en', 'name', 'Fluidi di processo in raffineria'),
(2, 1, 'it', 'name', 'Fluidi di processo in raffineria'),
(3, 2, 'en', 'name', 'Gas Treatment'),
(4, 3, 'en', 'name', 'Gas Treatment1'),
(5, 4, 'en', 'name', 'Refinery process fluids'),
(6, 5, 'en', 'name', 'Gas Treatment'),
(7, 6, 'en', 'name', 'Catalysts Recovery'),
(8, 7, 'en', 'name', 'Off-shore water injection'),
(9, 8, 'en', 'name', 'Ammine Filtration'),
(10, 9, 'en', 'name', 'Cosmetic'),
(11, 10, 'en', 'name', 'Fermentation'),
(12, 11, 'en', 'name', 'Prefiltration'),
(13, 12, 'en', 'name', 'Beverage and Water'),
(14, 13, 'en', 'name', 'Chocolate'),
(15, 14, 'en', 'name', 'Dairy'),
(16, 15, 'en', 'name', 'Process Fluids'),
(17, 16, 'en', 'name', 'Reagent'),
(18, 17, 'en', 'name', 'Solvent'),
(19, 18, 'en', 'name', 'Industrial process water filtration'),
(20, 19, 'en', 'name', 'Drinking water filtration'),
(21, 20, 'en', 'name', 'Waste water treatment'),
(22, 21, 'en', 'name', 'Softening system protection'),
(23, 22, 'en', 'name', 'Gas separations & treatment'),
(24, 23, 'en', 'name', 'Water treatment'),
(25, 24, 'en', 'name', 'Paints & inks production'),
(26, 25, 'en', 'name', 'Cataphoresis'),
(27, 26, 'en', 'name', 'Steel sector'),
(28, 27, 'en', 'name', 'Mechanic Industry'),
(29, 28, 'en', 'name', 'Paper Mills'),
(30, 29, 'en', 'name', 'Textile Industry'),
(31, 30, 'en', 'name', 'Pre-Prefiltration'),
(32, 31, 'en', 'name', 'Steel Production'),
(33, 32, 'en', 'name', 'Catalysts Recovery'),
(34, 33, 'en', 'name', 'Gas Treatment'),
(35, 34, 'en', 'name', 'Prefiltration'),
(36, 35, 'en', 'name', 'Process Fluids'),
(37, 36, 'en', 'name', 'Ammine Filtration'),
(38, 37, 'en', 'name', 'Iron & Steel'),
(39, 38, 'en', 'name', 'Prefiltration'),
(40, 39, 'en', 'name', 'Industrial Process water Filtration'),
(41, 40, 'en', 'name', 'Softening System Protection'),
(42, 41, 'en', 'name', 'Water Treatment'),
(43, 42, 'en', 'name', 'Gas Separetion & Treatment');

-- --------------------------------------------------------

--
-- Struttura della tabella `attribute_names`
--

CREATE TABLE `attribute_names` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `attribute_names`
--

INSERT INTO `attribute_names` (`id`, `name`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(4, 'name', '2018-03-14 17:34:17', '2018-03-14 17:34:17', NULL),
(5, 'name 2', '2018-03-14 17:34:17', '2018-03-14 17:34:17', NULL),
(6, 'name 3', '2018-03-14 17:34:17', '2018-03-14 17:34:17', NULL),
(7, 'name 4', '2018-03-14 17:34:17', '2018-03-14 17:34:17', NULL),
(8, 'Micron Ratings (μ)', '2018-04-04 11:56:21', '2018-04-04 11:56:21', NULL),
(9, 'Lengths (\")', '2018-04-04 11:56:21', '2018-04-04 11:56:21', NULL),
(10, 'Outer Diameter (\")', '2018-04-04 11:56:21', '2018-04-04 11:56:21', NULL),
(11, 'Glass Fiber Maximum Operating Temperature (°C)', '2018-04-04 11:56:22', '2018-04-04 11:56:22', NULL),
(12, 'Polypropylene Maximum Operating Temperature (°C)', '2018-04-04 11:56:22', '2018-04-04 11:56:22', NULL),
(13, 'Maximum Operating Pressure Differential (bar)', '2018-04-04 11:56:22', '2018-04-04 11:56:22', NULL),
(14, 'Maximum Recommended Changeout', '2018-04-04 11:56:22', '2018-04-04 11:56:22', NULL),
(15, 'Pressure Differential (bar) at Temperature (°C)', '2018-04-04 11:56:22', '2018-04-04 11:56:22', NULL),
(16, '', '2018-04-04 12:21:35', '2018-04-04 12:21:35', NULL),
(17, '{EMPTY}', '2018-04-04 12:43:40', '2018-04-04 12:43:40', NULL),
(18, 'Oboe', '2018-04-04 12:45:45', '2018-04-04 12:45:45', NULL),
(19, 'a', '2018-04-06 12:05:14', '2018-04-06 12:05:14', NULL),
(20, 'e', '2018-04-06 12:11:00', '2018-04-06 12:11:00', NULL),
(21, 'c', '2018-04-06 12:11:00', '2018-04-06 12:11:00', NULL),
(22, 'Pressure Differential (bar) at Temperature (ºC):', '2018-04-12 14:00:20', '2018-04-12 14:00:20', NULL),
(23, 'Construction method : Casted and welded', '2018-04-16 13:08:45', '2018-04-16 13:08:45', NULL),
(24, 'Welded version can be made with special materials (duplex, monel ecc.) for hazardous/corrosive', '2018-04-16 13:08:45', '2018-04-16 13:08:45', NULL),
(25, 'CONSTRUCTION METHOD:', '2018-04-16 15:16:53', '2018-04-16 15:16:53', NULL),
(26, 'CONSTRUCION TYPE:', '2018-04-16 15:16:53', '2018-04-16 15:16:53', NULL),
(27, 'MEDIA AVAIBILITY:', '2018-04-16 15:16:53', '2018-04-16 15:16:53', NULL),
(28, 'Liquid Turbine Meters', '2018-04-16 15:18:58', '2018-04-16 15:18:58', NULL),
(29, 'Gas Turbine Meters and Regulators', '2018-04-16 15:21:48', '2018-04-16 15:21:48', NULL),
(30, 'P.D. Meters', '2018-04-16 15:21:48', '2018-04-16 15:21:48', NULL),
(31, 'Centrifugal Pumps', '2018-04-16 15:21:48', '2018-04-16 15:21:48', NULL),
(32, 'Service: Crude Oil', '2018-04-16 15:21:48', '2018-04-16 15:21:48', NULL),
(33, 'Refined Products', '2018-04-16 15:21:49', '2018-04-16 15:21:49', NULL),
(34, 'Coke Fines', '2018-04-16 15:21:49', '2018-04-16 15:21:49', NULL),
(35, 'Water', '2018-04-16 15:21:49', '2018-04-16 15:21:49', NULL),
(36, 'Natural Gas Compressors', '2018-04-16 15:21:49', '2018-04-16 15:21:49', NULL),
(37, '• Max. pressure at 80° C', '2018-04-16 16:28:11', '2018-04-16 16:28:11', NULL),
(38, '• Material filter head', '2018-04-16 16:28:11', '2018-04-16 16:28:11', NULL),
(39, '• Material sump', '2018-04-16 16:28:11', '2018-04-16 16:28:11', NULL),
(40, '• Material cartridge adaptor', '2018-04-16 16:28:11', '2018-04-16 16:28:11', NULL),
(41, '• Material closure damp', '2018-04-16 16:28:11', '2018-04-16 16:28:11', NULL),
(42, '• Material gaskets', '2018-04-16 16:28:11', '2018-04-16 16:28:11', NULL),
(43, '• Material gaskets (N3/N4)', '2018-04-16 16:28:11', '2018-04-16 16:28:11', NULL),
(44, '• Vent / Manometer (N3/N4)', '2018-04-16 16:28:11', '2018-04-16 16:28:11', NULL),
(45, '• IN / OUT (N1/N2)', '2018-04-16 16:28:11', '2018-04-16 16:28:11', NULL),
(46, '• Drain (N5)', '2018-04-16 16:28:11', '2018-04-16 16:28:11', NULL),
(47, '• Deliverable Lengths', '2018-04-16 16:28:11', '2018-04-16 16:28:11', NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `attribute_name_translations`
--

CREATE TABLE `attribute_name_translations` (
  `id` int(11) NOT NULL,
  `object_id` int(11) DEFAULT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `attribute_name_translations`
--

INSERT INTO `attribute_name_translations` (`id`, `object_id`, `locale`, `field`, `content`) VALUES
(4, 4, 'en', 'name', 'name'),
(5, 5, 'en', 'name', 'name 2'),
(6, 6, 'en', 'name', 'name 3'),
(7, 7, 'en', 'name', 'name 4'),
(8, 8, 'en', 'name', 'Micron Ratings (μ)'),
(9, 9, 'en', 'name', 'Lengths (\")'),
(10, 10, 'en', 'name', 'Outer Diameter (\")'),
(11, 11, 'en', 'name', 'Glass Fiber Maximum Operating Temperature (°C)'),
(12, 12, 'en', 'name', 'Polypropylene Maximum Operating Temperature (°C)'),
(13, 13, 'en', 'name', 'Maximum Operating Pressure Differential (bar)'),
(14, 14, 'en', 'name', 'Maximum Recommended Changeout'),
(15, 15, 'en', 'name', 'Pressure Differential (bar) at Temperature (°C)'),
(16, 16, 'en', 'name', ''),
(17, 17, 'en', 'name', '{EMPTY}'),
(18, 18, 'en', 'name', 'Oboe'),
(19, 19, 'en', 'name', 'a'),
(20, 20, 'en', 'name', 'e'),
(21, 21, 'en', 'name', 'c'),
(22, 22, 'en', 'name', 'Pressure Differential (bar) at Temperature (ºC):'),
(23, 23, 'en', 'name', 'Construction method : Casted and welded'),
(24, 24, 'en', 'name', 'Welded version can be made with special materials (duplex, monel ecc.) for hazardous/corrosive'),
(25, 25, 'en', 'name', 'CONSTRUCTION METHOD:'),
(26, 26, 'en', 'name', 'CONSTRUCION TYPE:'),
(27, 27, 'en', 'name', 'MEDIA AVAIBILITY:'),
(28, 28, 'en', 'name', 'Liquid Turbine Meters'),
(29, 29, 'en', 'name', 'Gas Turbine Meters and Regulators'),
(30, 30, 'en', 'name', 'P.D. Meters'),
(31, 31, 'en', 'name', 'Centrifugal Pumps'),
(32, 32, 'en', 'name', 'Service: Crude Oil'),
(33, 33, 'en', 'name', 'Refined Products'),
(34, 34, 'en', 'name', 'Coke Fines'),
(35, 35, 'en', 'name', 'Water'),
(36, 36, 'en', 'name', 'Natural Gas Compressors'),
(37, 37, 'en', 'name', '• Max. pressure at 80° C'),
(38, 38, 'en', 'name', '• Material filter head'),
(39, 39, 'en', 'name', '• Material sump'),
(40, 40, 'en', 'name', '• Material cartridge adaptor'),
(41, 41, 'en', 'name', '• Material closure damp'),
(42, 42, 'en', 'name', '• Material gaskets'),
(43, 43, 'en', 'name', '• Material gaskets (N3/N4)'),
(44, 44, 'en', 'name', '• Vent / Manometer (N3/N4)'),
(45, 45, 'en', 'name', '• IN / OUT (N1/N2)'),
(46, 46, 'en', 'name', '• Drain (N5)'),
(47, 47, 'en', 'name', '• Deliverable Lengths');

-- --------------------------------------------------------

--
-- Struttura della tabella `attribute_name_value`
--

CREATE TABLE `attribute_name_value` (
  `id` int(11) NOT NULL,
  `attribute_name_id` int(11) DEFAULT NULL,
  `attribute_value_id` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `attribute_name_value`
--

INSERT INTO `attribute_name_value` (`id`, `attribute_name_id`, `attribute_value_id`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(4, 4, 4, '2018-03-14 17:34:17', '2018-03-14 17:34:17', NULL),
(5, 5, 5, '2018-03-14 17:34:17', '2018-03-14 17:34:17', NULL),
(6, 6, 6, '2018-03-14 17:34:17', '2018-03-14 17:34:17', NULL),
(7, 7, 7, '2018-03-14 17:34:17', '2018-03-14 17:34:17', NULL),
(8, 8, 8, '2018-04-04 11:56:21', '2018-04-05 15:34:24', NULL),
(9, 9, 9, '2018-04-04 11:56:21', '2018-04-05 15:16:50', NULL),
(10, 10, 10, '2018-04-04 11:56:22', '2018-04-05 15:16:50', NULL),
(11, 11, 11, '2018-04-04 11:56:22', '2018-04-05 15:34:24', NULL),
(12, 12, 12, '2018-04-04 11:56:22', '2018-04-05 15:34:47', NULL),
(13, 13, 13, '2018-04-04 11:56:22', '2018-04-05 15:34:47', NULL),
(14, 14, 14, '2018-04-04 11:56:22', '2018-04-04 11:56:22', NULL),
(15, 15, 15, '2018-04-04 11:56:22', '2018-04-05 15:34:47', NULL),
(16, 16, 14, '2018-04-04 12:21:35', '2018-04-04 12:21:35', NULL),
(17, 17, 14, '2018-04-04 12:43:40', '2018-04-05 15:37:10', NULL),
(18, 18, 16, '2018-04-04 12:45:45', '2018-04-04 12:45:45', NULL),
(19, 19, 17, '2018-04-06 12:05:14', '2018-04-06 12:05:14', NULL),
(20, 20, 18, '2018-04-06 12:11:00', '2018-04-06 12:11:00', NULL),
(21, 21, 19, '2018-04-06 12:11:00', '2018-04-06 12:11:00', NULL),
(22, 22, 15, '2018-04-12 14:00:20', '2018-04-12 14:00:20', NULL),
(23, 23, 14, '2018-04-16 13:08:45', '2018-04-16 13:08:45', NULL),
(24, 24, 14, '2018-04-16 13:08:45', '2018-04-16 13:08:45', NULL),
(25, 25, 20, '2018-04-16 15:16:53', '2018-04-16 15:16:53', NULL),
(26, 26, 21, '2018-04-16 15:16:53', '2018-04-16 15:16:53', NULL),
(27, 27, 22, '2018-04-16 15:16:53', '2018-04-16 15:16:53', NULL),
(28, 17, 23, '2018-04-16 15:18:58', '2018-04-16 15:18:58', NULL),
(29, 28, 24, '2018-04-16 15:18:58', '2018-04-16 15:18:58', NULL),
(30, 29, 25, '2018-04-16 15:21:48', '2018-04-16 15:21:48', NULL),
(31, 30, 26, '2018-04-16 15:21:48', '2018-04-16 15:21:48', NULL),
(32, 31, 14, '2018-04-16 15:21:48', '2018-04-16 15:21:48', NULL),
(33, 32, 27, '2018-04-16 15:21:49', '2018-04-16 15:21:49', NULL),
(34, 33, 26, '2018-04-16 15:21:49', '2018-04-16 15:21:49', NULL),
(35, 34, 28, '2018-04-16 15:21:49', '2018-04-16 15:21:49', NULL),
(36, 35, 29, '2018-04-16 15:21:49', '2018-04-16 15:21:49', NULL),
(37, 36, 30, '2018-04-16 15:21:49', '2018-04-16 15:21:49', NULL),
(38, 37, 31, '2018-04-16 16:28:11', '2018-04-16 16:28:11', NULL),
(39, 38, 32, '2018-04-16 16:28:11', '2018-04-16 16:28:11', NULL),
(40, 39, 32, '2018-04-16 16:28:11', '2018-04-16 16:28:11', NULL),
(41, 40, 32, '2018-04-16 16:28:11', '2018-04-16 16:28:11', NULL),
(42, 41, 33, '2018-04-16 16:28:11', '2018-04-16 16:28:11', NULL),
(43, 42, 34, '2018-04-16 16:28:11', '2018-04-16 16:28:11', NULL),
(44, 43, 35, '2018-04-16 16:28:11', '2018-04-16 16:28:11', NULL),
(45, 44, 36, '2018-04-16 16:28:11', '2018-04-16 16:28:11', NULL),
(46, 45, 37, '2018-04-16 16:28:11', '2018-04-16 16:28:11', NULL),
(47, 46, 38, '2018-04-16 16:28:11', '2018-04-16 16:28:11', NULL),
(48, 47, 39, '2018-04-16 16:28:11', '2018-04-16 16:28:11', NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `attribute_values`
--

CREATE TABLE `attribute_values` (
  `id` int(11) NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `attribute_values`
--

INSERT INTO `attribute_values` (`id`, `value`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(4, 'value', '2018-03-14 17:34:17', '2018-03-14 17:34:17', NULL),
(5, 'value 2', '2018-03-14 17:34:17', '2018-03-14 17:34:17', NULL),
(6, 'value 3', '2018-03-14 17:34:17', '2018-03-14 17:34:17', NULL),
(7, 'value 4', '2018-03-14 17:34:17', '2018-03-14 17:34:17', NULL),
(8, '1, 5, 10, 20, 40, 70', '2018-04-04 11:56:21', '2018-04-04 11:56:21', NULL),
(9, '20, 40, 60', '2018-04-04 11:56:21', '2018-04-04 11:56:21', NULL),
(10, '6', '2018-04-04 11:56:22', '2018-04-04 11:56:22', NULL),
(11, '121', '2018-04-04 11:56:22', '2018-04-04 11:56:22', NULL),
(12, '82', '2018-04-04 11:56:22', '2018-04-04 11:56:22', NULL),
(13, '3.4', '2018-04-04 11:56:22', '2018-04-04 11:56:22', NULL),
(14, '', '2018-04-04 11:56:22', '2018-04-04 11:56:22', NULL),
(15, '2.4 at 20', '2018-04-04 11:56:22', '2018-04-04 11:56:22', NULL),
(16, 'prova', '2018-04-04 12:45:45', '2018-04-04 12:45:45', NULL),
(17, 'b', '2018-04-06 12:05:14', '2018-04-06 12:05:14', NULL),
(18, 'f', '2018-04-06 12:11:00', '2018-04-06 12:11:00', NULL),
(19, 'd', '2018-04-06 12:11:00', '2018-04-06 12:11:00', NULL),
(20, 'welded, glued, crimped', '2018-04-16 15:16:53', '2018-04-16 15:16:53', NULL),
(21, 'smooth or pleated', '2018-04-16 15:16:53', '2018-04-16 15:16:53', NULL),
(22, 'wire mesh, perforated plate, wedge wire', '2018-04-16 15:16:53', '2018-04-16 15:16:53', NULL),
(23, 'The following is a general guideline of media normally used in various application:', '2018-04-16 15:18:58', '2018-04-16 15:18:58', NULL),
(24, '1/8” dia. perforated support with 40 x 40 mesh liner', '2018-04-16 15:18:58', '2018-04-16 15:18:58', NULL),
(25, '1/8” dia. perforated support with 80 x 80 mesh liner', '2018-04-16 15:21:48', '2018-04-16 15:21:48', NULL),
(26, '1/8” dia. perforated', '2018-04-16 15:21:48', '2018-04-16 15:21:48', NULL),
(27, '1/4” dia. perforated', '2018-04-16 15:21:49', '2018-04-16 15:21:49', NULL),
(28, '3/4” flattened expanded metal', '2018-04-16 15:21:49', '2018-04-16 15:21:49', NULL),
(29, '1/8” dia. to 3/8” dia perforated', '2018-04-16 15:21:49', '2018-04-16 15:21:49', NULL),
(30, 'Vary by manufacturer recommendations, 1/8” dia. perforated to 50 microns', '2018-04-16 15:21:49', '2018-04-16 15:21:49', NULL),
(31, '25 bar', '2018-04-16 16:28:11', '2018-04-16 16:28:11', NULL),
(32, 'AISI 304 / AISI 316', '2018-04-16 16:28:11', '2018-04-16 16:28:11', NULL),
(33, 'AISI 304', '2018-04-16 16:28:11', '2018-04-16 16:28:11', NULL),
(34, 'FPM gaskets*', '2018-04-16 16:28:11', '2018-04-16 16:28:11', NULL),
(35, 'KLINGERSIL C-4400', '2018-04-16 16:28:11', '2018-04-16 16:28:11', NULL),
(36, 'Rp 1/4” with plug', '2018-04-16 16:28:11', '2018-04-16 16:28:11', NULL),
(37, 'Rp 1”', '2018-04-16 16:28:11', '2018-04-16 16:28:11', NULL),
(38, 'Rp 3/8”', '2018-04-16 16:28:11', '2018-04-16 16:28:11', NULL),
(39, '5”, 10”, 20”, 30”', '2018-04-16 16:28:11', '2018-04-16 16:28:11', NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `attribute_value_translations`
--

CREATE TABLE `attribute_value_translations` (
  `id` int(11) NOT NULL,
  `object_id` int(11) DEFAULT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `attribute_value_translations`
--

INSERT INTO `attribute_value_translations` (`id`, `object_id`, `locale`, `field`, `content`) VALUES
(4, 4, 'en', 'value', 'value'),
(5, 5, 'en', 'value', 'value 2'),
(6, 6, 'en', 'value', 'value 3'),
(7, 7, 'en', 'value', 'value 4'),
(8, 8, 'en', 'value', '1, 5, 10, 20, 40, 70'),
(9, 9, 'en', 'value', '20, 40, 60'),
(10, 10, 'en', 'value', '6'),
(11, 11, 'en', 'value', '121'),
(12, 12, 'en', 'value', '82'),
(13, 13, 'en', 'value', '3.4'),
(14, 14, 'en', 'value', ''),
(15, 15, 'en', 'value', '2.4 at 20'),
(16, 16, 'en', 'value', 'prova'),
(17, 17, 'en', 'value', 'b'),
(18, 18, 'en', 'value', 'f'),
(19, 19, 'en', 'value', 'd'),
(20, 20, 'en', 'value', 'welded, glued, crimped'),
(21, 21, 'en', 'value', 'smooth or pleated'),
(22, 22, 'en', 'value', 'wire mesh, perforated plate, wedge wire'),
(23, 23, 'en', 'value', 'The following is a general guideline of media normally used in various application:'),
(24, 24, 'en', 'value', '1/8” dia. perforated support with 40 x 40 mesh liner'),
(25, 25, 'en', 'value', '1/8” dia. perforated support with 80 x 80 mesh liner'),
(26, 26, 'en', 'value', '1/8” dia. perforated'),
(27, 27, 'en', 'value', '1/4” dia. perforated'),
(28, 28, 'en', 'value', '3/4” flattened expanded metal'),
(29, 29, 'en', 'value', '1/8” dia. to 3/8” dia perforated'),
(30, 30, 'en', 'value', 'Vary by manufacturer recommendations, 1/8” dia. perforated to 50 microns'),
(31, 31, 'en', 'value', '25 bar'),
(32, 32, 'en', 'value', 'AISI 304 / AISI 316'),
(33, 33, 'en', 'value', 'AISI 304'),
(34, 34, 'en', 'value', 'FPM gaskets*'),
(35, 35, 'en', 'value', 'KLINGERSIL C-4400'),
(36, 36, 'en', 'value', 'Rp 1/4” with plug'),
(37, 37, 'en', 'value', 'Rp 1”'),
(38, 38, 'en', 'value', 'Rp 3/8”'),
(39, 39, 'en', 'value', '5”, 10”, 20”, 30”');

-- --------------------------------------------------------

--
-- Struttura della tabella `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deletedAt` datetime DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ordine` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `createdAt`, `updatedAt`, `deletedAt`, `icon`, `ordine`) VALUES
(1, 'Cosmetics', 'Categoria Prodotti Cosmetici (eng)', '2018-02-25 15:59:23', '2018-04-16 23:30:20', NULL, '0432b15d75f66895c4d515f7deb36bf6.png', 2),
(2, 'Alimentare e Farmaceutico', 'Descrizione per categoria Alimentare e Farmaceutico', '2018-02-25 16:00:00', '2018-04-16 23:30:34', NULL, '7341c675e29453aa7b0886f5652c7353.png', 5),
(3, 'Industrial', 'The industrial sector is divided into a variety of areas which are constantly changing. GV Filtri Industriali is able to offer a broad spectrum of evolving solutions, which follows industry evolution. We design customized systems on specific requirements, manufactured according to international standards.', '2018-03-07 09:55:01', '2018-04-04 11:30:21', NULL, '3feca47e96e96482fa7be2a7decf64ab.png', 6),
(4, 'Oil & Gas', 'Gv Filtri Industriali boasts a high know-how in the Oil & Gas area grown up in years of experience. We offer systems and filtration systems for the petrochemical and oil industry, gas and air treatment. We offer customized systems on specific requests, designed according to international standards', '2018-03-07 10:22:00', '2018-04-04 11:29:38', NULL, '2ff35f8fea9dd89a3ed15e3743e8e64f.png', 1),
(5, 'Water Treatment', 'GV Filtri Industriali has always developed solutions for water treatment, thanks to its deep know-how. It can offer you filtration systems for all types of applications, designed according to international standards.', '2018-03-07 10:48:48', '2018-04-16 23:30:30', NULL, '724f0cd42f3c89994e701e04615f8b62.png', 3),
(6, 'Power Generation', 'GV Filtri Industriali designs and produces filtration plants for the energy field, according to customer specification. We work in sympathy with our customer to ensure always maximum efficiency and we offer customized systems on specific requirements, designed according to international standards.', '2018-03-07 10:49:16', '2018-04-16 23:30:34', NULL, 'e9dec6f4de833b2dbdbd7c9d38af3b1b.png', 4);

-- --------------------------------------------------------

--
-- Struttura della tabella `category_translations`
--

CREATE TABLE `category_translations` (
  `id` int(11) NOT NULL,
  `object_id` int(11) DEFAULT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `category_translations`
--

INSERT INTO `category_translations` (`id`, `object_id`, `locale`, `field`, `content`) VALUES
(1, 1, 'en', 'name', 'Chemical & Petrolchemical'),
(2, 1, 'en', 'description', 'GV Filtri Industriali has a wide range of products and systems which meet all requirements for filtration, separation and purification for chemical and petrochemical industries. We offer customized systems on specific requests, designed according to international standards.'),
(3, 2, 'en', 'name', 'Food & Pharma'),
(4, 2, 'en', 'description', 'GV Filtri Industriali thanks to its great experience in food and pharmaceutical industry, is able to offer you tailor-made solutions to solve and improve your process, guaranteeing the highest quality and professionalism. We offer customized systems on specific requests, designed according to international standards.'),
(7, 1, 'it', 'name', 'Cosmetici'),
(8, 1, 'it', 'description', 'Categoria Prodotti Cosmetici'),
(9, 2, 'it', 'name', 'Alimentare e Farmaceutico'),
(10, 2, 'it', 'description', 'Descrizione per categoria Alimentare e Farmaceutico in Italiano'),
(11, 3, 'en', 'name', 'Industrial'),
(12, 3, 'en', 'description', 'The industrial sector is divided into a variety of areas which are constantly changing. GV Filtri Industriali is able to offer a broad spectrum of evolving solutions, which follows industry evolution. We design customized systems on specific requirements, manufactured according to international standards.'),
(13, 4, 'en', 'name', 'Oil & Gas'),
(14, 4, 'en', 'description', 'Gv Filtri Industriali boasts a high know-how in the Oil & Gas area grown up in years of experience. We offer systems and filtration systems for the petrochemical and oil industry, gas and air treatment. We offer customized systems on specific requests, designed according to international standards'),
(15, 5, 'en', 'name', 'Water Treatment'),
(16, 5, 'en', 'description', 'GV Filtri Industriali has always developed solutions for water treatment, thanks to its deep know-how. It can offer you filtration systems for all types of applications, designed according to international standards.'),
(17, 6, 'en', 'name', 'Energy'),
(18, 6, 'en', 'description', 'GV Filtri Industriali designs and produces filtration plants for the energy field, according to customer specification. We work in sympathy with our customer to ensure always maximum efficiency and we offer customized systems on specific requirements, designed according to international standards.');

-- --------------------------------------------------------

--
-- Struttura della tabella `document`
--

CREATE TABLE `document` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `note` longtext COLLATE utf8_unicode_ci NOT NULL,
  `pageType` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `pageId` int(11) NOT NULL,
  `ordine` smallint(6) NOT NULL DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `document`
--

INSERT INTO `document` (`id`, `product_id`, `name`, `note`, `pageType`, `pageId`, `ordine`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(11, 11, 'HIGH FLOW FILTER CARTRIDGE', '', 'mainPage', 5, 0, '2018-03-14 13:07:42', '2018-03-14 13:07:42', NULL),
(12, 11, 'Text Page', '', 'textPage', 6, 1, '2018-03-14 17:15:15', '2018-03-14 17:15:15', NULL),
(13, 11, 'Table Title', '', 'tablePage', 2, 2, '2018-03-14 17:20:57', '2018-03-14 17:20:57', NULL),
(14, 11, 'Image to try', '', 'imagePage', 3, 3, '2018-03-14 17:27:56', '2018-03-14 17:27:56', NULL),
(15, 11, 'Radio Page', '', 'radioPage', 2, 4, '2018-03-14 17:34:17', '2018-03-14 17:34:17', NULL),
(16, 13, 'INOX FILTER CARTRIDGES123', '', 'mainPage', 6, 0, '2018-03-23 10:26:25', '2018-03-23 10:37:58', NULL),
(17, 11, 'asdasdads', '', 'tablePage', 3, 5, '2018-03-26 16:16:15', '2018-03-26 16:16:15', '2018-03-26 16:16:19'),
(18, 11, '', '', 'textPage', 7, 5, '2018-03-26 17:09:09', '2018-03-26 17:09:09', NULL),
(19, 14, 'High flow filter cartridge', '', 'mainPage', 7, 0, '2018-04-04 11:38:32', '2018-04-16 12:32:18', NULL),
(21, 14, 'Ordering Info', '', 'imagePage', 4, 1, '2018-04-04 11:58:23', '2018-04-09 10:00:39', NULL),
(22, 14, 'titolo lista', '', 'radioPage', 6, 3, '2018-04-06 12:11:00', '2018-04-12 13:55:06', NULL),
(23, 14, 'Franco', '', 'textPage', 8, 4, '2018-04-12 13:51:33', '2018-04-12 13:55:06', NULL),
(24, 14, 'Technical Data', '', 'textPage', 9, 2, '2018-04-12 13:55:00', '2018-04-12 13:55:06', NULL),
(25, 14, 'Technical Data', '', 'radioPage', 7, 5, '2018-04-12 14:00:20', '2018-04-12 14:00:20', NULL),
(26, 15, 'TEMPORARY CONYCAL STRAINER', '', 'mainPage', 8, 0, '2018-04-13 13:15:20', '2018-04-13 13:15:20', NULL),
(27, 14, 'example', '', 'tablePage', 4, 6, '2018-04-13 15:03:38', '2018-04-13 15:03:38', NULL),
(28, 17, 'product', '', 'mainPage', 9, 0, '2018-04-13 15:20:20', '2018-04-13 15:20:20', NULL),
(29, 18, 'provona', '', 'mainPage', 10, 0, '2018-04-13 15:20:47', '2018-04-13 15:20:47', NULL),
(30, 19, '342342342', '', 'mainPage', 11, 0, '2018-04-13 15:21:23', '2018-04-13 15:21:23', NULL),
(31, 14, 'tabella con spunte', '', 'tablePage', 5, 7, '2018-04-13 16:28:35', '2018-04-13 16:28:35', NULL),
(32, 20, 'BAG FILTERS', '', 'mainPage', 12, 0, '2018-04-16 10:18:33', '2018-04-16 10:18:33', NULL),
(33, 20, 'prova', '', 'textPage', 10, 1, '2018-04-16 10:23:16', '2018-04-16 10:23:16', '2018-04-16 10:23:48'),
(34, 21, 'BASKET FILTER ELEMENTS', '', 'mainPage', 13, 0, '2018-04-16 10:31:28', '2018-04-16 10:31:28', NULL),
(35, 22, 'BASKET FILTER', '', 'mainPage', 14, 0, '2018-04-16 10:53:02', '2018-04-16 10:53:02', NULL),
(36, 23, 'HIGH FLOW FILTER CARTRIDGE 2', '', 'mainPage', 15, 0, '2018-04-16 11:04:42', '2018-04-16 11:18:55', NULL),
(37, 24, 'INOX FILTER CARTRIDGES', '', 'mainPage', 16, 0, '2018-04-16 11:10:22', '2018-04-16 11:10:22', NULL),
(38, 25, 'MELT BLOWN CARTRIDGE', '', 'mainPage', 17, 0, '2018-04-16 11:15:44', '2018-04-16 11:15:44', NULL),
(39, 26, 'MULTI BAG FILTER HOUSING', '', 'mainPage', 18, 0, '2018-04-16 11:24:18', '2018-04-16 11:24:18', NULL),
(40, 27, 'MULTI CARTRIDGE HOUSING', '', 'mainPage', 19, 0, '2018-04-16 11:30:29', '2018-04-16 11:30:29', NULL),
(41, 28, 'OIL REMOVAL FILTERS STRAINER FOR AIR AND GAS', '', 'mainPage', 20, 0, '2018-04-16 11:34:01', '2018-04-16 11:34:01', NULL),
(42, 29, 'PHENOLIC RESIN CARTRIDGE', '', 'mainPage', 21, 0, '2018-04-16 11:36:03', '2018-04-16 11:36:03', NULL),
(43, 30, 'PLEATED CARTRIDGE FILTERS polyethersulfone', '', 'mainPage', 22, 0, '2018-04-16 11:48:17', '2018-04-16 12:45:52', NULL),
(44, 31, 'PLEATED CARTRIDGE FILTERS polypropylene - glass fiber', '', 'mainPage', 23, 0, '2018-04-16 11:53:23', '2018-04-16 11:53:23', NULL),
(45, 32, 'PLEATED CARTRIDGE FILTERS', '', 'mainPage', 24, 0, '2018-04-16 11:57:57', '2018-04-16 11:57:57', NULL),
(46, 33, 'SELF-CLEANING FILTERS', '', 'mainPage', 25, 0, '2018-04-16 12:01:41', '2018-04-16 12:01:41', NULL),
(47, 34, 'SINGLE BAG HOUSING', '', 'mainPage', 26, 0, '2018-04-16 12:38:01', '2018-04-16 12:38:01', NULL),
(48, 35, 'SINGLE CARTRIDGE HOUSING', '', 'mainPage', 27, 0, '2018-04-16 12:42:31', '2018-04-16 12:42:31', NULL),
(49, 36, 'SPECIAL FILTER ELEMENTS AND HOUSING', '', 'mainPage', 28, 0, '2018-04-16 12:47:38', '2018-04-16 12:47:38', NULL),
(50, 37, 'TEE FILTER', '', 'mainPage', 29, 0, '2018-04-16 12:50:01', '2018-04-16 12:50:01', NULL),
(51, 38, 'TEMPORARY CONYCAL STRAINER', '', 'mainPage', 30, 0, '2018-04-16 12:52:36', '2018-04-16 12:52:36', NULL),
(52, 39, 'WOUND FILTER CARTRIDGES', '', 'mainPage', 31, 0, '2018-04-16 12:57:37', '2018-04-16 12:57:37', NULL),
(53, 40, 'Y FILTER STRAINER', '', 'mainPage', 32, 0, '2018-04-16 13:07:02', '2018-04-16 13:07:02', NULL),
(54, 40, 'Features', '', 'radioPage', 8, 1, '2018-04-16 13:08:45', '2018-04-16 13:08:45', NULL),
(55, 34, 'GPS bolts rathman type series:', '', 'imagePage', 5, 1, '2018-04-16 14:10:14', '2018-04-16 14:10:14', NULL),
(56, 34, '', '', 'tablePage', 6, 2, '2018-04-16 14:18:28', '2018-04-16 14:18:28', NULL),
(57, 34, 'tabela', '', 'tablePage', 7, 3, '2018-04-16 14:27:12', '2018-04-16 14:27:12', '2018-04-16 14:29:18'),
(58, 34, 'tabela', '', 'tablePage', 8, 4, '2018-04-16 14:27:12', '2018-04-16 14:27:12', '2018-04-16 14:27:27'),
(59, 31, 'Product description', '', 'textPage', 11, 1, '2018-04-16 14:48:20', '2018-04-16 14:48:20', NULL),
(60, 20, 'Dimensions', '', 'imagePage', 6, 2, '2018-04-16 15:06:40', '2018-04-16 15:47:30', NULL),
(61, 20, 'asdasd', '', 'tablePage', 9, 1, '2018-04-16 15:09:50', '2018-04-16 15:47:30', NULL),
(62, 20, 'Technical Data', '', 'textPage', 12, 3, '2018-04-16 15:11:17', '2018-04-16 15:11:17', NULL),
(63, 20, 'Ordering Info', '', 'imagePage', 7, 4, '2018-04-16 15:12:51', '2018-04-16 15:12:51', NULL),
(64, 22, 'Material of contruction:', '', 'textPage', 13, 1, '2018-04-16 15:15:34', '2018-04-16 15:15:34', NULL),
(65, 22, 'Features:', '', 'radioPage', 9, 2, '2018-04-16 15:16:53', '2018-04-16 15:16:53', NULL),
(66, 21, 'Straining Media Selection for Basket', '', 'radioPage', 10, 1, '2018-04-16 15:18:58', '2018-04-16 15:18:58', NULL),
(67, 21, 'Tabella', '', 'tablePage', 10, 2, '2018-04-16 15:22:12', '2018-04-16 15:22:12', NULL),
(68, 21, 'Technical Data', '', 'textPage', 14, 3, '2018-04-16 15:22:55', '2018-04-16 15:22:55', NULL),
(69, 23, 'Technical Data', '', 'textPage', 15, 1, '2018-04-16 15:28:49', '2018-04-16 15:28:49', NULL),
(70, 23, 'Ordering Info', '', 'imagePage', 8, 2, '2018-04-16 15:32:37', '2018-04-16 15:32:37', NULL),
(71, 24, 'tabella1', '', 'tablePage', 11, 1, '2018-04-16 15:33:35', '2018-04-16 16:22:34', NULL),
(72, 24, 'Tabella2', '', 'tablePage', 12, 2, '2018-04-16 15:33:47', '2018-04-16 15:33:47', '2018-04-16 16:25:52'),
(73, 24, 'Ordering Info', '', 'imagePage', 9, 3, '2018-04-16 15:34:30', '2018-04-16 15:34:30', NULL),
(74, 25, 'Characteristics', '', 'textPage', 16, 1, '2018-04-16 15:37:10', '2018-04-16 15:37:10', NULL),
(75, 25, 'Ordering Info', '', 'imagePage', 10, 2, '2018-04-16 15:38:04', '2018-04-16 15:38:04', NULL),
(76, 26, 'Features', '', 'imagePage', 11, 1, '2018-04-16 15:39:58', '2018-04-16 15:39:58', NULL),
(77, 26, 'Tabella', '', 'tablePage', 13, 2, '2018-04-16 15:40:15', '2018-04-16 15:40:15', NULL),
(78, 26, 'Ordering Info', '', 'imagePage', 12, 3, '2018-04-16 15:41:14', '2018-04-16 15:41:14', NULL),
(79, 27, 'Technical Data', '', 'imagePage', 13, 1, '2018-04-16 15:43:19', '2018-04-16 15:43:19', NULL),
(80, 27, 'Tabella', '', 'tablePage', 14, 2, '2018-04-16 15:43:39', '2018-04-16 15:43:39', NULL),
(81, 27, 'Technical Data', '', 'imagePage', 14, 3, '2018-04-16 15:44:30', '2018-04-16 15:44:30', NULL),
(82, 27, 'Tabella2', '', 'tablePage', 15, 4, '2018-04-16 15:44:50', '2018-04-16 15:44:50', NULL),
(83, 27, 'Technical Data', '', 'imagePage', 15, 5, '2018-04-16 15:45:23', '2018-04-16 15:45:23', NULL),
(84, 27, 'Tabella3', '', 'tablePage', 16, 6, '2018-04-16 15:45:38', '2018-04-16 15:45:38', NULL),
(85, 27, 'Technical Data', '', 'imagePage', 16, 7, '2018-04-16 15:46:04', '2018-04-16 15:46:04', NULL),
(86, 27, 'Tabella4', '', 'tablePage', 17, 8, '2018-04-16 15:46:24', '2018-04-16 15:46:24', NULL),
(87, 27, 'Tabella5', '', 'tablePage', 18, 9, '2018-04-16 15:46:35', '2018-04-16 15:46:35', NULL),
(88, 27, 'Tabella6', '', 'tablePage', 19, 10, '2018-04-16 15:46:47', '2018-04-16 15:46:47', NULL),
(89, 27, 'Technical Data', '', 'imagePage', 17, 11, '2018-04-16 15:47:21', '2018-04-16 15:47:21', NULL),
(90, 27, 'Tabella7', '', 'tablePage', 20, 12, '2018-04-16 15:47:37', '2018-04-16 15:47:37', NULL),
(91, 27, 'Ordering Info', '', 'imagePage', 18, 13, '2018-04-16 15:48:12', '2018-04-16 15:48:12', NULL),
(92, 29, 'Key product Features', '', 'textPage', 17, 1, '2018-04-16 15:50:06', '2018-04-16 15:50:06', NULL),
(93, 29, 'Recommended Operating Conditions:', '', 'textPage', 18, 2, '2018-04-16 15:50:56', '2018-04-16 15:50:56', NULL),
(94, 29, 'Ordering Info', '', 'imagePage', 19, 3, '2018-04-16 15:51:24', '2018-04-16 15:51:24', NULL),
(95, 32, 'Technical Data', '', 'tablePage', 21, 1, '2018-04-16 15:52:17', '2018-04-16 15:52:17', '2018-04-16 16:13:37'),
(96, 32, 'Tabella2', '', 'tablePage', 22, 2, '2018-04-16 15:52:37', '2018-04-16 15:52:37', '2018-04-16 16:13:40'),
(97, 31, 'Tabella', '', 'tablePage', 23, 2, '2018-04-16 15:55:05', '2018-04-16 15:55:05', NULL),
(98, 31, 'Technical Specification', '', 'textPage', 19, 3, '2018-04-16 15:56:54', '2018-04-16 15:56:54', NULL),
(99, 31, 'Tabella2', '', 'tablePage', 24, 4, '2018-04-16 15:57:10', '2018-04-16 15:57:10', NULL),
(100, 31, 'Ordering Info', '', 'imagePage', 20, 5, '2018-04-16 15:57:58', '2018-04-16 15:57:58', NULL),
(101, 33, ' Back-washing type Functioning description', '', 'imagePage', 21, 1, '2018-04-16 16:02:09', '2018-04-16 16:02:09', NULL),
(102, 33, 'Description of operation', '', 'textPage', 20, 2, '2018-04-16 16:02:30', '2018-04-16 16:02:30', NULL),
(103, 24, '', '', 'textPage', 21, 4, '2018-04-16 16:04:16', '2018-04-16 16:04:16', '2018-04-16 16:14:19'),
(104, 34, 'GPS V CLAMP series', '', 'imagePage', 22, 3, '2018-04-16 16:07:04', '2018-04-16 16:07:04', NULL),
(105, 34, 'Tabella', '', 'tablePage', 25, 4, '2018-04-16 16:07:22', '2018-04-16 16:07:22', NULL),
(106, 34, 'Ordering Info', '', 'imagePage', 23, 5, '2018-04-16 16:08:12', '2018-04-16 16:08:12', NULL),
(107, 32, 'Ordering Info', '', 'imagePage', 24, 1, '2018-04-16 16:14:12', '2018-04-16 16:14:12', NULL),
(108, 30, 'Tabella', '', 'tablePage', 26, 1, '2018-04-16 16:18:40', '2018-04-16 16:18:40', NULL),
(109, 30, 'Tabella2', '', 'tablePage', 27, 2, '2018-04-16 16:18:53', '2018-04-16 16:18:53', NULL),
(110, 30, 'Ordering Info', '', 'imagePage', 25, 3, '2018-04-16 16:20:37', '2018-04-16 16:20:37', NULL),
(111, 35, 'Features', '', 'radioPage', 11, 1, '2018-04-16 16:28:11', '2018-04-16 16:28:11', NULL),
(112, 35, 'Drawings', '', 'imagePage', 26, 2, '2018-04-16 16:28:49', '2018-04-16 16:28:49', NULL),
(113, 35, 'Tabella', '', 'tablePage', 28, 3, '2018-04-16 16:29:12', '2018-04-16 16:29:12', NULL),
(114, 35, 'Technical Data', '', 'textPage', 22, 4, '2018-04-16 16:29:45', '2018-04-16 16:29:45', NULL),
(115, 35, 'Ordering Info', '', 'imagePage', 27, 5, '2018-04-16 16:30:28', '2018-04-16 16:30:28', NULL),
(116, 37, 'Ordering Info', '', 'imagePage', 28, 1, '2018-04-16 16:31:55', '2018-04-16 16:31:55', NULL),
(117, 15, 'Features', '', 'textPage', 23, 1, '2018-04-16 16:33:17', '2018-04-16 16:33:17', NULL),
(118, 15, 'Dimensions', '', 'imagePage', 29, 2, '2018-04-16 16:33:45', '2018-04-16 16:33:45', NULL),
(119, 15, 'Tabella', '', 'tablePage', 29, 3, '2018-04-16 16:34:07', '2018-04-16 16:34:07', NULL),
(120, 15, 'Notes', '', 'textPage', 24, 4, '2018-04-16 16:34:30', '2018-04-16 16:34:30', NULL),
(121, 15, 'Ordering Info', '', 'imagePage', 30, 5, '2018-04-16 16:35:01', '2018-04-16 16:35:01', NULL),
(122, 39, 'Technical info', '', 'textPage', 25, 1, '2018-04-16 16:36:18', '2018-04-16 16:36:18', NULL),
(123, 39, 'Tabella', '', 'tablePage', 30, 2, '2018-04-16 16:36:31', '2018-04-16 16:36:31', NULL),
(124, 39, 'Tabella2', '', 'tablePage', 31, 3, '2018-04-16 16:36:43', '2018-04-16 16:36:43', NULL),
(125, 39, 'Ordering Info', '', 'imagePage', 31, 4, '2018-04-16 16:37:19', '2018-04-16 16:37:19', NULL),
(126, 40, 'Installation', '', 'textPage', 26, 2, '2018-04-16 16:39:17', '2018-04-16 16:39:17', NULL),
(127, 40, '.', '', 'imagePage', 32, 3, '2018-04-16 16:39:58', '2018-04-16 16:39:58', NULL),
(128, 40, 'Ordering Info', '', 'imagePage', 33, 4, '2018-04-16 16:43:17', '2018-04-16 16:43:17', NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `document_translations`
--

CREATE TABLE `document_translations` (
  `id` int(11) NOT NULL,
  `object_id` int(11) DEFAULT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `document_translations`
--

INSERT INTO `document_translations` (`id`, `object_id`, `locale`, `field`, `content`) VALUES
(21, 11, 'en', 'name', 'HIGH FLOW FILTER CARTRIDGE'),
(22, 11, 'en', 'note', ''),
(23, 12, 'en', 'name', 'Text Page'),
(24, 12, 'en', 'note', ''),
(25, 13, 'en', 'name', 'Table Title'),
(26, 13, 'en', 'note', ''),
(27, 14, 'en', 'name', 'Image to try'),
(28, 14, 'en', 'note', ''),
(29, 15, 'en', 'name', 'Radio Page'),
(30, 15, 'en', 'note', ''),
(31, 16, 'en', 'name', 'INOX FILTER CARTRIDGES2'),
(32, 16, 'en', 'note', ''),
(33, 17, 'en', 'name', 'asdasdads'),
(34, 17, 'en', 'note', ''),
(35, 18, 'en', 'name', ''),
(36, 18, 'en', 'note', ''),
(37, 19, 'en', 'name', 'EXAMPLE'),
(38, 19, 'en', 'note', ''),
(41, 21, 'en', 'name', 'Ordering Info'),
(42, 21, 'en', 'note', ''),
(43, 22, 'en', 'name', 'titolo lista'),
(44, 22, 'en', 'note', ''),
(45, 23, 'en', 'name', 'Franco'),
(46, 23, 'en', 'note', ''),
(47, 24, 'en', 'name', 'Technical Data'),
(48, 24, 'en', 'note', ''),
(49, 25, 'en', 'name', 'Technical Data'),
(50, 25, 'en', 'note', ''),
(51, 26, 'en', 'name', 'TEMPORARY CONYCAL STRAINER'),
(52, 26, 'en', 'note', ''),
(53, 27, 'en', 'name', 'example'),
(54, 27, 'en', 'note', ''),
(55, 28, 'en', 'name', 'product'),
(56, 28, 'en', 'note', ''),
(57, 29, 'en', 'name', 'provona'),
(58, 29, 'en', 'note', ''),
(59, 30, 'en', 'name', '342342342'),
(60, 30, 'en', 'note', ''),
(61, 31, 'en', 'name', 'tabella con spunte'),
(62, 31, 'en', 'note', ''),
(63, 32, 'en', 'name', 'BAG FILTERS'),
(64, 32, 'en', 'note', ''),
(65, 33, 'en', 'name', 'prova'),
(66, 33, 'en', 'note', ''),
(67, 34, 'en', 'name', 'BASKET FILTER ELEMENTS'),
(68, 34, 'en', 'note', ''),
(69, 35, 'en', 'name', 'BASKET FILTER'),
(70, 35, 'en', 'note', ''),
(71, 36, 'en', 'name', 'HIGH FLOW FILTER CARTRIDGE'),
(72, 36, 'en', 'note', ''),
(73, 37, 'en', 'name', 'INOX FILTER CARTRIDGES'),
(74, 37, 'en', 'note', ''),
(75, 38, 'en', 'name', 'MELT BLOWN CARTRIDGE'),
(76, 38, 'en', 'note', ''),
(77, 39, 'en', 'name', 'MULTI BAG FILTER HOUSING'),
(78, 39, 'en', 'note', ''),
(79, 40, 'en', 'name', 'MULTI CARTRIDGE HOUSING'),
(80, 40, 'en', 'note', ''),
(81, 41, 'en', 'name', 'OIL REMOVAL FILTERS STRAINER FOR AIR AND GAS'),
(82, 41, 'en', 'note', ''),
(83, 42, 'en', 'name', 'PHENOLIC RESIN CARTRIDGE'),
(84, 42, 'en', 'note', ''),
(85, 43, 'en', 'name', 'PLEATED CARTRIDGE FILTERS polyethersulfone'),
(86, 43, 'en', 'note', ''),
(87, 44, 'en', 'name', 'PLEATED CARTRIDGE FILTERS polypropylene - glass fiber'),
(88, 44, 'en', 'note', ''),
(89, 45, 'en', 'name', 'PLEATED CARTRIDGE FILTERS'),
(90, 45, 'en', 'note', ''),
(91, 46, 'en', 'name', 'SELF-CLEANING FILTERS'),
(92, 46, 'en', 'note', ''),
(93, 47, 'en', 'name', 'SINGLE BAG HOUSING'),
(94, 47, 'en', 'note', ''),
(95, 48, 'en', 'name', 'SINGLE CARTRIDGE HOUSING'),
(96, 48, 'en', 'note', ''),
(97, 49, 'en', 'name', 'SPECIAL FILTER ELEMENTS AND HOUSING'),
(98, 49, 'en', 'note', ''),
(99, 50, 'en', 'name', 'TEE FILTER'),
(100, 50, 'en', 'note', ''),
(101, 51, 'en', 'name', 'TEMPORARY CONYCAL STRAINER'),
(102, 51, 'en', 'note', ''),
(103, 52, 'en', 'name', 'WOUND FILTER CARTRIDGES'),
(104, 52, 'en', 'note', ''),
(105, 53, 'en', 'name', 'Y FILTER STRAINER'),
(106, 53, 'en', 'note', ''),
(107, 54, 'en', 'name', 'Features'),
(108, 54, 'en', 'note', ''),
(109, 55, 'en', 'name', 'GPS bolts rathman type series:'),
(110, 55, 'en', 'note', ''),
(111, 56, 'en', 'name', ''),
(112, 56, 'en', 'note', ''),
(113, 57, 'en', 'name', 'tabela'),
(114, 57, 'en', 'note', ''),
(115, 58, 'en', 'name', 'tabela'),
(116, 58, 'en', 'note', ''),
(117, 59, 'en', 'name', 'Product description'),
(118, 59, 'en', 'note', ''),
(119, 60, 'en', 'name', 'Dimensions'),
(120, 60, 'en', 'note', ''),
(121, 61, 'en', 'name', 'Compatibility'),
(122, 61, 'en', 'note', ''),
(123, 62, 'en', 'name', 'Technical Data'),
(124, 62, 'en', 'note', ''),
(125, 63, 'en', 'name', 'Ordering Info'),
(126, 63, 'en', 'note', ''),
(127, 64, 'en', 'name', 'Material of contruction:'),
(128, 64, 'en', 'note', ''),
(129, 65, 'en', 'name', 'Features:'),
(130, 65, 'en', 'note', ''),
(131, 66, 'en', 'name', 'Straining Media Selection for Basket'),
(132, 66, 'en', 'note', ''),
(133, 67, 'en', 'name', 'Tabella'),
(134, 67, 'en', 'note', ''),
(135, 68, 'en', 'name', 'Technical Data'),
(136, 68, 'en', 'note', ''),
(137, 69, 'en', 'name', 'Technical Data'),
(138, 69, 'en', 'note', ''),
(139, 70, 'en', 'name', 'Ordering Info'),
(140, 70, 'en', 'note', ''),
(141, 71, 'en', 'name', 'Technical Data'),
(142, 71, 'en', 'note', ''),
(143, 72, 'en', 'name', 'Tabella2'),
(144, 72, 'en', 'note', ''),
(145, 73, 'en', 'name', 'Ordering Info'),
(146, 73, 'en', 'note', ''),
(147, 74, 'en', 'name', 'Characteristics'),
(148, 74, 'en', 'note', ''),
(149, 75, 'en', 'name', 'Ordering Info'),
(150, 75, 'en', 'note', ''),
(151, 76, 'en', 'name', 'Features'),
(152, 76, 'en', 'note', ''),
(153, 77, 'en', 'name', 'Tabella'),
(154, 77, 'en', 'note', ''),
(155, 78, 'en', 'name', 'Ordering Info'),
(156, 78, 'en', 'note', ''),
(157, 79, 'en', 'name', 'Technical Data'),
(158, 79, 'en', 'note', ''),
(159, 80, 'en', 'name', 'Tabella'),
(160, 80, 'en', 'note', ''),
(161, 81, 'en', 'name', 'Technical Data'),
(162, 81, 'en', 'note', ''),
(163, 82, 'en', 'name', 'Tabella2'),
(164, 82, 'en', 'note', ''),
(165, 83, 'en', 'name', 'Technical Data'),
(166, 83, 'en', 'note', ''),
(167, 84, 'en', 'name', 'Tabella3'),
(168, 84, 'en', 'note', ''),
(169, 85, 'en', 'name', 'Technical Data'),
(170, 85, 'en', 'note', ''),
(171, 86, 'en', 'name', 'Tabella4'),
(172, 86, 'en', 'note', ''),
(173, 87, 'en', 'name', 'Tabella5'),
(174, 87, 'en', 'note', ''),
(175, 88, 'en', 'name', 'Tabella6'),
(176, 88, 'en', 'note', ''),
(177, 89, 'en', 'name', 'Technical Data'),
(178, 89, 'en', 'note', ''),
(179, 90, 'en', 'name', 'Tabella7'),
(180, 90, 'en', 'note', ''),
(181, 91, 'en', 'name', 'Ordering Info'),
(182, 91, 'en', 'note', ''),
(183, 92, 'en', 'name', 'Key product Features'),
(184, 92, 'en', 'note', ''),
(185, 93, 'en', 'name', 'Recommended Operating Conditions:'),
(186, 93, 'en', 'note', ''),
(187, 94, 'en', 'name', 'Ordering Info'),
(188, 94, 'en', 'note', ''),
(189, 95, 'en', 'name', 'Technical Data'),
(190, 95, 'en', 'note', ''),
(191, 96, 'en', 'name', 'Tabella2'),
(192, 96, 'en', 'note', ''),
(193, 97, 'en', 'name', 'Tabella'),
(194, 97, 'en', 'note', ''),
(195, 98, 'en', 'name', 'Technical Specification'),
(196, 98, 'en', 'note', ''),
(197, 99, 'en', 'name', 'Tabella2'),
(198, 99, 'en', 'note', ''),
(199, 100, 'en', 'name', 'Ordering Info'),
(200, 100, 'en', 'note', ''),
(201, 101, 'en', 'name', ' Back-washing type Functioning description'),
(202, 101, 'en', 'note', ''),
(203, 102, 'en', 'name', 'Description of operation'),
(204, 102, 'en', 'note', ''),
(205, 103, 'en', 'name', ''),
(206, 103, 'en', 'note', ''),
(207, 104, 'en', 'name', 'GPS V CLAMP series'),
(208, 104, 'en', 'note', ''),
(209, 105, 'en', 'name', 'Tabella'),
(210, 105, 'en', 'note', ''),
(211, 106, 'en', 'name', 'Ordering Info'),
(212, 106, 'en', 'note', ''),
(213, 107, 'en', 'name', 'Ordering Info'),
(214, 107, 'en', 'note', ''),
(215, 108, 'en', 'name', 'Tabella'),
(216, 108, 'en', 'note', ''),
(217, 109, 'en', 'name', 'Tabella2'),
(218, 109, 'en', 'note', ''),
(219, 110, 'en', 'name', 'Ordering Info'),
(220, 110, 'en', 'note', ''),
(221, 111, 'en', 'name', 'Features'),
(222, 111, 'en', 'note', ''),
(223, 112, 'en', 'name', 'Drawings'),
(224, 112, 'en', 'note', ''),
(225, 113, 'en', 'name', 'Tabella'),
(226, 113, 'en', 'note', ''),
(227, 114, 'en', 'name', 'Technical Data'),
(228, 114, 'en', 'note', ''),
(229, 115, 'en', 'name', 'Ordering Info'),
(230, 115, 'en', 'note', ''),
(231, 116, 'en', 'name', 'Ordering Info'),
(232, 116, 'en', 'note', ''),
(233, 117, 'en', 'name', 'Features'),
(234, 117, 'en', 'note', ''),
(235, 118, 'en', 'name', 'Dimensions'),
(236, 118, 'en', 'note', ''),
(237, 119, 'en', 'name', 'Tabella'),
(238, 119, 'en', 'note', ''),
(239, 120, 'en', 'name', 'Notes'),
(240, 120, 'en', 'note', ''),
(241, 121, 'en', 'name', 'Ordering Info'),
(242, 121, 'en', 'note', ''),
(243, 122, 'en', 'name', 'Technical info'),
(244, 122, 'en', 'note', ''),
(245, 123, 'en', 'name', 'Tabella'),
(246, 123, 'en', 'note', ''),
(247, 124, 'en', 'name', 'Tabella2'),
(248, 124, 'en', 'note', ''),
(249, 125, 'en', 'name', 'Ordering Info'),
(250, 125, 'en', 'note', ''),
(251, 126, 'en', 'name', 'Installation'),
(252, 126, 'en', 'note', ''),
(253, 127, 'en', 'name', '.'),
(254, 127, 'en', 'note', ''),
(255, 128, 'en', 'name', 'Ordering Info'),
(256, 128, 'en', 'note', '');

-- --------------------------------------------------------

--
-- Struttura della tabella `ext_log_entries`
--

CREATE TABLE `ext_log_entries` (
  `id` int(11) NOT NULL,
  `action` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `logged_at` datetime NOT NULL,
  `object_id` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `object_class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `version` int(11) NOT NULL,
  `data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)',
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `ext_translations`
--

CREATE TABLE `ext_translations` (
  `id` int(11) NOT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `object_class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `foreign_key` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `image_pages`
--

CREATE TABLE `image_pages` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `image_pages`
--

INSERT INTO `image_pages` (`id`, `title`, `image`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(3, 'Image to try', '5210f6cea870952b6c51afbe0a2c38c9.png', '2018-03-14 17:27:55', '2018-03-16 16:10:39', NULL),
(4, 'Ordering Info', '1e20702f719dcf58361d558ebf88aca1.png', '2018-04-04 11:58:23', '2018-04-04 12:06:50', NULL),
(5, 'GPS bolts rathman type series:', 'e285118916e01fab2f31579e6cfe7e3b.png', '2018-04-16 14:10:14', '2018-04-16 14:10:14', NULL),
(6, 'Dimensions', '52667900e69c5541ddad293944956bf2.png', '2018-04-16 15:06:39', '2018-04-16 15:08:02', NULL),
(7, 'Ordering Info', '457338027966a0aaa0609d6d83ee61e3.png', '2018-04-16 15:12:51', '2018-04-16 15:12:51', NULL),
(8, 'Ordering Info', 'dfb3b2b9f42799dec689cd2b179f51b3.png', '2018-04-16 15:32:37', '2018-04-17 00:08:42', NULL),
(9, 'Ordering Info', 'c5087e63529df57dead5465cd62c487c.png', '2018-04-16 15:34:30', '2018-04-16 15:34:30', NULL),
(10, 'Ordering Info', '74c675fc5057fe977f2eb75d903f41ad.png', '2018-04-16 15:38:04', '2018-04-16 15:38:04', NULL),
(11, 'Features', 'dbb2644c47ff886ffa6b83a27f7b2475.png', '2018-04-16 15:39:58', '2018-04-16 15:39:58', NULL),
(12, 'Ordering Info', 'e637e78cf954873ccfe14df2ab529acf.png', '2018-04-16 15:41:14', '2018-04-16 15:41:14', NULL),
(13, 'Technical Data', '5d0eda8f78a3bf0ad0fc9687595ded2e.png', '2018-04-16 15:43:17', '2018-04-16 15:43:17', NULL),
(14, 'Technical Data', '939397448e91f9cdff054b10ded93d88.png', '2018-04-16 15:44:29', '2018-04-16 15:44:29', NULL),
(15, 'Technical Data', 'aa1e8fbb3e286372f30918ce7ded167f.png', '2018-04-16 15:45:23', '2018-04-16 15:45:23', NULL),
(16, 'Technical Data', '00326c49c8e3232bb47fd620675c3e31.png', '2018-04-16 15:46:04', '2018-04-16 15:46:04', NULL),
(17, 'Technical Data', 'ea0cf1ee019d62363bb98aeb74b6169d.png', '2018-04-16 15:47:21', '2018-04-16 15:47:21', NULL),
(18, 'Ordering Info', '5eafb0ddfdfe8a9b499d41db9de5de74.png', '2018-04-16 15:48:12', '2018-04-16 15:48:12', NULL),
(19, 'Ordering Info', '9cc733ae9fb9b09f6db4e60396decbf4.png', '2018-04-16 15:51:24', '2018-04-16 15:51:24', NULL),
(20, 'Ordering Info', 'd23797bb469187f4cb01a5742b6340db.png', '2018-04-16 15:57:58', '2018-04-16 15:57:58', NULL),
(21, ' Back-washing type Functioning description', 'a7cdc6cc6b31240370927b915d41e31a.png', '2018-04-16 16:02:09', '2018-04-16 16:02:09', NULL),
(22, 'GPS V CLAMP series', 'fc4d1aa07ee8d5a440c5068af10d5ddb.png', '2018-04-16 16:07:04', '2018-04-16 16:07:04', NULL),
(23, 'Ordering Info', '7def400b06d276579d32efee8e759b19.png', '2018-04-16 16:08:12', '2018-04-16 16:08:12', NULL),
(24, 'Ordering Info', '64f20b85a9b8595b048581999c96b3cf.png', '2018-04-16 16:14:12', '2018-04-16 16:14:12', NULL),
(25, 'Ordering Info', '812fa223e218d23ac36be31bedc2bc08.png', '2018-04-16 16:20:37', '2018-04-16 16:20:37', NULL),
(26, 'Drawings', 'eab3ae8d6e66a743a7ccf2e4a149ffd0.png', '2018-04-16 16:28:49', '2018-04-16 16:28:49', NULL),
(27, 'Ordering Info', '3d558beaf7bdf8c53a049cf59c947c3f.png', '2018-04-16 16:30:28', '2018-04-16 16:30:28', NULL),
(28, 'Ordering Info', '0bdc3ed09366bafa11aa61f69ec5a8c8.png', '2018-04-16 16:31:55', '2018-04-16 16:31:55', NULL),
(29, 'Dimensions', 'cdb336e798ebe85f201450b37dae8147.png', '2018-04-16 16:33:45', '2018-04-16 16:33:45', NULL),
(30, 'Ordering Info', '97c94f3d5b69ba236c53a476e1d79c9a.png', '2018-04-16 16:35:01', '2018-04-16 16:35:01', NULL),
(31, 'Ordering Info', 'a88e16c417f298aae2d8d348b8ed4389.png', '2018-04-16 16:37:19', '2018-04-16 16:37:19', NULL),
(32, '.', '8a6986125ce7dac2279cefb5672d9b76.png', '2018-04-16 16:39:58', '2018-04-16 16:39:58', NULL),
(33, 'Ordering Info', '42a1083270df499b036a6d989cbb82d8.png', '2018-04-16 16:43:17', '2018-04-16 16:43:17', NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `image_page_translations`
--

CREATE TABLE `image_page_translations` (
  `id` int(11) NOT NULL,
  `object_id` int(11) DEFAULT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `image_page_translations`
--

INSERT INTO `image_page_translations` (`id`, `object_id`, `locale`, `field`, `content`) VALUES
(3, 3, 'en', 'title', 'Image to try'),
(4, 4, 'en', 'title', 'Ordering Info'),
(5, 5, 'en', 'title', 'GPS bolts rathman type series:'),
(6, 6, 'en', 'title', 'Dimensions'),
(7, 7, 'en', 'title', 'Ordering Info'),
(8, 8, 'en', 'title', 'Ordering Info'),
(9, 9, 'en', 'title', 'Ordering Info'),
(10, 10, 'en', 'title', 'Ordering Info'),
(11, 11, 'en', 'title', 'Features'),
(12, 12, 'en', 'title', 'Ordering Info'),
(13, 13, 'en', 'title', 'Technical Data'),
(14, 14, 'en', 'title', 'Technical Data'),
(15, 15, 'en', 'title', 'Technical Data'),
(16, 16, 'en', 'title', 'Technical Data'),
(17, 17, 'en', 'title', 'Technical Data'),
(18, 18, 'en', 'title', 'Ordering Info'),
(19, 19, 'en', 'title', 'Ordering Info'),
(20, 20, 'en', 'title', 'Ordering Info'),
(21, 21, 'en', 'title', ' Back-washing type Functioning description'),
(22, 22, 'en', 'title', 'GPS V CLAMP series'),
(23, 23, 'en', 'title', 'Ordering Info'),
(24, 24, 'en', 'title', 'Ordering Info'),
(25, 25, 'en', 'title', 'Ordering Info'),
(26, 26, 'en', 'title', 'Drawings'),
(27, 27, 'en', 'title', 'Ordering Info'),
(28, 28, 'en', 'title', 'Ordering Info'),
(29, 29, 'en', 'title', 'Dimensions'),
(30, 30, 'en', 'title', 'Ordering Info'),
(31, 31, 'en', 'title', 'Ordering Info'),
(32, 32, 'en', 'title', '.'),
(33, 33, 'en', 'title', 'Ordering Info');

-- --------------------------------------------------------

--
-- Struttura della tabella `main_pages`
--

CREATE TABLE `main_pages` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8_unicode_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `main_pages`
--

INSERT INTO `main_pages` (`id`, `title`, `text`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(5, 'HIGH FLOW FILTER CARTRIDGE', '<p>High Flow Filter GV Cartridges combine the capacity of the filter bags to handle high flow rates. The filtering surface of pleated cartridges, guarantee high efficiency and low leakage in all applications whether they are industrial or thanks to they FDA certification on more delicate tasks.<br></p>', '2018-03-14 13:07:42', '2018-03-26 15:36:04', NULL),
(6, 'INOX FILTER CARTRIDGES123', '<h1>The Symfony MakerBundle</h1>\r\n<p>The MakerBundle is the fastest way to generate the most common code you\'ll need in a Symfony app: commands, controllers, form classes, event subscribers and more! This bundle is an alternative to <a href=\"https://github.com/sensiolabs/SensioGeneratorBundle\">SensioGeneratorBundle</a> for modern Symfony applications and requires Symfony 3.4 or newer and <a href=\"https://symfony.com/doc/current/setup/flex.html\" rel=\"nofollow\">Symfony Flex</a>.</p>\r\n<p><a href=\"https://symfony.com/doc/current/bundles/SymfonyMakerBundle/index.html\" rel=\"nofollow\">Read the documentation</a></p>\r\n<h2>Backwards Compatibility Promise</h2>\r\n<p>This bundle shares the <a href=\"https://symfony.com/doc/current/contributing/code/bc.html\" rel=\"nofollow\">backwards compatibility promise</a> from Symfony. But, with a few clarifications.</p>\r\n<p>A) The input arguments or options to a command <em>may</em> change between minor releases. If you\'re using the commands in an automated, scripted way, be aware of this.</p>\r\n<p>B) The generated code itself may change between minor releases. This will allow us to continuously improve the generated code!</p>', '2018-03-23 10:26:25', '2018-03-23 10:37:58', NULL),
(7, 'High flow filter cartridge', '<p>High Flow Filter GV Cartridges combine the capacity of the filter bags to han dle high flow rates. The filtering surface of pleated cartridges, guarantee high efficiency and low leakage in all applications whether they are industrial or thanks to they FDA certification on more delicate tasks.</p>\r\n<p> </p>', '2018-04-04 11:38:32', '2018-04-16 13:03:57', NULL),
(8, 'TEMPORARY CONYCAL STRAINER', '<p>For more than thirty years GV Filtri produce temporary filters that are installed all around the world with the purpose to protect high value components.</p>\r\n<p>Temporary GVTH cone filters are designed and manufactured in accordance with the most common and strict industrial standards and using high quality raw materials.</p>\r\n<p>The cone and ring dimensions are such that they are compatible with ASME / ANSI B16.5 flanges.</p>\r\n<p>The GVTH cone filters have been dimensioned in accordance with the thirty-year experience of \"GV Filtri Industriali\" and on the basis of internally developed computing sheets, GV can dimension special temporary filters on request to meet any customer application.</p>', '2018-04-13 13:15:20', '2018-04-16 17:33:25', NULL),
(9, 'product', '<p>qweqewqew</p>', '2018-04-13 15:20:20', '2018-04-13 15:20:20', NULL),
(10, 'provona', '<p>asd</p>', '2018-04-13 15:20:47', '2018-04-13 15:20:47', NULL),
(11, '342342342', '<p>234234234</p>', '2018-04-13 15:21:23', '2018-04-13 15:21:23', NULL),
(12, 'BAG FILTERS', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>Bag Filters can be made of polypropylene, polyester and nylon.</p>\r\n<p>The bag finishes are all with heavy and double seams to give strength and reliability to the bag so this ensures that there is no passage of particles outside the bag.</p>\r\n<p>They can be supplied in various configurations such as oil absorption and high flow.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2018-04-16 10:18:33', '2018-04-16 23:49:48', NULL),
(13, 'BASKET FILTER ELEMENTS', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>The GV Filtri Industriali basket filter elements have a high mechanic resistance and the fully welded construction allows them to operate at high temperatures and to treat chemically aggressive fluids.</p>\r\n<p> </p>\r\n<p>The filtering surface can be increased thanks to the pleated execution, which guarantees a high accumulation capacity and extended mainte- nance intervals.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2018-04-16 10:31:28', '2018-04-16 16:51:55', NULL),
(14, 'BASKET FILTER', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>GV basket filters are sized and made according to customer specifica- tions. Many materials can be used for their realization such as: Stainless Steel, Carbon Steel and Special Steel (Monel, Duplex, Super Duplex, etc.). We design the most common international standards for design: ASME Sec. VIII, EN13445-3, PED94 / 9. On each filter, various surface treatments can be carried out, such as internal and external painting cycles, passivation and pickling.</p>\r\n<p> </p>\r\n<p>Offset basket filters can be equipped with the following optional acces- sories:</p>\r\n<p>- Valves</p>\r\n<p>- Relative or differential gauges</p>\r\n<p>- Temperature or pressure transmitters</p>\r\n</div>\r\n</div>\r\n<div>\r\n<div>\r\n<p>- Visual and acoustic alarms and indicators</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2018-04-16 10:53:02', '2018-04-16 16:50:11', NULL),
(15, 'HIGH FLOW FILTER CARTRIDGE 2', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>High Flow Filter GV Cartridges combine the capacity of the filter bags to handle high flow rates. The filtering surface of pleated cartridges, guarantee high efficiency and low leakage in all applications whether they are industrial or thanks to they FDA certification on more delicate tasks.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2018-04-16 11:04:42', '2018-04-16 16:55:31', NULL),
(16, 'INOX FILTER CARTRIDGES', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>The INOX filter cartridges can be supplied in fully welded, crimped and glued versions</p>\r\n<p> </p>\r\n<p>They are extremely robust cartridges that can withstand a differential pressure of 25 bar at 300 ° C. Fully welded execution allows both to operate at high temperatures (400 ° C and above) and to treat chemical- ly very aggressive fluids. The high filtration surface, derived from the pleated execution, guarantees a high accumulation capacity and extended maintenance intervals.</p>\r\n<p> </p>\r\n<p>They are available with many types of filter media, mesh, wedge wire and sintered fiber.</p>\r\n<p><br />The INOX cartridges are regenerable by backwash, chemical attack or ultrasonic bath.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2018-04-16 11:10:22', '2018-04-16 17:14:35', NULL),
(17, 'MELT BLOWN CARTRIDGE', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>Extruded polypropylene melt blown cartridges are high-life cartridges designed and built to ensure both the best in terms of functionality and cost, and broad compatibility with a wide range of fluids and chemicals.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2018-04-16 11:15:44', '2018-04-16 17:16:11', NULL),
(18, 'MULTI BAG FILTER HOUSING', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>The multi bag filter housings are designed to meet high flow rates while maintaining the practicality and low economic impact of the filter bags.</p>\r\n<p>Our range of mult sbag filters unlike other similar products on the market, ensures complete separation between the dirt chamber and the clean chamber, as the bag collar seat is made on a flange obtained by mechanical machining.</p>\r\n<p>Our multi bag filters are manufactured in accordance with our high quality standards and in accordance with PED Directive 97/23 / EC and the most common international standards.</p>\r\n<p>Multibag filters are available in both standard and special versions to ensure suitability for the application.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2018-04-16 11:24:18', '2018-04-16 17:21:05', NULL),
(19, 'MULTI CARTRIDGE HOUSING', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>The multi cartridge housing are completely made of Aisi 316/304 stainless steel. They are an ideal solution for those filtration services that require higher pressure, temperature and chemical attack capability, both in standard and special versions, designed to meet even the most critical applications.</p>\r\n<p> </p>\r\n<p>Housings are manufactured in accordance with our high quality standards and in accordance with PED 97/23 / CE and the most common internation- al standards.</p>\r\n<p> </p>\r\n<p>Filters can be supplied with different finish, closure, size, type of connec- tions to make them fit for the application you require.</p>\r\n<p> </p>\r\n<p>Our housings are equipped with a V-CLAMP quick opening which guaran- tees easy and fast maintenance.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2018-04-16 11:30:29', '2018-04-16 11:31:37', NULL),
(20, 'OIL REMOVAL FILTERS STRAINER FOR AIR AND GAS', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>Suitable for eliminating water oil particles from compressed air and air even in dual stage configuration.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2018-04-16 11:34:01', '2018-04-16 17:21:45', NULL),
(21, 'PHENOLIC RESIN CARTRIDGE', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>The GV-PR series cartridges, in acrylic phenolic resins, have been developed for the filtration of those fluids that are incompatible with other synthetic filter cartridges. The GV-PR series cartridges have a two-stage filtration facility to maximize separation efficiency and durability in the filtration of aggressive, highly viscous or high-temperature fluids.</p>\r\n<p> </p>\r\n<p>The one-piece construction with the coil-coated pre-filter film guarantees high mechanical strength of the cartridge for its use with fluids with a viscosity up to 3200 cSt, allowing it to withstand a differential pressure of up to 10 bar .</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2018-04-16 11:36:03', '2018-04-16 11:42:38', NULL),
(22, 'PLEATED CARTRIDGE FILTERS polyethersulfone', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>Manufactured form lot controlled, thermally bonded WRAS approved, BS6920 and FDA compilants materials.</p>\r\n<p> </p>\r\n<p>Biological retension rates: Bacteria: 99.9999% Log 7 (Brevundimonas Diminuta). Suitable for repeated sterilization (20 x 30 minute cycles at 121° C).<br />Integrity Tested Media, the PPPES records a bubble point of 2.06 bar (in iso-ptopyal- cohol) at 0.1 micron.</p>\r\n<p> </p>\r\n<p>Suitable ofr a use across a wide range of chemical application and over broad pH extremes.</p>\r\n<p>Cartridges are formed around a polypropylene core, with the polyethersulfone media protected by a polypropilene cage.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2018-04-16 11:48:17', '2018-04-16 17:24:43', NULL),
(23, 'PLEATED CARTRIDGE FILTERS polypropylene - glass fiber', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>The pleated GV-PP cartridge is one of the most efficient filtering elements available on the market. The GV-PP is a highly pleated multilayer pleated pleated cartridge, which provides an exceptional dimensional cut-off for targeted removal of solid particles.</p>\r\n<p> </p>\r\n<p>Among its features are:</p>\r\n<ul>\r\n<li>High filtering surface (0.6 m2 per 10 \"): Up to 50% more than the cartridges of other compa- rable sectors, the GV-PP offers higher flow rates and higher dirt build-up capacity.<br />–GV-PP adopts a technically advanced filter media that can effectively and consistently remove the desired granulometry, however allowing for crossing of smaller, non-damaging particles, thus maximizing filter life.</li>\r\n<li> </li>\r\n</ul>\r\n<p>- All the GV-PP series cartridges are thermally welded instead of glued, thus avoiding the adhesive leaching in the filtered stream - To ensure protection And safety in transportation, storage and handling, each cartridge is packed individually.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2018-04-16 11:53:23', '2018-04-16 23:12:46', NULL),
(24, 'PLEATED CARTRIDGE FILTERS', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>The pleated GV-PP cartridge is one of the most efficient filtering elements available on the market. The GV-PP is a highly pleated multilayer pleated pleated cartridge, which provides an exceptional dimensional cut-off for targeted removal of solid particles.</p>\r\n<p> </p>\r\n<p>Among its features are:</p>\r\n<p>- High filtering surface (0.6 m2 per 10 \"): Up to 50% more than the cartridges of other compa- rable sectors, the GV-PP offers higher flow rates and higher dirt build-up capacity.<br />–GV-PP adopts a technically advanced filter media that can effectively and consistently remove the desired granulometry, however allowing for crossing of smaller, non-damaging particles, thus maximizing filter life.</p>\r\n<ul>\r\n<li>Progress in technology has allowed Realization of a better and more robust exterior support that guarantees greater protection of the plated pack</li>\r\n<li>All the GV-PP series cartridges are thermally welded instead of glued, thus avoiding the adhesive leaching in the filtered stream - To ensure protection And safety in transportation, storage and handling, each cartridge is packed individually.</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2018-04-16 11:57:57', '2018-04-16 17:27:11', NULL),
(25, 'SELF-CLEANING FILTERS', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>Suitable for critical applications where continuous filter work is required are available in standard and special version with automatic and manual configuration.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2018-04-16 12:01:41', '2018-04-16 17:28:30', NULL),
(26, 'SINGLE BAG HOUSING', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>The GPS bag housings are designed to accommodate N.1 filter bags.</p>\r\n<p> </p>\r\n<p>Our range of bag filters unlike other similar products on the market, ensures complete separation between the dirt chamber and the clean chamber, as the bag collar seat is made on a flange obtained by mechanical machining.</p>\r\n<p> </p>\r\n<p>Our GPS bag filters are manufactured in accordance with our high quality standards and in accordance with PED 97/23 / CE and the most common international standards.</p>\r\n<p> </p>\r\n<p>The GPS filters are mechanically cleaned and subsequently electro-polished to provide a surface finish suitable for the food and pharmaceutical field. Upon request they can be supplied with mechanical polishing or pickling only for industrial use.</p>\r\n<p> </p>\r\n<p>Our GPS can bee equipped with a V-CLAMP quick opening, which ensures easy and fast maintenance. On request, for more demanding applications, the version with flanged closure and terminals can be provided.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2018-04-16 12:38:01', '2018-04-16 15:20:19', NULL),
(27, 'SINGLE CARTRIDGE HOUSING', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>The single cartridge housing are completely made of Aisi 316/304 stainless steel. They are an ideal solution for those filtration services that require greater resistance to pressure, temperature and chemical attack.</p>\r\n<p> </p>\r\n<p>Housings are manufactured in accordance with our high quality standards and in accordance with PED 97/23 / CE and the most common internation- al standards. Filters can be supplied with different finish, closure, size, type of connections to make them fit for the application you require.</p>\r\n<p> </p>\r\n<p>Our housings are equipped with a V-CLAMP quick opening which guaran- tees easy and fast maintenance.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2018-04-16 12:42:31', '2018-04-16 12:44:32', NULL),
(28, 'SPECIAL FILTER ELEMENTS AND HOUSING', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>We can be considered filter artisans, from several years we manufacture all our products following them from design to production. Passion and ethics for what we do offer our costumers a complete service.</p>\r\n<p> </p>\r\n<p>Internal production allows us to filters for every kind of application. All our filters are design and manufactured in accordance with all international standards.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2018-04-16 12:47:38', '2018-04-16 12:47:38', NULL),
(29, 'TEE FILTER', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>The basket frame is accurately hand-fitted to ensure a perfect fit between the basket and the filter body.</p>\r\n<p> </p>\r\n<p>The Basket (in perforated sheet, filter mesh or both) is constructed of Stainless Steel or other materials in accordance with the requirements of the Customer.</p>\r\n<p> </p>\r\n<p>The basket guides are normally constructed, except for different needs of the customer, in the same body material and ensure easy removal of the basket for cleaning or replacing it.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2018-04-16 12:50:01', '2018-04-16 12:50:01', NULL),
(30, 'TEMPORARY CONYCAL STRAINER', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>For more than thirty years GV Filtri produce temporary filters that are installed all around the world with the purpose to protect high value components.</p>\r\n<p> </p>\r\n<p>Temporary GVTH cone filters are designed and manufactured in accordance with the most common and strict industrial standards and using high quality raw materials.</p>\r\n<p> </p>\r\n<p>The cone and ring dimensions are such that they are compatible with ASME / ANSI B16.5 flanges.</p>\r\n<p> </p>\r\n<p>The GVTH cone filters have been dimensioned in accordance with the thirty-year experience of \"GV Filtri Industriali\" and on the basis of internally developed computing sheets, GV can dimension special temporary filters on request to meet any customer application.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2018-04-16 12:52:36', '2018-04-16 12:52:36', NULL),
(31, 'WOUND FILTER CARTRIDGES', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>The wound filter cartridges are realized by wrapping a fiber around a synthetic or stainless steel core that gives rise to a highly effective and economical cartridge.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2018-04-16 12:57:37', '2018-04-16 17:34:37', NULL),
(32, 'Y FILTER STRAINER', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>Y-type filters can be supplied in both casted and welded versions with welded or flanged threaded connections, both in standard and special versions according to the specifications requested by the customer.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2018-04-16 13:07:02', '2018-04-16 13:07:02', NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `main_page_applications`
--

CREATE TABLE `main_page_applications` (
  `main_page_id` int(11) NOT NULL,
  `application_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `main_page_applications`
--

INSERT INTO `main_page_applications` (`main_page_id`, `application_id`) VALUES
(5, 4),
(5, 7),
(5, 8),
(5, 9),
(5, 10),
(5, 11),
(5, 13),
(5, 14),
(5, 15),
(5, 18),
(5, 19),
(6, 4),
(6, 5),
(6, 6),
(6, 7),
(6, 8),
(6, 9),
(6, 10),
(6, 11),
(6, 12),
(6, 13),
(6, 14),
(6, 15),
(6, 16),
(6, 17),
(6, 18),
(6, 19),
(6, 20),
(6, 21),
(6, 22),
(6, 23),
(6, 24),
(6, 25),
(6, 26),
(6, 27),
(6, 28),
(6, 29),
(7, 4),
(8, 4),
(8, 9),
(8, 10),
(8, 11),
(8, 14),
(8, 15),
(8, 22),
(8, 23),
(8, 24),
(8, 27),
(8, 28),
(8, 29),
(8, 34),
(8, 37),
(9, 4),
(9, 5),
(9, 6),
(9, 7),
(9, 8),
(9, 9),
(9, 10),
(9, 11),
(9, 12),
(9, 13),
(9, 14),
(9, 15),
(9, 16),
(9, 17),
(9, 18),
(9, 19),
(9, 20),
(9, 21),
(9, 22),
(9, 23),
(9, 24),
(9, 25),
(9, 26),
(9, 27),
(9, 28),
(9, 29),
(10, 8),
(11, 7),
(12, 4),
(12, 9),
(12, 11),
(12, 13),
(12, 14),
(12, 15),
(12, 17),
(12, 18),
(12, 21),
(12, 22),
(12, 23),
(12, 24),
(12, 25),
(12, 27),
(12, 28),
(12, 29),
(12, 30),
(12, 35),
(13, 4),
(13, 11),
(13, 15),
(13, 18),
(13, 21),
(13, 22),
(13, 23),
(13, 24),
(13, 26),
(13, 28),
(13, 29),
(13, 30),
(13, 35),
(14, 4),
(14, 11),
(14, 15),
(14, 18),
(14, 21),
(14, 22),
(14, 23),
(14, 27),
(14, 28),
(14, 29),
(14, 30),
(14, 31),
(14, 35),
(15, 4),
(15, 7),
(15, 11),
(15, 15),
(15, 18),
(15, 21),
(15, 22),
(15, 23),
(15, 33),
(15, 34),
(15, 35),
(15, 36),
(15, 38),
(15, 39),
(15, 40),
(15, 41),
(16, 4),
(16, 5),
(16, 6),
(16, 9),
(16, 10),
(16, 11),
(16, 14),
(16, 17),
(16, 18),
(16, 21),
(16, 22),
(16, 23),
(16, 24),
(16, 27),
(16, 28),
(16, 29),
(16, 30),
(16, 31),
(16, 32),
(16, 33),
(16, 35),
(16, 36),
(16, 42),
(17, 4),
(17, 7),
(17, 9),
(17, 10),
(17, 11),
(17, 12),
(17, 14),
(17, 15),
(17, 16),
(17, 17),
(17, 18),
(17, 19),
(17, 21),
(17, 22),
(17, 23),
(17, 24),
(17, 27),
(17, 30),
(17, 35),
(17, 36),
(18, 4),
(18, 5),
(18, 6),
(18, 7),
(18, 9),
(18, 10),
(18, 11),
(18, 12),
(18, 14),
(18, 15),
(18, 16),
(18, 17),
(18, 18),
(18, 19),
(18, 20),
(18, 21),
(18, 22),
(18, 23),
(18, 24),
(18, 25),
(18, 27),
(18, 28),
(18, 29),
(18, 30),
(18, 32),
(18, 33),
(18, 35),
(18, 36),
(19, 4),
(19, 5),
(19, 6),
(19, 7),
(19, 8),
(19, 9),
(19, 10),
(19, 11),
(19, 12),
(19, 14),
(19, 15),
(19, 16),
(19, 17),
(19, 18),
(19, 19),
(19, 20),
(19, 21),
(19, 22),
(19, 23),
(19, 24),
(19, 27),
(19, 28),
(19, 29),
(19, 30),
(19, 31),
(20, 5),
(20, 10),
(20, 27),
(20, 31),
(20, 33),
(21, 17),
(21, 24),
(21, 27),
(22, 4),
(22, 5),
(22, 6),
(22, 7),
(22, 9),
(22, 10),
(22, 11),
(22, 12),
(22, 14),
(22, 15),
(22, 16),
(22, 17),
(22, 18),
(22, 19),
(22, 21),
(22, 23),
(22, 24),
(22, 27),
(22, 30),
(22, 32),
(22, 33),
(22, 35),
(22, 42),
(23, 4),
(23, 5),
(23, 6),
(23, 7),
(23, 9),
(23, 10),
(23, 11),
(23, 12),
(23, 14),
(23, 15),
(23, 16),
(23, 17),
(23, 18),
(23, 19),
(23, 21),
(23, 22),
(23, 23),
(23, 24),
(23, 27),
(23, 30),
(23, 32),
(23, 33),
(23, 35),
(24, 4),
(24, 5),
(24, 6),
(24, 7),
(24, 9),
(24, 10),
(24, 11),
(24, 12),
(24, 14),
(24, 15),
(24, 16),
(24, 17),
(24, 18),
(24, 19),
(24, 21),
(24, 22),
(24, 23),
(24, 24),
(24, 27),
(24, 30),
(24, 32),
(24, 33),
(24, 35),
(25, 4),
(25, 7),
(25, 11),
(25, 15),
(25, 18),
(25, 19),
(25, 20),
(25, 21),
(25, 22),
(25, 23),
(25, 24),
(25, 25),
(25, 27),
(25, 28),
(25, 29),
(25, 31),
(25, 34),
(25, 35),
(25, 36),
(26, 4),
(26, 9),
(26, 11),
(26, 13),
(26, 14),
(26, 15),
(26, 17),
(26, 18),
(26, 21),
(26, 22),
(26, 23),
(26, 24),
(26, 25),
(26, 27),
(26, 28),
(26, 29),
(26, 30),
(26, 35),
(27, 4),
(27, 5),
(27, 6),
(27, 7),
(27, 9),
(27, 10),
(27, 11),
(27, 12),
(27, 14),
(27, 15),
(27, 16),
(27, 17),
(27, 18),
(27, 19),
(27, 21),
(27, 22),
(27, 23),
(27, 24),
(27, 27),
(27, 28),
(27, 29),
(27, 30),
(27, 31),
(27, 32),
(27, 33),
(27, 35),
(27, 36),
(28, 4),
(28, 7),
(28, 9),
(28, 10),
(28, 11),
(28, 12),
(28, 13),
(28, 14),
(28, 15),
(28, 16),
(28, 17),
(28, 18),
(28, 19),
(28, 21),
(28, 22),
(28, 23),
(28, 24),
(28, 25),
(28, 27),
(28, 28),
(28, 29),
(28, 30),
(28, 31),
(28, 33),
(28, 35),
(28, 36),
(29, 4),
(29, 15),
(29, 18),
(29, 22),
(29, 23),
(29, 24),
(29, 35),
(30, 4),
(30, 9),
(30, 10),
(30, 11),
(30, 14),
(30, 15),
(30, 22),
(30, 23),
(30, 24),
(30, 27),
(30, 28),
(30, 29),
(30, 34),
(30, 35),
(31, 4),
(31, 7),
(31, 12),
(31, 15),
(31, 22),
(31, 23),
(31, 34),
(31, 35),
(31, 36),
(31, 38),
(31, 39),
(31, 40),
(32, 4),
(32, 15),
(32, 18),
(32, 22),
(32, 23),
(32, 35);

-- --------------------------------------------------------

--
-- Struttura della tabella `main_page_translations`
--

CREATE TABLE `main_page_translations` (
  `id` int(11) NOT NULL,
  `object_id` int(11) DEFAULT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `main_page_translations`
--

INSERT INTO `main_page_translations` (`id`, `object_id`, `locale`, `field`, `content`) VALUES
(9, 5, 'en', 'title', 'HIGH FLOW FILTER CARTRIDGE'),
(10, 5, 'en', 'text', '<p>High Flow Filter GV Cartridges combine the capacity of the filter bags to handle high flow rates. The filtering surface of pleated cartridges, guarantee high efficiency and low leakage in all applications whether they are industrial or thanks to they FDA certification on more delicate tasks.</p>'),
(11, 6, 'en', 'title', 'INOX FILTER CARTRIDGES2'),
(12, 6, 'en', 'text', '<h1>The Symfony MakerBundle</h1>\r\n<p>The MakerBundle is the fastest way to generate the most common code you\'ll need in a Symfony app: commands, controllers, form classes, event subscribers and more! This bundle is an alternative to <a href=\"https://github.com/sensiolabs/SensioGeneratorBundle\">SensioGeneratorBundle</a> for modern Symfony applications and requires Symfony 3.4 or newer and <a href=\"https://symfony.com/doc/current/setup/flex.html\" rel=\"nofollow\">Symfony Flex</a>.</p>\r\n<p><a href=\"https://symfony.com/doc/current/bundles/SymfonyMakerBundle/index.html\" rel=\"nofollow\">Read the documentation</a></p>\r\n<h2>Backwards Compatibility Promise</h2>\r\n<p>This bundle shares the <a href=\"https://symfony.com/doc/current/contributing/code/bc.html\" rel=\"nofollow\">backwards compatibility promise</a> from Symfony. But, with a few clarifications.</p>\r\n<p>A) The input arguments or options to a command <em>may</em> change between minor releases. If you\'re using the commands in an automated, scripted way, be aware of this.</p>\r\n<p>B) The generated code itself may change between minor releases. This will allow us to continuously improve the generated code!</p>'),
(13, 7, 'en', 'title', 'EXAMPLE'),
(14, 7, 'en', 'text', '<p>High Flow Filter GV Cartridges combine the capacity of the filter bags to han dle high flow rates. The filtering surface of pleated cartridges, guarantee high efficiency and low leakage in all applications whether they are industrial or thanks to they FDA certification on more delicate tasks.</p>\r\n<p> </p>'),
(15, 8, 'en', 'title', 'TEMPORARY CONYCAL STRAINER'),
(16, 8, 'en', 'text', '<p>For more than thirty years GV Filtri produce temporary filters that are installed all around the world with the purpose to protect high value components.</p>\r\n<p>Temporary GVTH cone filters are designed and manufactured in accordance with the most common and strict industrial standards and using high quality raw materials.</p>\r\n<p>The cone and ring dimensions are such that they are compatible with ASME / ANSI B16.5 flanges.</p>\r\n<p>The GVTH cone filters have been dimensioned in accordance with the thirty-year experience of \"GV Filtri Industriali\" and on the basis of internally developed computing sheets, GV can dimension special temporary filters on request to meet any customer application.</p>'),
(17, 9, 'en', 'title', 'product'),
(18, 9, 'en', 'text', '<p>qweqewqew</p>'),
(19, 10, 'en', 'title', 'provona'),
(20, 10, 'en', 'text', '<p>asd</p>'),
(21, 11, 'en', 'title', '342342342'),
(22, 11, 'en', 'text', '<p>234234234</p>'),
(23, 12, 'en', 'title', 'BAG FILTERS'),
(24, 12, 'en', 'text', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>Bag Filters can be made of polypropylene, polyester and nylon.</p>\r\n<p> </p>\r\n<p>The bag finishes are all with heavy and double seams to give strength and reliability to the bag so this ensures that there is no passage of particles outside the bag.</p>\r\n<p> </p>\r\n<p>They can be supplied in various configurations such as oil absorption and high flow.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(25, 13, 'en', 'title', 'BASKET FILTER ELEMENTS'),
(26, 13, 'en', 'text', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>The GV Filtri Industriali basket filter elements have a high mechanic resistance and the fully welded construction allows them to operate at high temperatures and to treat chemically aggressive fluids.</p>\r\n<p> </p>\r\n<p>The filtering surface can be increased thanks to the pleated execution, which guarantees a high accumulation capacity and extended mainte- nance intervals.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(27, 14, 'en', 'title', 'BASKET FILTER'),
(28, 14, 'en', 'text', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>GV basket filters are sized and made according to customer specifica- tions. Many materials can be used for their realization such as: Stainless Steel, Carbon Steel and Special Steel (Monel, Duplex, Super Duplex, etc.). We design the most common international standards for design: ASME Sec. VIII, EN13445-3, PED94 / 9. On each filter, various surface treatments can be carried out, such as internal and external painting cycles, passivation and pickling.</p>\r\n<p> </p>\r\n<p>Offset basket filters can be equipped with the following optional acces- sories:</p>\r\n<p>- Valves</p>\r\n<p>- Relative or differential gauges</p>\r\n<p>- Temperature or pressure transmitters</p>\r\n</div>\r\n</div>\r\n<div>\r\n<div>\r\n<p>- Visual and acoustic alarms and indicators</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(29, 15, 'en', 'title', 'HIGH FLOW FILTER CARTRIDGE'),
(30, 15, 'en', 'text', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>High Flow Filter GV Cartridges combine the capacity of the filter bags to handle high flow rates. The filtering surface of pleated cartridges, guarantee high efficiency and low leakage in all applications whether they are industrial or thanks to they FDA certification on more delicate tasks.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(31, 16, 'en', 'title', 'INOX FILTER CARTRIDGES'),
(32, 16, 'en', 'text', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>The INOX filter cartridges can be supplied in fully welded, crimped and glued versions</p>\r\n<p> </p>\r\n<p>They are extremely robust cartridges that can withstand a differential pressure of 25 bar at 300 ° C. Fully welded execution allows both to operate at high temperatures (400 ° C and above) and to treat chemical- ly very aggressive fluids. The high filtration surface, derived from the pleated execution, guarantees a high accumulation capacity and extended maintenance intervals.</p>\r\n<p> </p>\r\n<p>They are available with many types of filter media, mesh, wedge wire and sintered fiber.</p>\r\n<p><br />The INOX cartridges are regenerable by backwash, chemical attack or ultrasonic bath.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(33, 17, 'en', 'title', 'MELT BLOWN CARTRIDGE'),
(34, 17, 'en', 'text', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>Extruded polypropylene melt blown cartridges are high-life cartridges designed and built to ensure both the best in terms of functionality and cost, and broad compatibility with a wide range of fluids and chemicals.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(35, 18, 'en', 'title', 'MULTI BAG FILTER HOUSING'),
(36, 18, 'en', 'text', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>The multi bag filter housings are designed to meet high flow rates while maintaining the practicality and low economic impact of the filter bags.</p>\r\n<p> </p>\r\n<p>Our range of mult sbag filters unlike other similar products on the market, ensures complete separation between the dirt chamber and the clean chamber, as the bag collar seat is made on a flange obtained by mechanical machining.</p>\r\n<p> </p>\r\n<p>Our multi bag filters are manufactured in accordance with our high quality standards and in accordance with PED Directive 97/23 / EC and the most common international standards.</p>\r\n<p> </p>\r\n<p>Multibag filters are available in both standard and special versions to ensure suitability for the application.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(37, 19, 'en', 'title', 'MULTI CARTRIDGE HOUSING'),
(38, 19, 'en', 'text', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>The multi cartridge housing are completely made of Aisi 316/304 stainless steel. They are an ideal solution for those filtration services that require higher pressure, temperature and chemical attack capability, both in standard and special versions, designed to meet even the most critical applications.</p>\r\n<p> </p>\r\n<p>Housings are manufactured in accordance with our high quality standards and in accordance with PED 97/23 / CE and the most common internation- al standards.</p>\r\n<p> </p>\r\n<p>Filters can be supplied with different finish, closure, size, type of connec- tions to make them fit for the application you require.</p>\r\n<p> </p>\r\n<p>Our housings are equipped with a V-CLAMP quick opening which guaran- tees easy and fast maintenance.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(39, 20, 'en', 'title', 'OIL REMOVAL FILTERS STRAINER FOR AIR AND GAS'),
(40, 20, 'en', 'text', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>Suitable for eliminating water oil particles from compressed air and air even in dual stage configuration.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(41, 21, 'en', 'title', 'PHENOLIC RESIN CARTRIDGE'),
(42, 21, 'en', 'text', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>The GV-PR series cartridges, in acrylic phenolic resins, have been developed for the filtration of those fluids that are incompatible with other synthetic filter cartridges. The GV-PR series cartridges have a two-stage filtration facility to maximize separation efficiency and durability in the filtration of aggressive, highly viscous or high-temperature fluids.</p>\r\n<p> </p>\r\n<p>The one-piece construction with the coil-coated pre-filter film guarantees high mechanical strength of the cartridge for its use with fluids with a viscosity up to 3200 cSt, allowing it to withstand a differential pressure of up to 10 bar .</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(43, 22, 'en', 'title', 'PLEATED CARTRIDGE FILTERS polyethersulfone'),
(44, 22, 'en', 'text', '<p>Manufactured form lot controlled, thermally bonded WRAS approved, BS6920 and FDA compilants materials. Biological retension rates: Bacteria: 99.9999% Log 7 (Brevundimonas Diminuta).</p>\r\n<p>Suitable for repeated sterilization (20 x 30 minute cycles at 121° C). Integrity Tested Media, the PPPES records a bubble point of 2.06 bar (in iso-ptopyal- cohol) at 0.1 micron.</p>\r\n<p>Suitable ofr a use across a wide range of chemical application and over broad pH extremes.Cartridges are formed around a polypropylene core, with the polyethersulfone media protected by a polypropilene cage.</p>'),
(45, 23, 'en', 'title', 'PLEATED CARTRIDGE FILTERS polypropylene - glass fiber'),
(46, 23, 'en', 'text', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>The pleated GV-PP cartridge is one of the most efficient filtering elements available on the market.</p>\r\n<p> </p>\r\n<p>The GV-PP is a highly pleated multilayer pleated pleated cartridge, which provides an exceptional dimensional cut-off for targeted removal of solid particles.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(47, 24, 'en', 'title', 'PLEATED CARTRIDGE FILTERS'),
(48, 24, 'en', 'text', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>The pleated GV-PP cartridge is one of the most efficient filtering elements available on the market. The GV-PP is a highly pleated multilayer pleated pleated cartridge, which provides an exceptional dimensional cut-off for targeted removal of solid particles.</p>\r\n<p> </p>\r\n<p>Among its features are:</p>\r\n<p>- High filtering surface (0.6 m2 per 10 \"): Up to 50% more than the cartridges of other compa- rable sectors, the GV-PP offers higher flow rates and higher dirt build-up capacity.<br />–GV-PP adopts a technically advanced filter media that can effectively and consistently remove the desired granulometry, however allowing for crossing of smaller, non-damaging particles, thus maximizing filter life.</p>\r\n<ul>\r\n<li>Progress in technology has allowed Realization of a better and more robust exterior support that guarantees greater protection of the plated pack</li>\r\n<li>All the GV-PP series cartridges are thermally welded instead of glued, thus avoiding the adhesive leaching in the filtered stream - To ensure protection And safety in transportation, storage and handling, each cartridge is packed individually.</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(49, 25, 'en', 'title', 'SELF-CLEANING FILTERS'),
(50, 25, 'en', 'text', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>Suitable for critical applications where continuous filter work is required are available in standard and special version with automatic and manual configuration.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(51, 26, 'en', 'title', 'SINGLE BAG HOUSING'),
(52, 26, 'en', 'text', '<p>The GPS bag housings are designed to accommodate N.1 filter bags.</p>\r\n<p>Our range of bag filters unlike other similar products on the market, ensures complete separation between the dirt chamber and the clean chamber, as the bag collar seat is made on a flange obtained by mechanical machining.</p>\r\n<p>Our GPS bag filters are manufactured in accordance with our high quality standards and in accordance with PED 97/23 / CE and the most common international standards.</p>\r\n<p> </p>\r\n<p>The GPS filters are mechanically cleaned and subsequently electro-polished to provide a surface finish suitable for the food and pharmaceutical field.</p>\r\n<p>Upon request they can be supplied with mechanical polishing or pickling only for industrial use.</p>\r\n<p>Our GPS can bee equipped with a V-CLAMP quick opening, which ensures easy and fast maintenance. On request, for more demanding applications, the version with flanged closure and terminals can be provided.</p>'),
(53, 27, 'en', 'title', 'SINGLE CARTRIDGE HOUSING'),
(54, 27, 'en', 'text', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>The single cartridge housing are completely made of Aisi 316/304 stainless steel. They are an ideal solution for those filtration services that require greater resistance to pressure, temperature and chemical attack.</p>\r\n<p> </p>\r\n<p>Housings are manufactured in accordance with our high quality standards and in accordance with PED 97/23 / CE and the most common internation- al standards. Filters can be supplied with different finish, closure, size, type of connections to make them fit for the application you require.</p>\r\n<p> </p>\r\n<p>Our housings are equipped with a V-CLAMP quick opening which guaran- tees easy and fast maintenance.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(55, 28, 'en', 'title', 'SPECIAL FILTER ELEMENTS AND HOUSING'),
(56, 28, 'en', 'text', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>We can be considered filter artisans, from several years we manufacture all our products following them from design to production. Passion and ethics for what we do offer our costumers a complete service.</p>\r\n<p> </p>\r\n<p>Internal production allows us to filters for every kind of application. All our filters are design and manufactured in accordance with all international standards.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(57, 29, 'en', 'title', 'TEE FILTER'),
(58, 29, 'en', 'text', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>The basket frame is accurately hand-fitted to ensure a perfect fit between the basket and the filter body.</p>\r\n<p> </p>\r\n<p>The Basket (in perforated sheet, filter mesh or both) is constructed of Stainless Steel or other materials in accordance with the requirements of the Customer.</p>\r\n<p> </p>\r\n<p>The basket guides are normally constructed, except for different needs of the customer, in the same body material and ensure easy removal of the basket for cleaning or replacing it.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(59, 30, 'en', 'title', 'TEMPORARY CONYCAL STRAINER'),
(60, 30, 'en', 'text', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>For more than thirty years GV Filtri produce temporary filters that are installed all around the world with the purpose to protect high value components.</p>\r\n<p> </p>\r\n<p>Temporary GVTH cone filters are designed and manufactured in accordance with the most common and strict industrial standards and using high quality raw materials.</p>\r\n<p> </p>\r\n<p>The cone and ring dimensions are such that they are compatible with ASME / ANSI B16.5 flanges.</p>\r\n<p> </p>\r\n<p>The GVTH cone filters have been dimensioned in accordance with the thirty-year experience of \"GV Filtri Industriali\" and on the basis of internally developed computing sheets, GV can dimension special temporary filters on request to meet any customer application.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(61, 31, 'en', 'title', 'WOUND FILTER CARTRIDGES'),
(62, 31, 'en', 'text', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>The wound filter cartridges are realized by wrapping a fiber around a synthetic or stainless steel core that gives rise to a highly effective and economical cartridge.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(63, 32, 'en', 'title', 'Y FILTER STRAINER'),
(64, 32, 'en', 'text', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>Y-type filters can be supplied in both casted and welded versions with welded or flanged threaded connections, both in standard and special versions according to the specifications requested by the customer.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>');

-- --------------------------------------------------------

--
-- Struttura della tabella `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deletedAt` datetime DEFAULT NULL,
  `revision` int(11) NOT NULL DEFAULT '1',
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) DEFAULT '1',
  `publicRevision` float NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `createdAt`, `updatedAt`, `deletedAt`, `revision`, `image`, `active`, `publicRevision`) VALUES
(11, 'HIGH FLOW FILTER CARTRIDGE', '<p>High Flow Filter GV Cartridges combine the capacity of the filter bags to handle high flow rates. The filtering surface of pleated cartridges, guarantee high efficiency and low leakage in all applications whether they are industrial or thanks to they FDA certification on more delicate tasks.<br></p>', '2018-03-14 13:07:42', '2018-03-26 17:09:08', '2018-04-04 11:30:53', 35, '7e2720853d777d1e275eb47ba6692d6a.png', 1, 1),
(12, 'INOX FILTER CARTRIDGES', '<h1>The Symfony MakerBundle</h1>\r\n<p>The MakerBundle is the fastest way to generate the most common code you\'ll need in a Symfony app: commands, controllers, form classes, event subscribers and more! This bundle is an alternative to <a href=\"https://github.com/sensiolabs/SensioGeneratorBundle\">SensioGeneratorBundle</a> for modern Symfony applications and requires Symfony 3.4 or newer and <a href=\"https://symfony.com/doc/current/setup/flex.html\" rel=\"nofollow\">Symfony Flex</a>.</p>\r\n<p><a href=\"https://symfony.com/doc/current/bundles/SymfonyMakerBundle/index.html\" rel=\"nofollow\">Read the documentation</a></p>\r\n<h2>Backwards Compatibility Promise</h2>\r\n<p>This bundle shares the <a href=\"https://symfony.com/doc/current/contributing/code/bc.html\" rel=\"nofollow\">backwards compatibility promise</a> from Symfony. But, with a few clarifications.</p>\r\n<p>A) The input arguments or options to a command <em>may</em> change between minor releases. If you\'re using the commands in an automated, scripted way, be aware of this.</p>\r\n<p>B) The generated code itself may change between minor releases. This will allow us to continuously improve the generated code!</p>', '2018-03-23 10:24:29', '2018-03-23 10:24:29', '2018-03-23 10:30:31', 1, '5d29b4ca525b17f18874e16f89ae1bcc.png', 1, 1),
(13, 'INOX FILTER CARTRIDGES123', '<h1>The Symfony MakerBundle</h1>\r\n<p>The MakerBundle is the fastest way to generate the most common code you\'ll need in a Symfony app: commands, controllers, form classes, event subscribers and more! This bundle is an alternative to <a href=\"https://github.com/sensiolabs/SensioGeneratorBundle\">SensioGeneratorBundle</a> for modern Symfony applications and requires Symfony 3.4 or newer and <a href=\"https://symfony.com/doc/current/setup/flex.html\" rel=\"nofollow\">Symfony Flex</a>.</p>\r\n<p><a href=\"https://symfony.com/doc/current/bundles/SymfonyMakerBundle/index.html\" rel=\"nofollow\">Read the documentation</a></p>\r\n<h2>Backwards Compatibility Promise</h2>\r\n<p>This bundle shares the <a href=\"https://symfony.com/doc/current/contributing/code/bc.html\" rel=\"nofollow\">backwards compatibility promise</a> from Symfony. But, with a few clarifications.</p>\r\n<p>A) The input arguments or options to a command <em>may</em> change between minor releases. If you\'re using the commands in an automated, scripted way, be aware of this.</p>\r\n<p>B) The generated code itself may change between minor releases. This will allow us to continuously improve the generated code!</p>', '2018-03-23 10:26:25', '2018-03-23 10:37:58', '2018-04-04 11:30:49', 3, 'ee80a683d4471da0092eacad6a8ca5c1.png', 1, 1),
(14, 'High flow filter cartridge', '<p>High Flow Filter GV Cartridges combine the capacity of the filter bags to han dle high flow rates. The filtering surface of pleated cartridges, guarantee high efficiency and low leakage in all applications whether they are industrial or thanks to they FDA certification on more delicate tasks.</p>\r\n<p> </p>', '2018-04-04 11:38:32', '2018-04-16 13:03:57', '2018-04-17 11:13:52', 129, '765229c3453aaa4951e706ac3e87f0db.png', 0, 4),
(15, 'TEMPORARY CONYCAL STRAINER', '<p>For more than thirty years GV Filtri produce temporary filters that are installed all around the world with the purpose to protect high value components.</p>\r\n<p>Temporary GVTH cone filters are designed and manufactured in accordance with the most common and strict industrial standards and using high quality raw materials.</p>\r\n<p>The cone and ring dimensions are such that they are compatible with ASME / ANSI B16.5 flanges.</p>\r\n<p>The GVTH cone filters have been dimensioned in accordance with the thirty-year experience of \"GV Filtri Industriali\" and on the basis of internally developed computing sheets, GV can dimension special temporary filters on request to meet any customer application.</p>', '2018-04-13 13:15:20', '2018-04-16 17:33:25', NULL, 8, '7479238ea8fe829f76661d684bed504f.png', 1, 1),
(16, 'provoddo', '<p>qweqweqew</p>', '2018-04-13 15:19:48', '2018-04-13 15:19:48', '2018-04-13 15:20:05', 1, 'b3496f8ffa774ffa77d6f1863d4c2c4b.png', 1, 1),
(17, 'product', '<p>qweqewqew</p>', '2018-04-13 15:20:20', '2018-04-13 15:20:20', '2018-04-13 15:21:36', 1, '4a88be91d6bcd591b8980a117cc87a33.png', 1, 1),
(18, 'provona', '<p>asd</p>', '2018-04-13 15:20:47', '2018-04-13 15:20:47', '2018-04-13 15:21:32', 1, '326ee2e532f0c8136bfba1439d7a0e6e.png', 1, 1),
(19, '342342342', '<p>234234234</p>', '2018-04-13 15:21:23', '2018-04-13 15:21:23', '2018-04-13 15:21:41', 1, 'cc12253700506251a8cea83452a6adc6.png', 1, 1),
(20, 'BAG FILTERS', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>Bag Filters can be made of polypropylene, polyester and nylon.</p>\r\n<p>The bag finishes are all with heavy and double seams to give strength and reliability to the bag so this ensures that there is no passage of particles outside the bag.</p>\r\n<p>They can be supplied in various configurations such as oil absorption and high flow.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2018-04-16 10:18:33', '2018-04-17 12:05:59', NULL, 25, 'a81625ab316c79d1a69323b7828a8f70.png', 1, 1),
(21, 'BASKET FILTER ELEMENTS', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>The GV Filtri Industriali basket filter elements have a high mechanic resistance and the fully welded construction allows them to operate at high temperatures and to treat chemically aggressive fluids.</p>\r\n<p> </p>\r\n<p>The filtering surface can be increased thanks to the pleated execution, which guarantees a high accumulation capacity and extended mainte- nance intervals.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2018-04-16 10:31:28', '2018-04-16 16:51:55', NULL, 8, '88222046dbdc1f275a7d3815d16d6972.png', 1, 1),
(22, 'BASKET FILTER', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>GV basket filters are sized and made according to customer specifica- tions. Many materials can be used for their realization such as: Stainless Steel, Carbon Steel and Special Steel (Monel, Duplex, Super Duplex, etc.). We design the most common international standards for design: ASME Sec. VIII, EN13445-3, PED94 / 9. On each filter, various surface treatments can be carried out, such as internal and external painting cycles, passivation and pickling.</p>\r\n<p> </p>\r\n<p>Offset basket filters can be equipped with the following optional acces- sories:</p>\r\n<p>- Valves</p>\r\n<p>- Relative or differential gauges</p>\r\n<p>- Temperature or pressure transmitters</p>\r\n</div>\r\n</div>\r\n<div>\r\n<div>\r\n<p>- Visual and acoustic alarms and indicators</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2018-04-16 10:53:02', '2018-04-16 16:50:11', NULL, 5, '659bebd2d99cccaa0327a7703f6ad08e.png', 1, 1),
(23, 'HIGH FLOW FILTER CARTRIDGE 2', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>High Flow Filter GV Cartridges combine the capacity of the filter bags to handle high flow rates. The filtering surface of pleated cartridges, guarantee high efficiency and low leakage in all applications whether they are industrial or thanks to they FDA certification on more delicate tasks.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2018-04-16 11:04:42', '2018-04-17 00:22:13', NULL, 15, 'efc0f4d7fd8ca008ea07ed4b14b4322f.png', 1, 1),
(24, 'INOX FILTER CARTRIDGES', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>The INOX filter cartridges can be supplied in fully welded, crimped and glued versions</p>\r\n<p> </p>\r\n<p>They are extremely robust cartridges that can withstand a differential pressure of 25 bar at 300 ° C. Fully welded execution allows both to operate at high temperatures (400 ° C and above) and to treat chemical- ly very aggressive fluids. The high filtration surface, derived from the pleated execution, guarantees a high accumulation capacity and extended maintenance intervals.</p>\r\n<p> </p>\r\n<p>They are available with many types of filter media, mesh, wedge wire and sintered fiber.</p>\r\n<p><br />The INOX cartridges are regenerable by backwash, chemical attack or ultrasonic bath.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2018-04-16 11:10:22', '2018-04-16 17:14:35', NULL, 9, 'ee27afa0135ea036752fb6940ec04559.png', 1, 1),
(25, 'MELT BLOWN CARTRIDGE', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>Extruded polypropylene melt blown cartridges are high-life cartridges designed and built to ensure both the best in terms of functionality and cost, and broad compatibility with a wide range of fluids and chemicals.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2018-04-16 11:15:44', '2018-04-16 17:16:11', NULL, 5, 'f3e0c7958e64cd63f2dce507ea0b9bd6.png', 1, 1),
(26, 'MULTI BAG FILTER HOUSING', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>The multi bag filter housings are designed to meet high flow rates while maintaining the practicality and low economic impact of the filter bags.</p>\r\n<p>Our range of mult sbag filters unlike other similar products on the market, ensures complete separation between the dirt chamber and the clean chamber, as the bag collar seat is made on a flange obtained by mechanical machining.</p>\r\n<p>Our multi bag filters are manufactured in accordance with our high quality standards and in accordance with PED Directive 97/23 / EC and the most common international standards.</p>\r\n<p>Multibag filters are available in both standard and special versions to ensure suitability for the application.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2018-04-16 11:24:18', '2018-04-16 17:21:05', NULL, 7, 'f57e1737e29116dd27590a984a4e0ca6.png', 1, 1),
(27, 'MULTI CARTRIDGE HOUSING', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>The multi cartridge housing are completely made of Aisi 316/304 stainless steel. They are an ideal solution for those filtration services that require higher pressure, temperature and chemical attack capability, both in standard and special versions, designed to meet even the most critical applications.</p>\r\n<p> </p>\r\n<p>Housings are manufactured in accordance with our high quality standards and in accordance with PED 97/23 / CE and the most common internation- al standards.</p>\r\n<p> </p>\r\n<p>Filters can be supplied with different finish, closure, size, type of connec- tions to make them fit for the application you require.</p>\r\n<p> </p>\r\n<p>Our housings are equipped with a V-CLAMP quick opening which guaran- tees easy and fast maintenance.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2018-04-16 11:30:29', '2018-04-16 15:48:12', NULL, 15, '780cf98337c51a55d308317911e29e03.png', 1, 1),
(28, 'OIL REMOVAL FILTERS STRAINER FOR AIR AND GAS', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>Suitable for eliminating water oil particles from compressed air and air even in dual stage configuration.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2018-04-16 11:34:01', '2018-04-16 17:21:45', NULL, 2, 'd884bbf11b251afd5185190e6e4842ae.png', 1, 1),
(29, 'PHENOLIC RESIN CARTRIDGE', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>The GV-PR series cartridges, in acrylic phenolic resins, have been developed for the filtration of those fluids that are incompatible with other synthetic filter cartridges. The GV-PR series cartridges have a two-stage filtration facility to maximize separation efficiency and durability in the filtration of aggressive, highly viscous or high-temperature fluids.</p>\r\n<p> </p>\r\n<p>The one-piece construction with the coil-coated pre-filter film guarantees high mechanical strength of the cartridge for its use with fluids with a viscosity up to 3200 cSt, allowing it to withstand a differential pressure of up to 10 bar .</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2018-04-16 11:36:03', '2018-04-16 15:51:24', NULL, 5, 'f0e97a11323c12b72408223a70d547e4.png', 1, 1),
(30, 'PLEATED CARTRIDGE FILTERS polyethersulfone', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>Manufactured form lot controlled, thermally bonded WRAS approved, BS6920 and FDA compilants materials.</p>\r\n<p> </p>\r\n<p>Biological retension rates: Bacteria: 99.9999% Log 7 (Brevundimonas Diminuta). Suitable for repeated sterilization (20 x 30 minute cycles at 121° C).<br />Integrity Tested Media, the PPPES records a bubble point of 2.06 bar (in iso-ptopyal- cohol) at 0.1 micron.</p>\r\n<p> </p>\r\n<p>Suitable ofr a use across a wide range of chemical application and over broad pH extremes.</p>\r\n<p>Cartridges are formed around a polypropylene core, with the polyethersulfone media protected by a polypropilene cage.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2018-04-16 11:48:17', '2018-04-16 17:24:43', NULL, 11, '7f85b5ced3fb379712f2ce8ffb4da298.png', 1, 1),
(31, 'PLEATED CARTRIDGE FILTERS polypropylene - glass fiber', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>The pleated GV-PP cartridge is one of the most efficient filtering elements available on the market. The GV-PP is a highly pleated multilayer pleated pleated cartridge, which provides an exceptional dimensional cut-off for targeted removal of solid particles.</p>\r\n<p> </p>\r\n<p>Among its features are:</p>\r\n<ul>\r\n<li>High filtering surface (0.6 m2 per 10 \"): Up to 50% more than the cartridges of other compa- rable sectors, the GV-PP offers higher flow rates and higher dirt build-up capacity.<br />–GV-PP adopts a technically advanced filter media that can effectively and consistently remove the desired granulometry, however allowing for crossing of smaller, non-damaging particles, thus maximizing filter life.</li>\r\n<li> </li>\r\n</ul>\r\n<p>- All the GV-PP series cartridges are thermally welded instead of glued, thus avoiding the adhesive leaching in the filtered stream - To ensure protection And safety in transportation, storage and handling, each cartridge is packed individually.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2018-04-16 11:53:23', '2018-04-16 23:12:46', NULL, 10, '06144673fa4964801f51d1752fc72dc5.png', 1, 1),
(32, 'PLEATED CARTRIDGE FILTERS', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>The pleated GV-PP cartridge is one of the most efficient filtering elements available on the market. The GV-PP is a highly pleated multilayer pleated pleated cartridge, which provides an exceptional dimensional cut-off for targeted removal of solid particles.</p>\r\n<p> </p>\r\n<p>Among its features are:</p>\r\n<p>- High filtering surface (0.6 m2 per 10 \"): Up to 50% more than the cartridges of other compa- rable sectors, the GV-PP offers higher flow rates and higher dirt build-up capacity.<br />–GV-PP adopts a technically advanced filter media that can effectively and consistently remove the desired granulometry, however allowing for crossing of smaller, non-damaging particles, thus maximizing filter life.</p>\r\n<ul>\r\n<li>Progress in technology has allowed Realization of a better and more robust exterior support that guarantees greater protection of the plated pack</li>\r\n<li>All the GV-PP series cartridges are thermally welded instead of glued, thus avoiding the adhesive leaching in the filtered stream - To ensure protection And safety in transportation, storage and handling, each cartridge is packed individually.</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2018-04-16 11:57:57', '2018-04-16 17:27:11', NULL, 5, '0dc6442c16e06c00e4291475b3b70840.png', 1, 1),
(33, 'SELF-CLEANING FILTERS', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>Suitable for critical applications where continuous filter work is required are available in standard and special version with automatic and manual configuration.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2018-04-16 12:01:41', '2018-04-16 17:28:30', NULL, 4, '538ab3aed62d665a34ebc2af55318271.png', 1, 1),
(34, 'SINGLE BAG HOUSING', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>The GPS bag housings are designed to accommodate N.1 filter bags.</p>\r\n<p> </p>\r\n<p>Our range of bag filters unlike other similar products on the market, ensures complete separation between the dirt chamber and the clean chamber, as the bag collar seat is made on a flange obtained by mechanical machining.</p>\r\n<p> </p>\r\n<p>Our GPS bag filters are manufactured in accordance with our high quality standards and in accordance with PED 97/23 / CE and the most common international standards.</p>\r\n<p> </p>\r\n<p>The GPS filters are mechanically cleaned and subsequently electro-polished to provide a surface finish suitable for the food and pharmaceutical field. Upon request they can be supplied with mechanical polishing or pickling only for industrial use.</p>\r\n<p> </p>\r\n<p>Our GPS can bee equipped with a V-CLAMP quick opening, which ensures easy and fast maintenance. On request, for more demanding applications, the version with flanged closure and terminals can be provided.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2018-04-16 12:38:01', '2018-04-16 16:08:12', NULL, 17, '5082c0924904ae338287cedeb540cc66.png', 1, 1),
(35, 'SINGLE CARTRIDGE HOUSING', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>The single cartridge housing are completely made of Aisi 316/304 stainless steel. They are an ideal solution for those filtration services that require greater resistance to pressure, temperature and chemical attack.</p>\r\n<p> </p>\r\n<p>Housings are manufactured in accordance with our high quality standards and in accordance with PED 97/23 / CE and the most common internation- al standards. Filters can be supplied with different finish, closure, size, type of connections to make them fit for the application you require.</p>\r\n<p> </p>\r\n<p>Our housings are equipped with a V-CLAMP quick opening which guaran- tees easy and fast maintenance.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2018-04-16 12:42:31', '2018-04-16 16:30:28', NULL, 7, '243fccaf9dfb72ab915cf2219094235d.png', 1, 1),
(36, 'SPECIAL FILTER ELEMENTS AND HOUSING', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>We can be considered filter artisans, from several years we manufacture all our products following them from design to production. Passion and ethics for what we do offer our costumers a complete service.</p>\r\n<p> </p>\r\n<p>Internal production allows us to filters for every kind of application. All our filters are design and manufactured in accordance with all international standards.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2018-04-16 12:47:38', '2018-04-16 12:47:38', NULL, 1, 'd81c5ae09c18116cf2c251b2a89863b5.png', 1, 1),
(37, 'TEE FILTER', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>The basket frame is accurately hand-fitted to ensure a perfect fit between the basket and the filter body.</p>\r\n<p> </p>\r\n<p>The Basket (in perforated sheet, filter mesh or both) is constructed of Stainless Steel or other materials in accordance with the requirements of the Customer.</p>\r\n<p> </p>\r\n<p>The basket guides are normally constructed, except for different needs of the customer, in the same body material and ensure easy removal of the basket for cleaning or replacing it.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2018-04-16 12:50:01', '2018-04-16 16:31:55', NULL, 2, 'e85bb4a9f224c1dc4ab4efe69dda5949.png', 1, 1),
(38, 'TEMPORARY CONYCAL STRAINER', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>For more than thirty years GV Filtri produce temporary filters that are installed all around the world with the purpose to protect high value components.</p>\r\n<p> </p>\r\n<p>Temporary GVTH cone filters are designed and manufactured in accordance with the most common and strict industrial standards and using high quality raw materials.</p>\r\n<p> </p>\r\n<p>The cone and ring dimensions are such that they are compatible with ASME / ANSI B16.5 flanges.</p>\r\n<p> </p>\r\n<p>The GVTH cone filters have been dimensioned in accordance with the thirty-year experience of \"GV Filtri Industriali\" and on the basis of internally developed computing sheets, GV can dimension special temporary filters on request to meet any customer application.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2018-04-16 12:52:36', '2018-04-16 12:52:36', '2018-04-16 12:54:40', 1, '213ab1eb967ec74b14509924911f391e.png', 1, 1),
(39, 'WOUND FILTER CARTRIDGES', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>The wound filter cartridges are realized by wrapping a fiber around a synthetic or stainless steel core that gives rise to a highly effective and economical cartridge.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2018-04-16 12:57:37', '2018-04-16 17:34:37', NULL, 7, 'ddbb6ca5fcead6810cffa539fdc47102.png', 1, 1),
(40, 'Y FILTER STRAINER', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>Y-type filters can be supplied in both casted and welded versions with welded or flanged threaded connections, both in standard and special versions according to the specifications requested by the customer.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2018-04-16 13:07:02', '2018-04-16 16:43:17', NULL, 5, '676f6207eaaf5b97459861eda3c67c80.png', 1, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `product_translations`
--

CREATE TABLE `product_translations` (
  `id` int(11) NOT NULL,
  `object_id` int(11) DEFAULT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `product_translations`
--

INSERT INTO `product_translations` (`id`, `object_id`, `locale`, `field`, `content`) VALUES
(25, 11, 'en', 'name', 'HIGH FLOW FILTER CARTRIDGE'),
(26, 11, 'en', 'description', '<p>High Flow Filter GV Cartridges combine the capacity of the filter bags to handle high flow rates. The filtering surface of pleated cartridges, guarantee high efficiency and low leakage in all applications whether they are industrial or thanks to they FDA certification on more delicate tasks.</p>'),
(27, 12, 'en', 'name', 'INOX FILTER CARTRIDGES'),
(28, 12, 'en', 'description', '<h1>The Symfony MakerBundle</h1>\r\n<p>The MakerBundle is the fastest way to generate the most common code you\'ll need in a Symfony app: commands, controllers, form classes, event subscribers and more! This bundle is an alternative to <a href=\"https://github.com/sensiolabs/SensioGeneratorBundle\">SensioGeneratorBundle</a> for modern Symfony applications and requires Symfony 3.4 or newer and <a href=\"https://symfony.com/doc/current/setup/flex.html\" rel=\"nofollow\">Symfony Flex</a>.</p>\r\n<p><a href=\"https://symfony.com/doc/current/bundles/SymfonyMakerBundle/index.html\" rel=\"nofollow\">Read the documentation</a></p>\r\n<h2>Backwards Compatibility Promise</h2>\r\n<p>This bundle shares the <a href=\"https://symfony.com/doc/current/contributing/code/bc.html\" rel=\"nofollow\">backwards compatibility promise</a> from Symfony. But, with a few clarifications.</p>\r\n<p>A) The input arguments or options to a command <em>may</em> change between minor releases. If you\'re using the commands in an automated, scripted way, be aware of this.</p>\r\n<p>B) The generated code itself may change between minor releases. This will allow us to continuously improve the generated code!</p>'),
(29, 13, 'en', 'name', 'INOX FILTER CARTRIDGES2'),
(30, 13, 'en', 'description', '<h1>The Symfony MakerBundle</h1>\r\n<p>The MakerBundle is the fastest way to generate the most common code you\'ll need in a Symfony app: commands, controllers, form classes, event subscribers and more! This bundle is an alternative to <a href=\"https://github.com/sensiolabs/SensioGeneratorBundle\">SensioGeneratorBundle</a> for modern Symfony applications and requires Symfony 3.4 or newer and <a href=\"https://symfony.com/doc/current/setup/flex.html\" rel=\"nofollow\">Symfony Flex</a>.</p>\r\n<p><a href=\"https://symfony.com/doc/current/bundles/SymfonyMakerBundle/index.html\" rel=\"nofollow\">Read the documentation</a></p>\r\n<h2>Backwards Compatibility Promise</h2>\r\n<p>This bundle shares the <a href=\"https://symfony.com/doc/current/contributing/code/bc.html\" rel=\"nofollow\">backwards compatibility promise</a> from Symfony. But, with a few clarifications.</p>\r\n<p>A) The input arguments or options to a command <em>may</em> change between minor releases. If you\'re using the commands in an automated, scripted way, be aware of this.</p>\r\n<p>B) The generated code itself may change between minor releases. This will allow us to continuously improve the generated code!</p>'),
(31, 14, 'en', 'name', 'EXAMPLE'),
(32, 14, 'en', 'description', '<p>High Flow Filter GV Cartridges combine the capacity of the filter bags to han dle high flow rates. The filtering surface of pleated cartridges, guarantee high efficiency and low leakage in all applications whether they are industrial or thanks to they FDA certification on more delicate tasks.</p>\r\n<p> </p>'),
(33, 15, 'en', 'name', 'TEMPORARY CONYCAL STRAINER'),
(34, 15, 'en', 'description', '<p>For more than thirty years GV Filtri produce temporary filters that are installed all around the world with the purpose to protect high value components.</p>\r\n<p>Temporary GVTH cone filters are designed and manufactured in accordance with the most common and strict industrial standards and using high quality raw materials.</p>\r\n<p>The cone and ring dimensions are such that they are compatible with ASME / ANSI B16.5 flanges.</p>\r\n<p>The GVTH cone filters have been dimensioned in accordance with the thirty-year experience of \"GV Filtri Industriali\" and on the basis of internally developed computing sheets, GV can dimension special temporary filters on request to meet any customer application.</p>'),
(35, 16, 'en', 'name', 'provoddo'),
(36, 16, 'en', 'description', '<p>qweqweqew</p>'),
(37, 17, 'en', 'name', 'product'),
(38, 17, 'en', 'description', '<p>qweqewqew</p>'),
(39, 18, 'en', 'name', 'provona'),
(40, 18, 'en', 'description', '<p>asd</p>'),
(41, 19, 'en', 'name', '342342342'),
(42, 19, 'en', 'description', '<p>234234234</p>'),
(43, 20, 'en', 'name', 'BAG FILTERS'),
(44, 20, 'en', 'description', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>Bag Filters can be made of polypropylene, polyester and nylon.</p>\r\n<p> </p>\r\n<p>The bag finishes are all with heavy and double seams to give strength and reliability to the bag so this ensures that there is no passage of particles outside the bag.</p>\r\n<p> </p>\r\n<p>They can be supplied in various configurations such as oil absorption and high flow.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(45, 21, 'en', 'name', 'BASKET FILTER ELEMENTS'),
(46, 21, 'en', 'description', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>The GV Filtri Industriali basket filter elements have a high mechanic resistance and the fully welded construction allows them to operate at high temperatures and to treat chemically aggressive fluids.</p>\r\n<p> </p>\r\n<p>The filtering surface can be increased thanks to the pleated execution, which guarantees a high accumulation capacity and extended mainte- nance intervals.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(47, 22, 'en', 'name', 'BASKET FILTER'),
(48, 22, 'en', 'description', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>GV basket filters are sized and made according to customer specifica- tions. Many materials can be used for their realization such as: Stainless Steel, Carbon Steel and Special Steel (Monel, Duplex, Super Duplex, etc.). We design the most common international standards for design: ASME Sec. VIII, EN13445-3, PED94 / 9. On each filter, various surface treatments can be carried out, such as internal and external painting cycles, passivation and pickling.</p>\r\n<p> </p>\r\n<p>Offset basket filters can be equipped with the following optional acces- sories:</p>\r\n<p>- Valves</p>\r\n<p>- Relative or differential gauges</p>\r\n<p>- Temperature or pressure transmitters</p>\r\n</div>\r\n</div>\r\n<div>\r\n<div>\r\n<p>- Visual and acoustic alarms and indicators</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(49, 23, 'en', 'name', 'HIGH FLOW FILTER CARTRIDGE'),
(50, 23, 'en', 'description', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>High Flow Filter GV Cartridges combine the capacity of the filter bags to handle high flow rates. The filtering surface of pleated cartridges, guarantee high efficiency and low leakage in all applications whether they are industrial or thanks to they FDA certification on more delicate tasks.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(51, 24, 'en', 'name', 'INOX FILTER CARTRIDGES'),
(52, 24, 'en', 'description', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>The INOX filter cartridges can be supplied in fully welded, crimped and glued versions</p>\r\n<p> </p>\r\n<p>They are extremely robust cartridges that can withstand a differential pressure of 25 bar at 300 ° C. Fully welded execution allows both to operate at high temperatures (400 ° C and above) and to treat chemical- ly very aggressive fluids. The high filtration surface, derived from the pleated execution, guarantees a high accumulation capacity and extended maintenance intervals.</p>\r\n<p> </p>\r\n<p>They are available with many types of filter media, mesh, wedge wire and sintered fiber.</p>\r\n<p><br />The INOX cartridges are regenerable by backwash, chemical attack or ultrasonic bath.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(53, 25, 'en', 'name', 'MELT BLOWN CARTRIDGE'),
(54, 25, 'en', 'description', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>Extruded polypropylene melt blown cartridges are high-life cartridges designed and built to ensure both the best in terms of functionality and cost, and broad compatibility with a wide range of fluids and chemicals.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(55, 26, 'en', 'name', 'MULTI BAG FILTER HOUSING'),
(56, 26, 'en', 'description', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>The multi bag filter housings are designed to meet high flow rates while maintaining the practicality and low economic impact of the filter bags.</p>\r\n<p> </p>\r\n<p>Our range of mult sbag filters unlike other similar products on the market, ensures complete separation between the dirt chamber and the clean chamber, as the bag collar seat is made on a flange obtained by mechanical machining.</p>\r\n<p> </p>\r\n<p>Our multi bag filters are manufactured in accordance with our high quality standards and in accordance with PED Directive 97/23 / EC and the most common international standards.</p>\r\n<p> </p>\r\n<p>Multibag filters are available in both standard and special versions to ensure suitability for the application.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(57, 27, 'en', 'name', 'MULTI CARTRIDGE HOUSING'),
(58, 27, 'en', 'description', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>The multi cartridge housing are completely made of Aisi 316/304 stainless steel. They are an ideal solution for those filtration services that require higher pressure, temperature and chemical attack capability, both in standard and special versions, designed to meet even the most critical applications.</p>\r\n<p> </p>\r\n<p>Housings are manufactured in accordance with our high quality standards and in accordance with PED 97/23 / CE and the most common internation- al standards.</p>\r\n<p> </p>\r\n<p>Filters can be supplied with different finish, closure, size, type of connec- tions to make them fit for the application you require.</p>\r\n<p> </p>\r\n<p>Our housings are equipped with a V-CLAMP quick opening which guaran- tees easy and fast maintenance.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(59, 28, 'en', 'name', 'OIL REMOVAL FILTERS STRAINER FOR AIR AND GAS'),
(60, 28, 'en', 'description', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>Suitable for eliminating water oil particles from compressed air and air even in dual stage configuration.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(61, 29, 'en', 'name', 'PHENOLIC RESIN CARTRIDGE'),
(62, 29, 'en', 'description', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>The GV-PR series cartridges, in acrylic phenolic resins, have been developed for the filtration of those fluids that are incompatible with other synthetic filter cartridges. The GV-PR series cartridges have a two-stage filtration facility to maximize separation efficiency and durability in the filtration of aggressive, highly viscous or high-temperature fluids.</p>\r\n<p> </p>\r\n<p>The one-piece construction with the coil-coated pre-filter film guarantees high mechanical strength of the cartridge for its use with fluids with a viscosity up to 3200 cSt, allowing it to withstand a differential pressure of up to 10 bar .</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(63, 30, 'en', 'name', 'PLEATED CARTRIDGE FILTERS polyethersulfone'),
(64, 30, 'en', 'description', '<p>Manufactured form lot controlled, thermally bonded WRAS approved, BS6920 and FDA compilants materials. Biological retension rates: Bacteria: 99.9999% Log 7 (Brevundimonas Diminuta).</p>\r\n<p>Suitable for repeated sterilization (20 x 30 minute cycles at 121° C). Integrity Tested Media, the PPPES records a bubble point of 2.06 bar (in iso-ptopyal- cohol) at 0.1 micron.</p>\r\n<p>Suitable ofr a use across a wide range of chemical application and over broad pH extremes.Cartridges are formed around a polypropylene core, with the polyethersulfone media protected by a polypropilene cage.</p>'),
(65, 31, 'en', 'name', 'PLEATED CARTRIDGE FILTERS polypropylene - glass fiber'),
(66, 31, 'en', 'description', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>The pleated GV-PP cartridge is one of the most efficient filtering elements available on the market.</p>\r\n<p> </p>\r\n<p>The GV-PP is a highly pleated multilayer pleated pleated cartridge, which provides an exceptional dimensional cut-off for targeted removal of solid particles.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(67, 32, 'en', 'name', 'PLEATED CARTRIDGE FILTERS'),
(68, 32, 'en', 'description', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>The pleated GV-PP cartridge is one of the most efficient filtering elements available on the market. The GV-PP is a highly pleated multilayer pleated pleated cartridge, which provides an exceptional dimensional cut-off for targeted removal of solid particles.</p>\r\n<p> </p>\r\n<p>Among its features are:</p>\r\n<p>- High filtering surface (0.6 m2 per 10 \"): Up to 50% more than the cartridges of other compa- rable sectors, the GV-PP offers higher flow rates and higher dirt build-up capacity.<br />–GV-PP adopts a technically advanced filter media that can effectively and consistently remove the desired granulometry, however allowing for crossing of smaller, non-damaging particles, thus maximizing filter life.</p>\r\n<ul>\r\n<li>Progress in technology has allowed Realization of a better and more robust exterior support that guarantees greater protection of the plated pack</li>\r\n<li>All the GV-PP series cartridges are thermally welded instead of glued, thus avoiding the adhesive leaching in the filtered stream - To ensure protection And safety in transportation, storage and handling, each cartridge is packed individually.</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(69, 33, 'en', 'name', 'SELF-CLEANING FILTERS'),
(70, 33, 'en', 'description', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>Suitable for critical applications where continuous filter work is required are available in standard and special version with automatic and manual configuration.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(71, 34, 'en', 'name', 'SINGLE BAG HOUSING'),
(72, 34, 'en', 'description', '<p>The GPS bag housings are designed to accommodate N.1 filter bags.</p>\r\n<p>Our range of bag filters unlike other similar products on the market, ensures complete separation between the dirt chamber and the clean chamber, as the bag collar seat is made on a flange obtained by mechanical machining.</p>\r\n<p>Our GPS bag filters are manufactured in accordance with our high quality standards and in accordance with PED 97/23 / CE and the most common international standards.</p>\r\n<p> </p>\r\n<p>The GPS filters are mechanically cleaned and subsequently electro-polished to provide a surface finish suitable for the food and pharmaceutical field.</p>\r\n<p>Upon request they can be supplied with mechanical polishing or pickling only for industrial use.</p>\r\n<p>Our GPS can bee equipped with a V-CLAMP quick opening, which ensures easy and fast maintenance. On request, for more demanding applications, the version with flanged closure and terminals can be provided.</p>'),
(73, 35, 'en', 'name', 'SINGLE CARTRIDGE HOUSING'),
(74, 35, 'en', 'description', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>The single cartridge housing are completely made of Aisi 316/304 stainless steel. They are an ideal solution for those filtration services that require greater resistance to pressure, temperature and chemical attack.</p>\r\n<p> </p>\r\n<p>Housings are manufactured in accordance with our high quality standards and in accordance with PED 97/23 / CE and the most common internation- al standards. Filters can be supplied with different finish, closure, size, type of connections to make them fit for the application you require.</p>\r\n<p> </p>\r\n<p>Our housings are equipped with a V-CLAMP quick opening which guaran- tees easy and fast maintenance.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(75, 36, 'en', 'name', 'SPECIAL FILTER ELEMENTS AND HOUSING'),
(76, 36, 'en', 'description', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>We can be considered filter artisans, from several years we manufacture all our products following them from design to production. Passion and ethics for what we do offer our costumers a complete service.</p>\r\n<p> </p>\r\n<p>Internal production allows us to filters for every kind of application. All our filters are design and manufactured in accordance with all international standards.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(77, 37, 'en', 'name', 'TEE FILTER'),
(78, 37, 'en', 'description', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>The basket frame is accurately hand-fitted to ensure a perfect fit between the basket and the filter body.</p>\r\n<p> </p>\r\n<p>The Basket (in perforated sheet, filter mesh or both) is constructed of Stainless Steel or other materials in accordance with the requirements of the Customer.</p>\r\n<p> </p>\r\n<p>The basket guides are normally constructed, except for different needs of the customer, in the same body material and ensure easy removal of the basket for cleaning or replacing it.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(79, 38, 'en', 'name', 'TEMPORARY CONYCAL STRAINER'),
(80, 38, 'en', 'description', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>For more than thirty years GV Filtri produce temporary filters that are installed all around the world with the purpose to protect high value components.</p>\r\n<p> </p>\r\n<p>Temporary GVTH cone filters are designed and manufactured in accordance with the most common and strict industrial standards and using high quality raw materials.</p>\r\n<p> </p>\r\n<p>The cone and ring dimensions are such that they are compatible with ASME / ANSI B16.5 flanges.</p>\r\n<p> </p>\r\n<p>The GVTH cone filters have been dimensioned in accordance with the thirty-year experience of \"GV Filtri Industriali\" and on the basis of internally developed computing sheets, GV can dimension special temporary filters on request to meet any customer application.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(81, 39, 'en', 'name', 'WOUND FILTER CARTRIDGES'),
(82, 39, 'en', 'description', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>The wound filter cartridges are realized by wrapping a fiber around a synthetic or stainless steel core that gives rise to a highly effective and economical cartridge.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(83, 40, 'en', 'name', 'Y FILTER STRAINER'),
(84, 40, 'en', 'description', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>Y-type filters can be supplied in both casted and welded versions with welded or flanged threaded connections, both in standard and special versions according to the specifications requested by the customer.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>');

-- --------------------------------------------------------

--
-- Struttura della tabella `RadioEav`
--

CREATE TABLE `RadioEav` (
  `id` int(11) NOT NULL,
  `radio_page_id` int(11) DEFAULT NULL,
  `eav_id` int(11) DEFAULT NULL,
  `ordine` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `RadioEav`
--

INSERT INTO `RadioEav` (`id`, `radio_page_id`, `eav_id`, `ordine`) VALUES
(9, 6, 20, 0),
(10, 6, 17, 1),
(11, 6, 21, 2),
(12, 6, 17, 3),
(13, 6, 19, 4),
(14, 7, 22, 0),
(15, 7, 17, 1),
(16, 8, 23, 0),
(17, 8, 24, 1),
(18, 9, 25, 0),
(19, 9, 26, 1),
(20, 9, 27, 2),
(24, 10, 28, 0),
(25, 10, 17, 1),
(26, 10, 29, 2),
(27, 10, 17, 3),
(28, 10, 30, 4),
(29, 10, 17, 5),
(30, 10, 31, 6),
(31, 10, 17, 7),
(32, 10, 32, 8),
(33, 10, 33, 9),
(34, 10, 34, 10),
(35, 10, 35, 11),
(36, 10, 36, 12),
(37, 10, 17, 13),
(38, 10, 37, 14),
(39, 11, 38, 0),
(40, 11, 39, 1),
(41, 11, 40, 2),
(42, 11, 41, 3),
(43, 11, 42, 4),
(44, 11, 43, 5),
(45, 11, 44, 6),
(46, 11, 45, 7),
(47, 11, 46, 8),
(48, 11, 47, 9),
(49, 11, 48, 10);

-- --------------------------------------------------------

--
-- Struttura della tabella `radio_pages`
--

CREATE TABLE `radio_pages` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `radio_pages`
--

INSERT INTO `radio_pages` (`id`, `title`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(6, 'titolo lista', '2018-04-06 12:11:00', '2018-04-06 12:11:48', NULL),
(7, 'Technical Data', '2018-04-12 14:00:20', '2018-04-12 14:00:20', NULL),
(8, 'Features', '2018-04-16 13:08:45', '2018-04-16 13:08:45', NULL),
(9, 'Features:', '2018-04-16 15:16:53', '2018-04-16 15:16:53', NULL),
(10, 'Straining Media Selection for Basket', '2018-04-16 15:18:58', '2018-04-16 15:21:48', NULL),
(11, 'Features', '2018-04-16 16:28:11', '2018-04-16 16:28:11', NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `radio_page_translations`
--

CREATE TABLE `radio_page_translations` (
  `id` int(11) NOT NULL,
  `object_id` int(11) DEFAULT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `radio_page_translations`
--

INSERT INTO `radio_page_translations` (`id`, `object_id`, `locale`, `field`, `content`) VALUES
(6, 6, 'en', 'title', 'titolo lista'),
(7, 7, 'en', 'title', 'Technical Data'),
(8, 8, 'en', 'title', 'Features'),
(9, 9, 'en', 'title', 'Features:'),
(10, 10, 'en', 'title', 'Straining Media Selection for Basket'),
(11, 11, 'en', 'title', 'Features');

-- --------------------------------------------------------

--
-- Struttura della tabella `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `description`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'Admin', '_ADMIN', 'Roles for Administrators', '2018-02-25 12:06:37', '2018-02-25 12:06:37', NULL),
(2, 'Super Admin', '_SUPER_ADMIN', 'Super Admin con Generaione utenti', '2018-03-21 12:43:03', '2018-03-21 12:43:03', NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `sessions`
--

CREATE TABLE `sessions` (
  `sess_id` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `sess_data` longblob NOT NULL,
  `sess_time` int(11) NOT NULL,
  `sess_lifetime` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `sessions`
--

INSERT INTO `sessions` (`sess_id`, `sess_data`, `sess_time`, `sess_lifetime`) VALUES
('h47l09t35u4s5q2au6epvsqtgi', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532333931373833323b733a313a2263223b693a313532333930383632353b733a313a226c223b733a313a2230223b7d, 1523917834, 1440),
('ipqcj86n49vbpqddds8l062s5r', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532333839333534353b733a313a2263223b693a313532333839333534353b733a313a226c223b733a313a2230223b7d, 1523893545, 1440),
('kde7lgd0h5k7kl5v5hq7ob3mf2', 0x5f7366325f617474726962757465737c613a323a7b733a32363a225f73656375726974792e6d61696e2e7461726765745f70617468223b733a35303a22687474703a2f2f677666696c7472692e6563686f63726561746976652e69742f656e2f61646d696e2f70726f64756374732f223b733a31343a225f73656375726974795f6d61696e223b733a3432373a22433a37343a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c557365726e616d6550617373776f7264546f6b656e223a3333393a7b613a333a7b693a303b4e3b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532333838383735333b733a313a2263223b693a313532333838363031363b733a313a226c223b733a313a2230223b7d, 1523888753, 1440),
('m55ds46d3mf6r9c5fmhc2lleti', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532333936303236393b733a313a2263223b693a313532333935393337383b733a313a226c223b733a313a2230223b7d, 1523960270, 1440),
('t7m7aejk049r3qjui68u4gr2dd', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532333935363433323b733a313a2263223b693a313532333935353239343b733a313a226c223b733a313a2230223b7d, 1523956432, 1440),
('urmutlnsqp434c8052or7tr8iq', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532333839323839333b733a313a2263223b693a313532333838303431303b733a313a226c223b733a313a2230223b7d, 1523892893, 1440);

-- --------------------------------------------------------

--
-- Struttura della tabella `table_pages`
--

CREATE TABLE `table_pages` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` longtext COLLATE utf8_unicode_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `table_pages`
--

INSERT INTO `table_pages` (`id`, `title`, `text`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(2, 'Table Title', '', '2018-03-14 17:20:57', '2018-03-21 15:14:13', NULL),
(3, 'asdasdads', '<p>asdasdasdadsasd</p>', '2018-03-26 16:16:15', '2018-03-26 16:16:15', '2018-03-26 16:16:19'),
(4, 'example', '', '2018-04-13 15:03:38', '2018-04-13 18:05:10', NULL),
(5, 'tabella con spunte', '<table style=\"border-collapse: collapse; width: 100%;\" border=\"1\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 25%;\">Solution</td>\r\n<td style=\"width: 25%;\">Polypropylenev</td>\r\n<td style=\"width: 25%;\">Polyester</td>\r\n<td style=\"width: 25%;\">Nylon</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 25%;\">Organic Solvents</td>\r\n<td style=\"width: 25%;\"> </td>\r\n<td style=\"width: 25%;\"> </td>\r\n<td style=\"width: 25%;\"> </td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 25%;\">Oils</td>\r\n<td style=\"width: 25%;\"> </td>\r\n<td style=\"width: 25%;\"> </td>\r\n<td style=\"width: 25%;\"> </td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 25%;\">Mirco-organisms</td>\r\n<td style=\"width: 25%;\"> </td>\r\n<td style=\"width: 25%;\"> </td>\r\n<td style=\"width: 25%;\"> </td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 25%;\">Alkalines</td>\r\n<td style=\"width: 25%;\"> </td>\r\n<td style=\"width: 25%;\"> </td>\r\n<td style=\"width: 25%;\"> </td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 25%;\">Organic Agents</td>\r\n<td style=\"width: 25%;\"> </td>\r\n<td style=\"width: 25%;\"> </td>\r\n<td style=\"width: 25%;\"> </td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 25%;\">Oxidising Agents</td>\r\n<td style=\"width: 25%;\"> </td>\r\n<td style=\"width: 25%;\"> </td>\r\n<td style=\"width: 25%;\"> </td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 25%;\">Mineral Acids</td>\r\n<td style=\"width: 25%;\"> </td>\r\n<td style=\"width: 25%;\"> </td>\r\n<td style=\"width: 25%;\"> </td>\r\n</tr>\r\n</tbody>\r\n</table>', '2018-04-13 16:28:35', '2018-04-16 10:54:19', NULL),
(6, '', '<p>\r\n		\r\n	\r\n	\r\n		<div class=\"page\" title=\"Page 2\">\r\n			<table style=\"border-collapse: collapse; height: 302px;\"><colgroup><col style=\"width: 8.065612%\"><col style=\"width: 4.549796%\"><col style=\"width: 4.865564%\"><col style=\"width: 6.582445%\"><col style=\"width: 8.590535%\"><col style=\"width: 5.897565%\"><col style=\"width: 5.659759%\"><col style=\"width: 5.659759%\"><col style=\"width: 8.846185%\"><col style=\"width: 9.279696%\"><col style=\"width: 8.413740%\"><col style=\"width: 6.848864%\"><col style=\"width: 6.468222%\"><col style=\"width: 10.272259%\">\r\n				</colgroup><tbody><tr data-mce-style=\"background-color: #4ab7a9;\" style=\"background-color: rgb(74, 183, 169); height: 46px;\"><td style=\"border-style: solid; border-width: 1.12pt 1.12pt 1pt; border-color: rgb(0, 56, 79) rgb(0, 56, 79) rgb(255, 255, 255); width: 82px; height: 92px;\" rowspan=\"2\"><div class=\"layoutArea\"><div class=\"column\"><p><span style=\"font-size: 10pt; font-family: DINOT; font-weight: 700; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; font-weight: bold; color: #00384f;\"><br></span></p></div></div><div class=\"layoutArea\"><div class=\"column\"><p><span style=\"font-size: 10pt; font-family: DINOT; font-weight: 700; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; font-weight: bold; color: #00384f;\"><br></span></p></div></div></td><td style=\"border-style: solid; border-width: 1.12pt 1pt 1pt 1.12pt; border-color: rgb(222, 229, 232) rgb(255, 255, 255) rgb(255, 255, 255) rgb(0, 56, 79); width: 46px; height: 92px;\" rowspan=\"2\"><div class=\"layoutArea\"><div class=\"column\"><p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\"><br></span></p></div></div><div class=\"layoutArea\"><div class=\"column\"><p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\"><br></span></p></div></div></td><td style=\"border-style: solid; border-width: 1.12pt 1pt 1pt; border-color: rgb(232, 237, 239) rgb(255, 255, 255) rgb(255, 255, 255); width: 50px; height: 46px;\" rowspan=\"2\"><div class=\"layoutArea\"><div class=\"column\"><p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\"><br></span></p></div></div><div class=\"layoutArea\"><div class=\"column\"><p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\"><br></span></p></div></div></td><td style=\"border-style: solid; border-width: 1.12pt 1pt 1pt; border-color: rgb(232, 237, 239) rgb(255, 255, 255) rgb(255, 255, 255); width: 67px; height: 46px;\" rowspan=\"2\"><div class=\"layoutArea\"><div class=\"column\"><p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\"><br></span></p></div></div><div class=\"layoutArea\"><div class=\"column\"><p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\"><br></span></p></div></div></td><td style=\"border-style: solid; border-width: 1.12pt 1pt 1.2224pt; border-color: rgb(232, 237, 239) rgb(255, 255, 255) rgb(255, 255, 255); width: 87px; height: 46px;\" rowspan=\"2\"><div class=\"layoutArea\"><div class=\"column\"><p><span style=\"color: rgb(0, 56, 79);\" data-mce-style=\"color: #00384f;\"><span style=\"font-size: 10pt; font-family: DINOT;\" data-mce-style=\"font-size: 10pt; font-family: DINOT;\"><br></span></span></p></div></div><div class=\"layoutArea\"><div class=\"column\"><p><span style=\"color: rgb(0, 56, 79);\" data-mce-style=\"color: #00384f;\"><span style=\"font-size: 10pt; font-family: DINOT;\" data-mce-style=\"font-size: 10pt; font-family: DINOT;\"><br></span></span></p></div></div></td><td style=\"border-style: solid; border-width: 1.12pt 1pt 1pt; border-color: rgb(232, 237, 239) rgb(255, 255, 255) rgb(255, 255, 255); width: 60px; height: 46px;\" colspan=\"4\"><div class=\"layoutArea\"><div class=\"column\"><p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\"><br></span></p></div></div><div class=\"layoutArea\"><div class=\"column\"><p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\"><br></span></p></div></div><div class=\"layoutArea\"><div class=\"column\"><p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\"><br></span></p></div></div><div class=\"layoutArea\"><div class=\"column\"><p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\"><br></span></p></div></div></td><td style=\"border-style: solid; border-width: 1.12pt 1pt 1pt; border-color: rgb(232, 237, 239) rgb(255, 255, 255) rgb(255, 255, 255); width: 93px; height: 46px;\" colspan=\"2\"><div class=\"layoutArea\"><div class=\"column\"><p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\"><br></span></p></div></div><div class=\"layoutArea\"><div class=\"column\"><p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\"><br></span></p></div></div></td><td style=\"border-style: solid; border-width: 1.12pt 1pt 1pt; border-color: rgb(232, 237, 239) rgb(255, 255, 255) rgb(255, 255, 255); width: 69px; height: 46px;\" rowspan=\"2\"><div class=\"layoutArea\"><div class=\"column\"><p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\"><br></span></p></div></div><div class=\"layoutArea\"><div class=\"column\"><p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\"><br></span></p></div></div></td><td style=\"border-style: solid; border-width: 1.12pt 1pt 1pt; border-color: rgb(232, 237, 239) rgb(255, 255, 255) rgb(255, 255, 255); width: 65px; height: 46px;\" rowspan=\"2\"><div class=\"layoutArea\"><div class=\"column\"><p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\"><br></span></p></div></div><div class=\"layoutArea\"><div class=\"column\"><p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\"><br></span></p></div></div></td><td style=\"border-style: solid; border-width: 1.12pt 1pt 1.2224pt; border-color: rgb(232, 237, 239) rgb(255, 255, 255) rgb(255, 255, 255); width: 103px; height: 46px;\" rowspan=\"2\"><div class=\"layoutArea\"><div class=\"column\"><p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\"><br></span></p></div></div><div class=\"layoutArea\"><div class=\"column\"><p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\"><br></span></p></div></div></td></tr><tr data-mce-style=\"background-color: #4ab7a9;\" style=\"background-color: rgb(74, 183, 169); height: 46px;\"><td style=\"border-style: solid; border-width: 1.12pt 1pt 1pt; border-color: rgb(232, 237, 239) rgb(255, 255, 255) rgb(255, 255, 255); width: 60px; height: 46px;\"><div class=\"layoutArea\"><div class=\"column\"><p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\"><br></span></p></div></div></td><td style=\"border-style: solid; border-width: 1.12pt 1pt 1pt; border-color: rgb(232, 237, 239) rgb(255, 255, 255) rgb(255, 255, 255); width: 58px; height: 46px;\"><div class=\"layoutArea\"><div class=\"column\"><p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\"><br></span></p></div></div></td><td style=\"border-style: solid; border-width: 1.12pt 1pt 1pt; border-color: rgb(232, 237, 239) rgb(255, 255, 255) rgb(255, 255, 255); width: 57px; height: 46px;\"><div class=\"layoutArea\"><div class=\"column\"><p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\"><br></span></p></div></div></td><td style=\"border-style: solid; border-width: 1.12pt 1pt 1pt; border-color: rgb(232, 237, 239) rgb(255, 255, 255) rgb(255, 255, 255); width: 89px; height: 46px;\"><div class=\"layoutArea\"><div class=\"column\"><p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\"><br></span></p></div></div></td><td style=\"border-style: solid; border-width: 1.12pt 1pt 1pt; border-color: rgb(232, 237, 239) rgb(255, 255, 255) rgb(255, 255, 255); width: 93px; height: 46px;\"><div class=\"layoutArea\"><div class=\"column\"><p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\"><br></span></p></div></div></td><td style=\"border-style: solid; border-width: 1.12pt 1pt 1.2224pt; border-color: rgb(232, 237, 239) rgb(255, 255, 255) rgb(255, 255, 255); width: 84px; height: 46px;\"><div class=\"layoutArea\"><div class=\"column\"><p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\"><br></span></p></div></div></td></tr><tr style=\"height: 46px;\"><td style=\"border-style: solid; border-width: 1.12pt 1.12pt 1pt; border-color: rgb(0, 56, 79) rgb(0, 56, 79) rgb(255, 255, 255); height: 46px; width: 82px; background-color: rgb(0, 56, 79);\">\r\n						<div class=\"layoutArea\">\r\n							<div class=\"column\">\r\n								<p><span style=\"font-size: 10pt; font-family: DINOT; font-weight: 700; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; font-weight: bold; color: #00384f;\">GPS3-M\r\n</span></p>\r\n							</div>\r\n						</div>\r\n					</td><td style=\"border-style: solid; border-width: 1.12pt 1pt 1pt 1.12pt; border-color: rgb(222, 229, 232) rgb(255, 255, 255) rgb(255, 255, 255) rgb(0, 56, 79); height: 46px; width: 46px;\">\r\n						<div class=\"layoutArea\">\r\n							<div class=\"column\">\r\n								<p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\">1\r\n</span></p>\r\n							</div>\r\n						</div>\r\n					</td><td style=\"border-style: solid; border-width: 1.12pt 1pt 1pt; border-color: rgb(232, 237, 239) rgb(255, 255, 255) rgb(255, 255, 255); height: 46px; width: 50px;\">\r\n						<div class=\"layoutArea\">\r\n							<div class=\"column\">\r\n								<p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\">3\r\n</span></p>\r\n							</div>\r\n						</div>\r\n					</td><td style=\"border-style: solid; border-width: 1.12pt 1pt 1pt; border-color: rgb(232, 237, 239) rgb(255, 255, 255) rgb(255, 255, 255); height: 46px; width: 67px;\">\r\n						<div class=\"layoutArea\">\r\n							<div class=\"column\">\r\n								<p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\">4\r\n</span></p>\r\n							</div>\r\n						</div>\r\n					</td><td rowspan=\"4\" style=\"border-style: solid; border-width: 1.12pt 1pt 1.2224pt; border-color: rgb(232, 237, 239) rgb(255, 255, 255) rgb(255, 255, 255); height: 210px; width: 87px;\">\r\n						<div class=\"layoutArea\">\r\n							<div class=\"column\">\r\n								<p><span style=\"color: rgb(0, 56, 79);\" data-mce-style=\"color: #00384f;\"><span style=\"font-size: 10pt; font-family: DINOT;\" data-mce-style=\"font-size: 10pt; font-family: DINOT;\">10 bar\r\n</span><span style=\"font-size: 10pt; font-family: DevanagariSangamMN;\" data-mce-style=\"font-size: 10pt; font-family: DevanagariSangamMN;\">@ </span><span style=\"font-size: 10pt; font-family: DINOT;\" data-mce-style=\"font-size: 10pt; font-family: DINOT;\">100° C\r\n</span></span></p>\r\n							</div>\r\n						</div>\r\n					</td><td style=\"border-style: solid; border-width: 1.12pt 1pt 1pt; border-color: rgb(232, 237, 239) rgb(255, 255, 255) rgb(255, 255, 255); height: 46px; width: 60px;\">\r\n						<div class=\"layoutArea\">\r\n							<div class=\"column\">\r\n								<p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\">385\r\n</span></p>\r\n							</div>\r\n						</div>\r\n					</td><td style=\"border-style: solid; border-width: 1.12pt 1pt 1pt; border-color: rgb(232, 237, 239) rgb(255, 255, 255) rgb(255, 255, 255); height: 46px; width: 58px;\">\r\n						<div class=\"layoutArea\">\r\n							<div class=\"column\">\r\n								<p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\">310\r\n</span></p>\r\n							</div>\r\n						</div>\r\n					</td><td style=\"border-style: solid; border-width: 1.12pt 1pt 1pt; border-color: rgb(232, 237, 239) rgb(255, 255, 255) rgb(255, 255, 255); height: 46px; width: 57px;\">\r\n						<div class=\"layoutArea\">\r\n							<div class=\"column\">\r\n								<p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\">95\r\n</span></p>\r\n							</div>\r\n						</div>\r\n					</td><td style=\"border-style: solid; border-width: 1.12pt 1pt 1pt; border-color: rgb(232, 237, 239) rgb(255, 255, 255) rgb(255, 255, 255); height: 46px; width: 89px;\">\r\n						<div class=\"layoutArea\">\r\n							<div class=\"column\">\r\n								<p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\">-\r\n</span></p>\r\n							</div>\r\n						</div>\r\n					</td><td style=\"border-style: solid; border-width: 1.12pt 1pt 1pt; border-color: rgb(232, 237, 239) rgb(255, 255, 255) rgb(255, 255, 255); height: 46px; width: 93px;\">\r\n						<div class=\"layoutArea\">\r\n							<div class=\"column\">\r\n								<p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\">1-1/2” GAS-F\r\n</span></p>\r\n							</div>\r\n						</div>\r\n					</td><td rowspan=\"4\" style=\"border-style: solid; border-width: 1.12pt 1pt 1.2224pt; border-color: rgb(232, 237, 239) rgb(255, 255, 255) rgb(255, 255, 255); height: 210px; width: 84px;\">\r\n						<div class=\"layoutArea\">\r\n							<div class=\"column\">\r\n								<p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\">1/4” GAS-F\r\n</span></p>\r\n							</div>\r\n						</div>\r\n					</td><td style=\"border-style: solid; border-width: 1.12pt 1pt 1pt; border-color: rgb(232, 237, 239) rgb(255, 255, 255) rgb(255, 255, 255); height: 46px; width: 69px;\">\r\n						<div class=\"layoutArea\">\r\n							<div class=\"column\">\r\n								<p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\">6\r\n</span></p>\r\n							</div>\r\n						</div>\r\n					</td><td style=\"border-style: solid; border-width: 1.12pt 1pt 1pt; border-color: rgb(232, 237, 239) rgb(255, 255, 255) rgb(255, 255, 255); height: 46px; width: 65px;\">\r\n						<div class=\"layoutArea\">\r\n							<div class=\"column\">\r\n								<p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\">5\r\n</span></p>\r\n							</div>\r\n						</div>\r\n					</td><td rowspan=\"4\" style=\"border-style: solid; border-width: 1.12pt 1pt 1.2224pt; border-color: rgb(232, 237, 239) rgb(255, 255, 255) rgb(255, 255, 255); height: 210px; width: 103px;\">\r\n						<div class=\"layoutArea\">\r\n							<div class=\"column\">\r\n								<p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\">Art. 4 Par. 3\r\n</span></p>\r\n							</div>\r\n						</div>\r\n					</td></tr><tr style=\"height: 46px;\"><td style=\"border-style: solid; border-width: 1pt 1.12pt; border-color: rgb(255, 255, 255) rgb(0, 56, 79); height: 46px; width: 82px; background-color: rgb(0, 56, 79);\">\r\n						<div class=\"layoutArea\">\r\n							<div class=\"column\">\r\n								<p><span style=\"font-size: 10pt; font-family: DINOT; font-weight: 700; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; font-weight: bold; color: #00384f;\">GPS4-M\r\n</span></p>\r\n							</div>\r\n						</div>\r\n					</td><td style=\"border-style: solid; border-width: 1pt 1pt 1pt 1.12pt; border-color: rgb(255, 255, 255) rgb(255, 255, 255) rgb(255, 255, 255) rgb(0, 56, 79); height: 46px; width: 46px;\">\r\n						<div class=\"layoutArea\">\r\n							<div class=\"column\">\r\n								<p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\">1\r\n</span></p>\r\n							</div>\r\n						</div>\r\n					</td><td style=\"border-style: solid; border-width: 1pt; border-color: rgb(255, 255, 255); height: 46px; width: 50px;\">\r\n						<div class=\"layoutArea\">\r\n							<div class=\"column\">\r\n								<p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\">4\r\n</span></p>\r\n							</div>\r\n						</div>\r\n					</td><td style=\"border-style: solid; border-width: 1pt; border-color: rgb(255, 255, 255); height: 46px; width: 67px;\">\r\n						<div class=\"layoutArea\">\r\n							<div class=\"column\">\r\n								<p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\">5\r\n</span></p>\r\n							</div>\r\n						</div>\r\n					</td><td style=\"border-style: solid; border-width: 1pt; border-color: rgb(255, 255, 255); height: 46px; width: 60px;\">\r\n						<div class=\"layoutArea\">\r\n							<div class=\"column\">\r\n								<p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\">515\r\n</span></p>\r\n							</div>\r\n						</div>\r\n					</td><td style=\"border-style: solid; border-width: 1pt; border-color: rgb(255, 255, 255); height: 46px; width: 58px;\">\r\n						<div class=\"layoutArea\">\r\n							<div class=\"column\">\r\n								<p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\">440\r\n</span></p>\r\n							</div>\r\n						</div>\r\n					</td><td style=\"border-style: solid; border-width: 1pt; border-color: rgb(255, 255, 255); height: 46px; width: 57px;\">\r\n						<div class=\"layoutArea\">\r\n							<div class=\"column\">\r\n								<p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\">95\r\n</span></p>\r\n							</div>\r\n						</div>\r\n					</td><td style=\"border-style: solid; border-width: 1pt; border-color: rgb(255, 255, 255); height: 46px; width: 89px;\">\r\n						<div class=\"layoutArea\">\r\n							<div class=\"column\">\r\n								<p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\">-\r\n</span></p>\r\n							</div>\r\n						</div>\r\n					</td><td style=\"border-style: solid; border-width: 1pt; border-color: rgb(255, 255, 255); height: 46px; width: 93px;\">\r\n						<div class=\"layoutArea\">\r\n							<div class=\"column\">\r\n								<p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\">1-1/2” GAS-F\r\n</span></p>\r\n							</div>\r\n						</div>\r\n					</td><td style=\"border-style: solid; border-width: 1pt; border-color: rgb(255, 255, 255); height: 46px; width: 69px;\">\r\n						<div class=\"layoutArea\">\r\n							<div class=\"column\">\r\n								<p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\">12\r\n</span></p>\r\n							</div>\r\n						</div>\r\n					</td><td style=\"border-style: solid; border-width: 1pt; border-color: rgb(255, 255, 255); height: 46px; width: 65px;\">\r\n						<div class=\"layoutArea\">\r\n							<div class=\"column\">\r\n								<p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\">6\r\n</span></p>\r\n							</div>\r\n						</div>\r\n					</td></tr><tr style=\"height: 46px;\"><td style=\"border-style: solid; border-width: 1pt 1.12pt; border-color: rgb(255, 255, 255) rgb(0, 56, 79); height: 46px; width: 82px; background-color: rgb(0, 56, 79);\">\r\n						<div class=\"layoutArea\">\r\n							<div class=\"column\">\r\n								<p><span style=\"font-size: 10pt; font-family: DINOT; font-weight: 700; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; font-weight: bold; color: #00384f;\">GPS1-M\r\n</span></p>\r\n							</div>\r\n						</div>\r\n					</td><td style=\"border-style: solid; border-width: 1pt 1pt 1pt 1.12pt; border-color: rgb(255, 255, 255) rgb(255, 255, 255) rgb(255, 255, 255) rgb(0, 56, 79); height: 46px; width: 46px;\">\r\n						<div class=\"layoutArea\">\r\n							<div class=\"column\">\r\n								<p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\">1\r\n</span></p>\r\n							</div>\r\n						</div>\r\n					</td><td style=\"border-style: solid; border-width: 1pt; border-color: rgb(255, 255, 255); height: 46px; width: 50px;\">\r\n						<div class=\"layoutArea\">\r\n							<div class=\"column\">\r\n								<p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\">1\r\n</span></p>\r\n							</div>\r\n						</div>\r\n					</td><td style=\"border-style: solid; border-width: 1pt; border-color: rgb(255, 255, 255); height: 46px; width: 67px;\">\r\n						<div class=\"layoutArea\">\r\n							<div class=\"column\">\r\n								<p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\">22\r\n</span></p>\r\n							</div>\r\n						</div>\r\n					</td><td style=\"border-style: solid; border-width: 1pt; border-color: rgb(255, 255, 255); height: 46px; width: 60px;\">\r\n						<div class=\"layoutArea\">\r\n							<div class=\"column\">\r\n								<p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\">630\r\n</span></p>\r\n							</div>\r\n						</div>\r\n					</td><td style=\"border-style: solid; border-width: 1pt; border-color: rgb(255, 255, 255); height: 46px; width: 58px;\">\r\n						<div class=\"layoutArea\">\r\n							<div class=\"column\">\r\n								<p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\">515\r\n</span></p>\r\n							</div>\r\n						</div>\r\n					</td><td style=\"border-style: solid; border-width: 1pt; border-color: rgb(255, 255, 255); height: 46px; width: 57px;\">\r\n						<div class=\"layoutArea\">\r\n							<div class=\"column\">\r\n								<p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\">155\r\n</span></p>\r\n							</div>\r\n						</div>\r\n					</td><td style=\"border-style: solid; border-width: 1pt; border-color: rgb(255, 255, 255); height: 46px; width: 89px;\">\r\n						<div class=\"layoutArea\">\r\n							<div class=\"column\">\r\n								<p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\">750 to 1025\r\n</span></p>\r\n							</div>\r\n						</div>\r\n					</td><td style=\"border-style: solid; border-width: 1pt; border-color: rgb(255, 255, 255); height: 46px; width: 93px;\">\r\n						<div class=\"layoutArea\">\r\n							<div class=\"column\">\r\n								<p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\">2” GAS-F\r\n</span></p>\r\n							</div>\r\n						</div>\r\n					</td><td style=\"border-style: solid; border-width: 1pt; border-color: rgb(255, 255, 255); height: 46px; width: 69px;\">\r\n						<div class=\"layoutArea\">\r\n							<div class=\"column\">\r\n								<p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\">20\r\n</span></p>\r\n							</div>\r\n						</div>\r\n					</td><td style=\"border-style: solid; border-width: 1pt; border-color: rgb(255, 255, 255); height: 46px; width: 65px;\">\r\n						<div class=\"layoutArea\">\r\n							<div class=\"column\">\r\n								<p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\">22\r\n</span></p>\r\n							</div>\r\n						</div>\r\n					</td></tr><tr style=\"height: 72px;\"><td style=\"border-style: solid; border-width: 1pt 1.12pt 1.2224pt; border-color: rgb(255, 255, 255) rgb(0, 56, 79) rgb(20, 72, 93); height: 72px; width: 82px; background-color: rgb(0, 56, 79);\">\r\n						<div class=\"layoutArea\">\r\n							<div class=\"column\">\r\n								<p><span style=\"font-size: 10pt; font-family: DINOT; font-weight: 700; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; font-weight: bold; color: #00384f;\">GPS2-M\r\n</span></p>\r\n							</div>\r\n						</div>\r\n					</td><td style=\"border-style: solid; border-width: 1pt 1pt 1.2224pt 1.12pt; border-color: rgb(255, 255, 255) rgb(255, 255, 255) rgb(245, 247, 248) rgb(0, 56, 79); height: 72px; width: 46px;\">\r\n						<div class=\"layoutArea\">\r\n							<div class=\"column\">\r\n								<p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\">1\r\n</span></p>\r\n							</div>\r\n						</div>\r\n					</td><td style=\"border-style: solid; border-width: 1pt 1pt 1.2224pt; border-color: rgb(255, 255, 255); height: 72px; width: 50px;\">\r\n						<div class=\"layoutArea\">\r\n							<div class=\"column\">\r\n								<p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\">2\r\n</span></p>\r\n							</div>\r\n						</div>\r\n					</td><td style=\"border-style: solid; border-width: 1pt 1pt 1.2224pt; border-color: rgb(255, 255, 255); height: 72px; width: 67px;\">\r\n						<div class=\"layoutArea\">\r\n							<div class=\"column\">\r\n								<p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\">34\r\n</span></p>\r\n							</div>\r\n						</div>\r\n					</td><td style=\"border-style: solid; border-width: 1pt 1pt 1.2224pt; border-color: rgb(255, 255, 255); height: 72px; width: 60px;\">\r\n						<div class=\"layoutArea\">\r\n							<div class=\"column\">\r\n								<p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\">970\r\n</span></p>\r\n							</div>\r\n						</div>\r\n					</td><td style=\"border-style: solid; border-width: 1pt 1pt 1.2224pt; border-color: rgb(255, 255, 255); height: 72px; width: 58px;\">\r\n						<div class=\"layoutArea\">\r\n							<div class=\"column\">\r\n								<p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\">855\r\n</span></p>\r\n							</div>\r\n						</div>\r\n					</td><td style=\"border-style: solid; border-width: 1pt 1pt 1.2224pt; border-color: rgb(255, 255, 255); height: 72px; width: 57px;\">\r\n						<div class=\"layoutArea\">\r\n							<div class=\"column\">\r\n								<p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\">155\r\n</span></p>\r\n							</div>\r\n						</div>\r\n					</td><td style=\"border-style: solid; border-width: 1pt 1pt 1.2224pt; border-color: rgb(255, 255, 255); height: 72px; width: 89px;\">\r\n						<div class=\"layoutArea\">\r\n							<div class=\"column\">\r\n								<p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\">980 to 1350\r\n</span></p>\r\n							</div>\r\n						</div>\r\n					</td><td style=\"border-style: solid; border-width: 1pt 1pt 1.2224pt; border-color: rgb(255, 255, 255); height: 72px; width: 93px;\">\r\n						<div class=\"layoutArea\">\r\n							<div class=\"column\">\r\n								<p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\">2” GAS-F\r\n</span></p>\r\n							</div>\r\n						</div>\r\n					</td><td style=\"border-style: solid; border-width: 1pt 1pt 1.2224pt; border-color: rgb(255, 255, 255); height: 72px; width: 69px;\">\r\n						<div class=\"layoutArea\">\r\n							<div class=\"column\">\r\n								<p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\">30\r\n</span></p>\r\n							</div>\r\n						</div>\r\n					</td><td style=\"border-style: solid; border-width: 1pt 1pt 1.2224pt; border-color: rgb(255, 255, 255); height: 72px; width: 65px;\">\r\n						<div class=\"layoutArea\">\r\n							<div class=\"column\">\r\n								<p><span style=\"font-size: 10pt; font-family: DINOT; color: rgb(0, 56, 79);\" data-mce-style=\"font-size: 10pt; font-family: DINOT; color: #00384f;\">34\r\n</span></p>\r\n							</div>\r\n						</div>\r\n					</td></tr></tbody></table>\r\n		</div><br data-mce-bogus=\"1\"></p>', '2018-04-16 14:18:27', '2018-04-16 14:32:21', NULL),
(7, 'tabela', '', '2018-04-16 14:27:12', '2018-04-16 14:27:12', '2018-04-16 14:29:18'),
(8, 'tabela', '', '2018-04-16 14:27:12', '2018-04-16 14:27:12', '2018-04-16 14:27:27'),
(9, 'asdasd', '<p><br data-mce-bogus=\"1\"></p>', '2018-04-16 15:09:50', '2018-04-16 22:19:15', NULL),
(10, 'Tabella', '<p><br data-mce-bogus=\"1\"></p>', '2018-04-16 15:22:12', '2018-04-16 15:22:12', NULL),
(11, 'tabella1', '<p><br data-mce-bogus=\"1\"></p>', '2018-04-16 15:33:35', '2018-04-16 16:24:39', NULL),
(12, 'Tabella2', '<p><br data-mce-bogus=\"1\"></p>', '2018-04-16 15:33:47', '2018-04-16 15:33:47', '2018-04-16 16:25:52'),
(13, 'Tabella', '<p><br data-mce-bogus=\"1\"></p>', '2018-04-16 15:40:14', '2018-04-16 15:40:14', NULL),
(14, 'Tabella', '<p><br data-mce-bogus=\"1\"></p>', '2018-04-16 15:43:39', '2018-04-16 15:43:39', NULL),
(15, 'Tabella2', '<p><br data-mce-bogus=\"1\"></p>', '2018-04-16 15:44:50', '2018-04-16 15:44:50', NULL),
(16, 'Tabella3', '<p><br data-mce-bogus=\"1\"></p>', '2018-04-16 15:45:38', '2018-04-16 15:45:38', NULL),
(17, 'Tabella4', '<p><br data-mce-bogus=\"1\"></p>', '2018-04-16 15:46:24', '2018-04-16 15:46:24', NULL),
(18, 'Tabella5', '<p><br data-mce-bogus=\"1\"></p>', '2018-04-16 15:46:35', '2018-04-16 15:46:35', NULL),
(19, 'Tabella6', '<p><br data-mce-bogus=\"1\"></p>', '2018-04-16 15:46:47', '2018-04-16 15:46:47', NULL),
(20, 'Tabella7', '<p><br data-mce-bogus=\"1\"></p>', '2018-04-16 15:47:37', '2018-04-16 15:47:37', NULL),
(21, 'Technical Data', '<p><br data-mce-bogus=\"1\"></p>', '2018-04-16 15:52:17', '2018-04-16 15:52:17', '2018-04-16 16:13:37'),
(22, 'Tabella2', '<p><br data-mce-bogus=\"1\"></p>', '2018-04-16 15:52:37', '2018-04-16 15:52:37', '2018-04-16 16:13:40'),
(23, 'Tabella', '<p><br data-mce-bogus=\"1\"></p>', '2018-04-16 15:55:05', '2018-04-16 15:55:05', NULL),
(24, 'Tabella2', '<p><br data-mce-bogus=\"1\"></p>', '2018-04-16 15:57:10', '2018-04-16 15:57:10', NULL),
(25, 'Tabella', '<p><br data-mce-bogus=\"1\"></p>', '2018-04-16 16:07:22', '2018-04-16 16:07:22', NULL),
(26, 'Tabella', '<p><br data-mce-bogus=\"1\"></p>', '2018-04-16 16:18:40', '2018-04-16 16:18:40', NULL),
(27, 'Tabella2', '<p><br data-mce-bogus=\"1\"></p>', '2018-04-16 16:18:53', '2018-04-16 16:18:53', NULL),
(28, 'Tabella', '<p><br data-mce-bogus=\"1\"></p>', '2018-04-16 16:29:12', '2018-04-16 16:29:12', NULL),
(29, 'Tabella', '<p><br data-mce-bogus=\"1\"></p>', '2018-04-16 16:34:07', '2018-04-16 16:34:07', NULL),
(30, 'Tabella', '<p><br data-mce-bogus=\"1\"></p>', '2018-04-16 16:36:31', '2018-04-16 16:36:31', NULL),
(31, 'Tabella2', '<p><br data-mce-bogus=\"1\"></p>', '2018-04-16 16:36:43', '2018-04-16 16:36:43', NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `table_page_translations`
--

CREATE TABLE `table_page_translations` (
  `id` int(11) NOT NULL,
  `object_id` int(11) DEFAULT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `table_page_translations`
--

INSERT INTO `table_page_translations` (`id`, `object_id`, `locale`, `field`, `content`) VALUES
(3, 2, 'en', 'title', 'Table Title'),
(4, 2, 'en', 'text', '<table>\r\n<tbody>\r\n<tr style=\"background-color: #fffb05;\">\r\n<td><strong>Tabella h 1<br /></strong></td>\r\n<td><strong>Tabella h 2<br /></strong></td>\r\n<td><strong>Tabella h 3<br /></strong></td>\r\n<td><strong>Tabella h 4</strong></td>\r\n</tr>\r\n<tr style=\"background-color: #1635e0;\">\r\n<td><em>asdads<br /></em></td>\r\n<td>asdasdad</td>\r\n<td>sdassss</td>\r\n<td>cxvxcvxcvcxv</td>\r\n</tr>\r\n<tr>\r\n<td><u>ewrwer</u></td>\r\n<td>xcvxfg</td>\r\n<td>drterdcf</td>\r\n<td>dfdfgdfgdfg</td>\r\n</tr>\r\n<tr style=\"background-color: #149161;\">\r\n<td><strong>wersfsdf</strong></td>\r\n<td>sdfsfe</td>\r\n<td>erfsfsefs</td>\r\n<td>efesfsefsds</td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(5, 3, 'en', 'title', 'asdasdads'),
(6, 3, 'en', 'text', '<p>asdasdasdadsasd</p>'),
(7, 4, 'en', 'title', 'example'),
(8, 4, 'en', 'text', '<table style=\"height: 157px; width: 100%; cell-spacing: 10px; cell-padding: 10px; border-collapse: collapse; border-color: #ffffff; border-style: solid;\" border=\"1\" cellspacing=\"10px\" cellpadding=\"10px\"><caption> </caption>\r\n<tbody>\r\n<tr style=\"height: 31px;\">\r\n<td style=\"height: 57px; border-style: solid; border-color: #ea00ff;\" colspan=\"2\">\r\n<h3><strong><span style=\"color: #003d50; font-size: 14pt;\">Solution</span></strong></h3>\r\n<br />\r\n<h3><span style=\"font-family: comic sans ms, sans-serif;\"><strong><span style=\"color: #003d50; font-size: 14pt;\">Polypropylene</span></strong></span></h3>\r\n</td>\r\n<td style=\"width: 25%; height: 57px; text-align: center; border-style: solid; border-color: #ea00ff;\">\r\n<h3><span style=\"font-family: comic sans ms, sans-serif;\"><strong><span style=\"color: #003d50; font-size: 14pt;\">Polyester</span></strong></span></h3>\r\n</td>\r\n<td style=\"width: 25%; height: 57px; text-align: center; border-style: solid; border-color: #ea00ff;\">\r\n<h3><span style=\"font-family: comic sans ms, sans-serif;\"><strong><span style=\"color: #003d50; font-size: 14pt;\">Nylon</span></strong></span></h3>\r\n</td>\r\n</tr>\r\n<tr style=\"background-color: #eeeeee;\">\r\n<td style=\"width: 24.828%; height: 18px; border-style: solid; border-color: #ea00ff;\"><span style=\"color: #003d50; font-size: 14pt; font-family: comic sans ms, sans-serif;\">Organic Solvents</span></td>\r\n<td style=\"width: 25.172%; height: 18px; text-align: center; border-style: solid; border-color: #ea00ff;\"><span style=\"font-family: comic sans ms, sans-serif; font-size: 14pt; color: #003d50;\">v v v v</span></td>\r\n<td style=\"width: 25%; height: 18px; text-align: center; border-style: solid; border-color: #ea00ff;\"><span style=\"color: #003d50; font-size: 14pt; font-family: comic sans ms, sans-serif;\">v v v v<br /></span></td>\r\n<td style=\"width: 25%; height: 18px; text-align: center; border-style: solid; border-color: #ea00ff;\"><span style=\"color: #003d50; font-size: 14pt; font-family: comic sans ms, sans-serif;\">v v v v</span></td>\r\n</tr>\r\n<tr style=\"background-color: #eeeeee;\">\r\n<td style=\"width: 24.828%; height: 10px; border-style: solid; border-color: #ea00ff;\"><span style=\"color: #003d50; font-size: 14pt; font-family: comic sans ms, sans-serif;\">Oils <br /></span></td>\r\n<td style=\"width: 25.172%; height: 10px; text-align: center; border-style: solid; border-color: #ea00ff;\"><span style=\"color: #003d50; font-size: 14pt; font-family: comic sans ms, sans-serif;\">v v v v<br /></span></td>\r\n<td style=\"width: 25%; height: 10px; text-align: center; border-style: solid; border-color: #ea00ff;\" colspan=\"2\"><span style=\"color: #003d50; font-size: 14pt; font-family: comic sans ms, sans-serif;\">v v v v<br /></span><span style=\"color: #003d50; font-size: 14pt; font-family: comic sans ms, sans-serif;\">v v v v</span></td>\r\n</tr>\r\n<tr style=\"background-color: #eeeeee;\">\r\n<td style=\"width: 24.828%; height: 18px; border-style: solid; border-color: #ea00ff;\"><span style=\"color: #003d50; font-size: 14pt; font-family: comic sans ms, sans-serif;\">Mirco-organisms</span></td>\r\n<td style=\"width: 25.172%; height: 18px; text-align: center; border-style: solid; border-color: #ea00ff;\"><span style=\"color: #003d50; font-size: 14pt; font-family: comic sans ms, sans-serif;\">v v v v<br /></span></td>\r\n<td style=\"width: 25%; height: 18px; text-align: center; border-style: solid; border-color: #ea00ff;\"><span style=\"color: #003d50; font-size: 14pt; font-family: comic sans ms, sans-serif;\">v v v v<br /></span></td>\r\n<td style=\"width: 25%; height: 18px; text-align: center; border-style: solid; border-color: #ea00ff;\"><span style=\"color: #003d50; font-size: 14pt; font-family: comic sans ms, sans-serif;\">v v v v</span></td>\r\n</tr>\r\n<tr style=\"background-color: #eeeeee;\">\r\n<td style=\"width: 24.828%; height: 98px; border-style: solid; border-color: #ea00ff;\"><span style=\"color: #003d50; font-size: 14pt; font-family: comic sans ms, sans-serif;\">Alkalines   sdfsdf<br /></span></td>\r\n<td style=\"width: 25.172%; height: 98px; text-align: center; border-style: solid; border-color: #ea00ff;\"><span style=\"font-size: 14pt; font-family: comic sans ms, sans-serif;\"><span style=\"color: #4ab7a9;\">v v v<br /></span></span></td>\r\n<td style=\"width: 25%; height: 98px; text-align: center; border-style: solid; border-color: #ea00ff;\"><span style=\"color: #003d50; font-size: 14pt; font-family: comic sans ms, sans-serif;\">v v v v<br /></span></td>\r\n<td style=\"width: 25%; height: 98px; text-align: center; border-style: solid; border-color: #ea00ff;\"><span style=\"font-size: 14pt; font-family: comic sans ms, sans-serif;\"><span style=\"color: #4ab7a9;\">v v v</span></span></td>\r\n</tr>\r\n<tr style=\"background-color: #eeeeee;\">\r\n<td style=\"width: 24.828%; height: 92px; border-style: solid; border-color: #ea00ff;\"><span style=\"color: #003d50; font-size: 14pt; font-family: comic sans ms, sans-serif;\">Organic Agents</span></td>\r\n<td style=\"width: 25.172%; height: 92px; text-align: center; border-style: solid; border-color: #ea00ff;\"><span style=\"font-size: 14pt; font-family: comic sans ms, sans-serif;\"><span style=\"color: #4ab7a9;\">v v v <br /></span></span></td>\r\n<td style=\"width: 25%; height: 92px; text-align: center; border-style: solid; border-color: #ea00ff;\"><span style=\"color: #4ab7a9; font-size: 14pt; font-family: comic sans ms, sans-serif;\">v</span></td>\r\n<td style=\"width: 25%; height: 92px; text-align: center; border-style: solid; border-color: #ea00ff;\"><span style=\"font-size: 14pt; font-family: comic sans ms, sans-serif;\"><span style=\"color: #4ab7a9;\">v va<br /></span></span></td>\r\n</tr>\r\n<tr style=\"background-color: #eeeeee;\">\r\n<td style=\"width: 24.828%; height: 18px; border-style: solid; border-color: #ea00ff;\"><span style=\"color: #003d50; font-size: 14pt; font-family: comic sans ms, sans-serif;\">Oxidising Agents</span></td>\r\n<td style=\"width: 25.172%; height: 18px; text-align: center; border-style: solid; border-color: #ea00ff;\"><span style=\"font-size: 14pt; font-family: comic sans ms, sans-serif;\"><span style=\"color: #4ab7a9;\">v v v<br /></span></span></td>\r\n<td style=\"width: 25%; height: 18px; text-align: center; border-style: solid; border-color: #ea00ff;\"><span style=\"font-size: 14pt; font-family: comic sans ms, sans-serif;\"><span style=\"color: #4ab7a9;\">v v v<br /></span></span></td>\r\n<td style=\"width: 25%; height: 18px; text-align: center; border-style: solid; border-color: #ea00ff;\"><span style=\"color: #4ab7a9; font-size: 14pt; font-family: comic sans ms, sans-serif;\">v</span></td>\r\n</tr>\r\n<tr style=\"background-color: #eeeeee;\">\r\n<td style=\"width: 24.828%; height: 18px; border-style: solid; border-color: #ea00ff;\"><span style=\"color: #003d50; font-size: 14pt; font-family: comic sans ms, sans-serif;\">Mineral Acids</span></td>\r\n<td style=\"width: 25.172%; height: 18px; text-align: center; border-style: solid; border-color: #ea00ff;\"><span style=\"font-size: 14pt; font-family: comic sans ms, sans-serif;\"><span style=\"color: #4ab7a9;\">v v v<br /></span></span></td>\r\n<td style=\"width: 25%; height: 18px; text-align: center; border-style: solid; border-color: #ea00ff;\"><span style=\"font-size: 14pt; font-family: comic sans ms, sans-serif;\"><span style=\"color: #4ab7a9;\">v v v<br /></span></span></td>\r\n<td style=\"width: 25%; height: 18px; text-align: center; border-style: solid; border-color: #ea00ff;\"><span style=\"color: #4ab7a9; font-size: 14pt; font-family: comic sans ms, sans-serif;\">v</span></td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(9, 5, 'en', 'title', 'tabella con spunte');
INSERT INTO `table_page_translations` (`id`, `object_id`, `locale`, `field`, `content`) VALUES
(10, 5, 'en', 'text', '<table class=\"mainTable mce-item-table\" style=\"height: 745px; width: 100.302%; border-collapse: collapse;\" data-mce-style=\"height: 745px; width: 100.302%; border-collapse: collapse;\" cellspacing=\"10\" cellpadding=\"30\"><thead><tr style=\"border-style: solid; border-color: #ffffff;\" data-mce-style=\"border-style: solid; border-color: #ffffff;\"><td style=\"height: 15px; text-align: left; border-style: solid; width: 22.4507%; border-color: rgb(255, 0, 0);\" data-mce-style=\"height: 15px; text-align: left; border-style: solid; border-color: #ffffff; width: 22.4507%;\"><span style=\"color: #003d50; font-size: 14pt;\" data-mce-style=\"color: #003d50; font-size: 14pt;\"><strong>Solution</strong></span></td><td style=\"border-style: solid; width: 27.4207%; text-align: center; height: 15px; border-color: rgb(255, 0, 0);\" data-mce-style=\"border-style: solid; border-color: #ffffff; width: 27.4207%; text-align: center; height: 15px;\"><span style=\"color: #003d50; font-size: 14pt;\" data-mce-style=\"color: #003d50; font-size: 14pt;\"><strong><span style=\"color: #003d50; font-size: 14pt;\" data-mce-style=\"color: #003d50; font-size: 14pt;\"><strong>Polypropylene</strong></span></strong></span></td><td style=\"width: 25.0752%; height: 15px; text-align: center; border-style: solid; border-color: rgb(255, 0, 0);\" data-mce-style=\"width: 25.0752%; height: 15px; text-align: center; border-style: solid; border-color: #ffffff;\"><span style=\"color: #003d50; font-size: 14pt;\" data-mce-style=\"color: #003d50; font-size: 14pt;\"><strong>Polyester<br></strong></span></td><td style=\"width: 24.8746%; height: 15px; text-align: center; border-style: solid; border-color: rgb(255, 0, 0);\" data-mce-style=\"width: 24.8746%; height: 15px; text-align: center; border-style: solid; border-color: #ffffff;\"><span style=\"color: #003d50; font-size: 14pt;\" data-mce-style=\"color: #003d50; font-size: 14pt;\"><strong>Nylon</strong></span></td></tr><tr style=\"border-style: solid; border-color: #ffffff;\" data-mce-style=\"border-style: solid; border-color: #ffffff;\"><td style=\"width: 22.4507%; height: 10px; border-style: solid; background-color: rgb(238, 238, 238); border-color: rgb(255, 0, 0);\" data-mce-style=\"width: 22.4507%; height: 10px; border-style: solid; border-color: #ffffff; background-color: #eeeeee;\">Organic Solvents</td><td style=\"width: 27.4207%; height: 10px; text-align: center; border-style: solid; background-color: rgb(238, 238, 238); border-color: rgb(255, 0, 0);\" data-mce-style=\"width: 27.4207%; height: 10px; text-align: center; border-style: solid; border-color: #ffffff; background-color: #eeeeee;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span></span></span><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span></span></span></span></span><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎</span></span></span></span></span></span></span></span></span></span></td><td style=\"width: 25.0752%; height: 10px; text-align: center; border-style: solid; background-color: rgb(238, 238, 238); border-color: rgb(255, 0, 0);\" data-mce-style=\"width: 25.0752%; height: 10px; text-align: center; border-style: solid; border-color: #ffffff; background-color: #eeeeee;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span></span></span><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span></span></span></span></span><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎</span></span></span></span></span></span></span></span></span></span></td><td style=\"width: 24.8746%; height: 10px; border: 3px solid rgb(255, 0, 0); text-align: center; background-color: rgb(238, 238, 238);\" data-mce-style=\"width: 24.8746%; height: 10px; border: 3px solid #ffffff; text-align: center; background-color: #eeeeee;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span></span></span><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span></span></span></span></span><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎</span></span></span></span></span></span></span></span></span></span></td></tr><tr style=\"border-style: solid; border-color: #ffffff;\" data-mce-style=\"border-style: solid; border-color: #ffffff;\"><td style=\"width: 22.4507%; height: 18px; border: 3px solid rgb(255, 0, 0); background-color: rgb(238, 238, 238);\" data-mce-style=\"width: 22.4507%; height: 18px; border: 3px solid #ffffff; background-color: #eeeeee;\">Oils</td><td style=\"width: 27.4207%; height: 18px; border: 3px solid rgb(255, 0, 0); text-align: center; background-color: rgb(238, 238, 238);\" data-mce-style=\"width: 27.4207%; height: 18px; border: 3px solid #ffffff; text-align: center; background-color: #eeeeee;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span></span></span><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span></span></span></span></span><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎</span></span></span></span></span></span></span></span></span></span></td><td style=\"width: 25.0752%; height: 18px; border: 3px solid rgb(255, 0, 0); text-align: center; background-color: rgb(238, 238, 238);\" data-mce-style=\"width: 25.0752%; height: 18px; border: 3px solid #ffffff; text-align: center; background-color: #eeeeee;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span></span></span><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span></span></span></span></span><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎</span></span></span></span></span></span></span></span></span></span></td><td style=\"width: 24.8746%; height: 18px; border: 3px solid rgb(255, 0, 0); text-align: center; background-color: rgb(238, 238, 238);\" data-mce-style=\"width: 24.8746%; height: 18px; border: 3px solid #ffffff; text-align: center; background-color: #eeeeee;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span></span></span><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span></span></span></span></span><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎</span></span></span></span></span></span></span></span></span></span></td></tr><tr style=\"border-style: solid; border-color: #ffffff;\" data-mce-style=\"border-style: solid; border-color: #ffffff;\"><td style=\"width: 22.4507%; height: 19px; border: 3px solid rgb(255, 0, 0); background-color: rgb(238, 238, 238);\" data-mce-style=\"width: 22.4507%; height: 19px; border: 3px solid #ffffff; background-color: #eeeeee;\">Mirco-organisms</td><td style=\"width: 27.4207%; height: 19px; border: 3px solid rgb(255, 0, 0); text-align: center; background-color: rgb(238, 238, 238);\" data-mce-style=\"width: 27.4207%; height: 19px; border: 3px solid #ffffff; text-align: center; background-color: #eeeeee;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span></span></span><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span></span></span></span></span><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎</span></span></span></span></span></span></span></span></span></span></td><td style=\"width: 25.0752%; height: 19px; border: 3px solid rgb(255, 0, 0); text-align: center; background-color: rgb(238, 238, 238);\" data-mce-style=\"width: 25.0752%; height: 19px; border: 3px solid #ffffff; text-align: center; background-color: #eeeeee;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span></span></span><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span></span></span></span></span><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎</span></span></span></span></span></span></span></span></span></span></td><td style=\"width: 24.8746%; height: 19px; border: 3px solid rgb(255, 0, 0); text-align: center; background-color: rgb(238, 238, 238);\" data-mce-style=\"width: 24.8746%; height: 19px; border: 3px solid #ffffff; text-align: center; background-color: #eeeeee;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span></span></span><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span></span></span></span></span><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎</span></span></span></span></span></span></span></span></span></span></td></tr><tr style=\"border-style: solid; border-color: #ffffff;\" data-mce-style=\"border-style: solid; border-color: #ffffff;\"><td style=\"width: 22.4507%; height: 18px; border: 3px solid rgb(255, 0, 0); background-color: rgb(238, 238, 238);\" data-mce-style=\"width: 22.4507%; height: 18px; border: 3px solid #ffffff; background-color: #eeeeee;\">Alkalines</td><td style=\"width: 27.4207%; height: 18px; border: 3px solid rgb(255, 0, 0); text-align: center; background-color: rgb(238, 238, 238);\" data-mce-style=\"width: 27.4207%; height: 18px; border: 3px solid #ffffff; text-align: center; background-color: #eeeeee;\"><span style=\"color: #4ab7a9;\" data-mce-style=\"color: #4ab7a9;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span><br></span></td><td style=\"width: 25.0752%; height: 18px; border: 3px solid rgb(255, 0, 0); text-align: center; background-color: rgb(238, 238, 238);\" data-mce-style=\"width: 25.0752%; height: 18px; border: 3px solid #ffffff; text-align: center; background-color: #eeeeee;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span></span></span><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span></span></span></span></span><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎</span></span></span></span></span></span></span></span></span></span></td><td style=\"width: 24.8746%; height: 18px; border: 3px solid rgb(255, 0, 0); text-align: center; background-color: rgb(238, 238, 238);\" data-mce-style=\"width: 24.8746%; height: 18px; border: 3px solid #ffffff; text-align: center; background-color: #eeeeee;\"><span style=\"color: #4ab7a9;\" data-mce-style=\"color: #4ab7a9;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span></span></td></tr><tr style=\"border-style: solid; border-color: #ffffff;\" data-mce-style=\"border-style: solid; border-color: #ffffff;\"><td style=\"width: 22.4507%; height: 18px; border: 3px solid rgb(255, 0, 0); background-color: rgb(238, 238, 238);\" data-mce-style=\"width: 22.4507%; height: 18px; border: 3px solid #ffffff; background-color: #eeeeee;\">Organic Agents</td><td style=\"width: 27.4207%; height: 18px; border: 3px solid rgb(255, 0, 0); text-align: center; background-color: rgb(238, 238, 238);\" data-mce-style=\"width: 27.4207%; height: 18px; border: 3px solid #ffffff; text-align: center; background-color: #eeeeee;\"><span style=\"color: #4ab7a9;\" data-mce-style=\"color: #4ab7a9;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span></span></td><td style=\"width: 25.0752%; height: 18px; border: 3px solid rgb(255, 0, 0); text-align: center; background-color: rgb(238, 238, 238);\" data-mce-style=\"width: 25.0752%; height: 18px; border: 3px solid #ffffff; text-align: center; background-color: #eeeeee;\"><span style=\"color: #4ab7a9;\" data-mce-style=\"color: #4ab7a9;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎</span></span></span></td><td style=\"width: 24.8746%; height: 18px; border: 3px solid rgb(255, 0, 0); text-align: center; background-color: rgb(238, 238, 238);\" data-mce-style=\"width: 24.8746%; height: 18px; border: 3px solid #ffffff; text-align: center; background-color: #eeeeee;\"><span style=\"color: #4ab7a9;\" data-mce-style=\"color: #4ab7a9;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span></td></tr><tr style=\"border-style: solid; border-color: #ffffff;\" data-mce-style=\"border-style: solid; border-color: #ffffff;\"><td style=\"width: 22.4507%; height: 18px; border: 3px solid rgb(255, 0, 0); background-color: rgb(238, 238, 238);\" data-mce-style=\"width: 22.4507%; height: 18px; border: 3px solid #ffffff; background-color: #eeeeee;\">Oxidising Agents</td><td style=\"width: 27.4207%; height: 18px; border: 3px solid rgb(255, 0, 0); text-align: center; background-color: rgb(238, 238, 238);\" data-mce-style=\"width: 27.4207%; height: 18px; border: 3px solid #ffffff; text-align: center; background-color: #eeeeee;\"><span style=\"color: #4ab7a9;\" data-mce-style=\"color: #4ab7a9;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span></span></td><td style=\"width: 25.0752%; height: 18px; border: 3px solid rgb(255, 0, 0); text-align: center; background-color: rgb(238, 238, 238);\" data-mce-style=\"width: 25.0752%; height: 18px; border: 3px solid #ffffff; text-align: center; background-color: #eeeeee;\"><span style=\"color: #4ab7a9;\" data-mce-style=\"color: #4ab7a9;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span></span></td><td style=\"width: 24.8746%; height: 18px; border: 3px solid rgb(255, 0, 0); text-align: center; background-color: rgb(238, 238, 238);\" data-mce-style=\"width: 24.8746%; height: 18px; border: 3px solid #ffffff; text-align: center; background-color: #eeeeee;\"><span style=\"color: #4ab7a9;\" data-mce-style=\"color: #4ab7a9;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎</span></span></span></td></tr><tr style=\"border-style: solid; border-color: #ffffff;\" data-mce-style=\"border-style: solid; border-color: #ffffff;\"><td style=\"width: 22.4507%; height: 11px; border: 3px solid rgb(255, 0, 0); background-color: rgb(238, 238, 238);\" data-mce-style=\"width: 22.4507%; height: 11px; border: 3px solid #ffffff; background-color: #eeeeee;\">Mineral Acids</td><td style=\"width: 27.4207%; height: 11px; border: 3px solid rgb(255, 0, 0); text-align: center; background-color: rgb(238, 238, 238);\" data-mce-style=\"width: 27.4207%; height: 11px; border: 3px solid #ffffff; text-align: center; background-color: #eeeeee;\"><span style=\"color: #4ab7a9;\" data-mce-style=\"color: #4ab7a9;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span></span></td><td style=\"width: 25.0752%; height: 11px; border: 3px solid rgb(255, 0, 0); text-align: center; background-color: rgb(238, 238, 238);\" data-mce-style=\"width: 25.0752%; height: 11px; border: 3px solid #ffffff; text-align: center; background-color: #eeeeee;\"><span style=\"color: #4ab7a9;\" data-mce-style=\"color: #4ab7a9;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span></span></td><td style=\"width: 24.8746%; height: 11px; border: 3px solid rgb(255, 0, 0); text-align: center; background-color: rgb(238, 238, 238);\" data-mce-style=\"width: 24.8746%; height: 11px; border: 3px solid #ffffff; text-align: center; background-color: #eeeeee;\"><span style=\"color: #4ab7a9;\" data-mce-style=\"color: #4ab7a9;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\" data-mce-style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎</span></span></span></td></tr></thead></table><p><br></p>');
INSERT INTO `table_page_translations` (`id`, `object_id`, `locale`, `field`, `content`) VALUES
(11, 6, 'en', 'title', ''),
(12, 6, 'en', 'text', '<div class=\"page\" title=\"Page 2\"><table style=\"height: 481px; width: 100%; border-collapse: collapse;\" data-mce-style=\"height: 302px; width: 100%; border-collapse: collapse;\" class=\"mce-item-table\"><colgroup><col style=\"width: 8.065612%;\" data-mce-style=\"width: 8.065612%;\"><col style=\"width: 4.549796%;\" data-mce-style=\"width: 4.549796%;\"><col style=\"width: 4.865564%;\" data-mce-style=\"width: 4.865564%;\"><col style=\"width: 6.582445%;\" data-mce-style=\"width: 6.582445%;\"><col style=\"width: 8.590535%;\" data-mce-style=\"width: 8.590535%;\"><col style=\"width: 5.897565%;\" data-mce-style=\"width: 5.897565%;\"><col style=\"width: 5.659759%;\" data-mce-style=\"width: 5.659759%;\"><col style=\"width: 5.659759%;\" data-mce-style=\"width: 5.659759%;\"><col style=\"width: 8.846185%;\" data-mce-style=\"width: 8.846185%;\"><col style=\"width: 9.279696%;\" data-mce-style=\"width: 9.279696%;\"><col style=\"width: 8.413740%;\" data-mce-style=\"width: 8.413740%;\"><col style=\"width: 6.848864%;\" data-mce-style=\"width: 6.848864%;\"><col style=\"width: 6.468222%;\" data-mce-style=\"width: 6.468222%;\"><col style=\"width: 10.272259%;\" data-mce-style=\"width: 10.272259%;\"> </colgroup><tbody><tr data-mce-style=\"background-color: #4ab7a9; height: 46px; text-align: center;\" style=\"background-color: rgb(74, 183, 169); height: 174px; text-align: center;\"><td rowspan=\"2\" style=\"text-align: center; width: 8.10277%; height: 220px;\"><div><div><p><br></p></div></div><div><div><p><strong><span style=\"color: rgb(0, 56, 79);\" data-mce-style=\"color: #00384f;\">MODEL</span></strong></p></div></div></td><td rowspan=\"2\" style=\"text-align: center; width: 4.54545%; height: 220px;\"><div><div><p><strong><span style=\"color: rgb(0, 56, 79);\" data-mce-style=\"color: #00384f;\">N° of bags</span></strong></p></div></div><div><div><p><br></p></div></div></td><td rowspan=\"2\" style=\"text-align: center; width: 4.94071%; height: 220px;\"><div><div><p><strong><span style=\"color: rgb(0, 56, 79);\" data-mce-style=\"color: #00384f;\">Bag Size</span></strong></p></div></div><div><div><p><br></p></div></div></td><td rowspan=\"2\" style=\"text-align: center; width: 6.62055%; height: 220px;\"><div><div><p><strong><span style=\"color: rgb(0, 56, 79);\" data-mce-style=\"color: #00384f;\">VOLUME</span></strong></p><p><span style=\"color: rgb(0, 56, 79);\" data-mce-style=\"color: #00384f;\">Lt</span></p></div></div><div><div><p><br></p></div></div></td><td rowspan=\"2\" style=\"text-align: center; width: 8.59684%; height: 220px;\"><div><div><p><br></p><div title=\"Page 2\"><div><div><div><p><strong><span style=\"color: rgb(0, 56, 79);\" data-mce-style=\"color: #00384f;\">Max Operating Press. (PS) </span></strong></p></div></div></div></div></div></div><div><div><p><br></p></div></div></td><td colspan=\"4\" style=\"text-align: center; width: 26.087%; height: 174px;\"><div><div><p><br></p></div></div><div><div><p><br></p></div></div><div><div><p><br></p><div title=\"Page 2\"><div><div><div><p><strong><span style=\"color: rgb(0, 56, 79);\" data-mce-style=\"color: #00384f;\">Dimensions (mm) </span></strong></p></div></div></div></div></div></div><div><div><p><br></p></div></div></td><td colspan=\"2\" style=\"text-align: center; width: 17.5889%; height: 174px;\"><div><div><p><br></p></div></div><div><div><p><br></p><div title=\"Page 2\"><div><div><div><p><span style=\"color: rgb(0, 56, 79);\" data-mce-style=\"color: #00384f;\"><strong>Connections</strong> </span></p></div></div></div></div></div></div></td><td rowspan=\"2\" style=\"text-align: center; width: 6.81818%; height: 220px;\"><div><div><p><br></p></div></div><div><div><p><br></p><div title=\"Page 2\"><div><div><div><p><strong><span style=\"color: rgb(0, 56, 79);\" data-mce-style=\"color: #00384f;\">Flow rate </span></strong></p><p><span style=\"color: rgb(0, 56, 79);\" data-mce-style=\"color: #00384f;\">mc/h </span></p></div></div></div></div></div></div></td><td rowspan=\"2\" style=\"text-align: center; width: 6.42292%; height: 220px;\"><div><div><p><br></p></div></div><div><div><p><br></p><div title=\"Page 2\"><div><div><div><p><strong><span style=\"color: rgb(0, 56, 79);\" data-mce-style=\"color: #00384f;\">Weight </span></strong></p><p><span style=\"color: rgb(0, 56, 79);\" data-mce-style=\"color: #00384f;\">kg </span></p></div></div></div></div></div></div></td><td rowspan=\"2\" style=\"text-align: center; width: 10.1779%; height: 220px;\"><div><div><p><br></p></div></div><div><div><p><br></p><div title=\"Page 2\"><div><div><div><p><strong><span style=\"color: rgb(0, 56, 79);\" data-mce-style=\"color: #00384f;\">Liquid group 2 with vapour press. < 0.5 bar </span></strong></p></div></div></div></div></div></div></td></tr><tr data-mce-style=\"background-color: #4ab7a9; height: 46px; text-align: center;\" style=\"background-color: rgb(74, 183, 169); height: 46px; text-align: center;\"><td style=\"text-align: center; width: 5.92885%; height: 46px;\"><div><div><p><span style=\"color: rgb(0, 56, 79);\" data-mce-style=\"color: #00384f;\">A</span></p></div></div></td><td style=\"text-align: center; width: 5.73123%; height: 46px;\"><div><div><p><span style=\"color: rgb(0, 56, 79);\" data-mce-style=\"color: #00384f;\">B</span></p></div></div></td><td style=\"text-align: center; width: 5.63241%; height: 46px;\"><div><div><p><span style=\"color: rgb(0, 56, 79);\" data-mce-style=\"color: #00384f;\">C</span></p></div></div></td><td style=\"text-align: center; width: 8.79447%; height: 46px;\"><div><div><p><span style=\"color: rgb(0, 56, 79);\" data-mce-style=\"color: #00384f;\">D</span></p></div></div></td><td style=\"text-align: center; width: 9.18972%; height: 46px;\"><div><div><p><span style=\"color: rgb(0, 56, 79);\" data-mce-style=\"color: #00384f;\">N1-N2</span></p></div></div></td><td style=\"text-align: center; width: 8.39921%; height: 46px;\"><div><div><p><span style=\"color: rgb(0, 56, 79);\" data-mce-style=\"color: #00384f;\">N3</span></p></div></div></td></tr><tr style=\"height: 64px; text-align: center;\" data-mce-style=\"height: 46px; text-align: center;\"><td style=\"text-align: center; background-color: rgb(0, 56, 79); width: 8.10277%; height: 64px;\"><div><div><p><span style=\"color: rgb(255, 255, 255);\" data-mce-style=\"color: #ffffff;\">GPS3-M </span></p></div></div></td><td style=\"text-align: center; width: 4.54545%; height: 64px;\"><div><div><p><span style=\"color: rgb(0, 56, 79);\" data-mce-style=\"color: #00384f;\">1 </span></p></div></div></td><td style=\"text-align: center; width: 4.94071%; height: 64px;\"><div><div><p><span style=\"color: rgb(0, 56, 79);\" data-mce-style=\"color: #00384f;\">3 </span></p></div></div></td><td style=\"text-align: center; width: 6.62055%; height: 64px;\"><div><div><p><span style=\"color: rgb(0, 56, 79);\" data-mce-style=\"color: #00384f;\">4 </span></p></div></div></td><td rowspan=\"4\" style=\"text-align: center; width: 8.59684%; height: 261px;\"><div><div><p><span style=\"color: rgb(0, 56, 79);\" data-mce-style=\"color: #00384f;\">10 bar @ 100°C </span></p></div></div></td><td style=\"text-align: center; width: 5.92885%; height: 64px;\"><div><div><p><span style=\"color: rgb(0, 56, 79);\" data-mce-style=\"color: #00384f;\">385 </span></p></div></div></td><td style=\"text-align: center; width: 5.73123%; height: 64px;\"><div><div><p><span style=\"color: rgb(0, 56, 79);\" data-mce-style=\"color: #00384f;\">310 </span></p></div></div></td><td style=\"text-align: center; width: 5.63241%; height: 64px;\"><div><div><p><span style=\"color: rgb(0, 56, 79);\" data-mce-style=\"color: #00384f;\">95 </span></p></div></div></td><td style=\"text-align: center; width: 8.79447%; height: 64px;\"><div><div><p><span style=\"color: rgb(0, 56, 79);\" data-mce-style=\"color: #00384f;\">- </span></p></div></div></td><td style=\"text-align: center; width: 9.18972%; height: 64px;\"><div><div><p><span style=\"color: rgb(0, 56, 79);\" data-mce-style=\"color: #00384f;\">1-1/2” GAS-F </span></p></div></div></td><td rowspan=\"4\" style=\"text-align: center; width: 8.39921%; height: 261px;\"><div><div><p><span style=\"color: rgb(0, 56, 79);\" data-mce-style=\"color: #00384f;\">1/4” GAS-F </span></p></div></div></td><td style=\"text-align: center; width: 6.81818%; height: 64px;\"><div><div><p><span style=\"color: rgb(0, 56, 79);\" data-mce-style=\"color: #00384f;\">6 </span></p></div></div></td><td style=\"text-align: center; width: 6.42292%; height: 64px;\"><div><div><p><span style=\"color: rgb(0, 56, 79);\" data-mce-style=\"color: #00384f;\">5 </span></p></div></div></td><td rowspan=\"4\" style=\"text-align: center; width: 10.1779%; height: 261px;\"><div><div><p><span style=\"color: rgb(0, 56, 79);\" data-mce-style=\"color: #00384f;\">Art. 4 Par. 3 </span></p></div></div></td></tr><tr style=\"height: 64px; text-align: center;\" data-mce-style=\"height: 46px; text-align: center;\"><td style=\"text-align: center; background-color: rgb(0, 56, 79); width: 8.10277%; height: 64px;\"><div><div><p><span style=\"color: rgb(255, 255, 255);\" data-mce-style=\"color: #ffffff;\">GPS4-M </span></p></div></div></td><td style=\"text-align: center; width: 4.54545%; height: 64px;\"><div><div><p><span style=\"color: rgb(0, 56, 79);\" data-mce-style=\"color: #00384f;\">1 </span></p></div></div></td><td style=\"text-align: center; width: 4.94071%; height: 64px;\"><div><div><p><span style=\"color: rgb(0, 56, 79);\" data-mce-style=\"color: #00384f;\">4 </span></p></div></div></td><td style=\"text-align: center; width: 6.62055%; height: 64px;\"><div><div><p><span style=\"color: rgb(0, 56, 79);\" data-mce-style=\"color: #00384f;\">5 </span></p></div></div></td><td style=\"text-align: center; width: 5.92885%; height: 64px;\"><div><div><p><span style=\"color: rgb(0, 56, 79);\" data-mce-style=\"color: #00384f;\">515 </span></p></div></div></td><td style=\"text-align: center; width: 5.73123%; height: 64px;\"><div><div><p><span style=\"color: rgb(0, 56, 79);\" data-mce-style=\"color: #00384f;\">440 </span></p></div></div></td><td style=\"text-align: center; width: 5.63241%; height: 64px;\"><div><div><p><span style=\"color: rgb(0, 56, 79);\" data-mce-style=\"color: #00384f;\">95 </span></p></div></div></td><td style=\"text-align: center; width: 8.79447%; height: 64px;\"><div><div><p><span style=\"color: rgb(0, 56, 79);\" data-mce-style=\"color: #00384f;\">- </span></p></div></div></td><td style=\"text-align: center; width: 9.18972%; height: 64px;\"><div><div><p><span style=\"color: rgb(0, 56, 79);\" data-mce-style=\"color: #00384f;\">1-1/2” GAS-F </span></p></div></div></td><td style=\"text-align: center; width: 6.81818%; height: 64px;\"><div><div><p><span style=\"color: rgb(0, 56, 79);\" data-mce-style=\"color: #00384f;\">12 </span></p></div></div></td><td style=\"text-align: center; width: 6.42292%; height: 64px;\"><div><div><p><span style=\"color: rgb(0, 56, 79);\" data-mce-style=\"color: #00384f;\">6 </span></p></div></div></td></tr><tr style=\"height: 64px; text-align: center;\" data-mce-style=\"height: 46px; text-align: center;\"><td style=\"text-align: center; background-color: rgb(0, 56, 79); width: 8.10277%; height: 64px;\"><div><div><p><span style=\"color: rgb(255, 255, 255);\" data-mce-style=\"color: #ffffff;\">GPS1-M </span></p></div></div></td><td style=\"text-align: center; width: 4.54545%; height: 64px;\"><div><div><p><span style=\"color: rgb(0, 56, 79);\" data-mce-style=\"color: #00384f;\">1 </span></p></div></div></td><td style=\"text-align: center; width: 4.94071%; height: 64px;\"><div><div><p><span style=\"color: rgb(0, 56, 79);\" data-mce-style=\"color: #00384f;\">1 </span></p></div></div></td><td style=\"text-align: center; width: 6.62055%; height: 64px;\"><div><div><p><span style=\"color: rgb(0, 56, 79);\" data-mce-style=\"color: #00384f;\">22 </span></p></div></div></td><td style=\"text-align: center; width: 5.92885%; height: 64px;\"><div><div><p><span style=\"color: rgb(0, 56, 79);\" data-mce-style=\"color: #00384f;\">630 </span></p></div></div></td><td style=\"text-align: center; width: 5.73123%; height: 64px;\"><div><div><p><span style=\"color: rgb(0, 56, 79);\" data-mce-style=\"color: #00384f;\">515 </span></p></div></div></td><td style=\"text-align: center; width: 5.63241%; height: 64px;\"><div><div><p><span style=\"color: rgb(0, 56, 79);\" data-mce-style=\"color: #00384f;\">155 </span></p></div></div></td><td style=\"text-align: center; width: 8.79447%; height: 64px;\"><div><div><p><span style=\"color: rgb(0, 56, 79);\" data-mce-style=\"color: #00384f;\">750 to 1025 </span></p></div></div></td><td style=\"text-align: center; width: 9.18972%; height: 64px;\"><div><div><p><span style=\"color: rgb(0, 56, 79);\" data-mce-style=\"color: #00384f;\">2” GAS-F </span></p></div></div></td><td style=\"text-align: center; width: 6.81818%; height: 64px;\"><div><div><p><span style=\"color: rgb(0, 56, 79);\" data-mce-style=\"color: #00384f;\">20 </span></p></div></div></td><td style=\"text-align: center; width: 6.42292%; height: 64px;\"><div><div><p><span style=\"color: rgb(0, 56, 79);\" data-mce-style=\"color: #00384f;\">22 </span></p></div></div></td></tr><tr style=\"height: 69px;\" data-mce-style=\"height: 72px;\"><td style=\"text-align: center; background-color: rgb(0, 56, 79); width: 8.10277%; height: 69px;\"><div><div><p><span style=\"color: rgb(255, 255, 255);\" data-mce-style=\"color: #ffffff;\">GPS2-M </span></p></div></div></td><td style=\"text-align: center; width: 4.54545%; height: 69px;\"><div><div><p><span style=\"color: rgb(0, 56, 79);\" data-mce-style=\"color: #00384f;\">1 </span></p></div></div></td><td style=\"text-align: center; width: 4.94071%; height: 69px;\"><div><div><p><span style=\"color: rgb(0, 56, 79);\" data-mce-style=\"color: #00384f;\">2 </span></p></div></div></td><td style=\"text-align: center; width: 6.62055%; height: 69px;\"><div><div><p><span style=\"color: rgb(0, 56, 79);\" data-mce-style=\"color: #00384f;\">34 </span></p></div></div></td><td style=\"text-align: center; width: 5.92885%; height: 69px;\"><div><div><p><span style=\"color: rgb(0, 56, 79);\" data-mce-style=\"color: #00384f;\">970 </span></p></div></div></td><td style=\"text-align: center; width: 5.73123%; height: 69px;\"><div><div><p><span style=\"color: rgb(0, 56, 79);\" data-mce-style=\"color: #00384f;\">855 </span></p></div></div></td><td style=\"text-align: center; width: 5.63241%; height: 69px;\"><div><div><p><span style=\"color: rgb(0, 56, 79);\" data-mce-style=\"color: #00384f;\">155 </span></p></div></div></td><td style=\"text-align: center; width: 8.79447%; height: 69px;\"><div><div><p><span style=\"color: rgb(0, 56, 79);\" data-mce-style=\"color: #00384f;\">980 to 1350 </span></p></div></div></td><td style=\"text-align: center; width: 9.18972%; height: 69px;\"><div><div><p><span style=\"color: rgb(0, 56, 79);\" data-mce-style=\"color: #00384f;\">2” GAS-F </span></p></div></div></td><td style=\"text-align: center; width: 6.81818%; height: 69px;\"><div><div><p><span style=\"color: rgb(0, 56, 79);\" data-mce-style=\"color: #00384f;\">30 </span></p></div></div></td><td style=\"text-align: center; width: 6.42292%; height: 69px;\"><div><div><p><span style=\"color: rgb(0, 56, 79);\" data-mce-style=\"color: #00384f;\">34 </span></p></div></div></td></tr></tbody></table><p><br></p><div class=\"page\" title=\"Page 2\"><div class=\"section\"><div class=\"layoutArea\"><div class=\"column\"><p><span style=\"font-size: 12.000000pt; font-family: \'DINOT\'; color: rgb(0.000000%, 22.000000%, 31.000000%);\" data-mce-style=\"font-size: 12.000000pt; font-family: \'DINOT\'; color: rgb(0.000000%, 22.000000%, 31.000000%);\">* Material AISI 316 / L for all model - Material AISI 304 for GPS1 & GPS2</span></p></div></div></div></div></div>'),
(13, 7, 'en', 'title', 'tabela'),
(14, 7, 'en', 'text', ''),
(15, 8, 'en', 'title', 'tabela'),
(16, 8, 'en', 'text', ''),
(17, 9, 'en', 'title', 'Compatibility'),
(18, 9, 'en', 'text', '<table class=\"mainTable mce-item-table\" style=\"height: 232px; width: 100%; border-collapse: collapse;\" data-mce-style=\"height: 232px; width: 100%; border-collapse: collapse;\" cellspacing=\"10px\" cellpadding=\"30px\"><thead><tr style=\"border-style: solid; border-color: #ffffff; height: 29px;\" data-mce-style=\"border-style: solid; border-color: #ffffff; height: 29px;\"><td style=\"height: 29px; border: 3px solid rgb(255, 255, 255); background-color: rgb(255, 255, 255);\" data-mce-style=\"height: 29px; border: 3px solid #ffffff; background-color: #ffffff;\"><strong><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\">Solution</span></strong></td><td style=\"height: 29px; border: 3px solid rgb(255, 255, 255); background-color: rgb(255, 255, 255); text-align: center;\" data-mce-style=\"height: 29px; border: 3px solid #ffffff; background-color: #ffffff; text-align: center;\"><strong><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\">Polypropylene</span></strong></td><td style=\"height: 29px; border: 3px solid rgb(255, 255, 255); background-color: rgb(255, 255, 255); text-align: center;\" data-mce-style=\"height: 29px; border: 3px solid #ffffff; background-color: #ffffff; text-align: center;\"><strong><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\">Polyester</span></strong></td><td style=\"height: 29px; border: 3px solid rgb(255, 255, 255); background-color: rgb(255, 255, 255); text-align: center;\" data-mce-style=\"height: 29px; border: 3px solid #ffffff; background-color: #ffffff; text-align: center;\"><strong><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\">Nylon</span></strong></td></tr><tr style=\"border-style: solid; border-color: #ffffff; height: 29px;\" data-mce-style=\"border-style: solid; border-color: #ffffff; height: 29px;\"><td style=\"background-color: rgb(238, 238, 238); height: 29px; border: 3px solid rgb(255, 255, 255);\" data-mce-style=\"background-color: #eeeeee; height: 29px; border: 3px solid #ffffff;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\">Organic Solvents</span></td><td style=\"background-color: rgb(238, 238, 238); height: 29px; border: 3px solid rgb(255, 255, 255); text-align: center;\" data-mce-style=\"background-color: #eeeeee; height: 29px; border: 3px solid #ffffff; text-align: center;\"><span style=\"color: #003d50; font-family: arial, helvetica, sans-serif;\" data-mce-style=\"color: #003d50; font-family: arial, helvetica, sans-serif;\">✔︎ ✔︎ ✔︎ ✔︎</span></td><td style=\"background-color: rgb(238, 238, 238); height: 29px; border: 3px solid rgb(255, 255, 255); text-align: center;\" data-mce-style=\"background-color: #eeeeee; height: 29px; border: 3px solid #ffffff; text-align: center;\"><span style=\"color: #003d50; font-family: arial, helvetica, sans-serif;\" data-mce-style=\"color: #003d50; font-family: arial, helvetica, sans-serif;\">✔︎ ✔︎ ✔︎ ✔︎</span></td><td style=\"background-color: rgb(238, 238, 238); height: 29px; border: 3px solid rgb(255, 255, 255); text-align: center;\" data-mce-style=\"background-color: #eeeeee; height: 29px; border: 3px solid #ffffff; text-align: center;\"><span style=\"color: #003d50; font-family: arial, helvetica, sans-serif;\" data-mce-style=\"color: #003d50; font-family: arial, helvetica, sans-serif;\">✔︎ ✔︎ ✔︎ ✔︎</span></td></tr><tr style=\"border-style: solid; border-color: #ffffff; height: 29px;\" data-mce-style=\"border-style: solid; border-color: #ffffff; height: 29px;\"><td style=\"background-color: rgb(238, 238, 238); height: 29px; border: 3px solid rgb(255, 255, 255);\" data-mce-style=\"background-color: #eeeeee; height: 29px; border: 3px solid #ffffff;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\">Oils</span></td><td style=\"background-color: rgb(238, 238, 238); height: 29px; border: 3px solid rgb(255, 255, 255); text-align: center;\" data-mce-style=\"background-color: #eeeeee; height: 29px; border: 3px solid #ffffff; text-align: center;\"><span style=\"color: #003d50; font-family: arial, helvetica, sans-serif;\" data-mce-style=\"color: #003d50; font-family: arial, helvetica, sans-serif;\">✔︎ ✔︎ ✔︎ ✔︎</span></td><td style=\"background-color: rgb(238, 238, 238); height: 29px; border: 3px solid rgb(255, 255, 255); text-align: center;\" data-mce-style=\"background-color: #eeeeee; height: 29px; border: 3px solid #ffffff; text-align: center;\"><span style=\"color: #003d50; font-family: arial, helvetica, sans-serif;\" data-mce-style=\"color: #003d50; font-family: arial, helvetica, sans-serif;\">✔︎ ✔︎ ✔︎ ✔︎</span></td><td style=\"background-color: rgb(238, 238, 238); height: 29px; border: 3px solid rgb(255, 255, 255); text-align: center;\" data-mce-style=\"background-color: #eeeeee; height: 29px; border: 3px solid #ffffff; text-align: center;\"><span style=\"color: #003d50; font-family: arial, helvetica, sans-serif;\" data-mce-style=\"color: #003d50; font-family: arial, helvetica, sans-serif;\">✔︎ ✔︎ ✔︎ ✔︎</span></td></tr><tr style=\"border-style: solid; border-color: #ffffff; height: 29px;\" data-mce-style=\"border-style: solid; border-color: #ffffff; height: 29px;\"><td style=\"background-color: rgb(238, 238, 238); height: 29px; border: 3px solid rgb(255, 255, 255);\" data-mce-style=\"background-color: #eeeeee; height: 29px; border: 3px solid #ffffff;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\">Mirco-organisms</span></td><td style=\"background-color: rgb(238, 238, 238); height: 29px; border: 3px solid rgb(255, 255, 255); text-align: center;\" data-mce-style=\"background-color: #eeeeee; height: 29px; border: 3px solid #ffffff; text-align: center;\"><span style=\"color: #003d50; font-family: arial, helvetica, sans-serif;\" data-mce-style=\"color: #003d50; font-family: arial, helvetica, sans-serif;\">✔︎ ✔︎ ✔︎ ✔︎</span></td><td style=\"background-color: rgb(238, 238, 238); height: 29px; border: 3px solid rgb(255, 255, 255); text-align: center;\" data-mce-style=\"background-color: #eeeeee; height: 29px; border: 3px solid #ffffff; text-align: center;\"><span style=\"color: #003d50; font-family: arial, helvetica, sans-serif;\" data-mce-style=\"color: #003d50; font-family: arial, helvetica, sans-serif;\">✔︎ ✔︎ ✔︎ ✔︎</span></td><td style=\"background-color: rgb(238, 238, 238); height: 29px; border: 3px solid rgb(255, 255, 255); text-align: center;\" data-mce-style=\"background-color: #eeeeee; height: 29px; border: 3px solid #ffffff; text-align: center;\"><span style=\"color: #003d50; font-family: arial, helvetica, sans-serif;\" data-mce-style=\"color: #003d50; font-family: arial, helvetica, sans-serif;\">✔︎ ✔︎ ✔︎ ✔︎</span></td></tr><tr style=\"border-style: solid; border-color: #ffffff; height: 29px;\" data-mce-style=\"border-style: solid; border-color: #ffffff; height: 29px;\"><td style=\"background-color: rgb(238, 238, 238); height: 29px; border: 3px solid rgb(255, 255, 255);\" data-mce-style=\"background-color: #eeeeee; height: 29px; border: 3px solid #ffffff;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\">Alkalines</span></td><td style=\"background-color: rgb(238, 238, 238); height: 29px; border: 3px solid rgb(255, 255, 255); text-align: center;\" data-mce-style=\"background-color: #eeeeee; height: 29px; border: 3px solid #ffffff; text-align: center;\"><span style=\"color: #4ab7a9; font-family: arial, helvetica, sans-serif;\" data-mce-style=\"color: #4ab7a9; font-family: arial, helvetica, sans-serif;\">✔︎ ✔︎ ✔︎ </span></td><td style=\"background-color: rgb(238, 238, 238); height: 29px; border: 3px solid rgb(255, 255, 255); text-align: center;\" data-mce-style=\"background-color: #eeeeee; height: 29px; border: 3px solid #ffffff; text-align: center;\"><span style=\"color: #003d50; font-family: arial, helvetica, sans-serif;\" data-mce-style=\"color: #003d50; font-family: arial, helvetica, sans-serif;\">✔︎ ✔︎ ✔︎ ✔︎</span></td><td style=\"background-color: rgb(238, 238, 238); height: 29px; border: 3px solid rgb(255, 255, 255); text-align: center;\" data-mce-style=\"background-color: #eeeeee; height: 29px; border: 3px solid #ffffff; text-align: center;\"><span style=\"color: #4ab7a9; font-family: arial, helvetica, sans-serif;\" data-mce-style=\"color: #4ab7a9; font-family: arial, helvetica, sans-serif;\">✔︎ ✔︎ ✔︎ </span></td></tr><tr style=\"border-style: solid; border-color: #ffffff; height: 29px;\" data-mce-style=\"border-style: solid; border-color: #ffffff; height: 29px;\"><td style=\"background-color: rgb(238, 238, 238); height: 29px; border: 3px solid rgb(255, 255, 255);\" data-mce-style=\"background-color: #eeeeee; height: 29px; border: 3px solid #ffffff;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\">Organic Agents</span></td><td style=\"background-color: rgb(238, 238, 238); height: 29px; border: 3px solid rgb(255, 255, 255); text-align: center;\" data-mce-style=\"background-color: #eeeeee; height: 29px; border: 3px solid #ffffff; text-align: center;\"><span style=\"color: #4ab7a9; font-family: arial, helvetica, sans-serif;\" data-mce-style=\"color: #4ab7a9; font-family: arial, helvetica, sans-serif;\">✔︎ ✔︎ ✔︎ </span></td><td style=\"background-color: rgb(238, 238, 238); height: 29px; border: 3px solid rgb(255, 255, 255); text-align: center;\" data-mce-style=\"background-color: #eeeeee; height: 29px; border: 3px solid #ffffff; text-align: center;\"><span style=\"color: #4ab7a9; font-family: arial, helvetica, sans-serif;\" data-mce-style=\"color: #4ab7a9; font-family: arial, helvetica, sans-serif;\">✔︎</span></td><td style=\"background-color: rgb(238, 238, 238); height: 29px; border: 3px solid rgb(255, 255, 255); text-align: center;\" data-mce-style=\"background-color: #eeeeee; height: 29px; border: 3px solid #ffffff; text-align: center;\"><span style=\"color: #4ab7a9; font-family: arial, helvetica, sans-serif;\" data-mce-style=\"color: #4ab7a9; font-family: arial, helvetica, sans-serif;\">✔︎ ✔︎ </span></td></tr><tr style=\"border-style: solid; border-color: #ffffff; height: 29px;\" data-mce-style=\"border-style: solid; border-color: #ffffff; height: 29px;\"><td style=\"background-color: rgb(238, 238, 238); height: 29px; border: 3px solid rgb(255, 255, 255);\" data-mce-style=\"background-color: #eeeeee; height: 29px; border: 3px solid #ffffff;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\">Oxidising Agents</span></td><td style=\"background-color: rgb(238, 238, 238); height: 29px; border: 3px solid rgb(255, 255, 255); text-align: center;\" data-mce-style=\"background-color: #eeeeee; height: 29px; border: 3px solid #ffffff; text-align: center;\"><span style=\"color: #4ab7a9; font-family: arial, helvetica, sans-serif;\" data-mce-style=\"color: #4ab7a9; font-family: arial, helvetica, sans-serif;\">✔︎ ✔︎ ✔︎ </span></td><td style=\"background-color: rgb(238, 238, 238); height: 29px; border: 3px solid rgb(255, 255, 255); text-align: center;\" data-mce-style=\"background-color: #eeeeee; height: 29px; border: 3px solid #ffffff; text-align: center;\"><span style=\"color: #4ab7a9; font-family: arial, helvetica, sans-serif;\" data-mce-style=\"color: #4ab7a9; font-family: arial, helvetica, sans-serif;\">✔︎ ✔︎ ✔︎ </span></td><td style=\"background-color: rgb(238, 238, 238); height: 29px; border: 3px solid rgb(255, 255, 255); text-align: center;\" data-mce-style=\"background-color: #eeeeee; height: 29px; border: 3px solid #ffffff; text-align: center;\"><span style=\"color: #4ab7a9; font-family: arial, helvetica, sans-serif;\" data-mce-style=\"color: #4ab7a9; font-family: arial, helvetica, sans-serif;\">✔︎</span></td></tr><tr style=\"border-style: solid; border-color: #ffffff; height: 29px;\" data-mce-style=\"border-style: solid; border-color: #ffffff; height: 29px;\"><td style=\"background-color: rgb(238, 238, 238); height: 29px; border: 3px solid rgb(255, 255, 255);\" data-mce-style=\"background-color: #eeeeee; height: 29px; border: 3px solid #ffffff;\"><span style=\"color: #003d50;\" data-mce-style=\"color: #003d50;\">Mineral Acids</span></td><td style=\"background-color: rgb(238, 238, 238); height: 29px; border: 3px solid rgb(255, 255, 255); text-align: center;\" data-mce-style=\"background-color: #eeeeee; height: 29px; border: 3px solid #ffffff; text-align: center;\"><span style=\"color: #4ab7a9; font-family: arial, helvetica, sans-serif;\" data-mce-style=\"color: #4ab7a9; font-family: arial, helvetica, sans-serif;\">✔︎ ✔︎ ✔︎ </span></td><td style=\"background-color: rgb(238, 238, 238); height: 29px; border: 3px solid rgb(255, 255, 255); text-align: center;\" data-mce-style=\"background-color: #eeeeee; height: 29px; border: 3px solid #ffffff; text-align: center;\"><span style=\"color: #4ab7a9; font-family: arial, helvetica, sans-serif;\" data-mce-style=\"color: #4ab7a9; font-family: arial, helvetica, sans-serif;\">✔︎ ✔︎ ✔︎ </span></td><td style=\"background-color: rgb(238, 238, 238); height: 29px; border: 3px solid rgb(255, 255, 255); text-align: center;\" data-mce-style=\"background-color: #eeeeee; height: 29px; border: 3px solid #ffffff; text-align: center;\"><span style=\"color: #4ab7a9; font-family: arial, helvetica, sans-serif;\" data-mce-style=\"color: #4ab7a9; font-family: arial, helvetica, sans-serif;\">✔︎</span></td></tr></thead></table><p><br></p>'),
(19, 10, 'en', 'title', 'Tabella'),
(20, 10, 'en', 'text', '<p><br data-mce-bogus=\"1\"></p>'),
(21, 11, 'en', 'title', 'Technical Data'),
(22, 11, 'en', 'text', '<div title=\"Page 2\"><table style=\"height: 527px; width: 100%;\" data-mce-style=\"height: 527px; width: 100%;\" class=\"mce-item-table\"><colgroup><col><col><col> </colgroup><tbody><tr style=\"height: 113px;\" data-mce-style=\"height: 113px;\"><td style=\"height: 113px; width: 246.6px; text-align: center; vertical-align: middle; background-color: #ffffff;\" data-mce-style=\"height: 113px; width: 246.6px; text-align: center; vertical-align: middle; background-color: #ffffff;\"><div><div><p>Filtration Degree</p></div></div></td><td style=\"height: 113px; width: 493.2px; text-align: center; vertical-align: middle; background-color: #ffffff;\" colspan=\"2\" data-mce-style=\"height: 113px; width: 493.2px; text-align: center; vertical-align: middle; background-color: #ffffff;\"><div><p>Flow rate Based on water referring to cartridges lenght of 10”<br>on clean condition - LITRES / HOURS</p></div></td></tr><tr style=\"height: 46px;\" data-mce-style=\"height: 46px;\"><td style=\"height: 46px; width: 246.6px; text-align: center; vertical-align: middle; background-color: #eeeeee;\" data-mce-style=\"height: 46px; width: 246.6px; text-align: center; vertical-align: middle; background-color: #eeeeee;\"><br></td><td style=\"height: 46px; width: 246.6px; text-align: center; vertical-align: middle; background-color: #eeeeee;\" data-mce-style=\"height: 46px; width: 246.6px; text-align: center; vertical-align: middle; background-color: #eeeeee;\"><div><div><p>Smooth</p></div></div></td><td style=\"height: 46px; width: 246.6px; text-align: center; vertical-align: middle; background-color: #eeeeee;\" data-mce-style=\"height: 46px; width: 246.6px; text-align: center; vertical-align: middle; background-color: #eeeeee;\"><div><div><p>Pleated</p></div></div></td></tr><tr style=\"height: 46px;\" data-mce-style=\"height: 46px;\"><td style=\"height: 46px; width: 246.6px; text-align: center; vertical-align: middle; background-color: #eeeeee;\" data-mce-style=\"height: 46px; width: 246.6px; text-align: center; vertical-align: middle; background-color: #eeeeee;\"><div><div><p>10</p></div></div></td><td style=\"height: 46px; width: 246.6px; text-align: center; vertical-align: middle; background-color: #eeeeee;\" data-mce-style=\"height: 46px; width: 246.6px; text-align: center; vertical-align: middle; background-color: #eeeeee;\"><div><div><p>1500</p></div></div></td><td style=\"height: 46px; width: 246.6px; text-align: center; vertical-align: middle; background-color: #eeeeee;\" data-mce-style=\"height: 46px; width: 246.6px; text-align: center; vertical-align: middle; background-color: #eeeeee;\"><div><div><p>1800</p></div></div></td></tr><tr style=\"height: 46px;\" data-mce-style=\"height: 46px;\"><td style=\"height: 46px; width: 246.6px; text-align: center; vertical-align: middle; background-color: #eeeeee;\" data-mce-style=\"height: 46px; width: 246.6px; text-align: center; vertical-align: middle; background-color: #eeeeee;\"><div><div><p>25</p></div></div></td><td style=\"height: 46px; width: 246.6px; text-align: center; vertical-align: middle; background-color: #eeeeee;\" data-mce-style=\"height: 46px; width: 246.6px; text-align: center; vertical-align: middle; background-color: #eeeeee;\"><div><div><p>2000</p></div></div></td><td style=\"height: 46px; width: 246.6px; text-align: center; vertical-align: middle; background-color: #eeeeee;\" data-mce-style=\"height: 46px; width: 246.6px; text-align: center; vertical-align: middle; background-color: #eeeeee;\"><div><div><p>2500</p></div></div></td></tr><tr style=\"height: 46px;\" data-mce-style=\"height: 46px;\"><td style=\"height: 46px; width: 246.6px; text-align: center; vertical-align: middle; background-color: #eeeeee;\" data-mce-style=\"height: 46px; width: 246.6px; text-align: center; vertical-align: middle; background-color: #eeeeee;\"><div><div><p>40</p></div></div></td><td style=\"height: 46px; width: 246.6px; text-align: center; vertical-align: middle; background-color: #eeeeee;\" data-mce-style=\"height: 46px; width: 246.6px; text-align: center; vertical-align: middle; background-color: #eeeeee;\"><div><div><p>2500</p></div></div></td><td style=\"height: 46px; width: 246.6px; text-align: center; vertical-align: middle; background-color: #eeeeee;\" data-mce-style=\"height: 46px; width: 246.6px; text-align: center; vertical-align: middle; background-color: #eeeeee;\"><div><div><p>2500</p></div></div></td></tr><tr style=\"height: 46px;\" data-mce-style=\"height: 46px;\"><td style=\"height: 46px; width: 246.6px; text-align: center; vertical-align: middle; background-color: #eeeeee;\" data-mce-style=\"height: 46px; width: 246.6px; text-align: center; vertical-align: middle; background-color: #eeeeee;\"><div><div><p>75</p></div></div></td><td style=\"height: 46px; width: 246.6px; text-align: center; vertical-align: middle; background-color: #eeeeee;\" data-mce-style=\"height: 46px; width: 246.6px; text-align: center; vertical-align: middle; background-color: #eeeeee;\"><div><div><p>2500</p></div></div></td><td style=\"height: 46px; width: 246.6px; text-align: center; vertical-align: middle; background-color: #eeeeee;\" data-mce-style=\"height: 46px; width: 246.6px; text-align: center; vertical-align: middle; background-color: #eeeeee;\"><div><div><p>2500</p></div></div></td></tr><tr style=\"height: 46px;\" data-mce-style=\"height: 46px;\"><td style=\"height: 46px; width: 246.6px; text-align: center; vertical-align: middle; background-color: #eeeeee;\" data-mce-style=\"height: 46px; width: 246.6px; text-align: center; vertical-align: middle; background-color: #eeeeee;\"><div><div><p>150</p></div></div></td><td style=\"height: 46px; width: 246.6px; text-align: center; vertical-align: middle; background-color: #eeeeee;\" data-mce-style=\"height: 46px; width: 246.6px; text-align: center; vertical-align: middle; background-color: #eeeeee;\"><div><div><p>3000</p></div></div></td><td style=\"height: 46px; width: 246.6px; text-align: center; vertical-align: middle; background-color: #eeeeee;\" data-mce-style=\"height: 46px; width: 246.6px; text-align: center; vertical-align: middle; background-color: #eeeeee;\"><div><div><p>3000</p></div></div></td></tr><tr style=\"height: 46px;\" data-mce-style=\"height: 46px;\"><td style=\"height: 46px; width: 246.6px; text-align: center; vertical-align: middle; background-color: #eeeeee;\" data-mce-style=\"height: 46px; width: 246.6px; text-align: center; vertical-align: middle; background-color: #eeeeee;\"><div><div><p>250</p></div></div></td><td style=\"height: 46px; width: 246.6px; text-align: center; vertical-align: middle; background-color: #eeeeee;\" data-mce-style=\"height: 46px; width: 246.6px; text-align: center; vertical-align: middle; background-color: #eeeeee;\"><div><div><p>3000</p></div></div></td><td style=\"height: 46px; width: 246.6px; text-align: center; vertical-align: middle; background-color: #eeeeee;\" data-mce-style=\"height: 46px; width: 246.6px; text-align: center; vertical-align: middle; background-color: #eeeeee;\"><div><div><p>3500</p></div></div></td></tr><tr style=\"height: 46px;\" data-mce-style=\"height: 46px;\"><td style=\"height: 46px; width: 246.6px; text-align: center; vertical-align: middle; background-color: #eeeeee;\" data-mce-style=\"height: 46px; width: 246.6px; text-align: center; vertical-align: middle; background-color: #eeeeee;\"><div><div><p>500</p></div></div></td><td style=\"height: 46px; width: 246.6px; text-align: center; vertical-align: middle; background-color: #eeeeee;\" data-mce-style=\"height: 46px; width: 246.6px; text-align: center; vertical-align: middle; background-color: #eeeeee;\"><div><div><p>3000</p></div></div></td><td style=\"height: 46px; width: 246.6px; text-align: center; vertical-align: middle; background-color: #eeeeee;\" data-mce-style=\"height: 46px; width: 246.6px; text-align: center; vertical-align: middle; background-color: #eeeeee;\"><div><div><p>3500</p></div></div></td></tr><tr style=\"height: 46px;\" data-mce-style=\"height: 46px;\"><td style=\"height: 46px; width: 246.6px; text-align: center; vertical-align: middle; background-color: #eeeeee;\" data-mce-style=\"height: 46px; width: 246.6px; text-align: center; vertical-align: middle; background-color: #eeeeee;\"><div><div><p>1000</p></div></div></td><td style=\"height: 46px; width: 246.6px; text-align: center; vertical-align: middle; background-color: #eeeeee;\" data-mce-style=\"height: 46px; width: 246.6px; text-align: center; vertical-align: middle; background-color: #eeeeee;\"><div><div><p>3000</p></div></div></td><td style=\"height: 46px; width: 246.6px; text-align: center; vertical-align: middle; background-color: #eeeeee;\" data-mce-style=\"height: 46px; width: 246.6px; text-align: center; vertical-align: middle; background-color: #eeeeee;\"><div><div><p>3500</p></div></div></td></tr></tbody></table><p><br></p></div>'),
(23, 12, 'en', 'title', 'Tabella2'),
(24, 12, 'en', 'text', '<p><br data-mce-bogus=\"1\"></p>'),
(25, 13, 'en', 'title', 'Tabella'),
(26, 13, 'en', 'text', '<p><br data-mce-bogus=\"1\"></p>'),
(27, 14, 'en', 'title', 'Tabella'),
(28, 14, 'en', 'text', '<p><br data-mce-bogus=\"1\"></p>'),
(29, 15, 'en', 'title', 'Tabella2'),
(30, 15, 'en', 'text', '<p><br data-mce-bogus=\"1\"></p>'),
(31, 16, 'en', 'title', 'Tabella3'),
(32, 16, 'en', 'text', '<p><br data-mce-bogus=\"1\"></p>'),
(33, 17, 'en', 'title', 'Tabella4'),
(34, 17, 'en', 'text', '<p><br data-mce-bogus=\"1\"></p>'),
(35, 18, 'en', 'title', 'Tabella5'),
(36, 18, 'en', 'text', '<p><br data-mce-bogus=\"1\"></p>'),
(37, 19, 'en', 'title', 'Tabella6'),
(38, 19, 'en', 'text', '<p><br data-mce-bogus=\"1\"></p>'),
(39, 20, 'en', 'title', 'Tabella7'),
(40, 20, 'en', 'text', '<p><br data-mce-bogus=\"1\"></p>'),
(41, 21, 'en', 'title', 'Technical Data'),
(42, 21, 'en', 'text', '<p><br data-mce-bogus=\"1\"></p>'),
(43, 22, 'en', 'title', 'Tabella2'),
(44, 22, 'en', 'text', '<p><br data-mce-bogus=\"1\"></p>'),
(45, 23, 'en', 'title', 'Tabella'),
(46, 23, 'en', 'text', '<p><br data-mce-bogus=\"1\"></p>'),
(47, 24, 'en', 'title', 'Tabella2'),
(48, 24, 'en', 'text', '<p><br data-mce-bogus=\"1\"></p>'),
(49, 25, 'en', 'title', 'Tabella'),
(50, 25, 'en', 'text', '<p><br data-mce-bogus=\"1\"></p>'),
(51, 26, 'en', 'title', 'Tabella'),
(52, 26, 'en', 'text', '<p><br data-mce-bogus=\"1\"></p>'),
(53, 27, 'en', 'title', 'Tabella2'),
(54, 27, 'en', 'text', '<p><br data-mce-bogus=\"1\"></p>'),
(55, 28, 'en', 'title', 'Tabella'),
(56, 28, 'en', 'text', '<p><br data-mce-bogus=\"1\"></p>'),
(57, 29, 'en', 'title', 'Tabella'),
(58, 29, 'en', 'text', '<p><br data-mce-bogus=\"1\"></p>'),
(59, 30, 'en', 'title', 'Tabella'),
(60, 30, 'en', 'text', '<p><br data-mce-bogus=\"1\"></p>'),
(61, 31, 'en', 'title', 'Tabella2'),
(62, 31, 'en', 'text', '<p><br data-mce-bogus=\"1\"></p>');

-- --------------------------------------------------------

--
-- Struttura della tabella `text_pages`
--

CREATE TABLE `text_pages` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` longtext COLLATE utf8_unicode_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `text_pages`
--

INSERT INTO `text_pages` (`id`, `title`, `text`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(6, 'Text Page', '<p>Lorem ipsum dolor sit amet, eu eos justo dissentias, habeo ipsum qui no. Et duo virtute consectetuer concludaturque, vel ad aeterno tamquam perfecto. Ex ius facete impedit. Illum putent pri ex. Graeco facilis suscipit ne eum. Sea ad meliore eligendi salutatus, ea eos dolore qualisque ullamcorper.<br><br>Nec an assum discere gubergren, vix ad epicuri invenire, vix cu suas detraxit prodesset. Est et hinc dissentiunt complectitur, his populo voluptatibus at, illud utamur persecuti an nec. Nusquam reformidans ut vim, congue vulputate cu vel. Vis no saepe complectitur, vis cu solum discere minimum. Ex sed virtute legimus gubergren.<br><br>Ex vim vide assum commodo. Duo ex maiestatis definitionem, nec at legere fabulas labores, ne alienum officiis interpretaris sed. Qui ex nonumes fierent, mea graeco mollis ex. Persius incorrupte id mei, quas scaevola adipisci at mea. Ea pro postea regione postulant, ad nonumes molestie invidunt per.<br><br>Id duis vitae aliquam est, te vis populo utamur noluisse. Vim nihil iracundia cu, eu pri quas consul adipiscing. Omnis malorum consequuntur in vix, vis te discere docendi. Te pro aliquip facilisis abhorreant.<br><br>Te vim iriure aperiri percipit, id magna labores vis, an odio insolens vim. No dicit signiferumque mea. In eam ancillae probatus intellegam, te eos etiam sonet. Has at argumentum concludaturque, cum in sapientem intellegat. Est in porro harum, aperiam aliquid atomorum ius ut, alii feugait mel id. Eum suscipit detraxit argumentum ex, cibo nostrum electram qui ne. Ad vim fabellas sententiae suscipiantur, salutandi vituperata cotidieque usu et.<br><br>Ornatus vituperatoribus in sit, commodo omittantur sea no, ex duo graece mucius efficiantur. Sea ut soluta tractatos, ne melius reprimique pro. Cum eu quas luptatum. Vim in veri tempor, possim iuvaret imperdiet ex mea, cu mei mundi expetendis. Nec eros persequeris ne. Sed ut consul disputando contentiones, delenit maiestatis at mel. Et vel veniam concludaturque, copiosae euripidis interpretaris eam ea, idque blandit suavitate vel an.<br><br>Pro ex sumo melius disputando, eam adhuc solet debitis no, ea facer movet dicunt sed. Quo ut laudem impedit. Augue salutatus eu pri, vocent iriure consequuntur an usu. Pri an amet dolorem, ius te wisi nominati gubergren. Ius iudicabit evertitur ex, cu case suscipiantur per. Eu modo incorrupte quo, quod brute tempor eum in, no has elitr possim.<br><br>An unum rebum fuisset nec, viderer docendi persequeris id eos. Reque etiam malorum ea sea, vis sumo omnes ne. Ut nec justo voluptatum, in cum nostro iisque antiopam, id mea quod delicata. Dolores assueverit pro ne, porro oratio ea ius. Semper alterum bonorum no vix.<br><br>Te sit adhuc viris neglegentur, eos legere inermis argumentum ad. No pro dolorum graecis, an eripuit sententiae appellantur est. Has in prompta luptatum, mazim utinam suscipit vix an. Vix utamur fuisset ea.<br><br>Eos at vidit nihil nonumes, esse mediocrem ex qui, elit tibique appellantur ius an. Ei utinam definitionem mea. Ut epicurei vituperatoribus duo. Duo no partem semper instructior, dolore epicurei ei mea, ea mea minimum blandit. Et vim porro zril, tempor epicurei vim in.<br></p>', '2018-03-14 17:15:15', '2018-03-21 17:20:25', NULL),
(7, '', '<p>testo vuoto lalalalala</p>', '2018-03-26 17:09:08', '2018-03-26 17:09:08', NULL),
(8, 'Franco', '<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: 16.5pt; background: white; vertical-align: top;\"><span style=\"font-size: 12.0pt; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Helvetica; letter-spacing: .4pt; mso-fareast-language: IT; mso-bidi-font-weight: bold;\"><strong>CNA NeXT</strong> è il contenitore dei giovani imprenditori di CNA che mira a rendere evidenti le evoluzioni economiche e della società dal punto di vista delle micro e piccole imprese italiane. L’obiettivo di questa edizione, ospitata a Pistoia, capitale italiana della cultura 2017, è quello di riuscire a <strong>trasmettere</strong> il forte legame tra il tessuto economico produttivo legato al territorio, alle sue tradizioni, alla storia, con lo sviluppo socio-culturale delle comunità che lo vivono.</span></p>', '2018-04-12 13:51:33', '2018-04-12 13:51:33', NULL),
(9, 'Technical Data', '<p>Micron Ratings (): <strong>1, 5, 10, 20, 40, 70</strong></p>\r\n<p>Lengths (\"): <strong>20, 40, 60</strong></p>\r\n<p>Outer Diameter (\"): <strong>6</strong></p>\r\n<p>Glass Fiber Maximum Operating Temperature (°C): <strong>121</strong></p>\r\n<p>Polypropylene Maximum Operating Temperature (°C): <strong>82</strong></p>\r\n<p>Maximum Operating Pressure Differential (bar): <strong>3.4</strong></p>\r\n<p>Maximum Recommended Changeout</p>\r\n<p>Pressure Differential (bar) at Temperature (ºC): <strong>2.4 at 20</strong></p>', '2018-04-12 13:55:00', '2018-04-12 13:55:00', NULL),
(10, 'prova', '<p>spasfsfsdfsdfsdfsd</p>', '2018-04-16 10:23:16', '2018-04-16 10:23:16', '2018-04-16 10:23:48'),
(11, 'Product description', '<p style=\"background-color: #ffffff; color: #626262;\">The pleated GV-PP cartridge is one of the most efficient filtering elements available on the market. The GV-PP is a highly pleated multilayer pleated pleated cartridge, which provides an exceptional dimensional cut-off for targeted removal of solid particles.</p>\r\n<p style=\"background-color: #ffffff; color: #626262;\"> </p>\r\n<p style=\"background-color: #ffffff; color: #626262;\">Among its features are:</p>\r\n<ul style=\"background-color: #ffffff; color: #626262;\">\r\n<li>High filtering surface (0.6 m2 per 10 \"): Up to 50% more than the cartridges of other compa- rable sectors, the GV-PP offers higher flow rates and higher dirt build-up capacity.<br />–GV-PP adopts a technically advanced filter media that can effectively and consistently remove the desired granulometry, however allowing for crossing of smaller, non-damaging particles, thus maximizing filter life.</li>\r\n<li> </li>\r\n</ul>\r\n<p style=\"background-color: #ffffff; color: #626262;\">- All the GV-PP series cartridges are thermally welded instead of glued, thus avoiding the adhesive leaching in the filtered stream - To ensure protection And safety in transportation, storage and handling, each cartridge is packed individually.</p>', '2018-04-16 14:48:20', '2018-04-16 14:52:29', NULL),
(12, 'Technical Data', '<div title=\"Page 3\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>- Materials of construction: Polypropylene, Polyester, Nylon, * - Micron ratings: From 1 to 1000 micron, *<br />- Lengths: Available in 4 size and also custom size<br />- Max operating temperature Polypropylene 95°c</p>\r\n<p>- Max operating temperature Polyester 150°c<br />- Max operating temperature Nylon 160°c<br />- Each bag includes a handle for fast, easy and cleaner removal - Our bags can be used in the most common filter bag housing</p>\r\n<p>* Contact GV Filtri for more information about Materials and Dimensions avaibility</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2018-04-16 15:11:17', '2018-04-17 12:05:59', NULL),
(13, 'Material of contruction:', '<div title=\"Page 2\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>• AISI304/L • AISI321<br />• AISI430<br />• AISI904<br />• AISI316/L • MONEL<br />• INCONEL • INCOLOY<br />• DUPLEX<br />• HASTELLOY</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2018-04-16 15:15:34', '2018-04-16 15:15:34', NULL),
(14, 'Technical Data', '<div title=\"Page 3\">\r\n<div>\r\n<div>\r\n<div>\r\n<ul>\r\n<li>\r\n<p>‐  Construction materials: Carbon steel</p>\r\n<p>Stainless steel</p>\r\n<p>(other materials available as option)</p>\r\n</li>\r\n<li>\r\n<p>‐  Design according to:</p>\r\n<p>ASME Sect. VIII Div. 1<br />EN 13445<br />VSR<br />(other calculation code available as option)</p>\r\n</li>\r\n<li>\r\n<p>‐  Suitable for filtration of both liquids and gas Gr. 1 and 2</p>\r\n</li>\r\n<li>\r\n<p>‐  Conform to 97/23/CE PED Directive</p>\r\n</li>\r\n<li>\r\n<p>‐  Conform to 94/9/CE ATEX Directive</p>\r\n</li>\r\n<li>\r\n<p>‐  Available with U-Stamp certification</p>\r\n</li>\r\n<li>\r\n<p>‐  Top cover closure:<br />ANSI or EN flanges</p>\r\n<p>Swing bolts - eye bolts type<br />Swing bolts - Rathmann type<br />Quick opening closure yoke or band-lock type</p>\r\n</li>\r\n<li>\r\n<p>‐  Side by side in/out (other nozzles arrangement available as option)</p>\r\n</li>\r\n<li>\r\n<p>‐  In/out connections up to 24” (DN 600)</p>\r\n</li>\r\n<li>\r\n<p>‐  Flow-rate up to 2500 m3/h</p>\r\n</li>\r\n<li>\r\n<p>‐  Perforated plate with wire mesh or wedge-wire basket</p>\r\n</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2018-04-16 15:22:55', '2018-04-16 15:22:55', NULL),
(15, 'Technical Data', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>Micron Ratings (μ): 1, 5, 10, 20, 40, 70<br />Lengths (\"): 20, 40, 60<br />Outer Diameter (\"): 6<br />Glass Fiber Maximum Operating Temperature (°C): 121 Polypropylene Maximum Operating Temperature (°C): 82 Maximum Operating Pressure Differential (bar): 3.4 Maximum Recommended Changeout</p>\r\n<p>Pressure Differential (bar) at Temperature (oC): 2.4 at 20</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2018-04-16 15:28:49', '2018-04-17 00:22:12', NULL),
(16, 'Characteristics', '<div title=\"Page 2\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>Max Temperature: 80°c Recomendad Δp Change-out: 2bar</p>\r\n<p><strong>Recomended operating condition: </strong></p>\r\n<p>Recommended ΔP @ 20°C 4 bar</p>\r\n<p>Maximum ΔP @ 60°C 2 bar</p>\r\n<p>Maximum ΔP @ 80°C 1 bar</p>\r\n<p><strong>Dimensions: </strong></p>\r\n<p>Internal Ø: 28mm<br />External Ø: 63mm<br />Internal Ø with caps: 25mm</p>\r\n<p>External Ø with caps: 68mm</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2018-04-16 15:37:10', '2018-04-16 15:37:10', NULL),
(17, 'Key product Features', '<div class=\"page\" title=\"Page 1\">\r\n<div class=\"section\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<p><span style=\"font-size: 12.000000pt; font-family: \'DINOT\'; color: rgb(0.000000%, 22.000000%, 31.000000%);\">• Classified as a non-hazardous material • Incinerable (18600 KJ/Kg)<br />• Crushable and shreddable<br />• Certified Silicone-free </span></p>\r\n<p><span style=\"font-size: 12.000000pt; font-family: \'DINOT\'; color: rgb(0.000000%, 22.000000%, 31.000000%);\">• Unsuitable for oxidizing agents<br />• Not recommended for FDA applications<br />• 121° C<br />• Acrylic, Phenolic resin (certified silicone-free construction) </span></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2018-04-16 15:50:06', '2018-04-16 15:50:06', NULL),
(18, 'Recommended Operating Conditions:', '<div class=\"page\" title=\"Page 2\">\r\n<div class=\"section\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<p><span style=\"font-size: 12.000000pt; font-family: \'DINOT\'; color: rgb(0.000000%, 22.000000%, 31.000000%);\">• Maximum Flow Rate: 19 lpm per 10” increment<br />• Recommended maximum change out ∆P: 3.5 bar (where temperature allows) • Operational pH range: 5 - 9<br />• Maximum feed pressure: </span></p>\r\n</div>\r\n</div>\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<p><span style=\"font-size: 12.000000pt; font-family: \'DINOT\'; color: rgb(0.000000%, 22.000000%, 31.000000%);\">10 bar </span><span style=\"font-size: 12.000000pt; font-family: \'DevanagariSangamMN\'; color: rgb(0.000000%, 22.000000%, 31.000000%);\">@ </span><span style=\"font-size: 12.000000pt; font-family: \'DINOT\'; color: rgb(0.000000%, 22.000000%, 31.000000%);\">21° C </span></p>\r\n<p><span style=\"font-size: 12.000000pt; font-family: \'DINOT\'; color: rgb(0.000000%, 22.000000%, 31.000000%);\">8.6 bar </span><span style=\"font-size: 12.000000pt; font-family: \'DevanagariSangamMN\'; color: rgb(0.000000%, 22.000000%, 31.000000%);\">@ </span><span style=\"font-size: 12.000000pt; font-family: \'DINOT\'; color: rgb(0.000000%, 22.000000%, 31.000000%);\">28° C </span></p>\r\n<p><span style=\"font-size: 12.000000pt; font-family: \'DINOT\'; color: rgb(0.000000%, 22.000000%, 31.000000%);\">6.2 bar </span><span style=\"font-size: 12.000000pt; font-family: \'DevanagariSangamMN\'; color: rgb(0.000000%, 22.000000%, 31.000000%);\">@ </span><span style=\"font-size: 12.000000pt; font-family: \'DINOT\'; color: rgb(0.000000%, 22.000000%, 31.000000%);\">65° C </span></p>\r\n<p><span style=\"font-size: 12.000000pt; font-family: \'DINOT\'; color: rgb(0.000000%, 22.000000%, 31.000000%);\">4.5 bar </span><span style=\"font-size: 12.000000pt; font-family: \'DevanagariSangamMN\'; color: rgb(0.000000%, 22.000000%, 31.000000%);\">@ </span><span style=\"font-size: 12.000000pt; font-family: \'DINOT\'; color: rgb(0.000000%, 22.000000%, 31.000000%);\">82° C</span></p>\r\n<p><span style=\"font-size: 12.000000pt; font-family: \'DINOT\'; color: rgb(0.000000%, 22.000000%, 31.000000%);\">1.7 bar </span><span style=\"font-size: 12.000000pt; font-family: \'DevanagariSangamMN\'; color: rgb(0.000000%, 22.000000%, 31.000000%);\">@ </span><span style=\"font-size: 12.000000pt; font-family: \'DINOT\'; color: rgb(0.000000%, 22.000000%, 31.000000%);\">121° C </span></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2018-04-16 15:50:56', '2018-04-16 15:50:56', NULL),
(19, 'Technical Specification', '<div class=\"page\" title=\"Page 2\">\r\n<div class=\"section\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<p><span style=\"font-size: 12.000000pt; font-family: \'DINOT\'; color: rgb(0.000000%, 22.000000%, 31.000000%);\">• Sterilizing with autoclave at 130° C.<br />• Max operating temperature 80°C (continuous 65°). </span></p>\r\n<p><span style=\"font-size: 12.000000pt; font-family: \'DINOT\'; color: rgb(0.000000%, 22.000000%, 31.000000%);\">• Max pressure loss: 5 bar at 20°C.<br />• Materials used are suitable for food applications. </span></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2018-04-16 15:56:54', '2018-04-16 15:56:54', NULL),
(20, 'Description of operation', '<div class=\"page\" title=\"Page 2\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<p><span style=\"font-size: 12.000000pt; font-family: \'DINOT\'; color: rgb(0.000000%, 22.000000%, 31.000000%);\">The GV self-cleaning filter consist of the filter housing, the filter elements assembly group and of all the necessary fitting for its operation, including, in particular: differential pressure gauge with electrical contact, gear motor, control panel, motorized valves and internal mechanism. Operation:<br />The water enters through the nozzles N1, crosses the filter elements, with flow direction from inside to outside, and then exits the filter through the connection N2. The top of the filter, in which comes the filtered water, is hermetically separated from the lower chamber, from where the contaminated water enters into the filter candles. When the differential pressure gauge reach the predetermined maximum value of differential pressure it sends the enable signal to the control panel, which activates at the same time the geared motor and the opening of discharge motor- ized valve. The gear motor action the interior revolver which, by rotating, allows the placing in communication of a filter element at a time with the discharge line. In this situation (with the exhaust valve open) the filter element is subjected to a pressure backwash (due to the fact that the inner chamber is under pressure while the discharge is atmospheric) and the impurities that have been accumulated inside it are removed and discharged through N3 connection. The cleaning cycle takes about a minute, once finished, in the case in which the pressure differential results still above the maximum value a new cycle will be made automatically (and so on until reaching the starting value) otherwise it is interrupts. Through the control panel is also possible to provide periodic cleaning cycles independent of the differential pressure value. This process is provided in order to avoid an excessive accumulation of solids and therefore easier cleaning and longer service life. </span></p>\r\n<p><span style=\"font-size: 12.000000pt; font-family: \'DINOT\'; color: rgb(0.000000%, 22.000000%, 31.000000%);\">Standard flow rate available from 50 to 12000 m3/h. Standard filtration degree from 10 to 1.000 microns.<br />More and / or different operating conditions can be evaluated from time to time and / or through installation of units in parallel. The self-cleaning filters can be manufactured of carbon steel, internally rubber lined, stainless steel, duplex. </span></p>\r\n</div>\r\n</div>\r\n</div>', '2018-04-16 16:02:30', '2018-04-16 16:02:30', NULL),
(21, '', '<p> </p>\r\n<div class=\"page\" title=\"Page 2\">\r\n<div class=\"section\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<p><span style=\"font-size: 12.000000pt; font-family: \'DINOT\'; color: rgb(0.000000%, 22.000000%, 31.000000%);\">* Contact </span><span style=\"font-size: 12.000000pt; font-family: \'DINOT\'; font-weight: 800; color: rgb(0.000000%, 22.000000%, 31.000000%);\">GV Filtri </span><span style=\"font-size: 12.000000pt; font-family: \'DINOT\'; color: rgb(0.000000%, 22.000000%, 31.000000%);\">for more information about Materials, End caps and Dimensions avaibility </span></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2018-04-16 16:04:16', '2018-04-16 16:04:16', '2018-04-16 16:14:19'),
(22, 'Technical Data', '<div title=\"Page 3\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>• 100% AISI 316 construction<br />• Head and V-Clamp manufactured with lost wax micro-casting<br />• Conform to 97/23/CE PED Directive<br />• Conform to 94/9/CE ATEX Directive<br />• Two head/bowl closure system available: SCR: V-Clamp / SCD: DIN 11851 locknut • SCR type suitable for liquid Gr. 1 and 2<br />• SCD type suitable for liquid or gas Gr. 1 and 2<br />• In line in/out connections for easy installation<br />• Suitable for operating pressure up to 25 bar<br />• Suitable for cartridges from 6” to 40”<br />• Suitable for cartridges DOE, M3, M8, M7<br />• Installation of DOE cartridge independent from bowl<br />• O-ring head/bowl seal<br />• Designed to allow visual checking of the installed cartridge prior to bowl closure</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2018-04-16 16:29:45', '2018-04-16 16:29:45', NULL),
(23, 'Features', '<div title=\"Page 2\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>• GVTH strainer have been designed to satisfy the most common industrial standard, and are manufactured using only high quality raw material • The Filtering elements is built using a support drilled plate, with holes 3” and thickness 1-2 mm, and a filtering wire mesh having a filtration degree of 40 mesh (other filtration degree available on request).<br />• Dimensions of core and ring are chosen to meet the dimensions on standards ASME / ANSI B16.5 flanges.</p>\r\n<p>• GVTH filter have been designed on the basis of our 30 years experience and using our internal issued software. On request GV can design temporary strainer for any customer special application.<br />• All AISI 304 construction is our standard. Construction in other materials is available on request (i.e AISI 316, Monel, Hastelloy, Duplex S.S., Superduplex, carbon steel, etc...).<br />• Standard size. From ND 3/4” up to ND 24”. Other size available on request.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2018-04-16 16:33:17', '2018-04-16 16:33:17', NULL),
(24, 'Notes', '<div title=\"Page 3\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>• Internal diameter ID is verified for piping having a maximum thickness of schedule 80. • Dimensions are approximate.<br />• Face finish 250 AARH.<br />• Standard flow direction is from outside to inside; opposite direction to be requested. • Strainer must be installed as closed as possible to the component to be protected.</p>\r\n<p>• Additional filtration layers (all filtration degree could be considered).<br />• Special flange dimensions, finishing and shapes.<br />• Customized sizing for high flow rate, viscosity or special applications. Please contact our technical department for a customized sizing.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2018-04-16 16:34:30', '2018-04-16 16:34:30', NULL),
(25, 'Technical info', '<div class=\"page\" title=\"Page 1\">\r\n<div class=\"section\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<p><span style=\"font-size: 12.000000pt; font-family: \'DINOT\'; font-weight: bold; color: rgb(0.000000%, 22.000000%, 31.000000%);\">POLYPROPYLENE CORE AND MEDIA CARTRIDGE: </span></p>\r\n<p><span style=\"font-size: 12.000000pt; font-family: \'DINOT\'; color: rgb(0.000000%, 22.000000%, 31.000000%);\">Max Temperature : 60C° - Max Differential pressure: 1.4bar </span></p>\r\n<p><span style=\"font-size: 12.000000pt; font-family: \'DINOT\'; font-weight: bold; color: rgb(0.000000%, 22.000000%, 31.000000%);\">STAINLESS STEEL CORE AND GLASS FIBER MEDIA CARTRIDGE: </span></p>\r\n<p><span style=\"font-size: 12.000000pt; font-family: \'DINOT\'; color: rgb(0.000000%, 22.000000%, 31.000000%);\">Max Temperature : 400C° - Max Differential pressure: 1.4bar </span></p>\r\n<p><span style=\"font-size: 12.000000pt; font-family: \'DINOT\'; font-weight: bold; color: rgb(0.000000%, 22.000000%, 31.000000%);\">STAINLESS STEEL CORE AND COTTON MEDIA CARTRIDGE: </span></p>\r\n<p><span style=\"font-size: 12.000000pt; font-family: \'DINOT\'; color: rgb(0.000000%, 22.000000%, 31.000000%);\">Max Temperature : 120C° - Max Differential pressure: 1.4bar </span></p>\r\n<p><span style=\"font-size: 12.000000pt; font-family: \'DINOT\'; font-weight: bold; color: rgb(0.000000%, 22.000000%, 31.000000%);\">POLYPROPYLENE CORE AND COTTON MEDIA CARTRIDGE: </span></p>\r\n<p><span style=\"font-size: 12.000000pt; font-family: \'DINOT\'; color: rgb(0.000000%, 22.000000%, 31.000000%);\">Max Temperature : 65C° - Max Differential pressure: 1.4bar </span></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2018-04-16 16:36:18', '2018-04-16 16:36:18', NULL),
(26, 'Installation', '<div class=\"page\" title=\"Page 2\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<p><span style=\"font-size: 12.000000pt; font-family: \'DINOT\'; color: rgb(0.000000%, 22.000000%, 31.000000%);\">• Strainers should be installed as close as possible to the machinery or valve to be protected. The arrow cast on the strainer body must point to the direction of the flow.<br />• For installation on horizontal or inclined pipelines, the scren housing must be below the pipeline.<br />• Never install a “Y” type strainer on vertical pipelines with flow directed upwards. Refer to the figures below. </span></p>\r\n</div>\r\n</div>\r\n</div>', '2018-04-16 16:39:17', '2018-04-16 16:39:17', NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `text_page_translations`
--

CREATE TABLE `text_page_translations` (
  `id` int(11) NOT NULL,
  `object_id` int(11) DEFAULT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `text_page_translations`
--

INSERT INTO `text_page_translations` (`id`, `object_id`, `locale`, `field`, `content`) VALUES
(11, 6, 'en', 'title', 'Text Page'),
(12, 6, 'en', 'text', '<p>saio</p>\r\n<p>Lorem ipsum dolor sit amet, eu eos justo dissentias, habeo ipsum qui no. Et duo virtute consectetuer concludaturque, vel ad aeterno tamquam perfecto. Ex ius facete impedit. Illum putent pri ex. Graeco facilis suscipit ne eum. Sea ad meliore eligendi salutatus, ea eos dolore qualisque ullamcorper.<br /><br />Nec an assum discere gubergren, vix ad epicuri invenire, vix cu suas detraxit prodesset. Est et hinc dissentiunt complectitur, his populo voluptatibus at, illud utamur persecuti an nec. Nusquam reformidans ut vim, congue vulputate cu vel. Vis no saepe complectitur, vis cu solum discere minimum. Ex sed virtute legimus gubergren.<br /><br />Ex vim vide assum commodo. Duo ex maiestatis definitionem, nec at legere fabulas labores, ne alienum officiis interpretaris sed. Qui ex nonumes fierent, mea graeco mollis ex. Persius incorrupte id mei, quas scaevola adipisci at mea. Ea pro postea regione postulant, ad nonumes molestie invidunt per.<br /><br />Id duis vitae aliquam est, te vis populo utamur noluisse. Vim nihil iracundia cu, eu pri quas consul adipiscing. Omnis malorum consequuntur in vix, vis te discere docendi. Te pro aliquip facilisis abhorreant.<br /><br />Te vim iriure aperiri percipit, id magna labores vis, an odio insolens vim. No dicit signiferumque mea. In eam ancillae probatus intellegam, te eos etiam sonet. Has at argumentum concludaturque, cum in sapientem intellegat. Est in porro harum, aperiam aliquid atomorum ius ut, alii feugait mel id. Eum suscipit detraxit argumentum ex, cibo nostrum electram qui ne. Ad vim fabellas sententiae suscipiantur, salutandi vituperata cotidieque usu et.<br /><br />Ornatus vituperatoribus in sit, commodo omittantur sea no, ex duo graece mucius efficiantur. Sea ut soluta tractatos, ne melius reprimique pro. Cum eu quas luptatum. Vim in veri tempor, possim iuvaret imperdiet ex mea, cu mei mundi expetendis. Nec eros persequeris ne. Sed ut consul disputando contentiones, delenit maiestatis at mel. Et vel veniam concludaturque, copiosae euripidis interpretaris eam ea, idque blandit suavitate vel an.<br /><br />Pro ex sumo melius disputando, eam adhuc solet debitis no, ea facer movet dicunt sed. Quo ut laudem impedit. Augue salutatus eu pri, vocent iriure consequuntur an usu. Pri an amet dolorem, ius te wisi nominati gubergren. Ius iudicabit evertitur ex, cu case suscipiantur per. Eu modo incorrupte quo, quod brute tempor eum in, no has elitr possim.<br /><br />An unum rebum fuisset nec, viderer docendi persequeris id eos. Reque etiam malorum ea sea, vis sumo omnes ne. Ut nec justo voluptatum, in cum nostro iisque antiopam, id mea quod delicata. Dolores assueverit pro ne, porro oratio ea ius. Semper alterum bonorum no vix.<br /><br />Te sit adhuc viris neglegentur, eos legere inermis argumentum ad. No pro dolorum graecis, an eripuit sententiae appellantur est. Has in prompta luptatum, mazim utinam suscipit vix an. Vix utamur fuisset ea.<br /><br />Eos at vidit nihil nonumes, esse mediocrem ex qui, elit tibique appellantur ius an. Ei utinam definitionem mea. Ut epicurei vituperatoribus duo. Duo no partem semper instructior, dolore epicurei ei mea, ea mea minimum blandit. Et vim porro zril, tempor epicurei vim in.</p>'),
(13, 7, 'en', 'title', ''),
(14, 7, 'en', 'text', '<p>testo vuoto lalalalala</p>'),
(15, 8, 'en', 'title', 'Franco'),
(16, 8, 'en', 'text', '<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: 16.5pt; background: white; vertical-align: top;\"><span style=\"font-size: 12.0pt; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Helvetica; letter-spacing: .4pt; mso-fareast-language: IT; mso-bidi-font-weight: bold;\"><strong>CNA NeXT</strong> è il contenitore dei giovani imprenditori di CNA che mira a rendere evidenti le evoluzioni economiche e della società dal punto di vista delle micro e piccole imprese italiane. L’obiettivo di questa edizione, ospitata a Pistoia, capitale italiana della cultura 2017, è quello di riuscire a <strong>trasmettere</strong> il forte legame tra il tessuto economico produttivo legato al territorio, alle sue tradizioni, alla storia, con lo sviluppo socio-culturale delle comunità che lo vivono.</span></p>'),
(17, 9, 'en', 'title', 'Technical Data'),
(18, 9, 'en', 'text', '<p>Micron Ratings (): <strong>1, 5, 10, 20, 40, 70</strong></p>\r\n<p>Lengths (\"): <strong>20, 40, 60</strong></p>\r\n<p>Outer Diameter (\"): <strong>6</strong></p>\r\n<p>Glass Fiber Maximum Operating Temperature (°C): <strong>121</strong></p>\r\n<p>Polypropylene Maximum Operating Temperature (°C): <strong>82</strong></p>\r\n<p>Maximum Operating Pressure Differential (bar): <strong>3.4</strong></p>\r\n<p>Maximum Recommended Changeout</p>\r\n<p>Pressure Differential (bar) at Temperature (ºC): <strong>2.4 at 20</strong></p>'),
(19, 10, 'en', 'title', 'prova'),
(20, 10, 'en', 'text', '<p>spasfsfsdfsdfsdfsd</p>'),
(21, 11, 'en', 'title', 'Product description'),
(22, 11, 'en', 'text', '<p style=\"background-color: #ffffff; color: #626262;\">The pleated GV-PP cartridge is one of the most efficient filtering elements available on the market. The GV-PP is a highly pleated multilayer pleated pleated cartridge, which provides an exceptional dimensional cut-off for targeted removal of solid particles.</p>\r\n<p style=\"background-color: #ffffff; color: #626262;\"> </p>\r\n<p style=\"background-color: #ffffff; color: #626262;\">Among its features are:</p>\r\n<ul style=\"background-color: #ffffff; color: #626262;\">\r\n<li>High filtering surface (0.6 m2 per 10 \"): Up to 50% more than the cartridges of other compa- rable sectors, the GV-PP offers higher flow rates and higher dirt build-up capacity.<br />–GV-PP adopts a technically advanced filter media that can effectively and consistently remove the desired granulometry, however allowing for crossing of smaller, non-damaging particles, thus maximizing filter life.</li>\r\n<li>All the GV-PP series cartridges are thermally welded instead of glued, thus avoiding the adhesive leaching in the filtered stream - To ensure protection And safety in transportation, storage and handling, each cartridge is packed individually.</li>\r\n</ul>'),
(23, 12, 'en', 'title', 'Technical Data'),
(24, 12, 'en', 'text', '<div title=\"Page 3\">\r\n<div>\r\n<div>\r\n<div>- Materials of construction: Polypropylene, Polyester, Nylon, * <br />- Micron ratings: From 1 to 1000 micron, *<br />- Lengths: Available in 4 size and also custom size<br />- Max operating temperature Polypropylene 95°cMax operating temperature Polyester 150°c<br />- Max operating temperature Nylon 160°c<br />- Each bag includes a handle for fast, easy and cleaner removal <br />- Our bags can be used in the most common filter bag housing<br /><br /><span style=\"color: #ccffcc;\">* Contact GV Filtri for more information about Materials and Dimensions avaibility</span></div>\r\n</div>\r\n</div>\r\n</div>'),
(25, 13, 'en', 'title', 'Material of contruction:'),
(26, 13, 'en', 'text', '<div title=\"Page 2\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>• AISI304/L • AISI321<br />• AISI430<br />• AISI904<br />• AISI316/L • MONEL<br />• INCONEL • INCOLOY<br />• DUPLEX<br />• HASTELLOY</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(27, 14, 'en', 'title', 'Technical Data'),
(28, 14, 'en', 'text', '<div title=\"Page 3\">\r\n<div>\r\n<div>\r\n<div>\r\n<ul>\r\n<li>\r\n<p>‐  Construction materials: Carbon steel</p>\r\n<p>Stainless steel</p>\r\n<p>(other materials available as option)</p>\r\n</li>\r\n<li>\r\n<p>‐  Design according to:</p>\r\n<p>ASME Sect. VIII Div. 1<br />EN 13445<br />VSR<br />(other calculation code available as option)</p>\r\n</li>\r\n<li>\r\n<p>‐  Suitable for filtration of both liquids and gas Gr. 1 and 2</p>\r\n</li>\r\n<li>\r\n<p>‐  Conform to 97/23/CE PED Directive</p>\r\n</li>\r\n<li>\r\n<p>‐  Conform to 94/9/CE ATEX Directive</p>\r\n</li>\r\n<li>\r\n<p>‐  Available with U-Stamp certification</p>\r\n</li>\r\n<li>\r\n<p>‐  Top cover closure:<br />ANSI or EN flanges</p>\r\n<p>Swing bolts - eye bolts type<br />Swing bolts - Rathmann type<br />Quick opening closure yoke or band-lock type</p>\r\n</li>\r\n<li>\r\n<p>‐  Side by side in/out (other nozzles arrangement available as option)</p>\r\n</li>\r\n<li>\r\n<p>‐  In/out connections up to 24” (DN 600)</p>\r\n</li>\r\n<li>\r\n<p>‐  Flow-rate up to 2500 m3/h</p>\r\n</li>\r\n<li>\r\n<p>‐  Perforated plate with wire mesh or wedge-wire basket</p>\r\n</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(29, 15, 'en', 'title', 'Technical Data'),
(30, 15, 'en', 'text', '<div>\r\n<p>Micron Ratings (μ): 1, 5, 10, 20, 40, 70</p>\r\n<p>Lengths (\"): 20, 40, 60</p>\r\n<p>Outer Diameter (\"): 6</p>\r\n<p>Glass Fiber Maximum Operating Temperature (°C): 121</p>\r\n<p>Polypropylene Maximum Operating Temperature (°C): 82</p>\r\n<p>Maximum Operating Pressure Differential (bar): 3.4</p>\r\n<p>Maximum Recommended Changeout</p>\r\n<p>Pressure Differential (bar) at Temperature (oC): 2.4 at 20</p>\r\n</div>'),
(31, 16, 'en', 'title', 'Characteristics'),
(32, 16, 'en', 'text', '<div title=\"Page 2\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>Max Temperature: 80°c Recomendad Δp Change-out: 2bar</p>\r\n<p><strong>Recomended operating condition: </strong></p>\r\n<p>Recommended ΔP @ 20°C 4 bar</p>\r\n<p>Maximum ΔP @ 60°C 2 bar</p>\r\n<p>Maximum ΔP @ 80°C 1 bar</p>\r\n<p><strong>Dimensions: </strong></p>\r\n<p>Internal Ø: 28mm<br />External Ø: 63mm<br />Internal Ø with caps: 25mm</p>\r\n<p>External Ø with caps: 68mm</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(33, 17, 'en', 'title', 'Key product Features'),
(34, 17, 'en', 'text', '<div class=\"page\" title=\"Page 1\">\r\n<div class=\"section\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<p><span style=\"font-size: 12.000000pt; font-family: \'DINOT\'; color: rgb(0.000000%, 22.000000%, 31.000000%);\">• Classified as a non-hazardous material • Incinerable (18600 KJ/Kg)<br />• Crushable and shreddable<br />• Certified Silicone-free </span></p>\r\n<p><span style=\"font-size: 12.000000pt; font-family: \'DINOT\'; color: rgb(0.000000%, 22.000000%, 31.000000%);\">• Unsuitable for oxidizing agents<br />• Not recommended for FDA applications<br />• 121° C<br />• Acrylic, Phenolic resin (certified silicone-free construction) </span></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(35, 18, 'en', 'title', 'Recommended Operating Conditions:'),
(36, 18, 'en', 'text', '<div class=\"page\" title=\"Page 2\">\r\n<div class=\"section\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<p><span style=\"font-size: 12.000000pt; font-family: \'DINOT\'; color: rgb(0.000000%, 22.000000%, 31.000000%);\">• Maximum Flow Rate: 19 lpm per 10” increment<br />• Recommended maximum change out ∆P: 3.5 bar (where temperature allows) • Operational pH range: 5 - 9<br />• Maximum feed pressure: </span></p>\r\n</div>\r\n</div>\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<p><span style=\"font-size: 12.000000pt; font-family: \'DINOT\'; color: rgb(0.000000%, 22.000000%, 31.000000%);\">10 bar </span><span style=\"font-size: 12.000000pt; font-family: \'DevanagariSangamMN\'; color: rgb(0.000000%, 22.000000%, 31.000000%);\">@ </span><span style=\"font-size: 12.000000pt; font-family: \'DINOT\'; color: rgb(0.000000%, 22.000000%, 31.000000%);\">21° C </span></p>\r\n<p><span style=\"font-size: 12.000000pt; font-family: \'DINOT\'; color: rgb(0.000000%, 22.000000%, 31.000000%);\">8.6 bar </span><span style=\"font-size: 12.000000pt; font-family: \'DevanagariSangamMN\'; color: rgb(0.000000%, 22.000000%, 31.000000%);\">@ </span><span style=\"font-size: 12.000000pt; font-family: \'DINOT\'; color: rgb(0.000000%, 22.000000%, 31.000000%);\">28° C </span></p>\r\n<p><span style=\"font-size: 12.000000pt; font-family: \'DINOT\'; color: rgb(0.000000%, 22.000000%, 31.000000%);\">6.2 bar </span><span style=\"font-size: 12.000000pt; font-family: \'DevanagariSangamMN\'; color: rgb(0.000000%, 22.000000%, 31.000000%);\">@ </span><span style=\"font-size: 12.000000pt; font-family: \'DINOT\'; color: rgb(0.000000%, 22.000000%, 31.000000%);\">65° C </span></p>\r\n<p><span style=\"font-size: 12.000000pt; font-family: \'DINOT\'; color: rgb(0.000000%, 22.000000%, 31.000000%);\">4.5 bar </span><span style=\"font-size: 12.000000pt; font-family: \'DevanagariSangamMN\'; color: rgb(0.000000%, 22.000000%, 31.000000%);\">@ </span><span style=\"font-size: 12.000000pt; font-family: \'DINOT\'; color: rgb(0.000000%, 22.000000%, 31.000000%);\">82° C</span></p>\r\n<p><span style=\"font-size: 12.000000pt; font-family: \'DINOT\'; color: rgb(0.000000%, 22.000000%, 31.000000%);\">1.7 bar </span><span style=\"font-size: 12.000000pt; font-family: \'DevanagariSangamMN\'; color: rgb(0.000000%, 22.000000%, 31.000000%);\">@ </span><span style=\"font-size: 12.000000pt; font-family: \'DINOT\'; color: rgb(0.000000%, 22.000000%, 31.000000%);\">121° C </span></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(37, 19, 'en', 'title', 'Technical Specification'),
(38, 19, 'en', 'text', '<div class=\"page\" title=\"Page 2\">\r\n<div class=\"section\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<p><span style=\"font-size: 12.000000pt; font-family: \'DINOT\'; color: rgb(0.000000%, 22.000000%, 31.000000%);\">• Sterilizing with autoclave at 130° C.<br />• Max operating temperature 80°C (continuous 65°). </span></p>\r\n<p><span style=\"font-size: 12.000000pt; font-family: \'DINOT\'; color: rgb(0.000000%, 22.000000%, 31.000000%);\">• Max pressure loss: 5 bar at 20°C.<br />• Materials used are suitable for food applications. </span></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(39, 20, 'en', 'title', 'Description of operation'),
(40, 20, 'en', 'text', '<div class=\"page\" title=\"Page 2\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<p><span style=\"font-size: 12.000000pt; font-family: \'DINOT\'; color: rgb(0.000000%, 22.000000%, 31.000000%);\">The GV self-cleaning filter consist of the filter housing, the filter elements assembly group and of all the necessary fitting for its operation, including, in particular: differential pressure gauge with electrical contact, gear motor, control panel, motorized valves and internal mechanism. Operation:<br />The water enters through the nozzles N1, crosses the filter elements, with flow direction from inside to outside, and then exits the filter through the connection N2. The top of the filter, in which comes the filtered water, is hermetically separated from the lower chamber, from where the contaminated water enters into the filter candles. When the differential pressure gauge reach the predetermined maximum value of differential pressure it sends the enable signal to the control panel, which activates at the same time the geared motor and the opening of discharge motor- ized valve. The gear motor action the interior revolver which, by rotating, allows the placing in communication of a filter element at a time with the discharge line. In this situation (with the exhaust valve open) the filter element is subjected to a pressure backwash (due to the fact that the inner chamber is under pressure while the discharge is atmospheric) and the impurities that have been accumulated inside it are removed and discharged through N3 connection. The cleaning cycle takes about a minute, once finished, in the case in which the pressure differential results still above the maximum value a new cycle will be made automatically (and so on until reaching the starting value) otherwise it is interrupts. Through the control panel is also possible to provide periodic cleaning cycles independent of the differential pressure value. This process is provided in order to avoid an excessive accumulation of solids and therefore easier cleaning and longer service life. </span></p>\r\n<p><span style=\"font-size: 12.000000pt; font-family: \'DINOT\'; color: rgb(0.000000%, 22.000000%, 31.000000%);\">Standard flow rate available from 50 to 12000 m3/h. Standard filtration degree from 10 to 1.000 microns.<br />More and / or different operating conditions can be evaluated from time to time and / or through installation of units in parallel. The self-cleaning filters can be manufactured of carbon steel, internally rubber lined, stainless steel, duplex. </span></p>\r\n</div>\r\n</div>\r\n</div>'),
(41, 21, 'en', 'title', ''),
(42, 21, 'en', 'text', '<p> </p>\r\n<div class=\"page\" title=\"Page 2\">\r\n<div class=\"section\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<p><span style=\"font-size: 12.000000pt; font-family: \'DINOT\'; color: rgb(0.000000%, 22.000000%, 31.000000%);\">* Contact </span><span style=\"font-size: 12.000000pt; font-family: \'DINOT\'; font-weight: 800; color: rgb(0.000000%, 22.000000%, 31.000000%);\">GV Filtri </span><span style=\"font-size: 12.000000pt; font-family: \'DINOT\'; color: rgb(0.000000%, 22.000000%, 31.000000%);\">for more information about Materials, End caps and Dimensions avaibility </span></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(43, 22, 'en', 'title', 'Technical Data'),
(44, 22, 'en', 'text', '<div title=\"Page 3\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>• 100% AISI 316 construction<br />• Head and V-Clamp manufactured with lost wax micro-casting<br />• Conform to 97/23/CE PED Directive<br />• Conform to 94/9/CE ATEX Directive<br />• Two head/bowl closure system available: SCR: V-Clamp / SCD: DIN 11851 locknut • SCR type suitable for liquid Gr. 1 and 2<br />• SCD type suitable for liquid or gas Gr. 1 and 2<br />• In line in/out connections for easy installation<br />• Suitable for operating pressure up to 25 bar<br />• Suitable for cartridges from 6” to 40”<br />• Suitable for cartridges DOE, M3, M8, M7<br />• Installation of DOE cartridge independent from bowl<br />• O-ring head/bowl seal<br />• Designed to allow visual checking of the installed cartridge prior to bowl closure</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(45, 23, 'en', 'title', 'Features'),
(46, 23, 'en', 'text', '<div title=\"Page 2\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>• GVTH strainer have been designed to satisfy the most common industrial standard, and are manufactured using only high quality raw material • The Filtering elements is built using a support drilled plate, with holes 3” and thickness 1-2 mm, and a filtering wire mesh having a filtration degree of 40 mesh (other filtration degree available on request).<br />• Dimensions of core and ring are chosen to meet the dimensions on standards ASME / ANSI B16.5 flanges.</p>\r\n<p>• GVTH filter have been designed on the basis of our 30 years experience and using our internal issued software. On request GV can design temporary strainer for any customer special application.<br />• All AISI 304 construction is our standard. Construction in other materials is available on request (i.e AISI 316, Monel, Hastelloy, Duplex S.S., Superduplex, carbon steel, etc...).<br />• Standard size. From ND 3/4” up to ND 24”. Other size available on request.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(47, 24, 'en', 'title', 'Notes'),
(48, 24, 'en', 'text', '<div title=\"Page 3\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>• Internal diameter ID is verified for piping having a maximum thickness of schedule 80. • Dimensions are approximate.<br />• Face finish 250 AARH.<br />• Standard flow direction is from outside to inside; opposite direction to be requested. • Strainer must be installed as closed as possible to the component to be protected.</p>\r\n<p>• Additional filtration layers (all filtration degree could be considered).<br />• Special flange dimensions, finishing and shapes.<br />• Customized sizing for high flow rate, viscosity or special applications. Please contact our technical department for a customized sizing.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(49, 25, 'en', 'title', 'Technical info'),
(50, 25, 'en', 'text', '<div class=\"page\" title=\"Page 1\">\r\n<div class=\"section\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<p><span style=\"font-size: 12.000000pt; font-family: \'DINOT\'; font-weight: bold; color: rgb(0.000000%, 22.000000%, 31.000000%);\">POLYPROPYLENE CORE AND MEDIA CARTRIDGE: </span></p>\r\n<p><span style=\"font-size: 12.000000pt; font-family: \'DINOT\'; color: rgb(0.000000%, 22.000000%, 31.000000%);\">Max Temperature : 60C° - Max Differential pressure: 1.4bar </span></p>\r\n<p><span style=\"font-size: 12.000000pt; font-family: \'DINOT\'; font-weight: bold; color: rgb(0.000000%, 22.000000%, 31.000000%);\">STAINLESS STEEL CORE AND GLASS FIBER MEDIA CARTRIDGE: </span></p>\r\n<p><span style=\"font-size: 12.000000pt; font-family: \'DINOT\'; color: rgb(0.000000%, 22.000000%, 31.000000%);\">Max Temperature : 400C° - Max Differential pressure: 1.4bar </span></p>\r\n<p><span style=\"font-size: 12.000000pt; font-family: \'DINOT\'; font-weight: bold; color: rgb(0.000000%, 22.000000%, 31.000000%);\">STAINLESS STEEL CORE AND COTTON MEDIA CARTRIDGE: </span></p>\r\n<p><span style=\"font-size: 12.000000pt; font-family: \'DINOT\'; color: rgb(0.000000%, 22.000000%, 31.000000%);\">Max Temperature : 120C° - Max Differential pressure: 1.4bar </span></p>\r\n<p><span style=\"font-size: 12.000000pt; font-family: \'DINOT\'; font-weight: bold; color: rgb(0.000000%, 22.000000%, 31.000000%);\">POLYPROPYLENE CORE AND COTTON MEDIA CARTRIDGE: </span></p>\r\n<p><span style=\"font-size: 12.000000pt; font-family: \'DINOT\'; color: rgb(0.000000%, 22.000000%, 31.000000%);\">Max Temperature : 65C° - Max Differential pressure: 1.4bar </span></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(51, 26, 'en', 'title', 'Installation'),
(52, 26, 'en', 'text', '<div class=\"page\" title=\"Page 2\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<p><span style=\"font-size: 12.000000pt; font-family: \'DINOT\'; color: rgb(0.000000%, 22.000000%, 31.000000%);\">• Strainers should be installed as close as possible to the machinery or valve to be protected. The arrow cast on the strainer body must point to the direction of the flow.<br />• For installation on horizontal or inclined pipelines, the scren housing must be below the pipeline.<br />• Never install a “Y” type strainer on vertical pipelines with flow directed upwards. Refer to the figures below. </span></p>\r\n</div>\r\n</div>\r\n</div>');

-- --------------------------------------------------------

--
-- Struttura della tabella `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `roles_id` int(11) DEFAULT NULL,
  `username` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `users`
--

INSERT INTO `users` (`id`, `roles_id`, `username`, `password`, `email`, `is_active`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 1, 'admin', '$2y$13$C5RG2IW18QO7Pt72lYwtvuTeIW6zFK1.4LnjWGrN/pMkpoO0anIX6', 'daniele.verra@echocreative.it', 1, '2018-02-25 12:06:38', '2018-02-25 12:06:38', NULL),
(2, 2, 'truffolone', '$2y$13$F7dMLvmtIoIdIb8Nawy/3uqAhlHgMJ/qYdV17SzWVyOYKAqD7yoJC', 'dverra@gmail.com', 1, '2018-03-21 12:43:45', '2018-03-21 12:43:45', NULL),
(3, 1, 'gvfiltri', '$2y$13$0fXVt8CT23JwgAfIeq7GN.4T4dIzUHtkIkeNFt4pyAo5ToTDQAV16', 'info@gvfiltri.it', 1, '2018-04-13 15:00:25', '2018-04-13 15:00:25', NULL);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `applications_categories`
--
ALTER TABLE `applications_categories`
  ADD PRIMARY KEY (`application_id`,`category_id`),
  ADD KEY `IDX_ED480D0B3E030ACD` (`application_id`),
  ADD KEY `IDX_ED480D0B12469DE2` (`category_id`);

--
-- Indici per le tabelle `application_translations`
--
ALTER TABLE `application_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lookup_unique_idx` (`locale`,`object_id`,`field`),
  ADD KEY `IDX_65A211DE232D562B` (`object_id`);

--
-- Indici per le tabelle `attribute_names`
--
ALTER TABLE `attribute_names`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `attribute_name_translations`
--
ALTER TABLE `attribute_name_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lookup_unique_idx` (`locale`,`object_id`,`field`),
  ADD KEY `IDX_144A2C74232D562B` (`object_id`);

--
-- Indici per le tabelle `attribute_name_value`
--
ALTER TABLE `attribute_name_value`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D7370D14FA8BC512` (`attribute_name_id`),
  ADD KEY `IDX_D7370D1465A22152` (`attribute_value_id`);

--
-- Indici per le tabelle `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `attribute_value_translations`
--
ALTER TABLE `attribute_value_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lookup_unique_idx` (`locale`,`object_id`,`field`),
  ADD KEY `IDX_1293849B232D562B` (`object_id`);

--
-- Indici per le tabelle `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `category_translations`
--
ALTER TABLE `category_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lookup_unique_idx` (`locale`,`object_id`,`field`),
  ADD KEY `IDX_1C60F915232D562B` (`object_id`);

--
-- Indici per le tabelle `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D8698A764584665A` (`product_id`);

--
-- Indici per le tabelle `document_translations`
--
ALTER TABLE `document_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lookup_unique_idx` (`locale`,`object_id`,`field`),
  ADD KEY `IDX_6B52FBF6232D562B` (`object_id`);

--
-- Indici per le tabelle `ext_log_entries`
--
ALTER TABLE `ext_log_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `log_class_lookup_idx` (`object_class`),
  ADD KEY `log_date_lookup_idx` (`logged_at`),
  ADD KEY `log_user_lookup_idx` (`username`),
  ADD KEY `log_version_lookup_idx` (`object_id`,`object_class`,`version`);

--
-- Indici per le tabelle `ext_translations`
--
ALTER TABLE `ext_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lookup_unique_idx` (`locale`,`object_class`,`field`,`foreign_key`),
  ADD KEY `translations_lookup_idx` (`locale`,`object_class`,`foreign_key`);

--
-- Indici per le tabelle `image_pages`
--
ALTER TABLE `image_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `image_page_translations`
--
ALTER TABLE `image_page_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lookup_unique_idx` (`locale`,`object_id`,`field`),
  ADD KEY `IDX_EAFE5D01232D562B` (`object_id`);

--
-- Indici per le tabelle `main_pages`
--
ALTER TABLE `main_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `main_page_applications`
--
ALTER TABLE `main_page_applications`
  ADD PRIMARY KEY (`main_page_id`,`application_id`),
  ADD KEY `IDX_2EE318C3F80DCA0D` (`main_page_id`),
  ADD KEY `IDX_2EE318C33E030ACD` (`application_id`);

--
-- Indici per le tabelle `main_page_translations`
--
ALTER TABLE `main_page_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lookup_unique_idx` (`locale`,`object_id`,`field`),
  ADD KEY `IDX_1F9DA4B4232D562B` (`object_id`);

--
-- Indici per le tabelle `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indici per le tabelle `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `product_translations`
--
ALTER TABLE `product_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lookup_unique_idx` (`locale`,`object_id`,`field`),
  ADD KEY `IDX_4B13F8EC232D562B` (`object_id`);

--
-- Indici per le tabelle `RadioEav`
--
ALTER TABLE `RadioEav`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_88331262352276AF` (`radio_page_id`),
  ADD KEY `UNIQ_883312629AFD82D5` (`eav_id`) USING BTREE;

--
-- Indici per le tabelle `radio_pages`
--
ALTER TABLE `radio_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `radio_page_translations`
--
ALTER TABLE `radio_page_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lookup_unique_idx` (`locale`,`object_id`,`field`),
  ADD KEY `IDX_91FCC360232D562B` (`object_id`);

--
-- Indici per le tabelle `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indici per le tabelle `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`sess_id`);

--
-- Indici per le tabelle `table_pages`
--
ALTER TABLE `table_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `table_page_translations`
--
ALTER TABLE `table_page_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lookup_unique_idx` (`locale`,`object_id`,`field`),
  ADD KEY `IDX_DC947FB7232D562B` (`object_id`);

--
-- Indici per le tabelle `text_pages`
--
ALTER TABLE `text_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `text_page_translations`
--
ALTER TABLE `text_page_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lookup_unique_idx` (`locale`,`object_id`,`field`),
  ADD KEY `IDX_E10E1893232D562B` (`object_id`);

--
-- Indici per le tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_1483A5E9F85E0677` (`username`),
  ADD UNIQUE KEY `UNIQ_1483A5E9E7927C74` (`email`),
  ADD KEY `IDX_1483A5E938C751C4` (`roles_id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT per la tabella `application_translations`
--
ALTER TABLE `application_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT per la tabella `attribute_names`
--
ALTER TABLE `attribute_names`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT per la tabella `attribute_name_translations`
--
ALTER TABLE `attribute_name_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT per la tabella `attribute_name_value`
--
ALTER TABLE `attribute_name_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT per la tabella `attribute_values`
--
ALTER TABLE `attribute_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT per la tabella `attribute_value_translations`
--
ALTER TABLE `attribute_value_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT per la tabella `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT per la tabella `category_translations`
--
ALTER TABLE `category_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT per la tabella `document`
--
ALTER TABLE `document`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT per la tabella `document_translations`
--
ALTER TABLE `document_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=257;

--
-- AUTO_INCREMENT per la tabella `ext_log_entries`
--
ALTER TABLE `ext_log_entries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `ext_translations`
--
ALTER TABLE `ext_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `image_pages`
--
ALTER TABLE `image_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT per la tabella `image_page_translations`
--
ALTER TABLE `image_page_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT per la tabella `main_pages`
--
ALTER TABLE `main_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT per la tabella `main_page_translations`
--
ALTER TABLE `main_page_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT per la tabella `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT per la tabella `product_translations`
--
ALTER TABLE `product_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT per la tabella `RadioEav`
--
ALTER TABLE `RadioEav`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT per la tabella `radio_pages`
--
ALTER TABLE `radio_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT per la tabella `radio_page_translations`
--
ALTER TABLE `radio_page_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT per la tabella `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT per la tabella `table_pages`
--
ALTER TABLE `table_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT per la tabella `table_page_translations`
--
ALTER TABLE `table_page_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT per la tabella `text_pages`
--
ALTER TABLE `text_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT per la tabella `text_page_translations`
--
ALTER TABLE `text_page_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT per la tabella `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `applications_categories`
--
ALTER TABLE `applications_categories`
  ADD CONSTRAINT `FK_ED480D0B12469DE2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `FK_ED480D0B3E030ACD` FOREIGN KEY (`application_id`) REFERENCES `applications` (`id`);

--
-- Limiti per la tabella `application_translations`
--
ALTER TABLE `application_translations`
  ADD CONSTRAINT `FK_65A211DE232D562B` FOREIGN KEY (`object_id`) REFERENCES `applications` (`id`) ON DELETE CASCADE;

--
-- Limiti per la tabella `attribute_name_translations`
--
ALTER TABLE `attribute_name_translations`
  ADD CONSTRAINT `FK_144A2C74232D562B` FOREIGN KEY (`object_id`) REFERENCES `attribute_names` (`id`) ON DELETE CASCADE;

--
-- Limiti per la tabella `attribute_name_value`
--
ALTER TABLE `attribute_name_value`
  ADD CONSTRAINT `FK_D7370D1465A22152` FOREIGN KEY (`attribute_value_id`) REFERENCES `attribute_values` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_D7370D14FA8BC512` FOREIGN KEY (`attribute_name_id`) REFERENCES `attribute_names` (`id`) ON DELETE CASCADE;

--
-- Limiti per la tabella `attribute_value_translations`
--
ALTER TABLE `attribute_value_translations`
  ADD CONSTRAINT `FK_1293849B232D562B` FOREIGN KEY (`object_id`) REFERENCES `attribute_values` (`id`) ON DELETE CASCADE;

--
-- Limiti per la tabella `category_translations`
--
ALTER TABLE `category_translations`
  ADD CONSTRAINT `FK_1C60F915232D562B` FOREIGN KEY (`object_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Limiti per la tabella `document`
--
ALTER TABLE `document`
  ADD CONSTRAINT `FK_D8698A764584665A` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Limiti per la tabella `document_translations`
--
ALTER TABLE `document_translations`
  ADD CONSTRAINT `FK_6B52FBF6232D562B` FOREIGN KEY (`object_id`) REFERENCES `document` (`id`) ON DELETE CASCADE;

--
-- Limiti per la tabella `image_page_translations`
--
ALTER TABLE `image_page_translations`
  ADD CONSTRAINT `FK_EAFE5D01232D562B` FOREIGN KEY (`object_id`) REFERENCES `image_pages` (`id`) ON DELETE CASCADE;

--
-- Limiti per la tabella `main_page_applications`
--
ALTER TABLE `main_page_applications`
  ADD CONSTRAINT `FK_2EE318C33E030ACD` FOREIGN KEY (`application_id`) REFERENCES `applications` (`id`),
  ADD CONSTRAINT `FK_2EE318C3F80DCA0D` FOREIGN KEY (`main_page_id`) REFERENCES `main_pages` (`id`);

--
-- Limiti per la tabella `main_page_translations`
--
ALTER TABLE `main_page_translations`
  ADD CONSTRAINT `FK_1F9DA4B4232D562B` FOREIGN KEY (`object_id`) REFERENCES `main_pages` (`id`) ON DELETE CASCADE;

--
-- Limiti per la tabella `product_translations`
--
ALTER TABLE `product_translations`
  ADD CONSTRAINT `FK_4B13F8EC232D562B` FOREIGN KEY (`object_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Limiti per la tabella `RadioEav`
--
ALTER TABLE `RadioEav`
  ADD CONSTRAINT `FK_88331262352276AF` FOREIGN KEY (`radio_page_id`) REFERENCES `radio_pages` (`id`),
  ADD CONSTRAINT `FK_883312629AFD82D5` FOREIGN KEY (`eav_id`) REFERENCES `attribute_name_value` (`id`);

--
-- Limiti per la tabella `radio_page_translations`
--
ALTER TABLE `radio_page_translations`
  ADD CONSTRAINT `FK_91FCC360232D562B` FOREIGN KEY (`object_id`) REFERENCES `radio_pages` (`id`) ON DELETE CASCADE;

--
-- Limiti per la tabella `table_page_translations`
--
ALTER TABLE `table_page_translations`
  ADD CONSTRAINT `FK_DC947FB7232D562B` FOREIGN KEY (`object_id`) REFERENCES `table_pages` (`id`) ON DELETE CASCADE;

--
-- Limiti per la tabella `text_page_translations`
--
ALTER TABLE `text_page_translations`
  ADD CONSTRAINT `FK_E10E1893232D562B` FOREIGN KEY (`object_id`) REFERENCES `text_pages` (`id`) ON DELETE CASCADE;

--
-- Limiti per la tabella `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FK_1483A5E938C751C4` FOREIGN KEY (`roles_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
