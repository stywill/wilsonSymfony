-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           5.7.11 - MySQL Community Server (GPL)
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              9.3.0.5119
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para teste_wilson
CREATE DATABASE IF NOT EXISTS `teste_wilson` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `teste_wilson`;

-- Copiando estrutura para tabela teste_wilson.chamados
CREATE TABLE IF NOT EXISTS `chamados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cliente_id` int(11) DEFAULT NULL,
  `pedido_id` int(11) DEFAULT NULL,
  `nome` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `numero` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `titulo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `observacao` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Copiando dados para a tabela teste_wilson.chamados: ~12 rows (aproximadamente)
DELETE FROM `chamados`;
/*!40000 ALTER TABLE `chamados` DISABLE KEYS */;
INSERT INTO `chamados` (`id`, `cliente_id`, `pedido_id`, `nome`, `numero`, `email`, `titulo`, `observacao`, `created_at`, `updated_at`) VALUES
	(1, NULL, NULL, 'Isabel', 106, 'email@email.com', 'teste', 'fadfasfas', '2017-08-24 16:20:26', '2017-08-24 16:20:26'),
	(2, NULL, NULL, 'Isabel', 106, 'email@email.com', 'teste', 'fafasf', '2017-08-24 17:44:45', '2017-08-24 17:44:45'),
	(3, NULL, NULL, 'Isabel', 106, 'email@email.com', 'teste', 'fsdfsd', '2017-08-24 18:01:51', '2017-08-24 18:01:51'),
	(4, NULL, NULL, 'Isabel', 106, 'email@email.com', 'teste', 'gsfs', '2017-08-25 13:53:33', '2017-08-25 13:53:33'),
	(5, NULL, NULL, 'Isabel', 106, 'email2@email.com', 'teste', 'dfasdfasdf', '2017-08-25 13:55:43', '2017-08-25 13:55:43'),
	(6, NULL, NULL, 'Miguel', 105, 'email@email.com', 'teste', 'fasdfsdf', '2017-08-25 13:59:04', '2017-08-25 13:59:04'),
	(7, NULL, NULL, 'Isabel', 106, 'email@email.com', 'teste', 'fadfsd', '2017-08-25 14:10:49', '2017-08-25 14:10:49'),
	(8, NULL, NULL, 'Miguel', 104, 'email@email.com', 'teste', 'fff', '2017-08-25 14:12:27', '2017-08-25 14:12:27'),
	(9, NULL, NULL, 'Isabel', 106, 'email2@email.com', 'teste', 'fdsds', '2017-08-25 14:14:20', '2017-08-25 14:14:20'),
	(10, 8, NULL, 'Isabel', 106, 'teste@email.com', 'dasda', 'dasdsad', '2017-08-25 14:20:37', '2017-08-25 14:20:37'),
	(11, 8, 7, 'Isabel', 106, 'teste@email.com', 'teste', 'fsdfsdf', '2017-08-25 14:22:54', '2017-08-25 14:22:54'),
	(12, 8, 7, 'Isabel', 106, 'stywill@gmail.com', 'teste', 'gfgsdf', '2017-08-25 17:50:22', '2017-08-25 17:50:22');
/*!40000 ALTER TABLE `chamados` ENABLE KEYS */;

-- Copiando estrutura para tabela teste_wilson.clientes
CREATE TABLE IF NOT EXISTS `clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Copiando dados para a tabela teste_wilson.clientes: ~9 rows (aproximadamente)
DELETE FROM `clientes`;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` (`id`, `nome`, `email`, `created_at`, `updated_at`) VALUES
	(1, 'João', 'joao@email.com', '2017-08-24 14:33:14', '2017-08-24 14:33:15'),
	(2, 'Maria', 'maria@emailc.com', '2017-08-24 14:33:38', '2017-08-24 14:33:38'),
	(3, 'Pedro', 'pedro@pedro.com', '2017-08-24 14:33:51', '2017-08-24 14:33:52'),
	(4, 'Ana', 'ana@ana.com', '2017-08-24 14:35:14', '2017-08-24 14:35:14'),
	(5, 'Miguel', 'miguel@email.com', '2017-08-24 14:35:28', '2017-08-24 14:35:29'),
	(6, 'Manuel', '', '2017-08-24 14:36:22', '2017-08-24 14:36:23'),
	(7, 'Claudia', NULL, '2017-08-24 14:36:35', '2017-08-24 14:36:35'),
	(8, 'Isabel', 'email2@email.com', '2017-08-24 14:36:50', '2017-08-25 14:14:20'),
	(9, 'Juliana', NULL, '2017-08-24 14:37:05', '2017-08-24 14:37:05'),
	(10, 'Fabiana', NULL, '2017-08-24 14:37:18', '2017-08-24 14:37:18');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;

-- Copiando estrutura para tabela teste_wilson.pedidos
CREATE TABLE IF NOT EXISTS `pedidos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cliente_id` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Copiando dados para a tabela teste_wilson.pedidos: ~8 rows (aproximadamente)
DELETE FROM `pedidos`;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` (`id`, `cliente_id`, `numero`, `created_at`, `updated_at`) VALUES
	(1, 1, 100, '2017-08-24 14:37:53', '2017-08-24 14:37:54'),
	(2, 2, 101, '2017-08-24 14:38:10', '2017-08-24 14:38:10'),
	(3, 3, 102, '2017-08-24 14:38:22', '2017-08-24 14:38:23'),
	(4, 5, 104, '2017-08-24 14:38:39', '2017-08-24 14:38:39'),
	(5, 4, 103, '2017-08-24 14:38:52', '2017-08-24 14:38:53'),
	(6, 6, 105, '2017-08-24 14:39:05', '2017-08-24 14:39:05'),
	(7, 8, 106, '2017-08-24 14:39:23', '2017-08-24 14:39:24'),
	(8, 7, 107, '2017-08-24 14:39:39', '2017-08-24 14:39:39'),
	(9, 10, 108, '2017-08-24 14:39:54', '2017-08-24 14:39:55'),
	(10, 9, 110, '2017-08-24 14:40:07', '2017-08-24 14:40:08');
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
