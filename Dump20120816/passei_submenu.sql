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
-- Table structure for table `submenu`
--

DROP TABLE IF EXISTS `submenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `submenu` (
  `idsubmenu` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idmenu` int(11) DEFAULT NULL,
  PRIMARY KEY (`idsubmenu`),
  KEY `idmenu` (`idmenu`),
  CONSTRAINT `idmenu` FOREIGN KEY (`idmenu`) REFERENCES `menu` (`idmenu`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submenu`
--

LOCK TABLES `submenu` WRITE;
/*!40000 ALTER TABLE `submenu` DISABLE KEYS */;
INSERT INTO `submenu` VALUES (1,'Intercambio','/intercambio',2),(2,'Formaturas','/formaturas',2),(3,'Viagens Nacionais','/viajemNacionais',2),(4,'Cursos Rápidos Internacionais','/cursosRapidosInternacionais',2),(5,'Primeiro Estágio','/primeiroEstagio',3),(6,'Dicas de Comportamento','/dicasDeComportamento',3),(7,'Vagas','/vagas',3),(8,'Aperfeiçoe seu CV','/aperfeicoeSeuCV',3),(9,'Festas Universitárias','/festasUniversitarias',4),(10,'Atléticas','/atleticas',4),(11,'Esportes','/esportes',4),(12,'Palestras','/palestras',4),(13,'Filantropia','/filantropia',4),(14,'Shows','/shows',4),(15,'Cultural','/cultural',4),(16,'Calendário','/calendario',4),(17,'Cursos','/cursos',5),(18,'Correção de Provas','/correcaoDeProvas',5),(19,'Dicas de concentração','/dicasDeConcentracao',5),(20,'Matérias','/materiais',5),(21,'Instituições','/instituicoes',5),(22,'Como se preparar','/comoSePreparar',5),(23,'Calendário','/calendario',5),(24,'Morando Sozinho','/morandoSozinho',6),(25,'Há Vagas','/haVagas',6),(26,'Procuram-se Vagas','/procura-seVagas',6),(27,'O que fazer quando','/oQueFazerQuando',6),(28,'Manhêeee','/manheee',6),(29,'Pro Uni','/proUni',7),(30,'Instituições','/instituicoes',7),(31,'Cursinhos','/cursinhos',7),(32,'Calendário','/calendario',7),(33,'Escolas de Inglês','/escolasDeIngles',7),(34,'Moda e Estilo','/modaEstilo',8),(35,'Bem Estar','/bemEstar',8),(36,'Na TV','/naTv',8),(37,'Faça você mesmo','/FacaVoceMesmo',8),(38,'Horóscopo','/horoscopo',8),(39,'Crédito Universitário','/creditoUniversitario',10),(40,'Contas Universitárias','/contasUniversitarias',10),(41,'Notícias','/noticias',10),(42,'Mundo','/mundo',10),(43,'Dólar','/dolar',10),(44,'Instituições','/instituicoes',9),(45,'Comer &Beber','/comerBeber',9),(46,'Estacionamentos','/estacionamentos',9),(47,'Rodízios e Vans','/rodizioVans',9),(48,'Xerox e Papelaria','/xeroxPapelaria',9),(49,'Diversão','/diversao',9),(50,'Agências Bancárias','/agenciasBancarias',9),(51,'Compre convites','/compreConvites',9),(52,'Videocast','/videocast',11),(53,'Podcast','/podcast',11),(54,'Cursos','/cursos',12),(55,'Instituições','/instituicoes',12),(56,'Qualificações','/qualificacoes',12),(57,'Reclame aqui','/reclameAqui',12),(58,'Gratuitos','/gratuitos',13),(59,'Técnicos','/tecnicos',13),(60,'Línguas','/linguas',13),(61,'Áreas','/areas',13);
/*!40000 ALTER TABLE `submenu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-08-16  0:14:43
