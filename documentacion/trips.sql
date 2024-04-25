-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 24-04-2024 a las 18:24:43
-- Versión del servidor: 8.0.36-0ubuntu0.22.04.1
-- Versión de PHP: 8.1.2-1ubuntu2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `trips`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cities`
--

CREATE TABLE `cities` (
  `id` bigint UNSIGNED NOT NULL,
  `es_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ger_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lon` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cities`
--

INSERT INTO `cities` (`id`, `es_name`, `ger_name`, `lat`, `lon`, `country_id`, `created_at`, `updated_at`) VALUES
(1, 'Londres', 'London', '51.5085300', '-0.1257400', 1, '2024-04-23 15:21:01', '2024-04-23 15:21:01'),
(2, 'Manchester', 'Manchester', '53.4809500', '-2.2374300', 1, '2024-04-23 15:21:01', '2024-04-23 15:21:01'),
(3, 'Copenhage', 'Kopenhagen', '55.67594', '12.56553', 2, '2024-04-23 15:24:02', '2024-04-23 15:24:02'),
(4, 'Odense', 'Odense', '55.39594', '10.38831', 2, '2024-04-23 15:24:02', '2024-04-23 15:24:02'),
(5, 'Tokio', 'Tokyo', '35.6895', '139.69171', 4, '2024-04-23 15:26:02', '2024-04-23 15:26:02'),
(6, 'Hiroshima', 'Hiroshima', '34.4', '132.45', 4, '2024-04-23 15:26:02', '2024-04-23 15:26:02'),
(7, 'Bombay', 'Bombay', '19.07283', '72.88261', 3, '2024-04-23 15:26:49', '2024-04-23 15:26:49'),
(8, 'Bangalore', 'Bangalore', '12.9719400', '77.5936900', 3, '2024-04-23 15:27:33', '2024-04-23 15:27:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `countries`
--

CREATE TABLE `countries` (
  `id` bigint UNSIGNED NOT NULL,
  `es_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ger_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `initial` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `simbol` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `countries`
--

INSERT INTO `countries` (`id`, `es_name`, `ger_name`, `initial`, `simbol`, `currency_name`, `created_at`, `updated_at`) VALUES
(1, 'Inglaterra', 'England', 'GBP', '£', 'Libra esterlina', NULL, '2024-04-24 20:37:05'),
(2, 'Dinamarca', 'Dänemark', 'DKK', 'kr', 'Corona danesa', NULL, '2024-04-24 20:37:15'),
(3, 'India', 'Indien', 'INR', '₹', 'Rupia india', NULL, '2024-04-24 20:38:01'),
(4, 'Japón', 'Japan', 'JPY', '¥', 'Yen', NULL, '2024-04-24 20:38:17');

------------------------------------------

--
-- Estructura de tabla para la tabla `historicals`
--

CREATE TABLE `historicals` (
  `id` int NOT NULL,
  `country` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `budget_cop` int NOT NULL,
  `budget_changed` int NOT NULL,
  `weather` varchar(50) NOT NULL,
  `rate` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-
-- Indices de la tabla `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `countries_city_id` (`country_id`);

--
-- Indices de la tabla `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

-- Indices de la tabla `historicals`
--
ALTER TABLE `historicals`
  ADD PRIMARY KEY (`id`);

-
-- AUTO_INCREMENT de la tabla `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

-
ALTER TABLE `historicals`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

-
--
-- Filtros para la tabla `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `countries_city_id` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
