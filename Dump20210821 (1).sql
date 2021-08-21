CREATE DATABASE  IF NOT EXISTS `covid_patient_tracker_db` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `covid_patient_tracker_db`;
-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: covid_patient_tracker_db
-- ------------------------------------------------------
-- Server version	5.7.34-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `daily_health_status`
--

DROP TABLE IF EXISTS `daily_health_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `daily_health_status` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `patient_id` int(10) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_str` varchar(45) DEFAULT NULL,
  `record_date` date DEFAULT NULL,
  `oxygen_level` varchar(45) DEFAULT NULL,
  `temperature` varchar(45) DEFAULT NULL,
  `pulse_rate` varchar(45) DEFAULT NULL,
  `other_detail` varchar(450) DEFAULT NULL,
  `status` char(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`id`),
  KEY `fk_1_idx` (`patient_id`),
  CONSTRAINT `fk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daily_health_status`
--

LOCK TABLES `daily_health_status` WRITE;
/*!40000 ALTER TABLE `daily_health_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `daily_health_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diseases_attachments`
--

DROP TABLE IF EXISTS `diseases_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diseases_attachments` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `patient_id` int(10) NOT NULL,
  `attachment_name` varchar(450) DEFAULT NULL,
  `attachment` varchar(950) DEFAULT NULL,
  `status` char(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`id`),
  KEY `fk_1_idx` (`patient_id`),
  CONSTRAINT `fk_2` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diseases_attachments`
--

LOCK TABLES `diseases_attachments` WRITE;
/*!40000 ALTER TABLE `diseases_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `diseases_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_current_diseases`
--

DROP TABLE IF EXISTS `patient_current_diseases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_current_diseases` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `patient_id` int(10) NOT NULL,
  `disease_name` varchar(450) DEFAULT NULL,
  `disease_identified_date` date DEFAULT NULL,
  `last_medical_treatment_date` date DEFAULT NULL,
  `attachment_id` int(10) NOT NULL,
  `other_detail` varchar(950) DEFAULT NULL,
  `status` char(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`id`),
  KEY `fk_3_idx` (`patient_id`),
  KEY `fk_5_idx` (`attachment_id`),
  CONSTRAINT `fk_3` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_5` FOREIGN KEY (`attachment_id`) REFERENCES `diseases_attachments` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_current_diseases`
--

LOCK TABLES `patient_current_diseases` WRITE;
/*!40000 ALTER TABLE `patient_current_diseases` DISABLE KEYS */;
/*!40000 ALTER TABLE `patient_current_diseases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_locations`
--

DROP TABLE IF EXISTS `patient_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_locations` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `current_address` varchar(450) DEFAULT NULL,
  `permanent_address` varchar(450) DEFAULT NULL,
  `workplace_address` varchar(450) DEFAULT NULL,
  `status` char(1) NOT NULL DEFAULT 'A',
  `patient_id` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_4_idx` (`patient_id`),
  CONSTRAINT `fk_4` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_locations`
--

LOCK TABLES `patient_locations` WRITE;
/*!40000 ALTER TABLE `patient_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `patient_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(450) DEFAULT NULL,
  `last_name` varchar(450) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `nic` varchar(50) DEFAULT NULL,
  `contact_home` varchar(50) DEFAULT NULL,
  `contact_mobile_1` varchar(50) DEFAULT NULL,
  `contact_mobile_2` varchar(50) DEFAULT NULL,
  `emergency_contact_name` varchar(450) DEFAULT NULL,
  `emergency_contact_no` varchar(50) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` char(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vaccination_details`
--

DROP TABLE IF EXISTS `vaccination_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vaccination_details` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `patient_id` int(10) NOT NULL,
  `vaccine_type` varchar(100) DEFAULT NULL,
  `vaccine_date` date DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `center_name` varchar(100) DEFAULT NULL,
  `dose_term` int(10) DEFAULT NULL,
  `status` char(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`id`),
  KEY `fk_6_idx` (`patient_id`),
  CONSTRAINT `fk_6` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vaccination_details`
--

LOCK TABLES `vaccination_details` WRITE;
/*!40000 ALTER TABLE `vaccination_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `vaccination_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-21 20:24:47
