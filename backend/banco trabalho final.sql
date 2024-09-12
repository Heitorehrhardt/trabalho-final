-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.32-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para pescadoseutilitarios
CREATE DATABASE IF NOT EXISTS `pescadoseutilitarios` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `pescadoseutilitarios`;

-- Copiando estrutura para tabela pescadoseutilitarios.clientes
CREATE TABLE IF NOT EXISTS `clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `telefone` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `cpf` varchar(20) DEFAULT NULL,
  `senha` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- Copiando dados para a tabela pescadoseutilitarios.clientes: ~20 rows (aproximadamente)
INSERT INTO `clientes` (`id`, `nome`, `telefone`, `email`, `cpf`, `senha`) VALUES
	(1, 'Daniel', '943298643', NULL, NULL, NULL),
	(2, 'varas de pesca', NULL, NULL, NULL, NULL),
	(8, 'varas de pesca', NULL, NULL, NULL, NULL),
	(9, 'varas de pesca', NULL, NULL, NULL, NULL),
	(10, 'Varas', NULL, NULL, NULL, NULL),
	(11, 'Varas', NULL, NULL, NULL, NULL),
	(12, 'Varas', NULL, NULL, NULL, NULL),
	(13, 'Varas', NULL, NULL, NULL, NULL),
	(14, 'Varas', NULL, NULL, NULL, NULL),
	(15, 'Varas', NULL, NULL, NULL, NULL),
	(16, 'Varas', NULL, NULL, NULL, NULL),
	(17, 'Varas', NULL, NULL, NULL, NULL),
	(18, 'Varas', NULL, NULL, NULL, NULL),
	(19, 'Varas', NULL, NULL, NULL, NULL),
	(20, 'Varas', NULL, NULL, NULL, NULL),
	(21, 'Varas', NULL, NULL, NULL, NULL),
	(22, 'Varas', NULL, NULL, NULL, NULL),
	(23, 'Varas', NULL, NULL, NULL, NULL),
	(24, 'cleber', '17897287', NULL, NULL, NULL),
	(39, 'Cleberson', '47836843', NULL, NULL, NULL),
	(44, 'Cleberson', '47836843', 'Clebersontop', '4389743', 'boa');

-- Copiando estrutura para tabela pescadoseutilitarios.produtos
CREATE TABLE IF NOT EXISTS `produtos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `categoria` varchar(50) DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `descricao` varchar(160) DEFAULT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  `preco` decimal(20,6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela pescadoseutilitarios.produtos: ~0 rows (aproximadamente)
INSERT INTO `produtos` (`id`, `categoria`, `nome`, `descricao`, `imagem`, `preco`) VALUES
	(1, NULL, 'Daniel', NULL, NULL, NULL),
	(2, 'varas de pesca', 'Varas', 'Muito boas para pescar', 'https://static.netshoes.com.br/produtos/molinete-de-pesca-marine-sports-versus-2000-4-rolamentos-drag-5kg-recol:/06/ATY-1575-006/ATY-1575-006_zoom1.jpg?ts=1662503485&ims=326x', 78.600000);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
