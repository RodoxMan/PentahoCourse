-- --------------------------------------------------------
-- Servidor:                     localhost
-- Versão do servidor:           5.5.34 - MySQL Community Server (GPL)
-- OS do Servidor:               Win32
-- HeidiSQL Versão:              8.1.0.4649
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Copiando estrutura do banco de dados para test
CREATE DATABASE IF NOT EXISTS `etl2000` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_general_ci */;
USE `etl2000`;


-- Copiando estrutura para tabela test.exercicio1
CREATE TABLE IF NOT EXISTS `exercicio1` (
  `codigo` bigint(20) NOT NULL,
  `descricao` tinytext COLLATE latin1_general_ci,
  `ncm` double DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- Copiando dados para a tabela test.exercicio1: 0 rows
/*!40000 ALTER TABLE `exercicio1` DISABLE KEYS */;
/*!40000 ALTER TABLE `exercicio1` ENABLE KEYS */;


-- Copiando estrutura para tabela test.exercicio5
CREATE TABLE IF NOT EXISTS `exercicio5` (
  `id` int(5) NOT NULL,
  `nome` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `descricao` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci ROW_FORMAT=DYNAMIC;

-- Copiando dados para a tabela test.exercicio5: 5 rows
/*!40000 ALTER TABLE `exercicio5` DISABLE KEYS */;
INSERT INTO `exercicio5` (`id`, `nome`, `descricao`) VALUES
	(1, 'Produto A', 'Descricao A'),
	(2, 'Produto B', 'Descricao B'),
	(3, 'Produto C', 'Descricao C'),
	(4, 'Produto D', 'Descricao D'),
	(5, 'Produto E', 'Descricao E');
/*!40000 ALTER TABLE `exercicio5` ENABLE KEYS */;


-- Copiando estrutura para tabela test.exercicio5_copy
CREATE TABLE IF NOT EXISTS `exercicio5_copy` (
  `id` int(5) NOT NULL,
  `nome` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `descricao` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci ROW_FORMAT=DYNAMIC;

-- Copiando dados para a tabela test.exercicio5_copy: 5 rows
/*!40000 ALTER TABLE `exercicio5_copy` DISABLE KEYS */;
INSERT INTO `exercicio5_copy` (`id`, `nome`, `descricao`) VALUES
	(1, 'Produto A', 'Descricao A'),
	(2, 'Produto B', 'Descricao B'),
	(3, 'Produto C', 'Descricao C'),
	(4, 'Produto D', 'Descricao D'),
	(5, 'Produto E', 'Descricao E');
/*!40000 ALTER TABLE `exercicio5_copy` ENABLE KEYS */;


-- Copiando estrutura para tabela test.exercicio8
CREATE TABLE IF NOT EXISTS `exercicio8` (
  `nome` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `idade` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `profissao` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `salario` varchar(50) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- Copiando dados para a tabela test.exercicio8: 0 rows
/*!40000 ALTER TABLE `exercicio8` DISABLE KEYS */;
/*!40000 ALTER TABLE `exercicio8` ENABLE KEYS */;


-- Copiando estrutura para tabela test.vendas
CREATE TABLE IF NOT EXISTS `vendas` (
  `data` datetime DEFAULT NULL,
  `tipo_produto` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `quantidade` int(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- Copiando dados para a tabela test.vendas: 6 rows
/*!40000 ALTER TABLE `vendas` DISABLE KEYS */;
INSERT INTO `vendas` (`data`, `tipo_produto`, `quantidade`) VALUES
	('2010-01-20 00:00:00', 'Sapatos', 234),
	('2010-01-20 00:00:00', 'Queijos', 456),
	('2010-01-21 00:00:00', 'Sapatos', 256),
	('2010-01-21 00:00:00', 'Queijos', 156),
	('2010-01-22 00:00:00', 'Sapatos', 535),
	('2010-01-23 00:00:00', 'Queijos', 433);
/*!40000 ALTER TABLE `vendas` ENABLE KEYS */;


-- Copiando estrutura para tabela test.vendas_temporaria
CREATE TABLE IF NOT EXISTS `vendas_temporaria` (
  `data` datetime DEFAULT NULL,
  `tipo_produto` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `quantidade` int(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- Copiando dados para a tabela test.vendas_temporaria: 0 rows
/*!40000 ALTER TABLE `vendas_temporaria` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendas_temporaria` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
