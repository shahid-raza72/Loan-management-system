-- MariaDB dump 10.18  Distrib 10.5.8-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	10.5.8-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `cus_id` int(11) NOT NULL AUTO_INCREMENT,
  `scheme_id` int(11) NOT NULL,
  `scheme_name` varchar(200) NOT NULL,
  `scheme_amount` float NOT NULL,
  `installment_amount` float NOT NULL,
  `cus_name` varchar(255) NOT NULL,
  `cus_contact` varchar(255) NOT NULL,
  `cus_address` varchar(255) NOT NULL,
  `cus_asset` varchar(255) NOT NULL,
  `asset_price` float NOT NULL,
  `img` varchar(200) NOT NULL,
  `date` varchar(255) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`cus_id`),
  KEY `scheme` (`scheme_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,1,'Home Loan',300000,25000,'  Nishad  ','  01723456765  ','  Tangail,Baniara  ','Mobile',10000,'[000274].jpg','2020-04-09','Not approved',NULL),(2,1,'Home Loan',300000,25000,'  Habib  ','  01723456765  ','  Khulna  ','Bat',10000,'[000040].jpg','2020-04-09','Not approved',NULL),(3,1,'Home Loan',300000,25000,' TOma ',' 01723456765 ',' Gazipur ','Laptop',50000,'[000658].jpg','2020-04-09','New',NULL),(4,2,'Phone Loan',20000,3333.33,' Rajon ','  0172345655454 ',' Tangail ','Lighter',10000,'[000279].jpg','2020-04-09','Approved',NULL),(5,1,'Home Loan',300000,25000,'test ','01723456765','Tangail,Baniara','Mobile',250000,'[000033].jpg','2020-04-10',NULL,NULL),(6,1,'Home Loan',300000,25000,'test ','01723456765','Tangail,Baniara','Mobile',250000,'[000033].jpg','2020-04-10',NULL,NULL),(7,2,'Phone Loan',20000,3333.33,'test 2','01723456765','Tangail,Baniara','Mobile',250000,'[000033].jpg','2020-04-10',NULL,NULL),(8,1,'Home Loan',300000,25000,'Shahid raza','1234567890','qwertyuiop09','land',100000,'cons elec akash.pdf','2020-11-27',NULL,NULL),(9,1,'Home Loan',300000,25000,'abcsdhi','1234567890','F-113 west jawahar park laxmi nagar delhi','nothing',100000,'_on social.pdf','2020-11-28',NULL,NULL),(10,1,'Home Loan',300000,25000,'abcsdhi','1234567890','F-113 west jawahar park laxmi nagar delhi','nothing',100000,'_on social.pdf','2020-11-28',NULL,NULL),(11,1,'Home Loan',300000,25000,'abcsdhi','1234567890','F-113 west jawahar park laxmi nagar delhi','land',100000,'_on social.pdf','2020-11-28',NULL,NULL),(12,1,'Home Loan',300000,25000,'a','3456788543','qwertyuiop09','land',100000,'_on social.pdf','2020-11-29',NULL,NULL),(13,1,'Home Loan',300000,25000,'Shahid raza','1234567890','F-113 west jawahar park laxmi nagar delhi','nothing',100000,'_on social.pdf','12','Not Approved',NULL),(14,1,'Home Loan',300000,25000,'Shahid raza','1234567890','F-113 west jawahar park laxmi nagar delhi','nothing',100000,'_on social.pdf','12','not approved',NULL),(15,2,'Phone Loan',20000,3333,'Shahid raza','3456788543','qwertyuiop09','nothing',100000,'_on social.pdf','12','not approved',NULL),(16,2,'Phone Loan',20000,3333,' frgth ',' jghf ',' F-113 west jawahar park laxmi nagar delhi ','nothing',100000,'_on social.pdf','12','not approved',NULL),(17,1,'Home Loan',300000,25000,'khujli','1234567890','F-113 west jawahar park laxmi nagar delhi','land',100000,'_on social.pdf','12','not approved',NULL),(18,1,'Home Loan',300000,25000,'Shahid raza','1234567890','F-113 west jawahar park laxmi nagar delhi','nothing',100000,'_on social.pdf','12','not approved',NULL),(19,1,'Home Loan',300000,25000,'newname1','1234567890','newadrss','land',100000,'_on social.pdf','12','not approved',NULL),(20,1,'Home Loan',300000,25000,' Shahid raza ',' 1234567890 ',' F-113 west jawahar park laxmi nagar delhi ','nothing',100000,'_on social.pdf','12','Approved','no@body.com'),(21,1,'Home Loan',300000,25000,'         Shahid raza         ','         1234567890         ','         qwertyuiop09         ','nothing',100000,'_on social.pdf','12','Not approved','kv@1.com');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `installment`
--

DROP TABLE IF EXISTS `installment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `installment` (
  `install_id` int(11) NOT NULL AUTO_INCREMENT,
  `cus_id` int(11) NOT NULL,
  `amount` float NOT NULL,
  `remaining` float NOT NULL,
  `status` varchar(11) NOT NULL,
  `fine` float NOT NULL,
  `ins_date` varchar(11) NOT NULL,
  PRIMARY KEY (`install_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `installment`
--

LOCK TABLES `installment` WRITE;
/*!40000 ALTER TABLE `installment` DISABLE KEYS */;
INSERT INTO `installment` VALUES (1,1,25000,275000,'Late',50,'2020-05-12'),(2,3,25000,275000,'Late',50,'2020-05-15'),(3,2,25000,275000,'On Time',0,'2020-05-08'),(4,2,25000,250000,'Late',50,'2020-06-13'),(5,3,25000,250000,'Late',50,'2020-06-13'),(6,4,3333.33,16666.7,'Late',50,'2020-04-24'),(7,4,3333.33,13333.4,'On Time',0,'2020-04-11'),(8,4,6666.66,6666.74,'Delayed',66.6666,'2020-05-15'),(9,4,6666.66,6666.74,'Delayed',66.6666,'2020-05-08'),(10,4,3333.33,10000.1,'On Time',0,'2020-04-18'),(11,4,3333.33,6666.77,'On Time',0,'2020-04-25'),(12,2,25000,225000,'On Time',0,'2020-06-18'),(13,2,50000,175000,'Delayed',500,'2020-09-24'),(14,2,50000,125000,'Delayed',500,'2020-12-11'),(15,3,50000,200000,'Delayed',500,'2020-08-07'),(16,3,50000,150000,'Delayed',500,'2020-10-15'),(17,3,25000,125000,'Late',50,'2020-11-07'),(18,3,25000,100000,'On Time',0,'2020-12-05'),(19,6,25000,275000,'Late',50,'2020-04-11'),(20,6,50000,225000,'Delayed',500,'2020-06-13'),(21,7,3333.33,16666.7,'Late',50,'2020-04-11'),(22,6,25000,200000,'Late',50,'2020-04-11');
/*!40000 ALTER TABLE `installment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loan_info`
--

DROP TABLE IF EXISTS `loan_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loan_info` (
  `scheme_id` int(11) NOT NULL,
  `cus_id` int(11) NOT NULL AUTO_INCREMENT,
  `scheme_amount` float NOT NULL,
  `remaining_amount` float NOT NULL,
  `installment_no` int(11) NOT NULL,
  `installment_remaining` int(11) NOT NULL,
  `installment_amount` float NOT NULL,
  `date` varchar(20) NOT NULL,
  KEY `scheme_id` (`scheme_id`),
  KEY `cus_id` (`cus_id`),
  KEY `cus_id_2` (`cus_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan_info`
--

LOCK TABLES `loan_info` WRITE;
/*!40000 ALTER TABLE `loan_info` DISABLE KEYS */;
INSERT INTO `loan_info` VALUES (1,1,300000,275000,12,11,25000,'2020-04-09'),(1,2,300000,125000,12,5,25000,'2020-04-09'),(1,3,300000,100000,12,4,25000,'2020-04-09'),(2,4,20000,6666.77,6,2,3333.33,'2020-04-09'),(1,5,300000,300000,12,12,25000,'2020-04-10'),(1,6,300000,200000,12,8,25000,'2020-04-10'),(2,7,20000,16666.7,6,5,3333.33,'2020-04-10'),(1,8,300000,300000,12,12,25000,'2020-11-27'),(1,9,300000,300000,12,12,25000,'2020-11-28'),(1,10,300000,300000,12,12,25000,'2020-11-28'),(1,11,300000,300000,12,12,25000,'2020-11-28'),(1,12,300000,300000,12,12,25000,'2020-11-29'),(1,13,300000,300000,12,12,25000,'2020-11-29'),(1,14,300000,300000,12,12,25000,'2020-11-30'),(2,15,20000,20000,6,6,3333,'2020-11-30'),(2,16,20000,20000,6,6,3333,'2020-11-30'),(1,17,300000,300000,12,12,25000,'2020-12-01'),(1,18,300000,300000,12,12,25000,'2020-12-01'),(1,19,300000,300000,12,12,25000,'2020-12-01'),(1,20,300000,300000,12,12,25000,'2020-12-01'),(1,21,300000,300000,12,12,25000,'2020-12-03');
/*!40000 ALTER TABLE `loan_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedule` (
  `install_no` int(11) NOT NULL,
  `cus_id` int(11) NOT NULL,
  `cus_name` varchar(200) NOT NULL,
  `Time` varchar(255) NOT NULL,
  `status` varchar(200) NOT NULL,
  KEY `cus_id` (`cus_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
INSERT INTO `schedule` VALUES (1,1,'Nishad','2020-05-09','paid'),(2,1,'Nishad','2020-06-08','paid'),(3,1,'Nishad','2020-07-08',''),(4,1,'Nishad','2020-08-07',''),(5,1,'Nishad','2020-09-06',''),(6,1,'Nishad','2020-10-06',''),(7,1,'Nishad','2020-11-05',''),(8,1,'Nishad','2020-12-05',''),(9,1,'Nishad','2021-01-04',''),(10,1,'Nishad','2021-02-03',''),(11,1,'Nishad','2021-03-05',''),(12,1,'Nishad','2021-04-04',''),(1,2,'Habib','2020-05-09','paid'),(2,2,'Habib','2020-06-08','paid'),(3,2,'Habib','2020-07-08','paid'),(4,2,'Habib','2020-08-07','paid'),(5,2,'Habib','2020-09-06','unpaid'),(6,2,'Habib','2020-10-06','paid'),(7,2,'Habib','2020-11-05','paid'),(8,2,'Habib','2020-12-05','unpaid'),(9,2,'Habib','2021-01-04','unpaid'),(10,2,'Habib','2021-02-03','unpaid'),(11,2,'Habib','2021-03-05','unpaid'),(12,2,'Habib','2021-04-04','unpaid'),(1,3,'TOma','2020-05-09','paid'),(2,3,'TOma','2020-06-08','unpaid'),(3,3,'TOma','2020-07-08','paid'),(4,3,'TOma','2020-08-07','paid'),(5,3,'TOma','2020-09-06','paid'),(6,3,'TOma','2020-10-06','paid'),(7,3,'TOma','2020-11-05','paid'),(8,3,'TOma','2020-12-05','paid'),(9,3,'TOma','2021-01-04','unpaid'),(10,3,'TOma','2021-02-03','unpaid'),(11,3,'TOma','2021-03-05','unpaid'),(12,3,'TOma','2021-04-04','unpaid'),(1,4,'Rajon','2020-04-16','paid'),(2,4,'Rajon','2020-04-23','unpaid'),(3,4,'Rajon','2020-04-30','unpaid'),(4,4,'Rajon','2020-05-07','unpaid'),(5,4,'Rajon','2020-05-14','unpaid'),(6,4,'Rajon','2020-05-21','unpaid'),(1,5,'test ','2020-04-11','unpaid'),(2,5,'test ','2020-04-12','unpaid'),(3,5,'test ','2020-04-13','unpaid'),(4,5,'test ','2020-04-14','unpaid'),(5,5,'test ','2020-04-15','unpaid'),(6,5,'test ','2020-04-16','unpaid'),(7,5,'test ','2020-04-17','unpaid'),(8,5,'test ','2020-04-18','unpaid'),(9,5,'test ','2020-04-19','unpaid'),(10,5,'test ','2020-04-20','unpaid'),(11,5,'test ','2020-04-21','unpaid'),(12,5,'test ','2020-04-22','unpaid'),(1,6,'test ','2020-04-10','paid'),(2,6,'test ','2020-04-10','paid'),(3,6,'test ','2020-04-10','paid'),(4,6,'test ','2020-04-10','paid'),(5,6,'test ','2020-04-10','unpaid'),(6,6,'test ','2020-04-10','unpaid'),(7,6,'test ','2020-04-10','unpaid'),(8,6,'test ','2020-04-10','unpaid'),(9,6,'test ','2020-04-10','unpaid'),(10,6,'test ','2020-04-10','unpaid'),(11,6,'test ','2020-04-10','unpaid'),(12,6,'test ','2020-04-10','unpaid'),(1,7,'test 2','2020-04-10','paid'),(2,7,'test 2','2020-04-10','unpaid'),(3,7,'test 2','2020-04-10','unpaid'),(4,7,'test 2','2020-04-10','unpaid'),(5,7,'test 2','2020-04-10','unpaid'),(6,7,'test 2','2020-04-10','unpaid'),(1,7,'test 2','2020-12-27','unpaid'),(1,8,'Shahid raza','2020-12-27','unpaid'),(2,8,'Shahid raza','2021-01-26','unpaid'),(3,8,'Shahid raza','2021-02-25','unpaid'),(4,8,'Shahid raza','2021-03-27','unpaid'),(5,8,'Shahid raza','2021-04-26','unpaid'),(6,8,'Shahid raza','2021-05-26','unpaid'),(7,8,'Shahid raza','2021-06-25','unpaid'),(8,8,'Shahid raza','2021-07-25','unpaid'),(9,8,'Shahid raza','2021-08-24','unpaid'),(10,8,'Shahid raza','2021-09-23','unpaid'),(11,8,'Shahid raza','2021-10-23','unpaid'),(12,8,'Shahid raza','2021-11-22','unpaid'),(1,9,'abcsdhi','2020-12-28','unpaid'),(2,9,'abcsdhi','2021-01-27','unpaid'),(3,9,'abcsdhi','2021-02-26','unpaid'),(4,9,'abcsdhi','2021-03-28','unpaid'),(5,9,'abcsdhi','2021-04-27','unpaid'),(6,9,'abcsdhi','2021-05-27','unpaid'),(7,9,'abcsdhi','2021-06-26','unpaid'),(8,9,'abcsdhi','2021-07-26','unpaid'),(9,9,'abcsdhi','2021-08-25','unpaid'),(10,9,'abcsdhi','2021-09-24','unpaid'),(11,9,'abcsdhi','2021-10-24','unpaid'),(12,9,'abcsdhi','2021-11-23','unpaid'),(1,10,'abcsdhi','2020-12-28','unpaid'),(2,10,'abcsdhi','2021-01-27','unpaid'),(3,10,'abcsdhi','2021-02-26','unpaid'),(4,10,'abcsdhi','2021-03-28','unpaid'),(5,10,'abcsdhi','2021-04-27','unpaid'),(6,10,'abcsdhi','2021-05-27','unpaid'),(7,10,'abcsdhi','2021-06-26','unpaid'),(8,10,'abcsdhi','2021-07-26','unpaid'),(9,10,'abcsdhi','2021-08-25','unpaid'),(10,10,'abcsdhi','2021-09-24','unpaid'),(11,10,'abcsdhi','2021-10-24','unpaid'),(12,10,'abcsdhi','2021-11-23','unpaid'),(1,11,'abcsdhi','2020-12-28','unpaid'),(2,11,'abcsdhi','2021-01-27','unpaid'),(3,11,'abcsdhi','2021-02-26','unpaid'),(4,11,'abcsdhi','2021-03-28','unpaid'),(5,11,'abcsdhi','2021-04-27','unpaid'),(6,11,'abcsdhi','2021-05-27','unpaid'),(7,11,'abcsdhi','2021-06-26','unpaid'),(8,11,'abcsdhi','2021-07-26','unpaid'),(9,11,'abcsdhi','2021-08-25','unpaid'),(10,11,'abcsdhi','2021-09-24','unpaid'),(11,11,'abcsdhi','2021-10-24','unpaid'),(12,11,'abcsdhi','2021-11-23','unpaid'),(1,12,'a','2020-12-28','unpaid'),(2,12,'a','2021-01-27','unpaid'),(3,12,'a','2021-02-26','unpaid'),(4,12,'a','2021-03-28','unpaid'),(5,12,'a','2021-04-27','unpaid'),(6,12,'a','2021-05-27','unpaid'),(7,12,'a','2021-06-26','unpaid'),(8,12,'a','2021-07-26','unpaid'),(9,12,'a','2021-08-25','unpaid'),(10,12,'a','2021-09-24','unpaid'),(11,12,'a','2021-10-24','unpaid'),(12,12,'a','2021-11-23','unpaid'),(1,13,'Shahid raza','2020-12-29','unpaid'),(2,13,'Shahid raza','2021-01-28','unpaid'),(3,13,'Shahid raza','2021-02-27','unpaid'),(4,13,'Shahid raza','2021-03-29','unpaid'),(5,13,'Shahid raza','2021-04-28','unpaid'),(6,13,'Shahid raza','2021-05-28','unpaid'),(7,13,'Shahid raza','2021-06-27','unpaid'),(8,13,'Shahid raza','2021-07-27','unpaid'),(9,13,'Shahid raza','2021-08-26','unpaid'),(10,13,'Shahid raza','2021-09-25','unpaid'),(11,13,'Shahid raza','2021-10-25','unpaid'),(12,13,'Shahid raza','2021-11-24','unpaid'),(1,13,'Shahid raza','2020-12-29','unpaid'),(1,14,'Shahid raza','2020-12-29','unpaid'),(2,14,'Shahid raza','2021-01-28','unpaid'),(3,14,'Shahid raza','2021-02-27','unpaid'),(4,14,'Shahid raza','2021-03-29','unpaid'),(5,14,'Shahid raza','2021-04-28','unpaid'),(6,14,'Shahid raza','2021-05-28','unpaid'),(7,14,'Shahid raza','2021-06-27','unpaid'),(8,14,'Shahid raza','2021-07-27','unpaid'),(9,14,'Shahid raza','2021-08-26','unpaid'),(10,14,'Shahid raza','2021-09-25','unpaid'),(11,14,'Shahid raza','2021-10-25','unpaid'),(12,14,'Shahid raza','2021-11-24','unpaid'),(1,15,'Shahid raza','2020-12-06','unpaid'),(2,15,'Shahid raza','2020-12-13','unpaid'),(3,15,'Shahid raza','2020-12-20','unpaid'),(4,15,'Shahid raza','2020-12-27','unpaid'),(5,15,'Shahid raza','2021-01-03','unpaid'),(6,15,'Shahid raza','2021-01-10','unpaid'),(1,16,'frgth','2020-12-06','unpaid'),(2,16,'frgth','2020-12-13','unpaid'),(3,16,'frgth','2020-12-20','unpaid'),(4,16,'frgth','2020-12-27','unpaid'),(5,16,'frgth','2021-01-03','unpaid'),(6,16,'frgth','2021-01-10','unpaid'),(1,17,'khujli','2020-12-30','paid'),(2,17,'khujli','2021-01-29','unpaid'),(3,17,'khujli','2021-02-28','unpaid'),(4,17,'khujli','2021-03-30','unpaid'),(5,17,'khujli','2021-04-29','unpaid'),(6,17,'khujli','2021-05-29','unpaid'),(7,17,'khujli','2021-06-28','unpaid'),(8,17,'khujli','2021-07-28','unpaid'),(9,17,'khujli','2021-08-27','unpaid'),(10,17,'khujli','2021-09-26','unpaid'),(11,17,'khujli','2021-10-26','unpaid'),(12,17,'khujli','2021-11-25','unpaid'),(1,18,'Shahid raza','2020-12-31','unpaid'),(2,18,'Shahid raza','2021-01-30','unpaid'),(3,18,'Shahid raza','2021-03-01','unpaid'),(4,18,'Shahid raza','2021-03-31','unpaid'),(5,18,'Shahid raza','2021-04-30','unpaid'),(6,18,'Shahid raza','2021-05-30','unpaid'),(7,18,'Shahid raza','2021-06-29','unpaid'),(8,18,'Shahid raza','2021-07-29','unpaid'),(9,18,'Shahid raza','2021-08-28','unpaid'),(10,18,'Shahid raza','2021-09-27','unpaid'),(11,18,'Shahid raza','2021-10-27','unpaid'),(12,18,'Shahid raza','2021-11-26','unpaid'),(1,19,'newname1','2020-12-31','unpaid'),(2,19,'newname1','2021-01-30','unpaid'),(3,19,'newname1','2021-03-01','unpaid'),(4,19,'newname1','2021-03-31','unpaid'),(5,19,'newname1','2021-04-30','unpaid'),(6,19,'newname1','2021-05-30','unpaid'),(7,19,'newname1','2021-06-29','unpaid'),(8,19,'newname1','2021-07-29','unpaid'),(9,19,'newname1','2021-08-28','unpaid'),(10,19,'newname1','2021-09-27','unpaid'),(11,19,'newname1','2021-10-27','unpaid'),(12,19,'newname1','2021-11-26','unpaid'),(1,20,'Shahid raza','2020-12-31','unpaid'),(2,20,'Shahid raza','2021-01-30','unpaid'),(3,20,'Shahid raza','2021-03-01','unpaid'),(4,20,'Shahid raza','2021-03-31','unpaid'),(5,20,'Shahid raza','2021-04-30','unpaid'),(6,20,'Shahid raza','2021-05-30','unpaid'),(7,20,'Shahid raza','2021-06-29','unpaid'),(8,20,'Shahid raza','2021-07-29','unpaid'),(9,20,'Shahid raza','2021-08-28','unpaid'),(10,20,'Shahid raza','2021-09-27','unpaid'),(11,20,'Shahid raza','2021-10-27','unpaid'),(12,20,'Shahid raza','2021-11-26','unpaid'),(1,21,'Shahid raza','2021-01-02','unpaid'),(2,21,'Shahid raza','2021-02-01','unpaid'),(3,21,'Shahid raza','2021-03-03','unpaid'),(4,21,'Shahid raza','2021-04-02','unpaid'),(5,21,'Shahid raza','2021-05-02','unpaid'),(6,21,'Shahid raza','2021-06-01','unpaid'),(7,21,'Shahid raza','2021-07-01','unpaid'),(8,21,'Shahid raza','2021-07-31','unpaid'),(9,21,'Shahid raza','2021-08-30','unpaid'),(10,21,'Shahid raza','2021-09-29','unpaid'),(11,21,'Shahid raza','2021-10-29','unpaid'),(12,21,'Shahid raza','2021-11-28','unpaid');
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scheme`
--

DROP TABLE IF EXISTS `scheme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scheme` (
  `scheme_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `amount` float NOT NULL,
  `r_asset` float NOT NULL,
  `no_installment` int(11) NOT NULL,
  `Install_amount` float NOT NULL,
  `duration` varchar(20) NOT NULL,
  `date` varchar(11) NOT NULL,
  PRIMARY KEY (`scheme_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scheme`
--

LOCK TABLES `scheme` WRITE;
/*!40000 ALTER TABLE `scheme` DISABLE KEYS */;
INSERT INTO `scheme` VALUES (1,'Home Loan',300000,10000,12,25000,'month','2020-04-09 '),(2,'Phone Loan',20000,5000,6,3333.33,'week','2020-04-09 ');
/*!40000 ALTER TABLE `scheme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `likee` varchar(200) NOT NULL,
  `time` varchar(20) NOT NULL,
  `role` varchar(30) DEFAULT NULL,
  `admin_id` varchar(20) DEFAULT NULL,
  `pass` varchar(80) DEFAULT NULL,
  `father_name` varchar(30) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'q@3.com','res','2020-12-02','customer',NULL,'qwerty','qwerty','Shahid raza'),(2,'123@a.com','res','2020-12-02','customer',NULL,'qwerty','qwerty','Shahid raza'),(3,'yut@m.com','res','2020-12-02','agent',NULL,'qwerty','qwerty','abcsdhi'),(4,'k@1.com','res','2020-12-02','customer',NULL,'qwerty','qwerty','abcsdhi'),(5,'anjali@123.com','res','2020-12-02','customer',NULL,'qwerty','qwerty','Shahid raza'),(6,'a@bc.com','res','2020-12-02','agent',NULL,'$2b$10$2Xk/hmx5LzSWvb0iLm6ddexS2R7vnL2a/YKX94yU60PQ2uMW72r/q','a','Shahid raza'),(7,'new@a.com','res','2020-12-02','customer',NULL,'$2b$10$aoSeLQlil3brRjCYh3PmWuhrs9NDNq4znxOoN3IucI2zpyrUBa5xO','qwerty','Shahid raza'),(8,'kv@1.com','res','2020-12-02','customer',NULL,'$2b$10$IV.HiKkjBk3NmGDbylRYB.3D67.UP9bGEXmmvbvFzakV8jtCu0jYW','qwerty','Shahid raza'),(9,'admin@123.com','res','2020-12-02','admin','1234567890','$2b$10$qoATl.rHzhQz51f7LLHCoOvxiIXBE5HkQ1KMTODa3QVl2br6l8fyG','a','abcsdhi');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-03 23:37:19
