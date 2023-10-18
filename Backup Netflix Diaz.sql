/* Las tablas que seleccioné para hacer el backup de mi base de datos de Netflix fueron: PeliculasySeries,
Calificacion, Usuarios y Género. */


CREATE DATABASE  IF NOT EXISTS `netflix` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `netflix`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: netflix
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Dumping data for table `calificación`
--

LOCK TABLES `calificación` WRITE;
/*!40000 ALTER TABLE `calificación` DISABLE KEYS */;
INSERT INTO `calificación` VALUES (1,1,3,23),(2,0,2,11),(3,1,4,10),(4,0,5,9),(5,1,6,8),(6,0,3,22),(7,1,8,5),(8,0,4,6),(9,1,5,6),(10,0,6,3),(11,1,1,28),(12,1,21,29),(13,0,22,3),(14,1,25,4),(15,0,29,1);
/*!40000 ALTER TABLE `calificación` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `género`
--

LOCK TABLES `género` WRITE;
/*!40000 ALTER TABLE `género` DISABLE KEYS */;
INSERT INTO `género` VALUES (1,'Drama'),(2,'Comedia'),(3,'Musical'),(4,'Crimen'),(5,'Documental'),(6,'Terror'),(7,'Suspenso'),(8,'Accion');
/*!40000 ALTER TABLE `género` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Dumping data for table `peliculasyseries`
--

LOCK TABLES `peliculasyseries` WRITE;
/*!40000 ALTER TABLE `peliculasyseries` DISABLE KEYS */;
INSERT INTO `peliculasyseries` VALUES (1,'Cencoroll',1971,58,3),(2,'Cialo',2006,75,1),(3,'Karate Kid Part III The',2007,92,1),(4,'Accident',1999,109,2),(5,'Too Late Blues',1997,126,3),(6,'Louis Live at The Comedy Store',1995,143,2),(7,'Khartoum',2008,160,1),(8,'Waking Life',1970,177,4),(9,'Vegucated',2005,194,1),(10,'Children of the Corn V: Fields of Terror',1993,211,4),(11,'Jerry Springer: The Opera',1992,228,4),(12,'Mondo Hollywood',1993,245,4),(13,'Song of the Little Road (Pather Panchali)',2005,262,2),(14,'Felix the Cat: The Movie',1994,279,4),(15,'Ong-Bak: The Thai Warrior (Ong Bak)',2008,296,3),(16,'Okie Noodling',2005,313,2),(17,'Vice',2004,330,2),(18,'Postman The (Postino Il)',2006,347,3),(19,'Letter The',1985,364,4),(20,'Teenage Mutant Ninja Turtles',2004,381,2),(21,'Pixar Story The',1996,398,1),(22,'Veronica Mars',1997,415,3),(23,'Rescue Dawn',2008,432,3),(24,'That\'s Entertainment Part II',1991,449,2),(25,'Where Eagles Dare',1989,466,2),(26,'Mr. Deeds',1998,483,2),(27,'Kingdom Come',2011,500,2),(28,'Woman of the Year',1992,517,2),(29,'Sword of Desperation (Hisshiken torisashi)',2012,534,3),(30,'Lady of Chance A',2004,551,2);
/*!40000 ALTER TABLE `peliculasyseries` ENABLE KEYS */;
UNLOCK TABLES;



--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Bernadine','bartharg0@mozilla.com','Premium','mastercard',34594304),(2,'Carling','cesparza1@wordpress.com','Estandar','VISA',32349504),(3,'Dode','dbeckham2@ebay.co.uk','Estandar','VISA',30104704),(4,'Cesaro','cjakoviljevic3@bluehost.com','Premium','mastercard',27859904),(5,'Jillayne','jodempsey4@sakura.ne.jp','Básico','VISA',25615104),(6,'Vonni','vrobrose5@boston.com','Estandar','mastercard',23370304),(7,'Reena','rcookman6@sakura.ne.jp','Premium','mastercard',21125504),(8,'Bobette','bborrell7@macromedia.com','Estandar','VISA',18880704),(9,'Raymond','rfinnemore8@youtube.com','Estandar','VISA',16635904),(10,'Torre','tchoffin9@irs.gov','Premium','VISA',14391104),(11,'Nicolis','nellershawa@weather.com','Básico','mastercard',12146304),(12,'Mannie','mgladdenb@sun.com','Premium','mastercard',9901504),(13,'Claudine','cjahnckec@about.me','Básico','mastercard',7656704),(14,'Corena','ctomasellid@hud.gov','Premium','VISA',5411904),(15,'Evaleen','edjekice@wunderground.com','Estandar','VISA',3167104),(16,'Woodie','waldersf@wikispaces.com','Básico','VISA',922304),(17,'Ardelle','awethg@g.co','Estandar','VISA',13933949),(18,'Eydie','ehaberghamh@furl.net','Básico','VISA',11233493),(19,'Tracy','ttrickeyi@a8.net','Estandar','mastercard',8533037),(20,'Clair','cbankesj@admin.ch','Premium','VISA',5832581),(21,'Sashenka','sholylandk@java.com','Básico','mastercard',3132125),(22,'Parnell','pcurgenuerl@skyrock.com','Básico','mastercard',12403403),(25,'Mollee','mteasdalemarkieo@dyndns.org','Premium','VISA',3372222),(26,'Rheba','rmenearp@businesswire.com','Estandar','VISA',2174611),(27,'Ann','aollierq@homestead.com','Estandar','mastercard',977000),(28,'Camala','cstroudr@blogs.com','Estandar','mastercard',45554444),(29,'Donal','ddowdalls@nih.gov','Estandar','VISA',44333222),(30,'Ardys','aaerst@earthlink.net','Básico','VISA',43112000);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-21 20:12:30
