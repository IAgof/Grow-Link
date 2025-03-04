-- MySQL dump 10.13  Distrib 5.5.43, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: market_dev
-- ------------------------------------------------------
-- Server version	5.5.43-0+deb8u1

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
-- Table structure for table `oc_address`
--

DROP TABLE IF EXISTS `oc_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `custom_field` text NOT NULL,
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=127 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_address`
--

LOCK TABLES `oc_address` WRITE;
/*!40000 ALTER TABLE `oc_address` DISABLE KEYS */;
INSERT INTO `oc_address` VALUES (23,26,'VVV','vvv','','','','','',0,0,''),(24,27,'csristina','tamames','','','','','',0,0,''),(21,24,'Visiona1','visiona1','','','','','',0,0,''),(22,25,'Vct','vct','','','','','',0,0,''),(20,23,'visiona','visiona','','','','','',0,0,''),(19,22,'Crisitna','Pérez','','','','','',0,0,''),(14,17,'Victor','Nuñez','','','','','',0,0,''),(15,18,'Antonio','Machine','','','','','',0,0,''),(16,19,'victor','Nuñez','','','','','',0,0,''),(17,20,'Victor','Numa','','','','','',0,0,''),(18,21,'victor','nn','','','','','',0,0,''),(25,28,'bbb','dsdsd','','','','','',0,0,''),(26,29,'victor','nunez','','diego velazquez 19','','','47250',0,0,''),(27,30,'Vct','eee','','diego v 12','','','47841',0,0,''),(28,23,'wert','wert','','wertwertewrtwert','','','3434',195,0,''),(29,23,'wert','wert','','wertwertewrtwert','','','3434',195,0,''),(30,31,'Administrador','QfreshCo','','','','','',0,0,''),(31,32,'Agro ','Oliva','','23444','','234234','',12,0,'a:0:{}'),(32,33,'Merca','Verduras','','','','','',0,0,''),(33,34,'Expo','Frutas','','','','','',0,0,''),(34,35,'casa','gutier','','','','','',0,0,''),(35,36,'italia','nostra','','','','','',0,0,''),(36,37,'iberian','embutidos','','','','','',0,0,''),(37,38,'Rosee','Vinos','','','','','',0,0,''),(38,39,'anchor','cervezas','','','','','',0,0,''),(39,40,'cibeles','cerveza','','','','','',0,0,''),(40,41,'einstok','cervezas','','','','','',0,0,''),(41,42,'Rising','Hop','','','','','',0,0,''),(42,43,'La virgen','cerveza','','','','','',0,0,''),(43,44,'Las Moradas','Viñedos','','','','','',0,0,''),(44,45,'arboleda','boutique','','','','','',0,0,''),(45,24,'visiona','ip','','edificio tiffan las rozas','','','44581',0,0,''),(46,24,'visiona','ip','','las rozas edificio tifan','','','28544',0,0,''),(47,46,'sensore','test','','','','','',0,0,''),(48,47,'delete','test','','','','','',0,0,''),(49,48,'checkout','test','','','','','',0,0,''),(50,49,'victor','nunez','','diego velazquez 19','','mojados','47250',195,0,''),(51,50,'victorn','victorn','','','','','',0,0,''),(52,51,'victor1','victor','','','','','',0,0,''),(53,52,'victor2','victor','','','','','',0,0,''),(54,53,'victor3','v','','','','','',0,0,''),(55,54,'victor4','v','','','','','',0,0,''),(56,55,'victor6','v','','','','','',0,0,''),(60,55,'victor6','v','','dicego velazquez','','','47250',0,0,''),(62,55,'victor6','v','','dicego velazquez','','',' 47250',0,0,''),(63,55,'victor6','v','','dicego velazquez','','','  47250',0,0,''),(64,55,'victor6','v','','dicego velazquez','','','   47250',0,0,''),(65,55,'victor6','v','','dicego velazquez','','','    47250',0,0,''),(66,55,'victor6','v','','dicego velazquez','','','     47250',0,0,''),(67,55,'victor6','v','','dicego velazquez','','','      4725',0,0,''),(68,55,'victor6','v','','dicego velazquez','','','       472',0,0,''),(69,55,'victor6','v','','dicego velazquez','','','        47',0,0,''),(70,55,'victor6','v','','dicego velazquez','','','         4',0,0,''),(71,55,'victor6','v','','dicego velazquez','','','          ',0,0,''),(72,55,'victor6','v','','dicego velazquez','','','          ',0,0,''),(73,55,'victor6','v','','dicego velazquez','','','          ',0,0,''),(74,55,'victor6','v','','dicego velazquez','','','          ',0,0,''),(75,55,'victor6','v','','dicego velazquez','','','          ',0,0,''),(76,55,'victor6','v','','dicego velazquez','','','          ',0,0,''),(77,55,'victor6','v','','dicego velazquez','','','          ',0,0,''),(78,55,'victor6','v','','dicego velazquez','','','          ',0,0,''),(79,55,'victor6','v','','dicego velazquez','','','          ',0,0,''),(80,55,'victor6','v','','dicego velazquez','','','          ',0,0,''),(81,55,'victor6','v','','dicego velazquez','','','          ',0,0,''),(82,55,'victor6','v','','dicego velazquez','','','          ',0,0,''),(83,55,'victor6','v','','dicego velazquez','','','          ',0,0,''),(84,55,'victor6','v','','dicego velazquez','','','          ',0,0,''),(85,55,'victor6','v','','dicego velazquez','','','          ',0,0,''),(86,55,'victor6','v','','dicego velazquez','','','          ',0,0,''),(87,55,'victor6','v','','dicego velazquez','','','          ',0,0,''),(88,55,'victor6','v','','dicego velazquez','','','          ',0,0,''),(89,55,'victor6','v','','dicego velazquez','','','          ',0,0,''),(90,55,'victor6','v','','dicego velazquez','','','          ',0,0,''),(91,55,'victor6','v','','dicego velazquez','','','          ',0,0,''),(92,55,'victor6','v','','dicego velazquez','','','          ',0,0,''),(93,55,'victor6','v','','dicego velazquez','','','          ',0,0,''),(94,55,'victor6','v','','dicego velazquez','','','          ',0,0,''),(95,55,'victor6','v','','dicego velazquez','','','          ',0,0,''),(96,55,'victor6','v','','dicego velazquez','','','          ',0,0,''),(97,55,'victor6','v','','dicego velazquez','','','          ',0,0,''),(98,55,'victor6','v','','dicego velazquez','','','          ',0,0,''),(99,55,'victor6','v','','dicego velazquez','','','          ',0,0,''),(100,55,'victor6','v','','dicego velazquez','','','          ',0,0,''),(101,55,'victor6','v','','dicego velazquez','','','          ',0,0,''),(102,24,'visiona','ip','','las rozas edificio tifan','','',' 28544',0,0,''),(103,56,'Sensor','Test','','','','','',0,0,''),(104,48,'checkout','test','','calle copenague edificio tifan','','','28933',0,0,''),(105,24,'visiona','ip','','las rozas edificio tifan','','','  28544',0,0,''),(106,24,'visiona','ip','','las rozas edificio tifan','','','   28544',0,0,''),(107,24,'visiona','ip','','las rozas edificio tifan','','','    28544',0,0,''),(108,24,'visiona','ip','','las rozas edificio tifan','','','     28544',0,0,''),(109,24,'visiona','ip','','las rozas edificio tifan','','','      2854',0,0,''),(110,24,'visiona','ip','','las rozas edificio tifan','','','       285',0,0,''),(111,24,'visiona','ip','','las rozas edificio tifan','','','        28',0,0,''),(112,24,'visiona','ip','','las rozas edificio tifan','','','         2',0,0,''),(113,24,'visiona','ip','','las rozas edificio tifan','','','          ',0,0,''),(114,24,'visiona','ip','','las rozas edificio tifan','','','          ',0,0,''),(115,24,'visiona','ip','','las rozas edificio tifan','','','          ',0,0,''),(116,24,'visiona','ip','','las rozas edificio tifan','','','          ',0,0,''),(117,24,'visiona','ip','','las rozas edificio tifan','','','          ',0,0,''),(118,24,'visiona','ip','','las rozas edificio tifan','','','          ',0,0,''),(119,24,'visiona','ip','','las rozas edificio tifan','','','          ',0,0,''),(120,24,'visiona','ip','','las rozas edificio tifan','','','          ',0,0,''),(121,24,'visiona','ip','','las rozas edificio tifan','','','          ',0,0,''),(122,57,'test','test','','','','','',0,0,''),(123,58,'victor7','nunez','','','','','',0,0,''),(124,59,'victor8','v','','','','','',0,0,''),(125,56,'Sensor','Test','','calle copenague','','',' ',0,0,''),(126,56,'Sensor','Test','','calle copenague','','','  ',0,0,'');
/*!40000 ALTER TABLE `oc_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_affiliate`
--

DROP TABLE IF EXISTS `oc_affiliate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_affiliate` (
  `affiliate_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_affiliate`
--

LOCK TABLES `oc_affiliate` WRITE;
/*!40000 ALTER TABLE `oc_affiliate` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_affiliate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_affiliate_activity`
--

DROP TABLE IF EXISTS `oc_affiliate_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_affiliate_activity` (
  `activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`activity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_affiliate_activity`
--

LOCK TABLES `oc_affiliate_activity` WRITE;
/*!40000 ALTER TABLE `oc_affiliate_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_affiliate_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_affiliate_login`
--

DROP TABLE IF EXISTS `oc_affiliate_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_affiliate_login` (
  `affiliate_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`affiliate_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_affiliate_login`
--

LOCK TABLES `oc_affiliate_login` WRITE;
/*!40000 ALTER TABLE `oc_affiliate_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_affiliate_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_affiliate_transaction`
--

DROP TABLE IF EXISTS `oc_affiliate_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_affiliate_transaction` (
  `affiliate_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_affiliate_transaction`
--

LOCK TABLES `oc_affiliate_transaction` WRITE;
/*!40000 ALTER TABLE `oc_affiliate_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_affiliate_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_api`
--

DROP TABLE IF EXISTS `oc_api`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_api` (
  `api_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `firstname` varchar(64) NOT NULL,
  `lastname` varchar(64) NOT NULL,
  `password` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_api`
--

LOCK TABLES `oc_api` WRITE;
/*!40000 ALTER TABLE `oc_api` DISABLE KEYS */;
INSERT INTO `oc_api` VALUES (1,'351PUeFlhYT08uWgdFuB67WQy7U9jlDdh5s1Zyd7NwyLgLrAQcCMaYdOVxN5ZQY6','','','MHyl6RjJEXVkiDkzfmC6BfKXTYTsprp1zddwvC5zaQa8TAyzn0vpW6CpVVYBDD23hWpSZlHz2iyLimBMcx2yt5eFQ2GU69OdV4vvf3kXcZjBBlNeYFTIBxNRqTmmS1Fov1ZRvApNaPOb1c6PiPYjDl1t5eVOVb3HSTZDUFRuUfLM8IbgY0Fbc6KXagmw7g4PzTTJYl3tGF5FNXllNqDpnODEuq1sMv8CESLd3FNALIFYgqAuXEZBSdFDK6vWsuZx',1,'2015-07-30 19:02:28','2015-07-30 19:02:28');
/*!40000 ALTER TABLE `oc_api` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_api_ip`
--

DROP TABLE IF EXISTS `oc_api_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_api_ip` (
  `api_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  PRIMARY KEY (`api_ip_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_api_ip`
--

LOCK TABLES `oc_api_ip` WRITE;
/*!40000 ALTER TABLE `oc_api_ip` DISABLE KEYS */;
INSERT INTO `oc_api_ip` VALUES (1,1,'127.0.0.1');
/*!40000 ALTER TABLE `oc_api_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_api_session`
--

DROP TABLE IF EXISTS `oc_api_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_api_session` (
  `api_session_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `token` varchar(32) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `session_name` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_session_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_api_session`
--

LOCK TABLES `oc_api_session` WRITE;
/*!40000 ALTER TABLE `oc_api_session` DISABLE KEYS */;
INSERT INTO `oc_api_session` VALUES (1,1,'mJAziNaZka7cG4hTHXmbTvkXKM1E2xlG','53frsbc7nnf0d8vbqsfcudqf81','temp_session_57078ac807a63','127.0.0.1','2016-04-08 12:41:12','2016-04-08 12:41:12');
/*!40000 ALTER TABLE `oc_api_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_attribute`
--

DROP TABLE IF EXISTS `oc_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_attribute`
--

LOCK TABLES `oc_attribute` WRITE;
/*!40000 ALTER TABLE `oc_attribute` DISABLE KEYS */;
INSERT INTO `oc_attribute` VALUES (16,4,1),(15,4,2),(14,3,2),(13,3,2),(12,3,1),(29,3,1),(30,4,1);
/*!40000 ALTER TABLE `oc_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_attribute_description`
--

DROP TABLE IF EXISTS `oc_attribute_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_attribute_description`
--

LOCK TABLES `oc_attribute_description` WRITE;
/*!40000 ALTER TABLE `oc_attribute_description` DISABLE KEYS */;
INSERT INTO `oc_attribute_description` VALUES (1,1,'Description'),(2,1,'No. of Cores'),(30,3,'Producto de temporada'),(2,3,'No. of Cores'),(3,3,'Clockspeed'),(29,3,'Medida'),(3,1,'Clockspeed'),(1,3,'Description'),(29,1,'Medida'),(30,1,'Producto de temporada');
/*!40000 ALTER TABLE `oc_attribute_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_attribute_group`
--

DROP TABLE IF EXISTS `oc_attribute_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_attribute_group`
--

LOCK TABLES `oc_attribute_group` WRITE;
/*!40000 ALTER TABLE `oc_attribute_group` DISABLE KEYS */;
INSERT INTO `oc_attribute_group` VALUES (3,2),(4,1);
/*!40000 ALTER TABLE `oc_attribute_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_attribute_group_description`
--

DROP TABLE IF EXISTS `oc_attribute_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_attribute_group_description`
--

LOCK TABLES `oc_attribute_group_description` WRITE;
/*!40000 ALTER TABLE `oc_attribute_group_description` DISABLE KEYS */;
INSERT INTO `oc_attribute_group_description` VALUES (4,3,'Producto de temporada'),(4,1,'Producto de temporada'),(3,1,'Medida'),(3,3,'Medida');
/*!40000 ALTER TABLE `oc_attribute_group_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_banner`
--

DROP TABLE IF EXISTS `oc_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_banner`
--

LOCK TABLES `oc_banner` WRITE;
/*!40000 ALTER TABLE `oc_banner` DISABLE KEYS */;
INSERT INTO `oc_banner` VALUES (6,'HP Products',1),(7,'seleccion de tiendas',1),(9,'home',1),(10,'prueba baner',1);
/*!40000 ALTER TABLE `oc_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_banner_image`
--

DROP TABLE IF EXISTS `oc_banner_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=105 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_banner_image`
--

LOCK TABLES `oc_banner_image` WRITE;
/*!40000 ALTER TABLE `oc_banner_image` DISABLE KEYS */;
INSERT INTO `oc_banner_image` VALUES (104,10,'','',0),(87,6,'index.php?route=product/manufacturer/info&amp;manufacturer_id=7','catalog/demo/compaq_presario.jpg',0),(103,7,'','catalog/FondoVerduras.jpg',0),(99,9,'','catalog/demo/slider/slider-01.jpg',1),(100,9,'','catalog/demo/slider/slider-02.jpg',2),(101,9,'','catalog/demo/slider/slider-03.jpg',3);
/*!40000 ALTER TABLE `oc_banner_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_banner_image_description`
--

DROP TABLE IF EXISTS `oc_banner_image_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  PRIMARY KEY (`banner_image_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_banner_image_description`
--

LOCK TABLES `oc_banner_image_description` WRITE;
/*!40000 ALTER TABLE `oc_banner_image_description` DISABLE KEYS */;
INSERT INTO `oc_banner_image_description` VALUES (87,3,6,'HP Banner'),(87,1,6,'HP Banner'),(103,1,7,'tiendas'),(99,1,9,'one'),(100,1,9,'two'),(101,1,9,'three'),(103,3,7,'tiendas'),(99,3,9,'one'),(100,3,9,'two'),(101,3,9,'three'),(104,3,10,'HOREEWAA'),(104,1,10,'ss');
/*!40000 ALTER TABLE `oc_banner_image_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_cart`
--

DROP TABLE IF EXISTS `oc_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_cart` (
  `cart_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `cart_id` (`customer_id`,`session_id`,`product_id`,`recurring_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_cart`
--

LOCK TABLES `oc_cart` WRITE;
/*!40000 ALTER TABLE `oc_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category`
--

DROP TABLE IF EXISTS `oc_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`category_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category`
--

LOCK TABLES `oc_category` WRITE;
/*!40000 ALTER TABLE `oc_category` DISABLE KEYS */;
INSERT INTO `oc_category` VALUES (97,'',0,0,1,0,1,'2016-03-07 11:23:19','2016-03-07 11:23:19'),(96,'',94,0,1,0,1,'2016-03-07 11:23:02','2016-03-07 11:23:02'),(94,'',0,0,1,0,1,'2016-03-07 11:22:18','2016-03-07 11:22:18'),(95,'',94,0,1,0,1,'2016-03-07 11:22:36','2016-03-07 11:22:36'),(85,'',0,0,1,0,1,'2016-03-07 11:15:10','2016-03-07 11:15:10'),(86,'',85,0,1,0,1,'2016-03-07 11:15:42','2016-03-07 11:15:42'),(87,'',85,0,1,0,1,'2016-03-07 11:16:28','2016-03-07 11:16:28'),(88,'',0,0,1,0,1,'2016-03-07 11:16:52','2016-03-07 11:21:53'),(89,'',88,0,1,0,1,'2016-03-07 11:17:23','2016-03-07 11:20:05'),(90,'',88,0,1,0,1,'2016-03-07 11:18:51','2016-03-07 11:19:12'),(91,'',88,0,1,0,1,'2016-03-07 11:19:46','2016-03-07 11:20:28'),(92,'',88,0,1,0,1,'2016-03-07 11:20:44','2016-03-07 11:20:44'),(93,'',88,0,1,0,1,'2016-03-07 11:21:18','2016-03-07 11:21:18');
/*!40000 ALTER TABLE `oc_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_description`
--

DROP TABLE IF EXISTS `oc_category_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_description`
--

LOCK TABLES `oc_category_description` WRITE;
/*!40000 ALTER TABLE `oc_category_description` DISABLE KEYS */;
INSERT INTO `oc_category_description` VALUES (85,1,'La Huerta','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Huerta','',''),(86,1,'La Fruta','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','fruta','',''),(87,1,'Las Hortalizas','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','hortalizas','',''),(88,1,'La Despensa','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','despensa','',''),(89,1,'Los Elaborados','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Elaborados','',''),(90,1,'El Aceite','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','aceite','',''),(91,1,'El Queso','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','queso','',''),(92,1,'La Pasta','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','pasta','',''),(93,1,'El Dulce','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','dulces','',''),(94,1,'La Bebida','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','bebida','',''),(95,1,'La Cerveza','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','cerveza','',''),(96,1,'El Vino','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','vino','',''),(97,1,'La Carne','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','carne','',''),(85,3,'La Huerta','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','',''),(86,3,'La Fruta','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','',''),(87,3,'Las Hortalizas','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','',''),(88,3,'La Despensa','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','',''),(89,3,'Los Elaborados','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','',''),(90,3,'El Aceite','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','',''),(91,3,'El Queso','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','',''),(92,3,'La Pasta','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','',''),(93,3,'El Dulce','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','',''),(94,3,'La Bebida','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','',''),(95,3,'La Cerveza','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','',''),(96,3,'El Vino','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','',''),(97,3,'La Carne','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','','');
/*!40000 ALTER TABLE `oc_category_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_filter`
--

DROP TABLE IF EXISTS `oc_category_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_filter`
--

LOCK TABLES `oc_category_filter` WRITE;
/*!40000 ALTER TABLE `oc_category_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_category_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_path`
--

DROP TABLE IF EXISTS `oc_category_path`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_path`
--

LOCK TABLES `oc_category_path` WRITE;
/*!40000 ALTER TABLE `oc_category_path` DISABLE KEYS */;
INSERT INTO `oc_category_path` VALUES (93,88,0),(92,92,1),(92,88,0),(91,88,0),(93,93,1),(87,85,0),(86,86,1),(87,87,1),(86,85,0),(85,85,0),(97,97,0),(90,90,1),(90,88,0),(96,96,1),(96,94,0),(95,95,1),(95,94,0),(91,91,1),(89,89,1),(89,88,0),(88,88,0),(94,94,0);
/*!40000 ALTER TABLE `oc_category_path` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_to_layout`
--

DROP TABLE IF EXISTS `oc_category_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_to_layout`
--

LOCK TABLES `oc_category_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_category_to_layout` DISABLE KEYS */;
INSERT INTO `oc_category_to_layout` VALUES (85,0,0),(87,0,0),(88,0,0),(92,0,0),(93,0,0),(86,0,0),(95,0,0),(91,0,0),(97,0,0),(96,0,0),(90,0,0),(89,0,0),(94,0,0);
/*!40000 ALTER TABLE `oc_category_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_to_store`
--

DROP TABLE IF EXISTS `oc_category_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_to_store`
--

LOCK TABLES `oc_category_to_store` WRITE;
/*!40000 ALTER TABLE `oc_category_to_store` DISABLE KEYS */;
INSERT INTO `oc_category_to_store` VALUES (85,0),(86,0),(87,0),(88,0),(89,0),(90,0),(91,0),(92,0),(93,0),(94,0),(95,0),(96,0),(97,0);
/*!40000 ALTER TABLE `oc_category_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_country`
--

DROP TABLE IF EXISTS `oc_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=259 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_country`
--

LOCK TABLES `oc_country` WRITE;
/*!40000 ALTER TABLE `oc_country` DISABLE KEYS */;
INSERT INTO `oc_country` VALUES (1,'Afghanistan','AF','AFG','',0,1),(2,'Albania','AL','ALB','',0,1),(3,'Algeria','DZ','DZA','',0,1),(4,'American Samoa','AS','ASM','',0,1),(5,'Andorra','AD','AND','',0,1),(6,'Angola','AO','AGO','',0,1),(7,'Anguilla','AI','AIA','',0,1),(8,'Antarctica','AQ','ATA','',0,1),(9,'Antigua and Barbuda','AG','ATG','',0,1),(10,'Argentina','AR','ARG','',0,1),(11,'Armenia','AM','ARM','',0,1),(12,'Aruba','AW','ABW','',0,1),(13,'Australia','AU','AUS','',0,1),(14,'Austria','AT','AUT','',0,1),(15,'Azerbaijan','AZ','AZE','',0,1),(16,'Bahamas','BS','BHS','',0,1),(17,'Bahrain','BH','BHR','',0,1),(18,'Bangladesh','BD','BGD','',0,1),(19,'Barbados','BB','BRB','',0,1),(20,'Belarus','BY','BLR','',0,1),(21,'Belgium','BE','BEL','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',0,1),(22,'Belize','BZ','BLZ','',0,1),(23,'Benin','BJ','BEN','',0,1),(24,'Bermuda','BM','BMU','',0,1),(25,'Bhutan','BT','BTN','',0,1),(26,'Bolivia','BO','BOL','',0,1),(27,'Bosnia and Herzegovina','BA','BIH','',0,1),(28,'Botswana','BW','BWA','',0,1),(29,'Bouvet Island','BV','BVT','',0,1),(30,'Brazil','BR','BRA','',0,1),(31,'British Indian Ocean Territory','IO','IOT','',0,1),(32,'Brunei Darussalam','BN','BRN','',0,1),(33,'Bulgaria','BG','BGR','',0,1),(34,'Burkina Faso','BF','BFA','',0,1),(35,'Burundi','BI','BDI','',0,1),(36,'Cambodia','KH','KHM','',0,1),(37,'Cameroon','CM','CMR','',0,1),(38,'Canada','CA','CAN','',0,1),(39,'Cape Verde','CV','CPV','',0,1),(40,'Cayman Islands','KY','CYM','',0,1),(41,'Central African Republic','CF','CAF','',0,1),(42,'Chad','TD','TCD','',0,1),(43,'Chile','CL','CHL','',0,1),(44,'China','CN','CHN','',0,1),(45,'Christmas Island','CX','CXR','',0,1),(46,'Cocos (Keeling) Islands','CC','CCK','',0,1),(47,'Colombia','CO','COL','',0,1),(48,'Comoros','KM','COM','',0,1),(49,'Congo','CG','COG','',0,1),(50,'Cook Islands','CK','COK','',0,1),(51,'Costa Rica','CR','CRI','',0,1),(52,'Cote D\'Ivoire','CI','CIV','',0,1),(53,'Croatia','HR','HRV','',0,1),(54,'Cuba','CU','CUB','',0,1),(55,'Cyprus','CY','CYP','',0,1),(56,'Czech Republic','CZ','CZE','',0,1),(57,'Denmark','DK','DNK','',0,1),(58,'Djibouti','DJ','DJI','',0,1),(59,'Dominica','DM','DMA','',0,1),(60,'Dominican Republic','DO','DOM','',0,1),(61,'East Timor','TL','TLS','',0,1),(62,'Ecuador','EC','ECU','',0,1),(63,'Egypt','EG','EGY','',0,1),(64,'El Salvador','SV','SLV','',0,1),(65,'Equatorial Guinea','GQ','GNQ','',0,1),(66,'Eritrea','ER','ERI','',0,1),(67,'Estonia','EE','EST','',0,1),(68,'Ethiopia','ET','ETH','',0,1),(69,'Falkland Islands (Malvinas)','FK','FLK','',0,1),(70,'Faroe Islands','FO','FRO','',0,1),(71,'Fiji','FJ','FJI','',0,1),(72,'Finland','FI','FIN','',0,1),(74,'France, Metropolitan','FR','FRA','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',1,1),(75,'French Guiana','GF','GUF','',0,1),(76,'French Polynesia','PF','PYF','',0,1),(77,'French Southern Territories','TF','ATF','',0,1),(78,'Gabon','GA','GAB','',0,1),(79,'Gambia','GM','GMB','',0,1),(80,'Georgia','GE','GEO','',0,1),(81,'Germany','DE','DEU','{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',1,1),(82,'Ghana','GH','GHA','',0,1),(83,'Gibraltar','GI','GIB','',0,1),(84,'Greece','GR','GRC','',0,1),(85,'Greenland','GL','GRL','',0,1),(86,'Grenada','GD','GRD','',0,1),(87,'Guadeloupe','GP','GLP','',0,1),(88,'Guam','GU','GUM','',0,1),(89,'Guatemala','GT','GTM','',0,1),(90,'Guinea','GN','GIN','',0,1),(91,'Guinea-Bissau','GW','GNB','',0,1),(92,'Guyana','GY','GUY','',0,1),(93,'Haiti','HT','HTI','',0,1),(94,'Heard and Mc Donald Islands','HM','HMD','',0,1),(95,'Honduras','HN','HND','',0,1),(96,'Hong Kong','HK','HKG','',0,1),(97,'Hungary','HU','HUN','',0,1),(98,'Iceland','IS','ISL','',0,1),(99,'India','IN','IND','',0,1),(100,'Indonesia','ID','IDN','',0,1),(101,'Iran (Islamic Republic of)','IR','IRN','',0,1),(102,'Iraq','IQ','IRQ','',0,1),(103,'Ireland','IE','IRL','',0,1),(104,'Israel','IL','ISR','',0,1),(105,'Italy','IT','ITA','',0,1),(106,'Jamaica','JM','JAM','',0,1),(107,'Japan','JP','JPN','',0,1),(108,'Jordan','JO','JOR','',0,1),(109,'Kazakhstan','KZ','KAZ','',0,1),(110,'Kenya','KE','KEN','',0,1),(111,'Kiribati','KI','KIR','',0,1),(112,'North Korea','KP','PRK','',0,1),(113,'Korea, Republic of','KR','KOR','',0,1),(114,'Kuwait','KW','KWT','',0,1),(115,'Kyrgyzstan','KG','KGZ','',0,1),(116,'Lao People\'s Democratic Republic','LA','LAO','',0,1),(117,'Latvia','LV','LVA','',0,1),(118,'Lebanon','LB','LBN','',0,1),(119,'Lesotho','LS','LSO','',0,1),(120,'Liberia','LR','LBR','',0,1),(121,'Libyan Arab Jamahiriya','LY','LBY','',0,1),(122,'Liechtenstein','LI','LIE','',0,1),(123,'Lithuania','LT','LTU','',0,1),(124,'Luxembourg','LU','LUX','',0,1),(125,'Macau','MO','MAC','',0,1),(126,'FYROM','MK','MKD','',0,1),(127,'Madagascar','MG','MDG','',0,1),(128,'Malawi','MW','MWI','',0,1),(129,'Malaysia','MY','MYS','',0,1),(130,'Maldives','MV','MDV','',0,1),(131,'Mali','ML','MLI','',0,1),(132,'Malta','MT','MLT','',0,1),(133,'Marshall Islands','MH','MHL','',0,1),(134,'Martinique','MQ','MTQ','',0,1),(135,'Mauritania','MR','MRT','',0,1),(136,'Mauritius','MU','MUS','',0,1),(137,'Mayotte','YT','MYT','',0,1),(138,'Mexico','MX','MEX','',0,1),(139,'Micronesia, Federated States of','FM','FSM','',0,1),(140,'Moldova, Republic of','MD','MDA','',0,1),(141,'Monaco','MC','MCO','',0,1),(142,'Mongolia','MN','MNG','',0,1),(143,'Montserrat','MS','MSR','',0,1),(144,'Morocco','MA','MAR','',0,1),(145,'Mozambique','MZ','MOZ','',0,1),(146,'Myanmar','MM','MMR','',0,1),(147,'Namibia','NA','NAM','',0,1),(148,'Nauru','NR','NRU','',0,1),(149,'Nepal','NP','NPL','',0,1),(150,'Netherlands','NL','NLD','',0,1),(151,'Netherlands Antilles','AN','ANT','',0,1),(152,'New Caledonia','NC','NCL','',0,1),(153,'New Zealand','NZ','NZL','',0,1),(154,'Nicaragua','NI','NIC','',0,1),(155,'Niger','NE','NER','',0,1),(156,'Nigeria','NG','NGA','',0,1),(157,'Niue','NU','NIU','',0,1),(158,'Norfolk Island','NF','NFK','',0,1),(159,'Northern Mariana Islands','MP','MNP','',0,1),(160,'Norway','NO','NOR','',0,1),(161,'Oman','OM','OMN','',0,1),(162,'Pakistan','PK','PAK','',0,1),(163,'Palau','PW','PLW','',0,1),(164,'Panama','PA','PAN','',0,1),(165,'Papua New Guinea','PG','PNG','',0,1),(166,'Paraguay','PY','PRY','',0,1),(167,'Peru','PE','PER','',0,1),(168,'Philippines','PH','PHL','',0,1),(169,'Pitcairn','PN','PCN','',0,1),(170,'Poland','PL','POL','',0,1),(171,'Portugal','PT','PRT','',0,1),(172,'Puerto Rico','PR','PRI','',0,1),(173,'Qatar','QA','QAT','',0,1),(174,'Reunion','RE','REU','',0,1),(175,'Romania','RO','ROM','',0,1),(176,'Russian Federation','RU','RUS','',0,1),(177,'Rwanda','RW','RWA','',0,1),(178,'Saint Kitts and Nevis','KN','KNA','',0,1),(179,'Saint Lucia','LC','LCA','',0,1),(180,'Saint Vincent and the Grenadines','VC','VCT','',0,1),(181,'Samoa','WS','WSM','',0,1),(182,'San Marino','SM','SMR','',0,1),(183,'Sao Tome and Principe','ST','STP','',0,1),(184,'Saudi Arabia','SA','SAU','',0,1),(185,'Senegal','SN','SEN','',0,1),(186,'Seychelles','SC','SYC','',0,1),(187,'Sierra Leone','SL','SLE','',0,1),(188,'Singapore','SG','SGP','',0,1),(189,'Slovak Republic','SK','SVK','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}',0,1),(190,'Slovenia','SI','SVN','',0,1),(191,'Solomon Islands','SB','SLB','',0,1),(192,'Somalia','SO','SOM','',0,1),(193,'South Africa','ZA','ZAF','',0,1),(194,'South Georgia &amp; South Sandwich Islands','GS','SGS','',0,1),(195,'Spain','ES','ESP','',0,1),(196,'Sri Lanka','LK','LKA','',0,1),(197,'St. Helena','SH','SHN','',0,1),(198,'St. Pierre and Miquelon','PM','SPM','',0,1),(199,'Sudan','SD','SDN','',0,1),(200,'Suriname','SR','SUR','',0,1),(201,'Svalbard and Jan Mayen Islands','SJ','SJM','',0,1),(202,'Swaziland','SZ','SWZ','',0,1),(203,'Sweden','SE','SWE','{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',1,1),(204,'Switzerland','CH','CHE','',0,1),(205,'Syrian Arab Republic','SY','SYR','',0,1),(206,'Taiwan','TW','TWN','',0,1),(207,'Tajikistan','TJ','TJK','',0,1),(208,'Tanzania, United Republic of','TZ','TZA','',0,1),(209,'Thailand','TH','THA','',0,1),(210,'Togo','TG','TGO','',0,1),(211,'Tokelau','TK','TKL','',0,1),(212,'Tonga','TO','TON','',0,1),(213,'Trinidad and Tobago','TT','TTO','',0,1),(214,'Tunisia','TN','TUN','',0,1),(215,'Turkey','TR','TUR','',0,1),(216,'Turkmenistan','TM','TKM','',0,1),(217,'Turks and Caicos Islands','TC','TCA','',0,1),(218,'Tuvalu','TV','TUV','',0,1),(219,'Uganda','UG','UGA','',0,1),(220,'Ukraine','UA','UKR','',0,1),(221,'United Arab Emirates','AE','ARE','',0,1),(222,'United Kingdom','GB','GBR','',1,1),(223,'United States','US','USA','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}',0,1),(224,'United States Minor Outlying Islands','UM','UMI','',0,1),(225,'Uruguay','UY','URY','',0,1),(226,'Uzbekistan','UZ','UZB','',0,1),(227,'Vanuatu','VU','VUT','',0,1),(228,'Vatican City State (Holy See)','VA','VAT','',0,1),(229,'Venezuela','VE','VEN','',0,1),(230,'Viet Nam','VN','VNM','',0,1),(231,'Virgin Islands (British)','VG','VGB','',0,1),(232,'Virgin Islands (U.S.)','VI','VIR','',0,1),(233,'Wallis and Futuna Islands','WF','WLF','',0,1),(234,'Western Sahara','EH','ESH','',0,1),(235,'Yemen','YE','YEM','',0,1),(237,'Democratic Republic of Congo','CD','COD','',0,1),(238,'Zambia','ZM','ZMB','',0,1),(239,'Zimbabwe','ZW','ZWE','',0,1),(242,'Montenegro','ME','MNE','',0,1),(243,'Serbia','RS','SRB','',0,1),(244,'Aaland Islands','AX','ALA','',0,1),(245,'Bonaire, Sint Eustatius and Saba','BQ','BES','',0,1),(246,'Curacao','CW','CUW','',0,1),(247,'Palestinian Territory, Occupied','PS','PSE','',0,1),(248,'South Sudan','SS','SSD','',0,1),(249,'St. Barthelemy','BL','BLM','',0,1),(250,'St. Martin (French part)','MF','MAF','',0,1),(251,'Canary Islands','IC','ICA','',0,1),(252,'Ascension Island (British)','AC','ASC','',0,1),(253,'Kosovo, Republic of','XK','UNK','',0,1),(254,'Isle of Man','IM','IMN','',0,1),(255,'Tristan da Cunha','TA','SHN','',0,1),(256,'Guernsey','GG','GGY','',0,1),(257,'Jersey','JE','JEY','',0,1),(258,'Español','','','',0,1);
/*!40000 ALTER TABLE `oc_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_coupon`
--

DROP TABLE IF EXISTS `oc_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `code` varchar(10) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_coupon`
--

LOCK TABLES `oc_coupon` WRITE;
/*!40000 ALTER TABLE `oc_coupon` DISABLE KEYS */;
INSERT INTO `oc_coupon` VALUES (4,'-10% Discount','2222','P',10.0000,0,0,0.0000,'2014-01-01','2020-01-01',10,'10',1,'2009-01-27 13:55:03'),(5,'Free Shipping','3333','P',0.0000,0,1,100.0000,'2014-01-01','2014-02-01',10,'10',0,'2009-03-14 21:13:53'),(6,'-10.00 Discount','1111','F',10.0000,0,0,10.0000,'2014-01-01','2020-01-01',100000,'10000',0,'2009-03-14 21:15:18');
/*!40000 ALTER TABLE `oc_coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_coupon_category`
--

DROP TABLE IF EXISTS `oc_coupon_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_coupon_category`
--

LOCK TABLES `oc_coupon_category` WRITE;
/*!40000 ALTER TABLE `oc_coupon_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_coupon_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_coupon_history`
--

DROP TABLE IF EXISTS `oc_coupon_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_coupon_history`
--

LOCK TABLES `oc_coupon_history` WRITE;
/*!40000 ALTER TABLE `oc_coupon_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_coupon_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_coupon_product`
--

DROP TABLE IF EXISTS `oc_coupon_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_coupon_product`
--

LOCK TABLES `oc_coupon_product` WRITE;
/*!40000 ALTER TABLE `oc_coupon_product` DISABLE KEYS */;
INSERT INTO `oc_coupon_product` VALUES (1,4,85);
/*!40000 ALTER TABLE `oc_coupon_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_currency`
--

DROP TABLE IF EXISTS `oc_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_currency`
--

LOCK TABLES `oc_currency` WRITE;
/*!40000 ALTER TABLE `oc_currency` DISABLE KEYS */;
INSERT INTO `oc_currency` VALUES (1,'Pound Sterling','GBP','£','','2',0.78930002,1,'2016-04-19 14:02:49'),(2,'US Dollar','USD','$','','2',1.13750005,1,'2016-04-19 14:02:49'),(3,'Euro','EUR','','€','2',1.00000000,1,'2016-04-19 14:02:49');
/*!40000 ALTER TABLE `oc_currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field`
--

DROP TABLE IF EXISTS `oc_custom_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `location` varchar(7) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field`
--

LOCK TABLES `oc_custom_field` WRITE;
/*!40000 ALTER TABLE `oc_custom_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field_customer_group`
--

DROP TABLE IF EXISTS `oc_custom_field_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field_customer_group`
--

LOCK TABLES `oc_custom_field_customer_group` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_customer_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field_description`
--

DROP TABLE IF EXISTS `oc_custom_field_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field_description`
--

LOCK TABLES `oc_custom_field_description` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field_value`
--

DROP TABLE IF EXISTS `oc_custom_field_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field_value`
--

LOCK TABLES `oc_custom_field_value` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field_value_description`
--

DROP TABLE IF EXISTS `oc_custom_field_value_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field_value_description`
--

LOCK TABLES `oc_custom_field_value_description` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_value_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_value_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer`
--

DROP TABLE IF EXISTS `oc_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL,
  `address_id` int(11) NOT NULL,
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer`
--

LOCK TABLES `oc_customer` WRITE;
/*!40000 ALTER TABLE `oc_customer` DISABLE KEYS */;
INSERT INTO `oc_customer` VALUES (25,1,0,'Vct','vct','vct@vct.com','','','1dca443d6e51c48e1337ecec8377f4e4af2091f0','beb5ae435','a:6:{s:40:\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjk1O30=\";i:5;s:40:\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEwMzt9\";i:1;s:40:\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEwNTt9\";i:19;s:40:\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjkxO30=\";i:3;s:40:\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEwNDt9\";i:1;s:40:\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg5O30=\";i:7;}','',0,22,'','127.0.0.1',1,1,0,'','2016-03-16 18:43:13'),(24,1,0,'Visiona1','visiona1','visiona1@visiona-ip.es','','','2e16ca957ee3562dff9275e6dc4cf7da42e93f18','6a1e86a2d','a:2:{s:40:\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEzNDt9\";i:1;s:40:\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjE1MDt9\";i:1;}','',0,21,'','127.0.0.1',1,1,0,'','2016-03-11 09:18:24'),(32,1,0,'Agro ','Oliva','agrooliva@agrooliva.es','658658658','','75899cb3ec2edb0eb92cf8ad7b2d74215f2a003c','90e3be0e5','a:0:{}','',0,31,'a:0:{}','127.0.0.1',0,1,0,'','2016-03-28 10:10:12'),(22,1,0,'Crisitna','Pérez','cperez@qfresh.co','','','925c65dc7ef9b169d55da5a94f61fa5d97c23dad','b1240c20a','a:4:{s:40:\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjk1O30=\";i:3;s:40:\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEwNjt9\";i:12;s:40:\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEwNzt9\";i:1;s:40:\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjkxO30=\";i:1;}','',0,19,'','127.0.0.1',1,1,0,'','2016-03-10 15:10:33'),(18,1,0,'Antonio','Machine','antonio@antonio.com','','','0247eeb2fa4a02473860a7f694478fb00f940f7c','1dbe202c0','a:0:{}','',0,15,'','127.0.0.1',1,1,0,'','2016-03-08 01:20:04'),(19,1,0,'victor','Nuñez','vnunmar@msn.com','','','a882c18c66585b459dd778ab6e22b895099dc682','5f71e5599','a:0:{}','',0,16,'','127.0.0.1',1,1,0,'','2016-03-08 17:00:55'),(21,1,0,'victor','nn','vnunmar@visiona-ip.es','','','1945a4bd57c55c9acb2f04d7071fb0d9fd638cf4','44a01db07','a:2:{s:40:\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg5O30=\";i:2;s:40:\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjk1O30=\";i:1;}','',0,18,'','127.0.0.1',1,1,0,'','2016-03-10 12:28:32'),(20,1,0,'Victor','Numa','vnunez@msn.com','','','e8880ba5dae339af2b722f83c38dfdbccedfa6e2','7be406e52','a:0:{}','',0,17,'','127.0.0.1',1,1,0,'','2016-03-09 15:06:02'),(17,1,0,'Victor22','Nuñez','vnunez@visiona-ip.es','','','dc1a2cb0157d7ec699447efa7fea57995008902b','eddb35d2c','a:1:{s:40:\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjk1O30=\";i:6;}','',0,14,'','127.0.0.1',1,1,0,'','2016-03-07 11:05:23'),(23,1,0,'visiona','visiona','visiona@visiona-ip.es','','','2021b8878be2c16267e69b961a4251bd9f5c6589','1fbb7b614','a:0:{}','',0,20,'','127.0.0.1',1,1,0,'','2016-03-11 09:01:03'),(26,1,0,'VVV','vvv','vvv@vvv.com','','','044a5b43b30a2f33dfec2804e76610527806524a','07c0ba836','a:4:{s:40:\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjkxO30=\";i:2;s:40:\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEwNjt9\";i:4;s:40:\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg5O30=\";i:3;s:40:\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjk1O30=\";i:1;}','',0,23,'','127.0.0.1',1,1,0,'','2016-03-16 19:00:59'),(27,1,0,'csristina','tamames','cristina@cristina.es','','','8d7197c7095ff6fa4a6308fcf42b2bdce364397a','6183c9151','a:1:{s:40:\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjk1O30=\";i:1;}','',0,24,'','127.0.0.1',1,1,0,'','2016-03-17 09:28:00'),(28,1,0,'bbb','dsdsd','vvvv@vvvv.com','','','3d186b276da2e1271edd7ab1b1a9da6bf5353121','3dd10a964','a:1:{s:40:\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjkzO30=\";i:4;}','',0,25,'','127.0.0.1',1,1,0,'','2016-03-17 17:24:30'),(29,1,0,'victor','nunez','vnunmar@vnunmar.es','','','a60009c43b4002ca89ac37cbbc069e99f01f2401','0a28ec7a1','a:2:{s:40:\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg5O30=\";i:1;s:40:\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEwMDt9\";i:1;}','',0,26,'','127.0.0.1',1,1,0,'','2016-03-18 09:58:25'),(30,1,0,'Vct','eee','vic@vis.com','','','fbe8e07ed061b845c92f37d7f3f8c0904c404c31','72744b307','a:1:{s:40:\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjkxO30=\";i:1;}','',0,27,'','127.0.0.1',1,1,0,'','2016-03-18 10:59:27'),(31,1,0,'Store','Test','store.test@qfresh.co','','','74e9489280247dff00a1742feb3024bbc201f7c4','32e9e03cc','a:2:{s:40:\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjE0Mjt9\";i:1;s:40:\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjE0Mzt9\";i:1;}','',0,30,'','127.0.0.1',1,1,0,'','2016-03-25 00:30:54'),(33,1,0,'Merca','Verduras','mercaverduras@mercaverduras.es','','','6a5b8bf2cbeb8e28f17d12ee5bc24ccb6fbf3064','95564b98f','a:0:{}','',0,32,'','127.0.0.1',1,1,0,'','2016-03-28 10:15:28'),(34,1,0,'Expo','Frutas','expofrutas@expofrutas.es','','','5e6b26af506878933e72558fa74cb6b1a6ca7d32','04f734af4','a:0:{}','',0,33,'','127.0.0.1',1,1,0,'','2016-03-28 10:28:01'),(35,1,0,'casa','gutier','casagutier@casagutier.es','','','f531edd8a47dee97b2bdd3cb86616980d861fdd2','f792f952f','a:0:{}','',0,34,'','127.0.0.1',1,1,0,'','2016-03-28 10:38:04'),(36,1,0,'italia','nostra','italianostra@italianostra.es','','','70228a2f81ec5b2f3537cc861bce73dd0aa96ec7','ed054154e','a:0:{}','',0,35,'','127.0.0.1',1,1,0,'','2016-03-28 10:40:57'),(37,1,0,'iberian','embutidos','iberian@iberian.es','','','8785762c2f391468e2e891a39e4a7d72ba2f3cdf','9b9b17ecb','a:0:{}','',0,36,'','127.0.0.1',1,1,0,'','2016-03-28 10:49:07'),(38,1,0,'Rosee','Vinos','rosee@rosee.es','','','2572485f21fec05f9d676485ffb7e8f29779c1c4','e3dc97866','a:0:{}','',0,37,'','127.0.0.1',1,1,0,'','2016-03-28 10:54:11'),(39,1,0,'anchor','cervezas','anchor@anchor.es','','','f99ac3d26f0ada58727a46fa1cdbef949a993ff0','bec5c31b3','a:0:{}','',0,38,'','127.0.0.1',1,1,0,'','2016-03-28 10:57:16'),(40,1,0,'cibeles','cerveza','cibeles@cibeles.es','','','1d510277908bb90e1501b8d836930653b37126e0','349dc768d','a:0:{}','',0,39,'','127.0.0.1',1,1,0,'','2016-03-28 11:00:24'),(41,1,0,'einstok','cervezas','einstok@einstok.es','','','b5a570d222c5b44da70bcb9ad21f7e0c6f087ac9','544a56205','a:0:{}','',0,40,'','127.0.0.1',1,1,0,'','2016-03-28 11:05:03'),(42,1,0,'Rising','Hop','rising@rising.es','','','61bb93860f8e032af88ff7e7a7d1ac66447f731d','58da678fd','a:0:{}','',0,41,'','127.0.0.1',1,1,0,'','2016-03-28 11:48:32'),(43,1,0,'La virgen','cerveza','lavirgen@lavirgen.es','','','7dedc0108cb3bf1b8ebf682821b75c0db4155c6c','88c237562','a:0:{}','',0,42,'','127.0.0.1',1,1,0,'','2016-03-28 11:52:24'),(44,1,0,'Las Moradas','Viñedos','moradas@moradas.es','','','09e372d0409f80e38b315ecfb8f3236d628ec5b1','92ec4e3f5','a:0:{}','',0,43,'','127.0.0.1',1,1,0,'','2016-03-28 11:57:09'),(45,1,0,'arboleda','boutique','arboleda@arboleda.es','','','70a9cca094d54a77b53de4c577e16c2f1dc21f25','3d814201f','a:0:{}','',0,44,'','127.0.0.1',1,1,0,'','2016-03-28 11:59:56'),(46,1,0,'sensor','test','sensor-test@qfresh.co','','','cfb7132291662ffaa09c34fc047a1743018d38c4','f77a4bf12','a:0:{}','',0,47,'','127.0.0.1',1,1,0,'','2016-03-28 16:51:56'),(47,1,0,'delete','test','delete.test@qfresh.co','','','790a43b6e937e9e7714705e7c037ecec6724521a','7a4717fe7','a:0:{}','',0,48,'','127.0.0.1',1,1,0,'','2016-03-28 17:44:08'),(48,1,0,'checkout','test','checkout.test@qfresh.co','','','08bb7ead157788756cd9c29623c2a8e5847d0a23','7da02498e','a:0:{}','',0,49,'','127.0.0.1',1,1,0,'','2016-03-28 17:49:01'),(49,1,0,'victor','nunez11','victor@victor.es','','','da84e7bad6a433a47b5c298844d3d27ef6e6af3c','2cd231c9f','a:1:{s:40:\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEzMzt9\";i:1;}','',0,50,'','127.0.0.1',1,1,0,'','2016-03-29 16:43:58'),(50,1,0,'victorn','victorn','victor@victor.com','','','ae7efb1f4167d64546edee82644f69a9129e3e9c','e7a4b850d','a:0:{}','',0,51,'','127.0.0.1',1,1,0,'','2016-03-30 10:05:09'),(51,1,0,'victor1','victor','victor1@victor1.es','','','c6698b5210655e997be62a3f0ed1e93f8c38f316','f67520321','a:0:{}','',0,52,'','127.0.0.1',1,1,0,'','2016-03-30 11:32:50'),(52,1,0,'victor2','victor','victor2@victor2.es','','','747a62e90a39ee1a38f61a771065e46e50f9a0bc','6be604b68','a:0:{}','',0,53,'','127.0.0.1',1,1,0,'','2016-03-30 11:35:06'),(53,1,0,'victor3','v','victor3@victor3.es','','','089125c56b04da389579bd97d3843648ae1f4ccc','d2b81d3db','a:0:{}','',0,54,'','127.0.0.1',1,1,0,'','2016-03-30 11:41:09'),(54,1,0,'victor4','v','victor4@victor4.es','','','342dacda02e1846bc0324bc0af1ce8af33be05bb','5ea241929','a:0:{}','',0,55,'','127.0.0.1',1,1,0,'','2016-03-30 11:42:28'),(55,1,0,'victor6','v','victor6@victor6.es','','','9c1f200fc8e8d2c63a633b6d0ca77afc19f628ed','b87c4dad5','a:4:{s:40:\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjE0OTt9\";i:1;s:40:\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEzNDt9\";i:1;s:40:\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjE0Mjt9\";i:1;s:40:\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjE1MTt9\";i:1;}','',0,56,'','127.0.0.1',1,1,0,'','2016-03-30 15:57:49'),(56,1,0,'Sensor','Test','sensor.test@qfresh.co','','','425ec2e073b6d3e9576519c62939f4821c7fd0d1','68aee740f','a:1:{s:40:\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEzMzt9\";i:1;}','',0,103,'','217.125.140.200',1,1,0,'','2016-03-31 05:08:43'),(57,1,0,'test','test','test@test.es','','','0243b3bf514da14ce9ea123919a9ef5bc6edbd3c','2d57c172a','a:0:{}','',0,122,'','217.125.140.200',1,1,0,'','2016-03-31 09:59:13'),(58,1,0,'victor7','nunez','victor7@victor7.es','','','4578a55cae3dbcabc0fcaa6f1683c64bc769e754','9d40c9d52','a:1:{s:40:\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEyNzt9\";i:1;}','',0,123,'','127.0.0.1',1,1,0,'','2016-03-31 11:08:32'),(59,1,0,'victor8','v','victor8@victor8.es','','','676eee3272cad5774e707ee92bb0e85b759fa829','5e4930343','a:0:{}','',0,124,'','127.0.0.1',1,1,0,'','2016-03-31 11:11:59');
/*!40000 ALTER TABLE `oc_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_activity`
--

DROP TABLE IF EXISTS `oc_customer_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_activity` (
  `activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`activity_id`)
) ENGINE=MyISAM AUTO_INCREMENT=293 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_activity`
--

LOCK TABLES `oc_customer_activity` WRITE;
/*!40000 ALTER TABLE `oc_customer_activity` DISABLE KEYS */;
INSERT INTO `oc_customer_activity` VALUES (1,0,'order_guest','a:2:{s:4:\"name\";s:10:\"John Smith\";s:8:\"order_id\";i:2;}','192.168.0.28','2015-09-10 16:10:24'),(2,1,'register','a:2:{s:11:\"customer_id\";s:1:\"1\";s:4:\"name\";s:12:\"Amnay Pérez\";}','192.168.0.28','2015-09-16 12:20:23'),(3,1,'address_add','a:2:{s:11:\"customer_id\";s:1:\"1\";s:4:\"name\";s:12:\"Amnay Pérez\";}','192.168.0.28','2015-09-16 12:44:27'),(4,5,'register','a:2:{s:11:\"customer_id\";i:5;s:4:\"name\";s:9:\"User Test\";}','192.168.0.28','2015-09-16 14:12:29'),(5,5,'order_account','a:3:{s:11:\"customer_id\";s:1:\"5\";s:4:\"name\";s:9:\"User Test\";s:8:\"order_id\";i:3;}','192.168.0.28','2015-09-16 15:36:53'),(6,3,'login','a:2:{s:11:\"customer_id\";s:1:\"3\";s:4:\"name\";s:16:\"Francisco  Belga\";}','192.168.0.28','2015-09-16 15:39:01'),(7,5,'login','a:2:{s:11:\"customer_id\";s:1:\"5\";s:4:\"name\";s:9:\"User Test\";}','192.168.0.28','2015-09-16 15:40:23'),(8,5,'login','a:2:{s:11:\"customer_id\";s:1:\"5\";s:4:\"name\";s:9:\"User Test\";}','192.168.0.28','2015-09-17 10:32:32'),(9,5,'order_account','a:3:{s:11:\"customer_id\";s:1:\"5\";s:4:\"name\";s:9:\"User Test\";s:8:\"order_id\";i:4;}','192.168.0.28','2015-09-17 10:32:54'),(10,1,'login','a:2:{s:11:\"customer_id\";s:1:\"1\";s:4:\"name\";s:12:\"Amnay Pérez\";}','192.168.0.28','2015-09-18 12:11:05'),(11,1,'login','a:2:{s:11:\"customer_id\";s:1:\"1\";s:4:\"name\";s:12:\"Amnay Pérez\";}','192.168.0.21','2015-09-18 12:11:23'),(12,1,'login','a:2:{s:11:\"customer_id\";s:1:\"1\";s:4:\"name\";s:12:\"Amnay Pérez\";}','192.168.1.37','2015-10-27 15:58:03'),(13,1,'login','a:2:{s:11:\"customer_id\";s:1:\"1\";s:4:\"name\";s:12:\"Amnay Pérez\";}','192.168.1.57','2015-10-28 10:03:09'),(14,1,'login','a:2:{s:11:\"customer_id\";s:1:\"1\";s:4:\"name\";s:12:\"Amnay Pérez\";}','192.168.1.43','2015-10-28 11:46:46'),(15,1,'login','a:2:{s:11:\"customer_id\";s:1:\"1\";s:4:\"name\";s:12:\"Amnay Pérez\";}','192.168.1.57','2015-10-28 16:26:03'),(16,3,'login','a:2:{s:11:\"customer_id\";s:1:\"3\";s:4:\"name\";s:16:\"Francisco  Belga\";}','192.168.1.57','2015-10-28 16:31:21'),(17,2,'login','a:2:{s:11:\"customer_id\";s:1:\"2\";s:4:\"name\";s:9:\"Lola Mart\";}','192.168.1.57','2015-10-28 16:35:22'),(18,6,'login','a:2:{s:11:\"customer_id\";s:1:\"6\";s:4:\"name\";s:12:\"Marta Flores\";}','192.168.1.57','2015-10-28 16:55:36'),(19,6,'edit','a:2:{s:11:\"customer_id\";s:1:\"6\";s:4:\"name\";s:12:\"Marta Flores\";}','192.168.1.57','2015-10-28 16:55:47'),(20,1,'login','a:2:{s:11:\"customer_id\";s:1:\"1\";s:4:\"name\";s:12:\"Amnay Pérez\";}','192.168.1.57','2015-10-28 17:15:52'),(21,1,'login','a:2:{s:11:\"customer_id\";s:1:\"1\";s:4:\"name\";s:12:\"Amnay Pérez\";}','192.168.1.57','2015-10-29 15:42:21'),(22,2,'login','a:2:{s:11:\"customer_id\";s:1:\"2\";s:4:\"name\";s:9:\"Lola Mart\";}','192.168.1.57','2015-10-29 15:54:57'),(23,1,'login','a:2:{s:11:\"customer_id\";s:1:\"1\";s:4:\"name\";s:12:\"Amnay Pérez\";}','192.168.1.57','2015-10-29 15:56:47'),(24,1,'login','a:2:{s:11:\"customer_id\";s:1:\"1\";s:4:\"name\";s:12:\"Amnay Pérez\";}','192.168.1.57','2015-10-29 16:10:35'),(25,2,'login','a:2:{s:11:\"customer_id\";s:1:\"2\";s:4:\"name\";s:9:\"Lola Mart\";}','192.168.1.57','2015-10-29 16:15:22'),(26,1,'login','a:2:{s:11:\"customer_id\";s:1:\"1\";s:4:\"name\";s:12:\"Amnay Pérez\";}','192.168.1.57','2015-10-29 16:19:36'),(27,2,'login','a:2:{s:11:\"customer_id\";s:1:\"2\";s:4:\"name\";s:9:\"Lola Mart\";}','192.168.1.57','2015-10-29 16:20:56'),(28,3,'login','a:2:{s:11:\"customer_id\";s:1:\"3\";s:4:\"name\";s:16:\"Francisco  Belga\";}','192.168.1.57','2015-10-29 16:21:22'),(29,8,'register','a:2:{s:11:\"customer_id\";i:8;s:4:\"name\";s:11:\"Jefe Jefazo\";}','138.4.47.33','2015-11-17 12:33:40'),(30,1,'login','a:2:{s:11:\"customer_id\";s:1:\"1\";s:4:\"name\";s:12:\"Amnay Pérez\";}','192.168.1.1','2015-11-18 11:20:51'),(31,1,'order_account','a:3:{s:11:\"customer_id\";s:1:\"1\";s:4:\"name\";s:12:\"Amnay Pérez\";s:8:\"order_id\";i:5;}','192.168.1.1','2015-11-18 11:40:56'),(32,9,'register','a:2:{s:11:\"customer_id\";i:9;s:4:\"name\";s:13:\"Jose Gonzalez\";}','138.4.47.33','2015-11-23 16:10:21'),(33,9,'login','a:2:{s:11:\"customer_id\";s:1:\"9\";s:4:\"name\";s:13:\"Jose Gonzalez\";}','138.4.47.33','2015-11-24 11:59:21'),(34,10,'register','a:2:{s:11:\"customer_id\";s:2:\"10\";s:4:\"name\";s:11:\"Test Vendor\";}','217.125.140.200','2015-12-16 15:59:33'),(35,10,'login','a:2:{s:11:\"customer_id\";s:2:\"10\";s:4:\"name\";s:11:\"Test Vendor\";}','217.125.140.200','2015-12-16 16:43:03'),(36,10,'login','a:2:{s:11:\"customer_id\";s:2:\"10\";s:4:\"name\";s:11:\"Test Vendor\";}','217.125.140.200','2015-12-16 16:43:55'),(37,10,'login','a:2:{s:11:\"customer_id\";s:2:\"10\";s:4:\"name\";s:11:\"Test Vendor\";}','217.125.140.200','2015-12-21 11:42:19'),(38,10,'login','a:2:{s:11:\"customer_id\";s:2:\"10\";s:4:\"name\";s:11:\"Test Vendor\";}','217.125.140.200','2015-12-22 12:01:08'),(39,10,'login','a:2:{s:11:\"customer_id\";s:2:\"10\";s:4:\"name\";s:11:\"Test Vendor\";}','217.125.140.200','2015-12-22 15:32:57'),(40,1,'login','a:2:{s:11:\"customer_id\";s:1:\"1\";s:4:\"name\";s:12:\"Amnay Pérez\";}','217.125.140.200','2016-01-18 12:45:54'),(41,1,'login','a:2:{s:11:\"customer_id\";s:1:\"1\";s:4:\"name\";s:12:\"Amnay Pérez\";}','217.125.140.200','2016-01-27 17:20:55'),(42,1,'login','a:2:{s:11:\"customer_id\";s:1:\"1\";s:4:\"name\";s:12:\"Amnay Pérez\";}','217.125.140.200','2016-01-28 15:22:32'),(43,1,'login','a:2:{s:11:\"customer_id\";s:1:\"1\";s:4:\"name\";s:12:\"Amnay Pérez\";}','217.125.140.200','2016-01-29 10:25:12'),(44,1,'order_account','a:3:{s:11:\"customer_id\";s:1:\"1\";s:4:\"name\";s:12:\"Amnay Pérez\";s:8:\"order_id\";i:9;}','217.125.140.200','2016-01-29 11:03:06'),(45,1,'login','a:2:{s:11:\"customer_id\";s:1:\"1\";s:4:\"name\";s:12:\"Amnay Pérez\";}','217.125.140.200','2016-01-29 12:45:24'),(46,1,'login','a:2:{s:11:\"customer_id\";s:1:\"1\";s:4:\"name\";s:12:\"Amnay Pérez\";}','217.125.140.200','2016-01-29 13:46:18'),(47,1,'order_account','a:3:{s:11:\"customer_id\";s:1:\"1\";s:4:\"name\";s:12:\"Amnay Pérez\";s:8:\"order_id\";i:12;}','217.125.140.200','2016-01-29 13:47:31'),(48,1,'order_account','a:3:{s:11:\"customer_id\";s:1:\"1\";s:4:\"name\";s:12:\"Amnay Pérez\";s:8:\"order_id\";i:13;}','217.125.140.200','2016-02-10 15:59:20'),(49,1,'return_account','a:3:{s:11:\"customer_id\";s:1:\"1\";s:4:\"name\";s:12:\"Amnay Pérez\";s:9:\"return_id\";i:1;}','217.125.140.200','2016-02-10 16:00:53'),(50,1,'login','a:2:{s:11:\"customer_id\";s:1:\"1\";s:4:\"name\";s:12:\"Amnay Pérez\";}','217.125.140.200','2016-02-11 12:24:52'),(51,11,'register','a:2:{s:11:\"customer_id\";i:11;s:4:\"name\";s:13:\"victor nuñez\";}','217.125.140.200','2016-02-11 16:18:12'),(52,11,'edit','a:2:{s:11:\"customer_id\";s:2:\"11\";s:4:\"name\";s:13:\"victor nuñez\";}','217.125.140.200','2016-02-11 16:24:53'),(53,11,'password','a:2:{s:11:\"customer_id\";s:2:\"11\";s:4:\"name\";s:13:\"victor nuñez\";}','217.125.140.200','2016-02-11 16:25:07'),(54,12,'register','a:2:{s:11:\"customer_id\";i:12;s:4:\"name\";s:10:\"victor1 nn\";}','127.0.0.1','2016-02-15 10:46:54'),(55,12,'edit','a:2:{s:11:\"customer_id\";s:2:\"12\";s:4:\"name\";s:10:\"victor1 nn\";}','127.0.0.1','2016-02-15 10:47:38'),(56,12,'login','a:2:{s:11:\"customer_id\";s:2:\"12\";s:4:\"name\";s:10:\"victor1 nn\";}','127.0.0.1','2016-02-15 11:48:25'),(57,12,'address_edit','a:2:{s:11:\"customer_id\";s:2:\"12\";s:4:\"name\";s:10:\"victor1 nn\";}','127.0.0.1','2016-02-15 12:03:52'),(58,12,'login','a:2:{s:11:\"customer_id\";s:2:\"12\";s:4:\"name\";s:10:\"victor1 nn\";}','127.0.0.1','2016-02-15 14:43:59'),(59,12,'login','a:2:{s:11:\"customer_id\";s:2:\"12\";s:4:\"name\";s:10:\"victor1 nn\";}','127.0.0.1','2016-02-17 12:16:30'),(60,12,'login','a:2:{s:11:\"customer_id\";s:2:\"12\";s:4:\"name\";s:10:\"victor1 nn\";}','127.0.0.1','2016-02-17 15:30:35'),(61,12,'login','a:2:{s:11:\"customer_id\";s:2:\"12\";s:4:\"name\";s:10:\"victor1 nn\";}','127.0.0.1','2016-02-18 09:02:57'),(62,12,'login','a:2:{s:11:\"customer_id\";s:2:\"12\";s:4:\"name\";s:10:\"victor1 nn\";}','127.0.0.1','2016-02-18 10:52:20'),(63,12,'login','a:2:{s:11:\"customer_id\";s:2:\"12\";s:4:\"name\";s:10:\"victor1 nn\";}','127.0.0.1','2016-02-18 14:52:17'),(64,12,'login','a:2:{s:11:\"customer_id\";s:2:\"12\";s:4:\"name\";s:10:\"victor1 nn\";}','127.0.0.1','2016-02-19 11:01:22'),(65,12,'login','a:2:{s:11:\"customer_id\";s:2:\"12\";s:4:\"name\";s:10:\"victor1 nn\";}','127.0.0.1','2016-02-22 10:46:47'),(66,12,'login','a:2:{s:11:\"customer_id\";s:2:\"12\";s:4:\"name\";s:10:\"victor1 nn\";}','127.0.0.1','2016-02-22 14:54:01'),(67,12,'login','a:2:{s:11:\"customer_id\";s:2:\"12\";s:4:\"name\";s:10:\"victor1 nn\";}','127.0.0.1','2016-02-24 10:53:26'),(68,12,'login','a:2:{s:11:\"customer_id\";s:2:\"12\";s:4:\"name\";s:10:\"victor1 nn\";}','127.0.0.1','2016-02-26 10:31:06'),(69,13,'register','a:2:{s:11:\"customer_id\";i:13;s:4:\"name\";s:13:\"Jose gonzalez\";}','127.0.0.1','2016-02-26 10:58:19'),(70,13,'address_edit','a:2:{s:11:\"customer_id\";s:2:\"13\";s:4:\"name\";s:13:\"Jose gonzalez\";}','127.0.0.1','2016-02-26 11:03:40'),(71,13,'address_edit','a:2:{s:11:\"customer_id\";s:2:\"13\";s:4:\"name\";s:13:\"Jose gonzalez\";}','127.0.0.1','2016-02-26 11:04:25'),(72,13,'address_add','a:2:{s:11:\"customer_id\";s:2:\"13\";s:4:\"name\";s:13:\"Jose gonzalez\";}','127.0.0.1','2016-02-26 11:06:03'),(73,13,'address_edit','a:2:{s:11:\"customer_id\";s:2:\"13\";s:4:\"name\";s:13:\"Jose gonzalez\";}','127.0.0.1','2016-02-26 11:09:02'),(74,12,'login','a:2:{s:11:\"customer_id\";s:2:\"12\";s:4:\"name\";s:10:\"victor1 nn\";}','127.0.0.1','2016-02-26 13:29:19'),(75,14,'register','a:2:{s:11:\"customer_id\";i:14;s:4:\"name\";s:12:\"Victor Nunez\";}','127.0.0.1','2016-02-29 15:52:32'),(76,12,'login','a:2:{s:11:\"customer_id\";s:2:\"12\";s:4:\"name\";s:10:\"victor1 nn\";}','127.0.0.1','2016-03-02 13:14:41'),(77,12,'login','a:2:{s:11:\"customer_id\";s:2:\"12\";s:4:\"name\";s:10:\"victor1 nn\";}','127.0.0.1','2016-03-03 13:05:18'),(78,15,'register','a:2:{s:11:\"customer_id\";i:15;s:4:\"name\";s:13:\"Victor Nuñez\";}','127.0.0.1','2016-03-04 20:16:42'),(79,16,'register','a:2:{s:11:\"customer_id\";i:16;s:4:\"name\";s:13:\"Victor Nuñez\";}','127.0.0.1','2016-03-07 09:01:39'),(80,17,'register','a:2:{s:11:\"customer_id\";i:17;s:4:\"name\";s:13:\"Victor Nuñez\";}','127.0.0.1','2016-03-07 11:05:23'),(81,17,'edit','a:2:{s:11:\"customer_id\";s:2:\"17\";s:4:\"name\";s:13:\"Victor Nuñez\";}','127.0.0.1','2016-03-07 13:25:02'),(82,18,'register','a:2:{s:11:\"customer_id\";i:18;s:4:\"name\";s:15:\"Antonio Machine\";}','127.0.0.1','2016-03-08 01:20:04'),(83,19,'register','a:2:{s:11:\"customer_id\";i:19;s:4:\"name\";s:13:\"victor Nuñez\";}','127.0.0.1','2016-03-08 17:00:55'),(84,20,'register','a:2:{s:11:\"customer_id\";i:20;s:4:\"name\";s:11:\"Victor Numa\";}','127.0.0.1','2016-03-09 15:06:03'),(85,17,'login','a:2:{s:11:\"customer_id\";s:2:\"17\";s:4:\"name\";s:13:\"Victor Nuñez\";}','127.0.0.1','2016-03-10 08:58:44'),(86,17,'login','a:2:{s:11:\"customer_id\";s:2:\"17\";s:4:\"name\";s:13:\"Victor Nuñez\";}','127.0.0.1','2016-03-10 10:13:46'),(87,19,'login','a:2:{s:11:\"customer_id\";s:2:\"19\";s:4:\"name\";s:13:\"victor Nuñez\";}','127.0.0.1','2016-03-10 11:09:59'),(88,20,'login','a:2:{s:11:\"customer_id\";s:2:\"20\";s:4:\"name\";s:11:\"Victor Numa\";}','127.0.0.1','2016-03-10 11:22:03'),(89,17,'login','a:2:{s:11:\"customer_id\";s:2:\"17\";s:4:\"name\";s:13:\"Victor Nuñez\";}','127.0.0.1','2016-03-10 11:54:17'),(90,19,'login','a:2:{s:11:\"customer_id\";s:2:\"19\";s:4:\"name\";s:13:\"victor Nuñez\";}','127.0.0.1','2016-03-10 11:55:27'),(91,17,'login','a:2:{s:11:\"customer_id\";s:2:\"17\";s:4:\"name\";s:13:\"Victor Nuñez\";}','127.0.0.1','2016-03-10 12:15:52'),(92,21,'register','a:2:{s:11:\"customer_id\";i:21;s:4:\"name\";s:9:\"victor nn\";}','127.0.0.1','2016-03-10 12:28:32'),(93,19,'login','a:2:{s:11:\"customer_id\";s:2:\"19\";s:4:\"name\";s:13:\"victor Nuñez\";}','127.0.0.1','2016-03-10 14:33:24'),(94,22,'register','a:2:{s:11:\"customer_id\";i:22;s:4:\"name\";s:15:\"Crisitna Pérez\";}','127.0.0.1','2016-03-10 15:10:33'),(95,17,'login','a:2:{s:11:\"customer_id\";s:2:\"17\";s:4:\"name\";s:13:\"Victor Nuñez\";}','127.0.0.1','2016-03-10 16:01:50'),(96,17,'order_account','a:3:{s:11:\"customer_id\";s:2:\"17\";s:4:\"name\";s:13:\"Victor Nuñez\";s:8:\"order_id\";i:17;}','127.0.0.1','2016-03-10 16:03:46'),(97,17,'return_account','a:3:{s:11:\"customer_id\";s:2:\"17\";s:4:\"name\";s:13:\"Victor Nuñez\";s:9:\"return_id\";i:2;}','127.0.0.1','2016-03-10 16:08:08'),(98,23,'register','a:2:{s:11:\"customer_id\";i:23;s:4:\"name\";s:15:\"visiona visiona\";}','127.0.0.1','2016-03-11 09:01:03'),(99,24,'register','a:2:{s:11:\"customer_id\";i:24;s:4:\"name\";s:17:\"Visiona1 visiona1\";}','127.0.0.1','2016-03-11 09:18:24'),(100,24,'order_account','a:3:{s:11:\"customer_id\";s:2:\"24\";s:4:\"name\";s:17:\"Visiona1 visiona1\";s:8:\"order_id\";i:18;}','127.0.0.1','2016-03-11 09:23:42'),(101,17,'login','a:2:{s:11:\"customer_id\";s:2:\"17\";s:4:\"name\";s:13:\"Victor Nuñez\";}','127.0.0.1','2016-03-14 10:24:28'),(102,17,'login','a:2:{s:11:\"customer_id\";s:2:\"17\";s:4:\"name\";s:13:\"Victor Nuñez\";}','127.0.0.1','2016-03-14 11:31:16'),(103,17,'edit','a:2:{s:11:\"customer_id\";s:2:\"17\";s:4:\"name\";s:13:\"Victor Nuñez\";}','127.0.0.1','2016-03-14 11:32:31'),(104,17,'edit','a:2:{s:11:\"customer_id\";s:2:\"17\";s:4:\"name\";s:15:\"Victor22 Nuñez\";}','127.0.0.1','2016-03-14 11:32:46'),(105,24,'login','a:2:{s:11:\"customer_id\";s:2:\"24\";s:4:\"name\";s:17:\"Visiona1 visiona1\";}','127.0.0.1','2016-03-14 12:10:14'),(106,24,'login','a:2:{s:11:\"customer_id\";s:2:\"24\";s:4:\"name\";s:17:\"Visiona1 visiona1\";}','127.0.0.1','2016-03-14 15:13:59'),(107,24,'login','a:2:{s:11:\"customer_id\";s:2:\"24\";s:4:\"name\";s:17:\"Visiona1 visiona1\";}','127.0.0.1','2016-03-14 15:49:37'),(108,24,'login','a:2:{s:11:\"customer_id\";s:2:\"24\";s:4:\"name\";s:17:\"Visiona1 visiona1\";}','127.0.0.1','2016-03-14 18:00:21'),(109,24,'edit','a:2:{s:11:\"customer_id\";s:2:\"24\";s:4:\"name\";s:17:\"Visiona1 visiona1\";}','127.0.0.1','2016-03-14 18:07:27'),(110,24,'login','a:2:{s:11:\"customer_id\";s:2:\"24\";s:4:\"name\";s:17:\"Visiona1 visiona1\";}','127.0.0.1','2016-03-14 18:46:19'),(111,24,'login','a:2:{s:11:\"customer_id\";s:2:\"24\";s:4:\"name\";s:17:\"Visiona1 visiona1\";}','127.0.0.1','2016-03-15 08:36:44'),(112,24,'login','a:2:{s:11:\"customer_id\";s:2:\"24\";s:4:\"name\";s:17:\"Visiona1 visiona1\";}','127.0.0.1','2016-03-15 11:39:10'),(113,24,'login','a:2:{s:11:\"customer_id\";s:2:\"24\";s:4:\"name\";s:17:\"Visiona1 visiona1\";}','127.0.0.1','2016-03-15 12:54:23'),(114,25,'register','a:2:{s:11:\"customer_id\";i:25;s:4:\"name\";s:7:\"Vct vct\";}','127.0.0.1','2016-03-16 18:43:14'),(115,26,'register','a:2:{s:11:\"customer_id\";i:26;s:4:\"name\";s:7:\"VVV vvv\";}','127.0.0.1','2016-03-16 19:00:59'),(116,27,'register','a:2:{s:11:\"customer_id\";i:27;s:4:\"name\";s:17:\"csristina tamames\";}','127.0.0.1','2016-03-17 09:28:01'),(117,28,'register','a:2:{s:11:\"customer_id\";i:28;s:4:\"name\";s:9:\"bbb dsdsd\";}','127.0.0.1','2016-03-17 17:24:30'),(118,29,'register','a:2:{s:11:\"customer_id\";i:29;s:4:\"name\";s:12:\"victor nunez\";}','127.0.0.1','2016-03-18 09:58:25'),(119,24,'login','a:2:{s:11:\"customer_id\";s:2:\"24\";s:4:\"name\";s:17:\"Visiona1 visiona1\";}','127.0.0.1','2016-03-18 10:04:32'),(120,30,'register','a:2:{s:11:\"customer_id\";i:30;s:4:\"name\";s:7:\"Vct eee\";}','127.0.0.1','2016-03-18 10:59:27'),(121,24,'login','a:2:{s:11:\"customer_id\";s:2:\"24\";s:4:\"name\";s:17:\"Visiona1 visiona1\";}','127.0.0.1','2016-03-18 11:08:25'),(122,24,'login','a:2:{s:11:\"customer_id\";s:2:\"24\";s:4:\"name\";s:17:\"Visiona1 visiona1\";}','127.0.0.1','2016-03-18 12:18:51'),(123,24,'login','a:2:{s:11:\"customer_id\";s:2:\"24\";s:4:\"name\";s:17:\"Visiona1 visiona1\";}','127.0.0.1','2016-03-18 13:07:06'),(124,24,'login','a:2:{s:11:\"customer_id\";s:2:\"24\";s:4:\"name\";s:17:\"Visiona1 visiona1\";}','127.0.0.1','2016-03-18 15:38:03'),(125,24,'login','a:2:{s:11:\"customer_id\";s:2:\"24\";s:4:\"name\";s:17:\"Visiona1 visiona1\";}','127.0.0.1','2016-03-21 10:00:29'),(126,24,'login','a:2:{s:11:\"customer_id\";s:2:\"24\";s:4:\"name\";s:17:\"Visiona1 visiona1\";}','127.0.0.1','2016-03-21 11:02:33'),(127,24,'login','a:2:{s:11:\"customer_id\";s:2:\"24\";s:4:\"name\";s:17:\"Visiona1 visiona1\";}','127.0.0.1','2016-03-22 09:20:20'),(128,20,'login','a:2:{s:11:\"customer_id\";s:2:\"20\";s:4:\"name\";s:11:\"Victor Numa\";}','127.0.0.1','2016-03-22 09:21:10'),(129,24,'login','a:2:{s:11:\"customer_id\";s:2:\"24\";s:4:\"name\";s:17:\"Visiona1 visiona1\";}','127.0.0.1','2016-03-22 11:29:31'),(130,24,'login','a:2:{s:11:\"customer_id\";s:2:\"24\";s:4:\"name\";s:17:\"Visiona1 visiona1\";}','127.0.0.1','2016-03-22 12:12:03'),(131,19,'login','a:2:{s:11:\"customer_id\";s:2:\"19\";s:4:\"name\";s:13:\"victor Nuñez\";}','127.0.0.1','2016-03-22 14:21:15'),(132,19,'order_account','a:3:{s:11:\"customer_id\";s:2:\"19\";s:4:\"name\";s:13:\"victor Nuñez\";s:8:\"order_id\";i:26;}','127.0.0.1','2016-03-22 17:18:44'),(133,23,'login','a:2:{s:11:\"customer_id\";s:2:\"23\";s:4:\"name\";s:15:\"visiona visiona\";}','127.0.0.1','2016-03-23 01:10:09'),(134,23,'address_add','a:2:{s:11:\"customer_id\";s:2:\"23\";s:4:\"name\";s:15:\"visiona visiona\";}','127.0.0.1','2016-03-23 09:40:06'),(135,23,'address_add','a:2:{s:11:\"customer_id\";s:2:\"23\";s:4:\"name\";s:15:\"visiona visiona\";}','127.0.0.1','2016-03-23 09:42:20'),(136,23,'login','a:2:{s:11:\"customer_id\";s:2:\"23\";s:4:\"name\";s:15:\"visiona visiona\";}','127.0.0.1','2016-03-23 10:51:17'),(137,24,'login','a:2:{s:11:\"customer_id\";s:2:\"24\";s:4:\"name\";s:17:\"Visiona1 visiona1\";}','127.0.0.1','2016-03-23 15:38:09'),(138,31,'register','a:2:{s:11:\"customer_id\";i:31;s:4:\"name\";s:22:\"Administrador QfreshCo\";}','127.0.0.1','2016-03-25 00:30:54'),(139,31,'login','a:2:{s:11:\"customer_id\";s:2:\"31\";s:4:\"name\";s:22:\"Administrador QfreshCo\";}','127.0.0.1','2016-03-25 18:43:13'),(140,24,'login','a:2:{s:11:\"customer_id\";s:2:\"24\";s:4:\"name\";s:17:\"Visiona1 visiona1\";}','127.0.0.1','2016-03-28 09:26:37'),(141,24,'login','a:2:{s:11:\"customer_id\";s:2:\"24\";s:4:\"name\";s:17:\"Visiona1 visiona1\";}','127.0.0.1','2016-03-28 10:01:54'),(142,24,'login','a:2:{s:11:\"customer_id\";s:2:\"24\";s:4:\"name\";s:17:\"Visiona1 visiona1\";}','127.0.0.1','2016-03-28 10:08:00'),(143,32,'register','a:2:{s:11:\"customer_id\";i:32;s:4:\"name\";s:11:\"Agro  Oliva\";}','127.0.0.1','2016-03-28 10:10:12'),(144,33,'register','a:2:{s:11:\"customer_id\";i:33;s:4:\"name\";s:14:\"Merca Verduras\";}','127.0.0.1','2016-03-28 10:15:28'),(145,34,'register','a:2:{s:11:\"customer_id\";i:34;s:4:\"name\";s:11:\"Expo Frutas\";}','127.0.0.1','2016-03-28 10:28:01'),(146,35,'register','a:2:{s:11:\"customer_id\";i:35;s:4:\"name\";s:11:\"casa gutier\";}','127.0.0.1','2016-03-28 10:38:04'),(147,36,'register','a:2:{s:11:\"customer_id\";i:36;s:4:\"name\";s:13:\"italia nostra\";}','127.0.0.1','2016-03-28 10:40:57'),(148,37,'register','a:2:{s:11:\"customer_id\";i:37;s:4:\"name\";s:17:\"iberian embutidos\";}','127.0.0.1','2016-03-28 10:49:07'),(149,38,'register','a:2:{s:11:\"customer_id\";i:38;s:4:\"name\";s:11:\"Rosee Vinos\";}','127.0.0.1','2016-03-28 10:54:11'),(150,39,'register','a:2:{s:11:\"customer_id\";i:39;s:4:\"name\";s:15:\"anchor cervezas\";}','127.0.0.1','2016-03-28 10:57:16'),(151,40,'register','a:2:{s:11:\"customer_id\";i:40;s:4:\"name\";s:15:\"cibeles cerveza\";}','127.0.0.1','2016-03-28 11:00:24'),(152,41,'register','a:2:{s:11:\"customer_id\";i:41;s:4:\"name\";s:16:\"einstok cervezas\";}','127.0.0.1','2016-03-28 11:05:03'),(153,42,'register','a:2:{s:11:\"customer_id\";i:42;s:4:\"name\";s:10:\"Rising Hop\";}','127.0.0.1','2016-03-28 11:48:32'),(154,43,'register','a:2:{s:11:\"customer_id\";i:43;s:4:\"name\";s:17:\"La virgen cerveza\";}','127.0.0.1','2016-03-28 11:52:24'),(155,44,'register','a:2:{s:11:\"customer_id\";i:44;s:4:\"name\";s:20:\"Las Moradas Viñedos\";}','127.0.0.1','2016-03-28 11:57:09'),(156,45,'register','a:2:{s:11:\"customer_id\";i:45;s:4:\"name\";s:17:\"arboleda boutique\";}','127.0.0.1','2016-03-28 11:59:56'),(157,24,'login','a:2:{s:11:\"customer_id\";s:2:\"24\";s:4:\"name\";s:17:\"Visiona1 visiona1\";}','127.0.0.1','2016-03-28 13:06:06'),(158,24,'address_add','a:2:{s:11:\"customer_id\";s:2:\"24\";s:4:\"name\";s:17:\"Visiona1 visiona1\";}','127.0.0.1','2016-03-28 13:46:47'),(159,24,'address_add','a:2:{s:11:\"customer_id\";s:2:\"24\";s:4:\"name\";s:17:\"Visiona1 visiona1\";}','127.0.0.1','2016-03-28 14:25:37'),(160,24,'login','a:2:{s:11:\"customer_id\";s:2:\"24\";s:4:\"name\";s:17:\"Visiona1 visiona1\";}','127.0.0.1','2016-03-28 15:30:38'),(161,24,'login','a:2:{s:11:\"customer_id\";s:2:\"24\";s:4:\"name\";s:17:\"Visiona1 visiona1\";}','127.0.0.1','2016-03-28 16:01:04'),(162,24,'login','a:2:{s:11:\"customer_id\";s:2:\"24\";s:4:\"name\";s:17:\"Visiona1 visiona1\";}','127.0.0.1','2016-03-28 16:39:21'),(163,24,'order_account','a:3:{s:11:\"customer_id\";s:2:\"24\";s:4:\"name\";s:17:\"Visiona1 visiona1\";s:8:\"order_id\";i:35;}','127.0.0.1','2016-03-28 16:43:05'),(164,46,'register','a:2:{s:11:\"customer_id\";i:46;s:4:\"name\";s:12:\"sensore test\";}','127.0.0.1','2016-03-28 16:51:56'),(165,24,'login','a:2:{s:11:\"customer_id\";s:2:\"24\";s:4:\"name\";s:17:\"Visiona1 visiona1\";}','127.0.0.1','2016-03-28 17:04:24'),(166,24,'login','a:2:{s:11:\"customer_id\";s:2:\"24\";s:4:\"name\";s:17:\"Visiona1 visiona1\";}','127.0.0.1','2016-03-28 17:32:42'),(167,47,'register','a:2:{s:11:\"customer_id\";i:47;s:4:\"name\";s:11:\"delete test\";}','127.0.0.1','2016-03-28 17:44:08'),(168,46,'login','a:2:{s:11:\"customer_id\";s:2:\"46\";s:4:\"name\";s:12:\"sensore test\";}','127.0.0.1','2016-03-28 17:46:41'),(169,46,'edit','a:2:{s:11:\"customer_id\";s:2:\"46\";s:4:\"name\";s:12:\"sensore test\";}','127.0.0.1','2016-03-28 17:46:56'),(170,31,'login','a:2:{s:11:\"customer_id\";s:2:\"31\";s:4:\"name\";s:22:\"Administrador QfreshCo\";}','127.0.0.1','2016-03-28 17:47:37'),(171,48,'register','a:2:{s:11:\"customer_id\";i:48;s:4:\"name\";s:13:\"checkout test\";}','127.0.0.1','2016-03-28 17:49:01'),(172,23,'login','a:2:{s:11:\"customer_id\";s:2:\"23\";s:4:\"name\";s:15:\"visiona visiona\";}','127.0.0.1','2016-03-29 00:40:07'),(173,23,'edit','a:2:{s:11:\"customer_id\";s:2:\"23\";s:4:\"name\";s:15:\"visiona visiona\";}','127.0.0.1','2016-03-29 00:40:37'),(174,24,'login','a:2:{s:11:\"customer_id\";s:2:\"24\";s:4:\"name\";s:17:\"Visiona1 visiona1\";}','127.0.0.1','2016-03-29 00:47:00'),(175,24,'return_account','a:3:{s:11:\"customer_id\";s:2:\"24\";s:4:\"name\";s:17:\"Visiona1 visiona1\";s:9:\"return_id\";i:3;}','127.0.0.1','2016-03-29 01:18:48'),(176,31,'login','a:2:{s:11:\"customer_id\";s:2:\"31\";s:4:\"name\";s:22:\"Administrador QfreshCo\";}','127.0.0.1','2016-03-29 02:05:30'),(177,31,'order_account','a:3:{s:11:\"customer_id\";s:2:\"31\";s:4:\"name\";s:22:\"Administrador QfreshCo\";s:8:\"order_id\";i:53;}','127.0.0.1','2016-03-29 02:14:07'),(178,31,'login','a:2:{s:11:\"customer_id\";s:2:\"31\";s:4:\"name\";s:22:\"Administrador QfreshCo\";}','127.0.0.1','2016-03-29 09:00:14'),(179,49,'register','a:2:{s:11:\"customer_id\";i:49;s:4:\"name\";s:12:\"victor nunez\";}','127.0.0.1','2016-03-29 16:43:58'),(180,49,'edit','a:2:{s:11:\"customer_id\";s:2:\"49\";s:4:\"name\";s:12:\"victor nunez\";}','127.0.0.1','2016-03-29 16:45:19'),(181,49,'address_edit','a:2:{s:11:\"customer_id\";s:2:\"49\";s:4:\"name\";s:14:\"victor nunez11\";}','127.0.0.1','2016-03-29 16:46:24'),(182,31,'login','a:2:{s:11:\"customer_id\";s:2:\"31\";s:4:\"name\";s:22:\"Administrador QfreshCo\";}','127.0.0.1','2016-03-29 23:53:40'),(183,50,'register','a:2:{s:11:\"customer_id\";i:50;s:4:\"name\";s:15:\"victorn victorn\";}','127.0.0.1','2016-03-30 10:05:09'),(184,49,'login','a:2:{s:11:\"customer_id\";s:2:\"49\";s:4:\"name\";s:14:\"victor nunez11\";}','127.0.0.1','2016-03-30 11:31:18'),(185,51,'register','a:2:{s:11:\"customer_id\";i:51;s:4:\"name\";s:14:\"victor1 victor\";}','127.0.0.1','2016-03-30 11:32:50'),(186,52,'register','a:2:{s:11:\"customer_id\";i:52;s:4:\"name\";s:14:\"victor2 victor\";}','127.0.0.1','2016-03-30 11:35:06'),(187,53,'register','a:2:{s:11:\"customer_id\";i:53;s:4:\"name\";s:9:\"victor3 v\";}','127.0.0.1','2016-03-30 11:41:09'),(188,54,'register','a:2:{s:11:\"customer_id\";i:54;s:4:\"name\";s:9:\"victor4 v\";}','127.0.0.1','2016-03-30 11:42:28'),(189,53,'login','a:2:{s:11:\"customer_id\";s:2:\"53\";s:4:\"name\";s:9:\"victor3 v\";}','127.0.0.1','2016-03-30 11:52:31'),(190,24,'login','a:2:{s:11:\"customer_id\";s:2:\"24\";s:4:\"name\";s:17:\"Visiona1 visiona1\";}','127.0.0.1','2016-03-30 12:24:44'),(191,31,'login','a:2:{s:11:\"customer_id\";s:2:\"31\";s:4:\"name\";s:22:\"Administrador QfreshCo\";}','127.0.0.1','2016-03-30 12:39:20'),(192,31,'order_account','a:3:{s:11:\"customer_id\";s:2:\"31\";s:4:\"name\";s:22:\"Administrador QfreshCo\";s:8:\"order_id\";i:54;}','127.0.0.1','2016-03-30 12:49:09'),(193,31,'return_account','a:3:{s:11:\"customer_id\";s:2:\"31\";s:4:\"name\";s:22:\"Administrador QfreshCo\";s:9:\"return_id\";i:4;}','127.0.0.1','2016-03-30 14:05:20'),(194,24,'login','a:2:{s:11:\"customer_id\";s:2:\"24\";s:4:\"name\";s:17:\"Visiona1 visiona1\";}','127.0.0.1','2016-03-30 15:28:12'),(195,24,'login','a:2:{s:11:\"customer_id\";s:2:\"24\";s:4:\"name\";s:17:\"Visiona1 visiona1\";}','127.0.0.1','2016-03-30 15:48:10'),(196,55,'register','a:2:{s:11:\"customer_id\";i:55;s:4:\"name\";s:9:\"victor6 v\";}','127.0.0.1','2016-03-30 15:57:49'),(197,55,'order_account','a:3:{s:11:\"customer_id\";s:2:\"55\";s:4:\"name\";s:9:\"victor6 v\";s:8:\"order_id\";i:55;}','127.0.0.1','2016-03-30 15:58:58'),(198,55,'address_add','a:2:{s:11:\"customer_id\";s:2:\"55\";s:4:\"name\";s:9:\"victor6 v\";}','127.0.0.1','2016-03-30 16:06:59'),(199,55,'address_add','a:2:{s:11:\"customer_id\";s:2:\"55\";s:4:\"name\";s:9:\"victor6 v\";}','127.0.0.1','2016-03-30 16:08:17'),(200,55,'address_add','a:2:{s:11:\"customer_id\";s:2:\"55\";s:4:\"name\";s:9:\"victor6 v\";}','127.0.0.1','2016-03-30 16:10:38'),(201,55,'address_delete','a:2:{s:11:\"customer_id\";s:2:\"55\";s:4:\"name\";s:9:\"victor6 v\";}','127.0.0.1','2016-03-30 16:14:26'),(202,55,'address_delete','a:2:{s:11:\"customer_id\";s:2:\"55\";s:4:\"name\";s:9:\"victor6 v\";}','127.0.0.1','2016-03-30 16:14:27'),(203,55,'address_delete','a:2:{s:11:\"customer_id\";s:2:\"55\";s:4:\"name\";s:9:\"victor6 v\";}','127.0.0.1','2016-03-30 16:14:33'),(204,55,'address_add','a:2:{s:11:\"customer_id\";s:2:\"55\";s:4:\"name\";s:9:\"victor6 v\";}','127.0.0.1','2016-03-30 16:20:44'),(205,55,'order_account','a:3:{s:11:\"customer_id\";s:2:\"55\";s:4:\"name\";s:9:\"victor6 v\";s:8:\"order_id\";i:56;}','127.0.0.1','2016-03-30 16:21:49'),(206,55,'address_add','a:2:{s:11:\"customer_id\";s:2:\"55\";s:4:\"name\";s:9:\"victor6 v\";}','127.0.0.1','2016-03-30 16:22:20'),(207,55,'order_account','a:3:{s:11:\"customer_id\";s:2:\"55\";s:4:\"name\";s:9:\"victor6 v\";s:8:\"order_id\";i:57;}','127.0.0.1','2016-03-30 16:22:59'),(208,55,'address_delete','a:2:{s:11:\"customer_id\";s:2:\"55\";s:4:\"name\";s:9:\"victor6 v\";}','127.0.0.1','2016-03-30 16:23:09'),(209,55,'address_add','a:2:{s:11:\"customer_id\";s:2:\"55\";s:4:\"name\";s:9:\"victor6 v\";}','127.0.0.1','2016-03-30 16:23:44'),(210,55,'address_add','a:2:{s:11:\"customer_id\";s:2:\"55\";s:4:\"name\";s:9:\"victor6 v\";}','127.0.0.1','2016-03-30 16:24:37'),(211,55,'address_add','a:2:{s:11:\"customer_id\";s:2:\"55\";s:4:\"name\";s:9:\"victor6 v\";}','127.0.0.1','2016-03-30 16:26:07'),(212,55,'address_add','a:2:{s:11:\"customer_id\";s:2:\"55\";s:4:\"name\";s:9:\"victor6 v\";}','127.0.0.1','2016-03-30 16:26:56'),(213,55,'address_add','a:2:{s:11:\"customer_id\";s:2:\"55\";s:4:\"name\";s:9:\"victor6 v\";}','127.0.0.1','2016-03-30 16:27:33'),(214,55,'address_add','a:2:{s:11:\"customer_id\";s:2:\"55\";s:4:\"name\";s:9:\"victor6 v\";}','127.0.0.1','2016-03-30 16:27:34'),(215,55,'address_add','a:2:{s:11:\"customer_id\";s:2:\"55\";s:4:\"name\";s:9:\"victor6 v\";}','127.0.0.1','2016-03-30 16:27:35'),(216,55,'address_add','a:2:{s:11:\"customer_id\";s:2:\"55\";s:4:\"name\";s:9:\"victor6 v\";}','127.0.0.1','2016-03-30 16:27:35'),(217,55,'address_add','a:2:{s:11:\"customer_id\";s:2:\"55\";s:4:\"name\";s:9:\"victor6 v\";}','127.0.0.1','2016-03-30 16:27:35'),(218,55,'address_add','a:2:{s:11:\"customer_id\";s:2:\"55\";s:4:\"name\";s:9:\"victor6 v\";}','127.0.0.1','2016-03-30 16:27:53'),(219,55,'address_add','a:2:{s:11:\"customer_id\";s:2:\"55\";s:4:\"name\";s:9:\"victor6 v\";}','127.0.0.1','2016-03-30 16:28:30'),(220,55,'address_add','a:2:{s:11:\"customer_id\";s:2:\"55\";s:4:\"name\";s:9:\"victor6 v\";}','127.0.0.1','2016-03-30 16:28:53'),(221,55,'address_add','a:2:{s:11:\"customer_id\";s:2:\"55\";s:4:\"name\";s:9:\"victor6 v\";}','127.0.0.1','2016-03-30 16:36:41'),(222,55,'address_add','a:2:{s:11:\"customer_id\";s:2:\"55\";s:4:\"name\";s:9:\"victor6 v\";}','127.0.0.1','2016-03-30 16:37:13'),(223,55,'address_add','a:2:{s:11:\"customer_id\";s:2:\"55\";s:4:\"name\";s:9:\"victor6 v\";}','127.0.0.1','2016-03-30 16:38:24'),(224,55,'address_add','a:2:{s:11:\"customer_id\";s:2:\"55\";s:4:\"name\";s:9:\"victor6 v\";}','127.0.0.1','2016-03-30 16:40:19'),(225,55,'address_add','a:2:{s:11:\"customer_id\";s:2:\"55\";s:4:\"name\";s:9:\"victor6 v\";}','127.0.0.1','2016-03-30 16:40:53'),(226,55,'address_add','a:2:{s:11:\"customer_id\";s:2:\"55\";s:4:\"name\";s:9:\"victor6 v\";}','127.0.0.1','2016-03-30 16:43:46'),(227,55,'address_add','a:2:{s:11:\"customer_id\";s:2:\"55\";s:4:\"name\";s:9:\"victor6 v\";}','127.0.0.1','2016-03-30 16:51:23'),(228,55,'address_add','a:2:{s:11:\"customer_id\";s:2:\"55\";s:4:\"name\";s:9:\"victor6 v\";}','127.0.0.1','2016-03-30 16:53:23'),(229,55,'address_add','a:2:{s:11:\"customer_id\";s:2:\"55\";s:4:\"name\";s:9:\"victor6 v\";}','127.0.0.1','2016-03-30 16:53:57'),(230,55,'address_add','a:2:{s:11:\"customer_id\";s:2:\"55\";s:4:\"name\";s:9:\"victor6 v\";}','127.0.0.1','2016-03-30 16:56:08'),(231,55,'address_add','a:2:{s:11:\"customer_id\";s:2:\"55\";s:4:\"name\";s:9:\"victor6 v\";}','127.0.0.1','2016-03-30 16:56:23'),(232,55,'address_add','a:2:{s:11:\"customer_id\";s:2:\"55\";s:4:\"name\";s:9:\"victor6 v\";}','127.0.0.1','2016-03-30 16:59:39'),(233,55,'address_add','a:2:{s:11:\"customer_id\";s:2:\"55\";s:4:\"name\";s:9:\"victor6 v\";}','127.0.0.1','2016-03-30 17:00:11'),(234,55,'address_add','a:2:{s:11:\"customer_id\";s:2:\"55\";s:4:\"name\";s:9:\"victor6 v\";}','127.0.0.1','2016-03-30 17:01:10'),(235,55,'address_add','a:2:{s:11:\"customer_id\";s:2:\"55\";s:4:\"name\";s:9:\"victor6 v\";}','127.0.0.1','2016-03-30 17:02:00'),(236,55,'address_add','a:2:{s:11:\"customer_id\";s:2:\"55\";s:4:\"name\";s:9:\"victor6 v\";}','127.0.0.1','2016-03-30 17:02:15'),(237,55,'address_add','a:2:{s:11:\"customer_id\";s:2:\"55\";s:4:\"name\";s:9:\"victor6 v\";}','127.0.0.1','2016-03-30 17:02:34'),(238,55,'address_add','a:2:{s:11:\"customer_id\";s:2:\"55\";s:4:\"name\";s:9:\"victor6 v\";}','127.0.0.1','2016-03-30 17:04:14'),(239,55,'address_add','a:2:{s:11:\"customer_id\";s:2:\"55\";s:4:\"name\";s:9:\"victor6 v\";}','127.0.0.1','2016-03-30 17:04:44'),(240,55,'address_add','a:2:{s:11:\"customer_id\";s:2:\"55\";s:4:\"name\";s:9:\"victor6 v\";}','127.0.0.1','2016-03-30 17:05:27'),(241,55,'address_add','a:2:{s:11:\"customer_id\";s:2:\"55\";s:4:\"name\";s:9:\"victor6 v\";}','127.0.0.1','2016-03-30 17:05:38'),(242,55,'address_add','a:2:{s:11:\"customer_id\";s:2:\"55\";s:4:\"name\";s:9:\"victor6 v\";}','127.0.0.1','2016-03-30 17:05:56'),(243,55,'address_add','a:2:{s:11:\"customer_id\";s:2:\"55\";s:4:\"name\";s:9:\"victor6 v\";}','127.0.0.1','2016-03-30 17:06:14'),(244,55,'address_add','a:2:{s:11:\"customer_id\";s:2:\"55\";s:4:\"name\";s:9:\"victor6 v\";}','127.0.0.1','2016-03-30 17:07:02'),(245,55,'address_add','a:2:{s:11:\"customer_id\";s:2:\"55\";s:4:\"name\";s:9:\"victor6 v\";}','127.0.0.1','2016-03-30 17:08:12'),(246,55,'address_add','a:2:{s:11:\"customer_id\";s:2:\"55\";s:4:\"name\";s:9:\"victor6 v\";}','127.0.0.1','2016-03-30 17:08:43'),(247,55,'address_add','a:2:{s:11:\"customer_id\";s:2:\"55\";s:4:\"name\";s:9:\"victor6 v\";}','127.0.0.1','2016-03-30 17:09:10'),(248,55,'address_add','a:2:{s:11:\"customer_id\";s:2:\"55\";s:4:\"name\";s:9:\"victor6 v\";}','127.0.0.1','2016-03-30 17:11:16'),(249,23,'login','a:2:{s:11:\"customer_id\";s:2:\"23\";s:4:\"name\";s:15:\"visiona visiona\";}','127.0.0.1','2016-03-30 17:14:40'),(250,24,'login','a:2:{s:11:\"customer_id\";s:2:\"24\";s:4:\"name\";s:17:\"Visiona1 visiona1\";}','127.0.0.1','2016-03-30 17:14:56'),(251,24,'address_add','a:2:{s:11:\"customer_id\";s:2:\"24\";s:4:\"name\";s:17:\"Visiona1 visiona1\";}','127.0.0.1','2016-03-30 17:15:13'),(252,24,'order_account','a:3:{s:11:\"customer_id\";s:2:\"24\";s:4:\"name\";s:17:\"Visiona1 visiona1\";s:8:\"order_id\";i:60;}','127.0.0.1','2016-03-30 17:15:53'),(253,24,'login','a:2:{s:11:\"customer_id\";s:2:\"24\";s:4:\"name\";s:17:\"Visiona1 visiona1\";}','127.0.0.1','2016-03-30 17:18:56'),(254,56,'register','a:2:{s:11:\"customer_id\";i:56;s:4:\"name\";s:11:\"Sensor Test\";}','127.0.0.1','2016-03-31 05:08:43'),(255,31,'login','a:2:{s:11:\"customer_id\";s:2:\"31\";s:4:\"name\";s:22:\"Administrador QfreshCo\";}','127.0.0.1','2016-03-31 05:11:02'),(256,48,'login','a:2:{s:11:\"customer_id\";s:2:\"48\";s:4:\"name\";s:13:\"checkout test\";}','127.0.0.1','2016-03-31 05:14:36'),(257,48,'address_add','a:2:{s:11:\"customer_id\";s:2:\"48\";s:4:\"name\";s:13:\"checkout test\";}','127.0.0.1','2016-03-31 05:15:54'),(258,48,'order_account','a:3:{s:11:\"customer_id\";s:2:\"48\";s:4:\"name\";s:13:\"checkout test\";s:8:\"order_id\";i:61;}','127.0.0.1','2016-03-31 05:18:06'),(259,48,'return_account','a:3:{s:11:\"customer_id\";s:2:\"48\";s:4:\"name\";s:13:\"checkout test\";s:9:\"return_id\";i:5;}','127.0.0.1','2016-03-31 05:18:55'),(260,31,'login','a:2:{s:11:\"customer_id\";s:2:\"31\";s:4:\"name\";s:22:\"Administrador QfreshCo\";}','127.0.0.1','2016-03-31 05:19:56'),(261,31,'edit','a:2:{s:11:\"customer_id\";s:2:\"31\";s:4:\"name\";s:22:\"Administrador QfreshCo\";}','127.0.0.1','2016-03-31 08:34:50'),(262,31,'login','a:2:{s:11:\"customer_id\";s:2:\"31\";s:4:\"name\";s:10:\"Store Test\";}','127.0.0.1','2016-03-31 08:37:27'),(263,48,'login','a:2:{s:11:\"customer_id\";s:2:\"48\";s:4:\"name\";s:13:\"checkout test\";}','127.0.0.1','2016-03-31 08:40:29'),(264,24,'login','a:2:{s:11:\"customer_id\";s:2:\"24\";s:4:\"name\";s:17:\"Visiona1 visiona1\";}','217.125.140.200','2016-03-31 09:05:09'),(265,24,'address_add','a:2:{s:11:\"customer_id\";s:2:\"24\";s:4:\"name\";s:17:\"Visiona1 visiona1\";}','217.125.140.200','2016-03-31 09:05:12'),(266,24,'address_add','a:2:{s:11:\"customer_id\";s:2:\"24\";s:4:\"name\";s:17:\"Visiona1 visiona1\";}','217.125.140.200','2016-03-31 09:05:15'),(267,24,'address_add','a:2:{s:11:\"customer_id\";s:2:\"24\";s:4:\"name\";s:17:\"Visiona1 visiona1\";}','217.125.140.200','2016-03-31 09:05:17'),(268,24,'address_add','a:2:{s:11:\"customer_id\";s:2:\"24\";s:4:\"name\";s:17:\"Visiona1 visiona1\";}','217.125.140.200','2016-03-31 09:05:22'),(269,24,'address_add','a:2:{s:11:\"customer_id\";s:2:\"24\";s:4:\"name\";s:17:\"Visiona1 visiona1\";}','217.125.140.200','2016-03-31 09:05:29'),(270,24,'address_add','a:2:{s:11:\"customer_id\";s:2:\"24\";s:4:\"name\";s:17:\"Visiona1 visiona1\";}','217.125.140.200','2016-03-31 09:06:34'),(271,24,'address_add','a:2:{s:11:\"customer_id\";s:2:\"24\";s:4:\"name\";s:17:\"Visiona1 visiona1\";}','217.125.140.200','2016-03-31 09:06:35'),(272,24,'address_add','a:2:{s:11:\"customer_id\";s:2:\"24\";s:4:\"name\";s:17:\"Visiona1 visiona1\";}','217.125.140.200','2016-03-31 09:06:36'),(273,24,'address_add','a:2:{s:11:\"customer_id\";s:2:\"24\";s:4:\"name\";s:17:\"Visiona1 visiona1\";}','217.125.140.200','2016-03-31 09:06:36'),(274,24,'address_add','a:2:{s:11:\"customer_id\";s:2:\"24\";s:4:\"name\";s:17:\"Visiona1 visiona1\";}','217.125.140.200','2016-03-31 09:06:49'),(275,24,'address_add','a:2:{s:11:\"customer_id\";s:2:\"24\";s:4:\"name\";s:17:\"Visiona1 visiona1\";}','217.125.140.200','2016-03-31 09:06:54'),(276,24,'address_add','a:2:{s:11:\"customer_id\";s:2:\"24\";s:4:\"name\";s:17:\"Visiona1 visiona1\";}','217.125.140.200','2016-03-31 09:07:51'),(277,24,'address_add','a:2:{s:11:\"customer_id\";s:2:\"24\";s:4:\"name\";s:17:\"Visiona1 visiona1\";}','217.125.140.200','2016-03-31 09:07:53'),(278,24,'address_add','a:2:{s:11:\"customer_id\";s:2:\"24\";s:4:\"name\";s:17:\"Visiona1 visiona1\";}','217.125.140.200','2016-03-31 09:07:54'),(279,24,'login','a:2:{s:11:\"customer_id\";s:2:\"24\";s:4:\"name\";s:17:\"Visiona1 visiona1\";}','217.125.140.200','2016-03-31 09:49:42'),(280,24,'address_add','a:2:{s:11:\"customer_id\";s:2:\"24\";s:4:\"name\";s:17:\"Visiona1 visiona1\";}','217.125.140.200','2016-03-31 09:49:47'),(281,24,'address_add','a:2:{s:11:\"customer_id\";s:2:\"24\";s:4:\"name\";s:17:\"Visiona1 visiona1\";}','217.125.140.200','2016-03-31 09:51:53'),(282,24,'address_add','a:2:{s:11:\"customer_id\";s:2:\"24\";s:4:\"name\";s:17:\"Visiona1 visiona1\";}','217.125.140.200','2016-03-31 09:55:15'),(283,57,'register','a:2:{s:11:\"customer_id\";i:57;s:4:\"name\";s:9:\"test test\";}','217.125.140.200','2016-03-31 09:59:13'),(284,24,'login','a:2:{s:11:\"customer_id\";s:2:\"24\";s:4:\"name\";s:17:\"Visiona1 visiona1\";}','127.0.0.1','2016-03-31 11:02:46'),(285,58,'register','a:2:{s:11:\"customer_id\";i:58;s:4:\"name\";s:13:\"victor7 nunez\";}','127.0.0.1','2016-03-31 11:08:32'),(286,59,'register','a:2:{s:11:\"customer_id\";i:59;s:4:\"name\";s:9:\"victor8 v\";}','127.0.0.1','2016-03-31 11:11:59'),(287,24,'login','a:2:{s:11:\"customer_id\";s:2:\"24\";s:4:\"name\";s:17:\"Visiona1 visiona1\";}','127.0.0.1','2016-03-31 11:13:11'),(288,56,'login','a:2:{s:11:\"customer_id\";s:2:\"56\";s:4:\"name\";s:11:\"Sensor Test\";}','127.0.0.1','2016-03-31 11:28:08'),(289,56,'address_add','a:2:{s:11:\"customer_id\";s:2:\"56\";s:4:\"name\";s:11:\"Sensor Test\";}','127.0.0.1','2016-03-31 11:40:45'),(290,56,'address_add','a:2:{s:11:\"customer_id\";s:2:\"56\";s:4:\"name\";s:11:\"Sensor Test\";}','127.0.0.1','2016-03-31 11:42:01'),(291,24,'login','a:2:{s:11:\"customer_id\";s:2:\"24\";s:4:\"name\";s:17:\"Visiona1 visiona1\";}','127.0.0.1','2016-03-31 12:37:22'),(292,56,'login','a:2:{s:11:\"customer_id\";s:2:\"56\";s:4:\"name\";s:11:\"Sensor Test\";}','127.0.0.1','2016-03-31 14:45:29');
/*!40000 ALTER TABLE `oc_customer_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_ban_ip`
--

DROP TABLE IF EXISTS `oc_customer_ban_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_ban_ip` (
  `customer_ban_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(40) NOT NULL,
  PRIMARY KEY (`customer_ban_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_ban_ip`
--

LOCK TABLES `oc_customer_ban_ip` WRITE;
/*!40000 ALTER TABLE `oc_customer_ban_ip` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_ban_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_group`
--

DROP TABLE IF EXISTS `oc_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_group`
--

LOCK TABLES `oc_customer_group` WRITE;
/*!40000 ALTER TABLE `oc_customer_group` DISABLE KEYS */;
INSERT INTO `oc_customer_group` VALUES (1,0,1);
/*!40000 ALTER TABLE `oc_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_group_description`
--

DROP TABLE IF EXISTS `oc_customer_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`customer_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_group_description`
--

LOCK TABLES `oc_customer_group_description` WRITE;
/*!40000 ALTER TABLE `oc_customer_group_description` DISABLE KEYS */;
INSERT INTO `oc_customer_group_description` VALUES (1,1,'Default','test'),(1,3,'Default','test');
/*!40000 ALTER TABLE `oc_customer_group_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_history`
--

DROP TABLE IF EXISTS `oc_customer_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_history`
--

LOCK TABLES `oc_customer_history` WRITE;
/*!40000 ALTER TABLE `oc_customer_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_ip`
--

DROP TABLE IF EXISTS `oc_customer_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_ip`
--

LOCK TABLES `oc_customer_ip` WRITE;
/*!40000 ALTER TABLE `oc_customer_ip` DISABLE KEYS */;
INSERT INTO `oc_customer_ip` VALUES (36,30,'127.0.0.1','2016-03-18 11:03:21'),(28,22,'127.0.0.1','2016-03-10 15:10:33'),(29,23,'127.0.0.1','2016-03-11 09:01:03'),(30,24,'127.0.0.1','2016-03-11 09:18:24'),(31,25,'127.0.0.1','2016-03-16 18:43:14'),(32,26,'127.0.0.1','2016-03-16 19:00:59'),(33,27,'127.0.0.1','2016-03-17 09:28:01'),(34,28,'127.0.0.1','2016-03-17 17:24:30'),(35,29,'127.0.0.1','2016-03-18 09:58:29'),(27,21,'127.0.0.1','2016-03-10 12:28:32'),(26,20,'127.0.0.1','2016-03-09 15:06:03'),(23,17,'127.0.0.1','2016-03-07 11:05:23'),(24,18,'127.0.0.1','2016-03-08 01:20:04'),(25,19,'127.0.0.1','2016-03-08 17:00:56'),(37,31,'127.0.0.1','2016-03-25 00:30:54'),(38,32,'127.0.0.1','2016-03-28 10:10:12'),(39,33,'127.0.0.1','2016-03-28 10:15:28'),(40,34,'127.0.0.1','2016-03-28 10:28:01'),(41,35,'127.0.0.1','2016-03-28 10:38:04'),(42,36,'127.0.0.1','2016-03-28 10:40:57'),(43,37,'127.0.0.1','2016-03-28 10:49:07'),(44,38,'127.0.0.1','2016-03-28 10:54:11'),(45,39,'127.0.0.1','2016-03-28 10:57:16'),(46,40,'127.0.0.1','2016-03-28 11:00:24'),(47,41,'127.0.0.1','2016-03-28 11:05:03'),(48,42,'127.0.0.1','2016-03-28 11:48:32'),(49,43,'127.0.0.1','2016-03-28 11:52:24'),(50,44,'127.0.0.1','2016-03-28 11:57:09'),(51,45,'127.0.0.1','2016-03-28 11:59:56'),(52,46,'127.0.0.1','2016-03-28 16:51:56'),(53,47,'127.0.0.1','2016-03-28 17:44:08'),(54,48,'127.0.0.1','2016-03-28 17:49:01'),(55,49,'127.0.0.1','2016-03-29 16:43:58'),(56,50,'127.0.0.1','2016-03-30 10:05:09'),(57,51,'127.0.0.1','2016-03-30 11:32:50'),(58,52,'127.0.0.1','2016-03-30 11:35:06'),(59,53,'127.0.0.1','2016-03-30 11:41:09'),(60,54,'127.0.0.1','2016-03-30 11:42:28'),(61,55,'127.0.0.1','2016-03-30 15:57:49'),(62,56,'127.0.0.1','2016-03-31 05:08:43'),(63,24,'217.125.140.200','2016-03-31 09:05:09'),(64,57,'217.125.140.200','2016-03-31 09:59:13'),(65,58,'127.0.0.1','2016-03-31 11:08:32'),(66,59,'127.0.0.1','2016-03-31 11:11:59'),(67,56,'217.125.140.200','2016-04-19 16:02:25');
/*!40000 ALTER TABLE `oc_customer_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_login`
--

DROP TABLE IF EXISTS `oc_customer_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`customer_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_login`
--

LOCK TABLES `oc_customer_login` WRITE;
/*!40000 ALTER TABLE `oc_customer_login` DISABLE KEYS */;
INSERT INTO `oc_customer_login` VALUES (1,'paco','192.168.0.28',2,'2015-09-16 13:37:32','2015-09-16 13:38:44'),(2,'admin','192.168.0.28',1,'2015-09-17 08:32:13','2015-09-17 08:32:13'),(3,'admin','192.168.1.57',3,'2015-10-16 12:58:35','2015-10-19 09:24:04'),(4,'admin','192.168.1.37',1,'2015-10-27 14:53:30','2015-10-27 14:53:30'),(5,'testvendor@email.es','217.125.140.200',6,'2015-12-16 15:41:47','2015-12-21 10:41:53'),(6,'','217.125.140.200',5,'2016-01-21 08:43:54','2016-02-12 11:37:25'),(7,'admin','217.125.140.200',1,'2016-02-11 11:24:35','2016-02-11 11:24:35'),(8,'jgonzalez@visiona-ip.es','217.125.140.200',2,'2016-02-11 16:12:40','2016-02-11 16:15:06'),(9,'admin','127.0.0.1',16,'2016-02-17 14:29:55','2016-03-30 13:55:21'),(12,'jose@jose.com','127.0.0.1',1,'2016-03-10 10:08:47','2016-03-10 10:08:47'),(13,'vnunmar@gmail.com','127.0.0.1',1,'2016-03-10 10:21:43','2016-03-10 10:21:43'),(14,'antionio@antonio.com','127.0.0.1',5,'2016-03-10 10:53:15','2016-03-10 10:53:43'),(16,'111@111.com','127.0.0.1',4,'2016-03-14 11:08:00','2016-03-14 11:08:13'),(25,' agrooliva@agrooliva.es','127.0.0.1',1,'2016-03-28 08:09:45','2016-03-28 08:09:45'),(20,'vvv@vvv.com','127.0.0.1',1,'2016-03-17 08:25:24','2016-03-17 08:25:24'),(28,'sensor-test@qfresh.co','127.0.0.1',3,'2016-03-31 03:07:04','2016-03-31 03:07:32');
/*!40000 ALTER TABLE `oc_customer_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_online`
--

DROP TABLE IF EXISTS `oc_customer_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_online`
--

LOCK TABLES `oc_customer_online` WRITE;
/*!40000 ALTER TABLE `oc_customer_online` DISABLE KEYS */;
INSERT INTO `oc_customer_online` VALUES ('127.0.0.1',0,'http://localhost:8080/index.php?route=common/home','http://localhost:8080/index.php?route=common/home','2016-03-03 11:57:43');
/*!40000 ALTER TABLE `oc_customer_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_reward`
--

DROP TABLE IF EXISTS `oc_customer_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `points` int(8) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_reward_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_reward`
--

LOCK TABLES `oc_customer_reward` WRITE;
/*!40000 ALTER TABLE `oc_customer_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_transaction`
--

DROP TABLE IF EXISTS `oc_customer_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_transaction`
--

LOCK TABLES `oc_customer_transaction` WRITE;
/*!40000 ALTER TABLE `oc_customer_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_wishlist`
--

DROP TABLE IF EXISTS `oc_customer_wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_wishlist`
--

LOCK TABLES `oc_customer_wishlist` WRITE;
/*!40000 ALTER TABLE `oc_customer_wishlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_wishlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_download`
--

DROP TABLE IF EXISTS `oc_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_download` (
  `download_id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(128) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_download`
--

LOCK TABLES `oc_download` WRITE;
/*!40000 ALTER TABLE `oc_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_download_description`
--

DROP TABLE IF EXISTS `oc_download_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`download_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_download_description`
--

LOCK TABLES `oc_download_description` WRITE;
/*!40000 ALTER TABLE `oc_download_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_download_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_event`
--

DROP TABLE IF EXISTS `oc_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(32) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_event`
--

LOCK TABLES `oc_event` WRITE;
/*!40000 ALTER TABLE `oc_event` DISABLE KEYS */;
INSERT INTO `oc_event` VALUES (6,'amazon_pay','post.customer.logout','module/amazon_pay/logout'),(5,'amazon_login','post.customer.logout','module/amazon_login/logout'),(4,'pp_login','post.customer.logout','module/pp_login/logout');
/*!40000 ALTER TABLE `oc_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_extension`
--

DROP TABLE IF EXISTS `oc_extension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM AUTO_INCREMENT=538 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_extension`
--

LOCK TABLES `oc_extension` WRITE;
/*!40000 ALTER TABLE `oc_extension` DISABLE KEYS */;
INSERT INTO `oc_extension` VALUES (22,'total','shipping'),(57,'total','sub_total'),(58,'total','tax'),(59,'total','total'),(521,'module','pavblog'),(390,'total','credit'),(387,'shipping','flat'),(349,'total','handling'),(350,'total','low_order_fee'),(389,'total','coupon'),(520,'module','pavbloglatest'),(393,'total','reward'),(398,'total','voucher'),(517,'module','manufacturer'),(500,'module','multimerch_shipping'),(434,'module','multiseller'),(519,'module','pavblogcomment'),(518,'module','pavblogcategory'),(443,'module','pavmegamenu'),(444,'module','themecontrol'),(516,'module','pp_login'),(515,'module','latest'),(514,'module','google_hangouts'),(513,'module','information'),(501,'module','multimerch_topsellers'),(502,'module','account'),(503,'module','affiliate'),(504,'module','bestseller'),(505,'module','banner'),(506,'module','carousel'),(507,'module','category'),(508,'module','amazon_button'),(509,'module','featured'),(510,'module','filter'),(511,'module','html'),(499,'module','multimerch_comments'),(498,'module','multimerch_masspay'),(497,'module','multimerch_newsellers'),(522,'module','amazon_login'),(496,'module','multimerch_social_links'),(495,'module','multimerch_badges'),(494,'module','multimerch_messaging'),(492,'module','sellers'),(485,'payment','stripe'),(490,'total','ms_shipping'),(523,'module','pavcustom'),(524,'module','pavfooterlink'),(525,'module','pavsliderlayer'),(526,'module','pavnewsletter'),(527,'module','pavproducttabs'),(528,'module','pavtestimonial'),(529,'module','amazon_pay'),(530,'module','pp_button'),(531,'module','popular'),(532,'module','slideshow'),(533,'module','special'),(534,'module','store'),(535,'module','ebay_listing'),(536,'feed','google_sitemap'),(537,'feed','google_base');
/*!40000 ALTER TABLE `oc_extension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filter`
--

DROP TABLE IF EXISTS `oc_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filter` (
  `filter_id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filter`
--

LOCK TABLES `oc_filter` WRITE;
/*!40000 ALTER TABLE `oc_filter` DISABLE KEYS */;
INSERT INTO `oc_filter` VALUES (4,1,4),(3,1,3),(2,1,2),(1,1,1);
/*!40000 ALTER TABLE `oc_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filter_description`
--

DROP TABLE IF EXISTS `oc_filter_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filter_description`
--

LOCK TABLES `oc_filter_description` WRITE;
/*!40000 ALTER TABLE `oc_filter_description` DISABLE KEYS */;
INSERT INTO `oc_filter_description` VALUES (4,3,1,'Invierno'),(3,1,1,'Otoño'),(3,3,1,'Otoño'),(2,1,1,'Verano'),(2,3,1,'Verano'),(1,1,1,'Primavera'),(1,3,1,'Primavera'),(4,1,1,'Invierno');
/*!40000 ALTER TABLE `oc_filter_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filter_group`
--

DROP TABLE IF EXISTS `oc_filter_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filter_group`
--

LOCK TABLES `oc_filter_group` WRITE;
/*!40000 ALTER TABLE `oc_filter_group` DISABLE KEYS */;
INSERT INTO `oc_filter_group` VALUES (1,1);
/*!40000 ALTER TABLE `oc_filter_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filter_group_description`
--

DROP TABLE IF EXISTS `oc_filter_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filter_group_description`
--

LOCK TABLES `oc_filter_group_description` WRITE;
/*!40000 ALTER TABLE `oc_filter_group_description` DISABLE KEYS */;
INSERT INTO `oc_filter_group_description` VALUES (1,1,'Producto de temporada'),(1,3,'Producto de temporada');
/*!40000 ALTER TABLE `oc_filter_group_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_geo_zone`
--

DROP TABLE IF EXISTS `oc_geo_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_modified` datetime NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_geo_zone`
--

LOCK TABLES `oc_geo_zone` WRITE;
/*!40000 ALTER TABLE `oc_geo_zone` DISABLE KEYS */;
INSERT INTO `oc_geo_zone` VALUES (3,'UK VAT Zone','UK VAT','2010-02-26 22:33:24','2009-01-06 23:26:25'),(4,'UK Shipping','UK Shipping Zones','2010-12-15 15:18:13','2009-06-23 01:14:53');
/*!40000 ALTER TABLE `oc_geo_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_information`
--

DROP TABLE IF EXISTS `oc_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_information` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT,
  `bottom` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`information_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_information`
--

LOCK TABLES `oc_information` WRITE;
/*!40000 ALTER TABLE `oc_information` DISABLE KEYS */;
INSERT INTO `oc_information` VALUES (3,1,3,1),(4,1,1,1),(5,0,4,1),(6,1,2,1);
/*!40000 ALTER TABLE `oc_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_information_description`
--

DROP TABLE IF EXISTS `oc_information_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`information_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_information_description`
--

LOCK TABLES `oc_information_description` WRITE;
/*!40000 ALTER TABLE `oc_information_description` DISABLE KEYS */;
INSERT INTO `oc_information_description` VALUES (6,1,'Envíos','&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n','envios','',''),(4,1,'Sobre Nosotros','&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Sobre Nosotros&lt;br&gt;&lt;/p&gt;\r\n','Sobre Nosotros','',''),(5,1,'Términos y Condiciones','&lt;p&gt;\r\n	Términos y Condiciones&lt;/p&gt;\r\n','Términos y Condiciones','',''),(3,3,'Politica de privacidad','&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;&quot; id=&quot;docs-internal-guid-acf5d5ab-bda3-f2ef-0d9c-4127184aa2af&quot;&gt;&lt;span style=&quot;font-size: 26.6667px; font-family: Calibri; color: rgb(169, 255, 50); font-weight: 700; vertical-align: baseline; background-color: transparent;&quot;&gt;POLÍTICA DE PRIVACIDAD &amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;br&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;VISIONA INGENIERÍA DE PROYECTOS S.L. informa a los usuarios del sitio web sobre su política respecto del tratamiento y protección de los datos de carácter personal de los usuarios y clientes que puedan ser recabados por la navegación o contratación de servicios a través de su sitio web. En este sentido, VISIONA INGENIERÍA DE PROYECTOS S.L. garantiza el cumplimiento de la normativa vigente en materia de protección de datos personales, reflejada en la Ley Orgánica 15/1999 de 13 de diciembre, de Protección de Datos de Carácter Personal y en el Real Decreto 1720/2007, de 21 diciembre, por el que se aprueba el Reglamento de Desarrollo de la LOPD. &lt;/span&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;El uso de esta web implica la aceptación de esta política de privacidad. &lt;/span&gt;&lt;/p&gt;&lt;br&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 26.6667px; font-family: Calibri; color: rgb(169, 255, 50); font-weight: 700; vertical-align: baseline; background-color: transparent;&quot;&gt;RECOGIDA, FINALIDAD Y TRATAMIENTO DE DATOS &lt;/span&gt;&lt;/p&gt;&lt;br&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;VISIONA INGENIERÍA DE PROYECTOS S.L. tiene el deber de informar a los usuarios de su sitio web acerca de la recogida de datos de carácter personal que pueden llevarse a cabo, bien sea mediante el envío de correo electrónico o al cumplimentar los formularios incluidos en el sitio web. En este sentido, VISIONA INGENIERÍA DE PROYECTOS S.L. será &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;considerada como responsable de los datos recabados mediante los medios &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;anteriormente descritos. &lt;/span&gt;&lt;/p&gt;&lt;br&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;A su vez VISIONA INGENIERÍA DE PROYECTOS S.L. informa a los usuarios de que la finalidad del tratamiento de los datos recabados contempla: La atención de solicitudes realizadas por los usuarios, la inclusión en la agenda de contactos, la prestación de servicios y la gestión de la relación comercial. &lt;/span&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt; &lt;/span&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;Las operaciones, gestiones y procedimientos técnicos que se realicen de forma automatizada o no automatizada y que posibiliten la recogida, el almacenamiento, la modificación, la transferencia y otras acciones sobre datos de carácter personal, tienen la consideración de tratamiento de datos personales. &lt;/span&gt;&lt;/p&gt;&lt;br&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;Todos los datos personales, que sean recogidos a través del sitio web de VISIONA INGENIERÍA DE PROYECTOS S.L., y por tanto tenga la consideración de tratamiento de datos de carácter personal, serán incorporados en los ficheros declarados ante la Agencia Española de Protección de Datos por VISIONA INGENIERÍA DE PROYECTOS S.L.&lt;/span&gt;&lt;/p&gt;&lt;br&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 26.6667px; font-family: Calibri; color: rgb(169, 255, 50); font-weight: 700; vertical-align: baseline; background-color: transparent;&quot;&gt;COMUNICACIÓN DE INFORMACIÓN A TERCEROS&lt;/span&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; vertical-align: baseline; background-color: transparent;&quot;&gt; &lt;/span&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;VISIONA INGENIERÍA DE PROYECTOS S.L. informa a los usuarios de que sus datos personales no serán cedidos a terceras organizaciones, con la salvedad de que dicha cesión de datos esté amparada en una obligación legal o cuando la prestación de un servicio implique la necesidad de una relación contractual con un encargado de tratamiento. &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;En este último caso, sólo se llevará a cabo la cesión de datos al tercero cuando &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;VISIONA INGENIERÍA DE PROYECTOS S.L disponga del consentimiento expreso del usuario.&lt;/span&gt;&lt;/p&gt;&lt;br&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; vertical-align: baseline; background-color: transparent;&quot;&gt; &lt;/span&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 26.6667px; font-family: Calibri; color: rgb(169, 255, 50); font-weight: 700; vertical-align: baseline; background-color: transparent;&quot;&gt;DERECHOS DE LOS USUARIOS &lt;/span&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;&quot;&gt;&lt;span style=&quot;font-size: 24px; font-family: KodchiangUPC; color: rgb(0, 184, 243); font-weight: 700; vertical-align: baseline; background-color: transparent;&quot;&gt; &lt;/span&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;La Ley Orgánica 15/1999, de 13 de diciembre, de Protección de Datos de Carácter Personal concede a los interesados la posibilidad de ejercer una serie de derechos &amp;nbsp;relacionados con el tratamiento de sus datos personales. En tanto en cuanto los datos del usuario son objeto de tratamiento por parte de Visiona Ingeniería de Proyectos.&lt;/span&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(255, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt; &lt;/span&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;Los usuarios podrán ejercer los derechos de acceso, rectificación, cancelación y oposición de acuerdo con lo previsto en la normativa legal vigente en materia de protección de datos personales. &lt;/span&gt;&lt;/p&gt;&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;Para hacer uso del ejercicio de estos derechos, el usuario deberá dirigirse mediante comunicación escrita, aportando documentación que acredite su identidad (DNI o pasaporte), a la siguiente dirección: VISIONA INGENIERÍA DE PROYECTOS S.L, C/ Copenhague 8, local 110, 28232, Las Rozas, Madrid o a la cuenta de correo: info@qfresh.co &lt;/span&gt;&lt;/p&gt;&lt;br&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;Dicha comunicación deberá reflejar la siguiente información: Nombre y apellidos del usuario, la petición de solicitud, el domicilio y los datos acreditativos. El ejercicio de derechos deberá ser realizado por el propio usuario. No obstante, podrán ser ejecutados por una persona autorizada como representante legal del autorizado. En tal caso, se deberá aportar la documentación que acredite esta representación del interesado.&lt;/span&gt;&lt;/p&gt;&lt;br&gt;\r\n','Politica de privacidad','',''),(6,3,'Envíos','&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n','','',''),(4,3,'Sobre Nosotros','&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Sobre Nosotros&lt;br&gt;&lt;/p&gt;\r\n','','',''),(3,1,'Politica de privacidad','Política de privacidad&lt;br&gt;\r\n','Politica de privacidad','',''),(5,3,'Términos y Condiciones','&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: \'Yu Gothic\'; font-size: 13.3333px; font-weight: 700; line-height: 1.2; text-align: justify; background-color: transparent;&quot;&gt;POR FAVOR, LEA DETENIDAMENTE LAS PRESENTES CONDICIONES PARTICULARES. EL USO DE LOS SERVICIOS ABAJO DESCRITOS IMPLICARÁ, POR SU PARTE, LA ACEPTACIÓN PREVIA, EXPRESA Y SIN EXCEPCIONES DE LA TOTALIDAD DE LOS TÉRMINOS Y CONDICIONES AQUÍ PREVISTOS.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 13.3333px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); font-weight: 700; vertical-align: baseline; background-color: transparent;&quot;&gt;SI VD. NO ESTÁ CONFORME CON LAS PRESENTES CONDICIONES PARTICULARES, NO HAGA USO DE LOS SERVICIOS.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 13.3333px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); font-weight: 700; vertical-align: baseline; background-color: transparent;&quot;&gt;LAS PRESENTES CONDICIONES PARTICULARES FORMAN PARTE INTEGRANTE DEL AVISO LEGAL.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: Arial; color: rgb(51, 51, 51); font-weight: 700; vertical-align: baseline; background-color: transparent;&quot;&gt;OBJETO&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;QFRESH.CO es un portal de internet que ofrece servicios de distribución al por menor de distintas categorías de productos ofrecidos por los establecimientos asociados al sistema “QFRESH.CO”, productos que, con las características, condiciones y precios que se muestran en el catálogo del Portal Web, pueden adquirir los usuarios del Portal.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;Las presentes condiciones tienen por objeto regular la relación jurídica y comercial entre QFRESH.CO y el USUARIO en todas las transacciones que se realicen en este Portal Web.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 13.3333px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); font-weight: 700; vertical-align: baseline; background-color: transparent;&quot;&gt;PROCEDIMIENTO DE REGISTRO Y ORDEN DE PEDIDO.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;1. Para utilizar el servicio de tienda online el Usuario deberá estar registrado. Cualquier Orden de Pedido no quedará perfeccionada, hasta que sean validados en la web los datos facilitados por el USUARIO, tras la suscripción del formulario de registro, y tras la aceptación de las presentes condiciones y de la política de privacidad, haciendo clic en el botón de aceptación.&lt;/span&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;QFRESH.CO obliga a facilitar al Usuario la confirmación de la recepción de la aceptación, inmediatamente después de que el USUARIO haya completado el procedimiento de registro, y haya aceptado las condiciones de uso y la política de privacidad. Antes de continuar, QFRESH.CO recomienda al USUARIO que imprima o guarde una copia local de las condiciones y de la aceptación como referencia propia.&lt;/span&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;En caso de que la confirmación no pueda ser mostrada al USUARIO inmediatamente después de la aceptación, QFRESH.CO se compromete a facilitarla mediante el envío de un correo electrónico o por otro medio de comunicación electrónica equivalente, a la dirección que el USUARIO haya señalado, en un plazo máximo de veinticuatro horas siguientes a la recepción de la aceptación.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;2. Para realizar un Pedido, el USUARIO habrá de seleccionar previamente los productos del catálogo del Portal Web pulsando el botón “añadir” y agregarlos al carrito de compra pulsando el botón «comprar» (o “agregar al carrito”). Una vez haya agregado los productos que desee comprar al carrito, deberá hacer clic en el botón&lt;/span&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(255, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt; &lt;/span&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;«Confirmar compra».&lt;/span&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;Para procesar el pedido el Usuario, previo Registro en la Web, deberá rellenar el formulario de compra y aceptar las condiciones de uso y política de privacidad, facilitando los datos que le sean solicitados y optando por el método de pago que prefiera.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;3. Cuando para prestar los servicios sea necesaria información o documentación a facilitar por el USUARIO a QFRESH.CO las obligaciones de esta última quedarán suspendidas hasta que dicha información o material sean proporcionados, no siendo responsable QFRESH.CO de la pérdida, daño, perjuicio o gasto producido directa o indirectamente por los retrasos y/o fallos en el suministro o envío de los contenidos solicitados.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;4. Una vez perfeccionado el contrato y/o proporcionada la información necesaria por parte del USUARIO a QFRESH.CO, QFRESH.CO archivará el documento electrónico en que se formalice el contrato, junto con los datos, la información y los documentos necesarios para que QFRESH.CO pueda proceder al cumplimiento del mismo. En todo caso, QFRESH.CO recomienda al USUARIO que imprima o guarde una copia local del documento electrónico como referencia propia.&lt;/span&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;QFRESH.CO confirmará el pedido a través del envío de un correo electrónico. Por motivos de seguridad no se permite la creación de cuentas de Usuario en QFRESH.CO mediante servicios de correo electrónico temporales tales como, a título informativo y no limitativo, Spamgourmet, 10minutemail, Jetable, Yopmail, Mailcatch, Guerrillamail, etc&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 13.3333px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); font-weight: 700; vertical-align: baseline; background-color: transparent;&quot;&gt;REQUISITOS PARA LA CONTRATACIÓN.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;1. Para poder cumplimentar el formulario de registro, aceptar las condiciones del contrato y utilizar los servicios ofrecidos en la Web, el Usuario ha de hallarse en pleno uso de sus facultades de contratación.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;2. El USUARIO declara que es mayor de edad, o en caso contrario, que cuenta con el consentimiento de sus padres, tutores o representantes legales, los cuales serán considerados como responsables de los actos que lleven a cabo los menores o demás personas a su cargo, conforme a la normativa vigente. Los menores de edad deberán obtener una autorización de sus padres o representantes legales para que sean dados de alta como usuarios. Dicha autorización deberá ser remitida previamente a la contratación debidamente firmada a través de la dirección de correo electrónico &lt;/span&gt;&lt;a href=&quot;mailto:info@qfresh.co&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 255); text-decoration: underline; vertical-align: baseline; background-color: transparent;&quot;&gt;info@qfresh.co&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;3. Si algún registro revelase que el USUARIO es menor de edad, QFRESH.CO tratará de notificar a los padres o representantes legales del menor el contenido de la información recibida y recabará su consentimiento para la recogida y tratamiento de los datos del mismo. En cualquier momento, los padres o el representante legal del menor podrán revisar, cancelar o denegar la recogida de datos personales de aquél dirigiéndose a QFRESH.CO en la dirección anteriormente reseñada.&lt;/span&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 13.3333px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); font-weight: 700; vertical-align: baseline; background-color: transparent;&quot;&gt;PRODUCTOS.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;1. Los productos ofertados en la Web, junto con sus características y precio aparecerán en pantalla.&lt;/span&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;QFRESH.CO procurará entregar los productos de modo idéntico al que se presentan en el catálogo del Portal Web. Sin embargo, pueden variar en ocasiones ciertas especificaciones o características.&lt;/span&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;Las imágenes que acompañan a los productos ofertados son ilustrativas y pueden o no coincidir exactamente con el producto ofertado. En cualquier caso, qfresh.co llevará a cabo sus mejores esfuerzos para que el título y la descripción coincidan con la fotografía del producto ofertado. En todo caso, dichas variaciones no afectarán de forma esencial a los productos solicitados.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;2. QFRESH.CO se reserva el derecho a modificar los contenidos, productos o servicios comercializados desde la página web, así como las ofertas comerciales presentadas en cualquier momento.&lt;/span&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;Los nuevos productos y contenidos de la Web se regirán por lo dispuesto en las Condiciones de uso vigentes en cada momento.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;3. QFRESH.CO hace todos los esfuerzos dentro de los medios posibles para ofrecer la información contenida en la Web de forma veraz y sin errores tipográficos. En el caso que en algún momento se produjera algún error en la información, ajeno en todo momento a la voluntad de QFRESH.CO, se procedería inmediatamente a su corrección. De existir un error tipográfico en alguno de los precios mostrados y algún Usuario hubiera tomado una decisión basada en dicho error, QFRESH.CO dará traslado al Usuario del error y el Usuario tendrá derecho a rescindir su pedido sin ningún coste por su parte.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;4. QFRESH.CO no garantiza la disponibilidad de la gama de productos.&lt;/span&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;No obstante, QFRESH.CO llevará a cabo sus mejores esfuerzos por complacer a los USUARIOS en la demanda de los productos. En caso de no estar disponible en el establecimiento el producto después de haberse realizado el pedido, QFRESH.CO procederá a sustituir el producto según las preferencias indicadas por el Usuario en la web. QFRESH.CO ofrece a sus Usuarios tres opciones de sustitución de productos para los casos en que alguno o varios de los productos solicitados por el Usuario no se encuentren en el establecimiento físico del Colaborador, donde se realiza la compra:&lt;/span&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;• Opción A: “No sustituir”. En este caso, el Personal Shopper no sustituirá el producto solicitado y no encontrado por otro.&lt;/span&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;• Opción B: “Llamada de sustitución”. En este caso, si el Personal Shopper no encuentra uno o varios productos, llamará al USUARIO para informarle de los productos sustitutivos existentes en el establecimiento. El USUARIO deberá indicar al Personal Shopper cuál de los productos sustitutivos desea adquirir y el Personal Shopper procederá a comprarlo. En el caso en el que el Personal Shopper no consiga localizar otro producto, aplicaría la opción A “no sustituir”.&lt;/span&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;•&lt;/span&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;Opción C: En este caso, el Personal Shopper determinaría el producto sustitutivo más adecuado en función de las reglas de sustitución de QFRESH.CO&lt;/span&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;El Usuario acepta que en cualquiera de las opciones elegidas, el pedido resultante entregado será conforme a lo contratado y no dará derecho al Usuario a la devolución de los productos, a excepción de los productos en mal estado y sin menoscabo de su derecho de desistimiento.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;5. El peso total del pedido no podrá ser superior a 20 kilos.&lt;/span&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;6. Las bebidas alcohólicas sólo pueden ser adquiridas por USUARIOS que tengan más de 18 años de edad. El USUARIO que adquiera bebidas alcohólicas declara expresamente y garantiza que es mayor de edad y está obligado a proporcionar de buena fe a su Personal Shopper en el momento de la entrega del pedido la identificación que muestre su mayoría de edad.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 13.3333px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); font-weight: 700; vertical-align: baseline; background-color: transparent;&quot;&gt;PRECIOS Y GASTOS.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;1. Los precios aplicables a cada producto son los indicados en el sitio Web en la fecha del pedido, incluyendo el IVA.&lt;/span&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;El importe de la compra podrá no coincidir con el importe del pedido debido a la existencia de productos de peso variable, a la sustitución de los productos no encontrados según la opción de sustitución elegida por el Usuario y a la imposibilidad de entregar los productos que no se encuentren en la tienda o establecimiento donde se adquieren.&lt;/span&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;En aquellos supuestos en que el precio de los productos venga determinado por el peso, se indicará bien el precio por unidad de peso, bien el precio del producto envasado, si bien en este último caso el precio final dependerá del peso real del mismo.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;2. QFRESH.CO se reserva el derecho a efectuar, en cualquier momento y sin previo aviso, las modificaciones que considere oportunas, pudiendo actualizar diariamente productos y servicios en función del valor de mercado.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;3. Las ofertas estarán debidamente marcadas e identificadas como tales, indicando convenientemente el precio anterior y el precio de la oferta.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;4. De forma general, el precio de los productos ofertados en la página web corresponderá con el precio real de los productos en el establecimiento donde se adquieran.&lt;/span&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;Para determinados establecimientos, el precio de los productos podrá ser distinto al precio real del establecimiento. QFRESH.CO comunicará en la Web, para cada establecimiento, si el precio de los productos es el precio real de la tienda, o si corresponde a un precio determinado por QFRESH.CO. En todo momento, QFRESH.CO velará por disponer de precios actualizados de forma que pueda evitar diferencias entre el precio de la web y el precio real de la tienda.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;5. Los gastos de envío a domicilio correspondientes se mostrarán en la página web de forma previa a la confirmación del pedido, de manera que podrán conocerse antes de realizar la compra.&lt;/span&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(255, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;De forma general la tarifa de entrega será:&lt;/span&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(255, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;• 4,90 euros por pedido, para pedidos íntegramente comprados y entregados en lugares sitos en el mismo código postal.&lt;/span&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(255, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;• 4,90 euros por el número de pedidos realizados a tiendas cuya entrega sea en códigos postales distintos.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;QFRESH.CO se reserva el derecho a modificar las tarifas de los envíos. Cualquier cambio será comunicado siempre de forma previa a la confirmación del pedido.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 13.3333px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); font-weight: 700; vertical-align: baseline; background-color: transparent;&quot;&gt;FORMA DE PAGO.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;1. Al formular la Orden de Pedido, el USUARIO puede elegir libremente abonar las compras que realice a través de los siguientes sistemas:&lt;/span&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;• Con tarjeta de crédito o débito: Visa, MasterCard y American Express, utilizando una pasarela de pagos segura de la &lt;/span&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(255, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;entidad bancaria……………… &lt;/span&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;que conecta con el Banco del Usuario.&lt;/span&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;• Mediante Paypal (www.paypal.com): sistema que permite pagar vía Internet de forma segura utilizando una cuenta PayPal que ya tenga creada el Usuario, o simplemente introduciendo los datos de su tarjeta de crédito o débito.&lt;/span&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;El USUARIO manifiesta que dispone de fondos suficientes para cubrir todos los costes que resultan de la compra de productos a través de la Web.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;2. Para la adquisición de los productos se requiere rellenar el formulario con los datos de pago.&lt;/span&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;En el caso de que el pago con tarjeta de crédito no se acepte por la plataforma de pago, se anulará el pedido del USUARIO.&lt;/span&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;3. En determinados casos y para prevenir posibles fraudes la Compañía se reserva la posibilidad de solicitar a un cliente una forma de pago concreta en el caso de que no se acredite fehacientemente la identidad del comprador.&lt;/span&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;Con el fin de garantizar la mayor seguridad, QFRESH.CO se reserva el derecho de solicitar los documentos correspondientes a la identidad y medio de pago del USUARIO, con carácter previo a la entrega del pedido.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;4. Por la propia seguridad del Usuario, QFRESH.CO ha confiado el sistema de pago mediante tarjeta de crédito a una pasarela de pagos. Se necesitan las claves de la tarjeta para pagar. Estas claves serán solicitadas una vez el Usuario entre en la plataforma de su Banco. Exigir estas claves para pagar con la tarjeta ayuda a dar un nivel adicional de seguridad.&lt;/span&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;Únicamente el Banco y PayPal tienen acceso a los datos bancarios vinculados a estos medios de pago, de manera que QFRESH.CO no tiene acceso ni conoce ni registra estos datos durante la operación de pago ni en cualquier otro momento. Los datos bancarios introducidos son encriptados, no se almacenan ni comparten con terceros para ningún otro fin que no sea efectuar el pago de la transacción, y son transmitidos de forma segura a los servidores de la entidad bancaria y, posteriormente, son verificados con el banco emisor para evitar posibles fraudes y abusos.&lt;/span&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;Todas nuestras transacciones financieras de sitios web se manejan a través de nuestro proveedor de servicios de pago, Stripe. Puedes revisar su política de privacidad en &lt;/span&gt;&lt;a href=&quot;https://stripe.com/es/terms&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;https://stripe.com/es/terms&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;. Vamos a compartir información con Stripe solo en la medida necesaria para los fines de procesamiento de pagos que EL USUARIO haga a través de nuestra página web, reembolsar estos pagos y hacer frente a las quejas y consultas relacionadas con dichos pagos y reembolsos.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;5. Una vez realizado el pago, y en función del resultado, se informará al Usuario de si la operación se ha realizado con éxito o si ha ocurrido algún problema.&lt;/span&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;Los datos registrados por QFRESH.CO constituyen la prueba de las transacciones realizadas hechas entre QFRESH.CO y el USUARIO.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 13.3333px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); font-weight: 700; vertical-align: baseline; background-color: transparent;&quot;&gt;IMPUESTOS APLICABLES.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;Los precios de los productos expuestos en la página web de QFRESH.CO, incluyen el porcentaje adicional que se ha de añadir en concepto de Impuesto sobre el Valor Añadido (IVA) o el que, en su caso, sea procedente aplicar.&lt;/span&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;Los servicios prestados estarán sujetos a los impuestos indirectos que resulten de aplicación en cada territorio.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 13.3333px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); font-weight: 700; vertical-align: baseline; background-color: transparent;&quot;&gt;ENTREGA.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;1. La entrega de productos se limita a la Península Ibérica,&lt;/span&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(255, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt; &lt;/span&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;El USUARIO deberá designar el lugar de la entrega, debiendo especificar su domicilio, oficina o centro donde serán entregados los productos seleccionados, así como su teléfono de contacto disponible.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;2. QFRESH.CO no se hará responsable de los retrasos ni de los daños y perjuicios por la imposibilidad de entrega de los Productos por causas imputables al destinatario, como pudiera ser que no hubiera una persona encargada de la formalización de la entrega en el lugar del destino y fecha y hora acordados, o que la dirección de entrega designada no sea correcta, reservándose el derecho de anular el Pedido realizado.&lt;/span&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;En este supuesto, QFRESH.CO se reserva de forma unilateral, la facultad de reintegrar el importe de la compra a dicho USUARIO, restando en todo caso al importe correspondiente los gastos que se hubieran devengado como consecuencia del transporte y/o de la preparación de la compra por parte de ésta, así como los gastos de devolución. &lt;/span&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(255, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;Los gastos de entrega ascenderán a un importe de entre 4,9 y un máximo de 14,7 euros en función de la dirección final de entrega y las características del pedido&lt;/span&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;3. La entrega se considerará efectuada a partir de la puesta a disposición del producto al cliente en el lugar señalado por él para la entrega del pedido en el momento de contratación.&lt;/span&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;El destinatario del producto se responsabilizará de la revisión de las unidades entregadas, y de la firma del albarán. Los posibles errores o desperfectos en las unidades entregadas habrán de ser notificadas en un plazo máximo de veinticuatro (24) horas después de la firma del albarán por email a la dirección info@qfresh.co bien llamando al +34 91 449 64 81. De lo contrario, se presumirá que han sido entregadas al USUARIO en perfectas condiciones.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 13.3333px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); font-weight: 700; vertical-align: baseline; background-color: transparent;&quot;&gt;CANCELACIÓN Y DESISTIMIENTO.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;1. QFRESH.CO se reserva el derecho a cancelar cualquier pedido cuando lo estime oportuno por causas justificadas, comunicándolo al Usuario previamente. QFRESH.CO se reserva el derecho de cancelar un pedido de manera unilateral si considera que no se dan las condiciones adecuadas para realizar un transporte económica u operacionalmente viable.&lt;/span&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;El USUARIO podrá cancelar su pedido sin penalización hasta cinco horas antes del inicio de la franja de entrega informado al USUARIO con la confirmación del pedido, llamando al servicio de atención telefónica de QFRESH.CO: +34 91 449 64 81. &lt;/span&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;Con una anticipación menor a cinco horas antes del inicio de la franja de entrega no es posible cancelar un pedido y por tanto, el importe de los productos perecederos será cargado en la tarjeta del USUARIO tras la entrega.&lt;/span&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;En el caso de no estar presente en la dirección de entrega durante la franja de entrega acordada, y no fuera posible la entrega, se cargará en la tarjeta del USUARIO el importe de los productos perecederos, incluidos los gastos de envío.&lt;/span&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;En el caso de que el USUARIO informe de que no estará presente en la franja de entrega acordada, con antelación de hasta una hora antes del inicio de la franja de entrega, y si no se pudiera acordar una franja de entrega distinta, el importe de los gastos de envío no será cargado en su tarjeta, si bien, sí será cargado el importe de los productos perecederos.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;2. Si el Usuario reúne la condición de “consumidor y usuario” a los efectos de lo dispuesto en el Texto Refundido de la Ley de Defensa de Consumidores y Usuarios, podrá ejercer su derecho de desistimiento del contrato, sin necesidad de justificar su decisión y sin penalización de ninguna clase en el plazo improrrogable de catorce (14) días a contar desde la fecha de aceptación de la Orden de Pedido.&lt;/span&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;Para ejercitar su derecho de desistimiento el USUARIO podrá utilizar cualquier forma admitida en Derecho. El USUARIO podrá utilizar el modelo de formulario que figura en el Anexo B en la Ley /2014, de 27 de marzo, y dirigir una comunicación a la siguiente dirección de correo electrónico: info@qfresh.co&lt;/span&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;QFRESH.CO reembolsará todo pago recibido del USUARIO en el plazo de catorce (14) días desde la recepción de la decisión de desistimiento del USUARIO:&lt;/span&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;• Si el producto fuera defectuoso o no fuera conforme a lo contratado, el USUARIO tendrá derecho a devolver a la devolución del precio del pedido, o su entrega en el siguiente pedido haciéndose cargo el productor, de dicho producto.&lt;/span&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;• Por el contrario, en caso de desistimiento no justificado por las causas mencionadas, el USUARIO soportará los costes directos de la devolución de los productos. En este caso, se dan dos posibles circunstancias:&lt;/span&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;O Pedido con gastos de envío a cargo del Usuario: Se devolverá el precio del producto más los gastos de envío.&lt;/span&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt;O Pedido con gastos de envío gratis: Se devolverá el precio pagado en la compra de la oferta.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: \'Yu Gothic\'; color: rgb(0, 0, 0); vertical-align: baseline; background-color: transparent;&quot;&gt; 3. La devolución del importe abonado se efectuará a través del medio de pago que utilizó en la compra y en un plazo no superior a 14 días naturales.&lt;/span&gt;&lt;/p&gt;\r\n','Terminos y condiciones','','');
/*!40000 ALTER TABLE `oc_information_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_information_to_layout`
--

DROP TABLE IF EXISTS `oc_information_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_information_to_layout`
--

LOCK TABLES `oc_information_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_information_to_layout` DISABLE KEYS */;
INSERT INTO `oc_information_to_layout` VALUES (4,0,0),(6,0,0),(3,0,0),(5,0,6);
/*!40000 ALTER TABLE `oc_information_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_information_to_store`
--

DROP TABLE IF EXISTS `oc_information_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_information_to_store`
--

LOCK TABLES `oc_information_to_store` WRITE;
/*!40000 ALTER TABLE `oc_information_to_store` DISABLE KEYS */;
INSERT INTO `oc_information_to_store` VALUES (3,0),(4,0),(5,0),(6,0);
/*!40000 ALTER TABLE `oc_information_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_language`
--

DROP TABLE IF EXISTS `oc_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_language`
--

LOCK TABLES `oc_language` WRITE;
/*!40000 ALTER TABLE `oc_language` DISABLE KEYS */;
INSERT INTO `oc_language` VALUES (1,'English','en','en_US.UTF-8,en_US,en-gb,english','gb.png','english',2,0),(3,'Español','es','es_ES.UTF-8,es_ES,es-es,es_es,español','es.png','spanish',1,1);
/*!40000 ALTER TABLE `oc_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_layout`
--

DROP TABLE IF EXISTS `oc_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_layout`
--

LOCK TABLES `oc_layout` WRITE;
/*!40000 ALTER TABLE `oc_layout` DISABLE KEYS */;
INSERT INTO `oc_layout` VALUES (1,'Home'),(2,'Product'),(3,'Category'),(4,'Default'),(5,'Manufacturer'),(6,'Account'),(7,'Checkout'),(8,'Contact'),(9,'Sitemap'),(10,'Affiliate'),(11,'Information'),(12,'Compare'),(13,'Search'),(14,'Growers'),(15,'Welcome'),(25,'[MultiMerch] Sellers List'),(26,'[MultiMerch] Seller Profile Page'),(24,'[MultiMerch] Seller Account Pages'),(27,'[MultiMerch] Seller Products List'),(30,'IOT');
/*!40000 ALTER TABLE `oc_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_layout_module`
--

DROP TABLE IF EXISTS `oc_layout_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`layout_module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2923 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_layout_module`
--

LOCK TABLES `oc_layout_module` WRITE;
/*!40000 ALTER TABLE `oc_layout_module` DISABLE KEYS */;
INSERT INTO `oc_layout_module` VALUES (2920,1,'pavcustom.107','content_bottom',1),(2919,1,'pavcustom.103','content_bottom',0),(2918,1,'featured.106','content_top',7),(2917,1,'pavcustom.121','content_top',6),(2916,1,'featured.105','content_top',5),(2915,1,'pavcustom.122','content_top',4),(1743,14,'banner.109','content_top',0),(2914,1,'featured.104','content_top',3),(2913,1,'pavcustom.119','content_top',2),(2912,1,'featured.99','content_top',1),(2911,1,'pavcustom.120','content_top',0),(2910,1,'pavcustom.108','slideshow',0),(2853,30,'pavsliderlayer.124','content_top',0),(2897,24,'pavcustom.127','content_bottom',0),(2895,26,'banner.109','mainmenu',0),(2921,1,'pavcustom.102','footer_top',0),(2922,6,'pavcustom.127','mass_bottom',0);
/*!40000 ALTER TABLE `oc_layout_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_layout_route`
--

DROP TABLE IF EXISTS `oc_layout_route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(255) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM AUTO_INCREMENT=624 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_layout_route`
--

LOCK TABLES `oc_layout_route` WRITE;
/*!40000 ALTER TABLE `oc_layout_route` DISABLE KEYS */;
INSERT INTO `oc_layout_route` VALUES (623,6,0,'account/%'),(17,10,0,'affiliate/%'),(622,1,0,'common/home'),(24,11,0,'information/information'),(23,7,0,'checkout/%'),(31,8,0,'information/contact'),(32,9,0,'information/sitemap'),(34,4,0,''),(313,5,0,'information/welcome'),(52,12,0,'product/compare'),(53,13,0,'product/search'),(508,14,0,'Manufacturers'),(445,2,0,'product/category'),(66,15,0,'welcome/static'),(76,25,0,'seller/catalog-seller'),(618,26,0,'seller/catalog-seller/profile'),(78,27,0,'seller/catalog-seller/products'),(620,24,0,'seller/account-%'),(442,3,0,'product/category'),(609,30,0,'account/iot');
/*!40000 ALTER TABLE `oc_layout_route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_length_class`
--

DROP TABLE IF EXISTS `oc_length_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_length_class` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL,
  PRIMARY KEY (`length_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_length_class`
--

LOCK TABLES `oc_length_class` WRITE;
/*!40000 ALTER TABLE `oc_length_class` DISABLE KEYS */;
INSERT INTO `oc_length_class` VALUES (1,1.00000000),(2,10.00000000),(3,0.39370000),(4,1.00000000);
/*!40000 ALTER TABLE `oc_length_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_length_class_description`
--

DROP TABLE IF EXISTS `oc_length_class_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`length_class_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_length_class_description`
--

LOCK TABLES `oc_length_class_description` WRITE;
/*!40000 ALTER TABLE `oc_length_class_description` DISABLE KEYS */;
INSERT INTO `oc_length_class_description` VALUES (1,1,'Centimeter','cm'),(2,1,'Millimeter','mm'),(3,1,'Inch','in'),(4,1,'Pack','Pack'),(1,3,'Centimeter','cm'),(2,3,'Millimeter','mm'),(3,3,'Inch','in'),(4,3,'Pack','Pack');
/*!40000 ALTER TABLE `oc_length_class_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_location`
--

DROP TABLE IF EXISTS `oc_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_location`
--

LOCK TABLES `oc_location` WRITE;
/*!40000 ALTER TABLE `oc_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_manufacturer`
--

DROP TABLE IF EXISTS `oc_manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_manufacturer`
--

LOCK TABLES `oc_manufacturer` WRITE;
/*!40000 ALTER TABLE `oc_manufacturer` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_manufacturer_to_store`
--

DROP TABLE IF EXISTS `oc_manufacturer_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`manufacturer_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_manufacturer_to_store`
--

LOCK TABLES `oc_manufacturer_to_store` WRITE;
/*!40000 ALTER TABLE `oc_manufacturer_to_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_manufacturer_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_marketing`
--

DROP TABLE IF EXISTS `oc_marketing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_marketing` (
  `marketing_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`marketing_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_marketing`
--

LOCK TABLES `oc_marketing` WRITE;
/*!40000 ALTER TABLE `oc_marketing` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_marketing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_megamenu`
--

DROP TABLE IF EXISTS `oc_megamenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_megamenu` (
  `megamenu_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `is_group` smallint(6) NOT NULL DEFAULT '2',
  `width` varchar(255) DEFAULT NULL,
  `submenu_width` varchar(255) DEFAULT NULL,
  `colum_width` varchar(255) DEFAULT NULL,
  `submenu_colum_width` varchar(255) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL,
  `colums` varchar(255) DEFAULT '1',
  `type` varchar(255) NOT NULL,
  `is_content` smallint(6) NOT NULL DEFAULT '2',
  `show_title` smallint(6) NOT NULL DEFAULT '1',
  `type_submenu` varchar(10) NOT NULL DEFAULT '1',
  `level_depth` smallint(6) NOT NULL DEFAULT '0',
  `published` smallint(6) NOT NULL DEFAULT '1',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `position` int(11) unsigned NOT NULL DEFAULT '0',
  `show_sub` smallint(6) NOT NULL DEFAULT '0',
  `url` varchar(255) DEFAULT NULL,
  `target` varchar(25) DEFAULT NULL,
  `privacy` smallint(5) unsigned NOT NULL DEFAULT '0',
  `position_type` varchar(25) DEFAULT 'top',
  `menu_class` varchar(25) DEFAULT NULL,
  `description` text,
  `content_text` text,
  `submenu_content` text,
  `level` int(11) NOT NULL,
  `left` int(11) NOT NULL,
  `right` int(11) NOT NULL,
  `widget_id` int(11) DEFAULT '0',
  `badges` text,
  PRIMARY KEY (`megamenu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=285 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_megamenu`
--

LOCK TABLES `oc_megamenu` WRITE;
/*!40000 ALTER TABLE `oc_megamenu` DISABLE KEYS */;
INSERT INTO `oc_megamenu` VALUES (45,'',1,0,'','','','','25','1','category',2,1,'menu',0,1,1,99,0,'','',0,'top','','','','',0,0,0,1,''),(46,'',1,0,'','','','','57','1','category',2,1,'menu',0,1,1,99,0,'','',0,'top','','','','',0,0,0,1,''),(47,'',1,0,'','','','','34','1','category',2,1,'menu',0,1,1,99,0,'','',0,'top','','','','',0,0,0,1,''),(48,'',1,0,'','','','','59','1','category',2,1,'menu',0,1,1,99,0,'','',0,'top','','','','',0,0,0,1,''),(49,'',1,0,'','','','','17','1','category',2,1,'menu',0,1,1,99,0,'','',0,'top','','','','',0,0,0,1,''),(50,'',1,0,'','','','','18','1','category',2,1,'menu',0,1,1,99,0,'','',0,'top','','','','',0,0,0,1,''),(51,'',1,0,'','','','','20','1','category',2,1,'menu',0,1,1,99,0,'','',0,'top','','','','',0,0,0,1,''),(52,'',1,0,'','','','','24','1','category',2,1,'menu',0,1,1,99,0,'','',0,'top','','','','',0,0,0,1,''),(53,'',50,0,'','','','','46','1','category',2,1,'menu',0,1,1,99,0,'','',0,'top','','','','',0,0,0,1,''),(54,'',50,0,'','','','','45','1','category',2,1,'menu',0,1,1,99,0,'','',0,'top','','','','',0,0,0,1,''),(55,'',51,0,'','','','','27','1','category',2,1,'menu',0,1,1,99,0,'','',0,'top','','','','',0,0,0,1,''),(56,'',51,0,'','','','','26','1','category',2,1,'menu',0,1,1,99,0,'','',0,'top','','','','',0,0,0,1,''),(57,'',45,0,'','','','','32','1','category',2,1,'menu',0,1,1,99,0,'','',0,'top','','','','',0,0,0,1,''),(58,'',45,0,'','','','','28','1','category',2,1,'menu',0,1,1,99,0,'','',0,'top','','','','',0,0,0,1,''),(59,'',45,0,'','','','','29','1','category',2,1,'menu',0,1,1,99,0,'','',0,'top','','','','',0,0,0,1,''),(60,'',45,0,'','','','','30','1','category',2,1,'menu',0,1,1,99,0,'','',0,'top','','','','',0,0,0,1,''),(61,'',45,0,'','','','','31','1','category',2,1,'menu',0,1,1,99,0,'','',0,'top','','','','',0,0,0,1,''),(62,'',58,0,'','','','','36','1','category',2,1,'menu',0,1,1,99,0,'','',0,'top','','','','',0,0,0,1,''),(63,'',58,0,'','','','','35','1','category',2,1,'menu',0,1,1,99,0,'','',0,'top','','','','',0,0,0,1,''),(64,'',47,0,'','','','','50','1','category',2,1,'menu',0,1,1,99,0,'','',0,'top','','','','',0,0,0,1,''),(65,'',47,0,'','','','','51','1','category',2,1,'menu',0,1,1,99,0,'','',0,'top','','','','',0,0,0,1,''),(66,'',47,0,'','','','','52','1','category',2,1,'menu',0,1,1,99,0,'','',0,'top','','','','',0,0,0,1,''),(67,'',47,0,'','','','','53','1','category',2,1,'menu',0,1,1,99,0,'','',0,'top','','','','',0,0,0,1,''),(68,'',47,0,'','','','','54','1','category',2,1,'menu',0,1,1,99,0,'','',0,'top','','','','',0,0,0,1,''),(69,'',47,0,'','','','','55','1','category',2,1,'menu',0,1,1,99,0,'','',0,'top','','','','',0,0,0,1,''),(70,'',47,0,'','','','','56','1','category',2,1,'menu',0,1,1,99,0,'','',0,'top','','','','',0,0,0,1,''),(71,'',47,0,'','','','','49','1','category',2,1,'menu',0,1,1,99,0,'','',0,'top','','','','',0,0,0,1,''),(72,'',47,0,'','','','','48','1','category',2,1,'menu',0,1,1,99,0,'','',0,'top','','','','',0,0,0,1,''),(73,'',47,0,'','','','','47','1','category',2,1,'menu',0,1,1,99,0,'','',0,'top','','','','',0,0,0,1,''),(74,'',47,0,'','','','','37','1','category',2,1,'menu',0,1,1,99,0,'','',0,'top','','','','',0,0,0,1,''),(75,'',47,0,'','','','','38','1','category',2,1,'menu',0,1,1,99,0,'','',0,'top','','','','',0,0,0,1,''),(76,'',47,0,'','','','','39','1','category',2,1,'menu',0,1,1,99,0,'','',0,'top','','','','',0,0,0,1,''),(77,'',47,0,'','','','','40','1','category',2,1,'menu',0,1,1,99,0,'','',0,'top','','','','',0,0,0,1,''),(78,'',47,0,'','','','','41','1','category',2,1,'menu',0,1,1,99,0,'','',0,'top','','','','',0,0,0,1,''),(79,'',47,0,'','','','','42','1','category',2,1,'menu',0,1,1,99,0,'','',0,'top','','','','',0,0,0,1,''),(80,'',47,0,'','','','','43','1','category',2,1,'menu',0,1,1,99,0,'','',0,'top','','','','',0,0,0,1,''),(81,'',47,0,'','','','','44','1','category',2,1,'menu',0,1,1,99,0,'','',0,'top','','','','',0,0,0,1,''),(82,'',66,0,'','','','','58','1','category',2,1,'menu',0,1,1,99,0,'','',0,'top','','','','',0,0,0,1,''),(272,'',1,0,NULL,NULL,NULL,NULL,'97','1','category',2,1,'menu',0,1,0,4,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1,NULL),(273,'',1,0,NULL,NULL,NULL,NULL,'88','1','category',2,1,'menu',0,1,0,2,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1,NULL),(274,'',1,0,NULL,NULL,NULL,NULL,'94','1','category',2,1,'menu',0,1,0,3,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1,NULL),(275,'',1,0,NULL,NULL,NULL,NULL,'85','1','category',2,1,'menu',0,1,0,1,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1,NULL),(276,'',275,0,NULL,NULL,NULL,NULL,'87','1','category',2,1,'menu',0,1,0,1,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1,NULL),(277,'',275,0,NULL,NULL,NULL,NULL,'86','1','category',2,1,'menu',0,1,0,2,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1,NULL),(278,'',273,0,NULL,NULL,NULL,NULL,'89','1','category',2,1,'menu',0,1,0,1,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1,NULL),(279,'',273,0,NULL,NULL,NULL,NULL,'90','1','category',2,1,'menu',0,1,0,2,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1,NULL),(280,'',273,0,NULL,NULL,NULL,NULL,'91','1','category',2,1,'menu',0,1,0,3,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1,NULL),(281,'',273,0,NULL,NULL,NULL,NULL,'92','1','category',2,1,'menu',0,1,0,4,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1,NULL),(282,'',273,0,NULL,NULL,NULL,NULL,'93','1','category',2,1,'menu',0,1,0,5,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1,NULL),(283,'',274,0,NULL,NULL,NULL,NULL,'95','1','category',2,1,'menu',0,1,0,1,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1,NULL),(284,'',274,0,NULL,NULL,NULL,NULL,'96','1','category',2,1,'menu',0,1,0,2,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1,NULL);
/*!40000 ALTER TABLE `oc_megamenu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_megamenu_description`
--

DROP TABLE IF EXISTS `oc_megamenu_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_megamenu_description` (
  `megamenu_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`megamenu_id`,`language_id`),
  KEY `name` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_megamenu_description`
--

LOCK TABLES `oc_megamenu_description` WRITE;
/*!40000 ALTER TABLE `oc_megamenu_description` DISABLE KEYS */;
INSERT INTO `oc_megamenu_description` VALUES (45,1,'Components',''),(46,1,'Tablets',''),(47,1,'MP3 Players',''),(48,1,'Camera',''),(49,1,'Software',''),(50,1,'Laptops &amp; Notebooks',''),(51,1,'Desktops',''),(52,1,'Phones &amp; PDAs',''),(53,1,'Macs',''),(54,1,'Windows',''),(55,1,'Mac',''),(56,1,'PC',''),(57,1,'Web Cameras',''),(58,1,'Monitors',''),(59,1,'Mice and Trackballs',''),(60,1,'Printers',''),(61,1,'Scanners',''),(62,1,'test 2',''),(63,1,'test 1',''),(64,1,'test 18',''),(65,1,'test 19',''),(66,1,'test 20',''),(67,1,'test 21',''),(68,1,'test 22',''),(69,1,'test 23',''),(70,1,'test 24',''),(71,1,'test 17',''),(72,1,'test 16',''),(73,1,'test 15',''),(74,1,'test 5',''),(75,1,'test 4',''),(76,1,'test 6',''),(77,1,'test 7',''),(78,1,'test 8',''),(79,1,'test 9',''),(80,1,'test 11',''),(81,1,'test 12',''),(82,1,'test 25',''),(283,3,'La Cerveza',''),(283,1,'La Cerveza',''),(282,3,'El Dulce',''),(282,1,'El Dulce',''),(281,3,'La Pasta',''),(281,1,'La Pasta',''),(280,3,'El Queso',''),(280,1,'El Queso',''),(279,3,'El Aceite',''),(279,1,'El Aceite',''),(278,3,'Los Elaborados',''),(278,1,'Los Elaborados',''),(277,3,'La Fruta',''),(277,1,'La Fruta',''),(276,3,'Las Hortalizas',''),(276,1,'Las Hortalizas',''),(275,3,'La Huerta',''),(275,1,'La Huerta',''),(274,3,'La Bebida',''),(274,1,'La Bebida',''),(273,3,'La Despensa',''),(273,1,'La Despensa',''),(272,3,'La Carne',''),(272,1,'La Carne',''),(284,1,'El Vino',''),(284,3,'El Vino','');
/*!40000 ALTER TABLE `oc_megamenu_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_megamenu_widgets`
--

DROP TABLE IF EXISTS `oc_megamenu_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_megamenu_widgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `type` varchar(255) NOT NULL,
  `params` text NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_megamenu_widgets`
--

LOCK TABLES `oc_megamenu_widgets` WRITE;
/*!40000 ALTER TABLE `oc_megamenu_widgets` DISABLE KEYS */;
INSERT INTO `oc_megamenu_widgets` VALUES (1,'Video Widget','video_code','a:1:{s:10:\"video_code\";s:186:\"&lt;center&gt;&lt;embed width=&quot;300&quot; height=&quot;250&quot;src=&quot;http://www.youtube.com/v/xLxaJzJnQTQ&quot;type=&quot;application/x-shockwave-flash&quot;/&gt;&lt;/center&gt;\";}',0),(2,'Last Tweets','html','a:1:{s:4:\"html\";a:2:{i:1;s:475:\"&lt;br/&gt;\r\n&lt;p class=&quot;title&quot;&gt;MAKES UP PHOTOSHOP&lt;/p&gt;\r\n\r\n&lt;p&gt;\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eveniet laboriosam provident at optio reiciendis culpa reprehenderit\r\n&lt;/p&gt; \r\n&lt;br/&gt;\r\n&lt;p class=&quot;title&quot;&gt;MAKES UP PHOTOSHOP&lt;/p&gt;\r\n&lt;p&gt;\r\n	Voluptates, consectetur soluta laborum maiores alias autem velit deserunt quas quis repellendus beatae veniam omnis sequi expedita nobis debitis\r\n&lt;/p&gt;\";i:2;s:641:\"&lt;p class=&quot;title&quot;&gt;تشكل فوتوشوب&lt;/p&gt;\r\n&lt;p&gt;\r\nأم كما وتردي الساحل, وحتّى اليها حين في, ثم يذكر تكتيكاً بوزيرها حول. وجزر تنفّس أفريقيا بلا لم, عل هامش الحربية كان. رئيس غرّة،\r\n&lt;/p&gt; \r\n&lt;p class=&quot;title&quot;&gt;تشكل فوتوشوب&lt;/p&gt;\r\n&lt;p&gt;\r\nأم كما وتردي الساحل, وحتّى اليها حين في, ثم يذكر تكتيكاً بوزيرها حول. وجزر تنفّس أفريقيا بلا لم, عل هامش الحربية كان. رئيس غرّة،\r\n&lt;/p&gt;\";}}',0),(3,'Products Latest','product_list','a:4:{s:9:\"list_type\";s:6:\"newest\";s:5:\"limit\";s:1:\"1\";s:11:\"image_width\";s:3:\"271\";s:12:\"image_height\";s:3:\"154\";}',0),(4,'Products In Cat 20','product_category','a:4:{s:11:\"category_id\";s:2:\"20\";s:5:\"limit\";s:1:\"2\";s:11:\"image_width\";s:3:\"176\";s:12:\"image_height\";s:3:\"132\";}',0),(5,'Manufactures','banner','a:4:{s:8:\"group_id\";s:1:\"8\";s:11:\"image_width\";s:3:\"170\";s:12:\"image_height\";s:2:\"58\";s:5:\"limit\";s:2:\"16\";}',0),(6,'PavoThemes Feed','feed','a:1:{s:8:\"feed_url\";s:55:\"http://www.pavothemes.com/opencart-themes.feed?type=rss\";}',0),(7,'Account','html','a:1:{s:4:\"html\";a:2:{i:1;s:679:\"&lt;ul&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=account/login&quot;&gt;Login&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;		\r\n		&lt;a href=&quot;index.php?route=account/register&quot;&gt;Create account&lt;/a&gt;\r\n	&lt;/li&gt;	\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=account/wishlist&quot;&gt;Wish List&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=account/account&quot;&gt;My Account&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=checkout/cart&quot;&gt;Shopping Cart&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=checkout/checkout&quot;&gt;Checkout&lt;/a&gt;\r\n	&lt;/li&gt;\r\n&lt;/ul&gt;\";i:2;s:759:\"&lt;ul&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=account/login&quot;&gt;بوزيرها حول&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;		\r\n		&lt;a href=&quot;index.php?route=account/register&quot;&gt;بوزيرها حول&lt;/a&gt;\r\n	&lt;/li&gt;	\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=account/wishlist&quot;&gt;بوزيرها حول&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=account/account&quot;&gt;تنفّس أفريقيا	&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=checkout/cart&quot;&gt;تنفّس أفريقيا&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=checkout/checkout&quot;&gt;تنفّس أفريقيا&lt;/a&gt;\r\n	&lt;/li&gt;\r\n&lt;/ul&gt;\";}}',0),(8,'Lingerie','html','a:1:{s:4:\"html\";a:2:{i:1;s:648:\"&lt;ul&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=information/information&amp;amp;information_id=3&quot;&gt;Privacy Policy&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=information/information&amp;amp;information_id=4&quot;&gt;\r\n			About Us\r\n		&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=information/information&amp;amp;information_id=5&quot;&gt;\r\n			Terms &amp;amp; Conditions\r\n		&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=information/information&amp;amp;information_id=6&quot;&gt;\r\n			Delivery Information\r\n		&lt;/a&gt;\r\n	&lt;/li&gt;		\r\n&lt;/ul&gt;\";i:2;s:729:\"&lt;ul&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=information/information&amp;amp;information_id=3&quot;&gt;\r\n			تكتيكاً بوزيرها\r\n		&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=information/information&amp;amp;information_id=4&quot;&gt;\r\n			تكتيكاً بوزيرها\r\n		&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=information/information&amp;amp;information_id=5&quot;&gt;\r\n			تكتيكاً &amp;amp; بوزيرها \r\n		&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=information/information&amp;amp;information_id=6&quot;&gt;\r\n			بوزيرها حول. وجزر تنفّس\r\n		&lt;/a&gt;\r\n	&lt;/li&gt;		\r\n&lt;/ul&gt;\";}}',0),(9,'Category','html','a:1:{s:4:\"html\";a:2:{i:1;s:649:\"&lt;ul&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;index.php?route=product/category&amp;path=59&quot;&gt;Breakfast&lt;/a&gt;\r\n  &lt;/li&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;index.php?route=product/category&amp;path=60&quot;&gt;Business&lt;/a&gt;\r\n  &lt;/li&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;index.php?route=product/category&amp;path=20&quot;&gt;Drinks&lt;/a&gt;\r\n  &lt;/li&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;index.php?route=product/category&amp;path=25&quot;&gt;Desserts&lt;/a&gt;\r\n  &lt;/li&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;index.php?route=product/category&amp;path=34&quot;&gt;Lunch&lt;/a&gt;\r\n  &lt;/li&gt;\r\n&lt;/ul&gt;\";i:2;s:687:\"&lt;ul&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;index.php?route=product/category&amp;path=59&quot;&gt;الإفطار&lt;/a&gt;\r\n  &lt;/li&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;index.php?route=product/category&amp;path=60&quot;&gt;الأعمال&lt;/a&gt;\r\n  &lt;/li&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;index.php?route=product/category&amp;path=20&quot;&gt;المشروبات&lt;/a&gt;\r\n  &lt;/li&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;index.php?route=product/category&amp;path=25&quot;&gt;الحلويات&lt;/a&gt;\r\n  &lt;/li&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;index.php?route=product/category&amp;path=34&quot;&gt;الغداء&lt;/a&gt;\r\n  &lt;/li&gt;\r\n&lt;/ul&gt;\";}}',0),(14,'','sub_categories','a:9:{s:4:\"wkey\";s:1:\"0\";s:5:\"wtype\";s:14:\"sub_categories\";s:11:\"widget_name\";s:12:\"sub category\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:0:\"\";s:14:\"widget_title_2\";s:0:\"\";s:12:\"addition_cls\";s:0:\"\";s:11:\"category_id\";s:2:\"34\";s:5:\"limit\";s:1:\"6\";}',0),(13,'','sub_categories','a:9:{s:4:\"wkey\";s:1:\"0\";s:5:\"wtype\";s:14:\"sub_categories\";s:11:\"widget_name\";s:12:\"sub category\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:0:\"\";s:14:\"widget_title_2\";s:0:\"\";s:12:\"addition_cls\";s:0:\"\";s:11:\"category_id\";s:2:\"20\";s:5:\"limit\";s:1:\"6\";}',0),(15,'','sub_categories','a:9:{s:4:\"wkey\";s:1:\"0\";s:5:\"wtype\";s:14:\"sub_categories\";s:11:\"widget_name\";s:12:\"sub category\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:0:\"\";s:14:\"widget_title_2\";s:0:\"\";s:12:\"addition_cls\";s:0:\"\";s:11:\"category_id\";s:2:\"25\";s:5:\"limit\";s:1:\"6\";}',0),(16,'','sub_categories','a:9:{s:4:\"wkey\";s:1:\"0\";s:5:\"wtype\";s:14:\"sub_categories\";s:11:\"widget_name\";s:12:\"sub category\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:0:\"\";s:14:\"widget_title_2\";s:0:\"\";s:12:\"addition_cls\";s:0:\"\";s:11:\"category_id\";s:2:\"34\";s:5:\"limit\";s:1:\"6\";}',0),(17,'','sub_categories','a:9:{s:4:\"wkey\";s:1:\"0\";s:5:\"wtype\";s:14:\"sub_categories\";s:11:\"widget_name\";s:12:\"sub category\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:0:\"\";s:14:\"widget_title_2\";s:0:\"\";s:12:\"addition_cls\";s:0:\"\";s:11:\"category_id\";s:2:\"34\";s:5:\"limit\";s:1:\"6\";}',0),(21,'','html','a:9:{s:4:\"wkey\";s:1:\"0\";s:5:\"wtype\";s:4:\"html\";s:11:\"widget_name\";s:11:\"Text wedget\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:11:\"Text wedget\";s:14:\"widget_title_2\";s:11:\"Text wedget\";s:12:\"addition_cls\";s:0:\"\";s:13:\"htmlcontent_1\";s:195:\"This is Photoshop\'s version  of Lorem Ipsum. Proin grvida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit.\";s:13:\"htmlcontent_2\";s:195:\"This is Photoshop\'s version  of Lorem Ipsum. Proin grvida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit.\";}',0),(20,'','product_category','a:12:{s:4:\"wkey\";s:2:\"20\";s:5:\"wtype\";s:16:\"product_category\";s:11:\"widget_name\";s:14:\"Product latest\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:14:\"Product latest\";s:14:\"widget_title_2\";s:14:\"Product latest\";s:12:\"addition_cls\";s:0:\"\";s:11:\"category_id\";s:2:\"24\";s:5:\"limit\";s:1:\"4\";s:6:\"column\";s:2:\"12\";s:11:\"image_width\";s:3:\"100\";s:12:\"image_height\";s:2:\"57\";}',0),(22,'','product','a:9:{s:4:\"wkey\";s:1:\"0\";s:5:\"wtype\";s:7:\"product\";s:11:\"widget_name\";s:4:\"rtrt\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:3:\"ttt\";s:12:\"addition_cls\";s:0:\"\";s:10:\"product_id\";s:2:\"31\";s:11:\"image_width\";s:3:\"200\";s:12:\"image_height\";s:3:\"200\";}',0);
/*!40000 ALTER TABLE `oc_megamenu_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_modification`
--

DROP TABLE IF EXISTS `oc_modification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_modification` (
  `modification_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`modification_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_modification`
--

LOCK TABLES `oc_modification` WRITE;
/*!40000 ALTER TABLE `oc_modification` DISABLE KEYS */;
INSERT INTO `oc_modification` VALUES (1,'<font color=\"#0000\"><b>Pavo Framework 3.0</font>','PAVOFRAMEWORK4','pavothemes','1','http://www.pavothemes.com','',1,'2015-10-26 13:38:00');
/*!40000 ALTER TABLE `oc_modification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_module`
--

DROP TABLE IF EXISTS `oc_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=128 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_module`
--

LOCK TABLES `oc_module` WRITE;
/*!40000 ALTER TABLE `oc_module` DISABLE KEYS */;
INSERT INTO `oc_module` VALUES (123,'Foto Header','html','a:3:{s:4:\"name\";s:11:\"Foto Header\";s:18:\"module_description\";a:2:{i:1;a:2:{s:5:\"title\";s:0:\"\";s:11:\"description\";s:92:\"background: url(http://localhost:8080/image/catalog/FondoVerduras.jpg) no-repeat center top;\";}i:3;a:2:{s:5:\"title\";s:0:\"\";s:11:\"description\";s:98:\"&lt;p&gt;&lt;img src=&quot;http://localhost:8080/image/catalog/2.jpg&quot;&gt;&lt;br&gt;&lt;/p&gt;\";}}s:6:\"status\";s:1:\"1\";}'),(115,'huer','popular','a:5:{s:4:\"name\";s:4:\"huer\";s:5:\"limit\";s:1:\"4\";s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:6:\"status\";s:1:\"1\";}'),(109,'Seccion 1','banner','a:5:{s:4:\"name\";s:9:\"Seccion 1\";s:9:\"banner_id\";s:1:\"9\";s:5:\"width\";s:4:\"100%\";s:6:\"height\";s:3:\"150\";s:6:\"status\";s:1:\"1\";}'),(124,'Cabecera','pavsliderlayer','a:4:{s:4:\"name\";s:8:\"Cabecera\";s:6:\"status\";s:1:\"0\";s:8:\"group_id\";s:2:\"24\";s:21:\"pavsliderlayer_module\";a:0:{}}'),(106,'Destacados Carne','featured','a:6:{s:4:\"name\";s:16:\"Destacados Carne\";s:7:\"product\";a:2:{i:0;s:3:\"141\";i:1;s:3:\"146\";}s:5:\"limit\";s:1:\"3\";s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:3:\"576\";s:6:\"status\";s:1:\"1\";}'),(107,'Seccion productos de temporada','pavcustom','a:6:{s:6:\"status\";s:1:\"1\";s:4:\"name\";s:30:\"Seccion productos de temporada\";s:12:\"module_title\";a:2:{i:3;s:0:\"\";i:1;s:0:\"\";}s:11:\"description\";a:2:{i:3;s:175:\"&lt;p&gt;&lt;img style=&quot;float: none; width: 100%; height: auto;&quot; img=&quot;&quot; src=&quot;../../../image/catalog/header_temporada.png&quot;&gt;&lt;br&gt;&lt;/p&gt;\";i:1;s:163:\"&lt;img style=&quot;float: none; width: 100%; height: auto;&quot; src=&quot;http://localhost:8080/image/catalog/header_1.jpg&quot;&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;\";}s:12:\"module_class\";s:0:\"\";s:10:\"show_title\";s:1:\"0\";}'),(104,'Destacados Despensa','featured','a:6:{s:4:\"name\";s:19:\"Destacados Despensa\";s:7:\"product\";a:3:{i:0;s:3:\"143\";i:1;s:3:\"142\";i:2;s:3:\"126\";}s:5:\"limit\";s:1:\"3\";s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:3:\"576\";s:6:\"status\";s:1:\"1\";}'),(105,'Destacados Bebida','featured','a:6:{s:4:\"name\";s:17:\"Destacados Bebida\";s:7:\"product\";a:3:{i:0;s:3:\"152\";i:1;s:3:\"149\";i:2;s:3:\"151\";}s:5:\"limit\";s:1:\"3\";s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:3:\"576\";s:6:\"status\";s:1:\"1\";}'),(99,'Destacatos Huerta','featured','a:6:{s:4:\"name\";s:17:\"Destacatos Huerta\";s:7:\"product\";a:3:{i:0;s:3:\"133\";i:1;s:3:\"134\";i:2;s:3:\"127\";}s:5:\"limit\";s:1:\"3\";s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:3:\"576\";s:6:\"status\";s:1:\"1\";}'),(120,'Tilulo destacados huerta','pavcustom','a:6:{s:6:\"status\";s:1:\"1\";s:4:\"name\";s:24:\"Tilulo destacados huerta\";s:12:\"module_title\";a:2:{i:3;s:0:\"\";i:1;s:0:\"\";}s:11:\"description\";a:2:{i:3;s:245:\"&lt;h2&gt;&lt;a href=&quot;../../../index.php?route=product/category&amp;amp;path=85&quot;&gt;&lt;img style=&quot;float: none; width: 100%; height: auto;&quot;  src=&quot;../../../image/catalog/destacadosHuerta.png&quot;&gt;&lt;/a&gt;&lt;/h2&gt;\";i:1;s:367:\"&lt;h2 style=&quot;font-family: \'Open Sans\', sans-serif; color: rgb(102, 102, 102);&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;a href=&quot;http://localhost:8080/index.php?route=product/category&amp;amp;path=85&quot; target=&quot;&quot;&gt;Destacados huerta&lt;/a&gt;&lt;/h2&gt;\";}s:12:\"module_class\";s:0:\"\";s:10:\"show_title\";s:1:\"0\";}'),(121,'Titulo destacados carne','pavcustom','a:6:{s:6:\"status\";s:1:\"1\";s:4:\"name\";s:23:\"Titulo destacados carne\";s:12:\"module_title\";a:2:{i:3;s:0:\"\";i:1;s:0:\"\";}s:11:\"description\";a:2:{i:3;s:243:\"&lt;h2&gt;&lt;a href=&quot;../../../index.php?route=product/category&amp;amp;path=97&quot;&gt;&lt;img style=&quot;float: none; width: 100%; height: auto;&quot; src=&quot;../../../image/catalog/destacadosCarne.png&quot;&gt;&lt;/a&gt;&lt;/h2&gt;\";i:1;s:364:\"&lt;h2&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;a href=&quot;http://localhost:8080/index.php?route=product/category&amp;amp;path=97&quot; target=&quot;&quot;&gt;Destacados carne&lt;/a&gt;&lt;/h2&gt;\";}s:12:\"module_class\";s:0:\"\";s:10:\"show_title\";s:1:\"0\";}'),(119,'Titulo destacados despensa','pavcustom','a:6:{s:6:\"status\";s:1:\"1\";s:4:\"name\";s:26:\"Titulo destacados despensa\";s:12:\"module_title\";a:2:{i:3;s:0:\"\";i:1;s:0:\"\";}s:11:\"description\";a:2:{i:3;s:246:\"&lt;h2&gt;&lt;a href=&quot;../../../index.php?route=product/category&amp;amp;path=88&quot;&gt;&lt;img style=&quot;float: none; width: 100%; height: auto;&quot; src=&quot;../../../image/catalog/destacadosDespensa.png&quot;&gt;&lt;/a&gt;&lt;/h2&gt;\";i:1;s:367:\"&lt;h2&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;a href=&quot;http://localhost:8080/index.php?route=product/category&amp;amp;path=88&quot; target=&quot;&quot;&gt;Destacados despensa&lt;/a&gt;&lt;/h2&gt;\";}s:12:\"module_class\";s:0:\"\";s:10:\"show_title\";s:1:\"0\";}'),(122,'Titulo destacados bebida','pavcustom','a:6:{s:6:\"status\";s:1:\"1\";s:4:\"name\";s:24:\"Titulo destacados bebida\";s:12:\"module_title\";a:2:{i:3;s:0:\"\";i:1;s:0:\"\";}s:11:\"description\";a:2:{i:3;s:244:\"&lt;h2&gt;&lt;a href=&quot;../../../index.php?route=product/category&amp;amp;path=94&quot;&gt;&lt;img style=&quot;float: none; width: 100%; height: auto;&quot; src=&quot;../../../image/catalog/destacadosBebida.png&quot;&gt;&lt;/a&gt;&lt;/h2&gt;\";i:1;s:365:\"&lt;h2&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;a href=&quot;http://localhost:8080/index.php?route=product/category&amp;amp;path=88&quot; target=&quot;&quot;&gt;Destacados bebida&lt;/a&gt;&lt;/h2&gt;\";}s:12:\"module_class\";s:0:\"\";s:10:\"show_title\";s:1:\"0\";}'),(102,'Footer','pavcustom','a:6:{s:6:\"status\";s:1:\"1\";s:4:\"name\";s:6:\"Footer\";s:12:\"module_title\";a:2:{i:3;s:0:\"\";i:1;s:0:\"\";}s:11:\"description\";a:2:{i:3;s:216:\"&lt;a href=&quot;http://qfresh.co&quot; target=&quot;_blank&quot;&gt; &lt;img style=&quot;float: none; width: 100%; height: auto;&quot; img=&quot;&quot; src=&quot;../../../image/catalog/footer.png&quot;&gt;&lt;/a&gt;\";i:1;s:266:\"&lt;img style=&quot;float: none; width: 100%; height: auto;&quot; src=&quot;http://localhost:8080/image/catalog/footer.png&quot;&gt;&lt;p&gt;&lt;a href=&quot;http://www.qfresh.co/&quot; target=&quot;_blank&quot;&gt;http://www.qfresh.co/&lt;/a&gt;&lt;br&gt;&lt;/p&gt;\";}s:12:\"module_class\";s:0:\"\";s:10:\"show_title\";s:1:\"0\";}'),(108,'imagen home','pavcustom','a:6:{s:6:\"status\";s:1:\"1\";s:4:\"name\";s:11:\"imagen home\";s:12:\"module_title\";a:2:{i:3;s:0:\"\";i:1;s:0:\"\";}s:11:\"description\";a:2:{i:3;s:172:\"&lt;p&gt;&lt;img style=&quot;float: none; width: 100%; height: auto;&quot; img=&quot;&quot; src=&quot;../../../image/catalog/FondoVerduras.png&quot;&gt;&lt;br&gt;&lt;/p&gt;\";i:1;s:122:\"&lt;img style=&quot;width: 100%; height: auto; &quot; src=&quot;http://localhost:8080/image/catalog/cabecera.jpg&quot;&gt;\";}s:12:\"module_class\";s:0:\"\";s:10:\"show_title\";s:1:\"0\";}'),(103,'Seccion de tiendas','pavcustom','a:6:{s:6:\"status\";s:1:\"1\";s:4:\"name\";s:18:\"Seccion de tiendas\";s:12:\"module_title\";a:2:{i:3;s:0:\"\";i:1;s:0:\"\";}s:11:\"description\";a:2:{i:3;s:247:\"&lt;p&gt;&lt;a href=&quot;../../../index.php?route=seller/catalog-seller&quot;&gt; &lt;img style=&quot;float: none; width: 100%; height: auto;&quot; img=&quot;&quot; src=&quot;../../../image/catalog/header_tiendas.png&quot;&gt;&lt;/a&gt;&lt;/p&gt;\";i:1;s:180:\"&lt;p&gt;&lt;img style=&quot;float: none; width: 100%; height: auto;&quot; img=&quot;&quot; src=&quot;http://localhost:8080/image/catalog/header_2.jpg&quot;&gt;&lt;br&gt;&lt;/p&gt;\";}s:12:\"module_class\";s:0:\"\";s:10:\"show_title\";s:1:\"0\";}'),(126,'imagen','pavsliderlayer','a:4:{s:4:\"name\";s:6:\"imagen\";s:6:\"status\";s:1:\"0\";s:8:\"group_id\";s:2:\"24\";s:21:\"pavsliderlayer_module\";a:0:{}}'),(127,'iot informacion','pavcustom','a:6:{s:6:\"status\";s:1:\"0\";s:4:\"name\";s:15:\"iot informacion\";s:12:\"module_title\";a:2:{i:3;s:0:\"\";i:1;s:160:\"&lt;b&gt;Notice&lt;/b&gt;: Undefined offset: 1 in &lt;b&gt;/var/www/market-dev/admin/view/template/module/pavcustom.tpl&lt;/b&gt; on line &lt;b&gt;138&lt;/b&gt;\";}s:11:\"description\";a:2:{i:3;s:248:\"&lt;a href=&quot;https://qfreshco.typeform.com/to/gSUpJy&quot; target=&quot;_blank&quot;&gt; &lt;img style=&quot;float: none; width: 100%; height: auto;&quot; img=&quot;&quot; src=&quot;../../../image/catalog/header_agrotech.png&quot;&gt;&lt;/a&gt;\";i:1;s:160:\"&lt;b&gt;Notice&lt;/b&gt;: Undefined offset: 1 in &lt;b&gt;/var/www/market-dev/admin/view/template/module/pavcustom.tpl&lt;/b&gt; on line &lt;b&gt;143&lt;/b&gt;\";}s:12:\"module_class\";s:0:\"\";s:10:\"show_title\";s:1:\"0\";}');
/*!40000 ALTER TABLE `oc_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_ms_attribute`
--

DROP TABLE IF EXISTS `oc_ms_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_ms_attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_type` int(11) NOT NULL,
  `number` tinyint(4) NOT NULL DEFAULT '0',
  `multilang` tinyint(4) NOT NULL DEFAULT '0',
  `tab_display` tinyint(4) NOT NULL DEFAULT '0',
  `required` tinyint(4) NOT NULL DEFAULT '0',
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_ms_attribute`
--

LOCK TABLES `oc_ms_attribute` WRITE;
/*!40000 ALTER TABLE `oc_ms_attribute` DISABLE KEYS */;
INSERT INTO `oc_ms_attribute` VALUES (1,7,0,0,0,1,1,1),(2,7,0,0,0,0,1,1);
/*!40000 ALTER TABLE `oc_ms_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_ms_attribute_attribute`
--

DROP TABLE IF EXISTS `oc_ms_attribute_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_ms_attribute_attribute` (
  `ms_attribute_id` int(11) NOT NULL DEFAULT '0',
  `oc_attribute_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ms_attribute_id`,`oc_attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_ms_attribute_attribute`
--

LOCK TABLES `oc_ms_attribute_attribute` WRITE;
/*!40000 ALTER TABLE `oc_ms_attribute_attribute` DISABLE KEYS */;
INSERT INTO `oc_ms_attribute_attribute` VALUES (1,29),(2,30);
/*!40000 ALTER TABLE `oc_ms_attribute_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_ms_attribute_description`
--

DROP TABLE IF EXISTS `oc_ms_attribute_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_ms_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`attribute_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_ms_attribute_description`
--

LOCK TABLES `oc_ms_attribute_description` WRITE;
/*!40000 ALTER TABLE `oc_ms_attribute_description` DISABLE KEYS */;
INSERT INTO `oc_ms_attribute_description` VALUES (1,1,'Medida',''),(1,3,'Medida',''),(2,1,'Producto de temporada',''),(2,3,'Producto de temporada','');
/*!40000 ALTER TABLE `oc_ms_attribute_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_ms_attribute_value`
--

DROP TABLE IF EXISTS `oc_ms_attribute_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_ms_attribute_value` (
  `attribute_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_value_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_ms_attribute_value`
--

LOCK TABLES `oc_ms_attribute_value` WRITE;
/*!40000 ALTER TABLE `oc_ms_attribute_value` DISABLE KEYS */;
INSERT INTO `oc_ms_attribute_value` VALUES (1,1,'',4),(2,1,'',3),(3,1,'',2),(4,1,'',1),(5,2,'',5),(6,2,'',4),(7,2,'',3),(8,2,'',2),(9,2,'',1);
/*!40000 ALTER TABLE `oc_ms_attribute_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_ms_attribute_value_description`
--

DROP TABLE IF EXISTS `oc_ms_attribute_value_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_ms_attribute_value_description` (
  `attribute_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `name` text NOT NULL,
  PRIMARY KEY (`attribute_value_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_ms_attribute_value_description`
--

LOCK TABLES `oc_ms_attribute_value_description` WRITE;
/*!40000 ALTER TABLE `oc_ms_attribute_value_description` DISABLE KEYS */;
INSERT INTO `oc_ms_attribute_value_description` VALUES (1,1,1,'kg'),(1,3,1,'kg'),(2,1,1,'L'),(2,3,1,'L'),(3,1,1,'Pack'),(3,3,1,'Pack'),(4,1,1,'Ud'),(4,3,1,'Ud'),(5,1,2,'Primavera'),(5,3,2,'Primavera'),(6,1,2,'Verano'),(6,3,2,'Verano'),(7,1,2,'Otoño'),(7,3,2,'Otoño'),(8,1,2,'Invierno'),(8,3,2,'Invierno'),(9,1,2,'Todo el año'),(9,3,2,'Todo el año');
/*!40000 ALTER TABLE `oc_ms_attribute_value_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_ms_badge`
--

DROP TABLE IF EXISTS `oc_ms_badge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_ms_badge` (
  `badge_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`badge_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_ms_badge`
--

LOCK TABLES `oc_ms_badge` WRITE;
/*!40000 ALTER TABLE `oc_ms_badge` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_ms_badge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_ms_badge_description`
--

DROP TABLE IF EXISTS `oc_ms_badge_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_ms_badge_description` (
  `badge_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`badge_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_ms_badge_description`
--

LOCK TABLES `oc_ms_badge_description` WRITE;
/*!40000 ALTER TABLE `oc_ms_badge_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_ms_badge_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_ms_badge_seller_group`
--

DROP TABLE IF EXISTS `oc_ms_badge_seller_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_ms_badge_seller_group` (
  `badge_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL DEFAULT '0',
  `seller_group_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`badge_id`,`seller_id`,`seller_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_ms_badge_seller_group`
--

LOCK TABLES `oc_ms_badge_seller_group` WRITE;
/*!40000 ALTER TABLE `oc_ms_badge_seller_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_ms_badge_seller_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_ms_balance`
--

DROP TABLE IF EXISTS `oc_ms_balance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_ms_balance` (
  `balance_id` int(11) NOT NULL AUTO_INCREMENT,
  `seller_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `withdrawal_id` int(11) DEFAULT NULL,
  `balance_type` int(11) DEFAULT NULL,
  `amount` decimal(15,4) NOT NULL,
  `balance` decimal(15,4) NOT NULL,
  `description` text NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`balance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_ms_balance`
--

LOCK TABLES `oc_ms_balance` WRITE;
/*!40000 ALTER TABLE `oc_ms_balance` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_ms_balance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_ms_channel`
--

DROP TABLE IF EXISTS `oc_ms_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_ms_channel` (
  `channel_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`channel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_ms_channel`
--

LOCK TABLES `oc_ms_channel` WRITE;
/*!40000 ALTER TABLE `oc_ms_channel` DISABLE KEYS */;
INSERT INTO `oc_ms_channel` VALUES (1,'catalog/multimerch/social_links/GraphicBurger/Facebook.png'),(2,'catalog/multimerch/social_links/GraphicBurger/Twitter.png'),(3,'catalog/multimerch/social_links/GraphicBurger/LinkedIn.png'),(4,'catalog/multimerch/social_links/GraphicBurger/Google+.png');
/*!40000 ALTER TABLE `oc_ms_channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_ms_channel_description`
--

DROP TABLE IF EXISTS `oc_ms_channel_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_ms_channel_description` (
  `channel_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  PRIMARY KEY (`channel_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_ms_channel_description`
--

LOCK TABLES `oc_ms_channel_description` WRITE;
/*!40000 ALTER TABLE `oc_ms_channel_description` DISABLE KEYS */;
INSERT INTO `oc_ms_channel_description` VALUES (1,1,'Facebook','Please specify your Facebook link'),(2,1,'Twitter','Please specify your Twitter link'),(3,1,'LinkedIn','Please specify your LinkedIn link'),(4,1,'Google+','Please specify your Google+ link');
/*!40000 ALTER TABLE `oc_ms_channel_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_ms_comments`
--

DROP TABLE IF EXISTS `oc_ms_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_ms_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(128) NOT NULL DEFAULT '',
  `email` varchar(128) NOT NULL DEFAULT '',
  `comment` text NOT NULL,
  `display` tinyint(1) NOT NULL DEFAULT '1',
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_ms_comments`
--

LOCK TABLES `oc_ms_comments` WRITE;
/*!40000 ALTER TABLE `oc_ms_comments` DISABLE KEYS */;
INSERT INTO `oc_ms_comments` VALUES (1,NULL,NULL,19,24,NULL,'Visiona1 visiona1','visiona1@visiona-ip.es','asdsdfsafsf sdaf sdf asdf sadf asdf',1,1458748847),(2,NULL,NULL,20,24,NULL,'Visiona1 visiona1','visiona1@visiona-ip.es','adgdfgadfgagdfgadfgadfrg dafgadfg',1,1459151425),(3,NULL,NULL,33,31,NULL,'Administrador QfreshCo','store.test@qfresh.co','dgsdfgsdfgsdgf redsfgsdfg',1,1459292636);
/*!40000 ALTER TABLE `oc_ms_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_ms_commission`
--

DROP TABLE IF EXISTS `oc_ms_commission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_ms_commission` (
  `commission_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`commission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_ms_commission`
--

LOCK TABLES `oc_ms_commission` WRITE;
/*!40000 ALTER TABLE `oc_ms_commission` DISABLE KEYS */;
INSERT INTO `oc_ms_commission` VALUES (1),(2);
/*!40000 ALTER TABLE `oc_ms_commission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_ms_commission_rate`
--

DROP TABLE IF EXISTS `oc_ms_commission_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_ms_commission_rate` (
  `rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `rate_type` int(11) NOT NULL,
  `commission_id` int(11) NOT NULL,
  `flat` decimal(15,4) DEFAULT NULL,
  `percent` decimal(15,2) DEFAULT NULL,
  `payment_method` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`rate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_ms_commission_rate`
--

LOCK TABLES `oc_ms_commission_rate` WRITE;
/*!40000 ALTER TABLE `oc_ms_commission_rate` DISABLE KEYS */;
INSERT INTO `oc_ms_commission_rate` VALUES (1,1,1,0.0000,0.00,1),(2,3,1,0.0000,0.00,1),(3,2,1,0.0000,0.00,1),(4,1,2,1.0000,0.50,NULL),(5,2,2,1.0000,0.20,NULL),(6,3,2,1.0000,0.60,NULL);
/*!40000 ALTER TABLE `oc_ms_commission_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_ms_conversation`
--

DROP TABLE IF EXISTS `oc_ms_conversation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_ms_conversation` (
  `conversation_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `title` varchar(256) NOT NULL DEFAULT '',
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`conversation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_ms_conversation`
--

LOCK TABLES `oc_ms_conversation` WRITE;
/*!40000 ALTER TABLE `oc_ms_conversation` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_ms_conversation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_ms_criteria`
--

DROP TABLE IF EXISTS `oc_ms_criteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_ms_criteria` (
  `criteria_id` int(11) NOT NULL AUTO_INCREMENT,
  `criteria_type` tinyint(4) NOT NULL,
  `range_id` int(11) NOT NULL,
  PRIMARY KEY (`criteria_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_ms_criteria`
--

LOCK TABLES `oc_ms_criteria` WRITE;
/*!40000 ALTER TABLE `oc_ms_criteria` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_ms_criteria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_ms_db_schema`
--

DROP TABLE IF EXISTS `oc_ms_db_schema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_ms_db_schema` (
  `schema_change_id` int(11) NOT NULL AUTO_INCREMENT,
  `major` tinyint(4) NOT NULL,
  `minor` tinyint(4) NOT NULL,
  `build` tinyint(4) NOT NULL,
  `revision` smallint(6) NOT NULL,
  `date_applied` datetime NOT NULL,
  PRIMARY KEY (`schema_change_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_ms_db_schema`
--

LOCK TABLES `oc_ms_db_schema` WRITE;
/*!40000 ALTER TABLE `oc_ms_db_schema` DISABLE KEYS */;
INSERT INTO `oc_ms_db_schema` VALUES (1,1,0,2,1,'2015-09-16 12:15:25');
/*!40000 ALTER TABLE `oc_ms_db_schema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_ms_message`
--

DROP TABLE IF EXISTS `oc_ms_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_ms_message` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `conversation_id` int(11) NOT NULL,
  `from` int(11) DEFAULT NULL,
  `to` int(11) DEFAULT NULL,
  `message` text NOT NULL,
  `read` tinyint(1) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_ms_message`
--

LOCK TABLES `oc_ms_message` WRITE;
/*!40000 ALTER TABLE `oc_ms_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_ms_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_ms_order_comment`
--

DROP TABLE IF EXISTS `oc_ms_order_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_ms_order_comment` (
  `order_comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`order_comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_ms_order_comment`
--

LOCK TABLES `oc_ms_order_comment` WRITE;
/*!40000 ALTER TABLE `oc_ms_order_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_ms_order_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_ms_order_product_data`
--

DROP TABLE IF EXISTS `oc_ms_order_product_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_ms_order_product_data` (
  `order_product_data_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `store_commission_flat` decimal(15,4) NOT NULL,
  `store_commission_pct` decimal(15,4) NOT NULL,
  `seller_net_amt` decimal(15,4) NOT NULL,
  PRIMARY KEY (`order_product_data_id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_ms_order_product_data`
--

LOCK TABLES `oc_ms_order_product_data` WRITE;
/*!40000 ALTER TABLE `oc_ms_order_product_data` DISABLE KEYS */;
INSERT INTO `oc_ms_order_product_data` VALUES (1,3,50,3,0.0000,0.0000,0.0000),(2,4,50,3,0.0000,0.0000,0.0000),(3,5,55,3,0.0000,0.0000,5.0000),(4,6,59,9,0.0000,0.0000,4.0000),(5,7,59,9,0.0000,0.0000,2.0000),(6,8,51,3,0.0000,0.0000,3.0000),(7,8,50,3,0.0000,0.0000,2.0000),(8,8,59,9,0.0000,0.0000,2.0000),(9,9,51,3,0.0000,0.0000,3.0000),(10,9,50,3,0.0000,0.0000,2.0000),(11,9,59,9,0.0000,0.0000,2.0000),(12,10,51,3,0.0000,0.0000,3.0000),(13,11,51,3,0.0000,0.0000,6.0000),(14,12,52,2,0.0000,0.0000,2.0000),(15,12,51,3,0.0000,0.0000,6.0000),(16,13,50,3,0.0000,0.0000,4.0000),(17,14,63,11,0.0000,0.0000,4550.0000),(18,15,70,12,0.0000,0.0000,2.0000),(19,15,79,12,0.0000,0.0000,3.0000),(20,16,95,20,0.0000,0.0000,3.9000),(21,16,106,21,0.0000,0.0000,38.4000),(22,16,107,21,0.0000,0.0000,4.5000),(23,17,91,20,0.0000,0.0000,1.6000),(24,18,95,20,0.0000,0.0000,9.1000),(25,19,95,20,0.0000,0.0000,7.8000),(26,20,91,20,0.0000,0.0000,1.6000),(27,20,95,20,0.0000,0.0000,28.6000),(28,20,100,19,0.0000,0.0000,82.5000),(29,21,91,20,0.0000,0.0000,1.6000),(30,21,95,20,0.0000,0.0000,28.6000),(31,21,100,19,0.0000,0.0000,82.5000),(32,22,91,20,0.0000,0.0000,1.6000),(33,22,95,20,0.0000,0.0000,28.6000),(34,22,100,19,0.0000,0.0000,82.5000),(35,23,89,20,0.0000,0.0000,1.8000),(36,23,91,20,0.0000,0.0000,1.6000),(37,23,95,20,0.0000,0.0000,28.6000),(38,23,100,19,0.0000,0.0000,82.5000),(39,24,106,21,0.0000,0.0000,3.2000),(40,24,89,20,0.0000,0.0000,1.8000),(41,24,91,20,0.0000,0.0000,1.6000),(42,24,100,19,0.0000,0.0000,82.5000),(43,25,91,20,0.0000,0.0000,1.6000),(44,26,89,20,0.0000,0.0000,1.8000),(45,26,95,20,0.0000,0.0000,1.3000),(46,26,103,17,0.0000,0.0000,4.5000),(47,27,91,20,0.0000,0.0000,1.6000),(48,27,95,20,0.0000,0.0000,1.3000),(49,27,89,20,0.0000,0.0000,1.8000),(50,28,91,20,0.0000,0.0000,1.6000),(51,28,95,20,0.0000,0.0000,1.3000),(52,28,89,20,0.0000,0.0000,1.8000),(53,29,91,20,0.0000,0.0000,1.6000),(54,29,95,20,0.0000,0.0000,1.3000),(55,29,89,20,0.0000,0.0000,1.8000),(56,30,91,20,0.0000,0.0000,1.6000),(57,30,95,20,0.0000,0.0000,1.3000),(58,30,89,20,0.0000,0.0000,1.8000),(59,31,91,20,0.0000,0.0000,1.6000),(60,31,95,20,0.0000,0.0000,1.3000),(61,31,89,20,0.0000,0.0000,1.8000),(62,32,106,21,0.0000,0.0000,3.2000),(63,32,89,20,0.0000,0.0000,3.6000),(64,32,103,17,0.0000,0.0000,4.5000),(65,33,133,33,0.0000,0.0000,5.0000),(66,34,134,34,0.0000,0.0000,2.5000),(67,34,126,32,0.0000,0.0000,3.5000),(68,34,143,36,0.0000,0.0000,3.0000),(69,34,142,36,0.0000,0.0000,4.5000),(70,34,133,33,0.0000,0.0000,1.2500),(71,35,134,34,0.0000,0.0000,2.5000),(72,35,126,32,0.0000,0.0000,3.5000),(73,35,143,36,0.0000,0.0000,3.0000),(74,35,142,36,0.0000,0.0000,4.5000),(75,35,133,33,0.0000,0.0000,1.2500),(76,36,134,34,0.0000,0.0000,2.5000),(77,37,134,34,0.0000,0.0000,2.5000),(78,38,134,34,0.0000,0.0000,2.5000),(79,39,134,34,0.0000,0.0000,2.5000),(80,40,134,34,0.0000,0.0000,2.5000),(81,41,134,34,0.0000,0.0000,2.5000),(82,42,134,34,0.0000,0.0000,2.5000),(83,43,134,34,0.0000,0.0000,2.5000),(84,44,134,34,0.0000,0.0000,2.5000),(85,45,134,34,0.0000,0.0000,2.5000),(86,46,134,34,0.0000,0.0000,2.5000),(87,47,134,34,0.0000,0.0000,2.5000),(88,48,134,34,0.0000,0.0000,2.5000),(89,49,134,34,0.0000,0.0000,2.5000),(90,50,134,34,0.0000,0.0000,2.5000),(91,51,134,34,0.0000,0.0000,2.5000),(92,52,134,34,0.0000,0.0000,2.5000),(93,53,127,33,0.0000,0.0000,1.5000),(94,53,130,33,0.0000,0.0000,2.5000),(95,53,142,36,0.0000,0.0000,4.5000),(96,53,152,43,0.0000,0.0000,3.5000),(97,54,133,33,0.0000,0.0000,7.5000),(98,55,127,33,0.0000,0.0000,1.5000),(99,56,127,33,0.0000,0.0000,1.5000),(100,56,150,41,0.0000,0.0000,3.0000),(101,57,133,33,0.0000,0.0000,1.2500),(102,57,127,33,0.0000,0.0000,1.5000),(103,58,149,40,0.0000,0.0000,2.5000),(104,59,149,40,0.0000,0.0000,2.5000),(105,59,134,34,0.0000,0.0000,2.5000),(106,59,142,36,0.0000,0.0000,4.5000),(107,59,151,42,0.0000,0.0000,4.5000),(108,60,133,33,0.0000,0.0000,1.2500),(109,60,134,34,0.0000,0.0000,5.0000),(110,60,128,33,0.0000,0.0000,2.0000),(111,61,157,31,0.0000,0.0000,18.5000),(112,61,127,33,0.0000,0.0000,1.5000),(113,61,155,31,0.0000,0.0000,2.5000),(114,62,134,34,0.0000,0.0000,2.5000),(115,62,150,41,0.0000,0.0000,3.0000),(116,63,134,34,0.0000,0.0000,2.5000),(117,63,150,41,0.0000,0.0000,3.0000),(118,64,134,34,0.0000,0.0000,2.5000),(119,64,150,41,0.0000,0.0000,3.0000),(120,65,127,33,0.0000,0.0000,1.5000);
/*!40000 ALTER TABLE `oc_ms_order_product_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_ms_order_product_shippable`
--

DROP TABLE IF EXISTS `oc_ms_order_product_shippable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_ms_order_product_shippable` (
  `order_product_shippable_id` int(11) NOT NULL AUTO_INCREMENT,
  `shippable` tinyint(1) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_product_shippable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_ms_order_product_shippable`
--

LOCK TABLES `oc_ms_order_product_shippable` WRITE;
/*!40000 ALTER TABLE `oc_ms_order_product_shippable` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_ms_order_product_shippable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_ms_order_product_shipping`
--

DROP TABLE IF EXISTS `oc_ms_order_product_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_ms_order_product_shipping` (
  `order_product_shipping_id` int(11) NOT NULL AUTO_INCREMENT,
  `shipping_method_name` varchar(32) NOT NULL DEFAULT '',
  `shipping_cost` decimal(15,4) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `seller_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_product_shipping_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_ms_order_product_shipping`
--

LOCK TABLES `oc_ms_order_product_shipping` WRITE;
/*!40000 ALTER TABLE `oc_ms_order_product_shipping` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_ms_order_product_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_ms_order_seller_shipping`
--

DROP TABLE IF EXISTS `oc_ms_order_seller_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_ms_order_seller_shipping` (
  `order_seller_shipping_id` int(11) NOT NULL AUTO_INCREMENT,
  `shipping_method_name` varchar(32) NOT NULL DEFAULT '',
  `shipping_cost` decimal(15,4) NOT NULL,
  `order_id` int(11) NOT NULL,
  `seller_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_seller_shipping_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_ms_order_seller_shipping`
--

LOCK TABLES `oc_ms_order_seller_shipping` WRITE;
/*!40000 ALTER TABLE `oc_ms_order_seller_shipping` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_ms_order_seller_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_ms_order_shipping`
--

DROP TABLE IF EXISTS `oc_ms_order_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_ms_order_shipping` (
  `order_shipping_id` int(11) NOT NULL AUTO_INCREMENT,
  `shipping_type` tinyint(4) NOT NULL,
  `order_id` int(11) NOT NULL,
  `seller_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_shipping_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_ms_order_shipping`
--

LOCK TABLES `oc_ms_order_shipping` WRITE;
/*!40000 ALTER TABLE `oc_ms_order_shipping` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_ms_order_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_ms_order_shipping_tracking`
--

DROP TABLE IF EXISTS `oc_ms_order_shipping_tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_ms_order_shipping_tracking` (
  `order_shipping_tracking_id` int(11) NOT NULL AUTO_INCREMENT,
  `shipped` tinyint(1) NOT NULL,
  `tracking_number` varchar(32) NOT NULL DEFAULT '',
  `comment` text,
  `order_id` int(11) NOT NULL,
  `seller_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_shipping_tracking_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_ms_order_shipping_tracking`
--

LOCK TABLES `oc_ms_order_shipping_tracking` WRITE;
/*!40000 ALTER TABLE `oc_ms_order_shipping_tracking` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_ms_order_shipping_tracking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_ms_payment`
--

DROP TABLE IF EXISTS `oc_ms_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_ms_payment` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `seller_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `payment_type` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `payment_method` int(11) NOT NULL,
  `payment_data` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `description` text NOT NULL,
  `date_created` datetime NOT NULL,
  `date_paid` datetime DEFAULT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_ms_payment`
--

LOCK TABLES `oc_ms_payment` WRITE;
/*!40000 ALTER TABLE `oc_ms_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_ms_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_ms_product`
--

DROP TABLE IF EXISTS `oc_ms_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_ms_product` (
  `product_id` int(11) NOT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `number_sold` int(11) NOT NULL DEFAULT '0',
  `product_status` tinyint(4) NOT NULL,
  `product_approved` tinyint(4) NOT NULL,
  `list_until` date DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_ms_product`
--

LOCK TABLES `oc_ms_product` WRITE;
/*!40000 ALTER TABLE `oc_ms_product` DISABLE KEYS */;
INSERT INTO `oc_ms_product` VALUES (90,20,0,1,1,NULL),(126,32,0,1,1,NULL),(127,33,0,1,1,NULL),(128,33,0,1,1,NULL),(129,33,0,1,1,NULL),(130,33,0,1,1,NULL),(131,33,0,1,1,NULL),(132,33,0,1,1,NULL),(133,33,0,1,1,NULL),(134,34,0,1,1,NULL),(135,34,0,1,1,NULL),(136,34,0,1,1,NULL),(137,34,0,1,1,NULL),(138,34,0,1,1,NULL),(139,34,0,1,1,NULL),(140,34,0,1,1,NULL),(141,35,0,1,1,NULL),(142,36,0,1,1,NULL),(143,36,0,1,1,NULL),(144,36,0,1,1,NULL),(145,36,0,1,1,NULL),(146,37,0,1,1,NULL),(147,38,0,1,1,NULL),(148,39,0,1,1,NULL),(149,40,0,1,1,NULL),(150,41,0,1,1,NULL),(151,42,0,1,1,NULL),(152,43,0,1,1,NULL),(153,44,0,1,1,NULL),(154,45,0,1,1,NULL),(155,31,0,1,1,NULL),(156,31,0,1,1,NULL),(157,31,0,1,1,NULL),(158,24,0,2,0,NULL),(159,24,0,2,0,NULL),(160,31,0,1,1,NULL),(161,24,0,2,0,NULL),(162,57,0,2,0,NULL),(163,24,0,2,0,NULL),(164,24,0,2,0,NULL),(165,56,0,2,0,NULL),(166,24,0,1,1,NULL);
/*!40000 ALTER TABLE `oc_ms_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_ms_product_attribute`
--

DROP TABLE IF EXISTS `oc_ms_product_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_ms_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `attribute_value_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`attribute_id`,`attribute_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_ms_product_attribute`
--

LOCK TABLES `oc_ms_product_attribute` WRITE;
/*!40000 ALTER TABLE `oc_ms_product_attribute` DISABLE KEYS */;
INSERT INTO `oc_ms_product_attribute` VALUES (90,1,4),(90,2,9),(126,1,2),(126,2,9),(127,1,1),(127,2,8),(128,1,1),(128,2,9),(129,1,4),(129,2,8),(130,1,3),(130,2,6),(131,1,1),(131,2,8),(132,1,1),(132,2,5),(133,1,4),(133,2,6),(134,1,1),(134,2,8),(135,1,1),(135,2,6),(136,1,1),(136,2,8),(137,1,1),(137,2,6),(138,1,1),(138,2,6),(139,1,1),(139,2,6),(140,1,1),(140,2,6),(141,1,1),(141,2,9),(142,1,4),(142,2,9),(143,1,4),(143,2,9),(144,1,4),(144,2,9),(145,1,3),(145,2,9),(146,1,1),(146,2,9),(147,1,4),(147,2,9),(148,1,4),(148,2,9),(149,1,4),(149,2,9),(150,1,4),(150,2,9),(151,1,4),(151,2,9),(152,1,4),(152,2,9),(153,1,4),(153,2,9),(154,1,4),(154,2,9),(155,1,1),(155,2,7),(156,1,1),(156,2,7),(157,1,1),(157,2,9),(158,1,3),(158,2,7),(159,1,3),(159,2,5),(160,1,1),(160,2,8),(161,1,4),(161,2,7),(162,1,1),(163,1,3),(164,1,3),(165,1,1),(165,2,9),(166,1,2),(166,2,8);
/*!40000 ALTER TABLE `oc_ms_product_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_ms_product_shipping_method`
--

DROP TABLE IF EXISTS `oc_ms_product_shipping_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_ms_product_shipping_method` (
  `product_shipping_method_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `shipping_method_id` int(11) NOT NULL,
  `geo_zone_id` int(11) NOT NULL,
  `cost` decimal(15,8) NOT NULL,
  `comment` text,
  PRIMARY KEY (`product_shipping_method_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_ms_product_shipping_method`
--

LOCK TABLES `oc_ms_product_shipping_method` WRITE;
/*!40000 ALTER TABLE `oc_ms_product_shipping_method` DISABLE KEYS */;
INSERT INTO `oc_ms_product_shipping_method` VALUES (1,117,0,3,32.00000000,'asdf'),(2,118,0,3,344.00000000,'3434'),(3,119,0,3,344.00000000,'3434'),(4,120,0,3,3434.00000000,'3434');
/*!40000 ALTER TABLE `oc_ms_product_shipping_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_ms_range_date`
--

DROP TABLE IF EXISTS `oc_ms_range_date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_ms_range_date` (
  `range_id` int(11) NOT NULL AUTO_INCREMENT,
  `from` datetime DEFAULT NULL,
  `to` datetime NOT NULL,
  PRIMARY KEY (`range_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_ms_range_date`
--

LOCK TABLES `oc_ms_range_date` WRITE;
/*!40000 ALTER TABLE `oc_ms_range_date` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_ms_range_date` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_ms_range_decimal`
--

DROP TABLE IF EXISTS `oc_ms_range_decimal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_ms_range_decimal` (
  `range_id` int(11) NOT NULL AUTO_INCREMENT,
  `from` decimal(15,4) NOT NULL,
  `to` decimal(15,4) NOT NULL,
  PRIMARY KEY (`range_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_ms_range_decimal`
--

LOCK TABLES `oc_ms_range_decimal` WRITE;
/*!40000 ALTER TABLE `oc_ms_range_decimal` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_ms_range_decimal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_ms_range_int`
--

DROP TABLE IF EXISTS `oc_ms_range_int`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_ms_range_int` (
  `range_id` int(11) NOT NULL AUTO_INCREMENT,
  `from` int(11) NOT NULL,
  `to` int(11) NOT NULL,
  PRIMARY KEY (`range_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_ms_range_int`
--

LOCK TABLES `oc_ms_range_int` WRITE;
/*!40000 ALTER TABLE `oc_ms_range_int` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_ms_range_int` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_ms_seller`
--

DROP TABLE IF EXISTS `oc_ms_seller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_ms_seller` (
  `seller_id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(32) NOT NULL DEFAULT '',
  `company` varchar(32) NOT NULL DEFAULT '',
  `website` varchar(2083) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `avatar` varchar(255) DEFAULT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `paypal` varchar(255) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `seller_status` tinyint(4) NOT NULL,
  `seller_approved` tinyint(4) NOT NULL,
  `product_validation` tinyint(4) NOT NULL DEFAULT '1',
  `seller_group` int(11) NOT NULL DEFAULT '1',
  `commission_id` int(11) DEFAULT NULL,
  `shipping_type` tinyint(4) NOT NULL,
  PRIMARY KEY (`seller_id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_ms_seller`
--

LOCK TABLES `oc_ms_seller` WRITE;
/*!40000 ALTER TABLE `oc_ms_seller` DISABLE KEYS */;
INSERT INTO `oc_ms_seller` VALUES (17,'La Despensa de Victor','','','Ndonjëherë ju vetëm duhet të ndjejnë thelbin e sezonit në sapun tonë dorë për të ringjallur shpirtin e një pushim . Në dispozicion në aromat e ndryshme të festimeve të ndryshme , tona sapun xhel dora do të largohet një të butë , të pastër dhe të gatshëm duart për të prekur , dhe një aromë që ju të vërtetë të kujtohet një herë më të mirë të vitit',195,2983,'sellers/17/store-832188_640.jpg','','','2016-03-10 12:16:48',1,1,2,1,NULL,0),(24,'Visiona Market 5','','','Tienda de visiona',0,0,'sellers/24/Tienda.jpg','','','2016-03-15 11:57:21',1,1,2,1,NULL,0),(31,'Qfresh co','','','Tienda de prueba de Qfresh.co en la que tenemos productos, compras y ventas.',0,0,'sellers/31/store-832188_640-2.jpg','','','2016-03-25 00:51:21',1,1,1,1,NULL,0),(32,'Agro Oliva SL','','','Maestros oleícolas desde 1942&lt;br /&gt;\r\n',0,0,'sellers/32/store-832188_640.jpg','','','2016-03-28 10:11:49',1,1,1,1,NULL,0),(33,'MercaVerduras','','','Nuestra misión como líderes especialistas en verduras es trabajar para satisfacer las necesidades de nuestros clientes a través de una experiencia de compra cómoda y ágil, ofreciéndoles una gran variedad de productos, de calidad contrastada y al mejor precio.&lt;br /&gt;\r\n',0,0,'sellers/33/store-832188_640.jpg','','','2016-03-28 10:16:48',1,1,1,1,NULL,0),(34,'Expo Frutas','','','EXPOFRUTA es una empresa cuyo propósito primordial es el producir todo tipo de frutas, para el mercado nacional. EXPOFRUTA selecciona cuidadosamente las frutas y cuenta con la tecnología adecuada para ofrecer un producto de excelente calidad al cliente.',0,0,'sellers/34/Tienda.jpg','','','2016-03-28 10:28:23',1,1,1,1,NULL,0),(35,'Casa Gutier SL','','','Es una empresa localizada en TOLEDO dedicada a industrias cárnicas y explotaciones ganaderas.&lt;br /&gt;\r\n',0,0,'sellers/35/Tienda.jpg','','','2016-03-28 10:38:32',1,1,1,1,NULL,0),(36,'Italia Nostra SL','','','Se remonta al siglo pasado en el sur de Italia. Toma  con admiración todos los productos con disciplina y seriedad del oficio que con amor y paciencia obtiene la  elaboración culinaria de los productos que cada día se presentan. &lt;br /&gt;\r\n',0,0,'sellers/36/Tienda.jpg','','','2016-03-28 10:41:24',1,1,1,1,NULL,0),(37,'Iberian','','','Cuenta la leyenda que el jamón nació cuando un cerdo cayó y se ahogó en un arroyo cuyas aguas tenían un elevado contenido en sal. Aquel desdichado cerdo fue recogido por unos pastores que lo asaron, descubriendo que la carne salada tenía un sabor muy agradable, especialmente las patas delanteras y traseras. A partir de entonces cuando se sacrificaba un cerdo, introducían sus patas en sal hasta perfeccionar el sabor que, casualmente, les había mostrado la naturaleza.&lt;br /&gt;\r\nEn Iberian esta técnica ha superado a la leyenda siendo unos de los mejores jamones ibéricos reconocidos de España.&lt;br /&gt;\r\n',0,0,'sellers/37/Tienda.jpg','','','2016-03-28 10:49:30',1,1,1,1,NULL,0),(38,'Rosee','','','Especializados en vino rosado desde 1994. Vinos con madera, y personalidad.&lt;br /&gt;\r\n',0,0,'sellers/38/Tienda.jpg','','','2016-03-28 10:54:58',1,1,1,1,NULL,0),(39,'Anchor','','','Actualmente la Anchor es una de las microcervecerías más auténticas y con mayor tradición en los Estados Unidos. Su portfolio de cervezas es conocido mundialmente entre los aficionados, entre otros motivos, porque aún continúan elaborandolas de modo manual, en una sala de cocción de calderas de cobre situada en la ciudad de San Francisco, que casi por su aspecto, parece un museo en el que se muestra el aspecto y funcionamiento de una antigua cervecera.&lt;br /&gt;\r\nLa historia de la Anchor, viene de muy atrás, allá en el siglo XIX en plena fiebre del oro en California. El cervecero alemán Gottlieb viajó hasta San Francisco en 1854 para instalarse con su familia, proveniente de la cervecera Brekle en Alemania, y poco después fundó su propia cervecera.',0,0,'sellers/39/Tienda.jpg','','','2016-03-28 10:57:50',1,1,1,1,NULL,0),(40,'La Cibeles','','','La Cibeles no es solo elaborar cerveza. Desarrollamos diferentes actividades alrededor del mundo de la cerveza artesana; cursos, catas, visitas a la fábrica, reuniones de empresa.&lt;br /&gt;\r\n',0,0,'sellers/40/Tienda.jpg','','','2016-03-28 11:00:57',1,1,1,1,NULL,0),(41,'Einstok','','','Se encuentra a sólo 60 kilómetros al sur del Círculo Polar Ártico en el puerto pesquero de Akureyri, Islandia. Allí, el agua fluye de la lluvia y los glaciares prehistóricos bajan por la montaña Hlíðarfjall,  y a través de campos de lava antiguos, entregando el agua más pura en la tierra y la base perfecta para elaborar cervezas artesanales deliciosamente refrescantes.&lt;br /&gt;\r\n',0,0,'sellers/41/Tienda.jpg','','','2016-03-28 11:06:07',1,1,1,1,NULL,0),(42,'Rising Hop','','','Cerveza artesanal Michoacana',0,0,'sellers/42/Tienda.jpg','','','2016-03-28 11:49:26',1,1,1,1,NULL,0),(43,'La Virgen','','','Agua de Madrid sin filtrar, tal y como sale del grifo, mimo y mucho amor, ese es el secreto. De hecho, es el lema comercial de las cervezas La Virgen: «Hecha con amor desde 2011».',0,0,'sellers/43/cerveza la virgen.png','','','2016-03-28 11:55:10',1,1,1,1,NULL,0),(44,'Las Moradas','','','Viñedos de San Martín es una empresa fundada en el 2001, dedicada al mantenimiento y la explotación de viñedo, elaboración, crianza y comercialización del producto sita en “Pagos de los Castillejos” de San Martín de Valdeiglesias, perteneciente a la D.O. Vinos de Madrid. El proyecto de la Bodega LAS MORADAS DE SAN MARTÍN es un compromiso con la más antigua tradición de la zona, recuperando viñas arraigadas en la zona pero como una apuesta por el futuro de esta tierra, manteniendo el equilibrio entre la elaboración tradicional de nuestros caldos, pero sin renunciar a las ventajas que ofrece la tecnología moderna a la enología.Somos la primera bodega de esta zona que apostó por el potencial de esta variedad para la elaboración de vino de alta calidad, y desde entonces estamos investigando para mejorar con nuestro mayor esmero para integrar los viñedos, que estaban desapareciendo por abandono.&lt;br /&gt;\r\n',0,0,'sellers/44/Tienda.jpg','','','2016-03-28 11:58:00',1,1,1,1,NULL,0),(45,'Arboleda Boutique','','','Viña boutique fundada en 1999 y proyecto personal de Eduardo Chadwick en el Valle de Aconcagua, fue bautizada con este nombre como un tributo a las 1.450 hectáreas de bosque nativo preservadas entre sus viñedos.&lt;br /&gt;\r\nArboleda nace de una clara visión, elaborar vinos excepcionales, cada uno ellos la expresión más pura de su terroir único en el Valle de Aconcagua.',0,0,'sellers/45/Tienda.jpg','','','2016-03-28 12:00:31',1,1,1,1,NULL,0),(47,'Delete Test','','','Cuenta de test para borrar',0,0,'sellers/47/Tienda.jpg','','','2016-03-28 17:44:43',1,1,1,1,NULL,0),(48,'Checkout Test','','','tienda de pruebas',0,0,'sellers/48/Tienda.jpg','','','2016-03-28 17:49:35',1,1,1,1,NULL,0),(49,'VictorMarket','','','sadgsdfg sdfgdfgsdfg sdfgsdfgsdfg',0,0,'sellers/49/Tienda.jpg','','','2016-03-29 16:47:09',1,1,1,1,NULL,0),(50,'victor','','','ñlkdfjgdlsfkg dfg sdfg dsfgsdfgsdfg',0,0,'sellers/50/Tienda.jpg','','','2016-03-30 10:05:41',1,1,1,1,NULL,0),(51,'victortienda','','','dsfsfasdf sadf asdf asdf asdf sadfsdfas',0,0,'sellers/51/Tienda.jpg','','','2016-03-30 11:34:02',2,0,2,1,NULL,0),(53,'victor33','','','vasdfasdfasd fsdaf sadfsadf sadf sadfasdfsa',0,0,'sellers/53/Tienda.jpg','','','2016-03-30 11:52:57',2,0,2,1,NULL,0),(54,'victor4','','','asdasdasd asd asd asd asd as das da sd as dads',0,0,'sellers/54/Tienda.jpg','','','2016-03-30 11:43:34',2,0,2,1,NULL,0),(56,'Sensor Test','','','tienda de pruebas para el sistema de sensores',0,0,'sellers/56/Tienda.jpg','','','2016-03-31 05:09:46',1,1,2,1,NULL,0),(57,'test','','','test tes te sttsadufgwiegfwieygfisgfiyegfg ',0,0,'sellers/57/Tienda.jpg','','','2016-03-31 09:59:32',1,1,2,1,NULL,0),(59,'victor8','','','sdfsdfsd fsdfsdfsdfds sdfsdfsdfsd',0,0,'sellers/59/Tienda.jpg','','','2016-03-31 11:12:29',2,0,1,1,NULL,0);
/*!40000 ALTER TABLE `oc_ms_seller` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_ms_seller_channel`
--

DROP TABLE IF EXISTS `oc_ms_seller_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_ms_seller_channel` (
  `seller_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  `channel_value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`seller_id`,`channel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_ms_seller_channel`
--

LOCK TABLES `oc_ms_seller_channel` WRITE;
/*!40000 ALTER TABLE `oc_ms_seller_channel` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_ms_seller_channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_ms_seller_group`
--

DROP TABLE IF EXISTS `oc_ms_seller_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_ms_seller_group` (
  `seller_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `commission_id` int(11) DEFAULT NULL,
  `product_period` int(5) DEFAULT '0',
  `product_quantity` int(5) DEFAULT '0',
  PRIMARY KEY (`seller_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_ms_seller_group`
--

LOCK TABLES `oc_ms_seller_group` WRITE;
/*!40000 ALTER TABLE `oc_ms_seller_group` DISABLE KEYS */;
INSERT INTO `oc_ms_seller_group` VALUES (1,1,0,0),(2,0,0,0);
/*!40000 ALTER TABLE `oc_ms_seller_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_ms_seller_group_criteria`
--

DROP TABLE IF EXISTS `oc_ms_seller_group_criteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_ms_seller_group_criteria` (
  `seller_group_criteria_id` int(11) NOT NULL AUTO_INCREMENT,
  `commission_id` int(11) NOT NULL,
  `criteria_id` int(11) NOT NULL,
  PRIMARY KEY (`seller_group_criteria_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_ms_seller_group_criteria`
--

LOCK TABLES `oc_ms_seller_group_criteria` WRITE;
/*!40000 ALTER TABLE `oc_ms_seller_group_criteria` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_ms_seller_group_criteria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_ms_seller_group_description`
--

DROP TABLE IF EXISTS `oc_ms_seller_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_ms_seller_group_description` (
  `seller_group_description_id` int(11) NOT NULL AUTO_INCREMENT,
  `seller_group_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`seller_group_description_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_ms_seller_group_description`
--

LOCK TABLES `oc_ms_seller_group_description` WRITE;
/*!40000 ALTER TABLE `oc_ms_seller_group_description` DISABLE KEYS */;
INSERT INTO `oc_ms_seller_group_description` VALUES (1,1,'Default','Default seller group',1),(2,1,'Grupo General','Grupo de tiendas sin IOT instalado',3),(3,2,'Sistema IOT','Grupo de empresas que tiene instalacion de sensores IOT',3),(4,2,'IOT System','',1);
/*!40000 ALTER TABLE `oc_ms_seller_group_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_ms_seller_shipping_method`
--

DROP TABLE IF EXISTS `oc_ms_seller_shipping_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_ms_seller_shipping_method` (
  `seller_shipping_method_id` int(11) NOT NULL AUTO_INCREMENT,
  `seller_id` int(11) NOT NULL,
  `shipping_method_id` int(11) NOT NULL,
  `geo_zone_id` int(11) NOT NULL,
  `weight_class_id` int(11) NOT NULL,
  `weight_step` decimal(15,4) NOT NULL,
  `cost_per_unit` decimal(15,8) NOT NULL,
  `comment` text,
  PRIMARY KEY (`seller_shipping_method_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_ms_seller_shipping_method`
--

LOCK TABLES `oc_ms_seller_shipping_method` WRITE;
/*!40000 ALTER TABLE `oc_ms_seller_shipping_method` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_ms_seller_shipping_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_ms_shipping_method`
--

DROP TABLE IF EXISTS `oc_ms_shipping_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_ms_shipping_method` (
  `shipping_method_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`shipping_method_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_ms_shipping_method`
--

LOCK TABLES `oc_ms_shipping_method` WRITE;
/*!40000 ALTER TABLE `oc_ms_shipping_method` DISABLE KEYS */;
INSERT INTO `oc_ms_shipping_method` VALUES (1),(2);
/*!40000 ALTER TABLE `oc_ms_shipping_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_ms_shipping_method_description`
--

DROP TABLE IF EXISTS `oc_ms_shipping_method_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_ms_shipping_method_description` (
  `shipping_method_description_id` int(11) NOT NULL AUTO_INCREMENT,
  `shipping_method_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL DEFAULT '',
  `description` text,
  `language_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`shipping_method_description_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_ms_shipping_method_description`
--

LOCK TABLES `oc_ms_shipping_method_description` WRITE;
/*!40000 ALTER TABLE `oc_ms_shipping_method_description` DISABLE KEYS */;
INSERT INTO `oc_ms_shipping_method_description` VALUES (1,1,'Default carrier','Default shipping carrier company (delete it)',1),(2,2,'metodo 1','saffff',3),(3,2,'method 1','saffff',1);
/*!40000 ALTER TABLE `oc_ms_shipping_method_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_ms_suborder`
--

DROP TABLE IF EXISTS `oc_ms_suborder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_ms_suborder` (
  `suborder_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  PRIMARY KEY (`suborder_id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_ms_suborder`
--

LOCK TABLES `oc_ms_suborder` WRITE;
/*!40000 ALTER TABLE `oc_ms_suborder` DISABLE KEYS */;
INSERT INTO `oc_ms_suborder` VALUES (1,3,3,3),(2,4,3,0),(3,5,3,0),(4,6,9,0),(5,7,9,0),(6,8,3,0),(7,8,9,0),(8,9,3,0),(9,9,9,0),(10,10,3,0),(11,11,3,0),(12,12,2,0),(13,12,3,0),(14,13,3,0),(15,14,11,0),(16,15,12,0),(17,16,20,0),(18,16,21,0),(19,17,20,0),(20,18,20,0),(21,19,20,0),(22,20,20,0),(23,20,19,0),(24,21,20,0),(25,21,19,0),(26,22,20,0),(27,22,19,0),(28,23,20,0),(29,23,19,0),(30,24,21,0),(31,24,20,0),(32,24,19,0),(33,25,20,0),(34,26,20,0),(35,26,17,0),(36,27,20,0),(37,28,20,0),(38,29,20,0),(39,30,20,0),(40,31,20,0),(41,32,21,0),(42,32,20,0),(43,32,17,0),(44,33,33,0),(45,34,34,0),(46,34,32,0),(47,34,36,0),(48,34,33,0),(49,35,34,0),(50,35,32,0),(51,35,36,0),(52,35,33,0),(53,36,34,0),(54,37,34,0),(55,38,34,0),(56,39,34,0),(57,40,34,0),(58,41,34,0),(59,42,34,0),(60,43,34,0),(61,44,34,0),(62,45,34,0),(63,46,34,0),(64,47,34,0),(65,48,34,0),(66,49,34,0),(67,50,34,0),(68,51,34,0),(69,52,34,0),(70,53,33,0),(71,53,36,0),(72,53,43,0),(73,54,33,0),(74,55,33,0),(75,56,33,0),(76,56,41,0),(77,57,33,0),(78,58,40,0),(79,59,40,0),(80,59,34,0),(81,59,36,0),(82,59,42,0),(83,60,33,0),(84,60,34,0),(85,61,31,15),(86,61,33,0),(87,62,34,0),(88,62,41,0),(89,63,34,0),(90,63,41,0),(91,64,34,0),(92,64,41,0),(93,65,33,0);
/*!40000 ALTER TABLE `oc_ms_suborder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_ms_suborder_history`
--

DROP TABLE IF EXISTS `oc_ms_suborder_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_ms_suborder_history` (
  `suborder_history_id` int(5) NOT NULL AUTO_INCREMENT,
  `suborder_id` int(5) NOT NULL,
  `order_status_id` int(5) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`suborder_history_id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_ms_suborder_history`
--

LOCK TABLES `oc_ms_suborder_history` WRITE;
/*!40000 ALTER TABLE `oc_ms_suborder_history` DISABLE KEYS */;
INSERT INTO `oc_ms_suborder_history` VALUES (1,1,0,'Order created','2015-09-16 15:36:44'),(2,1,1,'','2015-09-16 15:39:34'),(3,1,3,'','2015-09-16 15:39:41'),(4,2,0,'Order created','2015-09-17 10:32:49'),(5,3,0,'Order created','2015-11-18 11:40:18'),(6,4,0,'Order created','2016-01-27 17:57:04'),(7,5,0,'Order created','2016-01-27 18:02:58'),(8,6,0,'Order created','2016-01-29 10:57:43'),(9,7,0,'Order created','2016-01-29 10:57:43'),(10,8,0,'Order created','2016-01-29 11:01:18'),(11,9,0,'Order created','2016-01-29 11:01:18'),(12,10,0,'Order created','2016-01-29 11:46:35'),(13,11,0,'Order created','2016-01-29 12:45:35'),(14,12,0,'Order created','2016-01-29 13:46:36'),(15,13,0,'Order created','2016-01-29 13:46:36'),(16,14,0,'Pedido creado','2016-02-10 15:57:57'),(17,15,0,'Pedido creado','2016-02-18 09:58:28'),(18,16,0,'Pedido creado','2016-03-03 13:05:56'),(19,17,0,'Pedido creado','2016-03-10 15:12:11'),(20,18,0,'Pedido creado','2016-03-10 15:12:11'),(21,19,0,'Pedido creado','2016-03-10 16:02:32'),(22,20,0,'Pedido creado','2016-03-11 09:22:01'),(23,21,0,'Pedido creado','2016-03-14 11:39:57'),(24,22,0,'Pedido creado','2016-03-18 11:37:54'),(25,23,0,'Pedido creado','2016-03-18 11:37:55'),(26,24,0,'Pedido creado','2016-03-18 11:50:56'),(27,25,0,'Pedido creado','2016-03-18 11:50:56'),(28,26,0,'Pedido creado','2016-03-18 11:59:29'),(29,27,0,'Pedido creado','2016-03-18 11:59:29'),(30,28,0,'Pedido creado','2016-03-18 12:19:38'),(31,29,0,'Pedido creado','2016-03-18 12:19:38'),(32,30,0,'Pedido creado','2016-03-21 10:12:28'),(33,31,0,'Pedido creado','2016-03-21 10:12:28'),(34,32,0,'Pedido creado','2016-03-21 10:12:28'),(35,33,0,'Pedido creado','2016-03-22 17:12:52'),(36,34,0,'Pedido creado','2016-03-22 17:17:53'),(37,35,0,'Pedido creado','2016-03-22 17:17:54'),(38,36,0,'Pedido creado','2016-03-23 09:31:03'),(39,37,0,'Pedido creado','2016-03-23 09:42:55'),(40,38,0,'Pedido creado','2016-03-23 09:44:37'),(41,39,0,'Pedido creado','2016-03-23 09:45:45'),(42,40,0,'Pedido creado','2016-03-23 09:46:17'),(43,41,0,'Pedido creado','2016-03-28 09:32:32'),(44,42,0,'Pedido creado','2016-03-28 09:32:32'),(45,43,0,'Pedido creado','2016-03-28 09:32:32'),(46,44,0,'Pedido creado','2016-03-28 13:06:45'),(47,45,0,'Pedido creado','2016-03-28 16:30:38'),(48,46,0,'Pedido creado','2016-03-28 16:30:38'),(49,47,0,'Pedido creado','2016-03-28 16:30:38'),(50,48,0,'Pedido creado','2016-03-28 16:30:38'),(51,49,0,'Pedido creado','2016-03-28 16:42:21'),(52,50,0,'Pedido creado','2016-03-28 16:42:21'),(53,51,0,'Pedido creado','2016-03-28 16:42:21'),(54,52,0,'Pedido creado','2016-03-28 16:42:21'),(55,53,0,'Pedido creado','2016-03-28 16:47:58'),(56,54,0,'Pedido creado','2016-03-29 01:39:55'),(57,55,0,'Pedido creado','2016-03-29 01:42:15'),(58,56,0,'Pedido creado','2016-03-29 01:47:20'),(59,57,0,'Pedido creado','2016-03-29 01:47:27'),(60,58,0,'Pedido creado','2016-03-29 01:48:25'),(61,59,0,'Pedido creado','2016-03-29 01:48:49'),(62,60,0,'Pedido creado','2016-03-29 01:50:23'),(63,61,0,'Pedido creado','2016-03-29 01:50:51'),(64,62,0,'Pedido creado','2016-03-29 01:51:15'),(65,63,0,'Pedido creado','2016-03-29 01:53:34'),(66,64,0,'Pedido creado','2016-03-29 01:55:45'),(67,65,0,'Pedido creado','2016-03-29 01:56:23'),(68,66,0,'Pedido creado','2016-03-29 01:57:36'),(69,67,0,'Pedido creado','2016-03-29 01:59:06'),(70,68,0,'Pedido creado','2016-03-29 01:59:37'),(71,69,0,'Pedido creado','2016-03-29 02:00:28'),(72,70,0,'Pedido creado','2016-03-29 02:13:22'),(73,71,0,'Pedido creado','2016-03-29 02:13:22'),(74,72,0,'Pedido creado','2016-03-29 02:13:22'),(75,73,0,'Pedido creado','2016-03-30 12:48:28'),(76,74,0,'Pedido creado','2016-03-30 15:58:19'),(77,75,0,'Pedido creado','2016-03-30 16:21:04'),(78,76,0,'Pedido creado','2016-03-30 16:21:04'),(79,77,0,'Pedido creado','2016-03-30 16:22:29'),(80,78,0,'Pedido creado','2016-03-30 17:02:04'),(81,79,0,'Pedido creado','2016-03-30 17:11:32'),(82,80,0,'Pedido creado','2016-03-30 17:11:32'),(83,81,0,'Pedido creado','2016-03-30 17:11:32'),(84,82,0,'Pedido creado','2016-03-30 17:11:32'),(85,83,0,'Pedido creado','2016-03-30 17:15:18'),(86,84,0,'Pedido creado','2016-03-30 17:15:18'),(87,85,0,'Pedido creado','2016-03-31 05:17:18'),(88,86,0,'Pedido creado','2016-03-31 05:17:18'),(89,85,15,'estamos encantados de poder servirle nuestros mejores productos','2016-03-31 05:21:01'),(90,85,3,'los productos han sido enviados, el repartidor se pondrá en contacto contigo en breves','2016-03-31 08:38:35'),(91,85,15,'entregado correctamente','2016-03-31 08:39:36'),(92,87,0,'Pedido creado','2016-03-31 09:50:14'),(93,88,0,'Pedido creado','2016-03-31 09:50:14'),(94,89,0,'Pedido creado','2016-03-31 09:51:57'),(95,90,0,'Pedido creado','2016-03-31 09:51:57'),(96,91,0,'Pedido creado','2016-03-31 09:55:18'),(97,92,0,'Pedido creado','2016-03-31 09:55:18'),(98,93,0,'Pedido creado','2016-03-31 11:08:38');
/*!40000 ALTER TABLE `oc_ms_suborder_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_openbay_faq`
--

DROP TABLE IF EXISTS `oc_openbay_faq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_openbay_faq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `route` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_openbay_faq`
--

LOCK TABLES `oc_openbay_faq` WRITE;
/*!40000 ALTER TABLE `oc_openbay_faq` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_openbay_faq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_option`
--

DROP TABLE IF EXISTS `oc_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_option`
--

LOCK TABLES `oc_option` WRITE;
/*!40000 ALTER TABLE `oc_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_option_description`
--

DROP TABLE IF EXISTS `oc_option_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_option_description`
--

LOCK TABLES `oc_option_description` WRITE;
/*!40000 ALTER TABLE `oc_option_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_option_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_option_value`
--

DROP TABLE IF EXISTS `oc_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_option_value` (
  `option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_option_value`
--

LOCK TABLES `oc_option_value` WRITE;
/*!40000 ALTER TABLE `oc_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_option_value_description`
--

DROP TABLE IF EXISTS `oc_option_value_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_option_value_description`
--

LOCK TABLES `oc_option_value_description` WRITE;
/*!40000 ALTER TABLE `oc_option_value_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_option_value_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order`
--

DROP TABLE IF EXISTS `oc_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(11) NOT NULL,
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL,
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(40) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL,
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order`
--

LOCK TABLES `oc_order` WRITE;
/*!40000 ALTER TABLE `oc_order` DISABLE KEYS */;
INSERT INTO `oc_order` VALUES (1,0,'INV-2013-00',0,'qfresh.co','http://192.168.0.182/',0,1,'John','Smith','johnsmith@mail.com','123456789','','a:0:{}','John','Smith','','C/ Falsa 1234','','Madrid','','Spain',195,'Madrid',3001,'','a:0:{}','Cash On Delivery','cod','John','Smith','','C/ Falsa 1234','','Madrid','','Spain',195,'Madrid',3001,'','a:0:{}','Flat Shipping Rate','flat.flat','',5.0000,0,0,0.0000,0,'',1,2,'USD',1.00000000,'192.168.0.28','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:40.0) Gecko/20100101 Firefox/40.0','en-US,en;q=0.5','2015-09-10 16:09:50','2015-09-10 16:09:50'),(2,0,'INV-2013-00',0,'qfresh.co','http://192.168.0.182/',0,1,'John','Smith','nn.cases@gmail.com','123456789','','a:0:{}','John','Smith','','C/ Falsa 1234','','Madrid','','Spain',195,'Madrid',3001,'','a:0:{}','Cash On Delivery','cod','John','Smith','','C/ Falsa 1234','','Madrid','','Spain',195,'Madrid',3001,'','a:0:{}','Flat Shipping Rate','flat.flat','',5.0000,1,0,0.0000,0,'',1,2,'USD',1.00000000,'192.168.0.28','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:40.0) Gecko/20100101 Firefox/40.0','en-US,en;q=0.5','2015-09-10 16:10:23','2015-09-10 16:10:24'),(3,0,'INV-2013-00',0,'qfresh.co','http://192.168.0.182/',5,1,'User','Test','testuser@email.es','123456789','','b:0;','User','Test','','C/falsa 1234','','Madrid','admin','Spain',195,'Madrid',3001,'','b:0;','Cash On Delivery','cod','User','Test','','C/falsa 1234','','Madrid','admin','Spain',195,'Madrid',3001,'','b:0;','Flat Shipping Rate','flat.flat','',5.0000,1,0,0.0000,0,'',1,2,'USD',1.12310004,'192.168.0.28','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:40.0) Gecko/20100101 Firefox/40.0','en-US,en;q=0.5','2015-09-16 15:36:44','2015-09-16 15:36:53'),(4,0,'INV-2013-00',0,'qfresh.co','http://192.168.0.182/',5,1,'User','Test','testuser@email.es','123456789','','b:0;','User','Test','','C/falsa 1234','','Madrid','admin','Spain',195,'Madrid',3001,'','b:0;','Cash On Delivery','cod','User','Test','','C/falsa 1234','','Madrid','admin','Spain',195,'Madrid',3001,'','b:0;','Flat Shipping Rate','flat.flat','',5.0000,1,0,0.0000,0,'',1,2,'USD',1.12310004,'192.168.0.28','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:40.0) Gecko/20100101 Firefox/40.0','en-US,en;q=0.5','2015-09-17 10:32:49','2015-09-17 10:32:52'),(5,0,'INV-2013-00',0,'qfresh.co','http://217.125.140.200:8080/',1,1,'Amnay','Pérez','amnay@email.es','1234567892','','a:0:{}','Amnay','Pérez','','sdfsdf 57','','kjuhasdgfiausyghdf','','Australia',13,'Northern Territory',193,'','a:0:{}','Cash On Delivery','cod','','','','','','','','',0,'',0,'','a:0:{}','','','',5.0000,1,0,0.0000,0,'',1,3,'EUR',1.00000000,'192.168.1.1','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:42.0) Gecko/20100101 Firefox/42.0','en-US,en;q=0.5','2015-11-18 11:40:18','2015-11-18 11:40:56'),(6,0,'INV-2013-00',0,'qfresh.co','http://217.125.140.200:8081/',1,1,'Amnay','Pérez','amnay@email.es','1234567892','','a:0:{}','Amnay','Pérez','','sdfsdf 57','','kjuhasdgfiausyghdf','','Australia',13,'Northern Territory',193,'','a:0:{}','Credit / Debit Card','stripe','','','','','','','','',0,'',0,'','a:0:{}','','','',4.0000,0,0,0.0000,0,'',1,3,'EUR',1.00000000,'217.125.140.200','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:42.0) Gecko/20100101 Firefox/42.0','en-US,en;q=0.5','2016-01-27 17:57:04','2016-01-27 17:57:04'),(7,0,'INV-2013-00',0,'qfresh.co','http://217.125.140.200:8081/',1,1,'Amnay','Pérez','amnay@email.es','1234567892','','a:0:{}','Amnay','Pérez','','sdfsdf 57','','kjuhasdgfiausyghdf','','Australia',13,'Northern Territory',193,'','a:0:{}','Credit / Debit Card','stripe','','','','','','','','',0,'',0,'','a:0:{}','','','',2.0000,0,0,0.0000,0,'',1,3,'EUR',1.00000000,'217.125.140.200','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:42.0) Gecko/20100101 Firefox/42.0','en-US,en;q=0.5','2016-01-27 18:02:58','2016-01-27 18:02:58'),(8,0,'INV-2013-00',0,'qfresh.co','http://217.125.140.200:8081/',1,1,'Amnay','Pérez','amnay@email.es','1234567892','','a:0:{}','Amnay','Pérez','','sdfsdf 57','','kjuhasdgfiausyghdf','','Australia',13,'Northern Territory',193,'','a:0:{}','Credit / Debit Card','stripe','Amnay','Pérez','','sdfsdf 57','','kjuhasdgfiausyghdf','','Australia',13,'Northern Territory',193,'','a:0:{}','Flat Shipping Rate','MM','',12.0000,0,0,0.0000,0,'',1,3,'EUR',1.00000000,'217.125.140.200','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:42.0) Gecko/20100101 Firefox/42.0','en-US,en;q=0.5','2016-01-29 10:57:43','2016-01-29 10:57:43'),(9,0,'INV-2013-00',0,'qfresh.co','http://217.125.140.200:8081/',1,1,'Amnay','Pérez','amnay@email.es','1234567892','','a:0:{}','Amnay','Pérez','','sdfsdf 57','','kjuhasdgfiausyghdf','','Australia',13,'Northern Territory',193,'','a:0:{}','Credit / Debit Card','stripe','Amnay','Pérez','','sdfsdf 57','','kjuhasdgfiausyghdf','','Australia',13,'Northern Territory',193,'','a:0:{}','Flat Shipping Rate','MM','',12.0000,5,0,0.0000,0,'',1,3,'EUR',1.00000000,'217.125.140.200','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:42.0) Gecko/20100101 Firefox/42.0','en-US,en;q=0.5','2016-01-29 11:01:18','2016-01-29 11:03:05'),(10,0,'INV-2013-00',0,'qfresh.co','http://217.125.140.200:8081/',1,1,'Amnay','Pérez','amnay@email.es','1234567892','','a:0:{}','Amnay','Pérez','','sdfsdf 57','','kjuhasdgfiausyghdf','','Australia',13,'Northern Territory',193,'','a:0:{}','Credit / Debit Card','stripe','Amnay','Pérez','','sdfsdf 57','','kjuhasdgfiausyghdf','','Australia',13,'Northern Territory',193,'','a:0:{}','Flat Shipping Rate','MM','',8.0000,0,0,0.0000,0,'',1,3,'EUR',1.00000000,'217.125.140.200','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:42.0) Gecko/20100101 Firefox/42.0','en-US,en;q=0.5','2016-01-29 11:46:35','2016-01-29 11:46:35'),(11,0,'INV-2013-00',0,'qfresh.co','http://217.125.140.200:8081/',1,1,'Amnay','Pérez','amnay@email.es','1234567892','','a:0:{}','Amnay','Pérez','','sdfsdf 57','','kjuhasdgfiausyghdf','','Australia',13,'Northern Territory',193,'','a:0:{}','Credit / Debit Card','stripe','Amnay','Pérez','','sdfsdf 57','','kjuhasdgfiausyghdf','','Australia',13,'Northern Territory',193,'','a:0:{}','Flat Shipping Rate','MM','',11.0000,0,0,0.0000,0,'',1,3,'EUR',1.00000000,'217.125.140.200','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:42.0) Gecko/20100101 Firefox/42.0','en-US,en;q=0.5','2016-01-29 12:45:35','2016-01-29 12:45:35'),(12,0,'INV-2013-00',0,'qfresh.co','http://217.125.140.200:8081/',1,1,'Amnay','Pérez','amnay@email.es','1234567892','','a:0:{}','Amnay','Pérez','','sdfsdf 57','','kjuhasdgfiausyghdf','','Australia',13,'Northern Territory',193,'','a:0:{}','Credit / Debit Card','stripe','Amnay','Pérez','','sdfsdf 57','','kjuhasdgfiausyghdf','','Australia',13,'Northern Territory',193,'','a:0:{}','Flat Shipping Rate','MM','',13.0000,5,0,0.0000,0,'',1,3,'EUR',1.00000000,'217.125.140.200','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:42.0) Gecko/20100101 Firefox/42.0','en-US,en;q=0.5','2016-01-29 13:46:36','2016-01-29 13:47:30'),(13,0,'INV-2013-00',0,'qfresh.co','http://217.125.140.200:8081/',1,1,'Amnay','Pérez','amnay@email.es','1234567892','','a:0:{}','Amnay','Pérez','','sdfsdf 57','','kjuhasdgfiausyghdf','','Australia',13,'Northern Territory',193,'','a:0:{}','Credit / Debit Card','stripe','','','','','','','','',0,'',0,'','a:0:{}','','','&lt;b&gt;Notice&lt;/b&gt;: Array to string conversion in &lt;b&gt;/var/www/market-dev/catalog/view/theme/pav_foodgood/template/checkout/payment_method.tpl&lt;/b&gt; on line &lt;b&gt;25&lt;/b&gt;Array',4.0000,5,0,0.0000,0,'',1,3,'EUR',1.00000000,'217.125.140.200','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:44.0) Gecko/20100101 Firefox/44.0','en-US,en;q=0.5','2016-02-10 15:57:57','2016-02-10 15:59:20'),(14,0,'INV-2013-00',0,'qfresh.co','http://localhost:8080/',12,1,'victor1','nn','admin@victor.com','665554','2111577','b:0;','victor1','nn','','calle de la calle numero 2','','madrid','','Spain',195,'',0,'','b:0;','Credit / Debit Card','stripe','','','','','','','','',0,'',0,'','a:0:{}','','','',4550.0000,0,0,0.0000,0,'',1,2,'USD',1.42990005,'127.0.0.1','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:44.0) Gecko/20100101 Firefox/44.0','en-US,en;q=0.5','2016-02-18 09:58:28','2016-02-18 09:58:28'),(15,0,'INV-2013-00',0,'qfresh.co','http://localhost:8080/',12,1,'victor1','nn','admin@victor.com','665554','2111577','b:0;','victor1','nn','','calle de la calle numero 2','','madrid','','Spain',195,'',0,'','b:0;','Credit / Debit Card','stripe','','','','','','','','',0,'',0,'','a:0:{}','','','',5.0000,0,0,0.0000,0,'',1,3,'EUR',1.00000000,'127.0.0.1','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:44.0) Gecko/20100101 Firefox/44.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3','2016-03-03 13:05:56','2016-03-03 13:05:56'),(16,0,'INV-2013-00',0,'qfresh.co','http://localhost:8080/',22,1,'Crisitna','Pérez','cperez@qfresh.co','','','b:0;','Crisitna','Pérez','','','','','','',0,'',0,'','b:0;','Credit / Debit Card','stripe','','','','','','','','',0,'',0,'','a:0:{}','','','',46.8000,0,0,0.0000,0,'',1,3,'EUR',1.00000000,'127.0.0.1','','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36','es-ES,es;q=0.8','2016-03-10 15:12:11','2016-03-10 15:12:11'),(17,0,'INV-2013-00',0,'qfresh.co','http://localhost:8080/',17,1,'Victor','Nuñez','vnunez@visiona-ip.es','446655','','b:0;','Victor','Nuñez','','','','','','',0,'',0,'','b:0;','Credit / Debit Card','stripe','','','','','','','','',0,'',0,'','a:0:{}','','','',1.6000,5,0,0.0000,0,'',1,3,'EUR',1.00000000,'127.0.0.1','','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36','es-ES,es;q=0.8','2016-03-10 16:02:32','2016-03-10 16:03:46'),(18,0,'INV-2013-00',0,'qfresh.co','http://localhost:8080/',24,1,'Visiona1','visiona1','visiona1@visiona-ip.es','','','b:0;','Visiona1','visiona1','','','','','','',0,'',0,'','b:0;','','stripe','','','','','','','','',0,'',0,'','a:0:{}','','','',9.1000,5,0,0.0000,0,'',3,3,'EUR',1.00000000,'127.0.0.1','','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36','es-ES,es;q=0.8','2016-03-11 09:22:01','2016-03-11 09:23:42'),(19,0,'INV-2013-00',0,'qfresh.co','http://localhost:8080/',17,1,'Victor22','Nuñez','vnunez@visiona-ip.es','','','b:0;','Victor','Nuñez','','','','','','',0,'',0,'','b:0;','','stripe','','','','','','','','',0,'',0,'','a:0:{}','','','',7.8000,0,0,0.0000,0,'',3,3,'EUR',1.00000000,'127.0.0.1','','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36','es-ES,es;q=0.8','2016-03-14 11:39:57','2016-03-14 11:39:57'),(20,0,'INV-2013-00',0,'qfresh.co','http://localhost:8080/',24,1,'Visiona1','visiona1','visiona1@visiona-ip.es','','','b:0;','Visiona1','visiona1','','','','','','',0,'',0,'','b:0;','','stripe','','','','','','','','',0,'',0,'','a:0:{}','','','',112.7000,0,0,0.0000,0,'',3,3,'EUR',1.00000000,'127.0.0.1','','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36','es-ES,es;q=0.8','2016-03-18 11:37:54','2016-03-18 11:37:54'),(21,0,'INV-2013-00',0,'qfresh.co','http://localhost:8080/',24,1,'Visiona1','visiona1','visiona1@visiona-ip.es','','','b:0;','Visiona1','visiona1','','','','','','',0,'',0,'','b:0;','','stripe','','','','','','','','',0,'',0,'','a:0:{}','','','',112.7000,0,0,0.0000,0,'',3,3,'EUR',1.00000000,'127.0.0.1','','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36','es-ES,es;q=0.8','2016-03-18 11:50:55','2016-03-18 11:50:55'),(22,0,'INV-2013-00',0,'qfresh.co','http://localhost:8080/',24,1,'Visiona1','visiona1','visiona1@visiona-ip.es','','','b:0;','Visiona1','visiona1','','','','','','',0,'',0,'','b:0;','','stripe','','','','','','','','',0,'',0,'','a:0:{}','','','',112.7000,0,0,0.0000,0,'',3,3,'EUR',1.00000000,'127.0.0.1','','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36','es-ES,es;q=0.8','2016-03-18 11:59:29','2016-03-18 11:59:29'),(23,0,'INV-2013-00',0,'qfresh.co','http://localhost:8080/',24,1,'Visiona1','visiona1','visiona1@visiona-ip.es','','','b:0;','Visiona1','visiona1','','','','','','',0,'',0,'','b:0;','','stripe','','','','','','','','',0,'',0,'','a:0:{}','','','',114.5000,0,0,0.0000,0,'',3,3,'EUR',1.00000000,'127.0.0.1','','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36','es-ES,es;q=0.8','2016-03-18 12:19:38','2016-03-18 12:19:38'),(24,0,'INV-2013-00',0,'qfresh.co','http://localhost:8080/',24,1,'Visiona1','visiona1','visiona1@visiona-ip.es','','','b:0;','Visiona1','visiona1','','','','','','',0,'',0,'','b:0;','','stripe','','','','','','','','',0,'',0,'','a:0:{}','','','',89.1000,0,0,0.0000,0,'',3,3,'EUR',1.00000000,'127.0.0.1','','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36','es-ES,es;q=0.8','2016-03-21 10:12:28','2016-03-21 10:12:28'),(25,0,'INV-2013-00',0,'qfresh.co','http://localhost:8080/',19,1,'victor','Nuñez','vnunmar@msn.com','','','b:0;','victor','Nuñez','','','','','','',0,'',0,'','b:0;','','stripe','','','','','','','','',0,'',0,'','a:0:{}','','','',1.6000,0,0,0.0000,0,'',3,3,'EUR',1.00000000,'127.0.0.1','','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36','es-ES,es;q=0.8','2016-03-22 17:12:51','2016-03-22 17:12:51'),(26,0,'INV-2013-00',0,'qfresh.co','http://localhost:8080/',19,1,'victor','Nuñez','vnunmar@msn.com','','','b:0;','victor','Nuñez','','','','','','',0,'',0,'','b:0;','','stripe','','','','','','','','',0,'',0,'','a:0:{}','','','',7.6000,5,0,0.0000,0,'',3,3,'EUR',1.00000000,'127.0.0.1','','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36','es-ES,es;q=0.8','2016-03-22 17:17:53','2016-03-22 17:18:44'),(27,0,'INV-2013-00',0,'qfresh.co','http://localhost:8080/',23,1,'visiona','visiona','visiona@visiona-ip.es','','','b:0;','visiona','visiona','','','','','','',0,'',0,'','b:0;','','stripe','','','','','','','','',0,'',0,'','a:0:{}','','','',4.7000,0,0,0.0000,0,'',3,3,'EUR',1.00000000,'127.0.0.1','','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36','es-ES,es;q=0.8','2016-03-23 09:31:03','2016-03-23 09:31:03'),(28,0,'INV-2013-00',0,'qfresh.co','http://localhost:8080/',23,1,'visiona','visiona','visiona@visiona-ip.es','','','b:0;','wert','wert','','wertwertewrtwert','','','3434','Spain',195,'',0,'','b:0;','','stripe','','','','','','','','',0,'',0,'','a:0:{}','','','',4.7000,0,0,0.0000,0,'',3,3,'EUR',1.00000000,'127.0.0.1','','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36','es-ES,es;q=0.8','2016-03-23 09:42:55','2016-03-23 09:42:55'),(29,0,'INV-2013-00',0,'qfresh.co','http://localhost:8080/',23,1,'visiona','visiona','visiona@visiona-ip.es','','','b:0;','wert','wert','','wertwertewrtwert','','','3434','Spain',195,'',0,'','b:0;','','stripe','','','','','','','','',0,'',0,'','a:0:{}','','','',4.7000,0,0,0.0000,0,'',3,3,'EUR',1.00000000,'127.0.0.1','','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36','es-ES,es;q=0.8','2016-03-23 09:44:37','2016-03-23 09:44:37'),(30,0,'INV-2013-00',0,'qfresh.co','http://localhost:8080/',23,1,'visiona','visiona','visiona@visiona-ip.es','','','b:0;','wert','wert','','wertwertewrtwert','','','3434','Spain',195,'',0,'','b:0;','','stripe','','','','','','','','',0,'',0,'','a:0:{}','','','',4.7000,0,0,0.0000,0,'',3,3,'EUR',1.00000000,'127.0.0.1','','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36','es-ES,es;q=0.8','2016-03-23 09:45:44','2016-03-23 09:45:44'),(31,0,'INV-2013-00',0,'qfresh.co','http://localhost:8080/',23,1,'visiona','visiona','visiona@visiona-ip.es','','','b:0;','wert','wert','','wertwertewrtwert','','','3434','Spain',195,'',0,'','b:0;','','stripe','','','','','','','','',0,'',0,'','a:0:{}','','','',4.7000,0,0,0.0000,0,'',3,3,'EUR',1.00000000,'127.0.0.1','','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36','es-ES,es;q=0.8','2016-03-23 09:46:16','2016-03-23 09:46:16'),(32,0,'INV-2013-00',0,'qfresh.co','http://localhost:8080/',24,1,'Visiona1','visiona1','visiona1@visiona-ip.es','','','b:0;','Visiona1','visiona1','','','','','','',0,'',0,'','b:0;','','stripe','','','','','','','','',0,'',0,'','a:0:{}','','','',11.3000,0,0,0.0000,0,'',3,3,'EUR',1.00000000,'127.0.0.1','','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36','es-ES,es;q=0.8','2016-03-28 09:32:31','2016-03-28 09:32:31'),(33,0,'INV-2013-00',0,'qfresh.co','http://localhost:8080/',24,1,'Visiona1','visiona1','visiona1@visiona-ip.es','','','b:0;','Visiona1','visiona1','','','','','','',0,'',0,'','b:0;','','stripe','','','','','','','','',0,'',0,'','a:0:{}','','','',5.0000,0,0,0.0000,0,'',3,3,'EUR',1.00000000,'127.0.0.1','','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36','es-ES,es;q=0.8','2016-03-28 13:06:45','2016-03-28 13:06:45'),(34,0,'INV-2013-00',0,'qfresh.co','http://localhost:8080/',24,1,'Visiona1','visiona1','visiona1@visiona-ip.es','','','b:0;','Visiona1','visiona1','','','','','','',0,'',0,'','b:0;','','stripe','','','','','','','','',0,'',0,'','a:0:{}','','','',14.7500,0,0,0.0000,0,'',3,3,'EUR',1.00000000,'127.0.0.1','','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36','es-ES,es;q=0.8','2016-03-28 16:30:38','2016-03-28 16:30:38'),(35,0,'INV-2013-00',0,'qfresh.co','http://localhost:8080/',24,1,'Visiona1','visiona1','visiona1@visiona-ip.es','','','b:0;','Visiona1','visiona1','','','','','','',0,'',0,'','b:0;','','stripe','','','','','','','','',0,'',0,'','a:0:{}','','','',14.7500,5,0,0.0000,0,'',3,3,'EUR',1.00000000,'127.0.0.1','','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36','es-ES,es;q=0.8','2016-03-28 16:42:20','2016-03-28 16:43:05'),(36,0,'INV-2013-00',0,'qfresh.co','http://localhost:8080/',24,1,'Visiona1','visiona1','visiona1@visiona-ip.es','','','b:0;','Visiona1','visiona1','','','','','','',0,'',0,'','b:0;','','stripe','','','','','','','','',0,'',0,'','a:0:{}','','','',2.5000,0,0,0.0000,0,'',3,3,'EUR',1.00000000,'127.0.0.1','','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36','es-ES,es;q=0.8','2016-03-28 16:47:58','2016-03-28 16:47:58'),(37,0,'INV-2013-00',0,'qfresh.co','http://localhost:8080/',24,1,'Visiona1','visiona1','visiona1@visiona-ip.es','','','b:0;','Visiona1','visiona1','','','','','','',0,'',0,'','b:0;','','stripe','','','','','','','','',0,'',0,'','a:0:{}','','','',2.5000,0,0,0.0000,0,'',3,3,'EUR',1.00000000,'127.0.0.1','','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36','es-ES,es;q=0.8','2016-03-29 01:39:55','2016-03-29 01:39:55'),(38,0,'INV-2013-00',0,'qfresh.co','http://localhost:8080/',24,1,'Visiona1','visiona1','visiona1@visiona-ip.es','','','b:0;','Visiona1','visiona1','','','','','','',0,'',0,'','b:0;','','stripe','','','','','','','','',0,'',0,'','a:0:{}','','','',2.5000,0,0,0.0000,0,'',3,3,'EUR',1.00000000,'127.0.0.1','','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36','es-ES,es;q=0.8','2016-03-29 01:42:15','2016-03-29 01:42:15'),(39,0,'INV-2013-00',0,'qfresh.co','http://localhost:8080/',24,1,'Visiona1','visiona1','visiona1@visiona-ip.es','','','b:0;','Visiona1','visiona1','','','','','','',0,'',0,'','b:0;','','stripe','','','','','','','','',0,'',0,'','a:0:{}','','','',2.5000,0,0,0.0000,0,'',3,3,'EUR',1.00000000,'127.0.0.1','','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36','es-ES,es;q=0.8','2016-03-29 01:47:20','2016-03-29 01:47:20'),(40,0,'INV-2013-00',0,'qfresh.co','http://localhost:8080/',24,1,'Visiona1','visiona1','visiona1@visiona-ip.es','','','b:0;','Visiona1','visiona1','','','','','','',0,'',0,'','b:0;','','stripe','','','','','','','','',0,'',0,'','a:0:{}','','','',2.5000,0,0,0.0000,0,'',3,3,'EUR',1.00000000,'127.0.0.1','','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36','es-ES,es;q=0.8','2016-03-29 01:47:27','2016-03-29 01:47:27'),(41,0,'INV-2013-00',0,'qfresh.co','http://localhost:8080/',24,1,'Visiona1','visiona1','visiona1@visiona-ip.es','','','b:0;','Visiona1','visiona1','','','','','','',0,'',0,'','b:0;','','stripe','','','','','','','','',0,'',0,'','a:0:{}','','','',2.5000,0,0,0.0000,0,'',3,3,'EUR',1.00000000,'127.0.0.1','','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36','es-ES,es;q=0.8','2016-03-29 01:48:25','2016-03-29 01:48:25'),(42,0,'INV-2013-00',0,'qfresh.co','http://localhost:8080/',24,1,'Visiona1','visiona1','visiona1@visiona-ip.es','','','b:0;','Visiona1','visiona1','','','','','','',0,'',0,'','b:0;','','stripe','','','','','','','','',0,'',0,'','a:0:{}','','','',2.5000,0,0,0.0000,0,'',3,3,'EUR',1.00000000,'127.0.0.1','','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36','es-ES,es;q=0.8','2016-03-29 01:48:49','2016-03-29 01:48:49'),(43,0,'INV-2013-00',0,'qfresh.co','http://localhost:8080/',24,1,'Visiona1','visiona1','visiona1@visiona-ip.es','','','b:0;','Visiona1','visiona1','','','','','','',0,'',0,'','b:0;','','stripe','','','','','','','','',0,'',0,'','a:0:{}','','','',2.5000,0,0,0.0000,0,'',3,3,'EUR',1.00000000,'127.0.0.1','','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36','es-ES,es;q=0.8','2016-03-29 01:50:23','2016-03-29 01:50:23'),(44,0,'INV-2013-00',0,'qfresh.co','http://localhost:8080/',24,1,'Visiona1','visiona1','visiona1@visiona-ip.es','','','b:0;','Visiona1','visiona1','','','','','','',0,'',0,'','b:0;','','stripe','','','','','','','','',0,'',0,'','a:0:{}','','','',2.5000,0,0,0.0000,0,'',3,3,'EUR',1.00000000,'127.0.0.1','','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36','es-ES,es;q=0.8','2016-03-29 01:50:51','2016-03-29 01:50:51'),(45,0,'INV-2013-00',0,'qfresh.co','http://localhost:8080/',24,1,'Visiona1','visiona1','visiona1@visiona-ip.es','','','b:0;','Visiona1','visiona1','','','','','','',0,'',0,'','b:0;','','stripe','','','','','','','','',0,'',0,'','a:0:{}','','','',2.5000,0,0,0.0000,0,'',3,3,'EUR',1.00000000,'127.0.0.1','','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36','es-ES,es;q=0.8','2016-03-29 01:51:15','2016-03-29 01:51:15'),(46,0,'INV-2013-00',0,'qfresh.co','http://localhost:8080/',24,1,'Visiona1','visiona1','visiona1@visiona-ip.es','','','b:0;','Visiona1','visiona1','','','','','','',0,'',0,'','b:0;','','stripe','','','','','','','','',0,'',0,'','a:0:{}','','','',2.5000,0,0,0.0000,0,'',3,3,'EUR',1.00000000,'127.0.0.1','','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36','es-ES,es;q=0.8','2016-03-29 01:53:34','2016-03-29 01:53:34'),(47,0,'INV-2013-00',0,'qfresh.co','http://localhost:8080/',24,1,'Visiona1','visiona1','visiona1@visiona-ip.es','','','b:0;','Visiona1','visiona1','','','','','','',0,'',0,'','b:0;','','stripe','','','','','','','','',0,'',0,'','a:0:{}','','','',2.5000,0,0,0.0000,0,'',3,3,'EUR',1.00000000,'127.0.0.1','','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36','es-ES,es;q=0.8','2016-03-29 01:55:45','2016-03-29 01:55:45'),(48,0,'INV-2013-00',0,'qfresh.co','http://localhost:8080/',24,1,'Visiona1','visiona1','visiona1@visiona-ip.es','','','b:0;','Visiona1','visiona1','','','','','','',0,'',0,'','b:0;','','stripe','','','','','','','','',0,'',0,'','a:0:{}','','','',2.5000,0,0,0.0000,0,'',3,3,'EUR',1.00000000,'127.0.0.1','','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36','es-ES,es;q=0.8','2016-03-29 01:56:23','2016-03-29 01:56:23'),(49,0,'INV-2013-00',0,'qfresh.co','http://localhost:8080/',24,1,'Visiona1','visiona1','visiona1@visiona-ip.es','','','b:0;','Visiona1','visiona1','','','','','','',0,'',0,'','b:0;','','stripe','','','','','','','','',0,'',0,'','a:0:{}','','','',2.5000,0,0,0.0000,0,'',3,3,'EUR',1.00000000,'127.0.0.1','','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36','es-ES,es;q=0.8','2016-03-29 01:57:35','2016-03-29 01:57:35'),(50,0,'INV-2013-00',0,'qfresh.co','http://localhost:8080/',24,1,'Visiona1','visiona1','visiona1@visiona-ip.es','','','b:0;','Visiona1','visiona1','','','','','','',0,'',0,'','b:0;','','stripe','','','','','','','','',0,'',0,'','a:0:{}','','','',2.5000,0,0,0.0000,0,'',3,3,'EUR',1.00000000,'127.0.0.1','','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36','es-ES,es;q=0.8','2016-03-29 01:59:06','2016-03-29 01:59:06'),(51,0,'INV-2013-00',0,'qfresh.co','http://localhost:8080/',24,1,'Visiona1','visiona1','visiona1@visiona-ip.es','','','b:0;','Visiona1','visiona1','','','','','','',0,'',0,'','b:0;','','stripe','','','','','','','','',0,'',0,'','a:0:{}','','','',2.5000,0,0,0.0000,0,'',3,3,'EUR',1.00000000,'127.0.0.1','','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36','es-ES,es;q=0.8','2016-03-29 01:59:37','2016-03-29 01:59:37'),(52,0,'INV-2013-00',0,'qfresh.co','http://localhost:8080/',24,1,'Visiona1','visiona1','visiona1@visiona-ip.es','','','b:0;','Visiona1','visiona1','','','','','','',0,'',0,'','b:0;','','stripe','','','','','','','','',0,'',0,'','a:0:{}','','','',2.5000,0,0,0.0000,0,'',3,3,'EUR',1.00000000,'127.0.0.1','','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36','es-ES,es;q=0.8','2016-03-29 02:00:28','2016-03-29 02:00:28'),(53,0,'INV-2013-00',0,'qfresh.co','http://localhost:8080/',31,1,'Administrador','QfreshCo','store.test@qfresh.co','','','b:0;','Administrador','QfreshCo','','','','','','',0,'',0,'','b:0;','','stripe','','','','','','','','',0,'',0,'','a:0:{}','','','',12.0000,5,0,0.0000,0,'',3,3,'EUR',1.00000000,'127.0.0.1','','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36','es-ES,es;q=0.8','2016-03-29 02:13:22','2016-03-29 02:14:06'),(54,0,'INV-2013-00',0,'qfresh.co','http://localhost:8080/',31,1,'Administrador','QfreshCo','store.test@qfresh.co','','','b:0;','Administrador','QfreshCo','','','','','','',0,'',0,'','b:0;','','stripe','','','','','','','','',0,'',0,'','a:0:{}','','','',7.5000,5,0,0.0000,0,'',3,3,'EUR',1.00000000,'127.0.0.1','','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36','es-ES,es;q=0.8','2016-03-30 12:48:28','2016-03-30 12:49:09'),(55,0,'INV-2013-00',0,'qfresh.co','http://localhost:8080/',55,1,'victor6','v','victor6@victor6.es','','','b:0;','victor6','v','','','','','','',0,'',0,'','b:0;','','stripe','','','','','','','','',0,'',0,'','a:0:{}','','','',1.5000,5,0,0.0000,0,'',3,3,'EUR',1.00000000,'127.0.0.1','','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36','es-ES,es;q=0.8','2016-03-30 15:58:19','2016-03-30 15:58:58'),(56,0,'INV-2013-00',0,'qfresh.co','http://localhost:8080/',55,1,'victor6','v','victor6@victor6.es','','','b:0;','victor6','v','','dicego velazquez','','','47250','',0,'',0,'','b:0;','','stripe','','','','','','','','',0,'',0,'','a:0:{}','','','',4.5000,5,0,0.0000,0,'',3,3,'EUR',1.00000000,'127.0.0.1','','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36','es-ES,es;q=0.8','2016-03-30 16:21:04','2016-03-30 16:21:49'),(57,0,'INV-2013-00',0,'qfresh.co','http://localhost:8080/',55,1,'victor6','v','victor6@victor6.es','','','b:0;','victor6','v','','dicego velazquez','','',' 47250','',0,'',0,'','b:0;','','stripe','','','','','','','','',0,'',0,'','a:0:{}','','','',2.7500,5,0,0.0000,0,'',3,3,'EUR',1.00000000,'127.0.0.1','','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36','es-ES,es;q=0.8','2016-03-30 16:22:29','2016-03-30 16:22:59'),(58,0,'INV-2013-00',0,'qfresh.co','http://localhost:8080/',55,1,'victor6','v','victor6@victor6.es','','','b:0;','victor6','v','','dicego velazquez','','','          ','',0,'',0,'','b:0;','','stripe','','','','','','','','',0,'',0,'','a:0:{}','','','',2.5000,0,0,0.0000,0,'',3,3,'EUR',1.00000000,'127.0.0.1','','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36','es-ES,es;q=0.8','2016-03-30 17:02:04','2016-03-30 17:02:04'),(59,0,'INV-2013-00',0,'qfresh.co','http://localhost:8080/',55,1,'victor6','v','victor6@victor6.es','','','b:0;','victor6','v','','dicego velazquez','','','          ','',0,'',0,'','b:0;','','stripe','','','','','','','','',0,'',0,'','a:0:{}','','','',14.0000,0,0,0.0000,0,'',3,3,'EUR',1.00000000,'127.0.0.1','','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36','es-ES,es;q=0.8','2016-03-30 17:11:31','2016-03-30 17:11:31'),(60,0,'INV-2013-00',0,'qfresh.co','http://localhost:8080/',24,1,'Visiona1','visiona1','visiona1@visiona-ip.es','','','b:0;','visiona','ip','','las rozas edificio tifan','','',' 28544','',0,'',0,'','b:0;','','stripe','','','','','','','','',0,'',0,'','a:0:{}','','','',8.2500,5,0,0.0000,0,'',3,3,'EUR',1.00000000,'127.0.0.1','','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36','es-ES,es;q=0.8','2016-03-30 17:15:17','2016-03-30 17:15:53'),(61,0,'INV-2013-00',0,'qfresh.co','http://localhost:8080/',48,1,'checkout','test','checkout.test@qfresh.co','12333','','a:0:{}','checkout','test','','calle copenague edificio tifan','','las rozas','28933','Spain',195,'Madrid',3001,'','a:0:{}','','stripe','','','','','','','','',0,'',0,'','a:0:{}','','','',22.5000,15,0,0.0000,0,'',3,3,'EUR',1.00000000,'127.0.0.1','','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36','es-ES,es;q=0.8','2016-03-31 05:17:17','2016-03-31 08:43:28'),(62,0,'INV-2013-00',0,'qfresh.co','http://217.125.140.200:4001/',24,1,'Visiona1','visiona1','visiona1@visiona-ip.es','','','b:0;','visiona','ip','','las rozas edificio tifan','','','          ','',0,'',0,'','b:0;','','stripe','','','','','','','','',0,'',0,'','a:0:{}','','','',5.5000,0,0,0.0000,0,'',3,3,'EUR',1.00000000,'217.125.140.200','','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36','es-ES,es;q=0.8','2016-03-31 09:50:14','2016-03-31 09:50:14'),(63,0,'INV-2013-00',0,'qfresh.co','http://217.125.140.200:4001/',24,1,'Visiona1','visiona1','visiona1@visiona-ip.es','','','b:0;','visiona','ip','','las rozas edificio tifan','','','          ','',0,'',0,'','b:0;','','stripe','','','','','','','','',0,'',0,'','a:0:{}','','','',5.5000,0,0,0.0000,0,'',3,3,'EUR',1.00000000,'217.125.140.200','','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36','es-ES,es;q=0.8','2016-03-31 09:51:57','2016-03-31 09:51:57'),(64,0,'INV-2013-00',0,'qfresh.co','http://217.125.140.200:4001/',24,1,'Visiona1','visiona1','visiona1@visiona-ip.es','','','b:0;','visiona','ip','','las rozas edificio tifan','','','          ','',0,'',0,'','b:0;','','stripe','','','','','','','','',0,'',0,'','a:0:{}','','','',5.5000,0,0,0.0000,0,'',3,3,'EUR',1.00000000,'217.125.140.200','','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36','es-ES,es;q=0.8','2016-03-31 09:55:18','2016-03-31 09:55:18'),(65,0,'INV-2013-00',0,'qfresh.co','http://localhost:8080/',58,1,'victor7','nunez','victor7@victor7.es','','','b:0;','victor7','nunez','','','','','','',0,'',0,'','b:0;','','stripe','','','','','','','','',0,'',0,'','a:0:{}','','','',1.5000,0,0,0.0000,0,'',3,3,'EUR',1.00000000,'127.0.0.1','','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36','es-ES,es;q=0.8','2016-03-31 11:08:38','2016-03-31 11:08:38');
/*!40000 ALTER TABLE `oc_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_custom_field`
--

DROP TABLE IF EXISTS `oc_order_custom_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_custom_field` (
  `order_custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  `location` varchar(16) NOT NULL,
  PRIMARY KEY (`order_custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_custom_field`
--

LOCK TABLES `oc_order_custom_field` WRITE;
/*!40000 ALTER TABLE `oc_order_custom_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_custom_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_history`
--

DROP TABLE IF EXISTS `oc_order_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_history` (
  `order_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_history_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_history`
--

LOCK TABLES `oc_order_history` WRITE;
/*!40000 ALTER TABLE `oc_order_history` DISABLE KEYS */;
INSERT INTO `oc_order_history` VALUES (1,2,1,0,'','2015-09-10 16:10:24'),(2,3,1,0,'','2015-09-16 15:36:53'),(3,4,1,0,'','2015-09-17 10:32:52'),(4,5,1,0,'','2015-11-18 11:40:56'),(5,9,5,0,'<script type=\"text/javascript\" src=\"view/javascript/stripe.js\"></script><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Stripe Charge ID:</strong>ch_17YZ8eK3I73TuGTAhvRo02HE<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Charge Amount:</strong>12.00€<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Captured:</strong>Yes<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Name:</strong>Amnay<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Number:</strong>**** **** **** 4242<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Fingerprint:</strong>APf7GD4eolTwVqXB<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Expiry:</strong>1 / 2020<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Type:</strong>Visa<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Address:</strong>Calle iasduhfoiwyuebf<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">&nbsp;</strong>Madrid,  4567<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">&nbsp;</strong>Spain<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Origin:</strong>US <img src=\"view/image/flags/us.png\" /><br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">CVC Check:</strong>pass<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Street Check:</strong>pass<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Zip Check:</strong>pass<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Refund:</strong><a onclick=\"refund($(this), 12, \'ch_17YZ8eK3I73TuGTAhvRo02HE\', 1)\">(Refund)</a>','2016-01-29 11:03:06'),(6,12,5,0,'<script type=\"text/javascript\" src=\"view/javascript/stripe.js\"></script><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Stripe Charge ID:</strong>ch_17YbhlK3I73TuGTANF2p9uA5<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Charge Amount:</strong>13.00€<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Captured:</strong>Yes<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Name:</strong>Amnay<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Number:</strong>**** **** **** 1881<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Fingerprint:</strong>B3EEbz6f0hLIwoL4<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Expiry:</strong>12 / 2020<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Type:</strong>Visa<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Address:</strong>ksudfgigf<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">&nbsp;</strong>Niosudhfe,  6584654<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">&nbsp;</strong>Spain<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Origin:</strong>US <img src=\"view/image/flags/us.png\" /><br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">CVC Check:</strong>pass<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Street Check:</strong>pass<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Zip Check:</strong>pass<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Refund:</strong><a onclick=\"refund($(this), 13, \'ch_17YbhlK3I73TuGTANF2p9uA5\', 1)\">(Refund)</a>','2016-01-29 13:47:31'),(7,13,5,0,'<script type=\"text/javascript\" src=\"view/javascript/stripe.js\"></script><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Stripe Charge ID:</strong>ch_17czTRK3I73TuGTACoOqTjfV<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Charge Amount:</strong>4.00€<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Captured:</strong>Yes<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Name:</strong>Amnay<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Number:</strong>**** **** **** 4242<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Fingerprint:</strong>APf7GD4eolTwVqXB<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Expiry:</strong>12 / 2025<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Type:</strong>Visa<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Address:</strong>sdjfdis<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">&nbsp;</strong>dfsfe,  4764<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">&nbsp;</strong>Spain<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Origin:</strong>US <img src=\"view/image/flags/us.png\" /><br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">CVC Check:</strong>pass<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Street Check:</strong>pass<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Zip Check:</strong>pass<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Refund:</strong><a onclick=\"refund($(this), 4, \'ch_17czTRK3I73TuGTACoOqTjfV\', 1)\">(Refund)</a>','2016-02-10 15:59:20'),(8,17,5,0,'<script type=\"text/javascript\" src=\"view/javascript/stripe.js\"></script><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Stripe Charge ID:</strong>ch_17nVKFK3I73TuGTAq1dFZJH1<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Charge Amount:</strong>1.60€<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Captured:</strong>Yes<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Name:</strong>vvv<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Number:</strong>**** **** **** 1881<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Fingerprint:</strong>B3EEbz6f0hLIwoL4<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Expiry:</strong>3 / 2033<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Type:</strong>Visa<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Address:</strong>ddf<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">&nbsp;</strong>f,  df<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">&nbsp;</strong>Spain<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Origin:</strong>US <img src=\"view/image/flags/us.png\" /><br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">CVC Check:</strong>pass<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Street Check:</strong>pass<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Zip Check:</strong>pass<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Refund:</strong><a onclick=\"refund($(this), 1.6, \'ch_17nVKFK3I73TuGTAq1dFZJH1\', 1)\">(Refund)</a>','2016-03-10 16:03:46'),(9,18,5,0,'<script type=\"text/javascript\" src=\"view/javascript/stripe.js\"></script><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Stripe Charge ID:</strong>ch_17nlYfK3I73TuGTAIjveYgme<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Charge Amount:</strong>9.10€<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Captured:</strong>Yes<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Name:</strong>Cristina<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Number:</strong>**** **** **** 4242<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Fingerprint:</strong>APf7GD4eolTwVqXB<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Expiry:</strong>4 / 2016<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Type:</strong>Visa<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Address:</strong>erdgsdcf<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">&nbsp;</strong>44,  44<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">&nbsp;</strong>Spain<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Origin:</strong>US <img src=\"view/image/flags/us.png\" /><br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">CVC Check:</strong>pass<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Street Check:</strong>pass<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Zip Check:</strong>pass<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Refund:</strong><a onclick=\"refund($(this), 9.1, \'ch_17nlYfK3I73TuGTAIjveYgme\', 1)\">(Refund)</a>','2016-03-11 09:23:42'),(10,26,5,0,'<script type=\"text/javascript\" src=\"view/javascript/stripe.js\"></script><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Stripe Charge ID:</strong>ch_17rsDOK3I73TuGTAH4K72KX1<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Charge Amount:</strong>7.60€<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Captured:</strong>Yes<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Name:</strong>sdf<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Number:</strong>**** **** **** 5556<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Fingerprint:</strong>z3glLMBEX8lqjUw8<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Expiry:</strong>3 / 2033<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Type:</strong>Visa<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Address:</strong>asdf<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">&nbsp;</strong>232,  333<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">&nbsp;</strong>Spain<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Origin:</strong>US <img src=\"view/image/flags/us.png\" /><br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">CVC Check:</strong>pass<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Street Check:</strong>pass<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Zip Check:</strong>pass<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Refund:</strong><a onclick=\"refund($(this), 7.6, \'ch_17rsDOK3I73TuGTAH4K72KX1\', 1)\">(Refund)</a>','2016-03-22 17:18:44'),(11,35,5,0,'<script type=\"text/javascript\" src=\"view/javascript/stripe.js\"></script><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Stripe Charge ID:</strong>ch_17u1a7K3I73TuGTAyBrjQuGl<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Charge Amount:</strong>14.75€<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Captured:</strong>Yes<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Name:</strong>wertt<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Number:</strong>**** **** **** 1881<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Fingerprint:</strong>B3EEbz6f0hLIwoL4<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Expiry:</strong>4 / 2016<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Type:</strong>Visa<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Address:</strong>wertt<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">&nbsp;</strong>wer,  wer<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">&nbsp;</strong>Spain<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Origin:</strong>US <img src=\"view/image/flags/us.png\" /><br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">CVC Check:</strong>pass<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Street Check:</strong>pass<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Zip Check:</strong>pass<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Refund:</strong><a onclick=\"refund($(this), 14.75, \'ch_17u1a7K3I73TuGTAyBrjQuGl\', 1)\">(Refund)</a>','2016-03-28 16:43:05'),(12,53,5,0,'<script type=\"text/javascript\" src=\"view/javascript/stripe.js\"></script><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Stripe Charge ID:</strong>ch_17uAUkK3I73TuGTALLRFFdno<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Charge Amount:</strong>12.00€<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Captured:</strong>Yes<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Name:</strong>dddd<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Number:</strong>**** **** **** 4444<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Fingerprint:</strong>Ig13mfvARl0awcRY<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Expiry:</strong>3 / 2017<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Type:</strong>MasterCard<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Address:</strong>dddd<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">&nbsp;</strong>333,  333<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">&nbsp;</strong>Spain<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Origin:</strong>US <img src=\"view/image/flags/us.png\" /><br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">CVC Check:</strong>pass<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Street Check:</strong>pass<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Zip Check:</strong>pass<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Refund:</strong><a onclick=\"refund($(this), 12, \'ch_17uAUkK3I73TuGTALLRFFdno\', 1)\">(Refund)</a>','2016-03-29 02:14:07'),(13,54,5,0,'<script type=\"text/javascript\" src=\"view/javascript/stripe.js\"></script><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Stripe Charge ID:</strong>ch_17ugsqK3I73TuGTAaOlDkEec<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Charge Amount:</strong>7.50€<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Captured:</strong>Yes<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Name:</strong>victor<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Number:</strong>**** **** **** 4242<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Fingerprint:</strong>APf7GD4eolTwVqXB<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Expiry:</strong>2 / 2020<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Type:</strong>Visa<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Address:</strong>dievo velazquez<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">&nbsp;</strong>Mojados, CL 47250<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">&nbsp;</strong>Spain<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Origin:</strong>US <img src=\"view/image/flags/us.png\" /><br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">CVC Check:</strong>pass<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Street Check:</strong>pass<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Zip Check:</strong>pass<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Refund:</strong><a onclick=\"refund($(this), 7.5, \'ch_17ugsqK3I73TuGTAaOlDkEec\', 1)\">(Refund)</a>','2016-03-30 12:49:09'),(14,55,5,0,'<script type=\"text/javascript\" src=\"view/javascript/stripe.js\"></script><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Stripe Charge ID:</strong>ch_17ujqWK3I73TuGTA0U4vjlyg<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Charge Amount:</strong>1.50€<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Captured:</strong>Yes<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Name:</strong>asdfasdf<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Number:</strong>**** **** **** 4242<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Fingerprint:</strong>APf7GD4eolTwVqXB<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Expiry:</strong>2 / 2020<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Type:</strong>Visa<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Address:</strong>sdfasdfasd<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">&nbsp;</strong>Mojados, CL 47250<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">&nbsp;</strong>Spain<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Origin:</strong>US <img src=\"view/image/flags/us.png\" /><br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">CVC Check:</strong>pass<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Street Check:</strong>pass<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Zip Check:</strong>pass<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Refund:</strong><a onclick=\"refund($(this), 1.5, \'ch_17ujqWK3I73TuGTA0U4vjlyg\', 1)\">(Refund)</a>','2016-03-30 15:58:58'),(15,56,5,0,'<script type=\"text/javascript\" src=\"view/javascript/stripe.js\"></script><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Stripe Charge ID:</strong>ch_17ukCdK3I73TuGTA9hpKrdZO<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Charge Amount:</strong>4.50€<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Captured:</strong>Yes<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Name:</strong>4242424242424242<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Number:</strong>**** **** **** 4242<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Fingerprint:</strong>APf7GD4eolTwVqXB<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Expiry:</strong>2 / 2022<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Type:</strong>Visa<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Address:</strong>cxcv<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">&nbsp;</strong>Mojados, CL 47250<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">&nbsp;</strong>Spain<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Origin:</strong>US <img src=\"view/image/flags/us.png\" /><br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">CVC Check:</strong>pass<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Street Check:</strong>pass<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Zip Check:</strong>pass<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Refund:</strong><a onclick=\"refund($(this), 4.5, \'ch_17ukCdK3I73TuGTA9hpKrdZO\', 1)\">(Refund)</a>','2016-03-30 16:21:49'),(16,57,5,0,'<script type=\"text/javascript\" src=\"view/javascript/stripe.js\"></script><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Stripe Charge ID:</strong>ch_17ukDlK3I73TuGTAB7sHaTYb<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Charge Amount:</strong>2.75€<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Captured:</strong>Yes<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Name:</strong>sdfddfg<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Number:</strong>**** **** **** 4242<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Fingerprint:</strong>APf7GD4eolTwVqXB<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Expiry:</strong>2 / 2022<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Type:</strong>Visa<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Address:</strong>2332<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">&nbsp;</strong>Valoria La Buena, CL 47200<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">&nbsp;</strong>Spain<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Origin:</strong>US <img src=\"view/image/flags/us.png\" /><br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">CVC Check:</strong>pass<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Street Check:</strong>pass<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Zip Check:</strong>pass<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Refund:</strong><a onclick=\"refund($(this), 2.75, \'ch_17ukDlK3I73TuGTAB7sHaTYb\', 1)\">(Refund)</a>','2016-03-30 16:22:59'),(17,60,5,0,'<script type=\"text/javascript\" src=\"view/javascript/stripe.js\"></script><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Stripe Charge ID:</strong>ch_17ul2wK3I73TuGTAHH11x3uC<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Charge Amount:</strong>8.25€<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Captured:</strong>Yes<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Name:</strong>Cristina<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Number:</strong>**** **** **** 4242<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Fingerprint:</strong>APf7GD4eolTwVqXB<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Expiry:</strong>2 / 2022<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Type:</strong>Visa<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Address:</strong>sdfasdfasd<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">&nbsp;</strong>wee,  33333<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">&nbsp;</strong>Spain<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Origin:</strong>US <img src=\"view/image/flags/us.png\" /><br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">CVC Check:</strong>pass<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Street Check:</strong>pass<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Zip Check:</strong>pass<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Refund:</strong><a onclick=\"refund($(this), 8.25, \'ch_17ul2wK3I73TuGTAHH11x3uC\', 1)\">(Refund)</a>','2016-03-30 17:15:53'),(18,61,5,0,'<script type=\"text/javascript\" src=\"view/javascript/stripe.js\"></script><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Stripe Charge ID:</strong>ch_17uwJsK3I73TuGTA7zAMvrpU<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Charge Amount:</strong>22.50€<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Captured:</strong>Yes<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Name:</strong>victor<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Number:</strong>**** **** **** 4242<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Fingerprint:</strong>APf7GD4eolTwVqXB<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Expiry:</strong>2 / 2022<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Type:</strong>Visa<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Card Address:</strong>diego velaz<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">&nbsp;</strong>Ataquines, CL 47210<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">&nbsp;</strong>Spain<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Origin:</strong>US <img src=\"view/image/flags/us.png\" /><br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">CVC Check:</strong>pass<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Street Check:</strong>pass<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Zip Check:</strong>pass<br /><strong style=\"display: inline-block; width: 135px; padding: 2px 5px\">Refund:</strong><a onclick=\"refund($(this), 22.5, \'ch_17uwJsK3I73TuGTA7zAMvrpU\', 1)\">(Refund)</a>','2016-03-31 05:18:06'),(19,61,0,0,'','2016-03-31 08:43:17'),(20,61,5,0,'','2016-03-31 08:43:17'),(21,61,0,0,'','2016-03-31 08:43:28'),(22,61,15,0,'','2016-03-31 08:43:28');
/*!40000 ALTER TABLE `oc_order_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_option`
--

DROP TABLE IF EXISTS `oc_order_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_option` (
  `order_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  PRIMARY KEY (`order_option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_option`
--

LOCK TABLES `oc_order_option` WRITE;
/*!40000 ALTER TABLE `oc_order_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_product`
--

DROP TABLE IF EXISTS `oc_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_product` (
  `order_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL,
  PRIMARY KEY (`order_product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=131 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_product`
--

LOCK TABLES `oc_order_product` WRITE;
/*!40000 ALTER TABLE `oc_order_product` DISABLE KEYS */;
INSERT INTO `oc_order_product` VALUES (1,1,52,'Manzanas Lola','ManzanaLola',1,0.0000,0.0000,0.0000,0),(2,1,51,'Plátanos Pérez','PlatanoPerez',1,0.0000,0.0000,0.0000,0),(3,2,52,'Manzanas Lola','ManzanaLola',1,0.0000,0.0000,0.0000,0),(4,2,51,'Plátanos Pérez','PlatanoPerez',1,0.0000,0.0000,0.0000,0),(5,3,50,'Tomates Paco','TomatesPaco',1,0.0000,0.0000,0.0000,0),(6,4,50,'Tomates Paco','TomatesPaco',1,0.0000,0.0000,0.0000,0),(7,5,55,'Mermelada de melocotón','Mermelada1',1,5.0000,5.0000,0.0000,0),(8,6,59,'Helados','Helados',2,2.0000,4.0000,0.0000,0),(9,7,59,'Helados','Helados',1,2.0000,2.0000,0.0000,0),(10,8,51,'Plátano de Canarias','PlatanoPerez',1,3.0000,3.0000,0.0000,0),(11,8,50,'Tomate de la huerta','TomatesPaco',1,2.0000,2.0000,0.0000,0),(12,8,59,'Helados','Helados',1,2.0000,2.0000,0.0000,0),(13,9,51,'Plátano de Canarias','PlatanoPerez',1,3.0000,3.0000,0.0000,0),(14,9,50,'Tomate de la huerta','TomatesPaco',1,2.0000,2.0000,0.0000,0),(15,9,59,'Helados','Helados',1,2.0000,2.0000,0.0000,0),(16,10,51,'Plátano de Canarias','PlatanoPerez',1,3.0000,3.0000,0.0000,0),(17,11,51,'Plátano de Canarias','PlatanoPerez',2,3.0000,6.0000,0.0000,0),(18,12,52,'Manzana Golden','ManzanaLola',1,2.0000,2.0000,0.0000,0),(19,12,51,'Plátano de Canarias','PlatanoPerez',2,3.0000,6.0000,0.0000,0),(20,13,50,'Tomate de la huerta','TomatesPaco',2,2.0000,4.0000,0.0000,0),(21,14,63,'rgtreyte','rgtreyte',10,455.0000,4550.0000,0.0000,0),(22,15,70,'tomate','tomate',1,2.0000,2.0000,0.0000,0),(23,15,79,'Zanahorias','Zanahorias',3,1.0000,3.0000,0.0000,0),(24,16,95,'Arandanos','Arandanos',3,1.3000,3.9000,0.0000,0),(25,16,106,'Cerveza Banana','Cerveza Banana',12,3.2000,38.4000,0.0000,0),(26,16,107,'Vino Don Simon','Vino Don Simon',1,4.5000,4.5000,0.0000,0),(27,17,91,'brocoli','brocoli',1,1.6000,1.6000,0.0000,0),(28,18,95,'Arandanos','Arandanos',7,1.3000,9.1000,0.0000,0),(29,19,95,'Arandanos','Arandanos',6,1.3000,7.8000,0.0000,0),(30,20,91,'brocoli','brocoli',1,1.6000,1.6000,0.0000,0),(31,20,95,'Arandanos','Arandanos',22,1.3000,28.6000,0.0000,0),(32,20,100,'Chuleton de buey','Chuleton de buey',3,27.5000,82.5000,0.0000,0),(33,21,91,'brocoli','brocoli',1,1.6000,1.6000,0.0000,0),(34,21,95,'Arandanos','Arandanos',22,1.3000,28.6000,0.0000,0),(35,21,100,'Chuleton de buey','Chuleton de buey',3,27.5000,82.5000,0.0000,0),(36,22,91,'brocoli','brocoli',1,1.6000,1.6000,0.0000,0),(37,22,95,'Arandanos','Arandanos',22,1.3000,28.6000,0.0000,0),(38,22,100,'Chuleton de buey','Chuleton de buey',3,27.5000,82.5000,0.0000,0),(39,23,89,'Coliflor','Coliflor',1,1.8000,1.8000,0.0000,0),(40,23,91,'brocoli','brocoli',1,1.6000,1.6000,0.0000,0),(41,23,95,'Arandanos','Arandanos',22,1.3000,28.6000,0.0000,0),(42,23,100,'Chuleton de buey','Chuleton de buey',3,27.5000,82.5000,0.0000,0),(43,24,106,'Cerveza Banana','Cerveza Banana',1,3.2000,3.2000,0.0000,0),(44,24,89,'Coliflor','Coliflor',1,1.8000,1.8000,0.0000,0),(45,24,91,'brocoli','brocoli',1,1.6000,1.6000,0.0000,0),(46,24,100,'Chuleton de buey','Chuleton de buey',3,27.5000,82.5000,0.0000,0),(47,25,91,'brocoli','brocoli',1,1.6000,1.6000,0.0000,0),(48,26,89,'Coliflor','Coliflor',1,1.8000,1.8000,0.0000,0),(49,26,95,'Arandanos','Arandanos',1,1.3000,1.3000,0.0000,0),(50,26,103,'Aceite','Aceite',1,4.5000,4.5000,0.0000,0),(51,27,91,'brocoli','brocoli',1,1.6000,1.6000,0.0000,0),(52,27,95,'Arandanos','Arandanos',1,1.3000,1.3000,0.0000,0),(53,27,89,'Coliflor','Coliflor',1,1.8000,1.8000,0.0000,0),(54,28,91,'brocoli','brocoli',1,1.6000,1.6000,0.0000,0),(55,28,95,'Arandanos','Arandanos',1,1.3000,1.3000,0.0000,0),(56,28,89,'Coliflor','Coliflor',1,1.8000,1.8000,0.0000,0),(57,29,91,'brocoli','brocoli',1,1.6000,1.6000,0.0000,0),(58,29,95,'Arandanos','Arandanos',1,1.3000,1.3000,0.0000,0),(59,29,89,'Coliflor','Coliflor',1,1.8000,1.8000,0.0000,0),(60,30,91,'brocoli','brocoli',1,1.6000,1.6000,0.0000,0),(61,30,95,'Arandanos','Arandanos',1,1.3000,1.3000,0.0000,0),(62,30,89,'Coliflor','Coliflor',1,1.8000,1.8000,0.0000,0),(63,31,91,'brocoli','brocoli',1,1.6000,1.6000,0.0000,0),(64,31,95,'Arandanos','Arandanos',1,1.3000,1.3000,0.0000,0),(65,31,89,'Coliflor','Coliflor',1,1.8000,1.8000,0.0000,0),(66,32,106,'Cerveza Banana','Cerveza Banana',1,3.2000,3.2000,0.0000,0),(67,32,89,'Coliflor','Coliflor',2,1.8000,3.6000,0.0000,0),(68,32,103,'Aceite','Aceite',1,4.5000,4.5000,0.0000,0),(69,33,133,'Lechuga','Lechuga',4,1.2500,5.0000,0.0000,0),(70,34,134,'Cerezas','Cerezas',1,2.5000,2.5000,0.0000,0),(71,34,126,'Aceite de Oliva','Aceite de Oliva',1,3.5000,3.5000,0.0000,0),(72,34,143,'Spaguetti Fresco','Spaguetti Fresco',1,3.0000,3.0000,0.0000,0),(73,34,142,'Queso Parmigiano','Queso Parmigiano',1,4.5000,4.5000,0.0000,0),(74,34,133,'Lechuga','Lechuga',1,1.2500,1.2500,0.0000,0),(75,35,134,'Cerezas','Cerezas',1,2.5000,2.5000,0.0000,0),(76,35,126,'Aceite de Oliva','Aceite de Oliva',1,3.5000,3.5000,0.0000,0),(77,35,143,'Spaguetti Fresco','Spaguetti Fresco',1,3.0000,3.0000,0.0000,0),(78,35,142,'Queso Parmigiano','Queso Parmigiano',1,4.5000,4.5000,0.0000,0),(79,35,133,'Lechuga','Lechuga',1,1.2500,1.2500,0.0000,0),(80,36,134,'Cerezas','Cerezas',1,2.5000,2.5000,0.0000,0),(81,37,134,'Cerezas','Cerezas',1,2.5000,2.5000,0.0000,0),(82,38,134,'Cerezas','Cerezas',1,2.5000,2.5000,0.0000,0),(83,39,134,'Cerezas','Cerezas',1,2.5000,2.5000,0.0000,0),(84,40,134,'Cerezas','Cerezas',1,2.5000,2.5000,0.0000,0),(85,41,134,'Cerezas','Cerezas',1,2.5000,2.5000,0.0000,0),(86,42,134,'Cerezas','Cerezas',1,2.5000,2.5000,0.0000,0),(87,43,134,'Cerezas','Cerezas',1,2.5000,2.5000,0.0000,0),(88,44,134,'Cerezas','Cerezas',1,2.5000,2.5000,0.0000,0),(89,45,134,'Cerezas','Cerezas',1,2.5000,2.5000,0.0000,0),(90,46,134,'Cerezas','Cerezas',1,2.5000,2.5000,0.0000,0),(91,47,134,'Cerezas','Cerezas',1,2.5000,2.5000,0.0000,0),(92,48,134,'Cerezas','Cerezas',1,2.5000,2.5000,0.0000,0),(93,49,134,'Cerezas','Cerezas',1,2.5000,2.5000,0.0000,0),(94,50,134,'Cerezas','Cerezas',1,2.5000,2.5000,0.0000,0),(95,51,134,'Cerezas','Cerezas',1,2.5000,2.5000,0.0000,0),(96,52,134,'Cerezas','Cerezas',1,2.5000,2.5000,0.0000,0),(97,53,127,'Acelgas','Acelgas',1,1.5000,1.5000,0.0000,0),(98,53,130,'Espárragos Verdes','Espárragos Verdes',1,2.5000,2.5000,0.0000,0),(99,53,142,'Queso Parmigiano','Queso Parmigiano',1,4.5000,4.5000,0.0000,0),(100,53,152,'La Virgen','La Virgen',1,3.5000,3.5000,0.0000,0),(101,54,133,'Lechuga','Lechuga',6,1.2500,7.5000,0.0000,0),(102,55,127,'Acelgas','Acelgas',1,1.5000,1.5000,0.0000,0),(103,56,127,'Acelgas','Acelgas',1,1.5000,1.5000,0.0000,0),(104,56,150,'Einstöck Icelandic White Ale','Einstöck Icelandic White Ale',1,3.0000,3.0000,0.0000,0),(105,57,133,'Lechuga','Lechuga',1,1.2500,1.2500,0.0000,0),(106,57,127,'Acelgas','Acelgas',1,1.5000,1.5000,0.0000,0),(107,58,149,'La Cibeles','La Cibeles',1,2.5000,2.5000,0.0000,0),(108,59,149,'La Cibeles','La Cibeles',1,2.5000,2.5000,0.0000,0),(109,59,134,'Cerezas','Cerezas',1,2.5000,2.5000,0.0000,0),(110,59,142,'Queso Parmigiano','Queso Parmigiano',1,4.5000,4.5000,0.0000,0),(111,59,151,'Hop Rising','Hop Rising',1,4.5000,4.5000,0.0000,0),(112,60,133,'Lechuga','Lechuga',1,1.2500,1.2500,0.0000,0),(113,60,134,'Cerezas','Cerezas',2,2.5000,5.0000,0.0000,0),(114,60,128,'Ajos','Ajos',1,2.0000,2.0000,0.0000,0),(123,61,155,'Zanahoria Roja','Zanahoria Roja',1,2.5000,2.5000,0.0000,0),(122,61,127,'Acelgas','Acelgas',1,1.5000,1.5000,0.0000,0),(121,61,157,'Chuletón de ternera','Chuletón de ternera',1,18.5000,18.5000,0.0000,0),(124,62,134,'Cerezas','Cerezas',1,2.5000,2.5000,0.0000,0),(125,62,150,'Einstöck Icelandic White Ale','Einstöck Icelandic White Ale',1,3.0000,3.0000,0.0000,0),(126,63,134,'Cerezas','Cerezas',1,2.5000,2.5000,0.0000,0),(127,63,150,'Einstöck Icelandic White Ale','Einstöck Icelandic White Ale',1,3.0000,3.0000,0.0000,0),(128,64,134,'Cerezas','Cerezas',1,2.5000,2.5000,0.0000,0),(129,64,150,'Einstöck Icelandic White Ale','Einstöck Icelandic White Ale',1,3.0000,3.0000,0.0000,0),(130,65,127,'Acelgas','Acelgas',1,1.5000,1.5000,0.0000,0);
/*!40000 ALTER TABLE `oc_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_recurring`
--

DROP TABLE IF EXISTS `oc_order_recurring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_recurring`
--

LOCK TABLES `oc_order_recurring` WRITE;
/*!40000 ALTER TABLE `oc_order_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_recurring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_recurring_transaction`
--

DROP TABLE IF EXISTS `oc_order_recurring_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_recurring_transaction`
--

LOCK TABLES `oc_order_recurring_transaction` WRITE;
/*!40000 ALTER TABLE `oc_order_recurring_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_recurring_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_status`
--

DROP TABLE IF EXISTS `oc_order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`order_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_status`
--

LOCK TABLES `oc_order_status` WRITE;
/*!40000 ALTER TABLE `oc_order_status` DISABLE KEYS */;
INSERT INTO `oc_order_status` VALUES (3,1,'Shipped'),(7,1,'Canceled'),(5,3,'Pendiente de aprobación'),(16,1,'Voided'),(15,1,'Processed'),(3,3,'Enviado'),(7,3,'Cancelado'),(8,3,'Denegado'),(10,3,'Fallo en el pedido'),(1,3,'Pendiente'),(16,3,'Anulado'),(15,3,'Procesado'),(14,3,'Realizado'),(8,1,'Denied'),(14,1,'complete'),(10,1,'Failed'),(1,1,'Pending'),(5,1,'eee');
/*!40000 ALTER TABLE `oc_order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_total`
--

DROP TABLE IF EXISTS `oc_order_total`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_total` (
  `order_total_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`order_total_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=144 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_total`
--

LOCK TABLES `oc_order_total` WRITE;
/*!40000 ALTER TABLE `oc_order_total` DISABLE KEYS */;
INSERT INTO `oc_order_total` VALUES (1,1,'sub_total','Sub-Total',0.0000,1),(2,1,'shipping','Flat Shipping Rate',5.0000,3),(3,1,'total','Total',5.0000,9),(4,2,'sub_total','Sub-Total',0.0000,1),(5,2,'shipping','Flat Shipping Rate',5.0000,3),(6,2,'total','Total',5.0000,9),(7,3,'sub_total','Sub-Total',0.0000,1),(8,3,'shipping','Flat Shipping Rate',5.0000,3),(9,3,'total','Total',5.0000,9),(10,4,'sub_total','Sub-Total',0.0000,1),(11,4,'shipping','Flat Shipping Rate',5.0000,3),(12,4,'total','Total',5.0000,9),(13,5,'sub_total','Sub-Total',5.0000,1),(14,5,'total','Total',5.0000,9),(15,6,'sub_total','Sub-Total',4.0000,1),(16,6,'total','Total',4.0000,9),(17,7,'sub_total','Sub-Total',2.0000,1),(18,7,'total','Total',2.0000,9),(19,8,'sub_total','Sub-Total',7.0000,1),(20,8,'shipping','Flat Shipping Rate',5.0000,3),(21,8,'total','Total',12.0000,9),(22,9,'sub_total','Sub-Total',7.0000,1),(23,9,'shipping','Flat Shipping Rate',5.0000,3),(24,9,'total','Total',12.0000,9),(25,10,'sub_total','Sub-Total',3.0000,1),(26,10,'shipping','Flat Shipping Rate',5.0000,3),(27,10,'total','Total',8.0000,9),(28,11,'sub_total','Sub-Total',6.0000,1),(29,11,'shipping','Flat Shipping Rate',5.0000,3),(30,11,'total','Total',11.0000,9),(31,12,'sub_total','Sub-Total',8.0000,1),(32,12,'shipping','Flat Shipping Rate',5.0000,3),(33,12,'total','Total',13.0000,9),(34,13,'sub_total','Sub-Total',4.0000,1),(35,13,'total','Total',4.0000,9),(36,14,'sub_total','Sub-Total',4550.0000,1),(37,14,'total','Total',4550.0000,9),(38,15,'sub_total','Sub-Total',5.0000,1),(39,15,'total','Total',5.0000,9),(40,16,'sub_total','Sub-Total',46.8000,1),(41,16,'total','Total',46.8000,9),(42,17,'sub_total','Sub-Total',1.6000,1),(43,17,'total','Total',1.6000,9),(44,18,'sub_total','Sub-Total',9.1000,1),(45,18,'total','Total',9.1000,9),(46,19,'sub_total','Sub-Total',7.8000,1),(47,19,'total','Total',7.8000,9),(48,20,'sub_total','Sub-Total',112.7000,1),(49,20,'total','Total',112.7000,9),(50,21,'sub_total','Sub-Total',112.7000,1),(51,21,'total','Total',112.7000,9),(52,22,'sub_total','Sub-Total',112.7000,1),(53,22,'total','Total',112.7000,9),(54,23,'sub_total','Sub-Total',114.5000,1),(55,23,'total','Total',114.5000,9),(56,24,'sub_total','Sub-Total',89.1000,1),(57,24,'total','Total',89.1000,9),(58,25,'sub_total','Sub-Total',1.6000,1),(59,25,'total','Total',1.6000,9),(60,26,'sub_total','Sub-Total',7.6000,1),(61,26,'total','Total',7.6000,9),(62,27,'sub_total','Sub-Total',4.7000,1),(63,27,'total','Total',4.7000,9),(64,28,'sub_total','Sub-Total',4.7000,1),(65,28,'total','Total',4.7000,9),(66,29,'sub_total','Sub-Total',4.7000,1),(67,29,'total','Total',4.7000,9),(68,30,'sub_total','Sub-Total',4.7000,1),(69,30,'total','Total',4.7000,9),(70,31,'sub_total','Sub-Total',4.7000,1),(71,31,'total','Total',4.7000,9),(72,32,'sub_total','Sub-Total',11.3000,1),(73,32,'total','Total',11.3000,9),(74,33,'sub_total','Sub-Total',5.0000,1),(75,33,'total','Total',5.0000,9),(76,34,'sub_total','Sub-Total',14.7500,1),(77,34,'total','Total',14.7500,9),(78,35,'sub_total','Sub-Total',14.7500,1),(79,35,'total','Total',14.7500,9),(80,36,'sub_total','Sub-Total',2.5000,1),(81,36,'total','Total',2.5000,9),(82,37,'sub_total','Sub-Total',2.5000,1),(83,37,'total','Total',2.5000,9),(84,38,'sub_total','Sub-Total',2.5000,1),(85,38,'total','Total',2.5000,9),(86,39,'sub_total','Sub-Total',2.5000,1),(87,39,'total','Total',2.5000,9),(88,40,'sub_total','Sub-Total',2.5000,1),(89,40,'total','Total',2.5000,9),(90,41,'sub_total','Sub-Total',2.5000,1),(91,41,'total','Total',2.5000,9),(92,42,'sub_total','Sub-Total',2.5000,1),(93,42,'total','Total',2.5000,9),(94,43,'sub_total','Sub-Total',2.5000,1),(95,43,'total','Total',2.5000,9),(96,44,'sub_total','Sub-Total',2.5000,1),(97,44,'total','Total',2.5000,9),(98,45,'sub_total','Sub-Total',2.5000,1),(99,45,'total','Total',2.5000,9),(100,46,'sub_total','Sub-Total',2.5000,1),(101,46,'total','Total',2.5000,9),(102,47,'sub_total','Sub-Total',2.5000,1),(103,47,'total','Total',2.5000,9),(104,48,'sub_total','Sub-Total',2.5000,1),(105,48,'total','Total',2.5000,9),(106,49,'sub_total','Sub-Total',2.5000,1),(107,49,'total','Total',2.5000,9),(108,50,'sub_total','Sub-Total',2.5000,1),(109,50,'total','Total',2.5000,9),(110,51,'sub_total','Sub-Total',2.5000,1),(111,51,'total','Total',2.5000,9),(112,52,'sub_total','Sub-Total',2.5000,1),(113,52,'total','Total',2.5000,9),(114,53,'sub_total','Sub-Total',12.0000,1),(115,53,'total','Total',12.0000,9),(116,54,'sub_total','Sub-Total',7.5000,1),(117,54,'total','Total',7.5000,9),(118,55,'sub_total','Sub-Total',1.5000,1),(119,55,'total','Total',1.5000,9),(120,56,'sub_total','Sub-Total',4.5000,1),(121,56,'total','Total',4.5000,9),(122,57,'sub_total','Sub-Total',2.7500,1),(123,57,'total','Total',2.7500,9),(124,58,'sub_total','Sub-Total',2.5000,1),(125,58,'total','Total',2.5000,9),(126,59,'sub_total','Sub-Total',14.0000,1),(127,59,'total','Total',14.0000,9),(128,60,'sub_total','Sub-Total',8.2500,1),(129,60,'total','Total',8.2500,9),(135,61,'total','Total',22.5000,9),(134,61,'sub_total','Sub-Total',22.5000,1),(136,62,'sub_total','Sub-Total',5.5000,1),(137,62,'total','Total',5.5000,9),(138,63,'sub_total','Sub-Total',5.5000,1),(139,63,'total','Total',5.5000,9),(140,64,'sub_total','Sub-Total',5.5000,1),(141,64,'total','Total',5.5000,9),(142,65,'sub_total','Sub-Total',1.5000,1),(143,65,'total','Total',1.5000,9);
/*!40000 ALTER TABLE `oc_order_total` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_voucher`
--

DROP TABLE IF EXISTS `oc_order_voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  PRIMARY KEY (`order_voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_voucher`
--

LOCK TABLES `oc_order_voucher` WRITE;
/*!40000 ALTER TABLE `oc_order_voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_voucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_pavblog_blog`
--

DROP TABLE IF EXISTS `oc_pavblog_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_pavblog_blog` (
  `blog_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `created` date NOT NULL,
  `status` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  `hits` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `date_modified` date NOT NULL,
  `video_code` varchar(255) NOT NULL,
  `params` text NOT NULL,
  `tags` varchar(255) NOT NULL,
  `featured` tinyint(1) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`blog_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_pavblog_blog`
--

LOCK TABLES `oc_pavblog_blog` WRITE;
/*!40000 ALTER TABLE `oc_pavblog_blog` DISABLE KEYS */;
INSERT INTO `oc_pavblog_blog` VALUES (7,21,0,'2013-03-09',1,1,57,'catalog/demo/pavblog/1.jpg','','','','2015-07-10','','','joomla, prestashop, magento',1,''),(9,21,1,'2013-03-09',1,1,79,'catalog/demo/pavblog/2.jpg','','','','2015-07-10','','','prestashop, magento',0,''),(10,21,3,'2013-03-09',1,1,231,'catalog/demo/pavblog/4.jpg','test test','','Custom SEO Titlte','2015-07-10','','','prestashop',0,''),(11,21,2,'2013-03-11',1,1,116,'catalog/demo/pavblog/3.jpg','','','','2015-07-10','','','opencart',0,'');
/*!40000 ALTER TABLE `oc_pavblog_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_pavblog_blog_description`
--

DROP TABLE IF EXISTS `oc_pavblog_blog_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_pavblog_blog_description` (
  `blog_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_pavblog_blog_description`
--

LOCK TABLES `oc_pavblog_blog_description` WRITE;
/*!40000 ALTER TABLE `oc_pavblog_blog_description` DISABLE KEYS */;
INSERT INTO `oc_pavblog_blog_description` VALUES (7,1,'Ac tincidunt Suspendisse malesuada','&lt;p&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper scelerisque convallis. Sed quisque cum velit&lt;/p&gt;\r\n','&lt;div class=&quot;itemFullText&quot;&gt;\r\n&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;\r\n\r\n&lt;p&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;\r\n&lt;/div&gt;\r\n'),(9,1,'Commodo laoreet semper tincidunt lorem ','&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue&lt;/p&gt;\r\n','&lt;div class=&quot;itemFullText&quot;&gt;\r\n&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;\r\n\r\n&lt;p&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;\r\n&lt;/div&gt;\r\n'),(10,1,'Neque porro quisquam est, qui dolorem ipsum','&lt;p&gt;&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.&lt;/p&gt;\r\n','&lt;p&gt;Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, \r\nconsectetur, adipisci velit, sed quia non numquam eius modi tempora \r\nincidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim \r\nad minima veniam, quis nostrum exercitationem ullam corporis suscipit \r\nlaboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel \r\neum iure reprehenderit qui in ea voluptate velit esse quam nihil \r\nmolestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas \r\nnulla pariatur? Neque porro quisquam est, qui dolorem ipsum quia dolor \r\nsit amet, consectetur, adipisci velit, sed quia non numquam eius modi \r\ntempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. \r\nUt enim ad minima veniam, quis nostrum exercitationem ullam corporis \r\nsuscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis \r\nautem vel eum iure reprehenderit qui in ea voluptate velit esse quam \r\nnihil molestiae consequatur, vel illum qui dolorem eum fugiat quo \r\nvoluptas nulla pariatur? Neque porro quisquam est, qui dolorem ipsum \r\nquia dolor sit amet, consectetur, adipisci velit, sed quia non numquam \r\neius modi tempora incidunt ut labore et dolore magnam aliquam quaerat \r\nvoluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam \r\ncorporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur?\r\n Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse \r\nquam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo \r\nvoluptas nulla pariatur?&lt;/p&gt;'),(11,1,'Donec tellus Nulla lorem Nullam elit id ut','&lt;p&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;\r\n','&lt;div class=&quot;itemFullText&quot;&gt;\r\n&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;\r\n\r\n&lt;p&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;\r\n&lt;/div&gt;\r\n');
/*!40000 ALTER TABLE `oc_pavblog_blog_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_pavblog_category`
--

DROP TABLE IF EXISTS `oc_pavblog_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_pavblog_category` (
  `category_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `is_group` smallint(6) NOT NULL DEFAULT '2',
  `width` varchar(255) DEFAULT NULL,
  `submenu_width` varchar(255) DEFAULT NULL,
  `colum_width` varchar(255) DEFAULT NULL,
  `submenu_colum_width` varchar(255) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL,
  `colums` varchar(255) DEFAULT '1',
  `type` varchar(255) NOT NULL,
  `is_content` smallint(6) NOT NULL DEFAULT '2',
  `show_title` smallint(6) NOT NULL DEFAULT '1',
  `meta_keyword` varchar(255) NOT NULL DEFAULT '1',
  `level_depth` smallint(6) NOT NULL DEFAULT '0',
  `published` smallint(6) NOT NULL DEFAULT '1',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `position` int(11) unsigned NOT NULL DEFAULT '0',
  `show_sub` smallint(6) NOT NULL DEFAULT '0',
  `url` varchar(255) DEFAULT NULL,
  `target` varchar(25) DEFAULT NULL,
  `privacy` smallint(5) unsigned NOT NULL DEFAULT '0',
  `position_type` varchar(25) DEFAULT 'top',
  `menu_class` varchar(25) DEFAULT NULL,
  `description` text,
  `meta_description` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `level` int(11) NOT NULL,
  `left` int(11) NOT NULL,
  `right` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_pavblog_category`
--

LOCK TABLES `oc_pavblog_category` WRITE;
/*!40000 ALTER TABLE `oc_pavblog_category` DISABLE KEYS */;
INSERT INTO `oc_pavblog_category` VALUES (1,'',0,2,'','','','','','1','',2,1,'1',0,1,0,0,0,'','',0,'top','','','','',-5,34,47,''),(20,'data/pavblog/pav-c3.jpg',22,2,'','','','','','1','',2,1,'1',0,1,0,3,0,'','',0,'top','test test','','','',0,0,0,''),(21,'data/pavblog/pav-c1.jpg',22,2,'','','','','','1','',2,1,'1',0,1,0,1,0,'','',0,'top','','','','',0,0,0,''),(23,'data/pavblog/pav-c2.jpg',22,2,'','','','','','1','',2,1,'1',0,1,0,2,0,'','',0,'top','','','','',0,0,0,''),(25,'catalog/2.jpg',1,2,NULL,NULL,NULL,NULL,NULL,'1','',2,1,'',0,1,0,1,0,NULL,NULL,0,'top','',NULL,'','',0,0,0,''),(26,'catalog/honey.jpg',1,2,NULL,NULL,NULL,NULL,NULL,'1','',2,1,'',0,1,0,2,0,NULL,NULL,0,'top','',NULL,'','',0,0,0,''),(27,'catalog/booze-1329038.jpg',1,2,NULL,NULL,NULL,NULL,NULL,'1','',2,1,'',0,1,0,3,0,NULL,NULL,0,'top','',NULL,'','',0,0,0,'');
/*!40000 ALTER TABLE `oc_pavblog_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_pavblog_category_description`
--

DROP TABLE IF EXISTS `oc_pavblog_category_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_pavblog_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_pavblog_category_description`
--

LOCK TABLES `oc_pavblog_category_description` WRITE;
/*!40000 ALTER TABLE `oc_pavblog_category_description` DISABLE KEYS */;
INSERT INTO `oc_pavblog_category_description` VALUES (1,1,'ROOT','Menu Root'),(25,1,'La Huerta','&lt;p&gt;&lt;br&gt;&lt;/p&gt;'),(26,1,'La Despensa','&lt;p&gt;&lt;br&gt;&lt;/p&gt;'),(21,1,'Demo Category 1 2-1','&lt;p&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper scelerisque convallis&lt;/p&gt;\r\n'),(23,1,'Demo Category 1-2-2','&lt;p&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper scelerisque convallis&lt;/p&gt;\r\n'),(20,1,'Demo Category 1-2','&lt;p&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper scelerisque convallis&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n'),(27,1,'La Bebida','&lt;p&gt;&lt;br&gt;&lt;/p&gt;');
/*!40000 ALTER TABLE `oc_pavblog_category_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_pavblog_comment`
--

DROP TABLE IF EXISTS `oc_pavblog_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_pavblog_comment` (
  `comment_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) unsigned NOT NULL,
  `comment` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `user` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `FK_blog_comment` (`blog_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_pavblog_comment`
--

LOCK TABLES `oc_pavblog_comment` WRITE;
/*!40000 ALTER TABLE `oc_pavblog_comment` DISABLE KEYS */;
INSERT INTO `oc_pavblog_comment` VALUES (6,10,'Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur mag Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur mag',1,'2013-03-12 14:23:09','ha cong tien','hatuhn@gmail.com'),(7,10,'Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur mag',1,'2013-03-12 14:25:19','ha cong tien','hatuhn@gmail.com'),(8,10,'Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur mag Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur mag',1,'2013-03-12 14:30:17','Test Test ','ngoisao@aa.com');
/*!40000 ALTER TABLE `oc_pavblog_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_pavoslidergroups`
--

DROP TABLE IF EXISTS `oc_pavoslidergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_pavoslidergroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_pavoslidergroups`
--

LOCK TABLES `oc_pavoslidergroups` WRITE;
/*!40000 ALTER TABLE `oc_pavoslidergroups` DISABLE KEYS */;
INSERT INTO `oc_pavoslidergroups` VALUES (24,'full image','a:28:{s:5:\"title\";s:10:\"full image\";s:5:\"delay\";s:4:\"9000\";s:9:\"fullwidth\";s:9:\"fullwidth\";s:5:\"width\";s:4:\"5000\";s:6:\"height\";s:3:\"350\";s:12:\"touch_mobile\";s:1:\"1\";s:13:\"stop_on_hover\";s:1:\"1\";s:12:\"shuffle_mode\";s:1:\"0\";s:14:\"image_cropping\";s:1:\"0\";s:11:\"shadow_type\";s:1:\"2\";s:14:\"show_time_line\";s:1:\"1\";s:18:\"time_line_position\";s:3:\"top\";s:16:\"background_color\";s:7:\"#d9d9d9\";s:6:\"margin\";s:12:\"0px 0px 18px\";s:7:\"padding\";s:7:\"5px 5px\";s:16:\"background_image\";s:1:\"0\";s:14:\"background_url\";s:0:\"\";s:14:\"navigator_type\";s:4:\"none\";s:16:\"navigator_arrows\";s:16:\"verticalcentered\";s:16:\"navigation_style\";s:5:\"round\";s:17:\"offset_horizontal\";s:1:\"0\";s:15:\"offset_vertical\";s:2:\"20\";s:14:\"show_navigator\";s:1:\"0\";s:20:\"hide_navigator_after\";s:3:\"200\";s:15:\"thumbnail_width\";s:3:\"100\";s:16:\"thumbnail_height\";s:2:\"50\";s:16:\"thumbnail_amount\";s:1:\"5\";s:17:\"hide_screen_width\";s:0:\"\";}'),(23,'cabecera','a:28:{s:5:\"title\";s:8:\"cabecera\";s:5:\"delay\";s:4:\"9000\";s:9:\"fullwidth\";s:9:\"fullwidth\";s:5:\"width\";s:4:\"5000\";s:6:\"height\";s:3:\"100\";s:12:\"touch_mobile\";s:1:\"1\";s:13:\"stop_on_hover\";s:1:\"1\";s:12:\"shuffle_mode\";s:1:\"1\";s:14:\"image_cropping\";s:1:\"1\";s:11:\"shadow_type\";s:1:\"0\";s:14:\"show_time_line\";s:1:\"1\";s:18:\"time_line_position\";s:3:\"top\";s:16:\"background_color\";s:7:\"#d9d9d9\";s:6:\"margin\";s:11:\"0px 0px 0px\";s:7:\"padding\";s:7:\"0px 0px\";s:16:\"background_image\";s:1:\"0\";s:14:\"background_url\";s:0:\"\";s:14:\"navigator_type\";s:4:\"none\";s:16:\"navigator_arrows\";s:16:\"verticalcentered\";s:16:\"navigation_style\";s:5:\"round\";s:17:\"offset_horizontal\";s:1:\"0\";s:15:\"offset_vertical\";s:2:\"20\";s:14:\"show_navigator\";s:1:\"0\";s:20:\"hide_navigator_after\";s:3:\"200\";s:15:\"thumbnail_width\";s:3:\"100\";s:16:\"thumbnail_height\";s:2:\"50\";s:16:\"thumbnail_amount\";s:1:\"5\";s:17:\"hide_screen_width\";s:0:\"\";}');
/*!40000 ALTER TABLE `oc_pavoslidergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_pavosliderlayers`
--

DROP TABLE IF EXISTS `oc_pavosliderlayers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_pavosliderlayers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `params` text NOT NULL,
  `layersparams` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `position` int(11) NOT NULL,
  `language_id` int(11) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_pavosliderlayers`
--

LOCK TABLES `oc_pavosliderlayers` WRITE;
/*!40000 ALTER TABLE `oc_pavosliderlayers` DISABLE KEYS */;
INSERT INTO `oc_pavosliderlayers` VALUES (33,'1',0,23,'a:17:{s:2:\"id\";s:2:\"33\";s:15:\"slider_group_id\";s:2:\"23\";s:12:\"slider_title\";s:1:\"1\";s:18:\"slider_language_id\";s:1:\"1\";s:13:\"slider_status\";s:1:\"1\";s:17:\"slider_transition\";s:6:\"random\";s:11:\"slider_slot\";s:1:\"7\";s:15:\"slider_rotation\";s:1:\"0\";s:15:\"slider_duration\";s:3:\"300\";s:12:\"slider_delay\";s:1:\"0\";s:11:\"slider_link\";s:0:\"\";s:16:\"slider_thumbnail\";s:0:\"\";s:15:\"slider_usevideo\";s:1:\"0\";s:14:\"slider_videoid\";s:0:\"\";s:16:\"slider_videoplay\";s:1:\"0\";s:9:\"slider_id\";s:2:\"33\";s:12:\"slider_image\";s:20:\"data/slide_image.jpg\";}','O:8:\"stdClass\":1:{s:6:\"layers\";a:1:{i:0;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:1;s:13:\"layer_content\";s:27:\"catalog/destacadosFondo.png\";s:10:\"layer_type\";s:5:\"image\";s:11:\"layer_class\";s:0:\"\";s:13:\"layer_caption\";s:17:\"Your Image Here 1\";s:15:\"layer_animation\";s:4:\"fade\";s:12:\"layer_easing\";s:11:\"easeOutExpo\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"112\";s:10:\"layer_left\";s:1:\"0\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:4:\"auto\";s:15:\"layer_endeasing\";s:7:\"nothing\";s:10:\"time_start\";s:3:\"400\";}}}','data/slide_image.jpg',1,0,1),(34,'cabecera',0,23,'a:17:{s:2:\"id\";s:2:\"34\";s:15:\"slider_group_id\";s:2:\"23\";s:12:\"slider_title\";s:8:\"cabecera\";s:18:\"slider_language_id\";s:1:\"3\";s:13:\"slider_status\";s:1:\"1\";s:17:\"slider_transition\";s:6:\"random\";s:11:\"slider_slot\";s:1:\"7\";s:15:\"slider_rotation\";s:1:\"0\";s:15:\"slider_duration\";s:3:\"300\";s:12:\"slider_delay\";s:1:\"0\";s:11:\"slider_link\";s:0:\"\";s:16:\"slider_thumbnail\";s:0:\"\";s:15:\"slider_usevideo\";s:1:\"0\";s:14:\"slider_videoid\";s:0:\"\";s:16:\"slider_videoplay\";s:1:\"0\";s:9:\"slider_id\";s:2:\"34\";s:12:\"slider_image\";s:20:\"data/slide_image.jpg\";}','O:8:\"stdClass\":1:{s:6:\"layers\";a:1:{i:0;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:1;s:13:\"layer_content\";s:27:\"catalog/destacadosFondo.png\";s:10:\"layer_type\";s:5:\"image\";s:11:\"layer_class\";s:0:\"\";s:13:\"layer_caption\";s:17:\"Your Image Here 1\";s:15:\"layer_animation\";s:4:\"fade\";s:12:\"layer_easing\";s:11:\"easeOutExpo\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:1:\"0\";s:10:\"layer_left\";s:1:\"0\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:4:\"auto\";s:15:\"layer_endeasing\";s:7:\"nothing\";s:10:\"time_start\";s:3:\"400\";}}}','data/slide_image.jpg',1,0,3),(35,'cabe',0,23,'a:17:{s:2:\"id\";s:1:\"0\";s:15:\"slider_group_id\";s:2:\"23\";s:12:\"slider_title\";s:4:\"cabe\";s:18:\"slider_language_id\";s:1:\"3\";s:13:\"slider_status\";s:1:\"1\";s:17:\"slider_transition\";s:6:\"random\";s:11:\"slider_slot\";s:1:\"7\";s:15:\"slider_rotation\";s:1:\"0\";s:15:\"slider_duration\";s:3:\"300\";s:12:\"slider_delay\";s:1:\"0\";s:11:\"slider_link\";s:0:\"\";s:16:\"slider_thumbnail\";s:0:\"\";s:15:\"slider_usevideo\";s:1:\"0\";s:14:\"slider_videoid\";s:0:\"\";s:16:\"slider_videoplay\";s:1:\"0\";s:9:\"slider_id\";s:1:\"0\";s:12:\"slider_image\";s:20:\"data/slide_image.jpg\";}','O:8:\"stdClass\":1:{s:6:\"layers\";a:1:{i:0;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:1;s:13:\"layer_content\";s:27:\"catalog/destacadosFondo.png\";s:10:\"layer_type\";s:5:\"image\";s:11:\"layer_class\";s:15:\"very_large_text\";s:13:\"layer_caption\";s:17:\"Your Image Here 1\";s:15:\"layer_animation\";s:3:\"sft\";s:12:\"layer_easing\";s:11:\"easeOutExpo\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:1:\"0\";s:10:\"layer_left\";s:1:\"0\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:4:\"auto\";s:15:\"layer_endeasing\";s:7:\"nothing\";s:10:\"time_start\";s:3:\"400\";}}}','data/slide_image.jpg',1,0,3),(37,'12',0,24,'a:17:{s:2:\"id\";s:2:\"37\";s:15:\"slider_group_id\";s:2:\"24\";s:12:\"slider_title\";s:2:\"12\";s:18:\"slider_language_id\";s:1:\"3\";s:13:\"slider_status\";s:1:\"1\";s:17:\"slider_transition\";s:6:\"random\";s:11:\"slider_slot\";s:1:\"7\";s:15:\"slider_rotation\";s:1:\"0\";s:15:\"slider_duration\";s:3:\"300\";s:12:\"slider_delay\";s:1:\"0\";s:11:\"slider_link\";s:0:\"\";s:16:\"slider_thumbnail\";s:0:\"\";s:15:\"slider_usevideo\";s:1:\"0\";s:14:\"slider_videoid\";s:0:\"\";s:16:\"slider_videoplay\";s:1:\"0\";s:9:\"slider_id\";s:2:\"37\";s:12:\"slider_image\";s:20:\"data/slide_image.jpg\";}','O:8:\"stdClass\":1:{s:6:\"layers\";a:1:{i:0;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:1;s:13:\"layer_content\";s:27:\"catalog/destacadosFondo.png\";s:10:\"layer_type\";s:5:\"image\";s:11:\"layer_class\";s:0:\"\";s:13:\"layer_caption\";s:17:\"Your Image Here 1\";s:15:\"layer_animation\";s:4:\"fade\";s:12:\"layer_easing\";s:11:\"easeOutExpo\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:1:\"0\";s:10:\"layer_left\";s:1:\"0\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:4:\"auto\";s:15:\"layer_endeasing\";s:7:\"nothing\";s:10:\"time_start\";s:3:\"400\";}}}','data/slide_image.jpg',1,0,3);
/*!40000 ALTER TABLE `oc_pavosliderlayers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product`
--

DROP TABLE IF EXISTS `oc_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL,
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL,
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL,
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `viewed` int(5) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=167 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product`
--

LOCK TABLES `oc_product` WRITE;
/*!40000 ALTER TABLE `oc_product` DISABLE KEYS */;
INSERT INTO `oc_product` VALUES (90,'brocoli','','','','','','','',2,0,'sellers/20/2-1.jpg',0,0,2.0000,0,0,'2016-03-08',0.00000000,0,0.00000000,0.00000000,0.00000000,0,1,1,0,1,0,'2016-03-09 15:51:02','2016-03-09 15:51:02'),(155,'Zanahoria Roja','','','','','','','',200,6,'sellers/31/zanahoria roja.png',0,0,2.5000,0,0,'2016-03-28',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,0,1,0,'2016-03-29 02:08:42','2016-03-29 02:11:28'),(156,'Zanahoria','','','','','','','',200,6,'sellers/31/zanahorias.png',0,0,1.5000,0,0,'2016-03-28',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,0,1,0,'2016-03-29 02:10:37','2016-03-31 05:12:56'),(126,'Aceite de Oliva','','','','','','','',200,6,'sellers/32/aceite oliva.png',0,0,3.5000,0,0,'2016-03-27',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,0,1,5,'2016-03-28 10:14:26','2016-03-28 12:07:32'),(127,'Acelgas','','','','','','','',200,6,'sellers/33/acelgas.png',0,0,1.5000,0,0,'2016-03-27',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,0,1,8,'2016-03-28 10:18:34','2016-03-28 12:07:40'),(128,'Ajos','','','','','','','',200,6,'sellers/33/ajos.png',0,0,2.0000,0,0,'2016-03-27',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,0,1,0,'2016-03-28 10:19:23','2016-03-28 12:07:50'),(129,'coliflor','','','','','','','',200,6,'sellers/33/coliflor.png',0,0,1.5000,0,0,'2016-03-27',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,0,1,0,'2016-03-28 10:20:49','2016-03-28 12:08:20'),(130,'Espárragos Verdes','','','','','','','',200,6,'sellers/33/esparragos verdes.png',0,0,2.5000,0,0,'2016-03-27',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,0,1,0,'2016-03-28 10:22:07','2016-03-28 12:09:05'),(131,'Espinacas','','','','','','','',200,6,'sellers/33/espinacas.png',0,0,2.5000,0,0,'2016-03-27',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,0,1,0,'2016-03-28 10:23:21','2016-03-28 12:09:19'),(132,'Judias verdes','','','','','','','',200,6,'sellers/33/judias verdes.png',0,0,2.0000,0,0,'2016-03-27',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,0,1,0,'2016-03-28 10:24:32','2016-03-28 12:10:16'),(133,'Lechuga','','','','','','','',200,6,'sellers/33/lechuga.png',0,0,1.2500,0,0,'2016-03-27',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,0,1,55,'2016-03-28 10:25:27','2016-03-28 12:10:56'),(134,'Cerezas','','','','','','','',200,6,'sellers/34/cerezas.png',0,0,2.5000,0,0,'2016-03-27',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,0,1,4,'2016-03-28 10:29:29','2016-03-28 12:08:04'),(135,'Frambuesas','','','','','','','',200,6,'sellers/34/frambuesas.png',0,0,3.5000,0,0,'2016-03-27',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,0,1,0,'2016-03-28 10:31:12','2016-03-28 12:09:32'),(136,'Fresas','','','','','','','',200,0,'sellers/34/fresas.png',0,0,2.5000,0,0,'2016-03-27',0.00000000,0,0.00000000,0.00000000,0.00000000,0,0,1,0,1,0,'2016-03-28 10:32:12','2016-03-28 10:32:12'),(137,'Manzana verde','','','','','','','',20,6,'sellers/34/manzana verde.png',0,0,2.2500,0,0,'2016-03-27',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,0,1,0,'2016-03-28 10:33:36','2016-03-28 12:04:29'),(138,'Surtido de tomates','','','','','','','',200,6,'sellers/34/surtido tomates.png',0,0,4.0000,0,0,'2016-03-27',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,0,1,2,'2016-03-28 10:34:46','2016-03-28 12:06:03'),(139,'Tomate cherry','','','','','','','',200,6,'sellers/34/tomates cherry.png',0,0,3.5000,0,0,'2016-03-27',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,0,1,0,'2016-03-28 10:35:42','2016-03-28 12:06:13'),(140,'Tomates','','','','','','','',200,6,'sellers/34/tomates.png',0,0,3.2500,0,0,'2016-03-27',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,0,1,0,'2016-03-28 10:36:47','2016-03-28 12:06:32'),(141,'Chuletón de Buey','','','','','','','',100,0,'sellers/35/chuleton buey.png',0,0,28.0000,0,0,'2016-03-27',0.00000000,0,0.00000000,0.00000000,0.00000000,0,0,1,0,1,3,'2016-03-28 10:39:56','2016-03-28 10:39:56'),(142,'Queso Parmigiano','','','','','','','',200,6,'sellers/36/queso parmigiano.png',0,0,4.5000,0,0,'2016-03-27',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,0,1,2,'2016-03-28 10:43:10','2016-03-28 12:04:56'),(143,'Spaguetti Fresco','','','','','','','',200,6,'sellers/36/spaghetti 2.png',0,0,3.0000,0,0,'2016-03-27',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,0,1,0,'2016-03-28 10:44:36','2016-03-28 12:05:15'),(144,'Spaguetti Verduras','','','','','','','',200,6,'sellers/36/spaghetti.png',0,0,3.7500,0,0,'2016-03-27',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,0,1,0,'2016-03-28 10:45:32','2016-03-28 12:05:28'),(145,'Suertido de Quesos','','','','','','','',200,6,'sellers/36/surtido quesos.png',0,0,8.5000,0,0,'2016-03-27',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,0,1,0,'2016-03-28 10:47:30','2016-03-28 12:05:48'),(146,'Jamón Iberico','','','','','','','',100,0,'sellers/37/jamon iberico.png',0,0,38.0000,0,0,'2016-03-27',0.00000000,0,0.00000000,0.00000000,0.00000000,0,0,1,0,1,0,'2016-03-28 10:53:12','2016-03-28 10:53:12'),(147,'Vino rosado','','','','','','','',200,6,'sellers/38/vino rosado.png',0,0,4.0000,0,0,'2016-03-27',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,0,1,0,'2016-03-28 10:56:03','2016-03-28 12:06:53'),(148,'Steam','','','','','','','',200,6,'sellers/39/cerveza anchor steam.png',0,0,3.5000,0,0,'2016-03-27',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,0,1,0,'2016-03-28 10:59:04','2016-03-28 12:05:40'),(149,'La Cibeles','','','','','','','',200,6,'sellers/40/cerveza cibeles.png',0,0,2.5000,0,0,'2016-03-27',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,0,1,0,'2016-03-28 11:02:33','2016-03-28 12:10:33'),(150,'Einstöck Icelandic White Ale','','','','','','','',200,6,'sellers/41/cerveza einstok.png',0,0,3.0000,0,0,'2016-03-27',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,0,1,0,'2016-03-28 11:07:17','2016-03-28 12:08:52'),(151,'Hop Rising','','','','','','','',200,6,'sellers/42/cerveza hop rising.png',0,0,4.5000,0,0,'2016-03-27',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,0,1,0,'2016-03-28 11:51:38','2016-03-28 12:09:53'),(152,'La Virgen','','','','','','','',200,6,'sellers/43/cerveza la virgen-1.png',0,0,3.5000,0,0,'2016-03-27',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,0,1,0,'2016-03-28 11:55:58','2016-03-28 12:10:42'),(153,'Vino tinto','','','','','','','',200,6,'sellers/44/vino tinto.png',0,0,5.5000,0,0,'2016-03-27',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,0,1,0,'2016-03-28 11:58:51','2016-03-28 12:07:06'),(154,'Vino Arboleda','','','','','','','',200,6,'sellers/45/vino arboleda.png',0,0,5.0000,0,0,'2016-03-27',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,0,1,0,'2016-03-28 12:01:32','2016-03-28 12:06:46'),(157,'Chuletón de ternera','','','','','','','',200,0,'sellers/31/chuleton buey-1.png',0,0,18.5000,0,0,'2016-03-28',0.00000000,0,0.00000000,0.00000000,0.00000000,0,0,1,0,1,0,'2016-03-29 23:58:39','2016-03-29 23:58:39'),(158,'tomate','','','','','','','',433,0,'sellers/24/fresas.png',0,0,4344.0000,0,0,'2016-03-29',0.00000000,0,0.00000000,0.00000000,0.00000000,0,0,1,0,0,0,'2016-03-30 12:36:52','2016-03-30 12:36:52'),(159,'sdsgsdfgdf','','','','','','','',2341234,0,'sellers/24/judias verdes.png',0,0,23444.0000,0,0,'2016-03-29',0.00000000,0,0.00000000,0.00000000,0.00000000,0,0,1,0,0,0,'2016-03-30 12:37:20','2016-03-30 12:37:20'),(160,'Fresas','','','','','','','',200,6,'sellers/31/fresas.png',0,0,1.2000,0,0,'2016-03-29',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,0,1,0,'2016-03-30 12:40:27','2016-03-31 05:12:39'),(161,'patatas','','','','','','','',455,0,'sellers/24/frambuesas.png',0,0,20.0000,0,0,'2016-03-29',0.00000000,0,0.00000000,0.00000000,0.00000000,0,0,1,0,0,0,'2016-03-30 17:19:31','2016-03-30 17:19:31'),(162,'rgrtgrtg','','','','','','','',5,6,'sellers/57/fresas.png',0,0,5.0000,0,0,'2016-03-30',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,0,1,0,'2016-03-31 10:13:22','2016-03-31 10:16:07'),(163,'parar','','','','','','','',22,0,'sellers/24/patatas.png',0,0,2.0000,0,0,'2016-03-30',0.00000000,0,0.00000000,0.00000000,0.00000000,0,1,1,0,0,0,'2016-03-31 11:22:04','2016-03-31 11:22:04'),(164,'cerrrrrr','','','','','','','',20,0,'sellers/24/patatas 2.png',0,0,20.0000,0,0,'2016-03-30',0.00000000,0,0.00000000,0.00000000,0.00000000,0,1,1,0,0,0,'2016-03-31 11:27:28','2016-03-31 11:27:28'),(165,'Patatas','','','','','','','',200,0,'sellers/56/patatas.png',0,0,1.2000,0,0,'2016-03-30',0.00000000,0,0.00000000,0.00000000,0.00000000,0,1,1,0,0,0,'2016-03-31 11:33:48','2016-03-31 11:33:48'),(166,'rrthrtbrtb','','','','','','','',4,6,'sellers/24/naranjas.png',0,0,3.0000,0,0,'2016-03-30',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,0,0,0,'2016-03-31 12:41:20','2016-03-31 12:47:08');
/*!40000 ALTER TABLE `oc_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_attribute`
--

DROP TABLE IF EXISTS `oc_product_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`product_id`,`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_attribute`
--

LOCK TABLES `oc_product_attribute` WRITE;
/*!40000 ALTER TABLE `oc_product_attribute` DISABLE KEYS */;
INSERT INTO `oc_product_attribute` VALUES (90,30,1,'Todo el año'),(90,29,1,'Ud'),(154,30,1,'Todo el año'),(147,30,1,'Todo el año'),(153,30,1,'Todo el año'),(128,30,1,'Todo el año'),(134,30,1,'Invierno'),(90,30,3,'Todo el año'),(90,29,3,'Ud'),(156,29,1,'kg'),(156,29,3,'kg'),(148,30,1,'Todo el año'),(145,30,1,'Todo el año'),(138,30,1,'Verano'),(139,30,1,'Verano'),(140,30,1,'Verano'),(132,30,1,'Primavera'),(142,30,1,'Todo el año'),(155,29,3,'kg'),(155,29,1,'kg'),(155,30,3,'Otoño'),(155,30,1,'Otoño'),(127,30,1,'Invierno'),(126,30,1,'Todo el año'),(144,30,1,'Todo el año'),(137,30,1,'Verano'),(143,30,1,'Todo el año'),(135,30,1,'Verano'),(133,30,1,'Verano'),(152,30,1,'Todo el año'),(151,30,1,'Todo el año'),(129,30,1,'Invierno'),(131,30,1,'Invierno'),(150,30,1,'Todo el año'),(126,30,3,'Todo el año'),(126,29,1,'L'),(126,29,3,'L'),(127,30,3,'Invierno'),(127,29,1,'kg'),(127,29,3,'kg'),(128,30,3,'Todo el año'),(128,29,1,'kg'),(128,29,3,'kg'),(129,30,3,'Invierno'),(129,29,1,'Ud'),(129,29,3,'Ud'),(130,30,1,'Verano'),(130,30,3,'Verano'),(130,29,1,'Pack'),(130,29,3,'Pack'),(131,30,3,'Invierno'),(131,29,1,'kg'),(131,29,3,'kg'),(132,30,3,'Primavera'),(132,29,1,'kg'),(132,29,3,'kg'),(133,30,3,'Verano'),(133,29,1,'Ud'),(133,29,3,'Ud'),(134,30,3,'Invierno'),(134,29,1,'kg'),(134,29,3,'kg'),(135,30,3,'Verano'),(135,29,1,'kg'),(135,29,3,'kg'),(136,29,1,'kg'),(136,29,3,'kg'),(136,30,1,'Invierno'),(136,30,3,'Invierno'),(137,30,3,'Verano'),(137,29,1,'kg'),(137,29,3,'kg'),(138,30,3,'Verano'),(138,29,1,'kg'),(138,29,3,'kg'),(139,30,3,'Verano'),(139,29,1,'kg'),(139,29,3,'kg'),(140,30,3,'Verano'),(140,29,1,'kg'),(140,29,3,'kg'),(141,29,1,'kg'),(141,29,3,'kg'),(141,30,1,'Todo el año'),(141,30,3,'Todo el año'),(142,30,3,'Todo el año'),(142,29,1,'Ud'),(142,29,3,'Ud'),(143,30,3,'Todo el año'),(143,29,1,'Ud'),(143,29,3,'Ud'),(144,30,3,'Todo el año'),(144,29,1,'Ud'),(144,29,3,'Ud'),(145,30,3,'Todo el año'),(145,29,1,'Pack'),(145,29,3,'Pack'),(146,29,1,'kg'),(146,29,3,'kg'),(146,30,1,'Todo el año'),(146,30,3,'Todo el año'),(147,30,3,'Todo el año'),(147,29,1,'Ud'),(147,29,3,'Ud'),(148,30,3,'Todo el año'),(148,29,1,'Ud'),(148,29,3,'Ud'),(149,30,3,'Todo el año'),(149,30,1,'Todo el año'),(149,29,1,'Ud'),(149,29,3,'Ud'),(150,30,3,'Todo el año'),(150,29,1,'Ud'),(150,29,3,'Ud'),(151,30,3,'Todo el año'),(151,29,1,'Ud'),(151,29,3,'Ud'),(152,30,3,'Todo el año'),(152,29,1,'Ud'),(152,29,3,'Ud'),(153,30,3,'Todo el año'),(153,29,1,'Ud'),(153,29,3,'Ud'),(154,30,3,'Todo el año'),(154,29,1,'Ud'),(154,29,3,'Ud'),(157,29,1,'kg'),(157,29,3,'kg'),(157,30,1,'Todo el año'),(157,30,3,'Todo el año'),(158,29,1,'Pack'),(158,29,3,'Pack'),(158,30,1,'Otoño'),(158,30,3,'Otoño'),(159,29,1,'Pack'),(159,29,3,'Pack'),(159,30,1,'Primavera'),(159,30,3,'Primavera'),(160,30,3,'Invierno'),(160,29,1,'kg'),(160,29,3,'kg'),(161,29,1,'Ud'),(161,29,3,'Ud'),(161,30,1,'Otoño'),(161,30,3,'Otoño'),(160,30,1,'Invierno'),(156,30,3,'Otoño'),(156,30,1,'Otoño'),(162,29,1,'kg'),(162,29,3,'kg'),(163,29,1,'Pack'),(163,29,3,'Pack'),(164,29,1,'Pack'),(164,29,3,'Pack'),(165,29,1,'kg'),(165,29,3,'kg'),(165,30,1,'Todo el año'),(165,30,3,'Todo el año'),(166,30,3,'Invierno'),(166,29,1,'L'),(166,29,3,'L'),(166,30,1,'Invierno');
/*!40000 ALTER TABLE `oc_product_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_description`
--

DROP TABLE IF EXISTS `oc_product_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`product_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_description`
--

LOCK TABLES `oc_product_description` WRITE;
/*!40000 ALTER TABLE `oc_product_description` DISABLE KEYS */;
INSERT INTO `oc_product_description` VALUES (155,3,'Zanahoria Roja','Variedad de Zanahoria Gourmet, especial para ensaladas, aperitivos y alta cocina. .','zanahoria,gourmet,huerta','Zanahoria Roja','',''),(155,1,'Zanahoria Roja','Variedad de Zanahoria Gourmet, especial para ensaladas, aperitivos y alta cocina. .','zanahoria,gourmet,huerta','Zanahoria Roja','',''),(156,3,'Zanahoria','Zanahoria de calidad suprema cultivada de forma ecológica','zanahoria,ecologica','Zanahoria','',''),(156,1,'Zanahoria','Zanahoria de calidad suprema cultivada de forma ecológica','zanahoria,ecologica','Zanahoria','',''),(126,3,'Aceite de Oliva','Aceite de oliva virgen extra con un peculiar aroma, sabor y  baja acidez gracias a un cultivo controlado, un proceso de selección excepcional y una elaboración natural. La variedad Arbequina proporciona un sabor muy equilibrado y con todas las características organolépticas intactas. Su uso en dietas Mediterráneas lo convierten en un imprescindible en las recetas del día a día.','oliva,aceite','Aceite de Oliva','',''),(126,1,'Aceite de Oliva','Aceite de oliva virgen extra con un peculiar aroma, sabor y  baja acidez gracias a un cultivo controlado, un proceso de selección excepcional y una elaboración natural. La variedad Arbequina proporciona un sabor muy equilibrado y con todas las características organolépticas intactas. Su uso en dietas Mediterráneas lo convierten en un imprescindible en las recetas del día a día.','oliva,aceite','Aceite de Oliva','',''),(127,3,'Acelgas','Intenso color verde, grandes hojas comestibles y  nervio central muy desarrollado. La acelga es riquísima en vitaminas, A, C, B2 y en minerales como el hierro, el potasio, sodio, fósforo y calcio. Además se destaca por su sencilla y rápida digestión.&lt;br&gt;\r\n','Acelga,verdura','Acelgas','',''),(127,1,'Acelgas','Intenso color verde, grandes hojas comestibles y  nervio central muy desarrollado. La acelga es riquísima en vitaminas, A, C, B2 y en minerales como el hierro, el potasio, sodio, fósforo y calcio. Además se destaca por su sencilla y rápida digestión.&amp;lt;br /&amp;gt;&lt;br&gt;\r\n','Acelga,verdura','Acelgas','',''),(128,3,'Ajos','Producto con numerosas propiedades terapéuticas como: diurético, vasodilatador, bactericida. Utilizado también como uso tópico para dermatomicosis.&lt;br&gt;\r\n','Ajo,verduras','Ajos','',''),(128,1,'Ajos','Producto con numerosas propiedades terapéuticas como: diurético, vasodilatador, bactericida. Utilizado también como uso tópico para dermatomicosis.&amp;lt;br /&amp;gt;&lt;br&gt;\r\n','Ajo,verduras','Ajos','',''),(129,3,'coliflor','La coliflor es adecuada en dietas de adelgazamiento, ya que es un alimento bajo en calorías y rico en fibra. Aporta niveles importantes de vitaminas y minerales, por lo que resulta beneficiosa en enfermedades circulatorias y cardiacas&lt;br&gt;\r\n','coliflor,verdura,hortaliza','coliflor','',''),(129,1,'coliflor','La coliflor es adecuada en dietas de adelgazamiento, ya que es un alimento bajo en calorías y rico en fibra. Aporta niveles importantes de vitaminas y minerales, por lo que resulta beneficiosa en enfermedades circulatorias y cardiacas&amp;lt;br /&amp;gt;&lt;br&gt;\r\n','coliflor,verdura,hortaliza','coliflor','',''),(130,3,'Espárragos Verdes','El espárrago contiene fibra, vitamina C, vitamina B1, vitamina B6, es bajo en grasa, no contiene colesterol y es muy bajo en calorías.&lt;br&gt;\r\n','esparrago,hortaliza','Espárragos Verdes','',''),(130,1,'Espárragos Verdes','El espárrago contiene fibra, vitamina C, vitamina B1, vitamina B6, es bajo en grasa, no contiene colesterol y es muy bajo en calorías.&amp;lt;br /&amp;gt;&lt;br&gt;\r\n','esparrago,hortaliza','Espárragos Verdes','',''),(131,3,'Espinacas','Caracterizadas por su enorme aporte energético, son ricas en vitaminas y minerales que sobrepasa a la de la mayoría de las verduras. Están compuestas casi en su totalidad por agua. Tienen un color verde oscuro y conservan sus propiedades incluso congeladas.','Espinaca,Verdura','Espinacas','',''),(131,1,'Espinacas','Caracterizadas por su enorme aporte energético, son ricas en vitaminas y minerales que sobrepasa a la de la mayoría de las verduras. Están compuestas casi en su totalidad por agua. Tienen un color verde oscuro y conservan sus propiedades incluso congeladas.','Espinaca,Verdura','Espinacas','',''),(132,3,'Judias verdes','Las judías verdes son un alimento con un bajo aporte calórico. Presentan menos de 30 calorías por cada 100 gramos. Este contenido calórico se debe a la presencia de hidratos de carbono, como el almidón, que se encuentran concentrado en sus semillas, así como a la presencia de una pequeña cantidad de proteínas.&lt;br&gt;\r\n','Judia,Verde,horaliza','Judias verdes','',''),(132,1,'Judias verdes','Las judías verdes son un alimento con un bajo aporte calórico. Presentan menos de 30 calorías por cada 100 gramos. Este contenido calórico se debe a la presencia de hidratos de carbono, como el almidón, que se encuentran concentrado en sus semillas, así como a la presencia de una pequeña cantidad de proteínas.&amp;lt;br /&amp;gt;&lt;br&gt;\r\n','Judia,Verde,horaliza','Judias verdes','',''),(133,3,'Lechuga','De cogollo redondo, hojas finas y textura más bien mantecosa, tiene un sabor delicado e intenso.&lt;br&gt;\r\n','Lechuga,hortaliza','Lechuga','',''),(133,1,'Lechuga','De cogollo redondo, hojas finas y textura más bien mantecosa, tiene un sabor delicado e intenso.&amp;lt;br /&amp;gt;&lt;br&gt;\r\n','Lechuga,hortaliza','Lechuga','',''),(134,3,'Cerezas','Fruta rica en hidratos de carbono, cantidades significativas de fibra que mejora el tránsito intestinal. Contiene vitaminas A y C. Es una fruta de gran aceptación, muy atractiva para los más pequeños de la casa. Las cerezas tienen un elevado contenido en antocianos y ácido elágico, de acción antioxidante y antiséptica; para combatir infecciones. ','Cereza,fruta','Cerezas','',''),(134,1,'Cerezas','Fruta rica en hidratos de carbono, cantidades significativas de fibra que mejora el tránsito intestinal. Contiene vitaminas A y C. Es una fruta de gran aceptación, muy atractiva para los más pequeños de la casa. Las cerezas tienen un elevado contenido en antocianos y ácido elágico, de acción antioxidante y antiséptica; para combatir infecciones. ','Cereza,fruta','Cerezas','',''),(135,3,'Frambuesas','Es una fruta que aporta una cantidad destacable de fibra, que mejora el tránsito intestinal. Constituye una buena fuente de vitamina C, ácido cítrico y ácido elágico, flavonoides y folatos, minerales como el potasio, el magnesio y el calcio, este último de peor aprovechamiento que el que procede de los lácteos u otros alimentos que son buena fuente de dicho mineral. La vitamina C tiene acción antioxidante, al igual que el ácido elágico y los flavonoides (pigmentos vegetales). Dicha vitamina interviene en la formación de colágeno, huesos y dientes, glóbulos rojos y favorece la absorción del hierro de los alimentos y la resistencia a las infecciones. El ácido cítrico, posee una acción desinfectante y potencia la acción de la vitamina C. El ácido fólico interviene en la producción de glóbulos rojos y blancos, en la síntesis de material genético y formación de anticuerpos del sistema inmunológico. El potasio es necesario para la transmisión y generación del impulso nervioso, para la actividad muscular normal e interviene en el equilibrio de agua dentro y fuera de la célula. El magnesio se relaciona con el funcionamiento de intestino, nervios y músculos, forma parte de huesos y dientes, mejora la inmunidad y posee un suave efecto laxante.&lt;br&gt;\r\n','Frambuesa,fruta','Frambuesas','',''),(135,1,'Frambuesas','Es una fruta que aporta una cantidad destacable de fibra, que mejora el tránsito intestinal. Constituye una buena fuente de vitamina C, ácido cítrico y ácido elágico, flavonoides y folatos, minerales como el potasio, el magnesio y el calcio, este último de peor aprovechamiento que el que procede de los lácteos u otros alimentos que son buena fuente de dicho mineral. La vitamina C tiene acción antioxidante, al igual que el ácido elágico y los flavonoides (pigmentos vegetales). Dicha vitamina interviene en la formación de colágeno, huesos y dientes, glóbulos rojos y favorece la absorción del hierro de los alimentos y la resistencia a las infecciones. El ácido cítrico, posee una acción desinfectante y potencia la acción de la vitamina C. El ácido fólico interviene en la producción de glóbulos rojos y blancos, en la síntesis de material genético y formación de anticuerpos del sistema inmunológico. El potasio es necesario para la transmisión y generación del impulso nervioso, para la actividad muscular normal e interviene en el equilibrio de agua dentro y fuera de la célula. El magnesio se relaciona con el funcionamiento de intestino, nervios y músculos, forma parte de huesos y dientes, mejora la inmunidad y posee un suave efecto laxante.&amp;lt;br /&amp;gt;&lt;br&gt;\r\n','Frambuesa,fruta','Frambuesas','',''),(136,3,'Fresas','Debido a su particular composición, estas frutas poseen un efecto diurético beneficioso en caso de hiperuricemia o gota y litiasis renal (favorece la eliminación de ácido úrico y sus sales), hipertensión arterial u otras enfermedades asociadas a retención de líquidos. Sin embargo, en caso de litiasis renal por cálculos de oxalato, dado su contenido de ácido oxálico, están desaconsejadas.&lt;br /&gt;\r\n','fresa,fruta','Fresas','',''),(136,1,'Fresas','Debido a su particular composición, estas frutas poseen un efecto diurético beneficioso en caso de hiperuricemia o gota y litiasis renal (favorece la eliminación de ácido úrico y sus sales), hipertensión arterial u otras enfermedades asociadas a retención de líquidos. Sin embargo, en caso de litiasis renal por cálculos de oxalato, dado su contenido de ácido oxálico, están desaconsejadas.&amp;lt;br /&amp;gt;&lt;br /&gt;\r\n','fresa,fruta','Fresas','',''),(137,3,'Manzana verde','Esta tentadora fruta se valora por su sabor ácido con un toque crujiente, todo ello acompañado de su poderoso aroma que tiene poderes relajantes.','manzana,fruta','Manzana verde','',''),(137,1,'Manzana verde','Esta tentadora fruta se valora por su sabor ácido con un toque crujiente, todo ello acompañado de su poderoso aroma que tiene poderes relajantes.','manzana,fruta','Manzana verde','',''),(138,3,'Surtido de tomates','Variedades de tomates de cuatro categorías: Gourmet, ensaladas, aperitivos y alta cocina. En las nuevas bandejas de cartón encontrará ideas de recetas para cada categoría.','Tomate,huerta','Surtido de tomates','',''),(138,1,'Surtido de tomates','Variedades de tomates de cuatro categorías: Gourmet, ensaladas, aperitivos y alta cocina. En las nuevas bandejas de cartón encontrará ideas de recetas para cada categoría.','Tomate,huerta','Surtido de tomates','',''),(139,3,'Tomate cherry','Los tomates cherry (Lycopersicon esculentum) son llamados de este modo por su semejanza de color, tamaño, y sabor dulce, con la cereza. Pueden consumirse todo el año. Aunque se consume generalmente crudo, puede también ingerirse cocido.','tomate,hortaliza','Tomate cherry','',''),(139,1,'Tomate cherry','Los tomates cherry (Lycopersicon esculentum) son llamados de este modo por su semejanza de color, tamaño, y sabor dulce, con la cereza. Pueden consumirse todo el año. Aunque se consume generalmente crudo, puede también ingerirse cocido.','tomate,hortaliza','Tomate cherry','',''),(140,3,'Tomates','El sabor del tomate es entre dulce y ácido, una particularidad dada por la presencia de ácidos orgánicos y de azúcares simples. Es importante destacar que se puede consumir de múltiples formas.&lt;br&gt;\r\nLa forma más sencilla de consumir tomate es crudo en ensaladas: con solo lavar y condimentar el fruto, ya se puede ingerir.','tomate,hortaliza','Tomates','',''),(140,1,'Tomates','El sabor del tomate es entre dulce y ácido, una particularidad dada por la presencia de ácidos orgánicos y de azúcares simples. Es importante destacar que se puede consumir de múltiples formas.&amp;lt;br /&amp;gt;&lt;br&gt;\r\nLa forma más sencilla de consumir tomate es crudo en ensaladas: con solo lavar y condimentar el fruto, ya se puede ingerir.','tomate,hortaliza','Tomates','',''),(141,3,'Chuletón de Buey','Chuletón de buey auténtico. Carne infiltrada por la grasa que hará las delicias de los amantes de la carne más sabrosa del mundo: La del buey auténtico. ','buey,carne','Chuletón de Buey','',''),(141,1,'Chuletón de Buey','Chuletón de buey auténtico. Carne infiltrada por la grasa que hará las delicias de los amantes de la carne más sabrosa del mundo: La del buey auténtico. ','buey,carne','Chuletón de Buey','',''),(142,3,'Queso Parmigiano','Sólo se produce con leche de vacas de razas autóctonas de raza frisona y alimentadas con los pastos y cereales producidos en la zona, por lo que se puede decir que existe una gran vinculación entre productores y quesos. ','Queso,despensa','Queso Parmigiano','',''),(142,1,'Queso Parmigiano','Sólo se produce con leche de vacas de razas autóctonas de raza frisona y alimentadas con los pastos y cereales producidos en la zona, por lo que se puede decir que existe una gran vinculación entre productores y quesos. ','Queso,despensa','Queso Parmigiano','',''),(143,3,'Spaguetti Fresco','Pasta larga con adición de Omega 3, 6 y 9 que ayuda a disminuir los niveles de colesterol y triglicéridos. &lt;br&gt;\r\n','spaguetti,pasta,fresco','Spaguetti Fresco','',''),(143,1,'Spaguetti Fresco','Pasta larga con adición de Omega 3, 6 y 9 que ayuda a disminuir los niveles de colesterol y triglicéridos. &amp;lt;br /&amp;gt;&lt;br&gt;\r\n','spaguetti,pasta,fresco','Spaguetti Fresco','',''),(144,3,'Spaguetti Verduras','Pasta larga elaborada con sémola de trigos importados, extractos naturales de tomate y espinaca, enriquecidos con Antioxidantes; una mezcla de vitamina A, C y E, Selenio y Zinc, que protegen el cuerpo contra efectos de sustancias oxidantes&lt;br&gt;\r\n','pasta,verdura,fresca','Spaguetti Verduras','',''),(144,1,'Spaguetti Verduras','Pasta larga elaborada con sémola de trigos importados, extractos naturales de tomate y espinaca, enriquecidos con Antioxidantes; una mezcla de vitamina A, C y E, Selenio y Zinc, que protegen el cuerpo contra efectos de sustancias oxidantes&amp;lt;br /&amp;gt;&lt;br&gt;\r\n','pasta,verdura,fresca','Spaguetti Verduras','',''),(145,3,'Suertido de Quesos','Surtido de 3 cuñas de quesos leche cabra. &lt;br&gt;\r\nSobre una bandeja de cartón oro y envasadas al vacío en plástico protector presentamos esta tres cuñitas de queso de leche de cabra. Envasadas al vacío en plástico protector, con un peso neto de aprox. 400 g.&lt;br&gt;\r\n','queso','Suertido de Quesos','',''),(145,1,'Suertido de Quesos','Surtido de 3 cuñas de quesos leche cabra. &amp;lt;br /&amp;gt;&lt;br&gt;\r\nSobre una bandeja de cartón oro y envasadas al vacío en plástico protector presentamos esta tres cuñitas de queso de leche de cabra. Envasadas al vacío en plástico protector, con un peso neto de aprox. 400 g.&amp;lt;br /&amp;gt;&lt;br&gt;\r\n','queso','Suertido de Quesos','',''),(146,3,'Jamón Iberico','El jamón ibérico posee unas características peculiares que lo hacen irresistible al paladar pero, además, su consumo beneficia al corazón, ya que su perfil de grasas protege contra enfermedades cardiovasculares&lt;br /&gt;\r\n','jamon,bellota,iberico','Jamón Iberico','',''),(146,1,'Jamón Iberico','El jamón ibérico posee unas características peculiares que lo hacen irresistible al paladar pero, además, su consumo beneficia al corazón, ya que su perfil de grasas protege contra enfermedades cardiovasculares&amp;lt;br /&amp;gt;&lt;br /&gt;\r\n','jamon,bellota,iberico','Jamón Iberico','',''),(147,3,'Vino rosado','Entre los sabores que se pueden distinguir están el de bananas, limón, mandarina, granada, sandía o melón. Además de eso se pueden percibir toques más sutiles como el de moras, cerezas, fresas o arándanos.&lt;br&gt;\r\n','Vino,rosado','Vino rosado','',''),(147,1,'Vino rosado','Entre los sabores que se pueden distinguir están el de bananas, limón, mandarina, granada, sandía o melón. Además de eso se pueden percibir toques más sutiles como el de moras, cerezas, fresas o arándanos.&amp;lt;br /&amp;gt;&lt;br&gt;\r\n','Vino,rosado','Vino rosado','',''),(148,3,'Steam','La más famosa de San Francisco, Cerveza Anchor Steam, el clásico de la tradición cervecera de América desde 1896, es totalmente artesanal, con un respeto excepcional al arte antiguo de la elaboración de la cerveza. El color ámbar profundo, la cabeza de espuma espesa y cremosa, y su sabor excepcional, son testimonio de nuestros métodos de elaboración tradicionales. Anchor Steam es única, nuestro proceso de elaboración de la cerveza ha evolucionado a lo largo de muchas décadas y es como ninguna otra en el mundo.&lt;br&gt;\r\nCerveza Anchor Steam su nombre deriva un poco desde el siglo 19 cuando &quot;vapor&quot; parece haber sido un apodo para la cerveza fabricada en la costa oeste de América, en condiciones muy precarias y sin hielo. Los métodos de elaboración de esos días son un misterio y, aunque hay muchas teorías, nadie puede decir con certeza por qué la palabra &quot;vapor&quot; llegaron a estar asociados con la cerveza. Durante muchas décadas Anchor solo ha utilizado este nombre pintoresco por su única cerveza. En los tiempos modernos, &quot;Steam&quot; se ha convertido en una marca registrada de Anchor Brewing.&lt;br&gt;\r\n','Cerveza,artesanal','Steam','',''),(148,1,'Steam','La más famosa de San Francisco, Cerveza Anchor Steam, el clásico de la tradición cervecera de América desde 1896, es totalmente artesanal, con un respeto excepcional al arte antiguo de la elaboración de la cerveza. El color ámbar profundo, la cabeza de espuma espesa y cremosa, y su sabor excepcional, son testimonio de nuestros métodos de elaboración tradicionales. Anchor Steam es única, nuestro proceso de elaboración de la cerveza ha evolucionado a lo largo de muchas décadas y es como ninguna otra en el mundo.&amp;lt;br /&amp;gt;&lt;br&gt;\r\nCerveza Anchor Steam su nombre deriva un poco desde el siglo 19 cuando &amp;amp;quot;vapor&amp;amp;quot; parece haber sido un apodo para la cerveza fabricada en la costa oeste de América, en condiciones muy precarias y sin hielo. Los métodos de elaboración de esos días son un misterio y, aunque hay muchas teorías, nadie puede decir con certeza por qué la palabra &amp;amp;quot;vapor&amp;amp;quot; llegaron a estar asociados con la cerveza. Durante muchas décadas Anchor solo ha utilizado este nombre pintoresco por su única cerveza. En los tiempos modernos, &amp;amp;quot;Steam&amp;amp;quot; se ha convertido en una marca registrada de Anchor Brewing.&amp;lt;br /&amp;gt;&lt;br&gt;\r\n','Cerveza,artesanal','Steam','',''),(149,1,'La Cibeles','La Cibeles no es solo elaborar cerveza. Desarrollamos diferentes actividades alrededor del mundo de la cerveza artesana; cursos, catas, visitas a la fábrica, reuniones de empresa.&amp;lt;br /&amp;gt;&lt;br&gt;\r\n','cerveza,artesanal','La Cibeles','',''),(149,3,'La Cibeles','La reina de las cervezas de la casa. Se trata de una cerveza Pale Ale muy ligera y refrescante con cierto aroma a lúpulos florales un ligero retrogusto a cítricos. Se elabora con diferentes variedades de lúpulos tanto nacionales como americanos, predominando el lúpulo de león y el tipo &quot;cascade&quot;.&lt;br&gt;\r\nColor: Dorado Pálido&lt;br&gt;\r\nGrado alcohólico: 4,5&lt;br&gt;\r\nFormato: 33cl&lt;br&gt;\r\n','cerveza,artesanal','La Cibeles','',''),(150,3,'Einstöck Icelandic White Ale','Elaborada según la centenaria tradición belga, esta Ale Blanca cuenta con los sabores complejos de la witbier clásico, incluyendo la piel de naranja y cilantro – todo preparado con agua pura de Islandia que ofrece una suavidad fresco que es sabrosa y refrescante y apetecible. Cuenta con 5,2% de alcohol.&lt;br&gt;\r\n','cerveza,artesana','Einstöck Icelandic White Ale','',''),(150,1,'Einstöck Icelandic White Ale','Elaborada según la centenaria tradición belga, esta Ale Blanca cuenta con los sabores complejos de la witbier clásico, incluyendo la piel de naranja y cilantro – todo preparado con agua pura de Islandia que ofrece una suavidad fresco que es sabrosa y refrescante y apetecible. Cuenta con 5,2% de alcohol.&amp;lt;br /&amp;gt;&lt;br&gt;\r\n','cerveza,artesana','Einstöck Icelandic White Ale','',''),(151,3,'Hop Rising','Atrévanse a probar esta India Brown Ale que les aseguramos, quedaran atrapados con sus sabores tostados y con un golpe de lúpulo.','cerveza,artesana','Hop Rising','',''),(151,1,'Hop Rising','Atrévanse a probar esta India Brown Ale que les aseguramos, quedaran atrapados con sus sabores tostados y con un golpe de lúpulo.','cerveza,artesana','Hop Rising','',''),(152,3,'La Virgen','Nuestra cerveza de baja fermentación.&lt;br&gt;\r\n&lt;br&gt;\r\nDe color dorado y espuma blanca, con sabor a lúpulo y pura malta de cebada. Muy refrescante. Fermentada a baja temperatura y madurada 45 días a 0ºC.&lt;br&gt;\r\nEs la caña, la caña perfecta.&lt;br&gt;\r\n','cerveza,artesanal','La Virgen','',''),(152,1,'La Virgen','Nuestra cerveza de baja fermentación.&amp;lt;br /&amp;gt;&lt;br&gt;\r\n&amp;lt;br /&amp;gt;&lt;br&gt;\r\nDe color dorado y espuma blanca, con sabor a lúpulo y pura malta de cebada. Muy refrescante. Fermentada a baja temperatura y madurada 45 días a 0ºC.&amp;lt;br /&amp;gt;&lt;br&gt;\r\nEs la caña, la caña perfecta.&amp;lt;br /&amp;gt;&lt;br&gt;\r\n','cerveza,artesanal','La Virgen','',''),(153,3,'Vino tinto','Vino de colores muy intensos rojo oscuro, rubí, con notas violáceas que viran al ladrillo con el tiempo.&lt;br&gt;\r\nDestaca la esencia de grosella, cerezas y ciruelas, tal vez aromas a tabaco o chocolate.&lt;br&gt;\r\nPresenta sabores a pino, cedro, grafito, chocolate negro y aceitunas negras. &lt;br&gt;\r\n','vino,tinto,uva','Vino tinto','',''),(153,1,'Vino tinto','Vino de colores muy intensos rojo oscuro, rubí, con notas violáceas que viran al ladrillo con el tiempo.&amp;lt;br /&amp;gt;&lt;br&gt;\r\nDestaca la esencia de grosella, cerezas y ciruelas, tal vez aromas a tabaco o chocolate.&amp;lt;br /&amp;gt;&lt;br&gt;\r\nPresenta sabores a pino, cedro, grafito, chocolate negro y aceitunas negras. &amp;lt;br /&amp;gt;&lt;br&gt;\r\n','vino,tinto,uva','Vino tinto','',''),(154,3,'Vino Arboleda','De un intenso color rojo con ribetes violáceos. En nariz es especiado, goloso y agradable, se destacan notas a frutos negros, nuez moscada, pimiento rojo grillado, humo y café. En boca los sabores a frutos negros se entrelazan con exquisitas especias dulces, tabaco y chocolate negro, notas que aparecen como resultado de su envejecimiento en barricas de roble. Es un vino, balanceado, vibrante, jugoso y de taninos suaves, que invita a disfrutarlo hoy o en algunos años más, pues posee un potencial de guarda que promete.','tinto,vino,viñedo,uva','Vino Arboleda','',''),(154,1,'Vino Arboleda','De un intenso color rojo con ribetes violáceos. En nariz es especiado, goloso y agradable, se destacan notas a frutos negros, nuez moscada, pimiento rojo grillado, humo y café. En boca los sabores a frutos negros se entrelazan con exquisitas especias dulces, tabaco y chocolate negro, notas que aparecen como resultado de su envejecimiento en barricas de roble. Es un vino, balanceado, vibrante, jugoso y de taninos suaves, que invita a disfrutarlo hoy o en algunos años más, pues posee un potencial de guarda que promete.','tinto,vino,viñedo,uva','Vino Arboleda','',''),(157,3,'Chuletón de ternera','el mejor chuletón gallego directo en tu mesa','','Chuletón de ternera','',''),(157,1,'Chuletón de ternera','el mejor chuletón gallego directo en tu mesa','','Chuletón de ternera','',''),(158,3,'tomate','sdfsad sadfsdf asdfsadfsd sdfsdfsd','','tomate','',''),(158,1,'tomate','sdfsad sadfsdf asdfsadfsd sdfsdfsd','','tomate','',''),(159,3,'sdsgsdfgdf','dsfgsdfg sdfgdfsg dsfgdsfg dsfgdsfgdsfg','','sdsgsdfgdf','',''),(159,1,'sdsgsdfgdf','dsfgsdfg sdfgdfsg dsfgdsfg dsfgdsfgdsfg','','sdsgsdfgdf','',''),(160,3,'Fresas','seleccion de las mejores fresas de murcia.','','Fresas','',''),(160,1,'Fresas','seleccion de las mejores fresas de murcia.','','Fresas','',''),(161,3,'patatas','las mejores patatas de la historia','','patatas','',''),(161,1,'patatas','las mejores patatas de la historia','','patatas','',''),(162,1,'rgrtgrtg','fgbrtg rt trh rth tr tr tr','','rgrtgrtg','',''),(162,3,'rgrtgrtg','fgbrtg rt trh rth tr tr tr','','rgrtgrtg','',''),(163,3,'parar','lksdfjslkdfj fsdlkfjsdlfkjsdflksdjf sdlfksjdflsdkfjsdlkj','','parar','',''),(163,1,'parar','lksdfjslkdfj fsdlkfjsdlfkjsdflksdjf sdlfksjdflsdkfjsdlkj','','parar','',''),(164,3,'cerrrrrr','werwer werwerwerwe wer werwerwer','','cerrrrrr','',''),(164,1,'cerrrrrr','werwer werwerwerwe wer werwerwer','','cerrrrrr','',''),(165,3,'Patatas','nuestras patatas tienen como característica haber sido cultivadas con agricultura inteligente, de modo que se reducen los costos de producción y únicamente consume los recursos necesarios para su crecimiento.','','Patatas','',''),(165,1,'Patatas','nuestras patatas tienen como característica haber sido cultivadas con agricultura inteligente, de modo que se reducen los costos de producción y únicamente consume los recursos necesarios para su crecimiento.','','Patatas','',''),(166,3,'rrthrtbrtb','rbretbr tr tgrtbt t tr tr btrtertert','','rrthrtbrtb','',''),(166,1,'rrthrtbrtb','rbretbr tr tgrtbt t tr tr bt ','','rrthrtbrtb','','');
/*!40000 ALTER TABLE `oc_product_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_discount`
--

DROP TABLE IF EXISTS `oc_product_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_discount_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=449 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_discount`
--

LOCK TABLES `oc_product_discount` WRITE;
/*!40000 ALTER TABLE `oc_product_discount` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_filter`
--

DROP TABLE IF EXISTS `oc_product_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_filter`
--

LOCK TABLES `oc_product_filter` WRITE;
/*!40000 ALTER TABLE `oc_product_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_image`
--

DROP TABLE IF EXISTS `oc_product_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_image` (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`product_image_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2369 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_image`
--

LOCK TABLES `oc_product_image` WRITE;
/*!40000 ALTER TABLE `oc_product_image` DISABLE KEYS */;
INSERT INTO `oc_product_image` VALUES (2366,130,'sellers/33/esparragos verdes 2.png',0),(2368,166,'sellers/24/naranjas 2.png',0);
/*!40000 ALTER TABLE `oc_product_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_option`
--

DROP TABLE IF EXISTS `oc_product_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_option` (
  `product_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=236 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_option`
--

LOCK TABLES `oc_product_option` WRITE;
/*!40000 ALTER TABLE `oc_product_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_option_value`
--

DROP TABLE IF EXISTS `oc_product_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL,
  PRIMARY KEY (`product_option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_option_value`
--

LOCK TABLES `oc_product_option_value` WRITE;
/*!40000 ALTER TABLE `oc_product_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_recurring`
--

DROP TABLE IF EXISTS `oc_product_recurring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_recurring`
--

LOCK TABLES `oc_product_recurring` WRITE;
/*!40000 ALTER TABLE `oc_product_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_recurring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_related`
--

DROP TABLE IF EXISTS `oc_product_related`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_related`
--

LOCK TABLES `oc_product_related` WRITE;
/*!40000 ALTER TABLE `oc_product_related` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_related` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_reward`
--

DROP TABLE IF EXISTS `oc_product_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `points` int(8) NOT NULL,
  PRIMARY KEY (`product_reward_id`)
) ENGINE=MyISAM AUTO_INCREMENT=546 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_reward`
--

LOCK TABLES `oc_product_reward` WRITE;
/*!40000 ALTER TABLE `oc_product_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_special`
--

DROP TABLE IF EXISTS `oc_product_special`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_special` (
  `product_special_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_special_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=444 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_special`
--

LOCK TABLES `oc_product_special` WRITE;
/*!40000 ALTER TABLE `oc_product_special` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_special` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_to_category`
--

DROP TABLE IF EXISTS `oc_product_to_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_to_category`
--

LOCK TABLES `oc_product_to_category` WRITE;
/*!40000 ALTER TABLE `oc_product_to_category` DISABLE KEYS */;
INSERT INTO `oc_product_to_category` VALUES (90,87),(126,88),(126,90),(127,85),(127,87),(128,85),(128,87),(129,85),(129,87),(130,85),(130,87),(131,85),(131,87),(132,85),(132,87),(133,85),(133,87),(134,85),(134,86),(135,85),(135,86),(136,86),(137,85),(137,86),(138,85),(138,87),(139,85),(139,87),(140,85),(140,87),(141,97),(142,88),(142,91),(143,88),(143,92),(144,88),(144,92),(145,88),(145,91),(146,97),(147,94),(147,96),(148,94),(148,95),(149,94),(149,95),(150,94),(150,95),(151,94),(151,95),(152,94),(152,95),(153,94),(153,96),(154,94),(154,96),(155,85),(155,87),(156,85),(156,87),(157,97),(158,95),(159,97),(160,85),(160,86),(161,95),(162,95),(163,96),(164,97),(165,87),(166,95);
/*!40000 ALTER TABLE `oc_product_to_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_to_download`
--

DROP TABLE IF EXISTS `oc_product_to_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_to_download`
--

LOCK TABLES `oc_product_to_download` WRITE;
/*!40000 ALTER TABLE `oc_product_to_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_to_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_to_layout`
--

DROP TABLE IF EXISTS `oc_product_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_to_layout`
--

LOCK TABLES `oc_product_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_product_to_layout` DISABLE KEYS */;
INSERT INTO `oc_product_to_layout` VALUES (156,0,0),(153,0,0),(137,0,0),(148,0,0),(147,0,0),(139,0,0),(144,0,0),(140,0,0),(154,0,0),(143,0,0),(126,0,0),(142,0,0),(138,0,0),(145,0,0),(127,0,0),(128,0,0),(134,0,0),(129,0,0),(150,0,0),(130,0,0),(131,0,0),(135,0,0),(151,0,0),(132,0,0),(149,0,0),(152,0,0),(133,0,0),(155,0,0),(160,0,0),(162,0,0),(166,0,0);
/*!40000 ALTER TABLE `oc_product_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_to_store`
--

DROP TABLE IF EXISTS `oc_product_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_to_store`
--

LOCK TABLES `oc_product_to_store` WRITE;
/*!40000 ALTER TABLE `oc_product_to_store` DISABLE KEYS */;
INSERT INTO `oc_product_to_store` VALUES (90,0),(126,0),(127,0),(128,0),(129,0),(130,0),(131,0),(132,0),(133,0),(134,0),(135,0),(136,0),(137,0),(138,0),(139,0),(140,0),(141,0),(142,0),(143,0),(144,0),(145,0),(146,0),(147,0),(148,0),(149,0),(150,0),(151,0),(152,0),(153,0),(154,0),(155,0),(156,0),(157,0),(158,0),(159,0),(160,0),(161,0),(162,0),(163,0),(164,0),(165,0),(166,0);
/*!40000 ALTER TABLE `oc_product_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_recurring`
--

DROP TABLE IF EXISTS `oc_recurring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_recurring` (
  `recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) NOT NULL,
  `cycle` int(10) NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) NOT NULL,
  `trial_cycle` int(10) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL,
  PRIMARY KEY (`recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_recurring`
--

LOCK TABLES `oc_recurring` WRITE;
/*!40000 ALTER TABLE `oc_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_recurring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_recurring_description`
--

DROP TABLE IF EXISTS `oc_recurring_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`recurring_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_recurring_description`
--

LOCK TABLES `oc_recurring_description` WRITE;
/*!40000 ALTER TABLE `oc_recurring_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_recurring_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return`
--

DROP TABLE IF EXISTS `oc_return`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return` (
  `return_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`return_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return`
--

LOCK TABLES `oc_return` WRITE;
/*!40000 ALTER TABLE `oc_return` DISABLE KEYS */;
INSERT INTO `oc_return` VALUES (3,35,0,24,'Visiona1','visiona1','visiona1@visiona-ip.es','958888888','Cerezas','Cerezas',1,1,1,3,3,'sdfsADFASDF ASDFERGRsdfgh hgfh dfghdfgh','2016-03-28','2016-03-29 01:18:48','2016-03-29 01:20:12'),(4,54,0,31,'Administrador','QfreshCo','store.test@qfresh.co','645555544','Lechuga','Lechuga',1,1,1,0,1,'','2016-03-30','2016-03-30 14:05:20','2016-03-30 14:05:20'),(5,61,0,48,'checkout','test','checkout.test@qfresh.co','666524844','Acelgas','Acelgas',1,1,1,0,1,'','2016-03-31','2016-03-31 05:18:55','2016-03-31 05:18:55');
/*!40000 ALTER TABLE `oc_return` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return_action`
--

DROP TABLE IF EXISTS `oc_return_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return_action` (
  `return_action_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`return_action_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return_action`
--

LOCK TABLES `oc_return_action` WRITE;
/*!40000 ALTER TABLE `oc_return_action` DISABLE KEYS */;
INSERT INTO `oc_return_action` VALUES (3,1,'Replacement Sent'),(1,3,'Reembolso del importe del producto'),(3,3,'Enviado de nuevo'),(1,1,'Refunded');
/*!40000 ALTER TABLE `oc_return_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return_history`
--

DROP TABLE IF EXISTS `oc_return_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return_history` (
  `return_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`return_history_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return_history`
--

LOCK TABLES `oc_return_history` WRITE;
/*!40000 ALTER TABLE `oc_return_history` DISABLE KEYS */;
INSERT INTO `oc_return_history` VALUES (1,3,3,1,'lo sentimos mucho, te enviamos el producto de nuevo','2016-03-29 01:20:10');
/*!40000 ALTER TABLE `oc_return_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return_reason`
--

DROP TABLE IF EXISTS `oc_return_reason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`return_reason_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return_reason`
--

LOCK TABLES `oc_return_reason` WRITE;
/*!40000 ALTER TABLE `oc_return_reason` DISABLE KEYS */;
INSERT INTO `oc_return_reason` VALUES (1,3,'Mal estado del producto'),(2,3,'Artículo incorrecto'),(3,3,'Pedido erroneo'),(5,3,'Otros Motivos, por favor detalle mas abajo'),(1,1,'Dead On Arrival'),(3,1,'Order Error'),(2,1,'Received Wrong Item'),(5,1,'Other, please supply details');
/*!40000 ALTER TABLE `oc_return_reason` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return_status`
--

DROP TABLE IF EXISTS `oc_return_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return_status` (
  `return_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`return_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return_status`
--

LOCK TABLES `oc_return_status` WRITE;
/*!40000 ALTER TABLE `oc_return_status` DISABLE KEYS */;
INSERT INTO `oc_return_status` VALUES (1,3,'Pendiente de revisión'),(3,1,'Complete'),(3,3,'Completo'),(2,3,'Esperando la devolución'),(2,1,'Awaiting Products'),(1,1,'Pending');
/*!40000 ALTER TABLE `oc_return_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_review`
--

DROP TABLE IF EXISTS `oc_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`review_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_review`
--

LOCK TABLES `oc_review` WRITE;
/*!40000 ALTER TABLE `oc_review` DISABLE KEYS */;
INSERT INTO `oc_review` VALUES (4,133,45,'Alberto Núñez','tiene una frescura exquisita.',5,1,'2016-03-28 12:56:31','2016-03-31 16:07:47'),(3,133,45,'Juan Antonio ','No merece la pena',2,1,'2016-03-28 12:48:08','2016-03-31 16:09:02'),(5,141,56,'Víctor Martinez','Producto riquísimo, lo recomiendo al 100%',4,1,'2016-03-31 16:06:33','2016-03-31 16:07:01');
/*!40000 ALTER TABLE `oc_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_setting`
--

DROP TABLE IF EXISTS `oc_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17588 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_setting`
--

LOCK TABLES `oc_setting` WRITE;
/*!40000 ALTER TABLE `oc_setting` DISABLE KEYS */;
INSERT INTO `oc_setting` VALUES (1,0,'shipping','shipping_sort_order','3',0),(2,0,'sub_total','sub_total_sort_order','1',0),(3,0,'sub_total','sub_total_status','1',0),(4,0,'tax','tax_status','1',0),(5,0,'total','total_sort_order','9',0),(6,0,'total','total_status','1',0),(7,0,'tax','tax_sort_order','5',0),(10817,0,'category','category_status','1',0),(17587,0,'themecontrol','themecontrol','a:63:{s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:1:\"1\";s:21:\"cateogry_display_mode\";s:4:\"list\";s:24:\"listing_products_columns\";s:1:\"0\";s:30:\"listing_products_columns_small\";s:1:\"0\";s:34:\"listing_products_columns_minismall\";s:1:\"0\";s:14:\"category_pzoom\";s:1:\"0\";s:18:\"product_enablezoom\";s:1:\"0\";s:19:\"product_zoomgallery\";s:6:\"slider\";s:16:\"product_zoommode\";s:4:\"lens\";s:20:\"product_zoomlenssize\";s:4:\"500%\";s:18:\"product_zoomeasing\";s:1:\"1\";s:21:\"product_zoomlensshape\";s:5:\"round\";s:22:\"product_related_column\";s:1:\"5\";s:24:\"enable_product_customtab\";s:1:\"0\";s:22:\"product_customtab_name\";a:2:{i:3;s:0:\"\";i:1;s:0:\"\";}s:25:\"product_customtab_content\";a:2:{i:3;s:29:\"&lt;p&gt;&lt;br&gt;&lt;/p&gt;\";i:1;s:29:\"&lt;p&gt;&lt;br&gt;&lt;/p&gt;\";}s:16:\"location_address\";s:44:\"79-99 Beaver Street, New York, NY 10005, USA\";s:17:\"location_latitude\";s:9:\"40.705423\";s:18:\"location_longitude\";s:10:\"-74.008616\";s:18:\"contact_customhtml\";a:2:{i:3;s:29:\"&lt;p&gt;&lt;br&gt;&lt;/p&gt;\";i:1;s:29:\"&lt;p&gt;&lt;br&gt;&lt;/p&gt;\";}s:4:\"skin\";s:5:\"green\";s:11:\"theme_width\";s:3:\"90%\";s:23:\"enable_custom_copyright\";s:1:\"1\";s:9:\"copyright\";s:24:\"Copyright 2016 Qfresh.co\";s:18:\"enable_offsidebars\";s:1:\"1\";s:16:\"enable_paneltool\";s:1:\"0\";s:12:\"catalog_mode\";s:1:\"0\";s:9:\"quickview\";s:1:\"1\";s:9:\"logo_type\";s:13:\"logo-opencart\";s:9:\"offcanvas\";s:8:\"megamenu\";s:13:\"widget_paypal\";a:2:{i:3;s:69:\"&lt;img src=&quot;image/catalog/paypal.png&quot; alt=&quot;&quot;&gt;\";i:1;s:69:\"&lt;img src=&quot;image/catalog/paypal.png&quot; alt=&quot;&quot;&gt;\";}s:17:\"enable_customfont\";s:1:\"1\";s:11:\"type_fonts1\";s:6:\"google\";s:13:\"normal_fonts1\";s:7:\"inherit\";s:11:\"google_url1\";s:57:\"https://fonts.googleapis.com/css?family=Yanone+Kaffeesatz\";s:14:\"google_family1\";s:17:\"Yanone Kaffeesatz\";s:9:\"fontsize1\";s:7:\"inherit\";s:11:\"type_fonts2\";s:6:\"google\";s:13:\"normal_fonts2\";s:7:\"inherit\";s:11:\"google_url2\";s:57:\"https://fonts.googleapis.com/css?family=Yanone+Kaffeesatz\";s:14:\"google_family2\";s:17:\"Yanone Kaffeesatz\";s:9:\"fontsize2\";s:7:\"inherit\";s:11:\"type_fonts3\";s:6:\"google\";s:13:\"normal_fonts3\";s:7:\"inherit\";s:11:\"google_url3\";s:57:\"https://fonts.googleapis.com/css?family=Yanone+Kaffeesatz\";s:14:\"google_family3\";s:17:\"Yanone Kaffeesatz\";s:9:\"fontsize3\";s:7:\"inherit\";s:11:\"type_fonts4\";s:6:\"google\";s:13:\"normal_fonts4\";s:27:\"Verdana, Geneva, sans-serif\";s:11:\"google_url4\";s:57:\"https://fonts.googleapis.com/css?family=Yanone+Kaffeesatz\";s:14:\"google_family4\";s:17:\"Yanone Kaffeesatz\";s:14:\"body_selector4\";s:0:\"\";s:14:\"block_showcase\";s:0:\"\";s:15:\"block_promotion\";s:0:\"\";s:16:\"block_footer_top\";s:0:\"\";s:19:\"block_footer_center\";s:1:\"4\";s:19:\"block_footer_bottom\";s:1:\"6\";s:19:\"enable_compress_css\";s:0:\"\";s:17:\"exclude_css_files\";s:13:\"bootstrap.css\";s:15:\"customize_theme\";s:0:\"\";s:10:\"custom_css\";s:0:\"\";s:17:\"custom_javascript\";s:0:\"\";}',1),(14,0,'shipping','shipping_status','1',0),(15,0,'shipping','shipping_estimator','1',0),(27,0,'coupon','coupon_sort_order','4',0),(28,0,'coupon','coupon_status','1',0),(34,0,'flat','flat_sort_order','1',0),(35,0,'flat','flat_status','1',0),(36,0,'flat','flat_geo_zone_id','0',0),(37,0,'flat','flat_tax_class_id','9',0),(41,0,'flat','flat_cost','5.00',0),(42,0,'credit','credit_sort_order','7',0),(43,0,'credit','credit_status','1',0),(53,0,'reward','reward_sort_order','2',0),(54,0,'reward','reward_status','1',0),(17384,0,'stripe','stripe_checkout_title_en','[store]',0),(17383,0,'stripe','stripe_checkout_title_es','[store]',0),(94,0,'voucher','voucher_sort_order','8',0),(95,0,'voucher','voucher_status','1',0),(17382,0,'stripe','stripe_checkout_image','catalog/logo1.png',0),(11201,0,'google_sitemap','google_sitemap_status','1',0),(10031,0,'filter','filter_status','1',0),(17446,0,'msconf','msconf_seller_avatar_dashboard_image_height','152',0),(17445,0,'msconf','msconf_seller_avatar_seller_profile_image_width','768',0),(17444,0,'msconf','msconf_product_seller_banner_height','152',0),(17443,0,'msconf','msconf_product_seller_product_list_seller_area_image_height','152',0),(17547,0,'config','config_image_compare_height','141',0),(17548,0,'config','config_image_wishlist_width','247',0),(17549,0,'config','config_image_wishlist_height','141',0),(17550,0,'config','config_image_cart_width','247',0),(17551,0,'config','config_image_cart_height','141',0),(17552,0,'config','config_image_location_width','247',0),(17553,0,'config','config_image_location_height','141',0),(17554,0,'config','config_ftp_hostname','192.168.1.102',0),(17555,0,'config','config_ftp_port','21',0),(17556,0,'config','config_ftp_username','',0),(17557,0,'config','config_ftp_password','',0),(17558,0,'config','config_ftp_root','/var/www/',0),(17559,0,'config','config_ftp_status','0',0),(17560,0,'config','config_mail_protocol','mail',0),(17561,0,'config','config_mail_parameter','',0),(17562,0,'config','config_mail_smtp_hostname','',0),(17563,0,'config','config_mail_smtp_username','',0),(17564,0,'config','config_mail_smtp_password','',0),(17565,0,'config','config_mail_smtp_port','25',0),(17566,0,'config','config_mail_smtp_timeout','5',0),(17567,0,'config','config_mail_alert','',0),(17568,0,'config','config_secure','0',0),(17569,0,'config','config_shared','0',0),(17570,0,'config','config_robots','abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg',0),(17546,0,'config','config_image_compare_width','247',0),(17545,0,'config','config_image_related_height','141',0),(17544,0,'config','config_image_related_width','250',0),(1499,0,'themegloballite_skin','themegloballite_skin','tglite_default',0),(1496,0,'tg_tglite_revolution_slider','tg_tglite_revolution_slider_module','a:1:{i:0;a:5:{s:9:\"slider_id\";s:1:\"2\";s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:9:\"slideshow\";s:10:\"sort_order\";s:1:\"0\";s:6:\"status\";s:1:\"1\";}}',1),(17442,0,'msconf','msconf_enable_seller_banner','0',0),(17440,0,'msconf','msconf_enable_rte','0',0),(17441,0,'msconf','msconf_seller_avatar_product_page_image_width','270',0),(9212,0,'mscomm','mscomm_seller_comments_maxlen','500',0),(9213,0,'mscomm','mscomm_seller_comments_perpage','10',0),(9192,0,'mmess_conf','mmess_conf_enable','1',0),(9194,0,'msconf_badge','msconf_badge_height','30',0),(9193,0,'msconf_badge','msconf_badge_width','30',0),(9197,0,'msconf_sl','msconf_sl_icon_height','75',0),(9196,0,'msconf_sl','msconf_sl_icon_width','75',0),(9195,0,'msconf_sl','msconf_sl_status','0',0),(9201,0,'msconf_masspay','msconf_masspay_api_signature','',0),(9200,0,'msconf_masspay','msconf_masspay_api_password','',0),(9199,0,'msconf_masspay','msconf_masspay_api_username','',0),(9198,0,'msconf_masspay','msconf_masspay_sandbox','1',0),(9211,0,'mscomm','mscomm_seller_comments_enable_customer_captcha','0',0),(9210,0,'mscomm','mscomm_seller_comments_enforce_customer_data','1',0),(9209,0,'mscomm','mscomm_seller_comments_allow_guests','0',0),(9208,0,'mscomm','mscomm_seller_comments_enable','1',0),(9207,0,'mscomm','mscomm_comments_perpage','10',0),(9206,0,'mscomm','mscomm_comments_maxlen','500',0),(9205,0,'mscomm','mscomm_comments_enable_customer_captcha','0',0),(9204,0,'mscomm','mscomm_comments_enforce_customer_data','1',0),(9218,0,'msship','msship_digital_product_categories','a:0:{}',1),(9217,0,'msship','msship_physical_product_categories','a:0:{}',1),(9216,0,'msship','msship_download_limit_applies','1',0),(9215,0,'msship','msship_enable_minicart_shipping_estimate','1',0),(9214,0,'msship','msship_product_shipping_cost_estimation','1',0),(9203,0,'mscomm','mscomm_comments_allow_guests','0',0),(9202,0,'mscomm','mscomm_comments_enable','1',0),(17543,0,'config','config_image_additional_height','45',0),(17542,0,'config','config_image_additional_width','80',0),(17541,0,'config','config_image_product_height','141',0),(17540,0,'config','config_image_product_width','247',0),(17539,0,'config','config_image_popup_height','226',0),(17538,0,'config','config_image_popup_width','400',0),(17537,0,'config','config_image_thumb_height','452',0),(17536,0,'config','config_image_thumb_width','800',0),(17439,0,'msconf','msconf_attribute_display','0',0),(17438,0,'msconf','msconf_product_seller_profile_image_height','152',0),(17535,0,'config','config_image_category_height','141',0),(17534,0,'config','config_image_category_width','247',0),(17381,0,'stripe','stripe_checkout_shipping','0',0),(17380,0,'stripe','stripe_checkout_billing','0',0),(17379,0,'stripe','stripe_checkout_bitcoin','0',0),(17378,0,'stripe','stripe_checkout_remember_me','1',0),(17377,0,'stripe','stripe_use_checkout','1',0),(17376,0,'stripe','stripe_currencies_USD','EUR',0),(17375,0,'stripe','stripe_currencies_GBP','EUR',0),(17374,0,'stripe','stripe_currencies_EUR','EUR',0),(17373,0,'stripe','stripe_transaction_description','[store]: Order #[order_id] ([amount], [email])',0),(17371,0,'stripe','stripe_send_customer_data','never',0),(17372,0,'stripe','stripe_allow_stored_cards','0',0),(17370,0,'stripe','stripe_charge_mode','capture',0),(17369,0,'stripe','stripe_transaction_mode','test',0),(17368,0,'stripe','stripe_webhook_url','https://localhost:8080/index.php?route=payment/stripe/webhook&amp;key=a4b9dc0768d29fac1db4d603fec43612',0),(17367,0,'stripe','stripe_live_publishable_key','pk_live_aCwTShbWbXbLpwND4ZIdbaEV',0),(17366,0,'stripe','stripe_live_secret_key','sk_live_lMqLvHAiAiElHp3XvTVpPPI6',0),(17365,0,'stripe','stripe_test_publishable_key','pk_test_lyc0q1fGXKkLGFfLEetKDvQz',0),(17533,0,'config','config_icon','catalog/Qfreshco letras verde.png',0),(17532,0,'config','config_logo','catalog/logo.png',0),(17531,0,'config','config_return_status_id','1',0),(17530,0,'config','config_return_id','5',0),(17529,0,'config','config_affiliate_mail','1',0),(17528,0,'config','config_affiliate_id','4',0),(17527,0,'config','config_affiliate_commission','5',0),(17526,0,'config','config_affiliate_auto','0',0),(17525,0,'config','config_affiliate_approval','0',0),(17524,0,'config','config_stock_checkout','0',0),(17523,0,'config','config_stock_warning','0',0),(17522,0,'config','config_stock_display','0',0),(17521,0,'config','config_order_mail','1',0),(17520,0,'config','config_complete_status','a:9:{i:0;s:2:\"16\";i:1;s:1:\"7\";i:2;s:1:\"8\";i:3;s:1:\"3\";i:4;s:2:\"10\";i:5;s:1:\"1\";i:6;s:1:\"5\";i:7;s:2:\"15\";i:8;s:2:\"14\";}',1),(17519,0,'config','config_processing_status','a:8:{i:0;s:2:\"16\";i:1;s:1:\"7\";i:2;s:1:\"8\";i:3;s:1:\"3\";i:4;s:2:\"10\";i:5;s:1:\"1\";i:6;s:1:\"5\";i:7;s:2:\"14\";}',1),(17518,0,'config','config_order_status_id','1',0),(17437,0,'msconf','msconf_product_seller_products_image_width','270',0),(17436,0,'msconf','msconf_seller_avatar_seller_list_image_height','152',0),(17435,0,'msconf','msconf_preview_seller_avatar_image_width','270',0),(17517,0,'config','config_checkout_id','5',0),(17516,0,'config','config_checkout_guest','0',0),(17515,0,'config','config_cart_weight','0',0),(17514,0,'config','config_api_id','1',0),(17511,0,'config','config_account_id','5',0),(17512,0,'config','config_account_mail','1',0),(17513,0,'config','config_invoice_prefix','INV-2013-00',0),(17509,0,'config','config_customer_price','0',0),(17510,0,'config','config_login_attempts','5',0),(17508,0,'config','config_customer_group_display','a:1:{i:0;s:1:\"1\";}',1),(17507,0,'config','config_customer_group_id','1',0),(17506,0,'config','config_customer_online','0',0),(17505,0,'config','config_tax_customer','',0),(12150,0,'pavmegamenu_params','pavmegamenu_params','[{\"submenu\":1,\"id\":244,\"align\":\"aligned-center\",\"cols\":2,\"group\":0,\"rows\":[{\"cols\":[{\"type\":\"menu\",\"colwidth\":12}]}]},{\"submenu\":1,\"id\":246,\"align\":\"aligned-center\",\"group\":0,\"cols\":1,\"rows\":[{\"cols\":[{\"type\":\"menu\",\"colwidth\":12}]}]},{\"submenu\":1,\"id\":245,\"align\":\"aligned-center\",\"group\":0,\"cols\":1,\"rows\":[{\"cols\":[{\"type\":\"menu\",\"colwidth\":12}]}]}]',0),(17434,0,'msconf','msconf_temp_image_path','tmp/',0),(17504,0,'config','config_tax_default','',0),(17433,0,'msconf','msconf_seller_avatar_seller_list_image_width','270',0),(17432,0,'msconf','msconf_graphical_sellermenu','0',0),(17431,0,'msconf','msconf_rte_whitelist','',0),(17430,0,'msconf','msconf_seller_avatar_seller_profile_image_height','432',0),(17429,0,'msconf','msconf_enable_non_alphanumeric_seo','0',0),(17428,0,'msconf','msconf_preview_seller_avatar_image_height','150',0),(17427,0,'msconf','msconf_change_seller_nickname','1',0),(17426,0,'msconf','msconf_enable_update_seo_urls','0',0),(17425,0,'msconf','msconf_enable_one_page_seller_registration','0',0),(17503,0,'config','config_tax','1',0),(17502,0,'config','config_voucher_max','1000',0),(17501,0,'config','config_voucher_min','1',0),(17500,0,'config','config_review_mail','0',0),(17499,0,'config','config_review_guest','0',0),(17498,0,'config','config_review_status','1',0),(17497,0,'config','config_limit_admin','20',0),(17496,0,'config','config_product_description_length','200',0),(17495,0,'config','config_product_limit','100',0),(17494,0,'config','config_product_count','1',0),(17493,0,'config','config_weight_class_id','1',0),(17492,0,'config','config_length_class_id','4',0),(17491,0,'config','config_currency_auto','1',0),(17490,0,'config','config_currency','EUR',0),(17489,0,'config','config_admin_language','es',0),(17488,0,'config','config_language','es',0),(17487,0,'config','config_zone_id','3001',0),(17486,0,'config','config_country_id','195',0),(17485,0,'config','config_layout_id','15',0),(17484,0,'config','config_template','pav_foodgood',0),(17483,0,'config','config_meta_keyword','',0),(17482,0,'config','config_meta_description','My Store',0),(17481,0,'config','config_meta_title','qfresh.co',0),(17480,0,'config','config_comment','',0),(17479,0,'config','config_open','',0),(17478,0,'config','config_image','catalog/Qfreshco letras verde.png',0),(17477,0,'config','config_fax','',0),(17476,0,'config','config_telephone','123456789',0),(17475,0,'config','config_email','vnunez@visiona-ip.es',0),(17474,0,'config','config_geocode','',0),(17473,0,'config','config_address','Las rozas',0),(17472,0,'config','config_owner','Visiona-ip',0),(17471,0,'config','config_name','qfresh.co',0),(17424,0,'msconf','msconf_enable_seo_urls_product','0',0),(17423,0,'msconf','msconf_product_seller_product_list_seller_area_image_width','270',0),(17422,0,'msconf','msconf_product_seller_banner_width','270',0),(17421,0,'msconf','msconf_preview_product_image_height','150',0),(17420,0,'msconf','msconf_enable_quantities','1',0),(17419,0,'msconf','msconf_minimum_product_price','0',0),(17418,0,'msconf','msconf_disable_product_after_quantity_depleted','0',0),(17417,0,'msconf','msconf_enable_seo_urls_seller','0',0),(17416,0,'msconf','msconf_allow_relisting','0',0),(17415,0,'msconf','msconf_maximum_product_price','0',0),(17414,0,'msconf','msconf_downloads_limits','a:2:{i:0;s:1:\"0\";i:1;s:1:\"0\";}',1),(17413,0,'msconf','msconf_predefined_avatars_path','avatars/',0),(17412,0,'msconf','msconf_enable_categories','0',0),(17411,0,'msconf','msconf_product_included_fields','a:0:{}',1),(17410,0,'msconf','msconf_additional_category_restrictions','2',0),(17409,0,'msconf','msconf_enable_shipping','0',0),(17408,0,'msconf','msconf_product_seller_profile_image_width','270',0),(17407,0,'msconf','msconf_allow_free_products','0',0),(17406,0,'msconf','msconf_notification_email','',0),(17405,0,'msconf','msconf_provide_buyerinfo','0',0),(17364,0,'stripe','stripe_test_secret_key','sk_test_MxAWytMGCBeOLhqsqxcq0xXG',0),(17363,0,'stripe','stripe_customer_groups','0;1',0),(17362,0,'stripe','stripe_geo_zones','0;4;3',0),(17361,0,'stripe','stripe_stores','0',0),(17360,0,'stripe','stripe_max_total','',0),(17359,0,'stripe','stripe_min_total','0.50',0),(17358,0,'stripe','stripe_partial_status_id','0',0),(17357,0,'stripe','stripe_refund_status_id','0',0),(17356,0,'stripe','stripe_cvc_status_id','0',0),(17355,0,'stripe','stripe_zip_status_id','0',0),(17354,0,'stripe','stripe_street_status_id','0',0),(17353,0,'stripe','stripe_success_status_id','5',0),(17352,0,'stripe','stripe_button_styling','',0),(17351,0,'stripe','stripe_button_class','btn btn-primary',0),(17350,0,'stripe','stripe_button_text_en','Confirm Order',0),(17349,0,'stripe','stripe_button_text_es','Confirmar pedido',0),(17348,0,'stripe','stripe_title_en','Credit / Debit Card',0),(17347,0,'stripe','stripe_title_es','Tarjeta crédito / débito',0),(17346,0,'stripe','stripe_sort_order','1',0),(17345,0,'stripe','stripe_status','1',0),(17404,0,'msconf','msconf_restrict_categories','a:3:{i:0;s:2:\"94\";i:1;s:2:\"88\";i:2;s:2:\"85\";}',1),(17403,0,'msconf','msconf_allow_multiple_categories','0',0),(17402,0,'msconf','msconf_allowed_image_types','png,jpg,jpeg',0),(17401,0,'msconf','msconf_images_limits','a:2:{i:0;s:1:\"1\";i:1;s:1:\"3\";}',1),(17400,0,'msconf','msconf_display_order_statuses','a:9:{i:0;s:2:\"16\";i:1;s:1:\"7\";i:2;s:1:\"8\";i:3;s:1:\"3\";i:4;s:2:\"10\";i:5;s:1:\"1\";i:6;s:1:\"5\";i:7;s:2:\"15\";i:8;s:2:\"14\";}',1),(17399,0,'msconf','msconf_hide_emails_in_emails','0',0),(17398,0,'msconf','msconf_sellers_slug','sellers',0),(17397,0,'msconf','msconf_allow_inactive_seller_products','0',0),(17396,0,'msconf','msconf_min_uploaded_image_height','0',0),(17395,0,'msconf','msconf_max_uploaded_image_height','0',0),(17394,0,'msconf','msconf_seller_terms_page','5',0),(17393,0,'msconf','msconf_hide_sellers_product_count','1',0),(17392,0,'msconf','msconf_temp_download_path','tmp/',0),(17391,0,'msconf','msconf_product_seller_products_image_height','150',0),(17385,0,'stripe','stripe_checkout_description_es','Pedido #[order_id] ([amount])',0),(17386,0,'stripe','stripe_checkout_description_en','Order #[order_id] ([amount])',0),(17387,0,'stripe','stripe_checkout_button_es','Pagar [amount]',0),(17388,0,'stripe','stripe_checkout_button_en','Pay [amount]',0),(17389,0,'stripe','stripe_subscriptions','0',0),(17390,0,'stripe','stripe_prevent_guests','0',0),(17447,0,'msconf','msconf_preview_product_image_width','270',0),(17448,0,'msconf','msconf_hide_customer_email','0',0),(17449,0,'msconf','msconf_enable_private_messaging','2',0),(17450,0,'msconf','msconf_debit_order_statuses','a:1:{i:0;s:1:\"8\";}',1),(17451,0,'msconf','msconf_avatars_for_sellers','0',0),(17452,0,'msconf','msconf_product_image_path','sellers/',0),(17453,0,'msconf','msconf_nickname_rules','0',0),(17454,0,'msconf','msconf_credit_order_statuses','a:1:{i:0;s:1:\"7\";}',1),(17455,0,'msconf','msconf_paypal_address','',0),(17456,0,'msconf','msconf_minimum_withdrawal_amount','50',0),(17457,0,'msconf','msconf_paypal_sandbox','0',0),(17458,0,'msconf','msconf_seller_validation','3',0),(17459,0,'msconf','msconf_min_uploaded_image_width','0',0),(17460,0,'msconf','msconf_allow_partial_withdrawal','0',0),(17461,0,'msconf','msconf_seller_avatar_dashboard_image_width','270',0),(17462,0,'msconf','msconf_seller_avatar_product_page_image_height','152',0),(17463,0,'msconf','msconf_allow_discounts','0',0),(17464,0,'msconf','msconf_max_uploaded_image_width','0',0),(17465,0,'msconf','msconf_allow_withdrawal_requests','0',0),(17466,0,'msconf','msconf_allowed_download_types','zip,rar,pdf',0),(17467,0,'msconf','msconf_default_seller_group_id','1',0),(17468,0,'msconf','msconf_product_validation','2',0),(17469,0,'msconf','msconf_allow_specials','0',0),(17470,0,'msconf','msconf_withdrawal_waiting_period','0',0),(17571,0,'config','config_seo_url','0',0),(17572,0,'config','config_file_max_size','300000',0),(17573,0,'config','config_file_ext_allowed','zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc',0),(17574,0,'config','config_file_mime_allowed','text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf',0),(17575,0,'config','config_maintenance','0',0),(17576,0,'config','config_password','1',0),(17577,0,'config','config_encryption','a4b9dc0768d29fac1db4d603fec43612',0),(17578,0,'config','config_compression','0',0),(17579,0,'config','config_error_display','1',0),(17580,0,'config','config_error_log','1',0),(17581,0,'config','config_error_filename','error.log',0),(17582,0,'config','config_google_analytics','',0),(17583,0,'config','config_google_analytics_status','0',0),(17584,0,'config','config_google_captcha_public','',0),(17585,0,'config','config_google_captcha_secret','',0),(17586,0,'config','config_google_captcha_status','0',0);
/*!40000 ALTER TABLE `oc_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_stock_status`
--

DROP TABLE IF EXISTS `oc_stock_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`stock_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_stock_status`
--

LOCK TABLES `oc_stock_status` WRITE;
/*!40000 ALTER TABLE `oc_stock_status` DISABLE KEYS */;
INSERT INTO `oc_stock_status` VALUES (7,1,'In Stock'),(8,1,'Pre-Order'),(5,1,'Out Of Stock'),(6,1,'2-3 Days'),(7,3,'In Stock'),(8,3,'Pre-Order'),(5,3,'Out Of Stock'),(6,3,'2-3 Days');
/*!40000 ALTER TABLE `oc_stock_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_store`
--

DROP TABLE IF EXISTS `oc_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_store`
--

LOCK TABLES `oc_store` WRITE;
/*!40000 ALTER TABLE `oc_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_stripe_customer`
--

DROP TABLE IF EXISTS `oc_stripe_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_stripe_customer` (
  `customer_id` int(11) NOT NULL,
  `stripe_customer_id` varchar(18) NOT NULL,
  `transaction_mode` varchar(4) NOT NULL DEFAULT 'live',
  PRIMARY KEY (`customer_id`,`stripe_customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_stripe_customer`
--

LOCK TABLES `oc_stripe_customer` WRITE;
/*!40000 ALTER TABLE `oc_stripe_customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_stripe_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_tax_class`
--

DROP TABLE IF EXISTS `oc_tax_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_tax_class`
--

LOCK TABLES `oc_tax_class` WRITE;
/*!40000 ALTER TABLE `oc_tax_class` DISABLE KEYS */;
INSERT INTO `oc_tax_class` VALUES (9,'Taxable Goods','Taxed goods','2009-01-06 23:21:53','2011-09-23 14:07:50'),(10,'Downloadable Products','Downloadable','2011-09-21 22:19:39','2011-09-22 10:27:36');
/*!40000 ALTER TABLE `oc_tax_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_tax_rate`
--

DROP TABLE IF EXISTS `oc_tax_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `geo_zone_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_rate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_tax_rate`
--

LOCK TABLES `oc_tax_rate` WRITE;
/*!40000 ALTER TABLE `oc_tax_rate` DISABLE KEYS */;
INSERT INTO `oc_tax_rate` VALUES (86,3,'VAT (20%)',20.0000,'P','2011-03-09 21:17:10','2011-09-22 22:24:29'),(87,3,'Eco Tax (-2.00)',2.0000,'F','2011-09-21 21:49:23','2011-09-23 00:40:19');
/*!40000 ALTER TABLE `oc_tax_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_tax_rate_to_customer_group`
--

DROP TABLE IF EXISTS `oc_tax_rate_to_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`tax_rate_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_tax_rate_to_customer_group`
--

LOCK TABLES `oc_tax_rate_to_customer_group` WRITE;
/*!40000 ALTER TABLE `oc_tax_rate_to_customer_group` DISABLE KEYS */;
INSERT INTO `oc_tax_rate_to_customer_group` VALUES (86,1),(87,1);
/*!40000 ALTER TABLE `oc_tax_rate_to_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_tax_rule`
--

DROP TABLE IF EXISTS `oc_tax_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`tax_rule_id`)
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_tax_rule`
--

LOCK TABLES `oc_tax_rule` WRITE;
/*!40000 ALTER TABLE `oc_tax_rule` DISABLE KEYS */;
INSERT INTO `oc_tax_rule` VALUES (121,10,86,'payment',1),(120,10,87,'store',0),(128,9,86,'shipping',1),(127,9,87,'shipping',2);
/*!40000 ALTER TABLE `oc_tax_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_tg_tglite_revolution_slider`
--

DROP TABLE IF EXISTS `oc_tg_tglite_revolution_slider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_tg_tglite_revolution_slider` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` text,
  `settings` text,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_tg_tglite_revolution_slider`
--

LOCK TABLES `oc_tg_tglite_revolution_slider` WRITE;
/*!40000 ALTER TABLE `oc_tg_tglite_revolution_slider` DISABLE KEYS */;
INSERT INTO `oc_tg_tglite_revolution_slider` VALUES (2,'New slider','a:4:{s:12:\"slider_width\";s:4:\"1290\";s:13:\"slider_height\";s:3:\"500\";s:12:\"slider_speed\";s:2:\"12\";s:11:\"layout_type\";s:1:\"0\";}','a:2:{i:1;a:1:{i:1;a:5:{s:6:\"status\";s:1:\"1\";s:6:\"slider\";s:34:\"catalog/themegloballite/slide3.jpg\";s:17:\"transition_effect\";s:6:\"random\";s:4:\"link\";s:0:\"\";s:8:\"elements\";a:21:{i:1;a:15:{s:6:\"status\";s:1:\"1\";s:12:\"element_type\";s:5:\"image\";s:5:\"image\";s:38:\"catalog/themegloballite/tg-subimg0.png\";s:9:\"image_url\";s:0:\"\";s:17:\"image_url_new_tab\";s:1:\"0\";s:4:\"text\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:5:\"style\";s:0:\"\";s:15:\"animation_class\";s:3:\"sft\";s:6:\"easing\";s:11:\"easeOutBack\";s:9:\"endeasing\";s:11:\"easeOutBack\";s:5:\"speed\";s:4:\"1000\";s:5:\"start\";s:3:\"500\";s:1:\"x\";s:2:\"50\";s:1:\"y\";s:3:\"390\";}i:2;a:15:{s:6:\"status\";s:1:\"1\";s:12:\"element_type\";s:5:\"image\";s:5:\"image\";s:38:\"catalog/themegloballite/tg-subimg1.png\";s:9:\"image_url\";s:0:\"\";s:17:\"image_url_new_tab\";s:1:\"0\";s:4:\"text\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:5:\"style\";s:0:\"\";s:15:\"animation_class\";s:3:\"sfl\";s:6:\"easing\";s:11:\"easeOutBack\";s:9:\"endeasing\";s:11:\"easeOutBack\";s:5:\"speed\";s:4:\"1000\";s:5:\"start\";s:4:\"1500\";s:1:\"x\";s:3:\"291\";s:1:\"y\";s:3:\"220\";}i:3;a:15:{s:6:\"status\";s:1:\"1\";s:12:\"element_type\";s:5:\"image\";s:5:\"image\";s:39:\"catalog/themegloballite/tg-subimg11.png\";s:9:\"image_url\";s:0:\"\";s:17:\"image_url_new_tab\";s:1:\"0\";s:4:\"text\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:5:\"style\";s:0:\"\";s:15:\"animation_class\";s:3:\"sft\";s:6:\"easing\";s:11:\"easeOutBack\";s:9:\"endeasing\";s:11:\"easeOutBack\";s:5:\"speed\";s:4:\"1500\";s:5:\"start\";s:4:\"2500\";s:1:\"x\";s:3:\"570\";s:1:\"y\";s:3:\"290\";}i:4;a:15:{s:6:\"status\";s:1:\"1\";s:12:\"element_type\";s:5:\"image\";s:5:\"image\";s:39:\"catalog/themegloballite/tg-subimg11.png\";s:9:\"image_url\";s:0:\"\";s:17:\"image_url_new_tab\";s:1:\"0\";s:4:\"text\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:5:\"style\";s:0:\"\";s:15:\"animation_class\";s:3:\"sft\";s:6:\"easing\";s:11:\"easeOutBack\";s:9:\"endeasing\";s:11:\"easeOutBack\";s:5:\"speed\";s:4:\"1500\";s:5:\"start\";s:4:\"2500\";s:1:\"x\";s:3:\"175\";s:1:\"y\";s:3:\"290\";}i:5;a:15:{s:6:\"status\";s:1:\"1\";s:12:\"element_type\";s:5:\"image\";s:5:\"image\";s:39:\"catalog/themegloballite/tg-subimg12.png\";s:9:\"image_url\";s:0:\"\";s:17:\"image_url_new_tab\";s:1:\"0\";s:4:\"text\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:5:\"style\";s:0:\"\";s:15:\"animation_class\";s:3:\"sft\";s:6:\"easing\";s:11:\"easeOutBack\";s:9:\"endeasing\";s:11:\"easeOutBack\";s:5:\"speed\";s:4:\"1500\";s:5:\"start\";s:4:\"3000\";s:1:\"x\";s:3:\"580\";s:1:\"y\";s:2:\"90\";}i:6;a:15:{s:6:\"status\";s:1:\"1\";s:12:\"element_type\";s:5:\"image\";s:5:\"image\";s:39:\"catalog/themegloballite/tg-subimg13.png\";s:9:\"image_url\";s:0:\"\";s:17:\"image_url_new_tab\";s:1:\"0\";s:4:\"text\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:5:\"style\";s:0:\"\";s:15:\"animation_class\";s:3:\"sft\";s:6:\"easing\";s:11:\"easeOutBack\";s:9:\"endeasing\";s:11:\"easeOutBack\";s:5:\"speed\";s:4:\"1500\";s:5:\"start\";s:4:\"3500\";s:1:\"x\";s:3:\"250\";s:1:\"y\";s:3:\"185\";}i:7;a:15:{s:6:\"status\";s:1:\"1\";s:12:\"element_type\";s:5:\"image\";s:5:\"image\";s:38:\"catalog/themegloballite/tg-subimg2.png\";s:9:\"image_url\";s:0:\"\";s:17:\"image_url_new_tab\";s:1:\"0\";s:4:\"text\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:5:\"style\";s:0:\"\";s:15:\"animation_class\";s:3:\"sft\";s:6:\"easing\";s:11:\"easeOutBack\";s:9:\"endeasing\";s:11:\"easeOutBack\";s:5:\"speed\";s:4:\"1500\";s:5:\"start\";s:4:\"4000\";s:1:\"x\";s:3:\"261\";s:1:\"y\";s:2:\"81\";}i:8;a:15:{s:6:\"status\";s:1:\"1\";s:12:\"element_type\";s:5:\"image\";s:5:\"image\";s:38:\"catalog/themegloballite/tg-subimg5.png\";s:9:\"image_url\";s:0:\"\";s:17:\"image_url_new_tab\";s:1:\"0\";s:4:\"text\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:5:\"style\";s:0:\"\";s:15:\"animation_class\";s:3:\"lfl\";s:6:\"easing\";s:11:\"easeOutBack\";s:9:\"endeasing\";s:11:\"easeOutBack\";s:5:\"speed\";s:4:\"1500\";s:5:\"start\";s:4:\"4000\";s:1:\"x\";s:3:\"460\";s:1:\"y\";s:3:\"100\";}i:9;a:15:{s:6:\"status\";s:1:\"1\";s:12:\"element_type\";s:5:\"image\";s:5:\"image\";s:38:\"catalog/themegloballite/tg-subimg3.png\";s:9:\"image_url\";s:0:\"\";s:17:\"image_url_new_tab\";s:1:\"0\";s:4:\"text\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:5:\"style\";s:0:\"\";s:15:\"animation_class\";s:3:\"sfl\";s:6:\"easing\";s:11:\"easeOutBack\";s:9:\"endeasing\";s:11:\"easeOutBack\";s:5:\"speed\";s:4:\"1500\";s:5:\"start\";s:4:\"4500\";s:1:\"x\";s:3:\"630\";s:1:\"y\";s:3:\"196\";}i:10;a:15:{s:6:\"status\";s:1:\"1\";s:12:\"element_type\";s:5:\"image\";s:5:\"image\";s:38:\"catalog/themegloballite/tg-subimg4.png\";s:9:\"image_url\";s:0:\"\";s:17:\"image_url_new_tab\";s:1:\"0\";s:4:\"text\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:5:\"style\";s:0:\"\";s:15:\"animation_class\";s:3:\"sfr\";s:6:\"easing\";s:11:\"easeOutBack\";s:9:\"endeasing\";s:11:\"easeOutBack\";s:5:\"speed\";s:4:\"1500\";s:5:\"start\";s:4:\"5500\";s:1:\"x\";s:2:\"75\";s:1:\"y\";s:3:\"154\";}i:11;a:15:{s:6:\"status\";s:1:\"1\";s:12:\"element_type\";s:5:\"image\";s:5:\"image\";s:38:\"catalog/themegloballite/tg-subimg6.png\";s:9:\"image_url\";s:0:\"\";s:17:\"image_url_new_tab\";s:1:\"0\";s:4:\"text\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:5:\"style\";s:0:\"\";s:15:\"animation_class\";s:3:\"lfb\";s:6:\"easing\";s:11:\"easeOutBack\";s:9:\"endeasing\";s:11:\"easeOutBack\";s:5:\"speed\";s:4:\"1500\";s:5:\"start\";s:4:\"6000\";s:1:\"x\";s:3:\"220\";s:1:\"y\";s:3:\"316\";}i:12;a:15:{s:6:\"status\";s:1:\"1\";s:12:\"element_type\";s:5:\"image\";s:5:\"image\";s:38:\"catalog/themegloballite/tg-subimg7.png\";s:9:\"image_url\";s:0:\"\";s:17:\"image_url_new_tab\";s:1:\"0\";s:4:\"text\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:5:\"style\";s:0:\"\";s:15:\"animation_class\";s:3:\"sfb\";s:6:\"easing\";s:11:\"easeOutBack\";s:9:\"endeasing\";s:11:\"easeOutBack\";s:5:\"speed\";s:4:\"2000\";s:5:\"start\";s:4:\"7000\";s:1:\"x\";s:3:\"520\";s:1:\"y\";s:3:\"375\";}i:13;a:15:{s:6:\"status\";s:1:\"1\";s:12:\"element_type\";s:5:\"image\";s:5:\"image\";s:38:\"catalog/themegloballite/tg-subimg8.png\";s:9:\"image_url\";s:0:\"\";s:17:\"image_url_new_tab\";s:1:\"0\";s:4:\"text\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:5:\"style\";s:0:\"\";s:15:\"animation_class\";s:3:\"sfb\";s:6:\"easing\";s:11:\"easeOutBack\";s:9:\"endeasing\";s:11:\"easeOutBack\";s:5:\"speed\";s:4:\"2000\";s:5:\"start\";s:4:\"8000\";s:1:\"x\";s:3:\"305\";s:1:\"y\";s:3:\"355\";}i:14;a:15:{s:6:\"status\";s:1:\"1\";s:12:\"element_type\";s:5:\"image\";s:5:\"image\";s:38:\"catalog/themegloballite/tg-subimg9.png\";s:9:\"image_url\";s:0:\"\";s:17:\"image_url_new_tab\";s:1:\"0\";s:4:\"text\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:5:\"style\";s:0:\"\";s:15:\"animation_class\";s:3:\"sfb\";s:6:\"easing\";s:11:\"easeOutBack\";s:9:\"endeasing\";s:11:\"easeOutBack\";s:5:\"speed\";s:4:\"2000\";s:5:\"start\";s:4:\"8300\";s:1:\"x\";s:3:\"340\";s:1:\"y\";s:3:\"360\";}i:15;a:15:{s:6:\"status\";s:1:\"1\";s:12:\"element_type\";s:5:\"image\";s:5:\"image\";s:39:\"catalog/themegloballite/tg-subimg10.png\";s:9:\"image_url\";s:0:\"\";s:17:\"image_url_new_tab\";s:1:\"0\";s:4:\"text\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:5:\"style\";s:0:\"\";s:15:\"animation_class\";s:3:\"sfb\";s:6:\"easing\";s:11:\"easeOutBack\";s:9:\"endeasing\";s:11:\"easeOutBack\";s:5:\"speed\";s:4:\"2000\";s:5:\"start\";s:4:\"8800\";s:1:\"x\";s:3:\"475\";s:1:\"y\";s:3:\"355\";}i:16;a:15:{s:6:\"status\";s:1:\"1\";s:12:\"element_type\";s:4:\"html\";s:5:\"image\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:17:\"image_url_new_tab\";s:1:\"0\";s:4:\"text\";s:17:\"ThemeGlobal Lite \";s:13:\"element_class\";s:16:\"new_element_1_16\";s:5:\"style\";s:77:\".new_element_1_16 {font-size: 40px;text-transform: uppercase;color: #FFFFFF;}\";s:15:\"animation_class\";s:3:\"sfr\";s:6:\"easing\";s:11:\"easeOutBack\";s:9:\"endeasing\";s:11:\"easeOutBack\";s:5:\"speed\";s:4:\"2000\";s:5:\"start\";s:5:\"10000\";s:1:\"x\";s:3:\"775\";s:1:\"y\";s:3:\"110\";}i:17;a:15:{s:6:\"status\";s:1:\"1\";s:12:\"element_type\";s:4:\"html\";s:5:\"image\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:17:\"image_url_new_tab\";s:1:\"0\";s:4:\"text\";s:55:\"The best responsive 100% FREE OpenCart 2.0 theme ever. \";s:13:\"element_class\";s:16:\"new_element_1_17\";s:5:\"style\";s:71:\".new_element_1_17 {font-size: 16px;color: #FFFFFF;font-weight: normal;}\";s:15:\"animation_class\";s:3:\"sfr\";s:6:\"easing\";s:11:\"easeOutBack\";s:9:\"endeasing\";s:11:\"easeOutBack\";s:5:\"speed\";s:4:\"2000\";s:5:\"start\";s:5:\"10000\";s:1:\"x\";s:3:\"775\";s:1:\"y\";s:3:\"190\";}i:18;a:15:{s:6:\"status\";s:1:\"1\";s:12:\"element_type\";s:4:\"html\";s:5:\"image\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:17:\"image_url_new_tab\";s:1:\"0\";s:4:\"text\";s:56:\"Powerful Admin - endless customizition possibility, with\";s:13:\"element_class\";s:16:\"new_element_1_18\";s:5:\"style\";s:71:\".new_element_1_18 {font-size: 16px;color: #FFFFFF;font-weight: normal;}\";s:15:\"animation_class\";s:3:\"sfr\";s:6:\"easing\";s:11:\"easeOutBack\";s:9:\"endeasing\";s:11:\"easeOutBack\";s:5:\"speed\";s:4:\"2000\";s:5:\"start\";s:5:\"10000\";s:1:\"x\";s:3:\"775\";s:1:\"y\";s:3:\"220\";}i:19;a:15:{s:6:\"status\";s:1:\"1\";s:12:\"element_type\";s:4:\"html\";s:5:\"image\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:17:\"image_url_new_tab\";s:1:\"0\";s:4:\"text\";s:55:\"skin saving. Revolution Slider - you can add unlimited \";s:13:\"element_class\";s:16:\"new_element_1_19\";s:5:\"style\";s:71:\".new_element_1_19 {font-size: 16px;color: #FFFFFF;font-weight: normal;}\";s:15:\"animation_class\";s:3:\"sfr\";s:6:\"easing\";s:11:\"easeOutBack\";s:9:\"endeasing\";s:11:\"easeOutBack\";s:5:\"speed\";s:4:\"2000\";s:5:\"start\";s:5:\"10000\";s:1:\"x\";s:3:\"775\";s:1:\"y\";s:3:\"250\";}i:20;a:15:{s:6:\"status\";s:1:\"1\";s:12:\"element_type\";s:4:\"html\";s:5:\"image\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:17:\"image_url_new_tab\";s:1:\"0\";s:4:\"text\";s:56:\"slides and sub-slides. Easy to install with sample data.\";s:13:\"element_class\";s:16:\"new_element_1_20\";s:5:\"style\";s:71:\".new_element_1_20 {font-size: 16px;color: #FFFFFF;font-weight: normal;}\";s:15:\"animation_class\";s:3:\"sfr\";s:6:\"easing\";s:11:\"easeOutBack\";s:9:\"endeasing\";s:11:\"easeOutBack\";s:5:\"speed\";s:4:\"2000\";s:5:\"start\";s:5:\"10000\";s:1:\"x\";s:3:\"775\";s:1:\"y\";s:3:\"280\";}i:21;a:15:{s:6:\"status\";s:1:\"1\";s:12:\"element_type\";s:5:\"image\";s:5:\"image\";s:36:\"catalog/themegloballite/readmore.png\";s:9:\"image_url\";s:22:\"http://themeglobal.com\";s:17:\"image_url_new_tab\";s:1:\"0\";s:4:\"text\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:5:\"style\";s:0:\"\";s:15:\"animation_class\";s:3:\"sfr\";s:6:\"easing\";s:11:\"easeOutBack\";s:9:\"endeasing\";s:11:\"easeOutBack\";s:5:\"speed\";s:4:\"2000\";s:5:\"start\";s:5:\"10000\";s:1:\"x\";s:3:\"775\";s:1:\"y\";s:3:\"340\";}}}}i:2;a:1:{i:1;a:5:{s:6:\"status\";s:1:\"1\";s:6:\"slider\";s:34:\"catalog/themegloballite/slide2.jpg\";s:17:\"transition_effect\";s:6:\"random\";s:4:\"link\";s:0:\"\";s:8:\"elements\";a:6:{i:1;a:15:{s:6:\"status\";s:1:\"1\";s:12:\"element_type\";s:5:\"image\";s:5:\"image\";s:39:\"catalog/themegloballite/tg-sub2img1.png\";s:9:\"image_url\";s:0:\"\";s:17:\"image_url_new_tab\";s:1:\"0\";s:4:\"text\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:5:\"style\";s:0:\"\";s:15:\"animation_class\";s:3:\"lfb\";s:6:\"easing\";s:11:\"easeInQuart\";s:9:\"endeasing\";s:10:\"easeInBack\";s:5:\"speed\";s:4:\"2000\";s:5:\"start\";s:3:\"500\";s:1:\"x\";s:3:\"150\";s:1:\"y\";s:2:\"66\";}i:2;a:15:{s:6:\"status\";s:1:\"1\";s:12:\"element_type\";s:4:\"html\";s:5:\"image\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:17:\"image_url_new_tab\";s:1:\"0\";s:4:\"text\";s:21:\"100% Fully Responsive\";s:13:\"element_class\";s:16:\"new_element_2_23\";s:5:\"style\";s:77:\".new_element_2_23 {font-size: 40px;text-transform: uppercase;color: #FFFFFF;}\";s:15:\"animation_class\";s:3:\"lfr\";s:6:\"easing\";s:11:\"easeOutBack\";s:9:\"endeasing\";s:11:\"easeOutBack\";s:5:\"speed\";s:4:\"2000\";s:5:\"start\";s:4:\"2000\";s:1:\"x\";s:3:\"580\";s:1:\"y\";s:3:\"100\";}i:3;a:15:{s:6:\"status\";s:1:\"1\";s:12:\"element_type\";s:4:\"html\";s:5:\"image\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:17:\"image_url_new_tab\";s:1:\"0\";s:4:\"text\";s:78:\"Full functionality of your OpenCart store on all mobile devices is guaranteed.\";s:13:\"element_class\";s:16:\"new_element_2_24\";s:5:\"style\";s:71:\".new_element_2_24 {font-size: 16px;color: #FFFFFF;font-weight: normal;}\";s:15:\"animation_class\";s:3:\"lfr\";s:6:\"easing\";s:11:\"easeOutBack\";s:9:\"endeasing\";s:11:\"easeOutBack\";s:5:\"speed\";s:4:\"2000\";s:5:\"start\";s:4:\"3000\";s:1:\"x\";s:3:\"585\";s:1:\"y\";s:3:\"190\";}i:4;a:15:{s:6:\"status\";s:1:\"1\";s:12:\"element_type\";s:4:\"html\";s:5:\"image\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:17:\"image_url_new_tab\";s:1:\"0\";s:4:\"text\";s:71:\"Compatible with the latest desktop and mobile browsers. Works perfectly\";s:13:\"element_class\";s:16:\"new_element_2_25\";s:5:\"style\";s:71:\".new_element_2_25 {font-size: 16px;color: #FFFFFF;font-weight: normal;}\";s:15:\"animation_class\";s:3:\"lfr\";s:6:\"easing\";s:11:\"easeOutBack\";s:9:\"endeasing\";s:11:\"easeOutBack\";s:5:\"speed\";s:4:\"2000\";s:5:\"start\";s:4:\"3000\";s:1:\"x\";s:3:\"585\";s:1:\"y\";s:3:\"220\";}i:5;a:15:{s:6:\"status\";s:1:\"1\";s:12:\"element_type\";s:4:\"html\";s:5:\"image\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:17:\"image_url_new_tab\";s:1:\"0\";s:4:\"text\";s:40:\"wherever you need and wherever you want.\";s:13:\"element_class\";s:16:\"new_element_2_26\";s:5:\"style\";s:70:\".new_element_2_26{font-size: 16px;color: #FFFFFF;font-weight: normal;}\";s:15:\"animation_class\";s:3:\"lfr\";s:6:\"easing\";s:11:\"easeOutBack\";s:9:\"endeasing\";s:11:\"easeOutBack\";s:5:\"speed\";s:4:\"2000\";s:5:\"start\";s:4:\"3000\";s:1:\"x\";s:3:\"585\";s:1:\"y\";s:3:\"250\";}i:6;a:15:{s:6:\"status\";s:1:\"1\";s:12:\"element_type\";s:5:\"image\";s:5:\"image\";s:36:\"catalog/themegloballite/readmore.png\";s:9:\"image_url\";s:22:\"http://themeglobal.com\";s:17:\"image_url_new_tab\";s:1:\"0\";s:4:\"text\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:5:\"style\";s:0:\"\";s:15:\"animation_class\";s:3:\"lfb\";s:6:\"easing\";s:11:\"easeOutBack\";s:9:\"endeasing\";s:11:\"easeOutBack\";s:5:\"speed\";s:4:\"2000\";s:5:\"start\";s:4:\"4000\";s:1:\"x\";s:3:\"585\";s:1:\"y\";s:3:\"320\";}}}}}');
/*!40000 ALTER TABLE `oc_tg_tglite_revolution_slider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_upload`
--

DROP TABLE IF EXISTS `oc_upload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_upload` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`upload_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_upload`
--

LOCK TABLES `oc_upload` WRITE;
/*!40000 ALTER TABLE `oc_upload` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_upload` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_url_alias`
--

DROP TABLE IF EXISTS `oc_url_alias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_url_alias` (
  `url_alias_id` int(11) NOT NULL AUTO_INCREMENT,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`url_alias_id`),
  KEY `query` (`query`),
  KEY `keyword` (`keyword`)
) ENGINE=MyISAM AUTO_INCREMENT=938 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_url_alias`
--

LOCK TABLES `oc_url_alias` WRITE;
/*!40000 ALTER TABLE `oc_url_alias` DISABLE KEYS */;
INSERT INTO `oc_url_alias` VALUES (920,'information_id=4','about_us'),(901,'blogcategory_id=25',''),(932,'category_id=95',''),(929,'category_id=92',''),(930,'category_id=93',''),(931,'category_id=94',''),(924,'category_id=87',''),(923,'category_id=86',''),(918,'information_id=6','delivery'),(935,'information_id=3','privacy'),(937,'information_id=5','terms'),(922,'category_id=85',''),(904,'blogcategory_id=26',''),(905,'blogcategory_id=27',''),(933,'category_id=96',''),(934,'category_id=97','');
/*!40000 ALTER TABLE `oc_url_alias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_user`
--

DROP TABLE IF EXISTS `oc_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_user`
--

LOCK TABLES `oc_user` WRITE;
/*!40000 ALTER TABLE `oc_user` DISABLE KEYS */;
INSERT INTO `oc_user` VALUES (1,1,'admin','11371684856da7d889113b4131d9342e0a9d43e4','f22acff7e','John','Doe','dfonseca@visiona-ip.es','','d38563ae0934ec7c35a2ff1e00c7910af5b9fe12','217.125.140.200',1,'2015-07-30 19:02:28');
/*!40000 ALTER TABLE `oc_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_user_group`
--

DROP TABLE IF EXISTS `oc_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_user_group` (
  `user_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`user_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_user_group`
--

LOCK TABLES `oc_user_group` WRITE;
/*!40000 ALTER TABLE `oc_user_group` DISABLE KEYS */;
INSERT INTO `oc_user_group` VALUES (1,'Administrator','a:2:{s:6:\"access\";a:324:{i:0;s:17:\"catalog/attribute\";i:1;s:23:\"catalog/attribute_group\";i:2;s:16:\"catalog/category\";i:3;s:16:\"catalog/download\";i:4;s:14:\"catalog/filter\";i:5;s:19:\"catalog/information\";i:6;s:20:\"catalog/manufacturer\";i:7;s:14:\"catalog/option\";i:8;s:15:\"catalog/product\";i:9;s:17:\"catalog/recurring\";i:10;s:14:\"catalog/review\";i:11;s:18:\"common/column_left\";i:12;s:18:\"common/filemanager\";i:13;s:11:\"common/menu\";i:14;s:14:\"common/profile\";i:15;s:12:\"common/stats\";i:16;s:13:\"design/banner\";i:17;s:13:\"design/layout\";i:18;s:14:\"extension/feed\";i:19;s:15:\"extension/fraud\";i:20;s:19:\"extension/installer\";i:21;s:22:\"extension/modification\";i:22;s:16:\"extension/module\";i:23;s:17:\"extension/openbay\";i:24;s:17:\"extension/payment\";i:25;s:18:\"extension/shipping\";i:26;s:15:\"extension/total\";i:27;s:16:\"feed/google_base\";i:28;s:19:\"feed/google_sitemap\";i:29;s:15:\"feed/openbaypro\";i:30;s:18:\"fraud/fraudlabspro\";i:31;s:13:\"fraud/maxmind\";i:32;s:20:\"localisation/country\";i:33;s:21:\"localisation/currency\";i:34;s:21:\"localisation/geo_zone\";i:35;s:21:\"localisation/language\";i:36;s:25:\"localisation/length_class\";i:37;s:21:\"localisation/location\";i:38;s:25:\"localisation/order_status\";i:39;s:26:\"localisation/return_action\";i:40;s:26:\"localisation/return_reason\";i:41;s:26:\"localisation/return_status\";i:42;s:25:\"localisation/stock_status\";i:43;s:22:\"localisation/tax_class\";i:44;s:21:\"localisation/tax_rate\";i:45;s:25:\"localisation/weight_class\";i:46;s:17:\"localisation/zone\";i:47;s:19:\"marketing/affiliate\";i:48;s:17:\"marketing/contact\";i:49;s:16:\"marketing/coupon\";i:50;s:19:\"marketing/marketing\";i:51;s:14:\"module/account\";i:52;s:16:\"module/affiliate\";i:53;s:20:\"module/amazon_button\";i:54;s:19:\"module/amazon_login\";i:55;s:17:\"module/amazon_pay\";i:56;s:13:\"module/banner\";i:57;s:17:\"module/bestseller\";i:58;s:15:\"module/carousel\";i:59;s:15:\"module/category\";i:60;s:19:\"module/ebay_listing\";i:61;s:15:\"module/featured\";i:62;s:13:\"module/filter\";i:63;s:22:\"module/google_hangouts\";i:64;s:11:\"module/html\";i:65;s:18:\"module/information\";i:66;s:13:\"module/latest\";i:67;s:16:\"module/pp_button\";i:68;s:15:\"module/pp_login\";i:69;s:16:\"module/slideshow\";i:70;s:14:\"module/special\";i:71;s:12:\"module/store\";i:72;s:14:\"openbay/amazon\";i:73;s:22:\"openbay/amazon_listing\";i:74;s:22:\"openbay/amazon_product\";i:75;s:16:\"openbay/amazonus\";i:76;s:24:\"openbay/amazonus_listing\";i:77;s:24:\"openbay/amazonus_product\";i:78;s:12:\"openbay/ebay\";i:79;s:20:\"openbay/ebay_profile\";i:80;s:21:\"openbay/ebay_template\";i:81;s:12:\"openbay/etsy\";i:82;s:20:\"openbay/etsy_product\";i:83;s:21:\"openbay/etsy_shipping\";i:84;s:17:\"openbay/etsy_shop\";i:85;s:23:\"payment/amazon_checkout\";i:86;s:24:\"payment/amazon_login_pay\";i:87;s:24:\"payment/authorizenet_aim\";i:88;s:24:\"payment/authorizenet_sim\";i:89;s:21:\"payment/bank_transfer\";i:90;s:22:\"payment/bluepay_hosted\";i:91;s:24:\"payment/bluepay_redirect\";i:92;s:14:\"payment/cheque\";i:93;s:11:\"payment/cod\";i:94;s:17:\"payment/firstdata\";i:95;s:24:\"payment/firstdata_remote\";i:96;s:21:\"payment/free_checkout\";i:97;s:14:\"payment/g2apay\";i:98;s:17:\"payment/globalpay\";i:99;s:24:\"payment/globalpay_remote\";i:100;s:22:\"payment/klarna_account\";i:101;s:22:\"payment/klarna_invoice\";i:102;s:14:\"payment/liqpay\";i:103;s:14:\"payment/nochex\";i:104;s:15:\"payment/paymate\";i:105;s:16:\"payment/paypoint\";i:106;s:13:\"payment/payza\";i:107;s:26:\"payment/perpetual_payments\";i:108;s:18:\"payment/pp_express\";i:109;s:18:\"payment/pp_payflow\";i:110;s:25:\"payment/pp_payflow_iframe\";i:111;s:14:\"payment/pp_pro\";i:112;s:21:\"payment/pp_pro_iframe\";i:113;s:19:\"payment/pp_standard\";i:114;s:14:\"payment/realex\";i:115;s:21:\"payment/realex_remote\";i:116;s:22:\"payment/sagepay_direct\";i:117;s:22:\"payment/sagepay_server\";i:118;s:18:\"payment/sagepay_us\";i:119;s:24:\"payment/securetrading_pp\";i:120;s:24:\"payment/securetrading_ws\";i:121;s:14:\"payment/skrill\";i:122;s:19:\"payment/twocheckout\";i:123;s:28:\"payment/web_payment_software\";i:124;s:16:\"payment/worldpay\";i:125;s:16:\"report/affiliate\";i:126;s:25:\"report/affiliate_activity\";i:127;s:22:\"report/affiliate_login\";i:128;s:24:\"report/customer_activity\";i:129;s:22:\"report/customer_credit\";i:130;s:21:\"report/customer_login\";i:131;s:22:\"report/customer_online\";i:132;s:21:\"report/customer_order\";i:133;s:22:\"report/customer_reward\";i:134;s:16:\"report/marketing\";i:135;s:24:\"report/product_purchased\";i:136;s:21:\"report/product_viewed\";i:137;s:18:\"report/sale_coupon\";i:138;s:17:\"report/sale_order\";i:139;s:18:\"report/sale_return\";i:140;s:20:\"report/sale_shipping\";i:141;s:15:\"report/sale_tax\";i:142;s:17:\"sale/custom_field\";i:143;s:13:\"sale/customer\";i:144;s:20:\"sale/customer_ban_ip\";i:145;s:19:\"sale/customer_group\";i:146;s:10:\"sale/order\";i:147;s:14:\"sale/recurring\";i:148;s:11:\"sale/return\";i:149;s:12:\"sale/voucher\";i:150;s:18:\"sale/voucher_theme\";i:151;s:15:\"setting/setting\";i:152;s:13:\"setting/store\";i:153;s:16:\"shipping/auspost\";i:154;s:17:\"shipping/citylink\";i:155;s:14:\"shipping/fedex\";i:156;s:13:\"shipping/flat\";i:157;s:13:\"shipping/free\";i:158;s:13:\"shipping/item\";i:159;s:23:\"shipping/parcelforce_48\";i:160;s:15:\"shipping/pickup\";i:161;s:19:\"shipping/royal_mail\";i:162;s:12:\"shipping/ups\";i:163;s:13:\"shipping/usps\";i:164;s:15:\"shipping/weight\";i:165;s:11:\"tool/backup\";i:166;s:14:\"tool/error_log\";i:167;s:11:\"tool/upload\";i:168;s:12:\"total/coupon\";i:169;s:12:\"total/credit\";i:170;s:14:\"total/handling\";i:171;s:16:\"total/klarna_fee\";i:172;s:19:\"total/low_order_fee\";i:173;s:12:\"total/reward\";i:174;s:14:\"total/shipping\";i:175;s:15:\"total/sub_total\";i:176;s:9:\"total/tax\";i:177;s:11:\"total/total\";i:178;s:13:\"total/voucher\";i:179;s:8:\"user/api\";i:180;s:9:\"user/user\";i:181;s:20:\"user/user_permission\";i:182;s:18:\"module/information\";i:183;s:19:\"module/manufacturer\";i:184;s:19:\"module/manufacturer\";i:185;s:14:\"module/popular\";i:186;s:18:\"module/multiseller\";i:187;s:16:\"multiseller/base\";i:188;s:19:\"multiseller/product\";i:189;s:21:\"multiseller/attribute\";i:190;s:19:\"multiseller/payment\";i:191;s:18:\"multiseller/seller\";i:192;s:23:\"multiseller/transaction\";i:193;s:24:\"multiseller/seller-group\";i:194;s:18:\"module/multiseller\";i:195;s:16:\"multiseller/base\";i:196;s:19:\"multiseller/product\";i:197;s:21:\"multiseller/attribute\";i:198;s:19:\"multiseller/payment\";i:199;s:18:\"multiseller/seller\";i:200;s:23:\"multiseller/transaction\";i:201;s:24:\"multiseller/seller-group\";i:202;s:18:\"module/multiseller\";i:203;s:16:\"multiseller/base\";i:204;s:19:\"multiseller/product\";i:205;s:21:\"multiseller/attribute\";i:206;s:19:\"multiseller/payment\";i:207;s:18:\"multiseller/seller\";i:208;s:23:\"multiseller/transaction\";i:209;s:21:\"multiseller/dashboard\";i:210;s:17:\"multiseller/debug\";i:211;s:24:\"multiseller/seller-group\";i:212;s:34:\"module/tg_themegloballite_settings\";i:213;s:34:\"module/tg_tglite_revolution_slider\";i:214;s:34:\"module/tg_themegloballite_megamenu\";i:215;s:31:\"module/tg_tglite_filter_product\";i:216;s:18:\"module/pavmegamenu\";i:217;s:19:\"module/themecontrol\";i:218;s:22:\"module/pavblogcategory\";i:219;s:21:\"module/pavblogcomment\";i:220;s:20:\"module/pavbloglatest\";i:221;s:14:\"module/pavblog\";i:222;s:16:\"module/pavcustom\";i:223;s:16:\"module/pp_button\";i:224;s:21:\"module/pavtestimonial\";i:225;s:21:\"module/pavproducttabs\";i:226;s:20:\"module/pavnewsletter\";i:227;s:21:\"module/pavsliderlayer\";i:228;s:20:\"module/pavfooterlink\";i:229;s:15:\"module/featured\";i:230;s:13:\"module/banner\";i:231;s:17:\"module/bestseller\";i:232;s:21:\"module/pavsliderlayer\";i:233;s:21:\"module/pavsliderlayer\";i:234;s:16:\"module/affiliate\";i:235;s:20:\"module/amazon_button\";i:236;s:13:\"module/filter\";i:237;s:22:\"module/google_hangouts\";i:238;s:11:\"module/html\";i:239;s:15:\"module/pp_login\";i:240;s:19:\"module/amazon_login\";i:241;s:17:\"module/amazon_pay\";i:242;s:16:\"module/slideshow\";i:243;s:14:\"module/special\";i:244;s:12:\"module/store\";i:245;s:19:\"module/ebay_listing\";i:246;s:28:\"module/multimerch_newsellers\";i:247;s:27:\"module/multimerch_messaging\";i:248;s:24:\"module/multimerch_badges\";i:249;s:17:\"multiseller/badge\";i:250;s:30:\"module/multimerch_social_links\";i:251;s:23:\"multiseller/social_link\";i:252;s:25:\"module/multimerch_masspay\";i:253;s:26:\"module/multimerch_comments\";i:254;s:19:\"multiseller/comment\";i:255;s:26:\"module/multimerch_shipping\";i:256;s:27:\"multiseller/shipping-method\";i:257;s:17:\"total/ms_shipping\";i:258;s:28:\"module/multimerch_topsellers\";i:259;s:26:\"module/multimerch_comments\";i:260;s:19:\"multiseller/comment\";i:261;s:26:\"module/multimerch_shipping\";i:262;s:27:\"multiseller/shipping-method\";i:263;s:17:\"total/ms_shipping\";i:264;s:14:\"module/sellers\";i:265;s:14:\"module/sellers\";i:266;s:14:\"payment/stripe\";i:267;s:21:\"payment/bank_transfer\";i:268;s:10:\"module/iot\";i:269;s:10:\"module/iot\";i:270;s:10:\"module/iot\";i:271;s:17:\"total/ms_shipping\";i:272;s:15:\"module/carousel\";i:273;s:14:\"module/sellers\";i:274;s:19:\"feed/google_sitemap\";i:275;s:27:\"module/multimerch_messaging\";i:276;s:24:\"module/multimerch_badges\";i:277;s:17:\"multiseller/badge\";i:278;s:30:\"module/multimerch_social_links\";i:279;s:23:\"multiseller/social_link\";i:280;s:28:\"module/multimerch_newsellers\";i:281;s:25:\"module/multimerch_masspay\";i:282;s:26:\"module/multimerch_comments\";i:283;s:19:\"multiseller/comment\";i:284;s:26:\"module/multimerch_shipping\";i:285;s:27:\"multiseller/shipping-method\";i:286;s:17:\"total/ms_shipping\";i:287;s:28:\"module/multimerch_topsellers\";i:288;s:14:\"module/account\";i:289;s:16:\"module/affiliate\";i:290;s:17:\"module/bestseller\";i:291;s:13:\"module/banner\";i:292;s:15:\"module/carousel\";i:293;s:15:\"module/category\";i:294;s:20:\"module/amazon_button\";i:295;s:15:\"module/featured\";i:296;s:13:\"module/filter\";i:297;s:11:\"module/html\";i:298;s:10:\"module/iot\";i:299;s:18:\"module/information\";i:300;s:22:\"module/google_hangouts\";i:301;s:13:\"module/latest\";i:302;s:15:\"module/pp_login\";i:303;s:19:\"module/manufacturer\";i:304;s:22:\"module/pavblogcategory\";i:305;s:21:\"module/pavblogcomment\";i:306;s:20:\"module/pavbloglatest\";i:307;s:14:\"module/pavblog\";i:308;s:19:\"module/amazon_login\";i:309;s:16:\"module/pavcustom\";i:310;s:20:\"module/pavfooterlink\";i:311;s:21:\"module/pavsliderlayer\";i:312;s:20:\"module/pavnewsletter\";i:313;s:21:\"module/pavproducttabs\";i:314;s:21:\"module/pavtestimonial\";i:315;s:17:\"module/amazon_pay\";i:316;s:16:\"module/pp_button\";i:317;s:14:\"module/popular\";i:318;s:16:\"module/slideshow\";i:319;s:14:\"module/special\";i:320;s:12:\"module/store\";i:321;s:19:\"module/ebay_listing\";i:322;s:19:\"feed/google_sitemap\";i:323;s:16:\"feed/google_base\";}s:6:\"modify\";a:324:{i:0;s:17:\"catalog/attribute\";i:1;s:23:\"catalog/attribute_group\";i:2;s:16:\"catalog/category\";i:3;s:16:\"catalog/download\";i:4;s:14:\"catalog/filter\";i:5;s:19:\"catalog/information\";i:6;s:20:\"catalog/manufacturer\";i:7;s:14:\"catalog/option\";i:8;s:15:\"catalog/product\";i:9;s:17:\"catalog/recurring\";i:10;s:14:\"catalog/review\";i:11;s:18:\"common/column_left\";i:12;s:18:\"common/filemanager\";i:13;s:11:\"common/menu\";i:14;s:14:\"common/profile\";i:15;s:12:\"common/stats\";i:16;s:13:\"design/banner\";i:17;s:13:\"design/layout\";i:18;s:14:\"extension/feed\";i:19;s:15:\"extension/fraud\";i:20;s:19:\"extension/installer\";i:21;s:22:\"extension/modification\";i:22;s:16:\"extension/module\";i:23;s:17:\"extension/openbay\";i:24;s:17:\"extension/payment\";i:25;s:18:\"extension/shipping\";i:26;s:15:\"extension/total\";i:27;s:16:\"feed/google_base\";i:28;s:19:\"feed/google_sitemap\";i:29;s:15:\"feed/openbaypro\";i:30;s:18:\"fraud/fraudlabspro\";i:31;s:13:\"fraud/maxmind\";i:32;s:20:\"localisation/country\";i:33;s:21:\"localisation/currency\";i:34;s:21:\"localisation/geo_zone\";i:35;s:21:\"localisation/language\";i:36;s:25:\"localisation/length_class\";i:37;s:21:\"localisation/location\";i:38;s:25:\"localisation/order_status\";i:39;s:26:\"localisation/return_action\";i:40;s:26:\"localisation/return_reason\";i:41;s:26:\"localisation/return_status\";i:42;s:25:\"localisation/stock_status\";i:43;s:22:\"localisation/tax_class\";i:44;s:21:\"localisation/tax_rate\";i:45;s:25:\"localisation/weight_class\";i:46;s:17:\"localisation/zone\";i:47;s:19:\"marketing/affiliate\";i:48;s:17:\"marketing/contact\";i:49;s:16:\"marketing/coupon\";i:50;s:19:\"marketing/marketing\";i:51;s:14:\"module/account\";i:52;s:16:\"module/affiliate\";i:53;s:20:\"module/amazon_button\";i:54;s:19:\"module/amazon_login\";i:55;s:17:\"module/amazon_pay\";i:56;s:13:\"module/banner\";i:57;s:17:\"module/bestseller\";i:58;s:15:\"module/carousel\";i:59;s:15:\"module/category\";i:60;s:19:\"module/ebay_listing\";i:61;s:15:\"module/featured\";i:62;s:13:\"module/filter\";i:63;s:22:\"module/google_hangouts\";i:64;s:11:\"module/html\";i:65;s:18:\"module/information\";i:66;s:13:\"module/latest\";i:67;s:16:\"module/pp_button\";i:68;s:15:\"module/pp_login\";i:69;s:16:\"module/slideshow\";i:70;s:14:\"module/special\";i:71;s:12:\"module/store\";i:72;s:14:\"openbay/amazon\";i:73;s:22:\"openbay/amazon_listing\";i:74;s:22:\"openbay/amazon_product\";i:75;s:16:\"openbay/amazonus\";i:76;s:24:\"openbay/amazonus_listing\";i:77;s:24:\"openbay/amazonus_product\";i:78;s:12:\"openbay/ebay\";i:79;s:20:\"openbay/ebay_profile\";i:80;s:21:\"openbay/ebay_template\";i:81;s:12:\"openbay/etsy\";i:82;s:20:\"openbay/etsy_product\";i:83;s:21:\"openbay/etsy_shipping\";i:84;s:17:\"openbay/etsy_shop\";i:85;s:23:\"payment/amazon_checkout\";i:86;s:24:\"payment/amazon_login_pay\";i:87;s:24:\"payment/authorizenet_aim\";i:88;s:24:\"payment/authorizenet_sim\";i:89;s:21:\"payment/bank_transfer\";i:90;s:22:\"payment/bluepay_hosted\";i:91;s:24:\"payment/bluepay_redirect\";i:92;s:14:\"payment/cheque\";i:93;s:11:\"payment/cod\";i:94;s:17:\"payment/firstdata\";i:95;s:24:\"payment/firstdata_remote\";i:96;s:21:\"payment/free_checkout\";i:97;s:14:\"payment/g2apay\";i:98;s:17:\"payment/globalpay\";i:99;s:24:\"payment/globalpay_remote\";i:100;s:22:\"payment/klarna_account\";i:101;s:22:\"payment/klarna_invoice\";i:102;s:14:\"payment/liqpay\";i:103;s:14:\"payment/nochex\";i:104;s:15:\"payment/paymate\";i:105;s:16:\"payment/paypoint\";i:106;s:13:\"payment/payza\";i:107;s:26:\"payment/perpetual_payments\";i:108;s:18:\"payment/pp_express\";i:109;s:18:\"payment/pp_payflow\";i:110;s:25:\"payment/pp_payflow_iframe\";i:111;s:14:\"payment/pp_pro\";i:112;s:21:\"payment/pp_pro_iframe\";i:113;s:19:\"payment/pp_standard\";i:114;s:14:\"payment/realex\";i:115;s:21:\"payment/realex_remote\";i:116;s:22:\"payment/sagepay_direct\";i:117;s:22:\"payment/sagepay_server\";i:118;s:18:\"payment/sagepay_us\";i:119;s:24:\"payment/securetrading_pp\";i:120;s:24:\"payment/securetrading_ws\";i:121;s:14:\"payment/skrill\";i:122;s:19:\"payment/twocheckout\";i:123;s:28:\"payment/web_payment_software\";i:124;s:16:\"payment/worldpay\";i:125;s:16:\"report/affiliate\";i:126;s:25:\"report/affiliate_activity\";i:127;s:22:\"report/affiliate_login\";i:128;s:24:\"report/customer_activity\";i:129;s:22:\"report/customer_credit\";i:130;s:21:\"report/customer_login\";i:131;s:22:\"report/customer_online\";i:132;s:21:\"report/customer_order\";i:133;s:22:\"report/customer_reward\";i:134;s:16:\"report/marketing\";i:135;s:24:\"report/product_purchased\";i:136;s:21:\"report/product_viewed\";i:137;s:18:\"report/sale_coupon\";i:138;s:17:\"report/sale_order\";i:139;s:18:\"report/sale_return\";i:140;s:20:\"report/sale_shipping\";i:141;s:15:\"report/sale_tax\";i:142;s:17:\"sale/custom_field\";i:143;s:13:\"sale/customer\";i:144;s:20:\"sale/customer_ban_ip\";i:145;s:19:\"sale/customer_group\";i:146;s:10:\"sale/order\";i:147;s:14:\"sale/recurring\";i:148;s:11:\"sale/return\";i:149;s:12:\"sale/voucher\";i:150;s:18:\"sale/voucher_theme\";i:151;s:15:\"setting/setting\";i:152;s:13:\"setting/store\";i:153;s:16:\"shipping/auspost\";i:154;s:17:\"shipping/citylink\";i:155;s:14:\"shipping/fedex\";i:156;s:13:\"shipping/flat\";i:157;s:13:\"shipping/free\";i:158;s:13:\"shipping/item\";i:159;s:23:\"shipping/parcelforce_48\";i:160;s:15:\"shipping/pickup\";i:161;s:19:\"shipping/royal_mail\";i:162;s:12:\"shipping/ups\";i:163;s:13:\"shipping/usps\";i:164;s:15:\"shipping/weight\";i:165;s:11:\"tool/backup\";i:166;s:14:\"tool/error_log\";i:167;s:11:\"tool/upload\";i:168;s:12:\"total/coupon\";i:169;s:12:\"total/credit\";i:170;s:14:\"total/handling\";i:171;s:16:\"total/klarna_fee\";i:172;s:19:\"total/low_order_fee\";i:173;s:12:\"total/reward\";i:174;s:14:\"total/shipping\";i:175;s:15:\"total/sub_total\";i:176;s:9:\"total/tax\";i:177;s:11:\"total/total\";i:178;s:13:\"total/voucher\";i:179;s:8:\"user/api\";i:180;s:9:\"user/user\";i:181;s:20:\"user/user_permission\";i:182;s:18:\"module/information\";i:183;s:19:\"module/manufacturer\";i:184;s:19:\"module/manufacturer\";i:185;s:14:\"module/popular\";i:186;s:18:\"module/multiseller\";i:187;s:16:\"multiseller/base\";i:188;s:19:\"multiseller/product\";i:189;s:21:\"multiseller/attribute\";i:190;s:19:\"multiseller/payment\";i:191;s:18:\"multiseller/seller\";i:192;s:23:\"multiseller/transaction\";i:193;s:24:\"multiseller/seller-group\";i:194;s:18:\"module/multiseller\";i:195;s:16:\"multiseller/base\";i:196;s:19:\"multiseller/product\";i:197;s:21:\"multiseller/attribute\";i:198;s:19:\"multiseller/payment\";i:199;s:18:\"multiseller/seller\";i:200;s:23:\"multiseller/transaction\";i:201;s:24:\"multiseller/seller-group\";i:202;s:18:\"module/multiseller\";i:203;s:16:\"multiseller/base\";i:204;s:19:\"multiseller/product\";i:205;s:21:\"multiseller/attribute\";i:206;s:19:\"multiseller/payment\";i:207;s:18:\"multiseller/seller\";i:208;s:23:\"multiseller/transaction\";i:209;s:21:\"multiseller/dashboard\";i:210;s:17:\"multiseller/debug\";i:211;s:24:\"multiseller/seller-group\";i:212;s:34:\"module/tg_themegloballite_settings\";i:213;s:34:\"module/tg_tglite_revolution_slider\";i:214;s:34:\"module/tg_themegloballite_megamenu\";i:215;s:31:\"module/tg_tglite_filter_product\";i:216;s:18:\"module/pavmegamenu\";i:217;s:19:\"module/themecontrol\";i:218;s:22:\"module/pavblogcategory\";i:219;s:21:\"module/pavblogcomment\";i:220;s:20:\"module/pavbloglatest\";i:221;s:14:\"module/pavblog\";i:222;s:16:\"module/pavcustom\";i:223;s:16:\"module/pp_button\";i:224;s:21:\"module/pavtestimonial\";i:225;s:21:\"module/pavproducttabs\";i:226;s:20:\"module/pavnewsletter\";i:227;s:21:\"module/pavsliderlayer\";i:228;s:20:\"module/pavfooterlink\";i:229;s:15:\"module/featured\";i:230;s:13:\"module/banner\";i:231;s:17:\"module/bestseller\";i:232;s:21:\"module/pavsliderlayer\";i:233;s:21:\"module/pavsliderlayer\";i:234;s:16:\"module/affiliate\";i:235;s:20:\"module/amazon_button\";i:236;s:13:\"module/filter\";i:237;s:22:\"module/google_hangouts\";i:238;s:11:\"module/html\";i:239;s:15:\"module/pp_login\";i:240;s:19:\"module/amazon_login\";i:241;s:17:\"module/amazon_pay\";i:242;s:16:\"module/slideshow\";i:243;s:14:\"module/special\";i:244;s:12:\"module/store\";i:245;s:19:\"module/ebay_listing\";i:246;s:28:\"module/multimerch_newsellers\";i:247;s:27:\"module/multimerch_messaging\";i:248;s:24:\"module/multimerch_badges\";i:249;s:17:\"multiseller/badge\";i:250;s:30:\"module/multimerch_social_links\";i:251;s:23:\"multiseller/social_link\";i:252;s:25:\"module/multimerch_masspay\";i:253;s:26:\"module/multimerch_comments\";i:254;s:19:\"multiseller/comment\";i:255;s:26:\"module/multimerch_shipping\";i:256;s:27:\"multiseller/shipping-method\";i:257;s:17:\"total/ms_shipping\";i:258;s:28:\"module/multimerch_topsellers\";i:259;s:26:\"module/multimerch_comments\";i:260;s:19:\"multiseller/comment\";i:261;s:26:\"module/multimerch_shipping\";i:262;s:27:\"multiseller/shipping-method\";i:263;s:17:\"total/ms_shipping\";i:264;s:14:\"module/sellers\";i:265;s:14:\"module/sellers\";i:266;s:14:\"payment/stripe\";i:267;s:21:\"payment/bank_transfer\";i:268;s:10:\"module/iot\";i:269;s:10:\"module/iot\";i:270;s:10:\"module/iot\";i:271;s:17:\"total/ms_shipping\";i:272;s:15:\"module/carousel\";i:273;s:14:\"module/sellers\";i:274;s:19:\"feed/google_sitemap\";i:275;s:27:\"module/multimerch_messaging\";i:276;s:24:\"module/multimerch_badges\";i:277;s:17:\"multiseller/badge\";i:278;s:30:\"module/multimerch_social_links\";i:279;s:23:\"multiseller/social_link\";i:280;s:28:\"module/multimerch_newsellers\";i:281;s:25:\"module/multimerch_masspay\";i:282;s:26:\"module/multimerch_comments\";i:283;s:19:\"multiseller/comment\";i:284;s:26:\"module/multimerch_shipping\";i:285;s:27:\"multiseller/shipping-method\";i:286;s:17:\"total/ms_shipping\";i:287;s:28:\"module/multimerch_topsellers\";i:288;s:14:\"module/account\";i:289;s:16:\"module/affiliate\";i:290;s:17:\"module/bestseller\";i:291;s:13:\"module/banner\";i:292;s:15:\"module/carousel\";i:293;s:15:\"module/category\";i:294;s:20:\"module/amazon_button\";i:295;s:15:\"module/featured\";i:296;s:13:\"module/filter\";i:297;s:11:\"module/html\";i:298;s:10:\"module/iot\";i:299;s:18:\"module/information\";i:300;s:22:\"module/google_hangouts\";i:301;s:13:\"module/latest\";i:302;s:15:\"module/pp_login\";i:303;s:19:\"module/manufacturer\";i:304;s:22:\"module/pavblogcategory\";i:305;s:21:\"module/pavblogcomment\";i:306;s:20:\"module/pavbloglatest\";i:307;s:14:\"module/pavblog\";i:308;s:19:\"module/amazon_login\";i:309;s:16:\"module/pavcustom\";i:310;s:20:\"module/pavfooterlink\";i:311;s:21:\"module/pavsliderlayer\";i:312;s:20:\"module/pavnewsletter\";i:313;s:21:\"module/pavproducttabs\";i:314;s:21:\"module/pavtestimonial\";i:315;s:17:\"module/amazon_pay\";i:316;s:16:\"module/pp_button\";i:317;s:14:\"module/popular\";i:318;s:16:\"module/slideshow\";i:319;s:14:\"module/special\";i:320;s:12:\"module/store\";i:321;s:19:\"module/ebay_listing\";i:322;s:19:\"feed/google_sitemap\";i:323;s:16:\"feed/google_base\";}}'),(10,'Demonstration','');
/*!40000 ALTER TABLE `oc_user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_voucher`
--

DROP TABLE IF EXISTS `oc_voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_voucher` (
  `voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_voucher`
--

LOCK TABLES `oc_voucher` WRITE;
/*!40000 ALTER TABLE `oc_voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_voucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_voucher_history`
--

DROP TABLE IF EXISTS `oc_voucher_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_voucher_history`
--

LOCK TABLES `oc_voucher_history` WRITE;
/*!40000 ALTER TABLE `oc_voucher_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_voucher_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_voucher_theme`
--

DROP TABLE IF EXISTS `oc_voucher_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_voucher_theme`
--

LOCK TABLES `oc_voucher_theme` WRITE;
/*!40000 ALTER TABLE `oc_voucher_theme` DISABLE KEYS */;
INSERT INTO `oc_voucher_theme` VALUES (8,'catalog/demo/canon_eos_5d_2.jpg');
/*!40000 ALTER TABLE `oc_voucher_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_voucher_theme_description`
--

DROP TABLE IF EXISTS `oc_voucher_theme_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_voucher_theme_description`
--

LOCK TABLES `oc_voucher_theme_description` WRITE;
/*!40000 ALTER TABLE `oc_voucher_theme_description` DISABLE KEYS */;
INSERT INTO `oc_voucher_theme_description` VALUES (8,3,'General'),(8,1,'General');
/*!40000 ALTER TABLE `oc_voucher_theme_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_weight_class`
--

DROP TABLE IF EXISTS `oc_weight_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`weight_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_weight_class`
--

LOCK TABLES `oc_weight_class` WRITE;
/*!40000 ALTER TABLE `oc_weight_class` DISABLE KEYS */;
INSERT INTO `oc_weight_class` VALUES (1,1.00000000),(2,1000.00000000),(5,2.20460000),(6,35.27400000),(7,1.00000000),(8,1.00000000),(9,1.00000000);
/*!40000 ALTER TABLE `oc_weight_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_weight_class_description`
--

DROP TABLE IF EXISTS `oc_weight_class_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`weight_class_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_weight_class_description`
--

LOCK TABLES `oc_weight_class_description` WRITE;
/*!40000 ALTER TABLE `oc_weight_class_description` DISABLE KEYS */;
INSERT INTO `oc_weight_class_description` VALUES (1,1,'Kilo','kg'),(2,1,'Gram','g'),(5,1,'Pound ','lb'),(6,1,'Ounce','oz'),(7,1,'Litro','L'),(8,1,'Pack','Pack'),(9,1,'Unidad','Ud'),(1,3,'Kilo','kg'),(2,3,'Gram','g'),(5,3,'Pound ','lb'),(6,3,'Ounce','oz'),(7,3,'Litro','L'),(8,3,'Pack','Pack'),(9,3,'Unidad','Ud');
/*!40000 ALTER TABLE `oc_weight_class_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_zone`
--

DROP TABLE IF EXISTS `oc_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_zone` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4231 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_zone`
--

LOCK TABLES `oc_zone` WRITE;
/*!40000 ALTER TABLE `oc_zone` DISABLE KEYS */;
INSERT INTO `oc_zone` VALUES (121,4,'Western','W',1),(122,5,'Andorra la Vella','ALV',1),(123,5,'Canillo','CAN',1),(124,5,'Encamp','ENC',1),(125,5,'Escaldes-Engordany','ESE',1),(126,5,'La Massana','LMA',1),(127,5,'Ordino','ORD',1),(128,5,'Sant Julia de Loria','SJL',1),(129,6,'Bengo','BGO',1),(130,6,'Benguela','BGU',1),(131,6,'Bie','BIE',1),(132,6,'Cabinda','CAB',1),(133,6,'Cuando-Cubango','CCU',1),(134,6,'Cuanza Norte','CNO',1),(135,6,'Cuanza Sul','CUS',1),(136,6,'Cunene','CNN',1),(137,6,'Huambo','HUA',1),(138,6,'Huila','HUI',1),(139,6,'Luanda','LUA',1),(140,6,'Lunda Norte','LNO',1),(141,6,'Lunda Sul','LSU',1),(142,6,'Malange','MAL',1),(143,6,'Moxico','MOX',1),(144,6,'Namibe','NAM',1),(145,6,'Uige','UIG',1),(146,6,'Zaire','ZAI',1),(147,9,'Saint George','ASG',1),(148,9,'Saint John','ASJ',1),(149,9,'Saint Mary','ASM',1),(150,9,'Saint Paul','ASL',1),(151,9,'Saint Peter','ASR',1),(152,9,'Saint Philip','ASH',1),(153,9,'Barbuda','BAR',1),(154,9,'Redonda','RED',1),(155,10,'Antartida e Islas del Atlantico','AN',1),(156,10,'Buenos Aires','BA',1),(157,10,'Catamarca','CA',1),(158,10,'Chaco','CH',1),(159,10,'Chubut','CU',1),(160,10,'Cordoba','CO',1),(161,10,'Corrientes','CR',1),(162,10,'Distrito Federal','DF',1),(163,10,'Entre Rios','ER',1),(164,10,'Formosa','FO',1),(165,10,'Jujuy','JU',1),(166,10,'La Pampa','LP',1),(167,10,'La Rioja','LR',1),(168,10,'Mendoza','ME',1),(169,10,'Misiones','MI',1),(170,10,'Neuquen','NE',1),(171,10,'Rio Negro','RN',1),(172,10,'Salta','SA',1),(173,10,'San Juan','SJ',1),(174,10,'San Luis','SL',1),(175,10,'Santa Cruz','SC',1),(176,10,'Santa Fe','SF',1),(177,10,'Santiago del Estero','SD',1),(178,10,'Tierra del Fuego','TF',1),(179,10,'Tucuman','TU',1),(180,11,'Aragatsotn','AGT',1),(181,11,'Ararat','ARR',1),(182,11,'Armavir','ARM',1),(183,11,'Geghark\'unik\'','GEG',1),(184,11,'Kotayk\'','KOT',1),(185,11,'Lorri','LOR',1),(186,11,'Shirak','SHI',1),(187,11,'Syunik\'','SYU',1),(188,11,'Tavush','TAV',1),(189,11,'Vayots\' Dzor','VAY',1),(190,11,'Yerevan','YER',1),(191,13,'Australian Capital Territory','ACT',1),(192,13,'New South Wales','NSW',1),(193,13,'Northern Territory','NT',1),(194,13,'Queensland','QLD',1),(195,13,'South Australia','SA',1),(196,13,'Tasmania','TAS',1),(197,13,'Victoria','VIC',1),(198,13,'Western Australia','WA',1),(199,14,'Burgenland','BUR',1),(200,14,'Kärnten','KAR',1),(201,14,'Nieder&ouml;sterreich','NOS',1),(202,14,'Ober&ouml;sterreich','OOS',1),(203,14,'Salzburg','SAL',1),(204,14,'Steiermark','STE',1),(205,14,'Tirol','TIR',1),(206,14,'Vorarlberg','VOR',1),(207,14,'Wien','WIE',1),(208,15,'Ali Bayramli','AB',1),(209,15,'Abseron','ABS',1),(210,15,'AgcabAdi','AGC',1),(211,15,'Agdam','AGM',1),(212,15,'Agdas','AGS',1),(213,15,'Agstafa','AGA',1),(214,15,'Agsu','AGU',1),(215,15,'Astara','AST',1),(216,15,'Baki','BA',1),(217,15,'BabAk','BAB',1),(218,15,'BalakAn','BAL',1),(219,15,'BArdA','BAR',1),(220,15,'Beylaqan','BEY',1),(221,15,'Bilasuvar','BIL',1),(222,15,'Cabrayil','CAB',1),(223,15,'Calilabab','CAL',1),(224,15,'Culfa','CUL',1),(225,15,'Daskasan','DAS',1),(226,15,'Davaci','DAV',1),(227,15,'Fuzuli','FUZ',1),(228,15,'Ganca','GA',1),(229,15,'Gadabay','GAD',1),(230,15,'Goranboy','GOR',1),(231,15,'Goycay','GOY',1),(232,15,'Haciqabul','HAC',1),(233,15,'Imisli','IMI',1),(234,15,'Ismayilli','ISM',1),(235,15,'Kalbacar','KAL',1),(236,15,'Kurdamir','KUR',1),(237,15,'Lankaran','LA',1),(238,15,'Lacin','LAC',1),(239,15,'Lankaran','LAN',1),(240,15,'Lerik','LER',1),(241,15,'Masalli','MAS',1),(242,15,'Mingacevir','MI',1),(243,15,'Naftalan','NA',1),(244,15,'Neftcala','NEF',1),(245,15,'Oguz','OGU',1),(246,15,'Ordubad','ORD',1),(247,15,'Qabala','QAB',1),(248,15,'Qax','QAX',1),(249,15,'Qazax','QAZ',1),(250,15,'Qobustan','QOB',1),(251,15,'Quba','QBA',1),(252,15,'Qubadli','QBI',1),(253,15,'Qusar','QUS',1),(254,15,'Saki','SA',1),(255,15,'Saatli','SAT',1),(256,15,'Sabirabad','SAB',1),(257,15,'Sadarak','SAD',1),(258,15,'Sahbuz','SAH',1),(259,15,'Saki','SAK',1),(260,15,'Salyan','SAL',1),(261,15,'Sumqayit','SM',1),(262,15,'Samaxi','SMI',1),(263,15,'Samkir','SKR',1),(264,15,'Samux','SMX',1),(265,15,'Sarur','SAR',1),(266,15,'Siyazan','SIY',1),(267,15,'Susa','SS',1),(268,15,'Susa','SUS',1),(269,15,'Tartar','TAR',1),(270,15,'Tovuz','TOV',1),(271,15,'Ucar','UCA',1),(272,15,'Xankandi','XA',1),(273,15,'Xacmaz','XAC',1),(274,15,'Xanlar','XAN',1),(275,15,'Xizi','XIZ',1),(276,15,'Xocali','XCI',1),(277,15,'Xocavand','XVD',1),(278,15,'Yardimli','YAR',1),(279,15,'Yevlax','YEV',1),(280,15,'Zangilan','ZAN',1),(281,15,'Zaqatala','ZAQ',1),(282,15,'Zardab','ZAR',1),(283,15,'Naxcivan','NX',1),(284,16,'Acklins','ACK',1),(285,16,'Berry Islands','BER',1),(286,16,'Bimini','BIM',1),(287,16,'Black Point','BLK',1),(288,16,'Cat Island','CAT',1),(289,16,'Central Abaco','CAB',1),(290,16,'Central Andros','CAN',1),(291,16,'Central Eleuthera','CEL',1),(292,16,'City of Freeport','FRE',1),(293,16,'Crooked Island','CRO',1),(294,16,'East Grand Bahama','EGB',1),(295,16,'Exuma','EXU',1),(296,16,'Grand Cay','GRD',1),(297,16,'Harbour Island','HAR',1),(298,16,'Hope Town','HOP',1),(299,16,'Inagua','INA',1),(300,16,'Long Island','LNG',1),(301,16,'Mangrove Cay','MAN',1),(302,16,'Mayaguana','MAY',1),(303,16,'Moore\'s Island','MOO',1),(304,16,'North Abaco','NAB',1),(305,16,'North Andros','NAN',1),(306,16,'North Eleuthera','NEL',1),(307,16,'Ragged Island','RAG',1),(308,16,'Rum Cay','RUM',1),(309,16,'San Salvador','SAL',1),(310,16,'South Abaco','SAB',1),(311,16,'South Andros','SAN',1),(312,16,'South Eleuthera','SEL',1),(313,16,'Spanish Wells','SWE',1),(314,16,'West Grand Bahama','WGB',1),(315,17,'Capital','CAP',1),(316,17,'Central','CEN',1),(317,17,'Muharraq','MUH',1),(318,17,'Northern','NOR',1),(319,17,'Southern','SOU',1),(320,18,'Barisal','BAR',1),(321,18,'Chittagong','CHI',1),(322,18,'Dhaka','DHA',1),(323,18,'Khulna','KHU',1),(324,18,'Rajshahi','RAJ',1),(325,18,'Sylhet','SYL',1),(326,19,'Christ Church','CC',1),(327,19,'Saint Andrew','AND',1),(328,19,'Saint George','GEO',1),(329,19,'Saint James','JAM',1),(330,19,'Saint John','JOH',1),(331,19,'Saint Joseph','JOS',1),(332,19,'Saint Lucy','LUC',1),(333,19,'Saint Michael','MIC',1),(334,19,'Saint Peter','PET',1),(335,19,'Saint Philip','PHI',1),(336,19,'Saint Thomas','THO',1),(337,20,'Brestskaya (Brest)','BR',1),(338,20,'Homyel\'skaya (Homyel\')','HO',1),(339,20,'Horad Minsk','HM',1),(340,20,'Hrodzyenskaya (Hrodna)','HR',1),(341,20,'Mahilyowskaya (Mahilyow)','MA',1),(342,20,'Minskaya','MI',1),(343,20,'Vitsyebskaya (Vitsyebsk)','VI',1),(344,21,'Antwerpen','VAN',1),(345,21,'Brabant Wallon','WBR',1),(346,21,'Hainaut','WHT',1),(347,21,'Liège','WLG',1),(348,21,'Limburg','VLI',1),(349,21,'Luxembourg','WLX',1),(350,21,'Namur','WNA',1),(351,21,'Oost-Vlaanderen','VOV',1),(352,21,'Vlaams Brabant','VBR',1),(353,21,'West-Vlaanderen','VWV',1),(354,22,'Belize','BZ',1),(355,22,'Cayo','CY',1),(356,22,'Corozal','CR',1),(357,22,'Orange Walk','OW',1),(358,22,'Stann Creek','SC',1),(359,22,'Toledo','TO',1),(360,23,'Alibori','AL',1),(361,23,'Atakora','AK',1),(362,23,'Atlantique','AQ',1),(363,23,'Borgou','BO',1),(364,23,'Collines','CO',1),(365,23,'Donga','DO',1),(366,23,'Kouffo','KO',1),(367,23,'Littoral','LI',1),(368,23,'Mono','MO',1),(369,23,'Oueme','OU',1),(370,23,'Plateau','PL',1),(371,23,'Zou','ZO',1),(372,24,'Devonshire','DS',1),(373,24,'Hamilton City','HC',1),(374,24,'Hamilton','HA',1),(375,24,'Paget','PG',1),(376,24,'Pembroke','PB',1),(377,24,'Saint George City','GC',1),(378,24,'Saint George\'s','SG',1),(379,24,'Sandys','SA',1),(380,24,'Smith\'s','SM',1),(381,24,'Southampton','SH',1),(382,24,'Warwick','WA',1),(383,25,'Bumthang','BUM',1),(384,25,'Chukha','CHU',1),(385,25,'Dagana','DAG',1),(386,25,'Gasa','GAS',1),(387,25,'Haa','HAA',1),(388,25,'Lhuntse','LHU',1),(389,25,'Mongar','MON',1),(390,25,'Paro','PAR',1),(391,25,'Pemagatshel','PEM',1),(392,25,'Punakha','PUN',1),(393,25,'Samdrup Jongkhar','SJO',1),(394,25,'Samtse','SAT',1),(395,25,'Sarpang','SAR',1),(396,25,'Thimphu','THI',1),(397,25,'Trashigang','TRG',1),(398,25,'Trashiyangste','TRY',1),(399,25,'Trongsa','TRO',1),(400,25,'Tsirang','TSI',1),(401,25,'Wangdue Phodrang','WPH',1),(402,25,'Zhemgang','ZHE',1),(403,26,'Beni','BEN',1),(404,26,'Chuquisaca','CHU',1),(405,26,'Cochabamba','COC',1),(406,26,'La Paz','LPZ',1),(407,26,'Oruro','ORU',1),(408,26,'Pando','PAN',1),(409,26,'Potosi','POT',1),(410,26,'Santa Cruz','SCZ',1),(411,26,'Tarija','TAR',1),(412,27,'Brcko district','BRO',1),(413,27,'Unsko-Sanski Kanton','FUS',1),(414,27,'Posavski Kanton','FPO',1),(415,27,'Tuzlanski Kanton','FTU',1),(416,27,'Zenicko-Dobojski Kanton','FZE',1),(417,27,'Bosanskopodrinjski Kanton','FBP',1),(418,27,'Srednjebosanski Kanton','FSB',1),(419,27,'Hercegovacko-neretvanski Kanton','FHN',1),(420,27,'Zapadnohercegovacka Zupanija','FZH',1),(421,27,'Kanton Sarajevo','FSA',1),(422,27,'Zapadnobosanska','FZA',1),(423,27,'Banja Luka','SBL',1),(424,27,'Doboj','SDO',1),(425,27,'Bijeljina','SBI',1),(426,27,'Vlasenica','SVL',1),(427,27,'Sarajevo-Romanija or Sokolac','SSR',1),(428,27,'Foca','SFO',1),(429,27,'Trebinje','STR',1),(430,28,'Central','CE',1),(431,28,'Ghanzi','GH',1),(432,28,'Kgalagadi','KD',1),(433,28,'Kgatleng','KT',1),(434,28,'Kweneng','KW',1),(435,28,'Ngamiland','NG',1),(436,28,'North East','NE',1),(437,28,'North West','NW',1),(438,28,'South East','SE',1),(439,28,'Southern','SO',1),(440,30,'Acre','AC',1),(441,30,'Alagoas','AL',1),(442,30,'Amapá','AP',1),(443,30,'Amazonas','AM',1),(444,30,'Bahia','BA',1),(445,30,'Ceará','CE',1),(446,30,'Distrito Federal','DF',1),(447,30,'Espírito Santo','ES',1),(448,30,'Goiás','GO',1),(449,30,'Maranhão','MA',1),(450,30,'Mato Grosso','MT',1),(451,30,'Mato Grosso do Sul','MS',1),(452,30,'Minas Gerais','MG',1),(453,30,'Pará','PA',1),(454,30,'Paraíba','PB',1),(455,30,'Paraná','PR',1),(456,30,'Pernambuco','PE',1),(457,30,'Piauí','PI',1),(458,30,'Rio de Janeiro','RJ',1),(459,30,'Rio Grande do Norte','RN',1),(460,30,'Rio Grande do Sul','RS',1),(461,30,'Rondônia','RO',1),(462,30,'Roraima','RR',1),(463,30,'Santa Catarina','SC',1),(464,30,'São Paulo','SP',1),(465,30,'Sergipe','SE',1),(466,30,'Tocantins','TO',1),(467,31,'Peros Banhos','PB',1),(468,31,'Salomon Islands','SI',1),(469,31,'Nelsons Island','NI',1),(470,31,'Three Brothers','TB',1),(471,31,'Eagle Islands','EA',1),(472,31,'Danger Island','DI',1),(473,31,'Egmont Islands','EG',1),(474,31,'Diego Garcia','DG',1),(475,32,'Belait','BEL',1),(476,32,'Brunei and Muara','BRM',1),(477,32,'Temburong','TEM',1),(478,32,'Tutong','TUT',1),(479,33,'Blagoevgrad','',1),(480,33,'Burgas','',1),(481,33,'Dobrich','',1),(482,33,'Gabrovo','',1),(483,33,'Haskovo','',1),(484,33,'Kardjali','',1),(485,33,'Kyustendil','',1),(486,33,'Lovech','',1),(487,33,'Montana','',1),(488,33,'Pazardjik','',1),(489,33,'Pernik','',1),(490,33,'Pleven','',1),(491,33,'Plovdiv','',1),(492,33,'Razgrad','',1),(493,33,'Shumen','',1),(494,33,'Silistra','',1),(495,33,'Sliven','',1),(496,33,'Smolyan','',1),(497,33,'Sofia','',1),(498,33,'Sofia - town','',1),(499,33,'Stara Zagora','',1),(500,33,'Targovishte','',1),(501,33,'Varna','',1),(502,33,'Veliko Tarnovo','',1),(503,33,'Vidin','',1),(504,33,'Vratza','',1),(505,33,'Yambol','',1),(506,34,'Bale','BAL',1),(507,34,'Bam','BAM',1),(508,34,'Banwa','BAN',1),(509,34,'Bazega','BAZ',1),(510,34,'Bougouriba','BOR',1),(511,34,'Boulgou','BLG',1),(512,34,'Boulkiemde','BOK',1),(513,34,'Comoe','COM',1),(514,34,'Ganzourgou','GAN',1),(515,34,'Gnagna','GNA',1),(516,34,'Gourma','GOU',1),(517,34,'Houet','HOU',1),(518,34,'Ioba','IOA',1),(519,34,'Kadiogo','KAD',1),(520,34,'Kenedougou','KEN',1),(521,34,'Komondjari','KOD',1),(522,34,'Kompienga','KOP',1),(523,34,'Kossi','KOS',1),(524,34,'Koulpelogo','KOL',1),(525,34,'Kouritenga','KOT',1),(526,34,'Kourweogo','KOW',1),(527,34,'Leraba','LER',1),(528,34,'Loroum','LOR',1),(529,34,'Mouhoun','MOU',1),(530,34,'Nahouri','NAH',1),(531,34,'Namentenga','NAM',1),(532,34,'Nayala','NAY',1),(533,34,'Noumbiel','NOU',1),(534,34,'Oubritenga','OUB',1),(535,34,'Oudalan','OUD',1),(536,34,'Passore','PAS',1),(537,34,'Poni','PON',1),(538,34,'Sanguie','SAG',1),(539,34,'Sanmatenga','SAM',1),(540,34,'Seno','SEN',1),(541,34,'Sissili','SIS',1),(542,34,'Soum','SOM',1),(543,34,'Sourou','SOR',1),(544,34,'Tapoa','TAP',1),(545,34,'Tuy','TUY',1),(546,34,'Yagha','YAG',1),(547,34,'Yatenga','YAT',1),(548,34,'Ziro','ZIR',1),(549,34,'Zondoma','ZOD',1),(550,34,'Zoundweogo','ZOW',1),(551,35,'Bubanza','BB',1),(552,35,'Bujumbura','BJ',1),(553,35,'Bururi','BR',1),(554,35,'Cankuzo','CA',1),(555,35,'Cibitoke','CI',1),(556,35,'Gitega','GI',1),(557,35,'Karuzi','KR',1),(558,35,'Kayanza','KY',1),(559,35,'Kirundo','KI',1),(560,35,'Makamba','MA',1),(561,35,'Muramvya','MU',1),(562,35,'Muyinga','MY',1),(563,35,'Mwaro','MW',1),(564,35,'Ngozi','NG',1),(565,35,'Rutana','RT',1),(566,35,'Ruyigi','RY',1),(567,36,'Phnom Penh','PP',1),(568,36,'Preah Seihanu (Kompong Som or Sihanoukville)','PS',1),(569,36,'Pailin','PA',1),(570,36,'Keb','KB',1),(571,36,'Banteay Meanchey','BM',1),(572,36,'Battambang','BA',1),(573,36,'Kampong Cham','KM',1),(574,36,'Kampong Chhnang','KN',1),(575,36,'Kampong Speu','KU',1),(576,36,'Kampong Som','KO',1),(577,36,'Kampong Thom','KT',1),(578,36,'Kampot','KP',1),(579,36,'Kandal','KL',1),(580,36,'Kaoh Kong','KK',1),(581,36,'Kratie','KR',1),(582,36,'Mondul Kiri','MK',1),(583,36,'Oddar Meancheay','OM',1),(584,36,'Pursat','PU',1),(585,36,'Preah Vihear','PR',1),(586,36,'Prey Veng','PG',1),(587,36,'Ratanak Kiri','RK',1),(588,36,'Siemreap','SI',1),(589,36,'Stung Treng','ST',1),(590,36,'Svay Rieng','SR',1),(591,36,'Takeo','TK',1),(592,37,'Adamawa (Adamaoua)','ADA',1),(593,37,'Centre','CEN',1),(594,37,'East (Est)','EST',1),(595,37,'Extreme North (Extreme-Nord)','EXN',1),(596,37,'Littoral','LIT',1),(597,37,'North (Nord)','NOR',1),(598,37,'Northwest (Nord-Ouest)','NOT',1),(599,37,'West (Ouest)','OUE',1),(600,37,'South (Sud)','SUD',1),(601,37,'Southwest (Sud-Ouest).','SOU',1),(602,38,'Alberta','AB',1),(603,38,'British Columbia','BC',1),(604,38,'Manitoba','MB',1),(605,38,'New Brunswick','NB',1),(606,38,'Newfoundland and Labrador','NL',1),(607,38,'Northwest Territories','NT',1),(608,38,'Nova Scotia','NS',1),(609,38,'Nunavut','NU',1),(610,38,'Ontario','ON',1),(611,38,'Prince Edward Island','PE',1),(612,38,'Qu&eacute;bec','QC',1),(613,38,'Saskatchewan','SK',1),(614,38,'Yukon Territory','YT',1),(615,39,'Boa Vista','BV',1),(616,39,'Brava','BR',1),(617,39,'Calheta de Sao Miguel','CS',1),(618,39,'Maio','MA',1),(619,39,'Mosteiros','MO',1),(620,39,'Paul','PA',1),(621,39,'Porto Novo','PN',1),(622,39,'Praia','PR',1),(623,39,'Ribeira Grande','RG',1),(624,39,'Sal','SL',1),(625,39,'Santa Catarina','CA',1),(626,39,'Santa Cruz','CR',1),(627,39,'Sao Domingos','SD',1),(628,39,'Sao Filipe','SF',1),(629,39,'Sao Nicolau','SN',1),(630,39,'Sao Vicente','SV',1),(631,39,'Tarrafal','TA',1),(632,40,'Creek','CR',1),(633,40,'Eastern','EA',1),(634,40,'Midland','ML',1),(635,40,'South Town','ST',1),(636,40,'Spot Bay','SP',1),(637,40,'Stake Bay','SK',1),(638,40,'West End','WD',1),(639,40,'Western','WN',1),(640,41,'Bamingui-Bangoran','BBA',1),(641,41,'Basse-Kotto','BKO',1),(642,41,'Haute-Kotto','HKO',1),(643,41,'Haut-Mbomou','HMB',1),(644,41,'Kemo','KEM',1),(645,41,'Lobaye','LOB',1),(646,41,'Mambere-KadeÔ','MKD',1),(647,41,'Mbomou','MBO',1),(648,41,'Nana-Mambere','NMM',1),(649,41,'Ombella-M\'Poko','OMP',1),(650,41,'Ouaka','OUK',1),(651,41,'Ouham','OUH',1),(652,41,'Ouham-Pende','OPE',1),(653,41,'Vakaga','VAK',1),(654,41,'Nana-Grebizi','NGR',1),(655,41,'Sangha-Mbaere','SMB',1),(656,41,'Bangui','BAN',1),(657,42,'Batha','BA',1),(658,42,'Biltine','BI',1),(659,42,'Borkou-Ennedi-Tibesti','BE',1),(660,42,'Chari-Baguirmi','CB',1),(661,42,'Guera','GU',1),(662,42,'Kanem','KA',1),(663,42,'Lac','LA',1),(664,42,'Logone Occidental','LC',1),(665,42,'Logone Oriental','LR',1),(666,42,'Mayo-Kebbi','MK',1),(667,42,'Moyen-Chari','MC',1),(668,42,'Ouaddai','OU',1),(669,42,'Salamat','SA',1),(670,42,'Tandjile','TA',1),(671,43,'Aisen del General Carlos Ibanez','AI',1),(672,43,'Antofagasta','AN',1),(673,43,'Araucania','AR',1),(674,43,'Atacama','AT',1),(675,43,'Bio-Bio','BI',1),(676,43,'Coquimbo','CO',1),(677,43,'Libertador General Bernardo O\'Higgins','LI',1),(678,43,'Los Lagos','LL',1),(679,43,'Magallanes y de la Antartica Chilena','MA',1),(680,43,'Maule','ML',1),(681,43,'Region Metropolitana','RM',1),(682,43,'Tarapaca','TA',1),(683,43,'Valparaiso','VS',1),(684,44,'Anhui','AN',1),(685,44,'Beijing','BE',1),(686,44,'Chongqing','CH',1),(687,44,'Fujian','FU',1),(688,44,'Gansu','GA',1),(689,44,'Guangdong','GU',1),(690,44,'Guangxi','GX',1),(691,44,'Guizhou','GZ',1),(692,44,'Hainan','HA',1),(693,44,'Hebei','HB',1),(694,44,'Heilongjiang','HL',1),(695,44,'Henan','HE',1),(696,44,'Hong Kong','HK',1),(697,44,'Hubei','HU',1),(698,44,'Hunan','HN',1),(699,44,'Inner Mongolia','IM',1),(700,44,'Jiangsu','JI',1),(701,44,'Jiangxi','JX',1),(702,44,'Jilin','JL',1),(703,44,'Liaoning','LI',1),(704,44,'Macau','MA',1),(705,44,'Ningxia','NI',1),(706,44,'Shaanxi','SH',1),(707,44,'Shandong','SA',1),(708,44,'Shanghai','SG',1),(709,44,'Shanxi','SX',1),(710,44,'Sichuan','SI',1),(711,44,'Tianjin','TI',1),(712,44,'Xinjiang','XI',1),(713,44,'Yunnan','YU',1),(714,44,'Zhejiang','ZH',1),(715,46,'Direction Island','D',1),(716,46,'Home Island','H',1),(717,46,'Horsburgh Island','O',1),(718,46,'South Island','S',1),(719,46,'West Island','W',1),(720,47,'Amazonas','AMZ',1),(721,47,'Antioquia','ANT',1),(722,47,'Arauca','ARA',1),(723,47,'Atlantico','ATL',1),(724,47,'Bogota D.C.','BDC',1),(725,47,'Bolivar','BOL',1),(726,47,'Boyaca','BOY',1),(727,47,'Caldas','CAL',1),(728,47,'Caqueta','CAQ',1),(729,47,'Casanare','CAS',1),(730,47,'Cauca','CAU',1),(731,47,'Cesar','CES',1),(732,47,'Choco','CHO',1),(733,47,'Cordoba','COR',1),(734,47,'Cundinamarca','CAM',1),(735,47,'Guainia','GNA',1),(736,47,'Guajira','GJR',1),(737,47,'Guaviare','GVR',1),(738,47,'Huila','HUI',1),(739,47,'Magdalena','MAG',1),(740,47,'Meta','MET',1),(741,47,'Narino','NAR',1),(742,47,'Norte de Santander','NDS',1),(743,47,'Putumayo','PUT',1),(744,47,'Quindio','QUI',1),(745,47,'Risaralda','RIS',1),(746,47,'San Andres y Providencia','SAP',1),(747,47,'Santander','SAN',1),(748,47,'Sucre','SUC',1),(749,47,'Tolima','TOL',1),(750,47,'Valle del Cauca','VDC',1),(751,47,'Vaupes','VAU',1),(752,47,'Vichada','VIC',1),(753,48,'Grande Comore','G',1),(754,48,'Anjouan','A',1),(755,48,'Moheli','M',1),(756,49,'Bouenza','BO',1),(757,49,'Brazzaville','BR',1),(758,49,'Cuvette','CU',1),(759,49,'Cuvette-Ouest','CO',1),(760,49,'Kouilou','KO',1),(761,49,'Lekoumou','LE',1),(762,49,'Likouala','LI',1),(763,49,'Niari','NI',1),(764,49,'Plateaux','PL',1),(765,49,'Pool','PO',1),(766,49,'Sangha','SA',1),(767,50,'Pukapuka','PU',1),(768,50,'Rakahanga','RK',1),(769,50,'Manihiki','MK',1),(770,50,'Penrhyn','PE',1),(771,50,'Nassau Island','NI',1),(772,50,'Surwarrow','SU',1),(773,50,'Palmerston','PA',1),(774,50,'Aitutaki','AI',1),(775,50,'Manuae','MA',1),(776,50,'Takutea','TA',1),(777,50,'Mitiaro','MT',1),(778,50,'Atiu','AT',1),(779,50,'Mauke','MU',1),(780,50,'Rarotonga','RR',1),(781,50,'Mangaia','MG',1),(782,51,'Alajuela','AL',1),(783,51,'Cartago','CA',1),(784,51,'Guanacaste','GU',1),(785,51,'Heredia','HE',1),(786,51,'Limon','LI',1),(787,51,'Puntarenas','PU',1),(788,51,'San Jose','SJ',1),(789,52,'Abengourou','ABE',1),(790,52,'Abidjan','ABI',1),(791,52,'Aboisso','ABO',1),(792,52,'Adiake','ADI',1),(793,52,'Adzope','ADZ',1),(794,52,'Agboville','AGB',1),(795,52,'Agnibilekrou','AGN',1),(796,52,'Alepe','ALE',1),(797,52,'Bocanda','BOC',1),(798,52,'Bangolo','BAN',1),(799,52,'Beoumi','BEO',1),(800,52,'Biankouma','BIA',1),(801,52,'Bondoukou','BDK',1),(802,52,'Bongouanou','BGN',1),(803,52,'Bouafle','BFL',1),(804,52,'Bouake','BKE',1),(805,52,'Bouna','BNA',1),(806,52,'Boundiali','BDL',1),(807,52,'Dabakala','DKL',1),(808,52,'Dabou','DBU',1),(809,52,'Daloa','DAL',1),(810,52,'Danane','DAN',1),(811,52,'Daoukro','DAO',1),(812,52,'Dimbokro','DIM',1),(813,52,'Divo','DIV',1),(814,52,'Duekoue','DUE',1),(815,52,'Ferkessedougou','FER',1),(816,52,'Gagnoa','GAG',1),(817,52,'Grand-Bassam','GBA',1),(818,52,'Grand-Lahou','GLA',1),(819,52,'Guiglo','GUI',1),(820,52,'Issia','ISS',1),(821,52,'Jacqueville','JAC',1),(822,52,'Katiola','KAT',1),(823,52,'Korhogo','KOR',1),(824,52,'Lakota','LAK',1),(825,52,'Man','MAN',1),(826,52,'Mankono','MKN',1),(827,52,'Mbahiakro','MBA',1),(828,52,'Odienne','ODI',1),(829,52,'Oume','OUM',1),(830,52,'Sakassou','SAK',1),(831,52,'San-Pedro','SPE',1),(832,52,'Sassandra','SAS',1),(833,52,'Seguela','SEG',1),(834,52,'Sinfra','SIN',1),(835,52,'Soubre','SOU',1),(836,52,'Tabou','TAB',1),(837,52,'Tanda','TAN',1),(838,52,'Tiebissou','TIE',1),(839,52,'Tingrela','TIN',1),(840,52,'Tiassale','TIA',1),(841,52,'Touba','TBA',1),(842,52,'Toulepleu','TLP',1),(843,52,'Toumodi','TMD',1),(844,52,'Vavoua','VAV',1),(845,52,'Yamoussoukro','YAM',1),(846,52,'Zuenoula','ZUE',1),(847,53,'Bjelovarsko-bilogorska','BB',1),(848,53,'Grad Zagreb','GZ',1),(849,53,'Dubrovačko-neretvanska','DN',1),(850,53,'Istarska','IS',1),(851,53,'Karlovačka','KA',1),(852,53,'Koprivničko-križevačka','KK',1),(853,53,'Krapinsko-zagorska','KZ',1),(854,53,'Ličko-senjska','LS',1),(855,53,'Međimurska','ME',1),(856,53,'Osječko-baranjska','OB',1),(857,53,'Požeško-slavonska','PS',1),(858,53,'Primorsko-goranska','PG',1),(859,53,'Šibensko-kninska','SK',1),(860,53,'Sisačko-moslavačka','SM',1),(861,53,'Brodsko-posavska','BP',1),(862,53,'Splitsko-dalmatinska','SD',1),(863,53,'Varaždinska','VA',1),(864,53,'Virovitičko-podravska','VP',1),(865,53,'Vukovarsko-srijemska','VS',1),(866,53,'Zadarska','ZA',1),(867,53,'Zagrebačka','ZG',1),(868,54,'Camaguey','CA',1),(869,54,'Ciego de Avila','CD',1),(870,54,'Cienfuegos','CI',1),(871,54,'Ciudad de La Habana','CH',1),(872,54,'Granma','GR',1),(873,54,'Guantanamo','GU',1),(874,54,'Holguin','HO',1),(875,54,'Isla de la Juventud','IJ',1),(876,54,'La Habana','LH',1),(877,54,'Las Tunas','LT',1),(878,54,'Matanzas','MA',1),(879,54,'Pinar del Rio','PR',1),(880,54,'Sancti Spiritus','SS',1),(881,54,'Santiago de Cuba','SC',1),(882,54,'Villa Clara','VC',1),(883,55,'Famagusta','F',1),(884,55,'Kyrenia','K',1),(885,55,'Larnaca','A',1),(886,55,'Limassol','I',1),(887,55,'Nicosia','N',1),(888,55,'Paphos','P',1),(889,56,'Ústecký','U',1),(890,56,'Jihočeský','C',1),(891,56,'Jihomoravský','B',1),(892,56,'Karlovarský','K',1),(893,56,'Královehradecký','H',1),(894,56,'Liberecký','L',1),(895,56,'Moravskoslezský','T',1),(896,56,'Olomoucký','M',1),(897,56,'Pardubický','E',1),(898,56,'Plzeňský','P',1),(899,56,'Praha','A',1),(900,56,'Středočeský','S',1),(901,56,'Vysočina','J',1),(902,56,'Zlínský','Z',1),(903,57,'Arhus','AR',1),(904,57,'Bornholm','BH',1),(905,57,'Copenhagen','CO',1),(906,57,'Faroe Islands','FO',1),(907,57,'Frederiksborg','FR',1),(908,57,'Fyn','FY',1),(909,57,'Kobenhavn','KO',1),(910,57,'Nordjylland','NO',1),(911,57,'Ribe','RI',1),(912,57,'Ringkobing','RK',1),(913,57,'Roskilde','RO',1),(914,57,'Sonderjylland','SO',1),(915,57,'Storstrom','ST',1),(916,57,'Vejle','VK',1),(917,57,'Vestj&aelig;lland','VJ',1),(918,57,'Viborg','VB',1),(919,58,'\'Ali Sabih','S',1),(920,58,'Dikhil','K',1),(921,58,'Djibouti','J',1),(922,58,'Obock','O',1),(923,58,'Tadjoura','T',1),(924,59,'Saint Andrew Parish','AND',1),(925,59,'Saint David Parish','DAV',1),(926,59,'Saint George Parish','GEO',1),(927,59,'Saint John Parish','JOH',1),(928,59,'Saint Joseph Parish','JOS',1),(929,59,'Saint Luke Parish','LUK',1),(930,59,'Saint Mark Parish','MAR',1),(931,59,'Saint Patrick Parish','PAT',1),(932,59,'Saint Paul Parish','PAU',1),(933,59,'Saint Peter Parish','PET',1),(934,60,'Distrito Nacional','DN',1),(935,60,'Azua','AZ',1),(936,60,'Baoruco','BC',1),(937,60,'Barahona','BH',1),(938,60,'Dajabon','DJ',1),(939,60,'Duarte','DU',1),(940,60,'Elias Pina','EL',1),(941,60,'El Seybo','SY',1),(942,60,'Espaillat','ET',1),(943,60,'Hato Mayor','HM',1),(944,60,'Independencia','IN',1),(945,60,'La Altagracia','AL',1),(946,60,'La Romana','RO',1),(947,60,'La Vega','VE',1),(948,60,'Maria Trinidad Sanchez','MT',1),(949,60,'Monsenor Nouel','MN',1),(950,60,'Monte Cristi','MC',1),(951,60,'Monte Plata','MP',1),(952,60,'Pedernales','PD',1),(953,60,'Peravia (Bani)','PR',1),(954,60,'Puerto Plata','PP',1),(955,60,'Salcedo','SL',1),(956,60,'Samana','SM',1),(957,60,'Sanchez Ramirez','SH',1),(958,60,'San Cristobal','SC',1),(959,60,'San Jose de Ocoa','JO',1),(960,60,'San Juan','SJ',1),(961,60,'San Pedro de Macoris','PM',1),(962,60,'Santiago','SA',1),(963,60,'Santiago Rodriguez','ST',1),(964,60,'Santo Domingo','SD',1),(965,60,'Valverde','VA',1),(966,61,'Aileu','AL',1),(967,61,'Ainaro','AN',1),(968,61,'Baucau','BA',1),(969,61,'Bobonaro','BO',1),(970,61,'Cova Lima','CO',1),(971,61,'Dili','DI',1),(972,61,'Ermera','ER',1),(973,61,'Lautem','LA',1),(974,61,'Liquica','LI',1),(975,61,'Manatuto','MT',1),(976,61,'Manufahi','MF',1),(977,61,'Oecussi','OE',1),(978,61,'Viqueque','VI',1),(979,62,'Azuay','AZU',1),(980,62,'Bolivar','BOL',1),(981,62,'Ca&ntilde;ar','CAN',1),(982,62,'Carchi','CAR',1),(983,62,'Chimborazo','CHI',1),(984,62,'Cotopaxi','COT',1),(985,62,'El Oro','EOR',1),(986,62,'Esmeraldas','ESM',1),(987,62,'Gal&aacute;pagos','GPS',1),(988,62,'Guayas','GUA',1),(989,62,'Imbabura','IMB',1),(990,62,'Loja','LOJ',1),(991,62,'Los Rios','LRO',1),(992,62,'Manab&iacute;','MAN',1),(993,62,'Morona Santiago','MSA',1),(994,62,'Napo','NAP',1),(995,62,'Orellana','ORE',1),(996,62,'Pastaza','PAS',1),(997,62,'Pichincha','PIC',1),(998,62,'Sucumb&iacute;os','SUC',1),(999,62,'Tungurahua','TUN',1),(1000,62,'Zamora Chinchipe','ZCH',1),(1001,63,'Ad Daqahliyah','DHY',1),(1002,63,'Al Bahr al Ahmar','BAM',1),(1003,63,'Al Buhayrah','BHY',1),(1004,63,'Al Fayyum','FYM',1),(1005,63,'Al Gharbiyah','GBY',1),(1006,63,'Al Iskandariyah','IDR',1),(1007,63,'Al Isma\'iliyah','IML',1),(1008,63,'Al Jizah','JZH',1),(1009,63,'Al Minufiyah','MFY',1),(1010,63,'Al Minya','MNY',1),(1011,63,'Al Qahirah','QHR',1),(1012,63,'Al Qalyubiyah','QLY',1),(1013,63,'Al Wadi al Jadid','WJD',1),(1014,63,'Ash Sharqiyah','SHQ',1),(1015,63,'As Suways','SWY',1),(1016,63,'Aswan','ASW',1),(1017,63,'Asyut','ASY',1),(1018,63,'Bani Suwayf','BSW',1),(1019,63,'Bur Sa\'id','BSD',1),(1020,63,'Dumyat','DMY',1),(1021,63,'Janub Sina\'','JNS',1),(1022,63,'Kafr ash Shaykh','KSH',1),(1023,63,'Matruh','MAT',1),(1024,63,'Qina','QIN',1),(1025,63,'Shamal Sina\'','SHS',1),(1026,63,'Suhaj','SUH',1),(1027,64,'Ahuachapan','AH',1),(1028,64,'Cabanas','CA',1),(1029,64,'Chalatenango','CH',1),(1030,64,'Cuscatlan','CU',1),(1031,64,'La Libertad','LB',1),(1032,64,'La Paz','PZ',1),(1033,64,'La Union','UN',1),(1034,64,'Morazan','MO',1),(1035,64,'San Miguel','SM',1),(1036,64,'San Salvador','SS',1),(1037,64,'San Vicente','SV',1),(1038,64,'Santa Ana','SA',1),(1039,64,'Sonsonate','SO',1),(1040,64,'Usulutan','US',1),(1041,65,'Provincia Annobon','AN',1),(1042,65,'Provincia Bioko Norte','BN',1),(1043,65,'Provincia Bioko Sur','BS',1),(1044,65,'Provincia Centro Sur','CS',1),(1045,65,'Provincia Kie-Ntem','KN',1),(1046,65,'Provincia Litoral','LI',1),(1047,65,'Provincia Wele-Nzas','WN',1),(1048,66,'Central (Maekel)','MA',1),(1049,66,'Anseba (Keren)','KE',1),(1050,66,'Southern Red Sea (Debub-Keih-Bahri)','DK',1),(1051,66,'Northern Red Sea (Semien-Keih-Bahri)','SK',1),(1052,66,'Southern (Debub)','DE',1),(1053,66,'Gash-Barka (Barentu)','BR',1),(1054,67,'Harjumaa (Tallinn)','HA',1),(1055,67,'Hiiumaa (Kardla)','HI',1),(1056,67,'Ida-Virumaa (Johvi)','IV',1),(1057,67,'Jarvamaa (Paide)','JA',1),(1058,67,'Jogevamaa (Jogeva)','JO',1),(1059,67,'Laane-Virumaa (Rakvere)','LV',1),(1060,67,'Laanemaa (Haapsalu)','LA',1),(1061,67,'Parnumaa (Parnu)','PA',1),(1062,67,'Polvamaa (Polva)','PO',1),(1063,67,'Raplamaa (Rapla)','RA',1),(1064,67,'Saaremaa (Kuessaare)','SA',1),(1065,67,'Tartumaa (Tartu)','TA',1),(1066,67,'Valgamaa (Valga)','VA',1),(1067,67,'Viljandimaa (Viljandi)','VI',1),(1068,67,'Vorumaa (Voru)','VO',1),(1069,68,'Afar','AF',1),(1070,68,'Amhara','AH',1),(1071,68,'Benishangul-Gumaz','BG',1),(1072,68,'Gambela','GB',1),(1073,68,'Hariai','HR',1),(1074,68,'Oromia','OR',1),(1075,68,'Somali','SM',1),(1076,68,'Southern Nations - Nationalities and Peoples Region','SN',1),(1077,68,'Tigray','TG',1),(1078,68,'Addis Ababa','AA',1),(1079,68,'Dire Dawa','DD',1),(1080,71,'Central Division','C',1),(1081,71,'Northern Division','N',1),(1082,71,'Eastern Division','E',1),(1083,71,'Western Division','W',1),(1084,71,'Rotuma','R',1),(1085,72,'Ahvenanmaan lääni','AL',1),(1086,72,'Etelä-Suomen lääni','ES',1),(1087,72,'Itä-Suomen lääni','IS',1),(1088,72,'Länsi-Suomen lääni','LS',1),(1089,72,'Lapin lääni','LA',1),(1090,72,'Oulun lääni','OU',1),(1114,74,'Ain','01',1),(1115,74,'Aisne','02',1),(1116,74,'Allier','03',1),(1117,74,'Alpes de Haute Provence','04',1),(1118,74,'Hautes-Alpes','05',1),(1119,74,'Alpes Maritimes','06',1),(1120,74,'Ard&egrave;che','07',1),(1121,74,'Ardennes','08',1),(1122,74,'Ari&egrave;ge','09',1),(1123,74,'Aube','10',1),(1124,74,'Aude','11',1),(1125,74,'Aveyron','12',1),(1126,74,'Bouches du Rh&ocirc;ne','13',1),(1127,74,'Calvados','14',1),(1128,74,'Cantal','15',1),(1129,74,'Charente','16',1),(1130,74,'Charente Maritime','17',1),(1131,74,'Cher','18',1),(1132,74,'Corr&egrave;ze','19',1),(1133,74,'Corse du Sud','2A',1),(1134,74,'Haute Corse','2B',1),(1135,74,'C&ocirc;te d&#039;or','21',1),(1136,74,'C&ocirc;tes d&#039;Armor','22',1),(1137,74,'Creuse','23',1),(1138,74,'Dordogne','24',1),(1139,74,'Doubs','25',1),(1140,74,'Dr&ocirc;me','26',1),(1141,74,'Eure','27',1),(1142,74,'Eure et Loir','28',1),(1143,74,'Finist&egrave;re','29',1),(1144,74,'Gard','30',1),(1145,74,'Haute Garonne','31',1),(1146,74,'Gers','32',1),(1147,74,'Gironde','33',1),(1148,74,'H&eacute;rault','34',1),(1149,74,'Ille et Vilaine','35',1),(1150,74,'Indre','36',1),(1151,74,'Indre et Loire','37',1),(1152,74,'Is&eacute;re','38',1),(1153,74,'Jura','39',1),(1154,74,'Landes','40',1),(1155,74,'Loir et Cher','41',1),(1156,74,'Loire','42',1),(1157,74,'Haute Loire','43',1),(1158,74,'Loire Atlantique','44',1),(1159,74,'Loiret','45',1),(1160,74,'Lot','46',1),(1161,74,'Lot et Garonne','47',1),(1162,74,'Loz&egrave;re','48',1),(1163,74,'Maine et Loire','49',1),(1164,74,'Manche','50',1),(1165,74,'Marne','51',1),(1166,74,'Haute Marne','52',1),(1167,74,'Mayenne','53',1),(1168,74,'Meurthe et Moselle','54',1),(1169,74,'Meuse','55',1),(1170,74,'Morbihan','56',1),(1171,74,'Moselle','57',1),(1172,74,'Ni&egrave;vre','58',1),(1173,74,'Nord','59',1),(1174,74,'Oise','60',1),(1175,74,'Orne','61',1),(1176,74,'Pas de Calais','62',1),(1177,74,'Puy de D&ocirc;me','63',1),(1178,74,'Pyr&eacute;n&eacute;es Atlantiques','64',1),(1179,74,'Hautes Pyr&eacute;n&eacute;es','65',1),(1180,74,'Pyr&eacute;n&eacute;es Orientales','66',1),(1181,74,'Bas Rhin','67',1),(1182,74,'Haut Rhin','68',1),(1183,74,'Rh&ocirc;ne','69',1),(1184,74,'Haute Sa&ocirc;ne','70',1),(1185,74,'Sa&ocirc;ne et Loire','71',1),(1186,74,'Sarthe','72',1),(1187,74,'Savoie','73',1),(1188,74,'Haute Savoie','74',1),(1189,74,'Paris','75',1),(1190,74,'Seine Maritime','76',1),(1191,74,'Seine et Marne','77',1),(1192,74,'Yvelines','78',1),(1193,74,'Deux S&egrave;vres','79',1),(1194,74,'Somme','80',1),(1195,74,'Tarn','81',1),(1196,74,'Tarn et Garonne','82',1),(1197,74,'Var','83',1),(1198,74,'Vaucluse','84',1),(1199,74,'Vend&eacute;e','85',1),(1200,74,'Vienne','86',1),(1201,74,'Haute Vienne','87',1),(1202,74,'Vosges','88',1),(1203,74,'Yonne','89',1),(1204,74,'Territoire de Belfort','90',1),(1205,74,'Essonne','91',1),(1206,74,'Hauts de Seine','92',1),(1207,74,'Seine St-Denis','93',1),(1208,74,'Val de Marne','94',1),(1209,74,'Val d\'Oise','95',1),(1210,76,'Archipel des Marquises','M',1),(1211,76,'Archipel des Tuamotu','T',1),(1212,76,'Archipel des Tubuai','I',1),(1213,76,'Iles du Vent','V',1),(1214,76,'Iles Sous-le-Vent','S',1),(1215,77,'Iles Crozet','C',1),(1216,77,'Iles Kerguelen','K',1),(1217,77,'Ile Amsterdam','A',1),(1218,77,'Ile Saint-Paul','P',1),(1219,77,'Adelie Land','D',1),(1220,78,'Estuaire','ES',1),(1221,78,'Haut-Ogooue','HO',1),(1222,78,'Moyen-Ogooue','MO',1),(1223,78,'Ngounie','NG',1),(1224,78,'Nyanga','NY',1),(1225,78,'Ogooue-Ivindo','OI',1),(1226,78,'Ogooue-Lolo','OL',1),(1227,78,'Ogooue-Maritime','OM',1),(1228,78,'Woleu-Ntem','WN',1),(1229,79,'Banjul','BJ',1),(1230,79,'Basse','BS',1),(1231,79,'Brikama','BR',1),(1232,79,'Janjangbure','JA',1),(1233,79,'Kanifeng','KA',1),(1234,79,'Kerewan','KE',1),(1235,79,'Kuntaur','KU',1),(1236,79,'Mansakonko','MA',1),(1237,79,'Lower River','LR',1),(1238,79,'Central River','CR',1),(1239,79,'North Bank','NB',1),(1240,79,'Upper River','UR',1),(1241,79,'Western','WE',1),(1242,80,'Abkhazia','AB',1),(1243,80,'Ajaria','AJ',1),(1244,80,'Tbilisi','TB',1),(1245,80,'Guria','GU',1),(1246,80,'Imereti','IM',1),(1247,80,'Kakheti','KA',1),(1248,80,'Kvemo Kartli','KK',1),(1249,80,'Mtskheta-Mtianeti','MM',1),(1250,80,'Racha Lechkhumi and Kvemo Svanet','RL',1),(1251,80,'Samegrelo-Zemo Svaneti','SZ',1),(1252,80,'Samtskhe-Javakheti','SJ',1),(1253,80,'Shida Kartli','SK',1),(1254,81,'Baden-W&uuml;rttemberg','BAW',1),(1255,81,'Bayern','BAY',1),(1256,81,'Berlin','BER',1),(1257,81,'Brandenburg','BRG',1),(1258,81,'Bremen','BRE',1),(1259,81,'Hamburg','HAM',1),(1260,81,'Hessen','HES',1),(1261,81,'Mecklenburg-Vorpommern','MEC',1),(1262,81,'Niedersachsen','NDS',1),(1263,81,'Nordrhein-Westfalen','NRW',1),(1264,81,'Rheinland-Pfalz','RHE',1),(1265,81,'Saarland','SAR',1),(1266,81,'Sachsen','SAS',1),(1267,81,'Sachsen-Anhalt','SAC',1),(1268,81,'Schleswig-Holstein','SCN',1),(1269,81,'Th&uuml;ringen','THE',1),(1270,82,'Ashanti Region','AS',1),(1271,82,'Brong-Ahafo Region','BA',1),(1272,82,'Central Region','CE',1),(1273,82,'Eastern Region','EA',1),(1274,82,'Greater Accra Region','GA',1),(1275,82,'Northern Region','NO',1),(1276,82,'Upper East Region','UE',1),(1277,82,'Upper West Region','UW',1),(1278,82,'Volta Region','VO',1),(1279,82,'Western Region','WE',1),(1280,84,'Attica','AT',1),(1281,84,'Central Greece','CN',1),(1282,84,'Central Macedonia','CM',1),(1283,84,'Crete','CR',1),(1284,84,'East Macedonia and Thrace','EM',1),(1285,84,'Epirus','EP',1),(1286,84,'Ionian Islands','II',1),(1287,84,'North Aegean','NA',1),(1288,84,'Peloponnesos','PP',1),(1289,84,'South Aegean','SA',1),(1290,84,'Thessaly','TH',1),(1291,84,'West Greece','WG',1),(1292,84,'West Macedonia','WM',1),(1293,85,'Avannaa','A',1),(1294,85,'Tunu','T',1),(1295,85,'Kitaa','K',1),(1296,86,'Saint Andrew','A',1),(1297,86,'Saint David','D',1),(1298,86,'Saint George','G',1),(1299,86,'Saint John','J',1),(1300,86,'Saint Mark','M',1),(1301,86,'Saint Patrick','P',1),(1302,86,'Carriacou','C',1),(1303,86,'Petit Martinique','Q',1),(1304,89,'Alta Verapaz','AV',1),(1305,89,'Baja Verapaz','BV',1),(1306,89,'Chimaltenango','CM',1),(1307,89,'Chiquimula','CQ',1),(1308,89,'El Peten','PE',1),(1309,89,'El Progreso','PR',1),(1310,89,'El Quiche','QC',1),(1311,89,'Escuintla','ES',1),(1312,89,'Guatemala','GU',1),(1313,89,'Huehuetenango','HU',1),(1314,89,'Izabal','IZ',1),(1315,89,'Jalapa','JA',1),(1316,89,'Jutiapa','JU',1),(1317,89,'Quetzaltenango','QZ',1),(1318,89,'Retalhuleu','RE',1),(1319,89,'Sacatepequez','ST',1),(1320,89,'San Marcos','SM',1),(1321,89,'Santa Rosa','SR',1),(1322,89,'Solola','SO',1),(1323,89,'Suchitepequez','SU',1),(1324,89,'Totonicapan','TO',1),(1325,89,'Zacapa','ZA',1),(1326,90,'Conakry','CNK',1),(1327,90,'Beyla','BYL',1),(1328,90,'Boffa','BFA',1),(1329,90,'Boke','BOK',1),(1330,90,'Coyah','COY',1),(1331,90,'Dabola','DBL',1),(1332,90,'Dalaba','DLB',1),(1333,90,'Dinguiraye','DGR',1),(1334,90,'Dubreka','DBR',1),(1335,90,'Faranah','FRN',1),(1336,90,'Forecariah','FRC',1),(1337,90,'Fria','FRI',1),(1338,90,'Gaoual','GAO',1),(1339,90,'Gueckedou','GCD',1),(1340,90,'Kankan','KNK',1),(1341,90,'Kerouane','KRN',1),(1342,90,'Kindia','KND',1),(1343,90,'Kissidougou','KSD',1),(1344,90,'Koubia','KBA',1),(1345,90,'Koundara','KDA',1),(1346,90,'Kouroussa','KRA',1),(1347,90,'Labe','LAB',1),(1348,90,'Lelouma','LLM',1),(1349,90,'Lola','LOL',1),(1350,90,'Macenta','MCT',1),(1351,90,'Mali','MAL',1),(1352,90,'Mamou','MAM',1),(1353,90,'Mandiana','MAN',1),(1354,90,'Nzerekore','NZR',1),(1355,90,'Pita','PIT',1),(1356,90,'Siguiri','SIG',1),(1357,90,'Telimele','TLM',1),(1358,90,'Tougue','TOG',1),(1359,90,'Yomou','YOM',1),(1360,91,'Bafata Region','BF',1),(1361,91,'Biombo Region','BB',1),(1362,91,'Bissau Region','BS',1),(1363,91,'Bolama Region','BL',1),(1364,91,'Cacheu Region','CA',1),(1365,91,'Gabu Region','GA',1),(1366,91,'Oio Region','OI',1),(1367,91,'Quinara Region','QU',1),(1368,91,'Tombali Region','TO',1),(1369,92,'Barima-Waini','BW',1),(1370,92,'Cuyuni-Mazaruni','CM',1),(1371,92,'Demerara-Mahaica','DM',1),(1372,92,'East Berbice-Corentyne','EC',1),(1373,92,'Essequibo Islands-West Demerara','EW',1),(1374,92,'Mahaica-Berbice','MB',1),(1375,92,'Pomeroon-Supenaam','PM',1),(1376,92,'Potaro-Siparuni','PI',1),(1377,92,'Upper Demerara-Berbice','UD',1),(1378,92,'Upper Takutu-Upper Essequibo','UT',1),(1379,93,'Artibonite','AR',1),(1380,93,'Centre','CE',1),(1381,93,'Grand\'Anse','GA',1),(1382,93,'Nord','ND',1),(1383,93,'Nord-Est','NE',1),(1384,93,'Nord-Ouest','NO',1),(1385,93,'Ouest','OU',1),(1386,93,'Sud','SD',1),(1387,93,'Sud-Est','SE',1),(1388,94,'Flat Island','F',1),(1389,94,'McDonald Island','M',1),(1390,94,'Shag Island','S',1),(1391,94,'Heard Island','H',1),(1392,95,'Atlantida','AT',1),(1393,95,'Choluteca','CH',1),(1394,95,'Colon','CL',1),(1395,95,'Comayagua','CM',1),(1396,95,'Copan','CP',1),(1397,95,'Cortes','CR',1),(1398,95,'El Paraiso','PA',1),(1399,95,'Francisco Morazan','FM',1),(1400,95,'Gracias a Dios','GD',1),(1401,95,'Intibuca','IN',1),(1402,95,'Islas de la Bahia (Bay Islands)','IB',1),(1403,95,'La Paz','PZ',1),(1404,95,'Lempira','LE',1),(1405,95,'Ocotepeque','OC',1),(1406,95,'Olancho','OL',1),(1407,95,'Santa Barbara','SB',1),(1408,95,'Valle','VA',1),(1409,95,'Yoro','YO',1),(1410,96,'Central and Western Hong Kong Island','HCW',1),(1411,96,'Eastern Hong Kong Island','HEA',1),(1412,96,'Southern Hong Kong Island','HSO',1),(1413,96,'Wan Chai Hong Kong Island','HWC',1),(1414,96,'Kowloon City Kowloon','KKC',1),(1415,96,'Kwun Tong Kowloon','KKT',1),(1416,96,'Sham Shui Po Kowloon','KSS',1),(1417,96,'Wong Tai Sin Kowloon','KWT',1),(1418,96,'Yau Tsim Mong Kowloon','KYT',1),(1419,96,'Islands New Territories','NIS',1),(1420,96,'Kwai Tsing New Territories','NKT',1),(1421,96,'North New Territories','NNO',1),(1422,96,'Sai Kung New Territories','NSK',1),(1423,96,'Sha Tin New Territories','NST',1),(1424,96,'Tai Po New Territories','NTP',1),(1425,96,'Tsuen Wan New Territories','NTW',1),(1426,96,'Tuen Mun New Territories','NTM',1),(1427,96,'Yuen Long New Territories','NYL',1),(1467,98,'Austurland','AL',1),(1468,98,'Hofuoborgarsvaeoi','HF',1),(1469,98,'Norourland eystra','NE',1),(1470,98,'Norourland vestra','NV',1),(1471,98,'Suourland','SL',1),(1472,98,'Suournes','SN',1),(1473,98,'Vestfiroir','VF',1),(1474,98,'Vesturland','VL',1),(1475,99,'Andaman and Nicobar Islands','AN',1),(1476,99,'Andhra Pradesh','AP',1),(1477,99,'Arunachal Pradesh','AR',1),(1478,99,'Assam','AS',1),(1479,99,'Bihar','BI',1),(1480,99,'Chandigarh','CH',1),(1481,99,'Dadra and Nagar Haveli','DA',1),(1482,99,'Daman and Diu','DM',1),(1483,99,'Delhi','DE',1),(1484,99,'Goa','GO',1),(1485,99,'Gujarat','GU',1),(1486,99,'Haryana','HA',1),(1487,99,'Himachal Pradesh','HP',1),(1488,99,'Jammu and Kashmir','JA',1),(1489,99,'Karnataka','KA',1),(1490,99,'Kerala','KE',1),(1491,99,'Lakshadweep Islands','LI',1),(1492,99,'Madhya Pradesh','MP',1),(1493,99,'Maharashtra','MA',1),(1494,99,'Manipur','MN',1),(1495,99,'Meghalaya','ME',1),(1496,99,'Mizoram','MI',1),(1497,99,'Nagaland','NA',1),(1498,99,'Orissa','OR',1),(1499,99,'Pondicherry','PO',1),(1500,99,'Punjab','PU',1),(1501,99,'Rajasthan','RA',1),(1502,99,'Sikkim','SI',1),(1503,99,'Tamil Nadu','TN',1),(1504,99,'Tripura','TR',1),(1505,99,'Uttar Pradesh','UP',1),(1506,99,'West Bengal','WB',1),(1507,100,'Aceh','AC',1),(1508,100,'Bali','BA',1),(1509,100,'Banten','BT',1),(1510,100,'Bengkulu','BE',1),(1511,100,'BoDeTaBek','BD',1),(1512,100,'Gorontalo','GO',1),(1513,100,'Jakarta Raya','JK',1),(1514,100,'Jambi','JA',1),(1515,100,'Jawa Barat','JB',1),(1516,100,'Jawa Tengah','JT',1),(1517,100,'Jawa Timur','JI',1),(1518,100,'Kalimantan Barat','KB',1),(1519,100,'Kalimantan Selatan','KS',1),(1520,100,'Kalimantan Tengah','KT',1),(1521,100,'Kalimantan Timur','KI',1),(1522,100,'Kepulauan Bangka Belitung','BB',1),(1523,100,'Lampung','LA',1),(1524,100,'Maluku','MA',1),(1525,100,'Maluku Utara','MU',1),(1526,100,'Nusa Tenggara Barat','NB',1),(1527,100,'Nusa Tenggara Timur','NT',1),(1528,100,'Papua','PA',1),(1529,100,'Riau','RI',1),(1530,100,'Sulawesi Selatan','SN',1),(1531,100,'Sulawesi Tengah','ST',1),(1532,100,'Sulawesi Tenggara','SG',1),(1533,100,'Sulawesi Utara','SA',1),(1534,100,'Sumatera Barat','SB',1),(1535,100,'Sumatera Selatan','SS',1),(1536,100,'Sumatera Utara','SU',1),(1537,100,'Yogyakarta','YO',1),(1538,101,'Tehran','TEH',1),(1539,101,'Qom','QOM',1),(1540,101,'Markazi','MKZ',1),(1541,101,'Qazvin','QAZ',1),(1542,101,'Gilan','GIL',1),(1543,101,'Ardabil','ARD',1),(1544,101,'Zanjan','ZAN',1),(1545,101,'East Azarbaijan','EAZ',1),(1546,101,'West Azarbaijan','WEZ',1),(1547,101,'Kurdistan','KRD',1),(1548,101,'Hamadan','HMD',1),(1549,101,'Kermanshah','KRM',1),(1550,101,'Ilam','ILM',1),(1551,101,'Lorestan','LRS',1),(1552,101,'Khuzestan','KZT',1),(1553,101,'Chahar Mahaal and Bakhtiari','CMB',1),(1554,101,'Kohkiluyeh and Buyer Ahmad','KBA',1),(1555,101,'Bushehr','BSH',1),(1556,101,'Fars','FAR',1),(1557,101,'Hormozgan','HRM',1),(1558,101,'Sistan and Baluchistan','SBL',1),(1559,101,'Kerman','KRB',1),(1560,101,'Yazd','YZD',1),(1561,101,'Esfahan','EFH',1),(1562,101,'Semnan','SMN',1),(1563,101,'Mazandaran','MZD',1),(1564,101,'Golestan','GLS',1),(1565,101,'North Khorasan','NKH',1),(1566,101,'Razavi Khorasan','RKH',1),(1567,101,'South Khorasan','SKH',1),(1568,102,'Baghdad','BD',1),(1569,102,'Salah ad Din','SD',1),(1570,102,'Diyala','DY',1),(1571,102,'Wasit','WS',1),(1572,102,'Maysan','MY',1),(1573,102,'Al Basrah','BA',1),(1574,102,'Dhi Qar','DQ',1),(1575,102,'Al Muthanna','MU',1),(1576,102,'Al Qadisyah','QA',1),(1577,102,'Babil','BB',1),(1578,102,'Al Karbala','KB',1),(1579,102,'An Najaf','NJ',1),(1580,102,'Al Anbar','AB',1),(1581,102,'Ninawa','NN',1),(1582,102,'Dahuk','DH',1),(1583,102,'Arbil','AL',1),(1584,102,'At Ta\'mim','TM',1),(1585,102,'As Sulaymaniyah','SL',1),(1586,103,'Carlow','CA',1),(1587,103,'Cavan','CV',1),(1588,103,'Clare','CL',1),(1589,103,'Cork','CO',1),(1590,103,'Donegal','DO',1),(1591,103,'Dublin','DU',1),(1592,103,'Galway','GA',1),(1593,103,'Kerry','KE',1),(1594,103,'Kildare','KI',1),(1595,103,'Kilkenny','KL',1),(1596,103,'Laois','LA',1),(1597,103,'Leitrim','LE',1),(1598,103,'Limerick','LI',1),(1599,103,'Longford','LO',1),(1600,103,'Louth','LU',1),(1601,103,'Mayo','MA',1),(1602,103,'Meath','ME',1),(1603,103,'Monaghan','MO',1),(1604,103,'Offaly','OF',1),(1605,103,'Roscommon','RO',1),(1606,103,'Sligo','SL',1),(1607,103,'Tipperary','TI',1),(1608,103,'Waterford','WA',1),(1609,103,'Westmeath','WE',1),(1610,103,'Wexford','WX',1),(1611,103,'Wicklow','WI',1),(1612,104,'Be\'er Sheva','BS',1),(1613,104,'Bika\'at Hayarden','BH',1),(1614,104,'Eilat and Arava','EA',1),(1615,104,'Galil','GA',1),(1616,104,'Haifa','HA',1),(1617,104,'Jehuda Mountains','JM',1),(1618,104,'Jerusalem','JE',1),(1619,104,'Negev','NE',1),(1620,104,'Semaria','SE',1),(1621,104,'Sharon','SH',1),(1622,104,'Tel Aviv (Gosh Dan)','TA',1),(3860,105,'Caltanissetta','CL',1),(3842,105,'Agrigento','AG',1),(3843,105,'Alessandria','AL',1),(3844,105,'Ancona','AN',1),(3845,105,'Aosta','AO',1),(3846,105,'Arezzo','AR',1),(3847,105,'Ascoli Piceno','AP',1),(3848,105,'Asti','AT',1),(3849,105,'Avellino','AV',1),(3850,105,'Bari','BA',1),(3851,105,'Belluno','BL',1),(3852,105,'Benevento','BN',1),(3853,105,'Bergamo','BG',1),(3854,105,'Biella','BI',1),(3855,105,'Bologna','BO',1),(3856,105,'Bolzano','BZ',1),(3857,105,'Brescia','BS',1),(3858,105,'Brindisi','BR',1),(3859,105,'Cagliari','CA',1),(1643,106,'Clarendon Parish','CLA',1),(1644,106,'Hanover Parish','HAN',1),(1645,106,'Kingston Parish','KIN',1),(1646,106,'Manchester Parish','MAN',1),(1647,106,'Portland Parish','POR',1),(1648,106,'Saint Andrew Parish','AND',1),(1649,106,'Saint Ann Parish','ANN',1),(1650,106,'Saint Catherine Parish','CAT',1),(1651,106,'Saint Elizabeth Parish','ELI',1),(1652,106,'Saint James Parish','JAM',1),(1653,106,'Saint Mary Parish','MAR',1),(1654,106,'Saint Thomas Parish','THO',1),(1655,106,'Trelawny Parish','TRL',1),(1656,106,'Westmoreland Parish','WML',1),(1657,107,'Aichi','AI',1),(1658,107,'Akita','AK',1),(1659,107,'Aomori','AO',1),(1660,107,'Chiba','CH',1),(1661,107,'Ehime','EH',1),(1662,107,'Fukui','FK',1),(1663,107,'Fukuoka','FU',1),(1664,107,'Fukushima','FS',1),(1665,107,'Gifu','GI',1),(1666,107,'Gumma','GU',1),(1667,107,'Hiroshima','HI',1),(1668,107,'Hokkaido','HO',1),(1669,107,'Hyogo','HY',1),(1670,107,'Ibaraki','IB',1),(1671,107,'Ishikawa','IS',1),(1672,107,'Iwate','IW',1),(1673,107,'Kagawa','KA',1),(1674,107,'Kagoshima','KG',1),(1675,107,'Kanagawa','KN',1),(1676,107,'Kochi','KO',1),(1677,107,'Kumamoto','KU',1),(1678,107,'Kyoto','KY',1),(1679,107,'Mie','MI',1),(1680,107,'Miyagi','MY',1),(1681,107,'Miyazaki','MZ',1),(1682,107,'Nagano','NA',1),(1683,107,'Nagasaki','NG',1),(1684,107,'Nara','NR',1),(1685,107,'Niigata','NI',1),(1686,107,'Oita','OI',1),(1687,107,'Okayama','OK',1),(1688,107,'Okinawa','ON',1),(1689,107,'Osaka','OS',1),(1690,107,'Saga','SA',1),(1691,107,'Saitama','SI',1),(1692,107,'Shiga','SH',1),(1693,107,'Shimane','SM',1),(1694,107,'Shizuoka','SZ',1),(1695,107,'Tochigi','TO',1),(1696,107,'Tokushima','TS',1),(1697,107,'Tokyo','TK',1),(1698,107,'Tottori','TT',1),(1699,107,'Toyama','TY',1),(1700,107,'Wakayama','WA',1),(1701,107,'Yamagata','YA',1),(1702,107,'Yamaguchi','YM',1),(1703,107,'Yamanashi','YN',1),(1704,108,'\'Amman','AM',1),(1705,108,'Ajlun','AJ',1),(1706,108,'Al \'Aqabah','AA',1),(1707,108,'Al Balqa\'','AB',1),(1708,108,'Al Karak','AK',1),(1709,108,'Al Mafraq','AL',1),(1710,108,'At Tafilah','AT',1),(1711,108,'Az Zarqa\'','AZ',1),(1712,108,'Irbid','IR',1),(1713,108,'Jarash','JA',1),(1714,108,'Ma\'an','MA',1),(1715,108,'Madaba','MD',1),(1716,109,'Almaty','AL',1),(1717,109,'Almaty City','AC',1),(1718,109,'Aqmola','AM',1),(1719,109,'Aqtobe','AQ',1),(1720,109,'Astana City','AS',1),(1721,109,'Atyrau','AT',1),(1722,109,'Batys Qazaqstan','BA',1),(1723,109,'Bayqongyr City','BY',1),(1724,109,'Mangghystau','MA',1),(1725,109,'Ongtustik Qazaqstan','ON',1),(1726,109,'Pavlodar','PA',1),(1727,109,'Qaraghandy','QA',1),(1728,109,'Qostanay','QO',1),(1729,109,'Qyzylorda','QY',1),(1730,109,'Shyghys Qazaqstan','SH',1),(1731,109,'Soltustik Qazaqstan','SO',1),(1732,109,'Zhambyl','ZH',1),(1733,110,'Central','CE',1),(1734,110,'Coast','CO',1),(1735,110,'Eastern','EA',1),(1736,110,'Nairobi Area','NA',1),(1737,110,'North Eastern','NE',1),(1738,110,'Nyanza','NY',1),(1739,110,'Rift Valley','RV',1),(1740,110,'Western','WE',1),(1741,111,'Abaiang','AG',1),(1742,111,'Abemama','AM',1),(1743,111,'Aranuka','AK',1),(1744,111,'Arorae','AO',1),(1745,111,'Banaba','BA',1),(1746,111,'Beru','BE',1),(1747,111,'Butaritari','bT',1),(1748,111,'Kanton','KA',1),(1749,111,'Kiritimati','KR',1),(1750,111,'Kuria','KU',1),(1751,111,'Maiana','MI',1),(1752,111,'Makin','MN',1),(1753,111,'Marakei','ME',1),(1754,111,'Nikunau','NI',1),(1755,111,'Nonouti','NO',1),(1756,111,'Onotoa','ON',1),(1757,111,'Tabiteuea','TT',1),(1758,111,'Tabuaeran','TR',1),(1759,111,'Tamana','TM',1),(1760,111,'Tarawa','TW',1),(1761,111,'Teraina','TE',1),(1762,112,'Chagang-do','CHA',1),(1763,112,'Hamgyong-bukto','HAB',1),(1764,112,'Hamgyong-namdo','HAN',1),(1765,112,'Hwanghae-bukto','HWB',1),(1766,112,'Hwanghae-namdo','HWN',1),(1767,112,'Kangwon-do','KAN',1),(1768,112,'P\'yongan-bukto','PYB',1),(1769,112,'P\'yongan-namdo','PYN',1),(1770,112,'Ryanggang-do (Yanggang-do)','YAN',1),(1771,112,'Rason Directly Governed City','NAJ',1),(1772,112,'P\'yongyang Special City','PYO',1),(1773,113,'Ch\'ungch\'ong-bukto','CO',1),(1774,113,'Ch\'ungch\'ong-namdo','CH',1),(1775,113,'Cheju-do','CD',1),(1776,113,'Cholla-bukto','CB',1),(1777,113,'Cholla-namdo','CN',1),(1778,113,'Inch\'on-gwangyoksi','IG',1),(1779,113,'Kangwon-do','KA',1),(1780,113,'Kwangju-gwangyoksi','KG',1),(1781,113,'Kyonggi-do','KD',1),(1782,113,'Kyongsang-bukto','KB',1),(1783,113,'Kyongsang-namdo','KN',1),(1784,113,'Pusan-gwangyoksi','PG',1),(1785,113,'Soul-t\'ukpyolsi','SO',1),(1786,113,'Taegu-gwangyoksi','TA',1),(1787,113,'Taejon-gwangyoksi','TG',1),(1788,114,'Al \'Asimah','AL',1),(1789,114,'Al Ahmadi','AA',1),(1790,114,'Al Farwaniyah','AF',1),(1791,114,'Al Jahra\'','AJ',1),(1792,114,'Hawalli','HA',1),(1793,115,'Bishkek','GB',1),(1794,115,'Batken','B',1),(1795,115,'Chu','C',1),(1796,115,'Jalal-Abad','J',1),(1797,115,'Naryn','N',1),(1798,115,'Osh','O',1),(1799,115,'Talas','T',1),(1800,115,'Ysyk-Kol','Y',1),(1801,116,'Vientiane','VT',1),(1802,116,'Attapu','AT',1),(1803,116,'Bokeo','BK',1),(1804,116,'Bolikhamxai','BL',1),(1805,116,'Champasak','CH',1),(1806,116,'Houaphan','HO',1),(1807,116,'Khammouan','KH',1),(1808,116,'Louang Namtha','LM',1),(1809,116,'Louangphabang','LP',1),(1810,116,'Oudomxai','OU',1),(1811,116,'Phongsali','PH',1),(1812,116,'Salavan','SL',1),(1813,116,'Savannakhet','SV',1),(1814,116,'Vientiane','VI',1),(1815,116,'Xaignabouli','XA',1),(1816,116,'Xekong','XE',1),(1817,116,'Xiangkhoang','XI',1),(1818,116,'Xaisomboun','XN',1),(1852,119,'Berea','BE',1),(1853,119,'Butha-Buthe','BB',1),(1854,119,'Leribe','LE',1),(1855,119,'Mafeteng','MF',1),(1856,119,'Maseru','MS',1),(1857,119,'Mohale\'s Hoek','MH',1),(1858,119,'Mokhotlong','MK',1),(1859,119,'Qacha\'s Nek','QN',1),(1860,119,'Quthing','QT',1),(1861,119,'Thaba-Tseka','TT',1),(1862,120,'Bomi','BI',1),(1863,120,'Bong','BG',1),(1864,120,'Grand Bassa','GB',1),(1865,120,'Grand Cape Mount','CM',1),(1866,120,'Grand Gedeh','GG',1),(1867,120,'Grand Kru','GK',1),(1868,120,'Lofa','LO',1),(1869,120,'Margibi','MG',1),(1870,120,'Maryland','ML',1),(1871,120,'Montserrado','MS',1),(1872,120,'Nimba','NB',1),(1873,120,'River Cess','RC',1),(1874,120,'Sinoe','SN',1),(1875,121,'Ajdabiya','AJ',1),(1876,121,'Al \'Aziziyah','AZ',1),(1877,121,'Al Fatih','FA',1),(1878,121,'Al Jabal al Akhdar','JA',1),(1879,121,'Al Jufrah','JU',1),(1880,121,'Al Khums','KH',1),(1881,121,'Al Kufrah','KU',1),(1882,121,'An Nuqat al Khams','NK',1),(1883,121,'Ash Shati\'','AS',1),(1884,121,'Awbari','AW',1),(1885,121,'Az Zawiyah','ZA',1),(1886,121,'Banghazi','BA',1),(1887,121,'Darnah','DA',1),(1888,121,'Ghadamis','GD',1),(1889,121,'Gharyan','GY',1),(1890,121,'Misratah','MI',1),(1891,121,'Murzuq','MZ',1),(1892,121,'Sabha','SB',1),(1893,121,'Sawfajjin','SW',1),(1894,121,'Surt','SU',1),(1895,121,'Tarabulus (Tripoli)','TL',1),(1896,121,'Tarhunah','TH',1),(1897,121,'Tubruq','TU',1),(1898,121,'Yafran','YA',1),(1899,121,'Zlitan','ZL',1),(1900,122,'Vaduz','V',1),(1901,122,'Schaan','A',1),(1902,122,'Balzers','B',1),(1903,122,'Triesen','N',1),(1904,122,'Eschen','E',1),(1905,122,'Mauren','M',1),(1906,122,'Triesenberg','T',1),(1907,122,'Ruggell','R',1),(1908,122,'Gamprin','G',1),(1909,122,'Schellenberg','L',1),(1910,122,'Planken','P',1),(1911,123,'Alytus','AL',1),(1912,123,'Kaunas','KA',1),(1913,123,'Klaipeda','KL',1),(1914,123,'Marijampole','MA',1),(1915,123,'Panevezys','PA',1),(1916,123,'Siauliai','SI',1),(1917,123,'Taurage','TA',1),(1918,123,'Telsiai','TE',1),(1919,123,'Utena','UT',1),(1920,123,'Vilnius','VI',1),(1921,124,'Diekirch','DD',1),(1922,124,'Clervaux','DC',1),(1923,124,'Redange','DR',1),(1924,124,'Vianden','DV',1),(1925,124,'Wiltz','DW',1),(1926,124,'Grevenmacher','GG',1),(1927,124,'Echternach','GE',1),(1928,124,'Remich','GR',1),(1929,124,'Luxembourg','LL',1),(1930,124,'Capellen','LC',1),(1931,124,'Esch-sur-Alzette','LE',1),(1932,124,'Mersch','LM',1),(1933,125,'Our Lady Fatima Parish','OLF',1),(1934,125,'St. Anthony Parish','ANT',1),(1935,125,'St. Lazarus Parish','LAZ',1),(1936,125,'Cathedral Parish','CAT',1),(1937,125,'St. Lawrence Parish','LAW',1),(1938,127,'Antananarivo','AN',1),(1939,127,'Antsiranana','AS',1),(1940,127,'Fianarantsoa','FN',1),(1941,127,'Mahajanga','MJ',1),(1942,127,'Toamasina','TM',1),(1943,127,'Toliara','TL',1),(1944,128,'Balaka','BLK',1),(1945,128,'Blantyre','BLT',1),(1946,128,'Chikwawa','CKW',1),(1947,128,'Chiradzulu','CRD',1),(1948,128,'Chitipa','CTP',1),(1949,128,'Dedza','DDZ',1),(1950,128,'Dowa','DWA',1),(1951,128,'Karonga','KRG',1),(1952,128,'Kasungu','KSG',1),(1953,128,'Likoma','LKM',1),(1954,128,'Lilongwe','LLG',1),(1955,128,'Machinga','MCG',1),(1956,128,'Mangochi','MGC',1),(1957,128,'Mchinji','MCH',1),(1958,128,'Mulanje','MLJ',1),(1959,128,'Mwanza','MWZ',1),(1960,128,'Mzimba','MZM',1),(1961,128,'Ntcheu','NTU',1),(1962,128,'Nkhata Bay','NKB',1),(1963,128,'Nkhotakota','NKH',1),(1964,128,'Nsanje','NSJ',1),(1965,128,'Ntchisi','NTI',1),(1966,128,'Phalombe','PHL',1),(1967,128,'Rumphi','RMP',1),(1968,128,'Salima','SLM',1),(1969,128,'Thyolo','THY',1),(1970,128,'Zomba','ZBA',1),(1971,129,'Johor','MY-01',1),(1972,129,'Kedah','MY-02',1),(1973,129,'Kelantan','MY-03',1),(1974,129,'Labuan','MY-15',1),(1975,129,'Melaka','MY-04',1),(1976,129,'Negeri Sembilan','MY-05',1),(1977,129,'Pahang','MY-06',1),(1978,129,'Perak','MY-08',1),(1979,129,'Perlis','MY-09',1),(1980,129,'Pulau Pinang','MY-07',1),(1981,129,'Sabah','MY-12',1),(1982,129,'Sarawak','MY-13',1),(1983,129,'Selangor','MY-10',1),(1984,129,'Terengganu','MY-11',1),(1985,129,'Kuala Lumpur','MY-14',1),(4035,129,'Putrajaya','MY-16',1),(1986,130,'Thiladhunmathi Uthuru','THU',1),(1987,130,'Thiladhunmathi Dhekunu','THD',1),(1988,130,'Miladhunmadulu Uthuru','MLU',1),(1989,130,'Miladhunmadulu Dhekunu','MLD',1),(1990,130,'Maalhosmadulu Uthuru','MAU',1),(1991,130,'Maalhosmadulu Dhekunu','MAD',1),(1992,130,'Faadhippolhu','FAA',1),(1993,130,'Male Atoll','MAA',1),(1994,130,'Ari Atoll Uthuru','AAU',1),(1995,130,'Ari Atoll Dheknu','AAD',1),(1996,130,'Felidhe Atoll','FEA',1),(1997,130,'Mulaku Atoll','MUA',1),(1998,130,'Nilandhe Atoll Uthuru','NAU',1),(1999,130,'Nilandhe Atoll Dhekunu','NAD',1),(2000,130,'Kolhumadulu','KLH',1),(2001,130,'Hadhdhunmathi','HDH',1),(2002,130,'Huvadhu Atoll Uthuru','HAU',1),(2003,130,'Huvadhu Atoll Dhekunu','HAD',1),(2004,130,'Fua Mulaku','FMU',1),(2005,130,'Addu','ADD',1),(2006,131,'Gao','GA',1),(2007,131,'Kayes','KY',1),(2008,131,'Kidal','KD',1),(2009,131,'Koulikoro','KL',1),(2010,131,'Mopti','MP',1),(2011,131,'Segou','SG',1),(2012,131,'Sikasso','SK',1),(2013,131,'Tombouctou','TB',1),(2014,131,'Bamako Capital District','CD',1),(2015,132,'Attard','ATT',1),(2016,132,'Balzan','BAL',1),(2017,132,'Birgu','BGU',1),(2018,132,'Birkirkara','BKK',1),(2019,132,'Birzebbuga','BRZ',1),(2020,132,'Bormla','BOR',1),(2021,132,'Dingli','DIN',1),(2022,132,'Fgura','FGU',1),(2023,132,'Floriana','FLO',1),(2024,132,'Gudja','GDJ',1),(2025,132,'Gzira','GZR',1),(2026,132,'Gargur','GRG',1),(2027,132,'Gaxaq','GXQ',1),(2028,132,'Hamrun','HMR',1),(2029,132,'Iklin','IKL',1),(2030,132,'Isla','ISL',1),(2031,132,'Kalkara','KLK',1),(2032,132,'Kirkop','KRK',1),(2033,132,'Lija','LIJ',1),(2034,132,'Luqa','LUQ',1),(2035,132,'Marsa','MRS',1),(2036,132,'Marsaskala','MKL',1),(2037,132,'Marsaxlokk','MXL',1),(2038,132,'Mdina','MDN',1),(2039,132,'Melliea','MEL',1),(2040,132,'Mgarr','MGR',1),(2041,132,'Mosta','MST',1),(2042,132,'Mqabba','MQA',1),(2043,132,'Msida','MSI',1),(2044,132,'Mtarfa','MTF',1),(2045,132,'Naxxar','NAX',1),(2046,132,'Paola','PAO',1),(2047,132,'Pembroke','PEM',1),(2048,132,'Pieta','PIE',1),(2049,132,'Qormi','QOR',1),(2050,132,'Qrendi','QRE',1),(2051,132,'Rabat','RAB',1),(2052,132,'Safi','SAF',1),(2053,132,'San Giljan','SGI',1),(2054,132,'Santa Lucija','SLU',1),(2055,132,'San Pawl il-Bahar','SPB',1),(2056,132,'San Gwann','SGW',1),(2057,132,'Santa Venera','SVE',1),(2058,132,'Siggiewi','SIG',1),(2059,132,'Sliema','SLM',1),(2060,132,'Swieqi','SWQ',1),(2061,132,'Ta Xbiex','TXB',1),(2062,132,'Tarxien','TRX',1),(2063,132,'Valletta','VLT',1),(2064,132,'Xgajra','XGJ',1),(2065,132,'Zabbar','ZBR',1),(2066,132,'Zebbug','ZBG',1),(2067,132,'Zejtun','ZJT',1),(2068,132,'Zurrieq','ZRQ',1),(2069,132,'Fontana','FNT',1),(2070,132,'Ghajnsielem','GHJ',1),(2071,132,'Gharb','GHR',1),(2072,132,'Ghasri','GHS',1),(2073,132,'Kercem','KRC',1),(2074,132,'Munxar','MUN',1),(2075,132,'Nadur','NAD',1),(2076,132,'Qala','QAL',1),(2077,132,'Victoria','VIC',1),(2078,132,'San Lawrenz','SLA',1),(2079,132,'Sannat','SNT',1),(2080,132,'Xagra','ZAG',1),(2081,132,'Xewkija','XEW',1),(2082,132,'Zebbug','ZEB',1),(2083,133,'Ailinginae','ALG',1),(2084,133,'Ailinglaplap','ALL',1),(2085,133,'Ailuk','ALK',1),(2086,133,'Arno','ARN',1),(2087,133,'Aur','AUR',1),(2088,133,'Bikar','BKR',1),(2089,133,'Bikini','BKN',1),(2090,133,'Bokak','BKK',1),(2091,133,'Ebon','EBN',1),(2092,133,'Enewetak','ENT',1),(2093,133,'Erikub','EKB',1),(2094,133,'Jabat','JBT',1),(2095,133,'Jaluit','JLT',1),(2096,133,'Jemo','JEM',1),(2097,133,'Kili','KIL',1),(2098,133,'Kwajalein','KWJ',1),(2099,133,'Lae','LAE',1),(2100,133,'Lib','LIB',1),(2101,133,'Likiep','LKP',1),(2102,133,'Majuro','MJR',1),(2103,133,'Maloelap','MLP',1),(2104,133,'Mejit','MJT',1),(2105,133,'Mili','MIL',1),(2106,133,'Namorik','NMK',1),(2107,133,'Namu','NAM',1),(2108,133,'Rongelap','RGL',1),(2109,133,'Rongrik','RGK',1),(2110,133,'Toke','TOK',1),(2111,133,'Ujae','UJA',1),(2112,133,'Ujelang','UJL',1),(2113,133,'Utirik','UTK',1),(2114,133,'Wotho','WTH',1),(2115,133,'Wotje','WTJ',1),(2116,135,'Adrar','AD',1),(2117,135,'Assaba','AS',1),(2118,135,'Brakna','BR',1),(2119,135,'Dakhlet Nouadhibou','DN',1),(2120,135,'Gorgol','GO',1),(2121,135,'Guidimaka','GM',1),(2122,135,'Hodh Ech Chargui','HC',1),(2123,135,'Hodh El Gharbi','HG',1),(2124,135,'Inchiri','IN',1),(2125,135,'Tagant','TA',1),(2126,135,'Tiris Zemmour','TZ',1),(2127,135,'Trarza','TR',1),(2128,135,'Nouakchott','NO',1),(2129,136,'Beau Bassin-Rose Hill','BR',1),(2130,136,'Curepipe','CU',1),(2131,136,'Port Louis','PU',1),(2132,136,'Quatre Bornes','QB',1),(2133,136,'Vacoas-Phoenix','VP',1),(2134,136,'Agalega Islands','AG',1),(2135,136,'Cargados Carajos Shoals (Saint Brandon Islands)','CC',1),(2136,136,'Rodrigues','RO',1),(2137,136,'Black River','BL',1),(2138,136,'Flacq','FL',1),(2139,136,'Grand Port','GP',1),(2140,136,'Moka','MO',1),(2141,136,'Pamplemousses','PA',1),(2142,136,'Plaines Wilhems','PW',1),(2143,136,'Port Louis','PL',1),(2144,136,'Riviere du Rempart','RR',1),(2145,136,'Savanne','SA',1),(2146,138,'Baja California Norte','BN',1),(2147,138,'Baja California Sur','BS',1),(2148,138,'Campeche','CA',1),(2149,138,'Chiapas','CI',1),(2150,138,'Chihuahua','CH',1),(2151,138,'Coahuila de Zaragoza','CZ',1),(2152,138,'Colima','CL',1),(2153,138,'Distrito Federal','DF',1),(2154,138,'Durango','DU',1),(2155,138,'Guanajuato','GA',1),(2156,138,'Guerrero','GE',1),(2157,138,'Hidalgo','HI',1),(2158,138,'Jalisco','JA',1),(2159,138,'Mexico','ME',1),(2160,138,'Michoacan de Ocampo','MI',1),(2161,138,'Morelos','MO',1),(2162,138,'Nayarit','NA',1),(2163,138,'Nuevo Leon','NL',1),(2164,138,'Oaxaca','OA',1),(2165,138,'Puebla','PU',1),(2166,138,'Queretaro de Arteaga','QA',1),(2167,138,'Quintana Roo','QR',1),(2168,138,'San Luis Potosi','SA',1),(2169,138,'Sinaloa','SI',1),(2170,138,'Sonora','SO',1),(2171,138,'Tabasco','TB',1),(2172,138,'Tamaulipas','TM',1),(2173,138,'Tlaxcala','TL',1),(2174,138,'Veracruz-Llave','VE',1),(2175,138,'Yucatan','YU',1),(2176,138,'Zacatecas','ZA',1),(2177,139,'Chuuk','C',1),(2178,139,'Kosrae','K',1),(2179,139,'Pohnpei','P',1),(2180,139,'Yap','Y',1),(2181,140,'Gagauzia','GA',1),(2182,140,'Chisinau','CU',1),(2183,140,'Balti','BA',1),(2184,140,'Cahul','CA',1),(2185,140,'Edinet','ED',1),(2186,140,'Lapusna','LA',1),(2187,140,'Orhei','OR',1),(2188,140,'Soroca','SO',1),(2189,140,'Tighina','TI',1),(2190,140,'Ungheni','UN',1),(2191,140,'St‚nga Nistrului','SN',1),(2192,141,'Fontvieille','FV',1),(2193,141,'La Condamine','LC',1),(2194,141,'Monaco-Ville','MV',1),(2195,141,'Monte-Carlo','MC',1),(2196,142,'Ulanbaatar','1',1),(2197,142,'Orhon','035',1),(2198,142,'Darhan uul','037',1),(2199,142,'Hentiy','039',1),(2200,142,'Hovsgol','041',1),(2201,142,'Hovd','043',1),(2202,142,'Uvs','046',1),(2203,142,'Tov','047',1),(2204,142,'Selenge','049',1),(2205,142,'Suhbaatar','051',1),(2206,142,'Omnogovi','053',1),(2207,142,'Ovorhangay','055',1),(2208,142,'Dzavhan','057',1),(2209,142,'DundgovL','059',1),(2210,142,'Dornod','061',1),(2211,142,'Dornogov','063',1),(2212,142,'Govi-Sumber','064',1),(2213,142,'Govi-Altay','065',1),(2214,142,'Bulgan','067',1),(2215,142,'Bayanhongor','069',1),(2216,142,'Bayan-Olgiy','071',1),(2217,142,'Arhangay','073',1),(2218,143,'Saint Anthony','A',1),(2219,143,'Saint Georges','G',1),(2220,143,'Saint Peter','P',1),(2221,144,'Agadir','AGD',1),(2222,144,'Al Hoceima','HOC',1),(2223,144,'Azilal','AZI',1),(2224,144,'Beni Mellal','BME',1),(2225,144,'Ben Slimane','BSL',1),(2226,144,'Boulemane','BLM',1),(2227,144,'Casablanca','CBL',1),(2228,144,'Chaouen','CHA',1),(2229,144,'El Jadida','EJA',1),(2230,144,'El Kelaa des Sraghna','EKS',1),(2231,144,'Er Rachidia','ERA',1),(2232,144,'Essaouira','ESS',1),(2233,144,'Fes','FES',1),(2234,144,'Figuig','FIG',1),(2235,144,'Guelmim','GLM',1),(2236,144,'Ifrane','IFR',1),(2237,144,'Kenitra','KEN',1),(2238,144,'Khemisset','KHM',1),(2239,144,'Khenifra','KHN',1),(2240,144,'Khouribga','KHO',1),(2241,144,'Laayoune','LYN',1),(2242,144,'Larache','LAR',1),(2243,144,'Marrakech','MRK',1),(2244,144,'Meknes','MKN',1),(2245,144,'Nador','NAD',1),(2246,144,'Ouarzazate','ORZ',1),(2247,144,'Oujda','OUJ',1),(2248,144,'Rabat-Sale','RSA',1),(2249,144,'Safi','SAF',1),(2250,144,'Settat','SET',1),(2251,144,'Sidi Kacem','SKA',1),(2252,144,'Tangier','TGR',1),(2253,144,'Tan-Tan','TAN',1),(2254,144,'Taounate','TAO',1),(2255,144,'Taroudannt','TRD',1),(2256,144,'Tata','TAT',1),(2257,144,'Taza','TAZ',1),(2258,144,'Tetouan','TET',1),(2259,144,'Tiznit','TIZ',1),(2260,144,'Ad Dakhla','ADK',1),(2261,144,'Boujdour','BJD',1),(2262,144,'Es Smara','ESM',1),(2263,145,'Cabo Delgado','CD',1),(2264,145,'Gaza','GZ',1),(2265,145,'Inhambane','IN',1),(2266,145,'Manica','MN',1),(2267,145,'Maputo (city)','MC',1),(2268,145,'Maputo','MP',1),(2269,145,'Nampula','NA',1),(2270,145,'Niassa','NI',1),(2271,145,'Sofala','SO',1),(2272,145,'Tete','TE',1),(2273,145,'Zambezia','ZA',1),(2274,146,'Ayeyarwady','AY',1),(2275,146,'Bago','BG',1),(2276,146,'Magway','MG',1),(2277,146,'Mandalay','MD',1),(2278,146,'Sagaing','SG',1),(2279,146,'Tanintharyi','TN',1),(2280,146,'Yangon','YG',1),(2281,146,'Chin State','CH',1),(2282,146,'Kachin State','KC',1),(2283,146,'Kayah State','KH',1),(2284,146,'Kayin State','KN',1),(2285,146,'Mon State','MN',1),(2286,146,'Rakhine State','RK',1),(2287,146,'Shan State','SH',1),(2288,147,'Caprivi','CA',1),(2289,147,'Erongo','ER',1),(2290,147,'Hardap','HA',1),(2291,147,'Karas','KR',1),(2292,147,'Kavango','KV',1),(2293,147,'Khomas','KH',1),(2294,147,'Kunene','KU',1),(2295,147,'Ohangwena','OW',1),(2296,147,'Omaheke','OK',1),(2297,147,'Omusati','OT',1),(2298,147,'Oshana','ON',1),(2299,147,'Oshikoto','OO',1),(2300,147,'Otjozondjupa','OJ',1),(2301,148,'Aiwo','AO',1),(2302,148,'Anabar','AA',1),(2303,148,'Anetan','AT',1),(2304,148,'Anibare','AI',1),(2305,148,'Baiti','BA',1),(2306,148,'Boe','BO',1),(2307,148,'Buada','BU',1),(2308,148,'Denigomodu','DE',1),(2309,148,'Ewa','EW',1),(2310,148,'Ijuw','IJ',1),(2311,148,'Meneng','ME',1),(2312,148,'Nibok','NI',1),(2313,148,'Uaboe','UA',1),(2314,148,'Yaren','YA',1),(2315,149,'Bagmati','BA',1),(2316,149,'Bheri','BH',1),(2317,149,'Dhawalagiri','DH',1),(2318,149,'Gandaki','GA',1),(2319,149,'Janakpur','JA',1),(2320,149,'Karnali','KA',1),(2321,149,'Kosi','KO',1),(2322,149,'Lumbini','LU',1),(2323,149,'Mahakali','MA',1),(2324,149,'Mechi','ME',1),(2325,149,'Narayani','NA',1),(2326,149,'Rapti','RA',1),(2327,149,'Sagarmatha','SA',1),(2328,149,'Seti','SE',1),(2329,150,'Drenthe','DR',1),(2330,150,'Flevoland','FL',1),(2331,150,'Friesland','FR',1),(2332,150,'Gelderland','GE',1),(2333,150,'Groningen','GR',1),(2334,150,'Limburg','LI',1),(2335,150,'Noord Brabant','NB',1),(2336,150,'Noord Holland','NH',1),(2337,150,'Overijssel','OV',1),(2338,150,'Utrecht','UT',1),(2339,150,'Zeeland','ZE',1),(2340,150,'Zuid Holland','ZH',1),(2341,152,'Iles Loyaute','L',1),(2342,152,'Nord','N',1),(2343,152,'Sud','S',1),(2344,153,'Auckland','AUK',1),(2345,153,'Bay of Plenty','BOP',1),(2346,153,'Canterbury','CAN',1),(2347,153,'Coromandel','COR',1),(2348,153,'Gisborne','GIS',1),(2349,153,'Fiordland','FIO',1),(2350,153,'Hawke\'s Bay','HKB',1),(2351,153,'Marlborough','MBH',1),(2352,153,'Manawatu-Wanganui','MWT',1),(2353,153,'Mt Cook-Mackenzie','MCM',1),(2354,153,'Nelson','NSN',1),(2355,153,'Northland','NTL',1),(2356,153,'Otago','OTA',1),(2357,153,'Southland','STL',1),(2358,153,'Taranaki','TKI',1),(2359,153,'Wellington','WGN',1),(2360,153,'Waikato','WKO',1),(2361,153,'Wairarapa','WAI',1),(2362,153,'West Coast','WTC',1),(2363,154,'Atlantico Norte','AN',1),(2364,154,'Atlantico Sur','AS',1),(2365,154,'Boaco','BO',1),(2366,154,'Carazo','CA',1),(2367,154,'Chinandega','CI',1),(2368,154,'Chontales','CO',1),(2369,154,'Esteli','ES',1),(2370,154,'Granada','GR',1),(2371,154,'Jinotega','JI',1),(2372,154,'Leon','LE',1),(2373,154,'Madriz','MD',1),(2374,154,'Managua','MN',1),(2375,154,'Masaya','MS',1),(2376,154,'Matagalpa','MT',1),(2377,154,'Nuevo Segovia','NS',1),(2378,154,'Rio San Juan','RS',1),(2379,154,'Rivas','RI',1),(2380,155,'Agadez','AG',1),(2381,155,'Diffa','DF',1),(2382,155,'Dosso','DS',1),(2383,155,'Maradi','MA',1),(2384,155,'Niamey','NM',1),(2385,155,'Tahoua','TH',1),(2386,155,'Tillaberi','TL',1),(2387,155,'Zinder','ZD',1),(2388,156,'Abia','AB',1),(2389,156,'Abuja Federal Capital Territory','CT',1),(2390,156,'Adamawa','AD',1),(2391,156,'Akwa Ibom','AK',1),(2392,156,'Anambra','AN',1),(2393,156,'Bauchi','BC',1),(2394,156,'Bayelsa','BY',1),(2395,156,'Benue','BN',1),(2396,156,'Borno','BO',1),(2397,156,'Cross River','CR',1),(2398,156,'Delta','DE',1),(2399,156,'Ebonyi','EB',1),(2400,156,'Edo','ED',1),(2401,156,'Ekiti','EK',1),(2402,156,'Enugu','EN',1),(2403,156,'Gombe','GO',1),(2404,156,'Imo','IM',1),(2405,156,'Jigawa','JI',1),(2406,156,'Kaduna','KD',1),(2407,156,'Kano','KN',1),(2408,156,'Katsina','KT',1),(2409,156,'Kebbi','KE',1),(2410,156,'Kogi','KO',1),(2411,156,'Kwara','KW',1),(2412,156,'Lagos','LA',1),(2413,156,'Nassarawa','NA',1),(2414,156,'Niger','NI',1),(2415,156,'Ogun','OG',1),(2416,156,'Ondo','ONG',1),(2417,156,'Osun','OS',1),(2418,156,'Oyo','OY',1),(2419,156,'Plateau','PL',1),(2420,156,'Rivers','RI',1),(2421,156,'Sokoto','SO',1),(2422,156,'Taraba','TA',1),(2423,156,'Yobe','YO',1),(2424,156,'Zamfara','ZA',1),(2425,159,'Northern Islands','N',1),(2426,159,'Rota','R',1),(2427,159,'Saipan','S',1),(2428,159,'Tinian','T',1),(2429,160,'Akershus','AK',1),(2430,160,'Aust-Agder','AA',1),(2431,160,'Buskerud','BU',1),(2432,160,'Finnmark','FM',1),(2433,160,'Hedmark','HM',1),(2434,160,'Hordaland','HL',1),(2435,160,'More og Romdal','MR',1),(2436,160,'Nord-Trondelag','NT',1),(2437,160,'Nordland','NL',1),(2438,160,'Ostfold','OF',1),(2439,160,'Oppland','OP',1),(2440,160,'Oslo','OL',1),(2441,160,'Rogaland','RL',1),(2442,160,'Sor-Trondelag','ST',1),(2443,160,'Sogn og Fjordane','SJ',1),(2444,160,'Svalbard','SV',1),(2445,160,'Telemark','TM',1),(2446,160,'Troms','TR',1),(2447,160,'Vest-Agder','VA',1),(2448,160,'Vestfold','VF',1),(2449,161,'Ad Dakhiliyah','DA',1),(2450,161,'Al Batinah','BA',1),(2451,161,'Al Wusta','WU',1),(2452,161,'Ash Sharqiyah','SH',1),(2453,161,'Az Zahirah','ZA',1),(2454,161,'Masqat','MA',1),(2455,161,'Musandam','MU',1),(2456,161,'Zufar','ZU',1),(2457,162,'Balochistan','B',1),(2458,162,'Federally Administered Tribal Areas','T',1),(2459,162,'Islamabad Capital Territory','I',1),(2460,162,'North-West Frontier','N',1),(2461,162,'Punjab','P',1),(2462,162,'Sindh','S',1),(2463,163,'Aimeliik','AM',1),(2464,163,'Airai','AR',1),(2465,163,'Angaur','AN',1),(2466,163,'Hatohobei','HA',1),(2467,163,'Kayangel','KA',1),(2468,163,'Koror','KO',1),(2469,163,'Melekeok','ME',1),(2470,163,'Ngaraard','NA',1),(2471,163,'Ngarchelong','NG',1),(2472,163,'Ngardmau','ND',1),(2473,163,'Ngatpang','NT',1),(2474,163,'Ngchesar','NC',1),(2475,163,'Ngeremlengui','NR',1),(2476,163,'Ngiwal','NW',1),(2477,163,'Peleliu','PE',1),(2478,163,'Sonsorol','SO',1),(2479,164,'Bocas del Toro','BT',1),(2480,164,'Chiriqui','CH',1),(2481,164,'Cocle','CC',1),(2482,164,'Colon','CL',1),(2483,164,'Darien','DA',1),(2484,164,'Herrera','HE',1),(2485,164,'Los Santos','LS',1),(2486,164,'Panama','PA',1),(2487,164,'San Blas','SB',1),(2488,164,'Veraguas','VG',1),(2489,165,'Bougainville','BV',1),(2490,165,'Central','CE',1),(2491,165,'Chimbu','CH',1),(2492,165,'Eastern Highlands','EH',1),(2493,165,'East New Britain','EB',1),(2494,165,'East Sepik','ES',1),(2495,165,'Enga','EN',1),(2496,165,'Gulf','GU',1),(2497,165,'Madang','MD',1),(2498,165,'Manus','MN',1),(2499,165,'Milne Bay','MB',1),(2500,165,'Morobe','MR',1),(2501,165,'National Capital','NC',1),(2502,165,'New Ireland','NI',1),(2503,165,'Northern','NO',1),(2504,165,'Sandaun','SA',1),(2505,165,'Southern Highlands','SH',1),(2506,165,'Western','WE',1),(2507,165,'Western Highlands','WH',1),(2508,165,'West New Britain','WB',1),(2509,166,'Alto Paraguay','AG',1),(2510,166,'Alto Parana','AN',1),(2511,166,'Amambay','AM',1),(2512,166,'Asuncion','AS',1),(2513,166,'Boqueron','BO',1),(2514,166,'Caaguazu','CG',1),(2515,166,'Caazapa','CZ',1),(2516,166,'Canindeyu','CN',1),(2517,166,'Central','CE',1),(2518,166,'Concepcion','CC',1),(2519,166,'Cordillera','CD',1),(2520,166,'Guaira','GU',1),(2521,166,'Itapua','IT',1),(2522,166,'Misiones','MI',1),(2523,166,'Neembucu','NE',1),(2524,166,'Paraguari','PA',1),(2525,166,'Presidente Hayes','PH',1),(2526,166,'San Pedro','SP',1),(2527,167,'Amazonas','AM',1),(2528,167,'Ancash','AN',1),(2529,167,'Apurimac','AP',1),(2530,167,'Arequipa','AR',1),(2531,167,'Ayacucho','AY',1),(2532,167,'Cajamarca','CJ',1),(2533,167,'Callao','CL',1),(2534,167,'Cusco','CU',1),(2535,167,'Huancavelica','HV',1),(2536,167,'Huanuco','HO',1),(2537,167,'Ica','IC',1),(2538,167,'Junin','JU',1),(2539,167,'La Libertad','LD',1),(2540,167,'Lambayeque','LY',1),(2541,167,'Lima','LI',1),(2542,167,'Loreto','LO',1),(2543,167,'Madre de Dios','MD',1),(2544,167,'Moquegua','MO',1),(2545,167,'Pasco','PA',1),(2546,167,'Piura','PI',1),(2547,167,'Puno','PU',1),(2548,167,'San Martin','SM',1),(2549,167,'Tacna','TA',1),(2550,167,'Tumbes','TU',1),(2551,167,'Ucayali','UC',1),(2552,168,'Abra','ABR',1),(2553,168,'Agusan del Norte','ANO',1),(2554,168,'Agusan del Sur','ASU',1),(2555,168,'Aklan','AKL',1),(2556,168,'Albay','ALB',1),(2557,168,'Antique','ANT',1),(2558,168,'Apayao','APY',1),(2559,168,'Aurora','AUR',1),(2560,168,'Basilan','BAS',1),(2561,168,'Bataan','BTA',1),(2562,168,'Batanes','BTE',1),(2563,168,'Batangas','BTG',1),(2564,168,'Biliran','BLR',1),(2565,168,'Benguet','BEN',1),(2566,168,'Bohol','BOL',1),(2567,168,'Bukidnon','BUK',1),(2568,168,'Bulacan','BUL',1),(2569,168,'Cagayan','CAG',1),(2570,168,'Camarines Norte','CNO',1),(2571,168,'Camarines Sur','CSU',1),(2572,168,'Camiguin','CAM',1),(2573,168,'Capiz','CAP',1),(2574,168,'Catanduanes','CAT',1),(2575,168,'Cavite','CAV',1),(2576,168,'Cebu','CEB',1),(2577,168,'Compostela','CMP',1),(2578,168,'Davao del Norte','DNO',1),(2579,168,'Davao del Sur','DSU',1),(2580,168,'Davao Oriental','DOR',1),(2581,168,'Eastern Samar','ESA',1),(2582,168,'Guimaras','GUI',1),(2583,168,'Ifugao','IFU',1),(2584,168,'Ilocos Norte','INO',1),(2585,168,'Ilocos Sur','ISU',1),(2586,168,'Iloilo','ILO',1),(2587,168,'Isabela','ISA',1),(2588,168,'Kalinga','KAL',1),(2589,168,'Laguna','LAG',1),(2590,168,'Lanao del Norte','LNO',1),(2591,168,'Lanao del Sur','LSU',1),(2592,168,'La Union','UNI',1),(2593,168,'Leyte','LEY',1),(2594,168,'Maguindanao','MAG',1),(2595,168,'Marinduque','MRN',1),(2596,168,'Masbate','MSB',1),(2597,168,'Mindoro Occidental','MIC',1),(2598,168,'Mindoro Oriental','MIR',1),(2599,168,'Misamis Occidental','MSC',1),(2600,168,'Misamis Oriental','MOR',1),(2601,168,'Mountain','MOP',1),(2602,168,'Negros Occidental','NOC',1),(2603,168,'Negros Oriental','NOR',1),(2604,168,'North Cotabato','NCT',1),(2605,168,'Northern Samar','NSM',1),(2606,168,'Nueva Ecija','NEC',1),(2607,168,'Nueva Vizcaya','NVZ',1),(2608,168,'Palawan','PLW',1),(2609,168,'Pampanga','PMP',1),(2610,168,'Pangasinan','PNG',1),(2611,168,'Quezon','QZN',1),(2612,168,'Quirino','QRN',1),(2613,168,'Rizal','RIZ',1),(2614,168,'Romblon','ROM',1),(2615,168,'Samar','SMR',1),(2616,168,'Sarangani','SRG',1),(2617,168,'Siquijor','SQJ',1),(2618,168,'Sorsogon','SRS',1),(2619,168,'South Cotabato','SCO',1),(2620,168,'Southern Leyte','SLE',1),(2621,168,'Sultan Kudarat','SKU',1),(2622,168,'Sulu','SLU',1),(2623,168,'Surigao del Norte','SNO',1),(2624,168,'Surigao del Sur','SSU',1),(2625,168,'Tarlac','TAR',1),(2626,168,'Tawi-Tawi','TAW',1),(2627,168,'Zambales','ZBL',1),(2628,168,'Zamboanga del Norte','ZNO',1),(2629,168,'Zamboanga del Sur','ZSU',1),(2630,168,'Zamboanga Sibugay','ZSI',1),(2631,170,'Dolnoslaskie','DO',1),(2632,170,'Kujawsko-Pomorskie','KP',1),(2633,170,'Lodzkie','LO',1),(2634,170,'Lubelskie','LL',1),(2635,170,'Lubuskie','LU',1),(2636,170,'Malopolskie','ML',1),(2637,170,'Mazowieckie','MZ',1),(2638,170,'Opolskie','OP',1),(2639,170,'Podkarpackie','PP',1),(2640,170,'Podlaskie','PL',1),(2641,170,'Pomorskie','PM',1),(2642,170,'Slaskie','SL',1),(2643,170,'Swietokrzyskie','SW',1),(2644,170,'Warminsko-Mazurskie','WM',1),(2645,170,'Wielkopolskie','WP',1),(2646,170,'Zachodniopomorskie','ZA',1),(2647,198,'Saint Pierre','P',1),(2648,198,'Miquelon','M',1),(2649,171,'A&ccedil;ores','AC',1),(2650,171,'Aveiro','AV',1),(2651,171,'Beja','BE',1),(2652,171,'Braga','BR',1),(2653,171,'Bragan&ccedil;a','BA',1),(2654,171,'Castelo Branco','CB',1),(2655,171,'Coimbra','CO',1),(2656,171,'&Eacute;vora','EV',1),(2657,171,'Faro','FA',1),(2658,171,'Guarda','GU',1),(2659,171,'Leiria','LE',1),(2660,171,'Lisboa','LI',1),(2661,171,'Madeira','ME',1),(2662,171,'Portalegre','PO',1),(2663,171,'Porto','PR',1),(2664,171,'Santar&eacute;m','SA',1),(2665,171,'Set&uacute;bal','SE',1),(2666,171,'Viana do Castelo','VC',1),(2667,171,'Vila Real','VR',1),(2668,171,'Viseu','VI',1),(2669,173,'Ad Dawhah','DW',1),(2670,173,'Al Ghuwayriyah','GW',1),(2671,173,'Al Jumayliyah','JM',1),(2672,173,'Al Khawr','KR',1),(2673,173,'Al Wakrah','WK',1),(2674,173,'Ar Rayyan','RN',1),(2675,173,'Jarayan al Batinah','JB',1),(2676,173,'Madinat ash Shamal','MS',1),(2677,173,'Umm Sa\'id','UD',1),(2678,173,'Umm Salal','UL',1),(2679,175,'Alba','AB',1),(2680,175,'Arad','AR',1),(2681,175,'Arges','AG',1),(2682,175,'Bacau','BC',1),(2683,175,'Bihor','BH',1),(2684,175,'Bistrita-Nasaud','BN',1),(2685,175,'Botosani','BT',1),(2686,175,'Brasov','BV',1),(2687,175,'Braila','BR',1),(2688,175,'Bucuresti','B',1),(2689,175,'Buzau','BZ',1),(2690,175,'Caras-Severin','CS',1),(2691,175,'Calarasi','CL',1),(2692,175,'Cluj','CJ',1),(2693,175,'Constanta','CT',1),(2694,175,'Covasna','CV',1),(2695,175,'Dimbovita','DB',1),(2696,175,'Dolj','DJ',1),(2697,175,'Galati','GL',1),(2698,175,'Giurgiu','GR',1),(2699,175,'Gorj','GJ',1),(2700,175,'Harghita','HR',1),(2701,175,'Hunedoara','HD',1),(2702,175,'Ialomita','IL',1),(2703,175,'Iasi','IS',1),(2704,175,'Ilfov','IF',1),(2705,175,'Maramures','MM',1),(2706,175,'Mehedinti','MH',1),(2707,175,'Mures','MS',1),(2708,175,'Neamt','NT',1),(2709,175,'Olt','OT',1),(2710,175,'Prahova','PH',1),(2711,175,'Satu-Mare','SM',1),(2712,175,'Salaj','SJ',1),(2713,175,'Sibiu','SB',1),(2714,175,'Suceava','SV',1),(2715,175,'Teleorman','TR',1),(2716,175,'Timis','TM',1),(2717,175,'Tulcea','TL',1),(2718,175,'Vaslui','VS',1),(2719,175,'Valcea','VL',1),(2720,175,'Vrancea','VN',1),(2721,176,'Abakan','AB',1),(2722,176,'Aginskoye','AG',1),(2723,176,'Anadyr','AN',1),(2724,176,'Arkahangelsk','AR',1),(2725,176,'Astrakhan','AS',1),(2726,176,'Barnaul','BA',1),(2727,176,'Belgorod','BE',1),(2728,176,'Birobidzhan','BI',1),(2729,176,'Blagoveshchensk','BL',1),(2730,176,'Bryansk','BR',1),(2731,176,'Cheboksary','CH',1),(2732,176,'Chelyabinsk','CL',1),(2733,176,'Cherkessk','CR',1),(2734,176,'Chita','CI',1),(2735,176,'Dudinka','DU',1),(2736,176,'Elista','EL',1),(2737,176,'Gomo-Altaysk','GO',1),(2738,176,'Gorno-Altaysk','GA',1),(2739,176,'Groznyy','GR',1),(2740,176,'Irkutsk','IR',1),(2741,176,'Ivanovo','IV',1),(2742,176,'Izhevsk','IZ',1),(2743,176,'Kalinigrad','KA',1),(2744,176,'Kaluga','KL',1),(2745,176,'Kasnodar','KS',1),(2746,176,'Kazan','KZ',1),(2747,176,'Kemerovo','KE',1),(2748,176,'Khabarovsk','KH',1),(2749,176,'Khanty-Mansiysk','KM',1),(2750,176,'Kostroma','KO',1),(2751,176,'Krasnodar','KR',1),(2752,176,'Krasnoyarsk','KN',1),(2753,176,'Kudymkar','KU',1),(2754,176,'Kurgan','KG',1),(2755,176,'Kursk','KK',1),(2756,176,'Kyzyl','KY',1),(2757,176,'Lipetsk','LI',1),(2758,176,'Magadan','MA',1),(2759,176,'Makhachkala','MK',1),(2760,176,'Maykop','MY',1),(2761,176,'Moscow','MO',1),(2762,176,'Murmansk','MU',1),(2763,176,'Nalchik','NA',1),(2764,176,'Naryan Mar','NR',1),(2765,176,'Nazran','NZ',1),(2766,176,'Nizhniy Novgorod','NI',1),(2767,176,'Novgorod','NO',1),(2768,176,'Novosibirsk','NV',1),(2769,176,'Omsk','OM',1),(2770,176,'Orel','OR',1),(2771,176,'Orenburg','OE',1),(2772,176,'Palana','PA',1),(2773,176,'Penza','PE',1),(2774,176,'Perm','PR',1),(2775,176,'Petropavlovsk-Kamchatskiy','PK',1),(2776,176,'Petrozavodsk','PT',1),(2777,176,'Pskov','PS',1),(2778,176,'Rostov-na-Donu','RO',1),(2779,176,'Ryazan','RY',1),(2780,176,'Salekhard','SL',1),(2781,176,'Samara','SA',1),(2782,176,'Saransk','SR',1),(2783,176,'Saratov','SV',1),(2784,176,'Smolensk','SM',1),(2785,176,'St. Petersburg','SP',1),(2786,176,'Stavropol','ST',1),(2787,176,'Syktyvkar','SY',1),(2788,176,'Tambov','TA',1),(2789,176,'Tomsk','TO',1),(2790,176,'Tula','TU',1),(2791,176,'Tura','TR',1),(2792,176,'Tver','TV',1),(2793,176,'Tyumen','TY',1),(2794,176,'Ufa','UF',1),(2795,176,'Ul\'yanovsk','UL',1),(2796,176,'Ulan-Ude','UU',1),(2797,176,'Ust\'-Ordynskiy','US',1),(2798,176,'Vladikavkaz','VL',1),(2799,176,'Vladimir','VA',1),(2800,176,'Vladivostok','VV',1),(2801,176,'Volgograd','VG',1),(2802,176,'Vologda','VD',1),(2803,176,'Voronezh','VO',1),(2804,176,'Vyatka','VY',1),(2805,176,'Yakutsk','YA',1),(2806,176,'Yaroslavl','YR',1),(2807,176,'Yekaterinburg','YE',1),(2808,176,'Yoshkar-Ola','YO',1),(2809,177,'Butare','BU',1),(2810,177,'Byumba','BY',1),(2811,177,'Cyangugu','CY',1),(2812,177,'Gikongoro','GK',1),(2813,177,'Gisenyi','GS',1),(2814,177,'Gitarama','GT',1),(2815,177,'Kibungo','KG',1),(2816,177,'Kibuye','KY',1),(2817,177,'Kigali Rurale','KR',1),(2818,177,'Kigali-ville','KV',1),(2819,177,'Ruhengeri','RU',1),(2820,177,'Umutara','UM',1),(2821,178,'Christ Church Nichola Town','CCN',1),(2822,178,'Saint Anne Sandy Point','SAS',1),(2823,178,'Saint George Basseterre','SGB',1),(2824,178,'Saint George Gingerland','SGG',1),(2825,178,'Saint James Windward','SJW',1),(2826,178,'Saint John Capesterre','SJC',1),(2827,178,'Saint John Figtree','SJF',1),(2828,178,'Saint Mary Cayon','SMC',1),(2829,178,'Saint Paul Capesterre','CAP',1),(2830,178,'Saint Paul Charlestown','CHA',1),(2831,178,'Saint Peter Basseterre','SPB',1),(2832,178,'Saint Thomas Lowland','STL',1),(2833,178,'Saint Thomas Middle Island','STM',1),(2834,178,'Trinity Palmetto Point','TPP',1),(2835,179,'Anse-la-Raye','AR',1),(2836,179,'Castries','CA',1),(2837,179,'Choiseul','CH',1),(2838,179,'Dauphin','DA',1),(2839,179,'Dennery','DE',1),(2840,179,'Gros-Islet','GI',1),(2841,179,'Laborie','LA',1),(2842,179,'Micoud','MI',1),(2843,179,'Praslin','PR',1),(2844,179,'Soufriere','SO',1),(2845,179,'Vieux-Fort','VF',1),(2846,180,'Charlotte','C',1),(2847,180,'Grenadines','R',1),(2848,180,'Saint Andrew','A',1),(2849,180,'Saint David','D',1),(2850,180,'Saint George','G',1),(2851,180,'Saint Patrick','P',1),(2852,181,'A\'ana','AN',1),(2853,181,'Aiga-i-le-Tai','AI',1),(2854,181,'Atua','AT',1),(2855,181,'Fa\'asaleleaga','FA',1),(2856,181,'Gaga\'emauga','GE',1),(2857,181,'Gagaifomauga','GF',1),(2858,181,'Palauli','PA',1),(2859,181,'Satupa\'itea','SA',1),(2860,181,'Tuamasaga','TU',1),(2861,181,'Va\'a-o-Fonoti','VF',1),(2862,181,'Vaisigano','VS',1),(2863,182,'Acquaviva','AC',1),(2864,182,'Borgo Maggiore','BM',1),(2865,182,'Chiesanuova','CH',1),(2866,182,'Domagnano','DO',1),(2867,182,'Faetano','FA',1),(2868,182,'Fiorentino','FI',1),(2869,182,'Montegiardino','MO',1),(2870,182,'Citta di San Marino','SM',1),(2871,182,'Serravalle','SE',1),(2872,183,'Sao Tome','S',1),(2873,183,'Principe','P',1),(2874,184,'Al Bahah','BH',1),(2875,184,'Al Hudud ash Shamaliyah','HS',1),(2876,184,'Al Jawf','JF',1),(2877,184,'Al Madinah','MD',1),(2878,184,'Al Qasim','QS',1),(2879,184,'Ar Riyad','RD',1),(2880,184,'Ash Sharqiyah (Eastern)','AQ',1),(2881,184,'\'Asir','AS',1),(2882,184,'Ha\'il','HL',1),(2883,184,'Jizan','JZ',1),(2884,184,'Makkah','ML',1),(2885,184,'Najran','NR',1),(2886,184,'Tabuk','TB',1),(2887,185,'Dakar','DA',1),(2888,185,'Diourbel','DI',1),(2889,185,'Fatick','FA',1),(2890,185,'Kaolack','KA',1),(2891,185,'Kolda','KO',1),(2892,185,'Louga','LO',1),(2893,185,'Matam','MA',1),(2894,185,'Saint-Louis','SL',1),(2895,185,'Tambacounda','TA',1),(2896,185,'Thies','TH',1),(2897,185,'Ziguinchor','ZI',1),(2898,186,'Anse aux Pins','AP',1),(2899,186,'Anse Boileau','AB',1),(2900,186,'Anse Etoile','AE',1),(2901,186,'Anse Louis','AL',1),(2902,186,'Anse Royale','AR',1),(2903,186,'Baie Lazare','BL',1),(2904,186,'Baie Sainte Anne','BS',1),(2905,186,'Beau Vallon','BV',1),(2906,186,'Bel Air','BA',1),(2907,186,'Bel Ombre','BO',1),(2908,186,'Cascade','CA',1),(2909,186,'Glacis','GL',1),(2910,186,'Grand\' Anse (on Mahe)','GM',1),(2911,186,'Grand\' Anse (on Praslin)','GP',1),(2912,186,'La Digue','DG',1),(2913,186,'La Riviere Anglaise','RA',1),(2914,186,'Mont Buxton','MB',1),(2915,186,'Mont Fleuri','MF',1),(2916,186,'Plaisance','PL',1),(2917,186,'Pointe La Rue','PR',1),(2918,186,'Port Glaud','PG',1),(2919,186,'Saint Louis','SL',1),(2920,186,'Takamaka','TA',1),(2921,187,'Eastern','E',1),(2922,187,'Northern','N',1),(2923,187,'Southern','S',1),(2924,187,'Western','W',1),(2925,189,'Banskobystrický','BA',1),(2926,189,'Bratislavský','BR',1),(2927,189,'Košický','KO',1),(2928,189,'Nitriansky','NI',1),(2929,189,'Prešovský','PR',1),(2930,189,'Trenčiansky','TC',1),(2931,189,'Trnavský','TV',1),(2932,189,'Žilinský','ZI',1),(2933,191,'Central','CE',1),(2934,191,'Choiseul','CH',1),(2935,191,'Guadalcanal','GC',1),(2936,191,'Honiara','HO',1),(2937,191,'Isabel','IS',1),(2938,191,'Makira','MK',1),(2939,191,'Malaita','ML',1),(2940,191,'Rennell and Bellona','RB',1),(2941,191,'Temotu','TM',1),(2942,191,'Western','WE',1),(2943,192,'Awdal','AW',1),(2944,192,'Bakool','BK',1),(2945,192,'Banaadir','BN',1),(2946,192,'Bari','BR',1),(2947,192,'Bay','BY',1),(2948,192,'Galguduud','GA',1),(2949,192,'Gedo','GE',1),(2950,192,'Hiiraan','HI',1),(2951,192,'Jubbada Dhexe','JD',1),(2952,192,'Jubbada Hoose','JH',1),(2953,192,'Mudug','MU',1),(2954,192,'Nugaal','NU',1),(2955,192,'Sanaag','SA',1),(2956,192,'Shabeellaha Dhexe','SD',1),(2957,192,'Shabeellaha Hoose','SH',1),(2958,192,'Sool','SL',1),(2959,192,'Togdheer','TO',1),(2960,192,'Woqooyi Galbeed','WG',1),(2961,193,'Eastern Cape','EC',1),(2962,193,'Free State','FS',1),(2963,193,'Gauteng','GT',1),(2964,193,'KwaZulu-Natal','KN',1),(2965,193,'Limpopo','LP',1),(2966,193,'Mpumalanga','MP',1),(2967,193,'North West','NW',1),(2968,193,'Northern Cape','NC',1),(2969,193,'Western Cape','WC',1),(2970,195,'La Coru&ntilde;a','CA',1),(2971,195,'&Aacute;lava','AL',1),(2972,195,'Albacete','AB',1),(2973,195,'Alicante','AC',1),(2974,195,'Almeria','AM',1),(2975,195,'Asturias','AS',1),(2976,195,'&Aacute;vila','AV',1),(2977,195,'Badajoz','BJ',1),(2978,195,'Baleares','IB',1),(2979,195,'Barcelona','BA',1),(2980,195,'Burgos','BU',1),(2981,195,'C&aacute;ceres','CC',1),(2982,195,'C&aacute;diz','CZ',1),(2983,195,'Cantabria','CT',1),(2984,195,'Castell&oacute;n','CL',1),(2985,195,'Ceuta','CE',1),(2986,195,'Ciudad Real','CR',1),(2987,195,'C&oacute;rdoba','CD',1),(2988,195,'Cuenca','CU',1),(2989,195,'Girona','GI',1),(2990,195,'Granada','GD',1),(2991,195,'Guadalajara','GJ',1),(2992,195,'Guip&uacute;zcoa','GP',1),(2993,195,'Huelva','HL',1),(2994,195,'Huesca','HS',1),(2995,195,'Ja&eacute;n','JN',1),(2996,195,'La Rioja','RJ',1),(2997,195,'Las Palmas','PM',1),(2998,195,'Leon','LE',1),(2999,195,'Lleida','LL',1),(3000,195,'Lugo','LG',1),(3001,195,'Madrid','MD',1),(3002,195,'Malaga','MA',1),(3003,195,'Melilla','ML',1),(3004,195,'Murcia','MU',1),(3005,195,'Navarra','NV',1),(3006,195,'Ourense','OU',1),(3007,195,'Palencia','PL',1),(3008,195,'Pontevedra','PO',1),(3009,195,'Salamanca','SL',1),(3010,195,'Santa Cruz de Tenerife','SC',1),(3011,195,'Segovia','SG',1),(3012,195,'Sevilla','SV',1),(3013,195,'Soria','SO',1),(3014,195,'Tarragona','TA',1),(3015,195,'Teruel','TE',1),(3016,195,'Toledo','TO',1),(3017,195,'Valencia','VC',1),(3018,195,'Valladolid','VD',1),(3019,195,'Vizcaya','VZ',1),(3020,195,'Zamora','ZM',1),(3021,195,'Zaragoza','ZR',1),(3022,196,'Central','CE',1),(3023,196,'Eastern','EA',1),(3024,196,'North Central','NC',1),(3025,196,'Northern','NO',1),(3026,196,'North Western','NW',1),(3027,196,'Sabaragamuwa','SA',1),(3028,196,'Southern','SO',1),(3029,196,'Uva','UV',1),(3030,196,'Western','WE',1),(3032,197,'Saint Helena','S',1),(3034,199,'A\'ali an Nil','ANL',1),(3035,199,'Al Bahr al Ahmar','BAM',1),(3036,199,'Al Buhayrat','BRT',1),(3037,199,'Al Jazirah','JZR',1),(3038,199,'Al Khartum','KRT',1),(3039,199,'Al Qadarif','QDR',1),(3040,199,'Al Wahdah','WDH',1),(3041,199,'An Nil al Abyad','ANB',1),(3042,199,'An Nil al Azraq','ANZ',1),(3043,199,'Ash Shamaliyah','ASH',1),(3044,199,'Bahr al Jabal','BJA',1),(3045,199,'Gharb al Istiwa\'iyah','GIS',1),(3046,199,'Gharb Bahr al Ghazal','GBG',1),(3047,199,'Gharb Darfur','GDA',1),(3048,199,'Gharb Kurdufan','GKU',1),(3049,199,'Janub Darfur','JDA',1),(3050,199,'Janub Kurdufan','JKU',1),(3051,199,'Junqali','JQL',1),(3052,199,'Kassala','KSL',1),(3053,199,'Nahr an Nil','NNL',1),(3054,199,'Shamal Bahr al Ghazal','SBG',1),(3055,199,'Shamal Darfur','SDA',1),(3056,199,'Shamal Kurdufan','SKU',1),(3057,199,'Sharq al Istiwa\'iyah','SIS',1),(3058,199,'Sinnar','SNR',1),(3059,199,'Warab','WRB',1),(3060,200,'Brokopondo','BR',1),(3061,200,'Commewijne','CM',1),(3062,200,'Coronie','CR',1),(3063,200,'Marowijne','MA',1),(3064,200,'Nickerie','NI',1),(3065,200,'Para','PA',1),(3066,200,'Paramaribo','PM',1),(3067,200,'Saramacca','SA',1),(3068,200,'Sipaliwini','SI',1),(3069,200,'Wanica','WA',1),(3070,202,'Hhohho','H',1),(3071,202,'Lubombo','L',1),(3072,202,'Manzini','M',1),(3073,202,'Shishelweni','S',1),(3074,203,'Blekinge','K',1),(3075,203,'Dalarna','W',1),(3076,203,'G&auml;vleborg','X',1),(3077,203,'Gotland','I',1),(3078,203,'Halland','N',1),(3079,203,'J&auml;mtland','Z',1),(3080,203,'J&ouml;nk&ouml;ping','F',1),(3081,203,'Kalmar','H',1),(3082,203,'Kronoberg','G',1),(3083,203,'Norrbotten','BD',1),(3084,203,'&Ouml;rebro','T',1),(3085,203,'&Ouml;sterg&ouml;tland','E',1),(3086,203,'Sk&aring;ne','M',1),(3087,203,'S&ouml;dermanland','D',1),(3088,203,'Stockholm','AB',1),(3089,203,'Uppsala','C',1),(3090,203,'V&auml;rmland','S',1),(3091,203,'V&auml;sterbotten','AC',1),(3092,203,'V&auml;sternorrland','Y',1),(3093,203,'V&auml;stmanland','U',1),(3094,203,'V&auml;stra G&ouml;taland','O',1),(3095,204,'Aargau','AG',1),(3096,204,'Appenzell Ausserrhoden','AR',1),(3097,204,'Appenzell Innerrhoden','AI',1),(3098,204,'Basel-Stadt','BS',1),(3099,204,'Basel-Landschaft','BL',1),(3100,204,'Bern','BE',1),(3101,204,'Fribourg','FR',1),(3102,204,'Gen&egrave;ve','GE',1),(3103,204,'Glarus','GL',1),(3104,204,'Graub&uuml;nden','GR',1),(3105,204,'Jura','JU',1),(3106,204,'Luzern','LU',1),(3107,204,'Neuch&acirc;tel','NE',1),(3108,204,'Nidwald','NW',1),(3109,204,'Obwald','OW',1),(3110,204,'St. Gallen','SG',1),(3111,204,'Schaffhausen','SH',1),(3112,204,'Schwyz','SZ',1),(3113,204,'Solothurn','SO',1),(3114,204,'Thurgau','TG',1),(3115,204,'Ticino','TI',1),(3116,204,'Uri','UR',1),(3117,204,'Valais','VS',1),(3118,204,'Vaud','VD',1),(3119,204,'Zug','ZG',1),(3120,204,'Z&uuml;rich','ZH',1),(3121,205,'Al Hasakah','HA',1),(3122,205,'Al Ladhiqiyah','LA',1),(3123,205,'Al Qunaytirah','QU',1),(3124,205,'Ar Raqqah','RQ',1),(3125,205,'As Suwayda','SU',1),(3126,205,'Dara','DA',1),(3127,205,'Dayr az Zawr','DZ',1),(3128,205,'Dimashq','DI',1),(3129,205,'Halab','HL',1),(3130,205,'Hamah','HM',1),(3131,205,'Hims','HI',1),(3132,205,'Idlib','ID',1),(3133,205,'Rif Dimashq','RD',1),(3134,205,'Tartus','TA',1),(3135,206,'Chang-hua','CH',1),(3136,206,'Chia-i','CI',1),(3137,206,'Hsin-chu','HS',1),(3138,206,'Hua-lien','HL',1),(3139,206,'I-lan','IL',1),(3140,206,'Kao-hsiung county','KH',1),(3141,206,'Kin-men','KM',1),(3142,206,'Lien-chiang','LC',1),(3143,206,'Miao-li','ML',1),(3144,206,'Nan-t\'ou','NT',1),(3145,206,'P\'eng-hu','PH',1),(3146,206,'P\'ing-tung','PT',1),(3147,206,'T\'ai-chung','TG',1),(3148,206,'T\'ai-nan','TA',1),(3149,206,'T\'ai-pei county','TP',1),(3150,206,'T\'ai-tung','TT',1),(3151,206,'T\'ao-yuan','TY',1),(3152,206,'Yun-lin','YL',1),(3153,206,'Chia-i city','CC',1),(3154,206,'Chi-lung','CL',1),(3155,206,'Hsin-chu','HC',1),(3156,206,'T\'ai-chung','TH',1),(3157,206,'T\'ai-nan','TN',1),(3158,206,'Kao-hsiung city','KC',1),(3159,206,'T\'ai-pei city','TC',1),(3160,207,'Gorno-Badakhstan','GB',1),(3161,207,'Khatlon','KT',1),(3162,207,'Sughd','SU',1),(3163,208,'Arusha','AR',1),(3164,208,'Dar es Salaam','DS',1),(3165,208,'Dodoma','DO',1),(3166,208,'Iringa','IR',1),(3167,208,'Kagera','KA',1),(3168,208,'Kigoma','KI',1),(3169,208,'Kilimanjaro','KJ',1),(3170,208,'Lindi','LN',1),(3171,208,'Manyara','MY',1),(3172,208,'Mara','MR',1),(3173,208,'Mbeya','MB',1),(3174,208,'Morogoro','MO',1),(3175,208,'Mtwara','MT',1),(3176,208,'Mwanza','MW',1),(3177,208,'Pemba North','PN',1),(3178,208,'Pemba South','PS',1),(3179,208,'Pwani','PW',1),(3180,208,'Rukwa','RK',1),(3181,208,'Ruvuma','RV',1),(3182,208,'Shinyanga','SH',1),(3183,208,'Singida','SI',1),(3184,208,'Tabora','TB',1),(3185,208,'Tanga','TN',1),(3186,208,'Zanzibar Central/South','ZC',1),(3187,208,'Zanzibar North','ZN',1),(3188,208,'Zanzibar Urban/West','ZU',1),(3189,209,'Amnat Charoen','Amnat Charoen',1),(3190,209,'Ang Thong','Ang Thong',1),(3191,209,'Ayutthaya','Ayutthaya',1),(3192,209,'Bangkok','Bangkok',1),(3193,209,'Buriram','Buriram',1),(3194,209,'Chachoengsao','Chachoengsao',1),(3195,209,'Chai Nat','Chai Nat',1),(3196,209,'Chaiyaphum','Chaiyaphum',1),(3197,209,'Chanthaburi','Chanthaburi',1),(3198,209,'Chiang Mai','Chiang Mai',1),(3199,209,'Chiang Rai','Chiang Rai',1),(3200,209,'Chon Buri','Chon Buri',1),(3201,209,'Chumphon','Chumphon',1),(3202,209,'Kalasin','Kalasin',1),(3203,209,'Kamphaeng Phet','Kamphaeng Phet',1),(3204,209,'Kanchanaburi','Kanchanaburi',1),(3205,209,'Khon Kaen','Khon Kaen',1),(3206,209,'Krabi','Krabi',1),(3207,209,'Lampang','Lampang',1),(3208,209,'Lamphun','Lamphun',1),(3209,209,'Loei','Loei',1),(3210,209,'Lop Buri','Lop Buri',1),(3211,209,'Mae Hong Son','Mae Hong Son',1),(3212,209,'Maha Sarakham','Maha Sarakham',1),(3213,209,'Mukdahan','Mukdahan',1),(3214,209,'Nakhon Nayok','Nakhon Nayok',1),(3215,209,'Nakhon Pathom','Nakhon Pathom',1),(3216,209,'Nakhon Phanom','Nakhon Phanom',1),(3217,209,'Nakhon Ratchasima','Nakhon Ratchasima',1),(3218,209,'Nakhon Sawan','Nakhon Sawan',1),(3219,209,'Nakhon Si Thammarat','Nakhon Si Thammarat',1),(3220,209,'Nan','Nan',1),(3221,209,'Narathiwat','Narathiwat',1),(3222,209,'Nong Bua Lamphu','Nong Bua Lamphu',1),(3223,209,'Nong Khai','Nong Khai',1),(3224,209,'Nonthaburi','Nonthaburi',1),(3225,209,'Pathum Thani','Pathum Thani',1),(3226,209,'Pattani','Pattani',1),(3227,209,'Phangnga','Phangnga',1),(3228,209,'Phatthalung','Phatthalung',1),(3229,209,'Phayao','Phayao',1),(3230,209,'Phetchabun','Phetchabun',1),(3231,209,'Phetchaburi','Phetchaburi',1),(3232,209,'Phichit','Phichit',1),(3233,209,'Phitsanulok','Phitsanulok',1),(3234,209,'Phrae','Phrae',1),(3235,209,'Phuket','Phuket',1),(3236,209,'Prachin Buri','Prachin Buri',1),(3237,209,'Prachuap Khiri Khan','Prachuap Khiri Khan',1),(3238,209,'Ranong','Ranong',1),(3239,209,'Ratchaburi','Ratchaburi',1),(3240,209,'Rayong','Rayong',1),(3241,209,'Roi Et','Roi Et',1),(3242,209,'Sa Kaeo','Sa Kaeo',1),(3243,209,'Sakon Nakhon','Sakon Nakhon',1),(3244,209,'Samut Prakan','Samut Prakan',1),(3245,209,'Samut Sakhon','Samut Sakhon',1),(3246,209,'Samut Songkhram','Samut Songkhram',1),(3247,209,'Sara Buri','Sara Buri',1),(3248,209,'Satun','Satun',1),(3249,209,'Sing Buri','Sing Buri',1),(3250,209,'Sisaket','Sisaket',1),(3251,209,'Songkhla','Songkhla',1),(3252,209,'Sukhothai','Sukhothai',1),(3253,209,'Suphan Buri','Suphan Buri',1),(3254,209,'Surat Thani','Surat Thani',1),(3255,209,'Surin','Surin',1),(3256,209,'Tak','Tak',1),(3257,209,'Trang','Trang',1),(3258,209,'Trat','Trat',1),(3259,209,'Ubon Ratchathani','Ubon Ratchathani',1),(3260,209,'Udon Thani','Udon Thani',1),(3261,209,'Uthai Thani','Uthai Thani',1),(3262,209,'Uttaradit','Uttaradit',1),(3263,209,'Yala','Yala',1),(3264,209,'Yasothon','Yasothon',1),(3265,210,'Kara','K',1),(3266,210,'Plateaux','P',1),(3267,210,'Savanes','S',1),(3268,210,'Centrale','C',1),(3269,210,'Maritime','M',1),(3270,211,'Atafu','A',1),(3271,211,'Fakaofo','F',1),(3272,211,'Nukunonu','N',1),(3273,212,'Ha\'apai','H',1),(3274,212,'Tongatapu','T',1),(3275,212,'Vava\'u','V',1),(3276,213,'Couva/Tabaquite/Talparo','CT',1),(3277,213,'Diego Martin','DM',1),(3278,213,'Mayaro/Rio Claro','MR',1),(3279,213,'Penal/Debe','PD',1),(3280,213,'Princes Town','PT',1),(3281,213,'Sangre Grande','SG',1),(3282,213,'San Juan/Laventille','SL',1),(3283,213,'Siparia','SI',1),(3284,213,'Tunapuna/Piarco','TP',1),(3285,213,'Port of Spain','PS',1),(3286,213,'San Fernando','SF',1),(3287,213,'Arima','AR',1),(3288,213,'Point Fortin','PF',1),(3289,213,'Chaguanas','CH',1),(3290,213,'Tobago','TO',1),(3291,214,'Ariana','AR',1),(3292,214,'Beja','BJ',1),(3293,214,'Ben Arous','BA',1),(3294,214,'Bizerte','BI',1),(3295,214,'Gabes','GB',1),(3296,214,'Gafsa','GF',1),(3297,214,'Jendouba','JE',1),(3298,214,'Kairouan','KR',1),(3299,214,'Kasserine','KS',1),(3300,214,'Kebili','KB',1),(3301,214,'Kef','KF',1),(3302,214,'Mahdia','MH',1),(3303,214,'Manouba','MN',1),(3304,214,'Medenine','ME',1),(3305,214,'Monastir','MO',1),(3306,214,'Nabeul','NA',1),(3307,214,'Sfax','SF',1),(3308,214,'Sidi','SD',1),(3309,214,'Siliana','SL',1),(3310,214,'Sousse','SO',1),(3311,214,'Tataouine','TA',1),(3312,214,'Tozeur','TO',1),(3313,214,'Tunis','TU',1),(3314,214,'Zaghouan','ZA',1),(3315,215,'Adana','ADA',1),(3316,215,'Adıyaman','ADI',1),(3317,215,'Afyonkarahisar','AFY',1),(3318,215,'Ağrı','AGR',1),(3319,215,'Aksaray','AKS',1),(3320,215,'Amasya','AMA',1),(3321,215,'Ankara','ANK',1),(3322,215,'Antalya','ANT',1),(3323,215,'Ardahan','ARD',1),(3324,215,'Artvin','ART',1),(3325,215,'Aydın','AYI',1),(3326,215,'Balıkesir','BAL',1),(3327,215,'Bartın','BAR',1),(3328,215,'Batman','BAT',1),(3329,215,'Bayburt','BAY',1),(3330,215,'Bilecik','BIL',1),(3331,215,'Bingöl','BIN',1),(3332,215,'Bitlis','BIT',1),(3333,215,'Bolu','BOL',1),(3334,215,'Burdur','BRD',1),(3335,215,'Bursa','BRS',1),(3336,215,'Çanakkale','CKL',1),(3337,215,'Çankırı','CKR',1),(3338,215,'Çorum','COR',1),(3339,215,'Denizli','DEN',1),(3340,215,'Diyarbakır','DIY',1),(3341,215,'Düzce','DUZ',1),(3342,215,'Edirne','EDI',1),(3343,215,'Elazığ','ELA',1),(3344,215,'Erzincan','EZC',1),(3345,215,'Erzurum','EZR',1),(3346,215,'Eskişehir','ESK',1),(3347,215,'Gaziantep','GAZ',1),(3348,215,'Giresun','GIR',1),(3349,215,'Gümüşhane','GMS',1),(3350,215,'Hakkari','HKR',1),(3351,215,'Hatay','HTY',1),(3352,215,'Iğdır','IGD',1),(3353,215,'Isparta','ISP',1),(3354,215,'İstanbul','IST',1),(3355,215,'İzmir','IZM',1),(3356,215,'Kahramanmaraş','KAH',1),(3357,215,'Karabük','KRB',1),(3358,215,'Karaman','KRM',1),(3359,215,'Kars','KRS',1),(3360,215,'Kastamonu','KAS',1),(3361,215,'Kayseri','KAY',1),(3362,215,'Kilis','KLS',1),(3363,215,'Kırıkkale','KRK',1),(3364,215,'Kırklareli','KLR',1),(3365,215,'Kırşehir','KRH',1),(3366,215,'Kocaeli','KOC',1),(3367,215,'Konya','KON',1),(3368,215,'Kütahya','KUT',1),(3369,215,'Malatya','MAL',1),(3370,215,'Manisa','MAN',1),(3371,215,'Mardin','MAR',1),(3372,215,'Mersin','MER',1),(3373,215,'Muğla','MUG',1),(3374,215,'Muş','MUS',1),(3375,215,'Nevşehir','NEV',1),(3376,215,'Niğde','NIG',1),(3377,215,'Ordu','ORD',1),(3378,215,'Osmaniye','OSM',1),(3379,215,'Rize','RIZ',1),(3380,215,'Sakarya','SAK',1),(3381,215,'Samsun','SAM',1),(3382,215,'Şanlıurfa','SAN',1),(3383,215,'Siirt','SII',1),(3384,215,'Sinop','SIN',1),(3385,215,'Şırnak','SIR',1),(3386,215,'Sivas','SIV',1),(3387,215,'Tekirdağ','TEL',1),(3388,215,'Tokat','TOK',1),(3389,215,'Trabzon','TRA',1),(3390,215,'Tunceli','TUN',1),(3391,215,'Uşak','USK',1),(3392,215,'Van','VAN',1),(3393,215,'Yalova','YAL',1),(3394,215,'Yozgat','YOZ',1),(3395,215,'Zonguldak','ZON',1),(3396,216,'Ahal Welayaty','A',1),(3397,216,'Balkan Welayaty','B',1),(3398,216,'Dashhowuz Welayaty','D',1),(3399,216,'Lebap Welayaty','L',1),(3400,216,'Mary Welayaty','M',1),(3401,217,'Ambergris Cays','AC',1),(3402,217,'Dellis Cay','DC',1),(3403,217,'French Cay','FC',1),(3404,217,'Little Water Cay','LW',1),(3405,217,'Parrot Cay','RC',1),(3406,217,'Pine Cay','PN',1),(3407,217,'Salt Cay','SL',1),(3408,217,'Grand Turk','GT',1),(3409,217,'South Caicos','SC',1),(3410,217,'East Caicos','EC',1),(3411,217,'Middle Caicos','MC',1),(3412,217,'North Caicos','NC',1),(3413,217,'Providenciales','PR',1),(3414,217,'West Caicos','WC',1),(3415,218,'Nanumanga','NMG',1),(3416,218,'Niulakita','NLK',1),(3417,218,'Niutao','NTO',1),(3418,218,'Funafuti','FUN',1),(3419,218,'Nanumea','NME',1),(3420,218,'Nui','NUI',1),(3421,218,'Nukufetau','NFT',1),(3422,218,'Nukulaelae','NLL',1),(3423,218,'Vaitupu','VAI',1),(3424,219,'Kalangala','KAL',1),(3425,219,'Kampala','KMP',1),(3426,219,'Kayunga','KAY',1),(3427,219,'Kiboga','KIB',1),(3428,219,'Luwero','LUW',1),(3429,219,'Masaka','MAS',1),(3430,219,'Mpigi','MPI',1),(3431,219,'Mubende','MUB',1),(3432,219,'Mukono','MUK',1),(3433,219,'Nakasongola','NKS',1),(3434,219,'Rakai','RAK',1),(3435,219,'Sembabule','SEM',1),(3436,219,'Wakiso','WAK',1),(3437,219,'Bugiri','BUG',1),(3438,219,'Busia','BUS',1),(3439,219,'Iganga','IGA',1),(3440,219,'Jinja','JIN',1),(3441,219,'Kaberamaido','KAB',1),(3442,219,'Kamuli','KML',1),(3443,219,'Kapchorwa','KPC',1),(3444,219,'Katakwi','KTK',1),(3445,219,'Kumi','KUM',1),(3446,219,'Mayuge','MAY',1),(3447,219,'Mbale','MBA',1),(3448,219,'Pallisa','PAL',1),(3449,219,'Sironko','SIR',1),(3450,219,'Soroti','SOR',1),(3451,219,'Tororo','TOR',1),(3452,219,'Adjumani','ADJ',1),(3453,219,'Apac','APC',1),(3454,219,'Arua','ARU',1),(3455,219,'Gulu','GUL',1),(3456,219,'Kitgum','KIT',1),(3457,219,'Kotido','KOT',1),(3458,219,'Lira','LIR',1),(3459,219,'Moroto','MRT',1),(3460,219,'Moyo','MOY',1),(3461,219,'Nakapiripirit','NAK',1),(3462,219,'Nebbi','NEB',1),(3463,219,'Pader','PAD',1),(3464,219,'Yumbe','YUM',1),(3465,219,'Bundibugyo','BUN',1),(3466,219,'Bushenyi','BSH',1),(3467,219,'Hoima','HOI',1),(3468,219,'Kabale','KBL',1),(3469,219,'Kabarole','KAR',1),(3470,219,'Kamwenge','KAM',1),(3471,219,'Kanungu','KAN',1),(3472,219,'Kasese','KAS',1),(3473,219,'Kibaale','KBA',1),(3474,219,'Kisoro','KIS',1),(3475,219,'Kyenjojo','KYE',1),(3476,219,'Masindi','MSN',1),(3477,219,'Mbarara','MBR',1),(3478,219,'Ntungamo','NTU',1),(3479,219,'Rukungiri','RUK',1),(3480,220,'Cherkas\'ka Oblast\'','71',1),(3481,220,'Chernihivs\'ka Oblast\'','74',1),(3482,220,'Chernivets\'ka Oblast\'','77',1),(3483,220,'Crimea','43',1),(3484,220,'Dnipropetrovs\'ka Oblast\'','12',1),(3485,220,'Donets\'ka Oblast\'','14',1),(3486,220,'Ivano-Frankivs\'ka Oblast\'','26',1),(3487,220,'Khersons\'ka Oblast\'','65',1),(3488,220,'Khmel\'nyts\'ka Oblast\'','68',1),(3489,220,'Kirovohrads\'ka Oblast\'','35',1),(3490,220,'Kyiv','30',1),(3491,220,'Kyivs\'ka Oblast\'','32',1),(3492,220,'Luhans\'ka Oblast\'','09',1),(3493,220,'L\'vivs\'ka Oblast\'','46',1),(3494,220,'Mykolayivs\'ka Oblast\'','48',1),(3495,220,'Odes\'ka Oblast\'','51',1),(3496,220,'Poltavs\'ka Oblast\'','53',1),(3497,220,'Rivnens\'ka Oblast\'','56',1),(3498,220,'Sevastopol\'','40',1),(3499,220,'Sums\'ka Oblast\'','59',1),(3500,220,'Ternopil\'s\'ka Oblast\'','61',1),(3501,220,'Vinnyts\'ka Oblast\'','05',1),(3502,220,'Volyns\'ka Oblast\'','07',1),(3503,220,'Zakarpats\'ka Oblast\'','21',1),(3504,220,'Zaporiz\'ka Oblast\'','23',1),(3505,220,'Zhytomyrs\'ka oblast\'','18',1),(3506,221,'Abu Dhabi','ADH',1),(3507,221,'\'Ajman','AJ',1),(3508,221,'Al Fujayrah','FU',1),(3509,221,'Ash Shariqah','SH',1),(3510,221,'Dubai','DU',1),(3511,221,'R\'as al Khaymah','RK',1),(3512,221,'Umm al Qaywayn','UQ',1),(3513,222,'Aberdeen','ABN',1),(3514,222,'Aberdeenshire','ABNS',1),(3515,222,'Anglesey','ANG',1),(3516,222,'Angus','AGS',1),(3517,222,'Argyll and Bute','ARY',1),(3518,222,'Bedfordshire','BEDS',1),(3519,222,'Berkshire','BERKS',1),(3520,222,'Blaenau Gwent','BLA',1),(3521,222,'Bridgend','BRI',1),(3522,222,'Bristol','BSTL',1),(3523,222,'Buckinghamshire','BUCKS',1),(3524,222,'Caerphilly','CAE',1),(3525,222,'Cambridgeshire','CAMBS',1),(3526,222,'Cardiff','CDF',1),(3527,222,'Carmarthenshire','CARM',1),(3528,222,'Ceredigion','CDGN',1),(3529,222,'Cheshire','CHES',1),(3530,222,'Clackmannanshire','CLACK',1),(3531,222,'Conwy','CON',1),(3532,222,'Cornwall','CORN',1),(3533,222,'Denbighshire','DNBG',1),(3534,222,'Derbyshire','DERBY',1),(3535,222,'Devon','DVN',1),(3536,222,'Dorset','DOR',1),(3537,222,'Dumfries and Galloway','DGL',1),(3538,222,'Dundee','DUND',1),(3539,222,'Durham','DHM',1),(3540,222,'East Ayrshire','ARYE',1),(3541,222,'East Dunbartonshire','DUNBE',1),(3542,222,'East Lothian','LOTE',1),(3543,222,'East Renfrewshire','RENE',1),(3544,222,'East Riding of Yorkshire','ERYS',1),(3545,222,'East Sussex','SXE',1),(3546,222,'Edinburgh','EDIN',1),(3547,222,'Essex','ESX',1),(3548,222,'Falkirk','FALK',1),(3549,222,'Fife','FFE',1),(3550,222,'Flintshire','FLINT',1),(3551,222,'Glasgow','GLAS',1),(3552,222,'Gloucestershire','GLOS',1),(3553,222,'Greater London','LDN',1),(3554,222,'Greater Manchester','MCH',1),(3555,222,'Gwynedd','GDD',1),(3556,222,'Hampshire','HANTS',1),(3557,222,'Herefordshire','HWR',1),(3558,222,'Hertfordshire','HERTS',1),(3559,222,'Highlands','HLD',1),(3560,222,'Inverclyde','IVER',1),(3561,222,'Isle of Wight','IOW',1),(3562,222,'Kent','KNT',1),(3563,222,'Lancashire','LANCS',1),(3564,222,'Leicestershire','LEICS',1),(3565,222,'Lincolnshire','LINCS',1),(3566,222,'Merseyside','MSY',1),(3567,222,'Merthyr Tydfil','MERT',1),(3568,222,'Midlothian','MLOT',1),(3569,222,'Monmouthshire','MMOUTH',1),(3570,222,'Moray','MORAY',1),(3571,222,'Neath Port Talbot','NPRTAL',1),(3572,222,'Newport','NEWPT',1),(3573,222,'Norfolk','NOR',1),(3574,222,'North Ayrshire','ARYN',1),(3575,222,'North Lanarkshire','LANN',1),(3576,222,'North Yorkshire','YSN',1),(3577,222,'Northamptonshire','NHM',1),(3578,222,'Northumberland','NLD',1),(3579,222,'Nottinghamshire','NOT',1),(3580,222,'Orkney Islands','ORK',1),(3581,222,'Oxfordshire','OFE',1),(3582,222,'Pembrokeshire','PEM',1),(3583,222,'Perth and Kinross','PERTH',1),(3584,222,'Powys','PWS',1),(3585,222,'Renfrewshire','REN',1),(3586,222,'Rhondda Cynon Taff','RHON',1),(3587,222,'Rutland','RUT',1),(3588,222,'Scottish Borders','BOR',1),(3589,222,'Shetland Islands','SHET',1),(3590,222,'Shropshire','SPE',1),(3591,222,'Somerset','SOM',1),(3592,222,'South Ayrshire','ARYS',1),(3593,222,'South Lanarkshire','LANS',1),(3594,222,'South Yorkshire','YSS',1),(3595,222,'Staffordshire','SFD',1),(3596,222,'Stirling','STIR',1),(3597,222,'Suffolk','SFK',1),(3598,222,'Surrey','SRY',1),(3599,222,'Swansea','SWAN',1),(3600,222,'Torfaen','TORF',1),(3601,222,'Tyne and Wear','TWR',1),(3602,222,'Vale of Glamorgan','VGLAM',1),(3603,222,'Warwickshire','WARKS',1),(3604,222,'West Dunbartonshire','WDUN',1),(3605,222,'West Lothian','WLOT',1),(3606,222,'West Midlands','WMD',1),(3607,222,'West Sussex','SXW',1),(3608,222,'West Yorkshire','YSW',1),(3609,222,'Western Isles','WIL',1),(3610,222,'Wiltshire','WLT',1),(3611,222,'Worcestershire','WORCS',1),(3612,222,'Wrexham','WRX',1),(3613,223,'Alabama','AL',1),(3614,223,'Alaska','AK',1),(3615,223,'American Samoa','AS',1),(3616,223,'Arizona','AZ',1),(3617,223,'Arkansas','AR',1),(3618,223,'Armed Forces Africa','AF',1),(3619,223,'Armed Forces Americas','AA',1),(3620,223,'Armed Forces Canada','AC',1),(3621,223,'Armed Forces Europe','AE',1),(3622,223,'Armed Forces Middle East','AM',1),(3623,223,'Armed Forces Pacific','AP',1),(3624,223,'California','CA',1),(3625,223,'Colorado','CO',1),(3626,223,'Connecticut','CT',1),(3627,223,'Delaware','DE',1),(3628,223,'District of Columbia','DC',1),(3629,223,'Federated States Of Micronesia','FM',1),(3630,223,'Florida','FL',1),(3631,223,'Georgia','GA',1),(3632,223,'Guam','GU',1),(3633,223,'Hawaii','HI',1),(3634,223,'Idaho','ID',1),(3635,223,'Illinois','IL',1),(3636,223,'Indiana','IN',1),(3637,223,'Iowa','IA',1),(3638,223,'Kansas','KS',1),(3639,223,'Kentucky','KY',1),(3640,223,'Louisiana','LA',1),(3641,223,'Maine','ME',1),(3642,223,'Marshall Islands','MH',1),(3643,223,'Maryland','MD',1),(3644,223,'Massachusetts','MA',1),(3645,223,'Michigan','MI',1),(3646,223,'Minnesota','MN',1),(3647,223,'Mississippi','MS',1),(3648,223,'Missouri','MO',1),(3649,223,'Montana','MT',1),(3650,223,'Nebraska','NE',1),(3651,223,'Nevada','NV',1),(3652,223,'New Hampshire','NH',1),(3653,223,'New Jersey','NJ',1),(3654,223,'New Mexico','NM',1),(3655,223,'New York','NY',1),(3656,223,'North Carolina','NC',1),(3657,223,'North Dakota','ND',1),(3658,223,'Northern Mariana Islands','MP',1),(3659,223,'Ohio','OH',1),(3660,223,'Oklahoma','OK',1),(3661,223,'Oregon','OR',1),(3662,223,'Palau','PW',1),(3663,223,'Pennsylvania','PA',1),(3664,223,'Puerto Rico','PR',1),(3665,223,'Rhode Island','RI',1),(3666,223,'South Carolina','SC',1),(3667,223,'South Dakota','SD',1),(3668,223,'Tennessee','TN',1),(3669,223,'Texas','TX',1),(3670,223,'Utah','UT',1),(3671,223,'Vermont','VT',1),(3672,223,'Virgin Islands','VI',1),(3673,223,'Virginia','VA',1),(3674,223,'Washington','WA',1),(3675,223,'West Virginia','WV',1),(3676,223,'Wisconsin','WI',1),(3677,223,'Wyoming','WY',1),(3678,224,'Baker Island','BI',1),(3679,224,'Howland Island','HI',1),(3680,224,'Jarvis Island','JI',1),(3681,224,'Johnston Atoll','JA',1),(3682,224,'Kingman Reef','KR',1),(3683,224,'Midway Atoll','MA',1),(3684,224,'Navassa Island','NI',1),(3685,224,'Palmyra Atoll','PA',1),(3686,224,'Wake Island','WI',1),(3687,225,'Artigas','AR',1),(3688,225,'Canelones','CA',1),(3689,225,'Cerro Largo','CL',1),(3690,225,'Colonia','CO',1),(3691,225,'Durazno','DU',1),(3692,225,'Flores','FS',1),(3693,225,'Florida','FA',1),(3694,225,'Lavalleja','LA',1),(3695,225,'Maldonado','MA',1),(3696,225,'Montevideo','MO',1),(3697,225,'Paysandu','PA',1),(3698,225,'Rio Negro','RN',1),(3699,225,'Rivera','RV',1),(3700,225,'Rocha','RO',1),(3701,225,'Salto','SL',1),(3702,225,'San Jose','SJ',1),(3703,225,'Soriano','SO',1),(3704,225,'Tacuarembo','TA',1),(3705,225,'Treinta y Tres','TT',1),(3706,226,'Andijon','AN',1),(3707,226,'Buxoro','BU',1),(3708,226,'Farg\'ona','FA',1),(3709,226,'Jizzax','JI',1),(3710,226,'Namangan','NG',1),(3711,226,'Navoiy','NW',1),(3712,226,'Qashqadaryo','QA',1),(3713,226,'Qoraqalpog\'iston Republikasi','QR',1),(3714,226,'Samarqand','SA',1),(3715,226,'Sirdaryo','SI',1),(3716,226,'Surxondaryo','SU',1),(3717,226,'Toshkent City','TK',1),(3718,226,'Toshkent Region','TO',1),(3719,226,'Xorazm','XO',1),(3720,227,'Malampa','MA',1),(3721,227,'Penama','PE',1),(3722,227,'Sanma','SA',1),(3723,227,'Shefa','SH',1),(3724,227,'Tafea','TA',1),(3725,227,'Torba','TO',1),(3726,229,'Amazonas','AM',1),(3727,229,'Anzoategui','AN',1),(3728,229,'Apure','AP',1),(3729,229,'Aragua','AR',1),(3730,229,'Barinas','BA',1),(3731,229,'Bolivar','BO',1),(3732,229,'Carabobo','CA',1),(3733,229,'Cojedes','CO',1),(3734,229,'Delta Amacuro','DA',1),(3735,229,'Dependencias Federales','DF',1),(3736,229,'Distrito Federal','DI',1),(3737,229,'Falcon','FA',1),(3738,229,'Guarico','GU',1),(3739,229,'Lara','LA',1),(3740,229,'Merida','ME',1),(3741,229,'Miranda','MI',1),(3742,229,'Monagas','MO',1),(3743,229,'Nueva Esparta','NE',1),(3744,229,'Portuguesa','PO',1),(3745,229,'Sucre','SU',1),(3746,229,'Tachira','TA',1),(3747,229,'Trujillo','TR',1),(3748,229,'Vargas','VA',1),(3749,229,'Yaracuy','YA',1),(3750,229,'Zulia','ZU',1),(3751,230,'An Giang','AG',1),(3752,230,'Bac Giang','BG',1),(3753,230,'Bac Kan','BK',1),(3754,230,'Bac Lieu','BL',1),(3755,230,'Bac Ninh','BC',1),(3756,230,'Ba Ria-Vung Tau','BR',1),(3757,230,'Ben Tre','BN',1),(3758,230,'Binh Dinh','BH',1),(3759,230,'Binh Duong','BU',1),(3760,230,'Binh Phuoc','BP',1),(3761,230,'Binh Thuan','BT',1),(3762,230,'Ca Mau','CM',1),(3763,230,'Can Tho','CT',1),(3764,230,'Cao Bang','CB',1),(3765,230,'Dak Lak','DL',1),(3766,230,'Dak Nong','DG',1),(3767,230,'Da Nang','DN',1),(3768,230,'Dien Bien','DB',1),(3769,230,'Dong Nai','DI',1),(3770,230,'Dong Thap','DT',1),(3771,230,'Gia Lai','GL',1),(3772,230,'Ha Giang','HG',1),(3773,230,'Hai Duong','HD',1),(3774,230,'Hai Phong','HP',1),(3775,230,'Ha Nam','HM',1),(3776,230,'Ha Noi','HI',1),(3777,230,'Ha Tay','HT',1),(3778,230,'Ha Tinh','HH',1),(3779,230,'Hoa Binh','HB',1),(3780,230,'Ho Chi Minh City','HC',1),(3781,230,'Hau Giang','HU',1),(3782,230,'Hung Yen','HY',1),(3783,232,'Saint Croix','C',1),(3784,232,'Saint John','J',1),(3785,232,'Saint Thomas','T',1),(3786,233,'Alo','A',1),(3787,233,'Sigave','S',1),(3788,233,'Wallis','W',1),(3789,235,'Abyan','AB',1),(3790,235,'Adan','AD',1),(3791,235,'Amran','AM',1),(3792,235,'Al Bayda','BA',1),(3793,235,'Ad Dali','DA',1),(3794,235,'Dhamar','DH',1),(3795,235,'Hadramawt','HD',1),(3796,235,'Hajjah','HJ',1),(3797,235,'Al Hudaydah','HU',1),(3798,235,'Ibb','IB',1),(3799,235,'Al Jawf','JA',1),(3800,235,'Lahij','LA',1),(3801,235,'Ma\'rib','MA',1),(3802,235,'Al Mahrah','MR',1),(3803,235,'Al Mahwit','MW',1),(3804,235,'Sa\'dah','SD',1),(3805,235,'San\'a','SN',1),(3806,235,'Shabwah','SH',1),(3807,235,'Ta\'izz','TA',1),(3812,237,'Bas-Congo','BC',1),(3813,237,'Bandundu','BN',1),(3814,237,'Equateur','EQ',1),(3815,237,'Katanga','KA',1),(3816,237,'Kasai-Oriental','KE',1),(3817,237,'Kinshasa','KN',1),(3818,237,'Kasai-Occidental','KW',1),(3819,237,'Maniema','MA',1),(3820,237,'Nord-Kivu','NK',1),(3821,237,'Orientale','OR',1),(3822,237,'Sud-Kivu','SK',1),(3823,238,'Central','CE',1),(3824,238,'Copperbelt','CB',1),(3825,238,'Eastern','EA',1),(3826,238,'Luapula','LP',1),(3827,238,'Lusaka','LK',1),(3828,238,'Northern','NO',1),(3829,238,'North-Western','NW',1),(3830,238,'Southern','SO',1),(3831,238,'Western','WE',1),(3832,239,'Bulawayo','BU',1),(3833,239,'Harare','HA',1),(3834,239,'Manicaland','ML',1),(3835,239,'Mashonaland Central','MC',1),(3836,239,'Mashonaland East','ME',1),(3837,239,'Mashonaland West','MW',1),(3838,239,'Masvingo','MV',1),(3839,239,'Matabeleland North','MN',1),(3840,239,'Matabeleland South','MS',1),(3841,239,'Midlands','MD',1),(3861,105,'Campobasso','CB',1),(3862,105,'Carbonia-Iglesias','CI',1),(3863,105,'Caserta','CE',1),(3864,105,'Catania','CT',1),(3865,105,'Catanzaro','CZ',1),(3866,105,'Chieti','CH',1),(3867,105,'Como','CO',1),(3868,105,'Cosenza','CS',1),(3869,105,'Cremona','CR',1),(3870,105,'Crotone','KR',1),(3871,105,'Cuneo','CN',1),(3872,105,'Enna','EN',1),(3873,105,'Ferrara','FE',1),(3874,105,'Firenze','FI',1),(3875,105,'Foggia','FG',1),(3876,105,'Forli-Cesena','FC',1),(3877,105,'Frosinone','FR',1),(3878,105,'Genova','GE',1),(3879,105,'Gorizia','GO',1),(3880,105,'Grosseto','GR',1),(3881,105,'Imperia','IM',1),(3882,105,'Isernia','IS',1),(3883,105,'L&#39;Aquila','AQ',1),(3884,105,'La Spezia','SP',1),(3885,105,'Latina','LT',1),(3886,105,'Lecce','LE',1),(3887,105,'Lecco','LC',1),(3888,105,'Livorno','LI',1),(3889,105,'Lodi','LO',1),(3890,105,'Lucca','LU',1),(3891,105,'Macerata','MC',1),(3892,105,'Mantova','MN',1),(3893,105,'Massa-Carrara','MS',1),(3894,105,'Matera','MT',1),(3895,105,'Medio Campidano','VS',1),(3896,105,'Messina','ME',1),(3897,105,'Milano','MI',1),(3898,105,'Modena','MO',1),(3899,105,'Napoli','NA',1),(3900,105,'Novara','NO',1),(3901,105,'Nuoro','NU',1),(3902,105,'Ogliastra','OG',1),(3903,105,'Olbia-Tempio','OT',1),(3904,105,'Oristano','OR',1),(3905,105,'Padova','PD',1),(3906,105,'Palermo','PA',1),(3907,105,'Parma','PR',1),(3908,105,'Pavia','PV',1),(3909,105,'Perugia','PG',1),(3910,105,'Pesaro e Urbino','PU',1),(3911,105,'Pescara','PE',1),(3912,105,'Piacenza','PC',1),(3913,105,'Pisa','PI',1),(3914,105,'Pistoia','PT',1),(3915,105,'Pordenone','PN',1),(3916,105,'Potenza','PZ',1),(3917,105,'Prato','PO',1),(3918,105,'Ragusa','RG',1),(3919,105,'Ravenna','RA',1),(3920,105,'Reggio Calabria','RC',1),(3921,105,'Reggio Emilia','RE',1),(3922,105,'Rieti','RI',1),(3923,105,'Rimini','RN',1),(3924,105,'Roma','RM',1),(3925,105,'Rovigo','RO',1),(3926,105,'Salerno','SA',1),(3927,105,'Sassari','SS',1),(3928,105,'Savona','SV',1),(3929,105,'Siena','SI',1),(3930,105,'Siracusa','SR',1),(3931,105,'Sondrio','SO',1),(3932,105,'Taranto','TA',1),(3933,105,'Teramo','TE',1),(3934,105,'Terni','TR',1),(3935,105,'Torino','TO',1),(3936,105,'Trapani','TP',1),(3937,105,'Trento','TN',1),(3938,105,'Treviso','TV',1),(3939,105,'Trieste','TS',1),(3940,105,'Udine','UD',1),(3941,105,'Varese','VA',1),(3942,105,'Venezia','VE',1),(3943,105,'Verbano-Cusio-Ossola','VB',1),(3944,105,'Vercelli','VC',1),(3945,105,'Verona','VR',1),(3946,105,'Vibo Valentia','VV',1),(3947,105,'Vicenza','VI',1),(3948,105,'Viterbo','VT',1),(3949,222,'County Antrim','ANT',1),(3950,222,'County Armagh','ARM',1),(3951,222,'County Down','DOW',1),(3952,222,'County Fermanagh','FER',1),(3953,222,'County Londonderry','LDY',1),(3954,222,'County Tyrone','TYR',1),(3955,222,'Cumbria','CMA',1),(3956,190,'Pomurska','1',1),(3957,190,'Podravska','2',1),(3958,190,'Koroška','3',1),(3959,190,'Savinjska','4',1),(3960,190,'Zasavska','5',1),(3961,190,'Spodnjeposavska','6',1),(3962,190,'Jugovzhodna Slovenija','7',1),(3963,190,'Osrednjeslovenska','8',1),(3964,190,'Gorenjska','9',1),(3965,190,'Notranjsko-kraška','10',1),(3966,190,'Goriška','11',1),(3967,190,'Obalno-kraška','12',1),(3968,33,'Ruse','',1),(3969,101,'Alborz','ALB',1),(3970,21,'Brussels-Capital Region','BRU',1),(3971,138,'Aguascalientes','AG',1),(3973,242,'Andrijevica','01',1),(3974,242,'Bar','02',1),(3975,242,'Berane','03',1),(3976,242,'Bijelo Polje','04',1),(3977,242,'Budva','05',1),(3978,242,'Cetinje','06',1),(3979,242,'Danilovgrad','07',1),(3980,242,'Herceg-Novi','08',1),(3981,242,'Kolašin','09',1),(3982,242,'Kotor','10',1),(3983,242,'Mojkovac','11',1),(3984,242,'Nikšić','12',1),(3985,242,'Plav','13',1),(3986,242,'Pljevlja','14',1),(3987,242,'Plužine','15',1),(3988,242,'Podgorica','16',1),(3989,242,'Rožaje','17',1),(3990,242,'Šavnik','18',1),(3991,242,'Tivat','19',1),(3992,242,'Ulcinj','20',1),(3993,242,'Žabljak','21',1),(3994,243,'Belgrade','00',1),(3995,243,'North Bačka','01',1),(3996,243,'Central Banat','02',1),(3997,243,'North Banat','03',1),(3998,243,'South Banat','04',1),(3999,243,'West Bačka','05',1),(4000,243,'South Bačka','06',1),(4001,243,'Srem','07',1),(4002,243,'Mačva','08',1),(4003,243,'Kolubara','09',1),(4004,243,'Podunavlje','10',1),(4005,243,'Braničevo','11',1),(4006,243,'Šumadija','12',1),(4007,243,'Pomoravlje','13',1),(4008,243,'Bor','14',1),(4009,243,'Zaječar','15',1),(4010,243,'Zlatibor','16',1),(4011,243,'Moravica','17',1),(4012,243,'Raška','18',1),(4013,243,'Rasina','19',1),(4014,243,'Nišava','20',1),(4015,243,'Toplica','21',1),(4016,243,'Pirot','22',1),(4017,243,'Jablanica','23',1),(4018,243,'Pčinja','24',1),(4020,245,'Bonaire','BO',1),(4021,245,'Saba','SA',1),(4022,245,'Sint Eustatius','SE',1),(4023,248,'Central Equatoria','EC',1),(4024,248,'Eastern Equatoria','EE',1),(4025,248,'Jonglei','JG',1),(4026,248,'Lakes','LK',1),(4027,248,'Northern Bahr el-Ghazal','BN',1),(4028,248,'Unity','UY',1),(4029,248,'Upper Nile','NU',1),(4030,248,'Warrap','WR',1),(4031,248,'Western Bahr el-Ghazal','BW',1),(4032,248,'Western Equatoria','EW',1),(4036,117,'Ainaži, Salacgrīvas novads','0661405',1),(4037,117,'Aizkraukle, Aizkraukles novads','0320201',1),(4038,117,'Aizkraukles novads','0320200',1),(4039,117,'Aizpute, Aizputes novads','0640605',1),(4040,117,'Aizputes novads','0640600',1),(4041,117,'Aknīste, Aknīstes novads','0560805',1),(4042,117,'Aknīstes novads','0560800',1),(4043,117,'Aloja, Alojas novads','0661007',1),(4044,117,'Alojas novads','0661000',1),(4045,117,'Alsungas novads','0624200',1),(4046,117,'Alūksne, Alūksnes novads','0360201',1),(4047,117,'Alūksnes novads','0360200',1),(4048,117,'Amatas novads','0424701',1),(4049,117,'Ape, Apes novads','0360805',1),(4050,117,'Apes novads','0360800',1),(4051,117,'Auce, Auces novads','0460805',1),(4052,117,'Auces novads','0460800',1),(4053,117,'Ādažu novads','0804400',1),(4054,117,'Babītes novads','0804900',1),(4055,117,'Baldone, Baldones novads','0800605',1),(4056,117,'Baldones novads','0800600',1),(4057,117,'Baloži, Ķekavas novads','0800807',1),(4058,117,'Baltinavas novads','0384400',1),(4059,117,'Balvi, Balvu novads','0380201',1),(4060,117,'Balvu novads','0380200',1),(4061,117,'Bauska, Bauskas novads','0400201',1),(4062,117,'Bauskas novads','0400200',1),(4063,117,'Beverīnas novads','0964700',1),(4064,117,'Brocēni, Brocēnu novads','0840605',1),(4065,117,'Brocēnu novads','0840601',1),(4066,117,'Burtnieku novads','0967101',1),(4067,117,'Carnikavas novads','0805200',1),(4068,117,'Cesvaine, Cesvaines novads','0700807',1),(4069,117,'Cesvaines novads','0700800',1),(4070,117,'Cēsis, Cēsu novads','0420201',1),(4071,117,'Cēsu novads','0420200',1),(4072,117,'Ciblas novads','0684901',1),(4073,117,'Dagda, Dagdas novads','0601009',1),(4074,117,'Dagdas novads','0601000',1),(4075,117,'Daugavpils','0050000',1),(4076,117,'Daugavpils novads','0440200',1),(4077,117,'Dobele, Dobeles novads','0460201',1),(4078,117,'Dobeles novads','0460200',1),(4079,117,'Dundagas novads','0885100',1),(4080,117,'Durbe, Durbes novads','0640807',1),(4081,117,'Durbes novads','0640801',1),(4082,117,'Engures novads','0905100',1),(4083,117,'Ērgļu novads','0705500',1),(4084,117,'Garkalnes novads','0806000',1),(4085,117,'Grobiņa, Grobiņas novads','0641009',1),(4086,117,'Grobiņas novads','0641000',1),(4087,117,'Gulbene, Gulbenes novads','0500201',1),(4088,117,'Gulbenes novads','0500200',1),(4089,117,'Iecavas novads','0406400',1),(4090,117,'Ikšķile, Ikšķiles novads','0740605',1),(4091,117,'Ikšķiles novads','0740600',1),(4092,117,'Ilūkste, Ilūkstes novads','0440807',1),(4093,117,'Ilūkstes novads','0440801',1),(4094,117,'Inčukalna novads','0801800',1),(4095,117,'Jaunjelgava, Jaunjelgavas novads','0321007',1),(4096,117,'Jaunjelgavas novads','0321000',1),(4097,117,'Jaunpiebalgas novads','0425700',1),(4098,117,'Jaunpils novads','0905700',1),(4099,117,'Jelgava','0090000',1),(4100,117,'Jelgavas novads','0540200',1),(4101,117,'Jēkabpils','0110000',1),(4102,117,'Jēkabpils novads','0560200',1),(4103,117,'Jūrmala','0130000',1),(4104,117,'Kalnciems, Jelgavas novads','0540211',1),(4105,117,'Kandava, Kandavas novads','0901211',1),(4106,117,'Kandavas novads','0901201',1),(4107,117,'Kārsava, Kārsavas novads','0681009',1),(4108,117,'Kārsavas novads','0681000',1),(4109,117,'Kocēnu novads ,bij. Valmieras)','0960200',1),(4110,117,'Kokneses novads','0326100',1),(4111,117,'Krāslava, Krāslavas novads','0600201',1),(4112,117,'Krāslavas novads','0600202',1),(4113,117,'Krimuldas novads','0806900',1),(4114,117,'Krustpils novads','0566900',1),(4115,117,'Kuldīga, Kuldīgas novads','0620201',1),(4116,117,'Kuldīgas novads','0620200',1),(4117,117,'Ķeguma novads','0741001',1),(4118,117,'Ķegums, Ķeguma novads','0741009',1),(4119,117,'Ķekavas novads','0800800',1),(4120,117,'Lielvārde, Lielvārdes novads','0741413',1),(4121,117,'Lielvārdes novads','0741401',1),(4122,117,'Liepāja','0170000',1),(4123,117,'Limbaži, Limbažu novads','0660201',1),(4124,117,'Limbažu novads','0660200',1),(4125,117,'Līgatne, Līgatnes novads','0421211',1),(4126,117,'Līgatnes novads','0421200',1),(4127,117,'Līvāni, Līvānu novads','0761211',1),(4128,117,'Līvānu novads','0761201',1),(4129,117,'Lubāna, Lubānas novads','0701413',1),(4130,117,'Lubānas novads','0701400',1),(4131,117,'Ludza, Ludzas novads','0680201',1),(4132,117,'Ludzas novads','0680200',1),(4133,117,'Madona, Madonas novads','0700201',1),(4134,117,'Madonas novads','0700200',1),(4135,117,'Mazsalaca, Mazsalacas novads','0961011',1),(4136,117,'Mazsalacas novads','0961000',1),(4137,117,'Mālpils novads','0807400',1),(4138,117,'Mārupes novads','0807600',1),(4139,117,'Mērsraga novads','0887600',1),(4140,117,'Naukšēnu novads','0967300',1),(4141,117,'Neretas novads','0327100',1),(4142,117,'Nīcas novads','0647900',1),(4143,117,'Ogre, Ogres novads','0740201',1),(4144,117,'Ogres novads','0740202',1),(4145,117,'Olaine, Olaines novads','0801009',1),(4146,117,'Olaines novads','0801000',1),(4147,117,'Ozolnieku novads','0546701',1),(4148,117,'Pārgaujas novads','0427500',1),(4149,117,'Pāvilosta, Pāvilostas novads','0641413',1),(4150,117,'Pāvilostas novads','0641401',1),(4151,117,'Piltene, Ventspils novads','0980213',1),(4152,117,'Pļaviņas, Pļaviņu novads','0321413',1),(4153,117,'Pļaviņu novads','0321400',1),(4154,117,'Preiļi, Preiļu novads','0760201',1),(4155,117,'Preiļu novads','0760202',1),(4156,117,'Priekule, Priekules novads','0641615',1),(4157,117,'Priekules novads','0641600',1),(4158,117,'Priekuļu novads','0427300',1),(4159,117,'Raunas novads','0427700',1),(4160,117,'Rēzekne','0210000',1),(4161,117,'Rēzeknes novads','0780200',1),(4162,117,'Riebiņu novads','0766300',1),(4163,117,'Rīga','0010000',1),(4164,117,'Rojas novads','0888300',1),(4165,117,'Ropažu novads','0808400',1),(4166,117,'Rucavas novads','0648500',1),(4167,117,'Rugāju novads','0387500',1),(4168,117,'Rundāles novads','0407700',1),(4169,117,'Rūjiena, Rūjienas novads','0961615',1),(4170,117,'Rūjienas novads','0961600',1),(4171,117,'Sabile, Talsu novads','0880213',1),(4172,117,'Salacgrīva, Salacgrīvas novads','0661415',1),(4173,117,'Salacgrīvas novads','0661400',1),(4174,117,'Salas novads','0568700',1),(4175,117,'Salaspils novads','0801200',1),(4176,117,'Salaspils, Salaspils novads','0801211',1),(4177,117,'Saldus novads','0840200',1),(4178,117,'Saldus, Saldus novads','0840201',1),(4179,117,'Saulkrasti, Saulkrastu novads','0801413',1),(4180,117,'Saulkrastu novads','0801400',1),(4181,117,'Seda, Strenču novads','0941813',1),(4182,117,'Sējas novads','0809200',1),(4183,117,'Sigulda, Siguldas novads','0801615',1),(4184,117,'Siguldas novads','0801601',1),(4185,117,'Skrīveru novads','0328200',1),(4186,117,'Skrunda, Skrundas novads','0621209',1),(4187,117,'Skrundas novads','0621200',1),(4188,117,'Smiltene, Smiltenes novads','0941615',1),(4189,117,'Smiltenes novads','0941600',1),(4190,117,'Staicele, Alojas novads','0661017',1),(4191,117,'Stende, Talsu novads','0880215',1),(4192,117,'Stopiņu novads','0809600',1),(4193,117,'Strenči, Strenču novads','0941817',1),(4194,117,'Strenču novads','0941800',1),(4195,117,'Subate, Ilūkstes novads','0440815',1),(4196,117,'Talsi, Talsu novads','0880201',1),(4197,117,'Talsu novads','0880200',1),(4198,117,'Tērvetes novads','0468900',1),(4199,117,'Tukuma novads','0900200',1),(4200,117,'Tukums, Tukuma novads','0900201',1),(4201,117,'Vaiņodes novads','0649300',1),(4202,117,'Valdemārpils, Talsu novads','0880217',1),(4203,117,'Valka, Valkas novads','0940201',1),(4204,117,'Valkas novads','0940200',1),(4205,117,'Valmiera','0250000',1),(4206,117,'Vangaži, Inčukalna novads','0801817',1),(4207,117,'Varakļāni, Varakļānu novads','0701817',1),(4208,117,'Varakļānu novads','0701800',1),(4209,117,'Vārkavas novads','0769101',1),(4210,117,'Vecpiebalgas novads','0429300',1),(4211,117,'Vecumnieku novads','0409500',1),(4212,117,'Ventspils','0270000',1),(4213,117,'Ventspils novads','0980200',1),(4214,117,'Viesīte, Viesītes novads','0561815',1),(4215,117,'Viesītes novads','0561800',1),(4216,117,'Viļaka, Viļakas novads','0381615',1),(4217,117,'Viļakas novads','0381600',1),(4218,117,'Viļāni, Viļānu novads','0781817',1),(4219,117,'Viļānu novads','0781800',1),(4220,117,'Zilupe, Zilupes novads','0681817',1),(4221,117,'Zilupes novads','0681801',1),(4222,43,'Arica y Parinacota','AP',1),(4223,43,'Los Rios','LR',1),(4224,220,'Kharkivs\'ka Oblast\'','63',1),(4225,118,'Beirut','LB-BR',1),(4226,118,'Bekaa','LB-BE',1),(4227,118,'Mount Lebanon','LB-ML',1),(4228,118,'Nabatieh','LB-NB',1),(4229,118,'North','LB-NR',1),(4230,118,'South','LB-ST',1);
/*!40000 ALTER TABLE `oc_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_zone_to_geo_zone`
--

DROP TABLE IF EXISTS `oc_zone_to_geo_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`zone_to_geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_zone_to_geo_zone`
--

LOCK TABLES `oc_zone_to_geo_zone` WRITE;
/*!40000 ALTER TABLE `oc_zone_to_geo_zone` DISABLE KEYS */;
INSERT INTO `oc_zone_to_geo_zone` VALUES (1,222,0,4,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,222,3513,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,222,3514,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,222,3515,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(5,222,3516,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(6,222,3517,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(7,222,3518,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(8,222,3519,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(9,222,3520,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10,222,3521,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(11,222,3522,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(12,222,3523,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(13,222,3524,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(14,222,3525,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(15,222,3526,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(16,222,3527,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(17,222,3528,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(18,222,3529,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(19,222,3530,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(20,222,3531,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(21,222,3532,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(22,222,3533,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(23,222,3534,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(24,222,3535,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(25,222,3536,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(26,222,3537,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(27,222,3538,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(28,222,3539,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(29,222,3540,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(30,222,3541,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(31,222,3542,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(32,222,3543,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(33,222,3544,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(34,222,3545,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(35,222,3546,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(36,222,3547,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(37,222,3548,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(38,222,3549,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(39,222,3550,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(40,222,3551,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(41,222,3552,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(42,222,3553,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(43,222,3554,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(44,222,3555,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(45,222,3556,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(46,222,3557,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(47,222,3558,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(48,222,3559,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(49,222,3560,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(50,222,3561,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(51,222,3562,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(52,222,3563,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(53,222,3564,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(54,222,3565,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(55,222,3566,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(56,222,3567,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(57,222,3568,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(58,222,3569,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(59,222,3570,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(60,222,3571,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(61,222,3572,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(62,222,3573,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(63,222,3574,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(64,222,3575,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(65,222,3576,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(66,222,3577,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(67,222,3578,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(68,222,3579,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(69,222,3580,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(70,222,3581,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(71,222,3582,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(72,222,3583,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(73,222,3584,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(74,222,3585,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(75,222,3586,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(76,222,3587,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(77,222,3588,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(78,222,3589,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(79,222,3590,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(80,222,3591,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(81,222,3592,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(82,222,3593,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(83,222,3594,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(84,222,3595,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(85,222,3596,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(86,222,3597,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(87,222,3598,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(88,222,3599,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(89,222,3600,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(90,222,3601,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(91,222,3602,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(92,222,3603,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(93,222,3604,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(94,222,3605,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(95,222,3606,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(96,222,3607,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(97,222,3608,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(98,222,3609,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(99,222,3610,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(100,222,3611,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(101,222,3612,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(102,222,3949,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(103,222,3950,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(104,222,3951,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(105,222,3952,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(106,222,3953,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(107,222,3954,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(108,222,3955,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(109,222,3972,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `oc_zone_to_geo_zone` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-19 17:25:36
