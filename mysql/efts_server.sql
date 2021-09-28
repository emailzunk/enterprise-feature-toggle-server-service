-- MySQL dump 10.13  Distrib 5.7.18, for Win64 (x86_64)
--
-- Host: localhost    Database: ff4j_demo
-- ------------------------------------------------------
-- Server version	5.7.18

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
-- Table structure for table `ff4j_audit`
--

DROP TABLE IF EXISTS `ff4j_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ff4j_audit` (
                              `EVT_UUID` varchar(40) NOT NULL,
                              `EVT_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
                              `EVT_TYPE` varchar(30) NOT NULL,
                              `EVT_NAME` varchar(30) NOT NULL,
                              `EVT_ACTION` varchar(30) NOT NULL,
                              `EVT_HOSTNAME` varchar(100) NOT NULL,
                              `EVT_SOURCE` varchar(30) NOT NULL,
                              `EVT_DURATION` int(11) DEFAULT NULL,
                              `EVT_USER` varchar(30) DEFAULT NULL,
                              `EVT_VALUE` varchar(100) DEFAULT NULL,
                              `EVT_KEYS` varchar(255) DEFAULT NULL,
                              PRIMARY KEY (`EVT_UUID`,`EVT_TIME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ff4j_audit`
--

LOCK TABLES `ff4j_audit` WRITE;
/*!40000 ALTER TABLE `ff4j_audit` DISABLE KEYS */;
INSERT INTO `ff4j_audit` VALUES ('001f7ce7-1e7b-424e-92b2-c084f0554d79','2021-09-26 06:25:11','feature','Sample-Toggle-1','Created','LOH068ND447GLYF','JAVA_API',0,'Ram','Not Set','');
/*!40000 ALTER TABLE `ff4j_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ff4j_custom_properties`
--

DROP TABLE IF EXISTS `ff4j_custom_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ff4j_custom_properties` (
                                          `PROPERTY_ID` varchar(100) NOT NULL,
                                          `CLAZZ` varchar(255) NOT NULL,
                                          `CURRENTVALUE` varchar(255) DEFAULT NULL,
                                          `FIXEDVALUES` varchar(1000) DEFAULT NULL,
                                          `DESCRIPTION` varchar(1000) DEFAULT NULL,
                                          `FEAT_UID` varchar(100) NOT NULL,
                                          PRIMARY KEY (`PROPERTY_ID`,`FEAT_UID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ff4j_custom_properties`
--

LOCK TABLES `ff4j_custom_properties` WRITE;
/*!40000 ALTER TABLE `ff4j_custom_properties` DISABLE KEYS */;
/*!40000 ALTER TABLE `ff4j_custom_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ff4j_features`
--

DROP TABLE IF EXISTS `ff4j_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ff4j_features` (
                                 `FEAT_UID` varchar(100) NOT NULL,
                                 `ENABLE` int(11) NOT NULL,
                                 `DESCRIPTION` varchar(1000) DEFAULT NULL,
                                 `STRATEGY` varchar(1000) DEFAULT NULL,
                                 `EXPRESSION` varchar(255) DEFAULT NULL,
                                 `GROUPNAME` varchar(100) DEFAULT NULL,
                                 PRIMARY KEY (`FEAT_UID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ff4j_features`
--

LOCK TABLES `ff4j_features` WRITE;
/*!40000 ALTER TABLE `ff4j_features` DISABLE KEYS */;
INSERT INTO `ff4j_features` VALUES ('Sample-Toggle-1',0,'Sample Toggle Feature',NULL,NULL,'Demo');
/*!40000 ALTER TABLE `ff4j_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ff4j_properties`
--

DROP TABLE IF EXISTS `ff4j_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ff4j_properties` (
                                   `PROPERTY_ID` varchar(100) NOT NULL,
                                   `CLAZZ` varchar(255) NOT NULL,
                                   `CURRENTVALUE` varchar(255) DEFAULT NULL,
                                   `FIXEDVALUES` varchar(1000) DEFAULT NULL,
                                   `DESCRIPTION` varchar(1000) DEFAULT NULL,
                                   PRIMARY KEY (`PROPERTY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ff4j_properties`
--

LOCK TABLES `ff4j_properties` WRITE;
/*!40000 ALTER TABLE `ff4j_properties` DISABLE KEYS */;
INSERT INTO `ff4j_properties` VALUES ('wlp','String','22.0.0.9','X.X.X.X','WebSphere Liberty Profile Version');
/*!40000 ALTER TABLE `ff4j_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ff4j_roles`
--

DROP TABLE IF EXISTS `ff4j_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ff4j_roles` (
                              `FEAT_UID` varchar(100) NOT NULL,
                              `ROLE_NAME` varchar(100) NOT NULL,
                              PRIMARY KEY (`FEAT_UID`,`ROLE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ff4j_roles`
--

LOCK TABLES `ff4j_roles` WRITE;
/*!40000 ALTER TABLE `ff4j_roles` DISABLE KEYS */;
INSERT INTO `ff4j_roles` VALUES ('Beta-Feature-1','ROLE_BETA-TESTER'),('Beta-Feature-2','ROLE_BETA-TESTER');
/*!40000 ALTER TABLE `ff4j_roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-31 12:12:05
