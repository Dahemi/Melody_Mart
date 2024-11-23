-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: lessonmanage
-- ------------------------------------------------------
-- Server version	8.0.38

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
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `booking_id` int NOT NULL AUTO_INCREMENT,
  `LessonName` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `date` varchar(45) NOT NULL,
  `time` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  PRIMARY KEY (`booking_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (1,'Guitar Fundamentals','dahami','2024-10-12','18:24','d@gmail.com','0769684899'),(2,'Piano for Beginners','dahami','2024-10-03','17:10','d@gmail.com','0769684899'),(3,'Guitar Fundamentals','thisuri','2024-10-04','10:00','t@gmail.com','0707691558'),(4,'Rock Guitar Mastery','hasitha','2024-10-11','18:30','h@gmail.com','0769684899'),(5,'Vocal Training Basics','hasitha','2024-10-10','18:30','h@gmail.com','0707691558'),(6,'Guitar Fundamentals','hasitha','2024-10-08','12:30','h@gmail.com','0707691558'),(8,'Rock Guitar Mastery','heshan','2024-11-09','13:30','hs@gmail.com','0769684899'),(9,'Guitar Fundamentals','heshan','2024-10-31','15:20','hs@gmail.com','0769684899'),(10,'Guitar Fundamentals','nimali','2024-11-05','16:30','n@gmail.com','0707691558'),(11,'Advanced Vocal Techniques','namal','2024-11-09','16:15','na@gmail.com','0707691558'),(12,'Guitar Fundamentals','himal','2024-11-09','15:25','h@gmail.com','0769684899'),(17,'Advanced Piano Techniques','nivi','2024-09-29','15:40','gy@gmail.com','1234'),(18,'Piano for Beginners','nivi','2024-10-08','15:43','f@gmail.com','1234'),(20,'Advanced Piano Techniques','nihal','2024-10-31','08:00','h@gmail.com','0769684899'),(22,'Guitar Fundamentals','Apeksha','2024-10-18','10:08','f@gmail.com','0764069868');
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-09 14:26:27
