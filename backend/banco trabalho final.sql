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

-- Copiando dados para a tabela pescadoseutilitarios.clientes: ~21 rows (aproximadamente)
DELETE FROM `clientes`;
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
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela pescadoseutilitarios.produtos: ~29 rows (aproximadamente)
DELETE FROM `produtos`;
INSERT INTO `produtos` (`id`, `categoria`, `nome`, `descricao`, `imagem`, `preco`) VALUES
	(1, 'peixes', 'Peixe de rio tucunaré', 'Peixe de rio tucunaré, cada unidade', 'https://www.borapescar.com/wp-content/uploads/2017/09/tucunare-peixe.jpg', 78.000000),
	(2, 'Camping', 'Barracas i contra chuva', 'Para até 2 pessoas', 'https://images.tcdn.com.br/img/img_prod/1167671/barraca_amazonia_para_2_pessoas_coleman_em_poliester_20017_2_c921c6a7566bafa8249492e85526a99f_20240418052653.jpg', 500.000000),
	(3, 'peixes ', 'peixe de rio pacu', 'peixe de rio pacu, cada unidade', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQgFO0MRJwAnwPK0EMAm559EtgfvslXSI4Nw&s', 69.350000),
	(4, 'Camping', 'Corda azul', 'Para amarrar coisas', 'https://images.tcdn.com.br/img/img_prod/1153831/corda_trancada_de_polietileno_fio_10_0_azul_e_branca_com_alma_439_1_3037d6cfa5eccdef6d01e6ce2691b0fc.jpg', 80.500000),
	(5, 'Camping', 'Rede para dormir', 'Para camping e dormir em casa', 'https://images.tcdn.com.br/img/img_prod/461193/rede_de_dormir_amazonas_colorida_495_1_f1581d326b8b8efcee31ac9494e263a8_20210701162854.jpg', 259.500000),
	(6, 'peixes', 'Peixe de rio pirarucu', 'Peixe de rio pirarucu, cada unidade', 'https://pescadosdovalero.com.br/wp-content/uploads/2020/08/Eviscerado-Piraru.jpg', 270.900000),
	(7, 'Peixes', 'Carpas coloridas', 'Carpas coloridas cada unidade', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_ChToTq48AN5I8mf0oDyQOAYwqrtt8aCCuw&s', 30.240000),
	(8, 'peixes', 'Peixe de oceano paru', 'Peixe de oceano paru, cada unidade', 'https://i.pinimg.com/736x/48/2e/29/482e292265d12785258d00a0ef91c66b.jpg', 60.990000),
	(9, 'peixes', 'Peixe carpa ', 'Peixe carpa comum cada unidade', 'https://static5.depositphotos.com/1000853/443/i/450/depositphotos_4436900-stock-photo-carp.jpg', 46.900000),
	(10, 'peixes', 'Peixe de rio piraputanga', 'Peixe de rio piraputanga, cada unidade', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLVo8B03k1g2x5wwQBk3Dc_2arWmReZvq4JA&s', 270.000000),
	(11, 'peixes', 'Peixe de mar anchova', 'Peixe de mar anchova, cada unidadde', 'https://peixemania.com.br/wp-content/uploads/2023/07/Peixe-Anchova.webp', 98.800000),
	(88, 'Camping', 'Colchão inflavel', 'Bom para camping , e dormir em casa', 'https://images.tcdn.com.br/img/img_prod/573283/colchao_inflavel_casal_kala_colchao_de_ar_aveludado_para_acampamento_casa_sitio_etc_3341_1_6e0a66eb9e0dd9afba4d95639d03a6a0.jpg', 300.000000),
	(89, 'Iscas', 'Isca ', ' Artificial para sapos', 'https://images.tcdn.com.br/img/img_prod/415086/isca_artificial_pesca_soft_sapinho_w112_8_5cm_12g_2pcs_8817_1_168b60dc8cb09bf865fc535be646d805.jpg', 15.000000),
	(90, 'Iscas', 'Isca para pecar', 'Para peixes pequenos', 'https://images.tcdn.com.br/img/img_prod/692322/isca_artificial_para_pesca_streamer_jig_marine_sports_20g_1un_escolha_a_cor_2593_1_20200702002028.jpg', 10.000000),
	(91, 'Iscas', 'Isca orgânica', 'Não polui o meio ambiente', 'https://cdn.awsli.com.br/999/999348/produto/39504112/minhoca-de-laguna-2-bku6hd8oxj.jpg', 20.000000),
	(92, 'Iscas', 'Iscas naturais', 'Boa para alimentar os peixes e pescar', 'https://http2.mlstatic.com/D_NQ_NP_992075-MLU78053159267_072024-O.webp', 18.000000),
	(93, 'Varas de pesca', 'Vara', 'Pescar peixes grandes', 'https://produtgy.com.br/cdn/shop/products/VaradePescaPremiumUltraFishing2_800x.webp?v=1672352909', 400.000000),
	(94, 'Varas de pesca', 'Vara Pesca Brasil Millenium Maestro ', 'Top👍', 'https://iscaecompanhia.com.br/content/produtos/principal/18102021_141251_1.jpg', 300.000000),
	(95, 'Varas de pesca', 'Vara Pesca Ultra Light Pro Amental Fishing', 'Boa para pescar qualquer tipo de peixe', 'https://http2.mlstatic.com/D_NQ_NP_802998-MLB42937663825_072020-O.webp', 450.000000),
	(96, 'Varas de pesca', 'Vara Pesca Telescópica em Fibra Carbono ', 'Guardavel e resistente', 'https://fnac.com.br/wp-content/uploads/2023/04/vara-pesca-telescopica-em-fibra-carbono-10x-mais-resistente-1002-520.jpg', 600.000000),
	(97, 'Armadilhas', 'Covo Armadilha De Peixes Pequenos Lambari Tilápia ', 'Para peixes grandes', 'https://images-americanas.b2w.io/produtos/51539070/imagens/covo-armadilha-de-peixes-pequenos-lambari-tilapia-piau-aramado-galvanizado/51539073_1_large.jpg', 120.000000),
	(98, 'Armadilhas', 'Duas Armadilhas Covo Para Pesca Peixe Grande / Méd', '⬆Descriçao⬆', 'https://http2.mlstatic.com/D_NQ_NP_891503-MLB69502431286_052023-O.webp', 80.000000),
	(99, 'Armadilhas', 'Rede de Armadilha de Pesca Dobrável', 'È boa', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdU7sDVqCrmFx1_9MZUA2pbpNMzH3FXyUuXg&s', 300.000000),
	(100, 'Armadilhas', 'Armadilha ', 'Caseira feito de gravetos', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGcvxTjnq4Ts72mnD_7NINOc4wYnN2C05hEA&s', 70.000000),
	(101, 'Caiaques', 'Caiaque de Passeio Tipo Canoa Inflável para', 'Inflável', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSz0daIS7bA5JnFk1_ZbCZ_wo9OVNyiKh_Jg&s', 2000.000000),
	(102, 'Caiaques', 'Caiaque', 'Azul para rios', 'https://cdn.awsli.com.br/300x300/1163/1163761/produto/217055880/28a697e0-ec5d-42d7-b0c1-e43b4dfd369e-y83cjtlzdg.jpg', 4300.000000),
	(103, 'Caiaques', 'Caiaque para pesca', 'Caiaques para pesca clamufável', 'https://cdn.awsli.com.br/310x374/2436/2436364/produto/1694552575a40967c7c.jpg', 3040.000000),
	(104, 'Caiaques', 'Caiaque', 'Caiaque vermelho comum e barato', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVzN5rbLrWAhw1Id1lOwJUXBNi0QfZetnjNg&s', 1500.000000),
	(105, 'Ração', 'tgfrhh', 'rgeg', NULL, 35345.000000);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
