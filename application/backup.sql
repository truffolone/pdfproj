-- phpMyAdmin SQL Dump
-- version 4.7.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Creato il: Apr 03, 2018 alle 16:45
-- Versione del server: 5.7.18-15
-- Versione PHP: 7.2.3-1

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
(29, 'Textile Industry', '2018-03-14 16:34:56', '2018-03-14 16:34:56', NULL);

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
(29, 3);

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
(30, 29, 'en', 'name', 'Textile Industry');

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
(7, 'name 4', '2018-03-14 17:34:17', '2018-03-14 17:34:17', NULL);

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
(7, 7, 'en', 'name', 'name 4');

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
(7, 7, 7, '2018-03-14 17:34:17', '2018-03-14 17:34:17', NULL);

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
(7, 'value 4', '2018-03-14 17:34:17', '2018-03-14 17:34:17', NULL);

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
(7, 7, 'en', 'value', 'value 4');

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
(1, 'Cosmetics', 'Categoria Prodotti Cosmetici (eng)', '2018-02-25 15:59:23', '2018-03-14 11:20:35', NULL, '0432b15d75f66895c4d515f7deb36bf6.png', 1),
(2, 'Alimentare e Farmaceutico', 'Descrizione per categoria Alimentare e Farmaceutico', '2018-02-25 16:00:00', '2018-03-14 11:20:46', NULL, '7341c675e29453aa7b0886f5652c7353.png', 2),
(3, 'Industrial', 'The industrial sector is divided into a variety of areas which are constantly changing. GV Filtri Industriali is able to offer a broad spectrum of evolving solutions, which follows industry evolution. We design customized systems on specific requirements, manufactured according to international standards.', '2018-03-07 09:55:01', '2018-03-14 11:21:06', NULL, '3feca47e96e96482fa7be2a7decf64ab.png', 3),
(4, 'Oil & Gas', 'Gv Filtri Industriali boasts a high know-how in the Oil & Gas area grown up in years of experience. We offer systems and filtration systems for the petrochemical and oil industry, gas and air treatment. We offer customized systems on specific requests, designed according to international standards', '2018-03-07 10:22:00', '2018-03-14 11:21:16', NULL, '2ff35f8fea9dd89a3ed15e3743e8e64f.png', 4),
(5, 'Water Treatment', 'GV Filtri Industriali has always developed solutions for water treatment, thanks to its deep know-how. It can offer you filtration systems for all types of applications, designed according to international standards.', '2018-03-07 10:48:48', '2018-04-03 16:27:24', NULL, '724f0cd42f3c89994e701e04615f8b62.png', 5),
(6, 'Power Generation', 'GV Filtri Industriali designs and produces filtration plants for the energy field, according to customer specification. We work in sympathy with our customer to ensure always maximum efficiency and we offer customized systems on specific requirements, designed according to international standards.', '2018-03-07 10:49:16', '2018-04-03 16:27:24', NULL, 'e9dec6f4de833b2dbdbd7c9d38af3b1b.png', 6);

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
(18, 11, '', '', 'textPage', 7, 5, '2018-03-26 17:09:09', '2018-03-26 17:09:09', NULL);

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
(36, 18, 'en', 'note', '');

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
(3, 'Image to try', '5210f6cea870952b6c51afbe0a2c38c9.png', '2018-03-14 17:27:55', '2018-03-16 16:10:39', NULL);

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
(3, 3, 'en', 'title', 'Image to try');

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
(6, 'INOX FILTER CARTRIDGES123', '<h1>The Symfony MakerBundle</h1>\r\n<p>The MakerBundle is the fastest way to generate the most common code you\'ll need in a Symfony app: commands, controllers, form classes, event subscribers and more! This bundle is an alternative to <a href=\"https://github.com/sensiolabs/SensioGeneratorBundle\">SensioGeneratorBundle</a> for modern Symfony applications and requires Symfony 3.4 or newer and <a href=\"https://symfony.com/doc/current/setup/flex.html\" rel=\"nofollow\">Symfony Flex</a>.</p>\r\n<p><a href=\"https://symfony.com/doc/current/bundles/SymfonyMakerBundle/index.html\" rel=\"nofollow\">Read the documentation</a></p>\r\n<h2>Backwards Compatibility Promise</h2>\r\n<p>This bundle shares the <a href=\"https://symfony.com/doc/current/contributing/code/bc.html\" rel=\"nofollow\">backwards compatibility promise</a> from Symfony. But, with a few clarifications.</p>\r\n<p>A) The input arguments or options to a command <em>may</em> change between minor releases. If you\'re using the commands in an automated, scripted way, be aware of this.</p>\r\n<p>B) The generated code itself may change between minor releases. This will allow us to continuously improve the generated code!</p>', '2018-03-23 10:26:25', '2018-03-23 10:37:58', NULL);

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
(6, 29);

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
(12, 6, 'en', 'text', '<h1>The Symfony MakerBundle</h1>\r\n<p>The MakerBundle is the fastest way to generate the most common code you\'ll need in a Symfony app: commands, controllers, form classes, event subscribers and more! This bundle is an alternative to <a href=\"https://github.com/sensiolabs/SensioGeneratorBundle\">SensioGeneratorBundle</a> for modern Symfony applications and requires Symfony 3.4 or newer and <a href=\"https://symfony.com/doc/current/setup/flex.html\" rel=\"nofollow\">Symfony Flex</a>.</p>\r\n<p><a href=\"https://symfony.com/doc/current/bundles/SymfonyMakerBundle/index.html\" rel=\"nofollow\">Read the documentation</a></p>\r\n<h2>Backwards Compatibility Promise</h2>\r\n<p>This bundle shares the <a href=\"https://symfony.com/doc/current/contributing/code/bc.html\" rel=\"nofollow\">backwards compatibility promise</a> from Symfony. But, with a few clarifications.</p>\r\n<p>A) The input arguments or options to a command <em>may</em> change between minor releases. If you\'re using the commands in an automated, scripted way, be aware of this.</p>\r\n<p>B) The generated code itself may change between minor releases. This will allow us to continuously improve the generated code!</p>');

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
('20180403134931');

-- --------------------------------------------------------

--
-- Struttura della tabella `page_attribute_name_values`
--

CREATE TABLE `page_attribute_name_values` (
  `radio_page_id` int(11) NOT NULL,
  `attribute_name_value_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `page_attribute_name_values`
--

INSERT INTO `page_attribute_name_values` (`radio_page_id`, `attribute_name_value_id`) VALUES
(2, 4),
(2, 5),
(2, 6),
(2, 7);

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
  `active` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `createdAt`, `updatedAt`, `deletedAt`, `revision`, `image`, `active`) VALUES
(11, 'HIGH FLOW FILTER CARTRIDGE', '<p>High Flow Filter GV Cartridges combine the capacity of the filter bags to handle high flow rates. The filtering surface of pleated cartridges, guarantee high efficiency and low leakage in all applications whether they are industrial or thanks to they FDA certification on more delicate tasks.<br></p>', '2018-03-14 13:07:42', '2018-03-26 17:09:08', NULL, 35, '7e2720853d777d1e275eb47ba6692d6a.png', 1),
(12, 'INOX FILTER CARTRIDGES', '<h1>The Symfony MakerBundle</h1>\r\n<p>The MakerBundle is the fastest way to generate the most common code you\'ll need in a Symfony app: commands, controllers, form classes, event subscribers and more! This bundle is an alternative to <a href=\"https://github.com/sensiolabs/SensioGeneratorBundle\">SensioGeneratorBundle</a> for modern Symfony applications and requires Symfony 3.4 or newer and <a href=\"https://symfony.com/doc/current/setup/flex.html\" rel=\"nofollow\">Symfony Flex</a>.</p>\r\n<p><a href=\"https://symfony.com/doc/current/bundles/SymfonyMakerBundle/index.html\" rel=\"nofollow\">Read the documentation</a></p>\r\n<h2>Backwards Compatibility Promise</h2>\r\n<p>This bundle shares the <a href=\"https://symfony.com/doc/current/contributing/code/bc.html\" rel=\"nofollow\">backwards compatibility promise</a> from Symfony. But, with a few clarifications.</p>\r\n<p>A) The input arguments or options to a command <em>may</em> change between minor releases. If you\'re using the commands in an automated, scripted way, be aware of this.</p>\r\n<p>B) The generated code itself may change between minor releases. This will allow us to continuously improve the generated code!</p>', '2018-03-23 10:24:29', '2018-03-23 10:24:29', '2018-03-23 10:30:31', 1, '5d29b4ca525b17f18874e16f89ae1bcc.png', 1),
(13, 'INOX FILTER CARTRIDGES123', '<h1>The Symfony MakerBundle</h1>\r\n<p>The MakerBundle is the fastest way to generate the most common code you\'ll need in a Symfony app: commands, controllers, form classes, event subscribers and more! This bundle is an alternative to <a href=\"https://github.com/sensiolabs/SensioGeneratorBundle\">SensioGeneratorBundle</a> for modern Symfony applications and requires Symfony 3.4 or newer and <a href=\"https://symfony.com/doc/current/setup/flex.html\" rel=\"nofollow\">Symfony Flex</a>.</p>\r\n<p><a href=\"https://symfony.com/doc/current/bundles/SymfonyMakerBundle/index.html\" rel=\"nofollow\">Read the documentation</a></p>\r\n<h2>Backwards Compatibility Promise</h2>\r\n<p>This bundle shares the <a href=\"https://symfony.com/doc/current/contributing/code/bc.html\" rel=\"nofollow\">backwards compatibility promise</a> from Symfony. But, with a few clarifications.</p>\r\n<p>A) The input arguments or options to a command <em>may</em> change between minor releases. If you\'re using the commands in an automated, scripted way, be aware of this.</p>\r\n<p>B) The generated code itself may change between minor releases. This will allow us to continuously improve the generated code!</p>', '2018-03-23 10:26:25', '2018-03-23 10:37:58', NULL, 3, 'ee80a683d4471da0092eacad6a8ca5c1.png', 1);

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
(30, 13, 'en', 'description', '<h1>The Symfony MakerBundle</h1>\r\n<p>The MakerBundle is the fastest way to generate the most common code you\'ll need in a Symfony app: commands, controllers, form classes, event subscribers and more! This bundle is an alternative to <a href=\"https://github.com/sensiolabs/SensioGeneratorBundle\">SensioGeneratorBundle</a> for modern Symfony applications and requires Symfony 3.4 or newer and <a href=\"https://symfony.com/doc/current/setup/flex.html\" rel=\"nofollow\">Symfony Flex</a>.</p>\r\n<p><a href=\"https://symfony.com/doc/current/bundles/SymfonyMakerBundle/index.html\" rel=\"nofollow\">Read the documentation</a></p>\r\n<h2>Backwards Compatibility Promise</h2>\r\n<p>This bundle shares the <a href=\"https://symfony.com/doc/current/contributing/code/bc.html\" rel=\"nofollow\">backwards compatibility promise</a> from Symfony. But, with a few clarifications.</p>\r\n<p>A) The input arguments or options to a command <em>may</em> change between minor releases. If you\'re using the commands in an automated, scripted way, be aware of this.</p>\r\n<p>B) The generated code itself may change between minor releases. This will allow us to continuously improve the generated code!</p>');

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
(2, 'Radio Page', '2018-03-14 17:34:17', '2018-03-14 17:34:17', NULL);

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
(2, 2, 'en', 'title', 'Radio Page');

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
('0b7dstvpiof52mb07622ut05oh', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532303531393134313b733a313a2263223b693a313532303531393037373b733a313a226c223b733a313a2230223b7d, 1520519141, 1440),
('0mnrn55643mj696c2ku85elb3f', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3432373a22433a37343a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c557365726e616d6550617373776f7264546f6b656e223a3333393a7b613a333a7b693a303b4e3b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532323035343938323b733a313a2263223b693a313532323035333338303b733a313a226c223b733a313a2230223b7d, 1522054983, 1440),
('1kas5forjmq830nn2t985o511i', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532313534363739343b733a313a2263223b693a313532313534363739343b733a313a226c223b733a313a2230223b7d, 1521546794, 1440),
('1ul01mq1efai69fli15652elc2', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532303835353434343b733a313a2263223b693a313532303835333932323b733a313a226c223b733a313a2230223b7d, 1520855444, 1440),
('2gg1393hd6ai1fbhdqn5mktvqj', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532303933343834383b733a313a2263223b693a313532303933343335323b733a313a226c223b733a313a2230223b7d, 1520934849, 1440),
('2iepfopa99lvk3uvero0922b9j', 0x5f7366325f617474726962757465737c613a323a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b733a31343a225f637372662f63617465676f7279223b733a34333a22516f43496867456b6344686b377a384f695f365a56694378356a6f54487879335661376145394a53626573223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532303236343831353b733a313a2263223b693a313532303236343831353b733a313a226c223b733a313a2230223b7d, 1520264815, 1440),
('2ppe3eof3rv6thlm0sh801ov5o', 0x5f7366325f617474726962757465737c613a313a7b733a32363a225f73656375726974792e6d61696e2e7461726765745f70617468223b733a34333a22687474703a2f2f7777772e6d797064662e74666c2f656e2f61646d696e2f6170706c69636174696f6e732f223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532313034313338363b733a313a2263223b693a313532313034313338363b733a313a226c223b733a313a2230223b7d, 1521041386, 1440),
('2vv440mhv6gmfjd06p6fh4rgb9', 0x5f7366325f617474726962757465737c613a323a7b733a31343a225f637372662f63617465676f7279223b733a34333a223878754e7838624268466a78747966302d3572326e675a5339396a39474b4f7973654a666876506a6a4b67223b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532303236353538363b733a313a2263223b693a313532303236353538363b733a313a226c223b733a313a2230223b7d, 1520265586, 1440),
('32kukb7s3lf8fa1lkqhbacgcpu', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532303332353935393b733a313a2263223b693a313532303332353935393b733a313a226c223b733a313a2230223b7d, 1520325959, 1440),
('37fvnhmhk35gr7uqsv7c8330pn', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532313731323739393b733a313a2263223b693a313532313730393732383b733a313a226c223b733a313a2230223b7d, 1521712799, 1440),
('3fff4eouf74vp839vcn7iir1a4', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532313436373733373b733a313a2263223b693a313532313436373034343b733a313a226c223b733a313a2230223b7d, 1521467737, 1440),
('3gd02qsurt8jg0s890l51hdmnm', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532313732393537363b733a313a2263223b693a313532313732373031313b733a313a226c223b733a313a2230223b7d, 1521729577, 1440),
('3sngvkg1rhnlppbntu1ldgvdij', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532313533343634363b733a313a2263223b693a313532313533343634363b733a313a226c223b733a313a2230223b7d, 1521534646, 1440),
('3ugcj8hjen5b9g42ai2lu1tht5', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532303836333730393b733a313a2263223b693a313532303836333436323b733a313a226c223b733a313a2230223b7d, 1520863709, 1440),
('4ekkl5s0dtlm7526sh19ou2j49', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532313535353132333b733a313a2263223b693a313532313535353132333b733a313a226c223b733a313a2230223b7d, 1521555123, 1440),
('4kg6q8k426lsjlcs3ucd8sktu8', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532313534363535343b733a313a2263223b693a313532313533343634363b733a313a226c223b733a313a2230223b7d, 1521546572, 1440),
('546vk5kevkui7f17l31r0f1and', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532323736333736383b733a313a2263223b693a313532323736333637323b733a313a226c223b733a313a2230223b7d, 1522763768, 1440),
('5o92cat5rk14nolqtcrpqpom9a', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532303933303030383b733a313a2263223b693a313532303932393839353b733a313a226c223b733a313a2230223b7d, 1520930009, 1440),
('65iso5nh5igleuukgbuqmajvh0', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532303935383937333b733a313a2263223b693a313532303935383533353b733a313a226c223b733a313a2230223b7d, 1520958973, 1440),
('69aeijjiu3bg1c239vcn7h75bt', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532313230323236383b733a313a2263223b693a313532313139323231373b733a313a226c223b733a313a2230223b7d, 1521202271, 1440),
('6jhmibctcgv3grj7gt3ombgmi9', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532303333313233373b733a313a2263223b693a313532303333313233373b733a313a226c223b733a313a2230223b7d, 1520331237, 1440),
('76192rq6l0mnt3svqjtmjlmr35', 0x5f7366325f617474726962757465737c613a323a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b733a31373a225f637372662f6170706c69636174696f6e223b733a34333a224142785f515a2d61705a626d7349594939375a3668796a5f494f6e337673514853586c514a6b4463796a30223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532303432353435353b733a313a2263223b693a313532303431393437313b733a313a226c223b733a313a2230223b7d, 1520425455, 1440),
('77jm06q3noqpibsoths8g11qlj', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532323036323635363b733a313a2263223b693a313532323035393930353b733a313a226c223b733a313a2230223b7d, 1522062656, 1440),
('7pl4d8rj346534hr05sgvs74hm', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532303835323032363b733a313a2263223b693a313532303835313233383b733a313a226c223b733a313a2230223b7d, 1520852026, 1440),
('882irbvnva83os0l4t5rk1n920', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532313131353230363b733a313a2263223b693a313532313130333636323b733a313a226c223b733a313a2230223b7d, 1521115208, 1440),
('8msutqq1okq23ne865dojmncsi', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532303836393830323b733a313a2263223b693a313532303836363039303b733a313a226c223b733a313a2230223b7d, 1520869802, 1440),
('927491omk638rrtcrvmocgdb44', 0x5f7366325f617474726962757465737c613a323a7b733a32363a225f73656375726974792e6d61696e2e7461726765745f70617468223b733a33393a22687474703a2f2f7777772e6d797064662e74666c2f656e2f61646d696e2f70726f64756374732f223b733a31343a225f73656375726974795f6d61696e223b733a3432373a22433a37343a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c557365726e616d6550617373776f7264546f6b656e223a3333393a7b613a333a7b693a303b4e3b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532323736313836313b733a313a2263223b693a313532323736313836313b733a313a226c223b733a313a2230223b7d, 1522761862, 1440),
('98peppj1mjoaif5u8n4a3h5oue', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532303935363733353b733a313a2263223b693a313532303935303039363b733a313a226c223b733a313a2230223b7d, 1520956735, 1440),
('9ggfj8of5ne35pi3sfslsn02sf', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532303332343539343b733a313a2263223b693a313532303332343539343b733a313a226c223b733a313a2230223b7d, 1520324594, 1440),
('a8nf0kg8ack45qvb0g8pp7b3gq', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532313535373237313b733a313a2263223b693a313532313535373237313b733a313a226c223b733a313a2230223b7d, 1521557271, 1440),
('ahg1v588jjfe34li6itg36pj86', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532303333323432333b733a313a2263223b693a313532303333323432313b733a313a226c223b733a313a2230223b7d, 1520332423, 1440),
('ajhdp2vmkonhojcaqio2eq14j4', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532303332363931303b733a313a2263223b693a313532303332363931303b733a313a226c223b733a313a2230223b7d, 1520326910, 1440),
('aon3lnj18h6jr95dootv6jj1j5', 0x5f7366325f617474726962757465737c613a323a7b733a32363a225f73656375726974792e6d61696e2e7461726765745f70617468223b733a33393a22687474703a2f2f7777772e6d797064662e74666c2f656e2f7072696e7465722f73686f772f3130223b733a31343a225f73656375726974795f6d61696e223b733a3432373a22433a37343a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c557365726e616d6550617373776f7264546f6b656e223a3333393a7b613a333a7b693a303b4e3b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532313032333038353b733a313a2263223b693a313532313031353535313b733a313a226c223b733a313a2230223b7d, 1521023085, 1440),
('au9cqr85m47j6e3nqf06s83rnn', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532323037393031313b733a313a2263223b693a313532323037313334393b733a313a226c223b733a313a2230223b7d, 1522079011, 1440),
('bjplastu18lu0jeso4oc7shjgv', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532313436393333333b733a313a2263223b693a313532313436393333303b733a313a226c223b733a313a2230223b7d, 1521469333, 1440),
('bml50dvntl3a6776hbpbjaif0c', 0x5f7366325f617474726962757465737c613a333a7b733a31383a225f637372662f61757468656e746963617465223b733a34333a225f6d73304f644143753874434d463647734f4e637759694d676c3652424f564d787674486a506363505549223b733a32363a225f73656375726974792e6d61696e2e7461726765745f70617468223b733a33303a22687474703a2f2f7777772e6d797064662e74666c2f69742f61646d696e2f223b733a31343a225f73656375726974795f6d61696e223b733a3432373a22433a37343a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c557365726e616d6550617373776f7264546f6b656e223a3333393a7b613a333a7b693a303b4e3b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532303333373132323b733a313a2263223b693a313532303333373131353b733a313a226c223b733a313a2230223b7d, 1520337122, 1440),
('bpq6513sfculcj0csgnc9d7nbl', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3432373a22433a37343a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c557365726e616d6550617373776f7264546f6b656e223a3333393a7b613a333a7b693a303b4e3b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532313730373530313b733a313a2263223b693a313532313730373530313b733a313a226c223b733a313a2230223b7d, 1521707502, 1440),
('c2ete59h4371vijplacirbouoo', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532313731393334333b733a313a2263223b693a313532313731353438393b733a313a226c223b733a313a2230223b7d, 1521719344, 1440),
('ce5po4pedviteipkiu5nquabn0', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532303530343932333b733a313a2263223b693a313532303530333833343b733a313a226c223b733a313a2230223b7d, 1520504923, 1440),
('cshiic0sjli6t52a9n0acdr79l', 0x5f7366325f617474726962757465737c613a313a7b733a32363a225f73656375726974792e6d61696e2e7461726765745f70617468223b733a33393a22687474703a2f2f7777772e6d797064662e74666c2f656e2f7072696e7465722f73686f772f3130223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532313031343638393b733a313a2263223b693a313532313031343638393b733a313a226c223b733a313a2230223b7d, 1521014689, 1440);
INSERT INTO `sessions` (`sess_id`, `sess_data`, `sess_time`, `sess_lifetime`) VALUES
('cssibinu3a02cpj4359qqovdmc', 0x5f7366325f617474726962757465737c613a323a7b733a31373a225f637372662f6170706c69636174696f6e223b733a34333a226a565836477a6957797a456b314738793073785f7734555659554f3947494c6c42657248776f715469366f223b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532303433353730333b733a313a2263223b693a313532303433323434383b733a313a226c223b733a313a2230223b7d5f73796d666f6e795f666c61736865737c613a313a7b733a373a2273756363657373223b613a353a7b693a303b733a35353a224170706c69636174696f6e204761732054726561746d656e7420686173206265656e207375636365737366756c6c792063726561746564223b693a313b733a35363a224170706c69636174696f6e204761732054726561746d656e743120686173206265656e207375636365737366756c6c792063726561746564223b693a323b733a35353a224170706c69636174696f6e204761732054726561746d656e743120686173206265656e207375636365737366756c6c7920656469746564223b693a333b733a35353a224170706c69636174696f6e204761732054726561746d656e743120686173206265656e207375636365737366756c6c7920656469746564223b693a343b733a35353a224170706c69636174696f6e204761732054726561746d656e743120686173206265656e207375636365737366756c6c7920656469746564223b7d7d, 1520435703, 1440),
('d45ssc3m7p8u6af9msantenefs', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3432373a22433a37343a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c557365726e616d6550617373776f7264546f6b656e223a3333393a7b613a333a7b693a303b4e3b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532313633353836333b733a313a2263223b693a313532313633323939363b733a313a226c223b733a313a2230223b7d, 1521635881, 1440),
('de94n4o9v4a2uqcm0k99ik3297', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532303539343432363b733a313a2263223b693a313532303538373335343b733a313a226c223b733a313a2230223b7d, 1520594426, 1440),
('djub4a1cv0vfggjasmkcsg7pqo', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532303834333837363b733a313a2263223b693a313532303834333837363b733a313a226c223b733a313a2230223b7d, 1520843876, 1440),
('dtosu2tg99h6celqlu3fpm4soj', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532313231393135333b733a313a2263223b693a313532313230383430383b733a313a226c223b733a313a2230223b7d, 1521219170, 1440),
('dtqrdeq50hbjfiqbnd59g61cjn', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532303532333039393b733a313a2263223b693a313532303532303832343b733a313a226c223b733a313a2230223b7d, 1520523099, 1440),
('ee4gi6esr4ch4br3svm69ista1', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532313132333636313b733a313a2263223b693a313532313132323530373b733a313a226c223b733a313a2230223b7d, 1521123661, 1440),
('fdeq7upa3jo485dpogoi5g4r2l', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532313133333133333b733a313a2263223b693a313532313133333133333b733a313a226c223b733a313a2230223b7d, 1521133134, 1440),
('fs9hq7dh0t0637r99g43kae4o4', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532313739363931373b733a313a2263223b693a313532313739363931373b733a313a226c223b733a313a2230223b7d, 1521796917, 1440),
('gil3620irhc6su9hfr19t0884f', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3432373a22433a37343a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c557365726e616d6550617373776f7264546f6b656e223a3333393a7b613a333a7b693a303b4e3b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532313536353434343b733a313a2263223b693a313532313536313438313b733a313a226c223b733a313a2230223b7d, 1521565444, 1440),
('h1o9evia4786de4fsof3use39f', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532303934323238363b733a313a2263223b693a313532303933373939383b733a313a226c223b733a313a2230223b7d, 1520942286, 1440),
('hg214hl35om1eiami293r45krc', 0x5f7366325f617474726962757465737c613a313a7b733a32363a225f73656375726974792e6d61696e2e7461726765745f70617468223b733a33393a22687474703a2f2f7777772e6d797064662e74666c2f656e2f61646d696e2f70726f64756374732f223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532313231333230393b733a313a2263223b693a313532313231333230393b733a313a226c223b733a313a2230223b7d, 1521213209, 1440),
('hq3o8dikqeragvhlpsuse9jf01', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532313034353531333b733a313a2263223b693a313532313033383535303b733a313a226c223b733a313a2230223b7d, 1521045514, 1440),
('i75h65rnj4ao0tie4b3bhkb9vf', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532313739373839343b733a313a2263223b693a313532313739363932303b733a313a226c223b733a313a2230223b7d, 1521797894, 1440),
('ignu53p725mtvaffg630tqk6g1', 0x5f7366325f617474726962757465737c613a313a7b733a32333a225f73656375726974792e6c6173745f757365726e616d65223b733a383a226173646661736466223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532313635313234383b733a313a2263223b693a313532313635303837333b733a313a226c223b733a313a2230223b7d, 1521651248, 1440),
('iobq1t94eti5cc2tdfl8lnbr1v', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532303538353831393b733a313a2263223b693a313532303538353238363b733a313a226c223b733a313a2230223b7d, 1520585819, 1440),
('iumsi275vsqc132s12g1lq2hc1', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532313437323039353b733a313a2263223b693a313532313437323039353b733a313a226c223b733a313a2230223b7d, 1521472095, 1440),
('jl96a1nni2f21l845dpurrp42e', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532313634323036313b733a313a2263223b693a313532313634303538393b733a313a226c223b733a313a2230223b7d, 1521642061, 1440),
('jlltkdv66m4f3h4p7pn6rni7nb', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532303837333434353b733a313a2263223b693a313532303837313333333b733a313a226c223b733a313a2230223b7d, 1520873445, 1440),
('kdemc0sq5g8rfrrp0bjho0f6d2', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532303834343737313b733a313a2263223b693a313532303834333933323b733a313a226c223b733a313a2230223b7d, 1520844772, 1440),
('l48d7rg7tumieis2lku5bs6131', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532313133313438303b733a313a2263223b693a313532313132353234383b733a313a226c223b733a313a2230223b7d, 1521131481, 1440),
('l5fgh788m24fe90img55c2nomv', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532303631313338313b733a313a2263223b693a313532303630373732363b733a313a226c223b733a313a2230223b7d, 1520611381, 1440),
('lf00rvjcd1qkmgjg54vaini15q', 0x5f7366325f617474726962757465737c613a343a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b733a31343a225f637372662f63617465676f7279223b733a34333a22497373744e69322d6830354d6b37317a6e39566e646e6a4f48484679787148555a37507a43355969696b6f223b733a31373a225f637372662f6170706c69636174696f6e223b733a34333a22754a375f46716751744955694976496649534636416335737650677930324b7570715774336933656a3867223b733a31333a225f637372662f70726f64756374223b733a34333a2258474b744d53447961446972306f56615535515252597371645041394a53344f644c6d486c464f43354b6f223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532303236323730343b733a313a2263223b693a313532303236323730343b733a313a226c223b733a313a2230223b7d, 1520262704, 1440),
('lh3cc4i4vm2lt2o90sg9nukpp6', 0x5f7366325f617474726962757465737c613a323a7b733a31383a225f637372662f61757468656e746963617465223b733a34333a2253304335707a6536746e385f46702d6150586f5652365873515931776c654f6e5264737a6f6f4a46586b30223b733a31343a225f73656375726974795f6d61696e223b733a3432373a22433a37343a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c557365726e616d6550617373776f7264546f6b656e223a3333393a7b613a333a7b693a303b4e3b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532303334363936383b733a313a2263223b693a313532303334363532303b733a313a226c223b733a313a2230223b7d, 1520346968, 1440),
('lieig6kdcpbqogsom8fac5gbs3', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532323133353735383b733a313a2263223b693a313532323133353735363b733a313a226c223b733a313a2230223b7d, 1522135759, 1440),
('n8oispf67h4p0ub6q6v05ir983', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532313436313834353b733a313a2263223b693a313532313434373733323b733a313a226c223b733a313a2230223b7d, 1521461845, 1440),
('na40f06np1nfb6lb648gjmc8ck', 0x5f7366325f617474726962757465737c613a333a7b733a31383a225f637372662f61757468656e746963617465223b733a34333a22782d6a4e7637317249456533414c5f61714b7957532d34485970334c44354d5f4955424a6f506c315a514d223b733a31343a225f73656375726974795f6d61696e223b733a3432373a22433a37343a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c557365726e616d6550617373776f7264546f6b656e223a3333393a7b613a333a7b693a303b4e3b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b733a31343a225f637372662f63617465676f7279223b733a34333a225938556b3674465a6e322d4564466645506b3836414142755355663167486f6d6173744c794f686b664c63223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532303335353639363b733a313a2263223b693a313532303335353639303b733a313a226c223b733a313a2230223b7d, 1520355696, 1440),
('ndb7hik6ilfevh3q21uospki3j', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532303834363237343b733a313a2263223b693a313532303834363234333b733a313a226c223b733a313a2230223b7d, 1520846275, 1440),
('npr6vcsoq07ftk2u2ok0oi8lgn', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532303335303737303b733a313a2263223b693a313532303335303535353b733a313a226c223b733a313a2230223b7d, 1520350771, 1440),
('o1mr8a3r787ea9tfk19nommkqs', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532323736353635383b733a313a2263223b693a313532323736353333333b733a313a226c223b733a313a2230223b7d, 1522765659, 1440),
('ootr87t8v6c7e0mbgea7ujiicj', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532313533343634363b733a313a2263223b693a313532313533343634363b733a313a226c223b733a313a2230223b7d, 1521534646, 1440),
('par6rlhm2j1e5pqkdk6nf35qbm', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532303532383032323b733a313a2263223b693a313532303532363531323b733a313a226c223b733a313a2230223b7d, 1520528022, 1440),
('pl7dkrh99skaqm9vnrlcg1ir6i', 0x5f7366325f617474726962757465737c613a323a7b733a31343a225f637372662f63617465676f7279223b733a34333a22453375567152553743705635704a6a484255714c3178326278697465487036726c634d6a76636e52697949223b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532303431363236363b733a313a2263223b693a313532303431323739303b733a313a226c223b733a313a2230223b7d5f73796d666f6e795f666c61736865737c613a313a7b733a373a2273756363657373223b613a31303a7b693a303b733a34393a2243617465676f727920496e647573747269616c20686173206265656e207375636365737366756c6c792063726561746564223b693a313b733a36333a2243617465676f7279204368656d6963616c202620506574726f6c6368656d6963616c20686173206265656e207375636365737366756c6c7920656469746564223b693a323b733a35313a2243617465676f727920466f6f64202620506861726d6120686173206265656e207375636365737366756c6c7920656469746564223b693a333b733a34383a2243617465676f7279204f696c20262047617320686173206265656e207375636365737366756c6c792063726561746564223b693a343b733a36333a2243617465676f7279204368656d6963616c202620506574726f6c6368656d6963616c20686173206265656e207375636365737366756c6c7920656469746564223b693a353b733a36333a2243617465676f7279204368656d6963616c202620506574726f6c6368656d6963616c20686173206265656e207375636365737366756c6c7920656469746564223b693a363b733a36333a2243617465676f7279204368656d6963616c202620506574726f6c6368656d6963616c20686173206265656e207375636365737366756c6c7920656469746564223b693a373b733a35313a2243617465676f727920466f6f64202620506861726d6120686173206265656e207375636365737366756c6c7920656469746564223b693a383b733a35343a2243617465676f72792057617465722054726561746d656e7420686173206265656e207375636365737366756c6c792063726561746564223b693a393b733a35353a2243617465676f727920506f7765722047656e65726174696f6e20686173206265656e207375636365737366756c6c792063726561746564223b7d7d, 1520416266, 1440),
('q8nm1ag2khdj02hqnp27eglup3', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532323430343634383b733a313a2263223b693a313532323430343634383b733a313a226c223b733a313a2230223b7d, 1522404649, 1440),
('qa3n6ikmpor88bqqvb874p28ti', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532303834333837363b733a313a2263223b693a313532303834333837363b733a313a226c223b733a313a2230223b7d, 1520843876, 1440),
('qccaav8inq4jbsv1p8go0if7cu', 0x5f7366325f617474726962757465737c613a323a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b733a31333a225f637372662f70726f64756374223b733a34333a22324c71484b576f5070346c49785330336d6856554e766d6b424e5035596a4b4b643436632d386c4c2d696f223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532303531303239333b733a313a2263223b693a313532303530373137383b733a313a226c223b733a313a2230223b7d, 1520510293, 1440),
('qcdf20tu95ukcbue1eskhvq71d', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532313632313737333b733a313a2263223b693a313532313632313337343b733a313a226c223b733a313a2230223b7d, 1521621774, 1440),
('qiu55afh1niupm4kjj586ckkkr', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532303333353132353b733a313a2263223b693a313532303333353132353b733a313a226c223b733a313a2230223b7d, 1520335125, 1440),
('qt26pobai8bit6ccs3g1qsiq2f', 0x5f7366325f617474726962757465737c613a313a7b733a31383a225f637372662f61757468656e746963617465223b733a34333a224658514a77476575783354465664556851686d3968796d6a765f583939353535542d426a746e7a4a7a4b6f223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532303333363239323b733a313a2263223b693a313532303333363239323b733a313a226c223b733a313a2230223b7d, 1520336292, 1440),
('r8hk7fo9atpd44m549ib05u4k6', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532303333313233373b733a313a2263223b693a313532303333313233373b733a313a226c223b733a313a2230223b7d, 1520331237, 1440);
INSERT INTO `sessions` (`sess_id`, `sess_data`, `sess_time`, `sess_lifetime`) VALUES
('ra2bmls901116gm4be2fij8mnu', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532313632383232383b733a313a2263223b693a313532313632333832323b733a313a226c223b733a313a2230223b7d, 1521628228, 1440),
('rggjmr4so6ja0akdmlo5leoqqt', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532313534373638313b733a313a2263223b693a313532313534363832303b733a313a226c223b733a313a2230223b7d, 1521547698, 1440),
('rto4nnktpvhk1j5uohvp0otlhr', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532303530323330383b733a313a2263223b693a313532303530303334343b733a313a226c223b733a313a2230223b7d5f73796d666f6e795f666c61736865737c613a313a7b733a373a2273756363657373223b613a313a7b693a303b733a34333a224170706c69636174696f6e204761732054726561746d656e7420636f72726563746c792072656d6f766564223b7d7d, 1520502308, 1440),
('s7atbl03oqi8j68olkkvbam986', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532303834383437353b733a313a2263223b693a313532303834383132313b733a313a226c223b733a313a2230223b7d, 1520848476, 1440),
('sa03n4g67gaam9hkl78uc5ucik', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532313138393532313b733a313a2263223b693a313532313138393532313b733a313a226c223b733a313a2230223b7d, 1521189521, 1440),
('sbqtrficemjh3favkl714pffo2', 0x5f7366325f617474726962757465737c613a313a7b733a32363a225f73656375726974792e6d61696e2e7461726765745f70617468223b733a34333a22687474703a2f2f7777772e6d797064662e74666c2f656e2f7072696e7465722f646f776e6c6f61642f3131223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532313733323638343b733a313a2263223b693a313532313733323434383b733a313a226c223b733a313a2230223b7d, 1521732685, 1440),
('skq5h0b9nj64n49ehcvitl2c1v', 0x5f7366325f617474726962757465737c613a323a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b733a31373a225f637372662f6170706c69636174696f6e223b733a34333a2242724b6f332d41776c534150555f686b6157755251694f5346653376724778524b6d6d5a33484952425749223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532303434303230383b733a313a2263223b693a313532303433383239383b733a313a226c223b733a313a2230223b7d5f73796d666f6e795f666c61736865737c613a313a7b733a373a2273756363657373223b613a323a7b693a303b733a37333a224170706c69636174696f6e20466c756964692064692070726f636573736f20696e2072616666696e6572696120686173206265656e207375636365737366756c6c7920656469746564223b693a313b733a34333a224170706c69636174696f6e204761732054726561746d656e7420636f72726563746c792072656d6f766564223b7d7d, 1520440209, 1440),
('soas9h5egtir8c4f1456591rc8', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532303630343632343b733a313a2263223b693a313532303630333436343b733a313a226c223b733a313a2230223b7d, 1520604624, 1440),
('trm6m2m5tb2ocb1p2d6icalc8f', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532303834333837353b733a313a2263223b693a313532303834333837353b733a313a226c223b733a313a2230223b7d, 1520843876, 1440),
('u0g1hkkbkfrdj3ukcubi9ck2ja', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532313733323739363b733a313a2263223b693a313532313733323432343b733a313a226c223b733a313a2230223b7d, 1521732796, 1440),
('ub8p4m4q6r9rrgtg4k078borgk', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532313033373035363b733a313a2263223b693a313532313033353230363b733a313a226c223b733a313a2230223b7d, 1521037056, 1440),
('v0li9kqq2jgpd1r7r0qq5hur3q', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532323233323535343b733a313a2263223b693a313532323233323535343b733a313a226c223b733a313a2230223b7d, 1522232554, 1440),
('ve7a8hmnfgk5f8nl0nlpnusr5l', 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f73656375726974795f6d61696e223b733a3435393a22433a36383a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c52656d656d6265724d65546f6b656e223a3337373a7b613a333a7b693a303b733a33323a226435653238326261363961373431313731383331623830626262643563323764223b693a313b733a343a226d61696e223b693a323b733a3239393a22613a343a7b693a303b433a31353a224170705c456e746974795c55736572223a3130323a7b613a333a7b693a303b693a313b693a313b733a353a2261646d696e223b693a323b733a36303a2224327924313324433552473249573138514f37507437326c597774767554654957367a464b312e344c6e6a5747724e2f704d6b706f4f30616e495836223b7d7d693a313b623a313b693a323b613a313a7b693a303b4f3a34313a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c65223a313a7b733a34373a220053796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c526f6c655c526f6c6500726f6c65223b733a31303a22524f4c455f41444d494e223b7d7d693a333b613a303a7b7d7d223b7d7d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313532313032393238313b733a313a2263223b693a313532313032363530343b733a313a226c223b733a313a2230223b7d, 1521029281, 1440);

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
(3, 'asdasdads', '<p>asdasdasdadsasd</p>', '2018-03-26 16:16:15', '2018-03-26 16:16:15', '2018-03-26 16:16:19');

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
(6, 3, 'en', 'text', '<p>asdasdasdadsasd</p>');

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
(7, '', '<p>testo vuoto lalalalala</p>', '2018-03-26 17:09:08', '2018-03-26 17:09:08', NULL);

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
(14, 7, 'en', 'text', '<p>testo vuoto lalalalala</p>');

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
(2, 2, 'truffolone', '$2y$13$F7dMLvmtIoIdIb8Nawy/3uqAhlHgMJ/qYdV17SzWVyOYKAqD7yoJC', 'dverra@gmail.com', 1, '2018-03-21 12:43:45', '2018-03-21 12:43:45', NULL);

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
-- Indici per le tabelle `page_attribute_name_values`
--
ALTER TABLE `page_attribute_name_values`
  ADD PRIMARY KEY (`radio_page_id`,`attribute_name_value_id`),
  ADD KEY `IDX_6A0F8292352276AF` (`radio_page_id`),
  ADD KEY `IDX_6A0F8292707D1509` (`attribute_name_value_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT per la tabella `application_translations`
--
ALTER TABLE `application_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT per la tabella `attribute_names`
--
ALTER TABLE `attribute_names`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT per la tabella `attribute_name_translations`
--
ALTER TABLE `attribute_name_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT per la tabella `attribute_name_value`
--
ALTER TABLE `attribute_name_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT per la tabella `attribute_values`
--
ALTER TABLE `attribute_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT per la tabella `attribute_value_translations`
--
ALTER TABLE `attribute_value_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT per la tabella `document_translations`
--
ALTER TABLE `document_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT per la tabella `image_page_translations`
--
ALTER TABLE `image_page_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT per la tabella `main_pages`
--
ALTER TABLE `main_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT per la tabella `main_page_translations`
--
ALTER TABLE `main_page_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT per la tabella `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT per la tabella `product_translations`
--
ALTER TABLE `product_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT per la tabella `radio_pages`
--
ALTER TABLE `radio_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT per la tabella `radio_page_translations`
--
ALTER TABLE `radio_page_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT per la tabella `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT per la tabella `table_pages`
--
ALTER TABLE `table_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT per la tabella `table_page_translations`
--
ALTER TABLE `table_page_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT per la tabella `text_pages`
--
ALTER TABLE `text_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT per la tabella `text_page_translations`
--
ALTER TABLE `text_page_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT per la tabella `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- Limiti per la tabella `page_attribute_name_values`
--
ALTER TABLE `page_attribute_name_values`
  ADD CONSTRAINT `FK_6A0F8292352276AF` FOREIGN KEY (`radio_page_id`) REFERENCES `radio_pages` (`id`),
  ADD CONSTRAINT `FK_6A0F8292707D1509` FOREIGN KEY (`attribute_name_value_id`) REFERENCES `attribute_name_value` (`id`);

--
-- Limiti per la tabella `product_translations`
--
ALTER TABLE `product_translations`
  ADD CONSTRAINT `FK_4B13F8EC232D562B` FOREIGN KEY (`object_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

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
