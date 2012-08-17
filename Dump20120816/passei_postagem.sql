CREATE DATABASE  IF NOT EXISTS `passei` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `passei`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: passei
-- ------------------------------------------------------
-- Server version	5.5.25

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `postagem`
--

DROP TABLE IF EXISTS `postagem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `postagem` (
  `idpostagem` int(11) NOT NULL AUTO_INCREMENT,
  `texto` mediumtext COLLATE utf8_unicode_ci,
  `titulo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags` mediumtext COLLATE utf8_unicode_ci,
  `data` datetime DEFAULT NULL,
  `tipo` int(11) DEFAULT NULL,
  `idusuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`idpostagem`),
  KEY `idususario` (`idusuario`),
  CONSTRAINT `idususario` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`) ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Tabela que guarda as postagens do Passei.com';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `postagem`
--

LOCK TABLES `postagem` WRITE;
/*!40000 ALTER TABLE `postagem` DISABLE KEYS */;
INSERT INTO `postagem` VALUES (1,'<chamada><img src=\"https://lh5.googleusercontent.com/-1zyU6I0byhU/Ti1j3JdXWjI/AAAAAAAACBQ/0j_qonQ0r44/s800/legendas_230.jpg\" style=\"float:right;margin-bottom: 3%;\"/>O  U. FRAME é um festival internacional de vídeo universitário que está em sua 5° edição. As edições anteriores foram realizadas na Europa: três vezes em Portugal e uma na Espanha. Neste festival, serão exibidas obras produzidas por universitários de diversos países, avaliadas por um grupo de jurados composto por renomados profissionais e por um júri popular.</chamada>Trata-se de um evento de alcance mundial que tem como principal propósito criar intercâmbio de experiências entre diversas instituições de ensino nacionais e internacionais. Paralelamente à exibição da mostra competitiva, serão realizados workshops, palestras e debates que procurarão refletir sobre o novo mercado de produção audiovisual e suas implicações no âmbito dos cursos universitários na era da transição digital.','U.FRAME - 5º FESTIVAL INTERNACIONAL DE VÍDEO UNIVERSITÁRIO','#turismo/intercambio',NULL,12,1),(2,'<chamada>O  U. FRAME é um festival internacional de vídeo universitário que está em sua 5° edição. As edições anteriores foram realizadas na Europa: três vezes em Portugal e uma na Espanha. Neste festival, serão exibidas obras produzidas por universitários de diversos países, avaliadas por um grupo de jurados composto por renomados profissionais e por um júri popular.</chamada>Trata-se de um evento de alcance mundial que tem como principal propósito criar intercâmbio de experiências entre diversas instituições de ensino nacionais e internacionais. Paralelamente à exibição da mostra competitiva, serão realizados workshops, palestras e debates que procurarão refletir sobre o novo mercado de produção audiovisual e suas implicações no âmbito dos cursos universitários na era da transição digital.','U.FRAME - 5º FESTIVAL INTERNACIONAL DE VÍDEO UNIVERSITÁRIO','#turismo/intercambio',NULL,6,1),(3,'<chamada>O  U. FRAME é um festival internacional de vídeo universitário que está em sua 5° edição. As edições anteriores foram realizadas na Europa: três vezes em Portugal e uma na Espanha. Neste festival, serão exibidas obras produzidas por universitários de diversos países, avaliadas por um grupo de jurados composto por renomados profissionais e por um júri popular.</chamada>Trata-se de um evento de alcance mundial que tem como principal propósito criar intercâmbio de experiências entre diversas instituições de ensino nacionais e internacionais. Paralelamente à exibição da mostra competitiva, serão realizados workshops, palestras e debates que procurarão refletir sobre o novo mercado de produção audiovisual e suas implicações no âmbito dos cursos universitários na era da transição digital.','U.FRAME - 5º FESTIVAL INTERNACIONAL DE VÍDEO UNIVERSITÁRIO','#turismo/intercambio',NULL,6,1),(4,'<chamada>O  U. FRAME é um festival internacional de vídeo universitário que está em sua 5° edição. As edições anteriores foram realizadas na Europa: três vezes em Portugal e uma na Espanha. Neste festival, serão exibidas obras produzidas por universitários de diversos países, avaliadas por um grupo de jurados composto por renomados profissionais e por um júri popular.</chamada>Trata-se de um evento de alcance mundial que tem como principal propósito criar intercâmbio de experiências entre diversas instituições de ensino nacionais e internacionais. Paralelamente à exibição da mostra competitiva, serão realizados workshops, palestras e debates que procurarão refletir sobre o novo mercado de produção audiovisual e suas implicações no âmbito dos cursos universitários na era da transição digital.','U.FRAME - 5º FESTIVAL INTERNACIONAL DE VÍDEO UNIVERSITÁRIO','#turismo/intercambio',NULL,6,1),(5,'<chamada><img src=\"https://lh5.googleusercontent.com/-Xx8g938vMjg/TNFLj6Es-6I/AAAAAAAAAhw/FIyP-ncOVNE/s800/DSC00031.jpg\" /></chamada><iframe width=\"100%\" height=\"100%\" src=http://www.youtube.com/embed/DDU6Ya6Jies?rel=0 frameborder=0 allowfullscreen></iframe>','Programa Metodista Sustentável: educando para a Sustentabilidade','#casts/videocast',NULL,6,1);
/*!40000 ALTER TABLE `postagem` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-08-16  0:14:39
