-- phpMyAdmin SQL Dump
-- version 4.7.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Creato il: Apr 16, 2018 alle 10:40
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
(5, 'Gas Treatment', '2018-03-14 12:40:54', '2018-03-14 16:30:29', NULL),
(6, 'Catalysts Recovery', '2018-03-14 12:41:11', '2018-03-14 16:30:47', NULL),
(7, 'Off-shore water injection', '2018-03-14 12:41:27', '2018-03-14 12:41:27', NULL),
(8, 'Ammine Filtration', '2018-03-14 12:41:38', '2018-03-14 12:41:38', NULL),
(9, 'Cosmetic', '2018-03-14 16:28:05', '2018-03-14 16:28:05', NULL),
(10, 'Fermentation', '2018-03-14 16:28:22', '2018-03-14 16:28:22', NULL),
(11, 'Prefiltration', '2018-03-14 16:28:36', '2018-03-14 16:31:28', NULL),
(12, 'Beverage and Water', '2018-03-14 16:28:57', '2018-03-14 16:28:57', NULL),
(13, 'Chocolate', '2018-03-14 16:29:10', '2018-03-14 16:29:10', NULL),
(14, 'Dairy', '2018-03-14 16:29:16', '2018-03-14 16:29:16', NULL),
(15, 'Process Fluids', '2018-03-14 16:30:18', '2018-03-14 16:32:52', NULL),
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
(30, 'Pre-Prefiltration', '2018-04-16 10:38:06', '2018-04-16 10:38:06', NULL);

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
(5, 1),
(5, 4),
(6, 1),
(6, 4),
(7, 4),
(8, 4),
(9, 2),
(10, 2),
(11, 2),
(11, 5),
(12, 2),
(13, 2),
(14, 2),
(15, 1),
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
(30, 2);

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
(31, 30, 'en', 'name', 'Pre-Prefiltration');

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
(22, 'Pressure Differential (bar) at Temperature (ºC):', '2018-04-12 14:00:20', '2018-04-12 14:00:20', NULL);

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
(22, 22, 'en', 'name', 'Pressure Differential (bar) at Temperature (ºC):');

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
(22, 22, 15, '2018-04-12 14:00:20', '2018-04-12 14:00:20', NULL);

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
(19, 'd', '2018-04-06 12:11:00', '2018-04-06 12:11:00', NULL);

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
(19, 19, 'en', 'value', 'd');

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
(1, 'Cosmetics', 'Categoria Prodotti Cosmetici (eng)', '2018-02-25 15:59:23', '2018-04-04 12:19:05', NULL, '0432b15d75f66895c4d515f7deb36bf6.png', 3),
(2, 'Alimentare e Farmaceutico', 'Descrizione per categoria Alimentare e Farmaceutico', '2018-02-25 16:00:00', '2018-04-04 12:19:05', NULL, '7341c675e29453aa7b0886f5652c7353.png', 2),
(3, 'Industrial', 'The industrial sector is divided into a variety of areas which are constantly changing. GV Filtri Industriali is able to offer a broad spectrum of evolving solutions, which follows industry evolution. We design customized systems on specific requirements, manufactured according to international standards.', '2018-03-07 09:55:01', '2018-04-04 11:30:21', NULL, '3feca47e96e96482fa7be2a7decf64ab.png', 6),
(4, 'Oil & Gas', 'Gv Filtri Industriali boasts a high know-how in the Oil & Gas area grown up in years of experience. We offer systems and filtration systems for the petrochemical and oil industry, gas and air treatment. We offer customized systems on specific requests, designed according to international standards', '2018-03-07 10:22:00', '2018-04-04 11:29:38', NULL, '2ff35f8fea9dd89a3ed15e3743e8e64f.png', 1),
(5, 'Water Treatment', 'GV Filtri Industriali has always developed solutions for water treatment, thanks to its deep know-how. It can offer you filtration systems for all types of applications, designed according to international standards.', '2018-03-07 10:48:48', '2018-04-04 11:30:17', NULL, '724f0cd42f3c89994e701e04615f8b62.png', 4),
(6, 'Power Generation', 'GV Filtri Industriali designs and produces filtration plants for the energy field, according to customer specification. We work in sympathy with our customer to ensure always maximum efficiency and we offer customized systems on specific requirements, designed according to international standards.', '2018-03-07 10:49:16', '2018-04-04 11:30:21', NULL, 'e9dec6f4de833b2dbdbd7c9d38af3b1b.png', 5);

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
(19, 14, 'High flow filter cartridge', '', 'mainPage', 7, 0, '2018-04-04 11:38:32', '2018-04-13 15:03:18', NULL),
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
(34, 21, 'BASKET FILTER ELEMENTS', '', 'mainPage', 13, 0, '2018-04-16 10:31:28', '2018-04-16 10:31:28', NULL);

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
(68, 34, 'en', 'note', '');

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
(4, 'Ordering Info', '1e20702f719dcf58361d558ebf88aca1.png', '2018-04-04 11:58:23', '2018-04-04 12:06:50', NULL);

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
(4, 4, 'en', 'title', 'Ordering Info');

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
(7, 'High flow filter cartridge', '<p>High Flow Filter GV Cartridges combine the capacity of the filter bags to han dle high flow rates. The filtering surface of pleated cartridges, guarantee high efficiency and low leakage in all applications whether they are industrial or thanks to they FDA certification on more delicate tasks.</p>\r\n<p> </p>', '2018-04-04 11:38:32', '2018-04-13 15:03:18', NULL),
(8, 'TEMPORARY CONYCAL STRAINER', '<p>For more than thirty years GV Filtri produce temporary filters that are installed all around the world with the purpose to protect high value components.</p>\r\n<p>Temporary GVTH cone filters are designed and manufactured in accordance with the most common and strict industrial standards and using high quality raw materials.</p>\r\n<p>The cone and ring dimensions are such that they are compatible with ASME / ANSI B16.5 flanges.</p>\r\n<p>The GVTH cone filters have been dimensioned in accordance with the thirty-year experience of \"GV Filtri Industriali\" and on the basis of internally developed computing sheets, GV can dimension special temporary filters on request to meet any customer application.</p>', '2018-04-13 13:15:20', '2018-04-13 13:15:20', NULL),
(9, 'product', '<p>qweqewqew</p>', '2018-04-13 15:20:20', '2018-04-13 15:20:20', NULL),
(10, 'provona', '<p>asd</p>', '2018-04-13 15:20:47', '2018-04-13 15:20:47', NULL),
(11, '342342342', '<p>234234234</p>', '2018-04-13 15:21:23', '2018-04-13 15:21:23', NULL),
(12, 'BAG FILTERS', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>Bag Filters can be made of polypropylene, polyester and nylon.</p>\r\n<p>The bag finishes are all with heavy and double seams to give strength and reliability to the bag so this ensures that there is no passage of particles outside the bag.</p>\r\n<p>They can be supplied in various configurations such as oil absorption and high flow.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2018-04-16 10:18:33', '2018-04-16 10:20:10', NULL),
(13, 'BASKET FILTER ELEMENTS', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>The GV Filtri Industriali basket filter elements have a high mechanic resistance and the fully welded construction allows them to operate at high temperatures and to treat chemically aggressive fluids.</p>\r\n<p> </p>\r\n<p>The filtering surface can be increased thanks to the pleated execution, which guarantees a high accumulation capacity and extended mainte- nance intervals.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2018-04-16 10:31:28', '2018-04-16 10:39:14', NULL);

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
(7, 5),
(7, 7),
(7, 8),
(7, 11),
(7, 15),
(7, 18),
(7, 21),
(7, 23),
(8, 4),
(8, 9),
(8, 10),
(8, 11),
(8, 14),
(8, 15),
(8, 22),
(8, 23),
(8, 24),
(8, 26),
(8, 27),
(8, 28),
(8, 29),
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
(12, 11),
(12, 15),
(12, 17),
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
(13, 30);

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
(26, 13, 'en', 'text', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>The GV Filtri Industriali basket filter elements have a high mechanic resistance and the fully welded construction allows them to operate at high temperatures and to treat chemically aggressive fluids.</p>\r\n<p> </p>\r\n<p>The filtering surface can be increased thanks to the pleated execution, which guarantees a high accumulation capacity and extended mainte- nance intervals.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>');

-- --------------------------------------------------------

--
-- Struttura della tabella `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `migration_versions`
--

INSERT INTO `migration_versions` (`version`) VALUES
('20180225104636'),
('20180225121442'),
('20180226083053'),
('20180227211620'),
('20180227211956'),
('20180227213258'),
('20180227213449'),
('20180227215010'),
('20180227220016'),
('20180227220529'),
('20180227222245'),
('20180227223205'),
('20180227224116'),
('20180306151751'),
('20180306164322'),
('20180306165710'),
('20180307115455'),
('20180309140631'),
('20180312100926'),
('20180314101211'),
('20180314103938'),
('20180314104207'),
('20180321164504'),
('20180323085716'),
('20180323085805'),
('20180323085924'),
('20180326142721'),
('20180326142757'),
('20180403134931'),
('20180405094307'),
('20180406080322'),
('20180406080352'),
('20180406100858');

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
(14, 'High flow filter cartridge', '<p>High Flow Filter GV Cartridges combine the capacity of the filter bags to han dle high flow rates. The filtering surface of pleated cartridges, guarantee high efficiency and low leakage in all applications whether they are industrial or thanks to they FDA certification on more delicate tasks.</p>\r\n<p> </p>', '2018-04-04 11:38:32', '2018-04-16 10:21:03', NULL, 120, '4a8674ea469a070c95bb71c440b875c7.png', 0, 4),
(15, 'TEMPORARY CONYCAL STRAINER', '<p>For more than thirty years GV Filtri produce temporary filters that are installed all around the world with the purpose to protect high value components.</p>\r\n<p>Temporary GVTH cone filters are designed and manufactured in accordance with the most common and strict industrial standards and using high quality raw materials.</p>\r\n<p>The cone and ring dimensions are such that they are compatible with ASME / ANSI B16.5 flanges.</p>\r\n<p>The GVTH cone filters have been dimensioned in accordance with the thirty-year experience of \"GV Filtri Industriali\" and on the basis of internally developed computing sheets, GV can dimension special temporary filters on request to meet any customer application.</p>', '2018-04-13 13:15:20', '2018-04-13 13:15:20', NULL, 1, '7479238ea8fe829f76661d684bed504f.png', 1, 1),
(16, 'provoddo', '<p>qweqweqew</p>', '2018-04-13 15:19:48', '2018-04-13 15:19:48', '2018-04-13 15:20:05', 1, 'b3496f8ffa774ffa77d6f1863d4c2c4b.png', 1, 1),
(17, 'product', '<p>qweqewqew</p>', '2018-04-13 15:20:20', '2018-04-13 15:20:20', '2018-04-13 15:21:36', 1, '4a88be91d6bcd591b8980a117cc87a33.png', 1, 1),
(18, 'provona', '<p>asd</p>', '2018-04-13 15:20:47', '2018-04-13 15:20:47', '2018-04-13 15:21:32', 1, '326ee2e532f0c8136bfba1439d7a0e6e.png', 1, 1),
(19, '342342342', '<p>234234234</p>', '2018-04-13 15:21:23', '2018-04-13 15:21:23', '2018-04-13 15:21:41', 1, 'cc12253700506251a8cea83452a6adc6.png', 1, 1),
(20, 'BAG FILTERS', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>Bag Filters can be made of polypropylene, polyester and nylon.</p>\r\n<p>The bag finishes are all with heavy and double seams to give strength and reliability to the bag so this ensures that there is no passage of particles outside the bag.</p>\r\n<p>They can be supplied in various configurations such as oil absorption and high flow.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2018-04-16 10:18:33', '2018-04-16 10:23:16', NULL, 3, 'a81625ab316c79d1a69323b7828a8f70.png', 1, 1),
(21, 'BASKET FILTER ELEMENTS', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>The GV Filtri Industriali basket filter elements have a high mechanic resistance and the fully welded construction allows them to operate at high temperatures and to treat chemically aggressive fluids.</p>\r\n<p> </p>\r\n<p>The filtering surface can be increased thanks to the pleated execution, which guarantees a high accumulation capacity and extended mainte- nance intervals.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2018-04-16 10:31:28', '2018-04-16 10:39:14', NULL, 3, '88222046dbdc1f275a7d3815d16d6972.png', 1, 1);

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
(46, 21, 'en', 'description', '<div title=\"Page 1\">\r\n<div>\r\n<div>\r\n<div>\r\n<p>The GV Filtri Industriali basket filter elements have a high mechanic resistance and the fully welded construction allows them to operate at high temperatures and to treat chemically aggressive fluids.</p>\r\n<p> </p>\r\n<p>The filtering surface can be increased thanks to the pleated execution, which guarantees a high accumulation capacity and extended mainte- nance intervals.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>');

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
(15, 7, 17, 1);

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
(7, 'Technical Data', '2018-04-12 14:00:20', '2018-04-12 14:00:20', NULL);

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
(7, 7, 'en', 'title', 'Technical Data');

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
('1u2c9brn7c8hde2c3tjbb1f6er', 0x5f7366325f617474726962757465737c613a323a7b733a32363a225f73656375726974792e6d61696e2e7461726765745f70617468223b733a35303a22687474703a2f2f677666696c7472692e6563686f63726561746976652e69742f656e2f61646d696e2f70726f64756374732f223b733a31343a225f73656375726974795f6d61696e223b733a3432373a22433a37343a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c557365726e616d6550617373776f7264546f6b656e223a3333393a7b613a333a7b693a303b4e3b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532333836383030383b733a313a2263223b693a313532333836353530363b733a313a226c223b733a313a2230223b7d, 1523868008, 1440),
('l4kead2kc1s8htc7vu23te7ta9', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3437313a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3338393a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3331313a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130383a7b613a333a7b693a303b693a323b693a313b733a31303a2274727566666f6c6f6e65223b693a323b733a36303a22243279243133244637644d4c766d74496f49644962384e6177792f33757141686c48674d4a2f715964563137537a5756794f594b41714437796f4a43223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31363a22524f4c455f53555045525f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532333836363539303b733a313a2263223b693a313532333836363536373b733a313a226c223b733a313a2230223b7d, 1523866590, 1440);

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
(5, 'tabella con spunte', '<table style=\"border-collapse: collapse; width: 100%;\" border=\"1\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 25%;\">Solution</td>\r\n<td style=\"width: 25%;\">Polypropylenev</td>\r\n<td style=\"width: 25%;\">Polyester</td>\r\n<td style=\"width: 25%;\">Nylon</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 25%;\">Organic Solvents</td>\r\n<td style=\"width: 25%;\"> </td>\r\n<td style=\"width: 25%;\"> </td>\r\n<td style=\"width: 25%;\"> </td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 25%;\">Oils</td>\r\n<td style=\"width: 25%;\"> </td>\r\n<td style=\"width: 25%;\"> </td>\r\n<td style=\"width: 25%;\"> </td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 25%;\">Mirco-organisms</td>\r\n<td style=\"width: 25%;\"> </td>\r\n<td style=\"width: 25%;\"> </td>\r\n<td style=\"width: 25%;\"> </td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 25%;\">Alkalines</td>\r\n<td style=\"width: 25%;\"> </td>\r\n<td style=\"width: 25%;\"> </td>\r\n<td style=\"width: 25%;\"> </td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 25%;\">Organic Agents</td>\r\n<td style=\"width: 25%;\"> </td>\r\n<td style=\"width: 25%;\"> </td>\r\n<td style=\"width: 25%;\"> </td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 25%;\">Oxidising Agents</td>\r\n<td style=\"width: 25%;\"> </td>\r\n<td style=\"width: 25%;\"> </td>\r\n<td style=\"width: 25%;\"> </td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 25%;\">Mineral Acids</td>\r\n<td style=\"width: 25%;\"> </td>\r\n<td style=\"width: 25%;\"> </td>\r\n<td style=\"width: 25%;\"> </td>\r\n</tr>\r\n</tbody>\r\n</table>', '2018-04-13 16:28:35', '2018-04-13 18:27:07', NULL);

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
(9, 5, 'en', 'title', 'tabella con spunte'),
(10, 5, 'en', 'text', '<table class=\"mainTable\" style=\"height: 745px; width: 100.302%; border-collapse: collapse;\" cellspacing=\"10\" cellpadding=\"30\">\r\n<thead>\r\n<tr style=\"border-style: solid; border-color: #ffffff;\">\r\n<td style=\"height: 15px; text-align: left; border-style: solid; border-color: #ffffff; width: 22.4507%;\"><span style=\"color: #003d50; font-size: 14pt;\"><strong>Solution</strong></span></td>\r\n<td style=\"border-style: solid; border-color: #ffffff; width: 27.4207%; text-align: center; height: 15px;\"><span style=\"color: #003d50; font-size: 14pt;\"><strong><span style=\"color: #003d50; font-size: 14pt;\"><strong>Polypropylene</strong></span></strong></span></td>\r\n<td style=\"width: 25.0752%; height: 15px; text-align: center; border-style: solid; border-color: #ffffff;\"><span style=\"color: #003d50; font-size: 14pt;\"><strong>Polyester<br /></strong></span></td>\r\n<td style=\"width: 24.8746%; height: 15px; text-align: center; border-style: solid; border-color: #ffffff;\"><span style=\"color: #003d50; font-size: 14pt;\"><strong>Nylon</strong></span></td>\r\n</tr>\r\n<tr style=\"border-style: solid; border-color: #ffffff;\">\r\n<td style=\"width: 22.4507%; height: 10px; border-style: solid; border-color: #ffffff; background-color: #eeeeee;\">Organic Solvents</td>\r\n<td style=\"width: 27.4207%; height: 10px; text-align: center; border-style: solid; border-color: #ffffff; background-color: #eeeeee;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span></span></span><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span></span></span></span></span><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎</span></span></span></span></span></span></span></span></span></span></td>\r\n<td style=\"width: 25.0752%; height: 10px; text-align: center; border-style: solid; border-color: #ffffff; background-color: #eeeeee;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span></span></span><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span></span></span></span></span><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎</span></span></span></span></span></span></span></span></span></span></td>\r\n<td style=\"width: 24.8746%; height: 10px; border: 3px solid #ffffff; text-align: center; background-color: #eeeeee;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span></span></span><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span></span></span></span></span><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎</span></span></span></span></span></span></span></span></span></span></td>\r\n</tr>\r\n<tr style=\"border-style: solid; border-color: #ffffff;\">\r\n<td style=\"width: 22.4507%; height: 18px; border: 3px solid #ffffff; background-color: #eeeeee;\">Oils</td>\r\n<td style=\"width: 27.4207%; height: 18px; border: 3px solid #ffffff; text-align: center; background-color: #eeeeee;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span></span></span><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span></span></span></span></span><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎</span></span></span></span></span></span></span></span></span></span></td>\r\n<td style=\"width: 25.0752%; height: 18px; border: 3px solid #ffffff; text-align: center; background-color: #eeeeee;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span></span></span><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span></span></span></span></span><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎</span></span></span></span></span></span></span></span></span></span></td>\r\n<td style=\"width: 24.8746%; height: 18px; border: 3px solid #ffffff; text-align: center; background-color: #eeeeee;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span></span></span><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span></span></span></span></span><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎</span></span></span></span></span></span></span></span></span></span></td>\r\n</tr>\r\n<tr style=\"border-style: solid; border-color: #ffffff;\">\r\n<td style=\"width: 22.4507%; height: 19px; border: 3px solid #ffffff; background-color: #eeeeee;\">Mirco-organisms</td>\r\n<td style=\"width: 27.4207%; height: 19px; border: 3px solid #ffffff; text-align: center; background-color: #eeeeee;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span></span></span><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span></span></span></span></span><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎</span></span></span></span></span></span></span></span></span></span></td>\r\n<td style=\"width: 25.0752%; height: 19px; border: 3px solid #ffffff; text-align: center; background-color: #eeeeee;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span></span></span><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span></span></span></span></span><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎</span></span></span></span></span></span></span></span></span></span></td>\r\n<td style=\"width: 24.8746%; height: 19px; border: 3px solid #ffffff; text-align: center; background-color: #eeeeee;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span></span></span><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span></span></span></span></span><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎</span></span></span></span></span></span></span></span></span></span></td>\r\n</tr>\r\n<tr style=\"border-style: solid; border-color: #ffffff;\">\r\n<td style=\"width: 22.4507%; height: 18px; border: 3px solid #ffffff; background-color: #eeeeee;\">Alkalines</td>\r\n<td style=\"width: 27.4207%; height: 18px; border: 3px solid #ffffff; text-align: center; background-color: #eeeeee;\"><span style=\"color: #4ab7a9;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span><br /></span></td>\r\n<td style=\"width: 25.0752%; height: 18px; border: 3px solid #ffffff; text-align: center; background-color: #eeeeee;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span></span></span><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span></span></span></span></span><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"color: #003d50;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎</span></span></span></span></span></span></span></span></span></span></td>\r\n<td style=\"width: 24.8746%; height: 18px; border: 3px solid #ffffff; text-align: center; background-color: #eeeeee;\"><span style=\"color: #4ab7a9;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span></span></td>\r\n</tr>\r\n<tr style=\"border-style: solid; border-color: #ffffff;\">\r\n<td style=\"width: 22.4507%; height: 18px; border: 3px solid #ffffff; background-color: #eeeeee;\">Organic Agents</td>\r\n<td style=\"width: 27.4207%; height: 18px; border: 3px solid #ffffff; text-align: center; background-color: #eeeeee;\"><span style=\"color: #4ab7a9;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span></span></td>\r\n<td style=\"width: 25.0752%; height: 18px; border: 3px solid #ffffff; text-align: center; background-color: #eeeeee;\"><span style=\"color: #4ab7a9;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎</span></span></span></td>\r\n<td style=\"width: 24.8746%; height: 18px; border: 3px solid #ffffff; text-align: center; background-color: #eeeeee;\"><span style=\"color: #4ab7a9;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span></td>\r\n</tr>\r\n<tr style=\"border-style: solid; border-color: #ffffff;\">\r\n<td style=\"width: 22.4507%; height: 18px; border: 3px solid #ffffff; background-color: #eeeeee;\">Oxidising Agents</td>\r\n<td style=\"width: 27.4207%; height: 18px; border: 3px solid #ffffff; text-align: center; background-color: #eeeeee;\"><span style=\"color: #4ab7a9;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span></span></td>\r\n<td style=\"width: 25.0752%; height: 18px; border: 3px solid #ffffff; text-align: center; background-color: #eeeeee;\"><span style=\"color: #4ab7a9;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span></span></td>\r\n<td style=\"width: 24.8746%; height: 18px; border: 3px solid #ffffff; text-align: center; background-color: #eeeeee;\"><span style=\"color: #4ab7a9;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎</span></span></span></td>\r\n</tr>\r\n<tr style=\"border-style: solid; border-color: #ffffff;\">\r\n<td style=\"width: 22.4507%; height: 11px; border: 3px solid #ffffff; background-color: #eeeeee;\">Mineral Acids</td>\r\n<td style=\"width: 27.4207%; height: 11px; border: 3px solid #ffffff; text-align: center; background-color: #eeeeee;\"><span style=\"color: #4ab7a9;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span></span></td>\r\n<td style=\"width: 25.0752%; height: 11px; border: 3px solid #ffffff; text-align: center; background-color: #eeeeee;\"><span style=\"color: #4ab7a9;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎ </span></span></span></span></span></td>\r\n<td style=\"width: 24.8746%; height: 11px; border: 3px solid #ffffff; text-align: center; background-color: #eeeeee;\"><span style=\"color: #4ab7a9;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18pt;\">✔︎</span></span></span></td>\r\n</tr>\r\n</thead>\r\n</table>\r\n<p> </p>');

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
(10, 'prova', '<p>spasfsfsdfsdfsdfsd</p>', '2018-04-16 10:23:16', '2018-04-16 10:23:16', '2018-04-16 10:23:48');

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
(20, 10, 'en', 'text', '<p>spasfsfsdfsdfsdfsd</p>');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT per la tabella `application_translations`
--
ALTER TABLE `application_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT per la tabella `attribute_names`
--
ALTER TABLE `attribute_names`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT per la tabella `attribute_name_translations`
--
ALTER TABLE `attribute_name_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT per la tabella `attribute_name_value`
--
ALTER TABLE `attribute_name_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT per la tabella `attribute_values`
--
ALTER TABLE `attribute_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT per la tabella `attribute_value_translations`
--
ALTER TABLE `attribute_value_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT per la tabella `document_translations`
--
ALTER TABLE `document_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT per la tabella `image_page_translations`
--
ALTER TABLE `image_page_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT per la tabella `main_pages`
--
ALTER TABLE `main_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT per la tabella `main_page_translations`
--
ALTER TABLE `main_page_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT per la tabella `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT per la tabella `product_translations`
--
ALTER TABLE `product_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT per la tabella `RadioEav`
--
ALTER TABLE `RadioEav`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT per la tabella `radio_pages`
--
ALTER TABLE `radio_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT per la tabella `radio_page_translations`
--
ALTER TABLE `radio_page_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT per la tabella `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT per la tabella `table_pages`
--
ALTER TABLE `table_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT per la tabella `table_page_translations`
--
ALTER TABLE `table_page_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT per la tabella `text_pages`
--
ALTER TABLE `text_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT per la tabella `text_page_translations`
--
ALTER TABLE `text_page_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
