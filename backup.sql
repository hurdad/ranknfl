-- MySQL dump 10.13  Distrib 5.1.73, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: 
-- ------------------------------------------------------
-- Server version	5.1.73

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
-- Current Database: `ranknfl`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ranknfl` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ranknfl`;

--
-- Table structure for table `rankings`
--

DROP TABLE IF EXISTS `rankings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rankings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_id` int(11) NOT NULL,
  `year` smallint(6) NOT NULL,
  `team_id` int(11) NOT NULL,
  `pre` tinyint(3) unsigned DEFAULT NULL,
  `week1` tinyint(3) unsigned DEFAULT NULL,
  `week2` tinyint(3) unsigned DEFAULT NULL,
  `week3` tinyint(3) unsigned DEFAULT NULL,
  `week4` tinyint(3) unsigned DEFAULT NULL,
  `week5` tinyint(3) unsigned DEFAULT NULL,
  `week6` tinyint(3) unsigned DEFAULT NULL,
  `week7` tinyint(3) unsigned DEFAULT NULL,
  `week8` tinyint(3) unsigned DEFAULT NULL,
  `week9` tinyint(3) unsigned DEFAULT NULL,
  `week10` tinyint(3) unsigned DEFAULT NULL,
  `week11` tinyint(3) unsigned DEFAULT NULL,
  `week12` tinyint(3) unsigned DEFAULT NULL,
  `week13` tinyint(3) unsigned DEFAULT NULL,
  `week14` tinyint(3) unsigned DEFAULT NULL,
  `week15` tinyint(3) unsigned DEFAULT NULL,
  `week16` tinyint(3) unsigned DEFAULT NULL,
  `week17` tinyint(3) unsigned DEFAULT NULL,
  `week18` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `source_year_team_UNIQUE` (`source_id`,`year`,`team_id`),
  KEY `fk_rankings_sources_idx` (`source_id`),
  KEY `fk_rankings_teams_idx` (`team_id`),
  CONSTRAINT `fk_rankings_sources` FOREIGN KEY (`source_id`) REFERENCES `sources` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_rankings_teams` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rankings`
--

LOCK TABLES `rankings` WRITE;
/*!40000 ALTER TABLE `rankings` DISABLE KEYS */;
INSERT INTO `rankings` VALUES (3,1,2014,1,10,9,5,3,2,2,5,11,13,12,11,16,13,10,10,13,11,8,9),(4,1,2014,2,22,23,27,22,18,10,6,3,2,4,9,8,6,5,8,8,6,4,5),(5,1,2014,3,8,14,14,9,5,4,10,6,5,2,2,2,2,4,7,5,5,9,10),(6,1,2014,4,14,17,9,17,9,17,21,24,25,26,27,23,21,22,22,21,24,20,25),(7,1,2014,5,13,12,20,13,13,7,12,12,9,13,14,13,14,11,13,12,12,12,11),(8,1,2014,6,27,29,23,12,19,23,18,21,16,16,18,18,19,18,17,17,15,17,17),(9,1,2014,7,11,15,11,6,10,20,15,14,17,20,22,22,25,25,25,24,22,19,15),(10,1,2014,8,12,10,18,11,8,15,22,16,19,23,21,27,23,19,23,25,26,26,26),(11,1,2014,9,32,30,29,23,24,25,23,15,20,19,19,11,17,16,18,19,21,21,23),(12,1,2014,10,2,2,2,1,3,3,2,1,1,1,3,3,4,3,3,3,2,5,4),(13,1,2014,11,20,18,13,18,12,8,14,13,10,6,6,6,7,13,11,9,8,6,7),(14,1,2014,12,6,6,8,8,17,12,9,9,6,7,8,5,3,2,1,1,4,3,3),(15,1,2014,13,26,27,22,14,20,13,17,19,23,21,20,20,18,20,20,18,18,15,14),(16,1,2014,14,7,8,10,15,14,11,8,8,4,9,5,7,9,8,6,6,7,10,8),(17,1,2014,15,30,31,30,31,32,31,31,32,31,31,31,31,31,32,31,31,30,30,30),(18,1,2014,16,15,16,25,27,22,14,19,18,14,15,12,10,5,12,14,14,13,14,13),(19,1,2014,17,24,22,15,20,25,22,24,23,18,18,13,17,15,17,15,15,16,16,19),(20,1,2014,18,29,26,17,26,29,24,25,27,27,25,23,21,24,24,24,22,23,23,20),(21,1,2014,19,4,3,7,5,7,16,11,10,8,3,1,1,1,1,2,2,1,1,2),(22,1,2014,20,5,5,6,16,15,21,20,17,22,17,15,19,20,21,19,23,19,24,21),(26,1,2014,21,21,20,26,30,26,19,13,20,21,22,24,28,28,30,29,28,27,29,27),(27,1,2014,22,19,21,21,21,21,26,30,29,29,30,30,24,26,26,26,26,25,22,24),(28,1,2014,23,31,32,31,32,30,32,32,31,32,32,32,32,32,31,32,29,31,28,29),(29,1,2014,24,9,7,4,4,4,6,4,4,3,5,4,4,8,6,4,7,9,13,12),(30,1,2014,25,17,13,12,19,11,18,16,22,15,14,7,14,12,14,16,10,10,7,6),(31,1,2014,26,16,11,16,10,6,5,3,2,7,8,17,15,16,15,9,11,14,11,16),(32,1,2014,27,3,4,3,7,16,9,7,7,12,11,16,12,10,9,12,16,17,18,18),(33,1,2014,28,1,1,1,2,1,1,1,5,11,10,10,9,11,7,5,4,3,2,1),(34,1,2014,29,18,24,32,28,28,30,28,26,24,27,25,25,22,23,21,20,20,25,22),(35,1,2014,30,23,19,24,29,31,29,27,30,30,29,29,30,30,29,28,30,29,31,31),(36,1,2014,31,25,28,19,24,27,28,29,25,28,28,28,29,27,28,30,32,32,32,32),(37,1,2014,32,28,25,28,25,23,27,26,28,26,24,26,26,29,27,27,27,28,27,28),(38,2,2014,1,NULL,10,5,2,1,1,4,12,14,14,12,14,11,10,10,12,11,8,NULL),(39,2,2014,2,NULL,22,28,21,20,12,12,4,2,5,7,5,5,5,8,8,5,4,NULL),(40,2,2014,3,NULL,12,8,5,3,2,8,8,6,2,2,2,2,4,7,6,7,9,NULL),(41,2,2014,4,NULL,19,10,15,10,19,24,24,27,27,27,23,21,22,21,22,25,23,NULL),(42,2,2014,5,NULL,15,17,14,9,7,10,10,8,15,17,15,15,14,17,14,14,15,NULL),(43,2,2014,6,NULL,29,21,9,11,23,22,21,16,16,14,18,19,18,15,17,13,17,NULL),(44,2,2014,7,NULL,11,6,4,13,20,18,15,19,23,24,25,26,26,27,23,23,20,NULL),(45,2,2014,8,NULL,14,22,11,8,14,19,17,21,24,25,27,23,20,23,26,26,27,NULL),(46,2,2014,9,NULL,30,29,22,23,24,20,14,18,18,18,11,18,16,19,20,20,21,NULL),(47,2,2014,10,NULL,2,2,1,6,5,3,1,1,1,3,3,4,3,3,3,2,5,NULL),(48,2,2014,11,NULL,21,15,19,15,8,14,13,11,9,9,8,8,11,9,9,8,6,NULL),(49,2,2014,12,NULL,4,7,8,16,9,5,6,4,10,10,9,3,2,1,1,4,3,NULL),(50,2,2014,13,NULL,31,26,24,25,21,21,20,22,19,20,20,16,19,18,16,17,13,NULL),(51,2,2014,14,NULL,8,13,18,17,10,7,7,5,8,6,6,9,7,5,5,6,11,NULL),(52,2,2014,15,NULL,28,27,31,32,31,31,32,31,31,30,31,31,32,29,30,30,28,NULL),(53,2,2014,16,NULL,13,23,26,22,15,16,16,13,12,11,10,6,8,11,11,12,14,NULL),(54,2,2014,17,NULL,18,9,13,24,17,17,22,17,17,13,16,14,15,12,15,16,16,NULL),(55,2,2014,18,NULL,26,19,23,28,25,26,25,26,25,21,21,24,24,24,21,22,24,NULL),(56,2,2014,19,NULL,5,12,10,7,18,11,11,10,3,1,1,1,1,2,2,1,2,NULL),(57,2,2014,20,NULL,3,11,16,14,22,23,23,23,20,15,19,22,23,22,24,21,25,NULL),(58,2,2014,21,NULL,17,16,17,19,26,29,18,29,29,31,28,28,31,31,31,29,29,NULL),(59,2,2014,22,NULL,24,25,30,21,13,13,29,20,21,22,22,25,25,25,25,24,22,NULL),(60,2,2014,23,NULL,32,32,32,30,32,32,31,32,32,32,32,32,29,32,29,31,30,NULL),(61,2,2014,24,NULL,6,4,3,2,6,6,3,3,4,4,4,7,6,4,7,9,10,NULL),(62,2,2014,25,NULL,16,18,20,12,16,15,19,15,13,5,12,12,12,16,10,10,7,NULL),(63,2,2014,26,NULL,9,14,6,4,3,1,2,7,7,16,17,17,17,13,13,15,12,NULL),(64,2,2014,27,NULL,7,3,12,18,11,9,9,12,11,19,13,13,13,14,19,19,18,NULL),(65,2,2014,28,NULL,1,1,7,5,4,2,5,9,6,8,7,10,9,6,4,3,1,NULL),(66,2,2014,29,NULL,23,31,28,29,28,25,26,24,26,23,24,20,21,20,18,18,19,NULL),(67,2,2014,30,NULL,20,24,29,31,29,28,30,30,30,29,30,27,27,26,27,27,31,NULL),(68,2,2014,31,NULL,25,20,25,27,30,30,28,28,28,28,29,30,30,30,32,32,32,NULL),(69,2,2014,32,NULL,27,30,27,26,27,27,27,25,22,26,26,29,28,28,28,28,26,NULL),(70,4,2014,1,NULL,10,7,3,3,3,4,9,14,8,9,15,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(71,4,2014,2,NULL,21,26,25,21,11,7,2,2,5,11,9,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(72,4,2014,3,NULL,16,14,8,4,4,5,5,5,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(73,4,2014,4,NULL,14,8,15,13,19,23,24,25,26,27,23,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(74,4,2014,5,NULL,12,17,12,7,6,11,11,6,10,13,13,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(75,4,2014,6,NULL,31,24,13,17,21,17,21,16,16,15,17,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(76,4,2014,7,NULL,17,13,4,9,17,16,17,19,23,25,27,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(77,4,2014,8,NULL,9,16,11,11,16,20,15,20,24,24,28,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(78,4,2014,9,NULL,28,28,23,22,22,21,14,17,17,16,11,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(79,4,2014,10,NULL,2,2,1,2,2,2,1,1,1,3,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(80,4,2014,11,NULL,18,12,19,12,7,15,13,8,4,4,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(81,4,2014,12,NULL,4,5,7,16,12,9,8,3,7,7,6,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(82,4,2014,13,NULL,25,22,14,19,13,18,19,22,19,22,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(83,4,2014,14,NULL,8,11,17,18,18,10,10,7,15,8,8,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(84,4,2014,15,NULL,30,30,31,32,32,32,32,31,31,31,31,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(85,4,2014,16,NULL,15,18,24,20,14,19,18,13,11,10,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(86,4,2014,17,NULL,27,21,22,24,24,24,23,18,18,14,16,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(87,4,2014,18,NULL,26,19,20,26,25,25,25,27,25,21,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(88,4,2014,19,NULL,6,10,9,10,15,13,12,10,3,2,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(89,4,2014,20,NULL,5,6,16,15,23,22,22,23,20,19,19,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(90,4,2014,21,NULL,23,20,21,23,27,27,27,28,28,29,24,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(91,4,2014,22,NULL,19,25,29,27,20,14,16,21,21,23,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(92,4,2014,23,NULL,32,32,32,30,31,31,29,32,32,32,32,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(93,4,2014,24,NULL,7,4,6,5,9,8,4,4,6,6,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(94,4,2014,25,NULL,13,9,18,8,10,12,20,15,14,5,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(95,4,2014,26,NULL,11,15,10,6,5,3,3,9,9,17,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(96,4,2014,27,NULL,3,3,5,14,8,6,6,11,13,18,14,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(97,4,2014,28,NULL,1,1,2,1,1,1,7,12,12,12,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(98,4,2014,29,NULL,20,31,28,29,29,29,31,24,27,20,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(99,4,2014,30,NULL,22,27,30,31,26,26,28,29,29,30,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(100,4,2014,31,NULL,29,23,26,28,30,30,26,30,30,28,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(101,4,2014,32,NULL,24,29,27,25,28,28,30,26,22,26,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(102,1,2015,1,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(103,1,2015,2,6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(104,1,2015,3,8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(108,1,2015,4,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(109,1,2015,5,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(112,1,2015,6,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(113,1,2015,7,16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(114,1,2015,8,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(115,1,2015,9,28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(116,1,2015,10,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(117,1,2015,11,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(118,1,2015,12,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(119,1,2015,13,17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(120,1,2015,14,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(121,1,2015,15,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(122,1,2015,16,14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(123,1,2015,17,15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(124,1,2015,18,24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(125,1,2015,19,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(126,1,2015,20,19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(127,1,2015,21,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(128,1,2015,22,23,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(129,1,2015,23,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(130,1,2015,24,11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(131,1,2015,25,9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(132,1,2015,26,13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(133,1,2015,27,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(134,1,2015,28,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(135,1,2015,29,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(136,1,2015,30,31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(137,1,2015,31,32,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(138,1,2015,32,27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(139,2,2015,1,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(140,2,2015,2,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(141,2,2015,3,6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(142,2,2015,4,23,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(143,2,2015,5,13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(144,2,2015,6,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(145,2,2015,7,15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(146,2,2015,8,24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(147,2,2015,9,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(148,2,2015,10,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(149,2,2015,11,11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(150,2,2015,12,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(151,2,2015,13,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(152,2,2015,14,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(153,2,2015,15,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(154,2,2015,16,8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(155,2,2015,17,16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(156,2,2015,18,17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(157,2,2015,19,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(158,2,2015,20,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(159,2,2015,21,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(160,2,2015,22,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(161,2,2015,23,28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(162,2,2015,24,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(163,2,2015,25,9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(164,2,2015,26,14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(165,2,2015,27,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(166,2,2015,28,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(167,2,2015,29,19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(168,2,2015,30,32,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(169,2,2015,31,31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(170,2,2015,32,27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `rankings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sources`
--

DROP TABLE IF EXISTS `sources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `url` text,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `selected` varchar(45) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sources`
--

LOCK TABLES `sources` WRITE;
/*!40000 ALTER TABLE `sources` DISABLE KEYS */;
INSERT INTO `sources` VALUES (1,'ESPN',NULL,1,'1'),(2,'NFL.com',NULL,1,'0'),(4,'SB Nation',NULL,0,'0');
/*!40000 ALTER TABLE `sources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teams` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `color` varchar(45) NOT NULL,
  `conference` varchar(45) DEFAULT NULL,
  `division` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_city_UNIQUE` (`name`,`city`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (1,'Bengals','Cincinnati','#FB4F14','AFC','North'),(2,'Cowboys','Dallas','#8C8B8A','NFC','East'),(3,'Cardinals','Arizona','#870619','NFC','West'),(4,'Falcons','Atlanta','#BD0D18','NFC','South'),(5,'Ravens','Baltimore','#280353','AFC','North'),(6,'Bills','Buffalo','#C60C30','AFC','East'),(7,'Panthers','Carolina','#0088CE','NFC','South'),(8,'Bears','Chicago','#DD4814','NFC','North'),(9,'Browns','Cleveland','#E34912','AFC','North'),(10,'Broncos','Denver','#002244','AFC','West'),(11,'Lions','Detroit','#006DB0','NFC','North'),(12,'Packers','Green Bay','#213D30','NFC','North'),(13,'Texans','Houston','#B31B34','AFC','South'),(14,'Colts','Indianapolis','#003B7B','AFC','South'),(15,'Jaguars','Jacksonville','#D0B239','AFC','South'),(16,'Chiefs','Kansas City','#F2C801','AFC','West'),(17,'Dolphins','Miami','#F5811F','AFC','East'),(18,'Vikings','Minnesota','#4F2682','NFC','North'),(19,'Patriots','New England','#0D254C','AFC','East'),(20,'Saints','New Orleans','#D2B887','NFC','South'),(21,'Jets','New York','#0C371D','AFC','East'),(22,'Giants','New York','#192F6B','NFC','East'),(23,'Raiders','Oakland','#000000','AFC','West'),(24,'Eagles','Philadelphia','#003B48','NFC','East'),(25,'Steelers','Pittsburgh','#F2C802','AFC','North'),(26,'Chargers','San Diego','#5B92E5','AFC','West'),(27,'49ers','San Francisco','#AF1E2C','NFC','West'),(28,'Seahawks','Seattle','#4EAE47','NFC','West'),(29,'Rams','St Louis','#13264B','NFC','West'),(30,'Buccaneers','Tampa Bay','#89765F','NFC','South'),(31,'Titans','Tennessee','#648FCC','AFC','South'),(32,'Redskins','Washington','#773141','NFC','East');
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-08-16  4:03:17
