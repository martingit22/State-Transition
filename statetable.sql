-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: shopping_basket
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `shopping_state`
--

DROP TABLE IF EXISTS `shopping_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shopping_state` (
  `id` int NOT NULL AUTO_INCREMENT,
  `current_state` varchar(255) NOT NULL,
  `event` varchar(255) NOT NULL,
  `next_state` varchar(255) NOT NULL,
  `multiplier` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopping_state`
--

LOCK TABLES `shopping_state` WRITE;
/*!40000 ALTER TABLE `shopping_state` DISABLE KEYS */;
INSERT INTO `shopping_state` VALUES (1,'Empty Basket','Add Item','Item Added to Basket',1),(2,'Item Added to Basket','Remove Item','Empty Basket',2),(3,'Item Added to Basket','Go to Summary Display','Summary Display',3),(4,'Summary Display','Confirm OK','Confirm and Go to Payment System',4),(5,'Summary Display','Confirm Not OK (Invalid)','Invalid State',5),(6,'Summary Display','Go Back to Shopping','Back to Shopping',6),(7,'Confirm and Go to Payment System','-','Payment System',7),(8,'Back to Shopping','Add Item','Item Added to Basket',8),(9,'Back to Shopping','Go to Summary Display','Summary Display',9),(10,'Payment System','-','-',10),(11,'Invalid State','-','-',11);
/*!40000 ALTER TABLE `shopping_state` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-12 12:35:20
