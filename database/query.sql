-- MySQL dump 10.13  Distrib 8.0.31, for Linux (x86_64)
--
-- Host: localhost    Database: checkList_cake
-- ------------------------------------------------------
-- Server version	8.0.31-0ubuntu0.20.04.2

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'fabio Almeida','fabio.almeida@gmail.com','$2y$10$aC08eCK/Q2j7WM0USvBv1uvkRRq5DK7UNC1gy4wVQttec3YMoka4i',NULL,NULL,NULL,'2023-01-15 04:36:27','2023-01-15 04:36:27'),(2,'Cristian McKenzie','carlotta85@example.org','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,'Fm3WlqaDgr','2023-01-16 21:33:26','2023-01-16 21:33:26'),(3,'Dr. Alec Rau PhD','robin89@example.com','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,'CODTjasrpC','2023-01-16 21:33:26','2023-01-16 21:33:26'),(4,'Princess Olson','hermiston.nathanial@example.org','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,'7TCsrTRB29','2023-01-16 21:33:26','2023-01-16 21:33:26'),(5,'Jovany Ankunding','nedra16@example.com','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,'pjW2wI7vzV','2023-01-16 21:33:26','2023-01-16 21:33:26'),(6,'Candace Emard','brown.fleta@example.org','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,'9NAWOtS8rp','2023-01-16 21:33:26','2023-01-16 21:33:26'),(7,'Prof. Lora DuBuque','abigale.halvorson@example.com','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,'sfZTJEX3VD','2023-01-16 21:33:26','2023-01-16 21:33:26'),(8,'Dr. Mireille Turner Sr.','cwaelchi@example.org','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,'RQLMz9iRjY','2023-01-16 21:33:26','2023-01-16 21:33:26'),(9,'Clement Rice','paul.schamberger@example.org','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,'iZAzAhVDAL','2023-01-16 21:33:26','2023-01-16 21:33:26'),(10,'Reyna Schimmel','zgraham@example.org','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,'rsvws7pQTZ','2023-01-16 21:33:26','2023-01-16 21:33:26'),(11,'Forrest Quigley','buckridge.jose@example.net','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,'Ln71dqdxGd','2023-01-16 21:33:26','2023-01-16 21:33:26'),(12,'marcelo','marcelo.almeida@gmail.com','12345',NULL,NULL,NULL,'2023-01-17 02:32:25','2023-01-17 02:32:25'),(15,'lucio','lucio.almeida@gmail.com','12345',NULL,NULL,NULL,'2023-01-17 02:37:48','2023-01-17 02:37:48'),(16,'t','t.almeida@gmail.com','12345',NULL,NULL,NULL,'2023-01-17 02:39:07','2023-01-17 02:39:07'),(17,'cake','cake.almeida@gmail.com','12345',NULL,NULL,NULL,'2023-01-17 02:40:40','2023-01-17 02:40:40'),(18,'a','a.almeida@gmail.com','12345',NULL,NULL,NULL,'2023-01-17 02:41:17','2023-01-17 02:41:17'),(20,'Mr. Glen Hane','ydicki@example.org','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'2023-01-17 03:22:19','2023-01-17 03:22:19'),(21,'Karlie McClure','ctremblay@example.net','$2y$10$WB3blK.xi/WIltQIkb2RJOi9JwADWNC.PyXsGXyDviyYreoqGiVA6',NULL,NULL,NULL,'2023-01-17 03:24:58','2023-01-17 03:24:58'),(22,'Abigale Quitzon V','vena.larson@example.com','$2y$10$fdv3bhhna.K3rsgsoZKd8eGTimEhCBIt.9fljYzJmYc9iByfeV5hC',NULL,NULL,NULL,'2023-01-17 03:25:37','2023-01-17 03:25:37'),(23,'Eliane Bogisich','autumn.shanahan@example.org','$2y$10$ZrRuD67NMZpfD6foJCDUp.wjEtp/aBOuzgD4oY9zT1Y5mWIUdpI5u',NULL,NULL,NULL,'2023-01-17 03:27:16','2023-01-17 03:27:16'),(24,'America Prosacco','marlee.cole@example.org','$2y$10$D6z6sPkW2yQBw1gP2IXtnekx0O.Ed0Ww3H7rRDxKCb.A0oRWVT.uu',NULL,NULL,NULL,'2023-01-17 03:27:34','2023-01-17 03:27:34'),(25,'Miss Elvera Roberts','florida59@example.com','$2y$10$K1efED5p2g7N3CMS5YVRQesLtdFilzEloKd5zFvJBpBObAmK.CgdG',NULL,NULL,NULL,'2023-01-17 03:27:49','2023-01-17 03:27:49'),(26,'Moises Dooley','lebsack.imani@example.com','$2y$10$bSZ8kTc3n1/dT1TT1Zpl2uX.6NB3HImM/Y.rkPsSSe6ajv9MarsNO',NULL,NULL,NULL,'2023-01-17 03:27:59','2023-01-17 03:27:59'),(27,'Bernhard Bechtelar','metz.delmer@example.com','$2y$10$/hmHktmvH6zuK5u.DjdlNe.j.gjgDea9PSgLWhvYMVfmFF3iNn3qu',NULL,NULL,NULL,'2023-01-17 03:28:06','2023-01-17 03:28:06'),(28,'Dane Erdman','dpouros@example.net','$2y$10$LjwvKFLqrKA4IuVaR1xt8usf6UKONgHHhTyirOLhE5vjgBA2ANCQy',NULL,NULL,NULL,'2023-01-17 03:28:15','2023-01-17 03:28:15'),(29,'Irwin Hudson','ghill@example.org','$2y$10$mnpHAkBEi4fI27Bus5asJ.oGPyDchzjur3LbkJGJAO.Q6U3FumQze',NULL,NULL,NULL,'2023-01-17 03:28:44','2023-01-17 03:28:44'),(30,'Lelia Reinger','maggio.kim@example.com','$2y$10$VGSh.rwqpIU1U5wG4XwE7OiDiaNMP6PPBtEYir5Hd1buiTf9EJGwm',NULL,NULL,NULL,'2023-01-17 03:28:54','2023-01-17 03:28:54'),(31,'Ms. Marielle Kiehn Jr.','feil.angelica@example.net','$2y$10$Z6UOHOG59op1ItqVLnx9a.DlvYTUu5d79bc1f1A7KtwKY4mJPO8b2',NULL,NULL,NULL,'2023-01-17 03:29:51','2023-01-17 03:29:51'),(32,'Darron Parisian','tdooley@example.com','$2y$10$q2.BH2EWR3fWRsHuMOhWzunDngsoT9rzcdjnOsdGKe2D/7fkqk3yy',NULL,NULL,NULL,'2023-01-17 03:30:30','2023-01-17 03:30:30'),(33,'Evan Weissnat','ybednar@example.com','$2y$10$0n52YdzYky7vB4rlYaiKqet.MMEJmfFgsdZWYNAR4Ktwnh19.XC0i',NULL,NULL,NULL,'2023-01-17 03:30:41','2023-01-17 03:30:41'),(34,'Mr. Timmothy Schaefer','dakota61@example.com','$2y$10$RRoKu4S4FUb9ewfqt7uiUOpF2SMVn0FgtTkX4u0kbbCxS6jDEq6JS',NULL,NULL,NULL,'2023-01-17 03:31:35','2023-01-17 03:31:35'),(35,'Katlyn Ernser','ashlynn07@example.org','$2y$10$PMz9Ka1bJUl4r9xK2fyuqeaYjLeTI9RV0IQCvELhAOJB5X1TDnrwu',NULL,NULL,NULL,'2023-01-17 03:32:19','2023-01-17 03:32:19'),(36,'Mr. Mike Cormier II','kennedi.will@example.org','$2y$10$Z7MJjt/olAcwnoSO/BkFZ.n1unAt2kaIQMp.U1JqQ77RuG0D53fZ.',NULL,NULL,NULL,'2023-01-17 03:32:56','2023-01-17 03:32:56'),(37,'Pearline Rempel','reina.smith@example.org','$2y$10$kFcC6QZ0jT3gKEhHuN/xqeb0O3akORZtxpC2YcyxJsLb9s0N3.5ku',NULL,NULL,NULL,'2023-01-17 03:34:28','2023-01-17 03:34:28'),(39,'Kylee O\'Hara','nthiel@example.com','$2y$10$3KucubGyPcqwvZXezglGue7mCEw3n1Jrdna2ftm07GDLY6z1I9L4q',NULL,NULL,NULL,'2023-01-17 03:40:01','2023-01-17 03:40:01'),(40,'Lydia Dach','pturner@example.net','$2y$10$4XxkUhrjZY7kDcmLch6OJ.D/zDLpAIBAJxVDSlUPX9yvHvZm3lYty',NULL,NULL,NULL,'2023-01-17 03:46:57','2023-01-17 03:46:57'),(41,'Monica Rau','denis94@example.com','$2y$10$rMnatF2Vz/m13oGpklC7Ie1sEUQTCzFiw8ossjy6.kepTxOCEur4C',NULL,NULL,NULL,'2023-01-17 03:47:21','2023-01-17 03:47:21'),(42,'Elmo Bailey','bo22@example.org','$2y$10$Zpgx7LMf5dVRLI/pnGRCfeDQoVcYr7CTNc/dFzEyelPWFCMsfLJ7.',NULL,NULL,NULL,'2023-01-17 03:47:45','2023-01-17 03:47:45'),(43,'Vanessa Torphy II','jena.gleichner@example.org','$2y$10$SA9Vl1wAEqeymQiN6Ztu0Oyr/L1ZHQRufunZ7Whmhup4gWgiI/pXq',NULL,NULL,NULL,'2023-01-17 03:50:57','2023-01-17 03:50:57'),(44,'Dr. Evalyn Christiansen','rmcclure@example.com','$2y$10$jIXj3SRg3z.3qiSyao9TgeqF6300UFlSUIAA5m2TUjincEhL3Eh1O',NULL,NULL,NULL,'2023-01-17 03:55:24','2023-01-17 03:55:24'),(45,'Polly Kuhic','olegros@example.net','$2y$10$L/17Ar8kHCNARVSLSnZ4Je7jOXGBbJYmkQ85hRuHCi7.cy6rn/pY2',NULL,NULL,NULL,'2023-01-17 03:55:24','2023-01-17 03:55:24'),(46,'Natalia Conn','sgreenholt@example.com','$2y$10$kxoZDa1lowEPNPTvWrmUw.9fp80bo8ye/NOWIkfG0nRuEAbuDmxLa',NULL,NULL,NULL,'2023-01-17 03:55:34','2023-01-17 03:55:34'),(47,'Willy Boyer','skris@example.org','$2y$10$edh8lzI0Bx/X1jTGrOpGzeDCWC29IOq7BDTxYpEm2wTkYCeAat2MG',NULL,NULL,NULL,'2023-01-17 03:55:34','2023-01-17 03:55:34'),(48,'Jamal Hessel','jchamplin@example.net','$2y$10$vwA38e.gXfrD94aK254AVedTWhvCHJSzj4Q8BHhFwHc4sgSSu1o.q',NULL,NULL,NULL,'2023-01-17 03:56:10','2023-01-17 03:56:10'),(49,'Prof. Sid Dicki Sr.','stevie.stiedemann@example.net','$2y$10$fRLGjg4C8XtAMEPy7drQ2.226h2i5B0/Vbf.k3.0Jy5pXeU4fY.b2',NULL,NULL,NULL,'2023-01-17 03:56:10','2023-01-17 03:56:10'),(50,'Myriam McClure','dach.elmore@example.org','$2y$10$R3EWin4S6eZVaFK/lRf4rOzgNTf.rw/sRWGTGIyonWlKood52Pify',NULL,NULL,NULL,'2023-01-17 03:56:52','2023-01-17 03:56:52'),(51,'Vernie Eichmann','bethel40@example.net','$2y$10$TSYUPDrVW/sXcwPY/OezfOUbUuw5rEY1KEZ85rOtG5twNh48rJ7rG',NULL,NULL,NULL,'2023-01-17 03:56:52','2023-01-17 03:56:52'),(52,'Larissa Russel','ihamill@example.org','$2y$10$Ptl7pTaS50keFIG23KqCiOXdlOiQkOCGu2Cz0jcOP6YW0zmPQBwi6',NULL,NULL,NULL,'2023-01-17 03:57:05','2023-01-17 03:57:05'),(53,'Patsy Cormier Sr.','helmer.parisian@example.com','$2y$10$8arcnb3yQ2DTBG3KhcE2DO0cD.tcVlLSs1MX7ADhHOvaLyrG0.tzG',NULL,NULL,NULL,'2023-01-17 03:57:05','2023-01-17 03:57:05'),(54,'Mrs. Malinda Nitzsche V','aiyana.dach@example.org','$2y$10$qU9sN.ARoN0oKXDhkruryuNtQUc9nPlA80U6e0OA82OD2KSj08876',NULL,NULL,NULL,'2023-01-17 03:57:18','2023-01-17 03:57:18'),(55,'Brown Prosacco','general.schaden@example.net','$2y$10$/iuYhvE1QJxKEezRd5i89ehkf/Co1KpkB9XgV7uAHR6PW3bxQKMMm',NULL,NULL,NULL,'2023-01-17 03:57:31','2023-01-17 03:57:31'),(56,'Jacinthe Paucek MD','antone.dibbert@example.com','$2y$10$CUtPi800mVMyZcDWJBrXouuarggI5h/IK2MGr9gyUyql1TjufPI/m',NULL,NULL,NULL,'2023-01-17 03:57:43','2023-01-17 03:57:43'),(57,'Dr. Augusta Green Jr.','pbotsford@example.com','$2y$10$FlL8wXLOLPQeQK.gXdgumOo1i6OhOh0jdfJvrIOWjKSBnABY50xEm',NULL,NULL,NULL,'2023-01-17 03:57:43','2023-01-17 03:57:43'),(58,'Markus Cremin','fritsch.orion@example.org','$2y$10$4mCJGxAPs4N8YGPV8qy6yumC9k4.2rPbU8TaAz0OE4RaZxGxBqMs2',NULL,NULL,NULL,'2023-01-17 03:58:01','2023-01-17 03:58:01'),(59,'Margot Fay','ratke.emery@example.org','$2y$10$P9S3YabSa0996ozCGPR9BOiCco7jpa6BGrjbwjMtD6.MMcr8lHxDW',NULL,NULL,NULL,'2023-01-17 03:58:01','2023-01-17 03:58:01'),(60,'Prof. Noel Fay','kkeebler@example.net','$2y$10$J2L4BI6f2RnC7hu8bbldIe4YiC3No0sf6MUEt518PZtexH9tyXXO2',NULL,NULL,NULL,'2023-01-17 03:58:06','2023-01-17 03:58:06'),(61,'Prof. Leola Gusikowski','uklocko@example.com','$2y$10$6MhJ17wu6DxxirTBW236Ve6VdW1L1t2DED2PMf20VT9gvQ7bdn26K',NULL,NULL,NULL,'2023-01-17 03:58:06','2023-01-17 03:58:06'),(62,'Chaya Auer','marquise.feest@example.org','$2y$10$Jle3C4oRe1KYj02uPa97hOqZ83gUycTAg5o1bSD7i21nRC.aOCNJW',NULL,NULL,NULL,'2023-01-17 03:59:40','2023-01-17 03:59:40'),(63,'Dr. Velva Williamson','ullrich.rebekah@example.com','$2y$10$FSsuT7UP.1zfUVJTmfX7ju00ggibRhRMAYq6RtQ7PPukguzfY10Fu',NULL,NULL,NULL,'2023-01-17 03:59:40','2023-01-17 03:59:40'),(64,'Mr. Devante Franecki DVM','ajohnson@example.org','$2y$10$aMiMPHR5d8Be447RbATY8..D.R/px8eDVSBGq1E4AmOdTDBmFTbC6',NULL,NULL,NULL,'2023-01-17 04:00:33','2023-01-17 04:00:33'),(65,'Dr. Rosanna O\'Keefe II','bhauck@example.com','$2y$10$LBM2P0hfgzLPVVHFM8vpheai.cfuXbG8DKcR6xNrwkYIJpZWi3f.a',NULL,NULL,NULL,'2023-01-17 04:00:33','2023-01-17 04:00:33'),(66,'Ms. Shea Dicki','zrussel@example.net','$2y$10$jlOaPwkKHYOf8aFgLUTqaeYQIB.0J01fpygtWIHs38lHFpJ5/oeem',NULL,NULL,NULL,'2023-01-17 04:00:40','2023-01-17 04:00:40'),(67,'Roel Pagac','hagenes.robert@example.net','$2y$10$RObu4huI6k1brw7GdQd3feANcX6YN4JLEiRVcL0tfWnot1fl5qz12',NULL,NULL,NULL,'2023-01-17 04:00:40','2023-01-17 04:00:40'),(68,'Gonzalo Paucek','giuseppe.kerluke@example.org','$2y$10$.Jk5jZMO/LiRtptEG.QChuYuTybI5vb4QwC4OFaqTYfmgo8D8GhI6',NULL,NULL,NULL,'2023-01-17 04:01:13','2023-01-17 04:01:13'),(69,'Dedric Raynor','willy96@example.org','$2y$10$45FwC6o7R65rnjd8MSKw5OpOOs9Se3rNmBVzihA7pTYgmAwhRFK9i',NULL,NULL,NULL,'2023-01-17 04:01:13','2023-01-17 04:01:13'),(70,'Dr. Llewellyn West II','bode.elena@example.com','$2y$10$khh2fajHP9vEZSvTwBVbXudCudbEdFZhI4VoGHCjGj5Kw.dYvFlla',NULL,NULL,NULL,'2023-01-17 04:01:23','2023-01-17 04:01:23'),(71,'Lillie Ritchie','cleveland10@example.com','$2y$10$mv112zq3t/WEkvARmv36auDHVkN8mFHD.c7oAwFtDR0aGZMA2etVW',NULL,NULL,NULL,'2023-01-17 04:01:24','2023-01-17 04:01:24'),(72,'Dashawn Gutkowski','ctowne@example.net','$2y$10$Zi64YLTPLn459YOqtDOxb..dFk14PEvNrVZbG80UA0ybVbDeciAlq',NULL,NULL,NULL,'2023-01-17 04:03:43','2023-01-17 04:03:43'),(73,'Prof. Darwin Hane','klein.jeff@example.net','$2y$10$StRLduNexxyj.wP71rRhZ.fG0bD5YKciCoRl6.JGg4RDEIElykgGe',NULL,NULL,NULL,'2023-01-17 04:03:43','2023-01-17 04:03:43'),(74,'Vicente Okuneva','jframi@example.net','$2y$10$h/jdh2Fjg/ID3YHkrGsuuefkQ5krLx/6nqLxM.Upa4VLI6FnMYfGi',NULL,NULL,NULL,'2023-01-17 04:03:59','2023-01-17 04:03:59'),(75,'Wilber Wolff','wisozk.lora@example.org','$2y$10$.zf8SG5dqpaN9YjGpZX4l.TZPRV.2Vx5KfbMXIeqKNqE1hgpFgA..',NULL,NULL,NULL,'2023-01-17 04:03:59','2023-01-17 04:03:59'),(76,'Abigail Hoppe','qpfeffer@example.net','$2y$10$RBAc5/MYsVSlmvsbAf9qp.jMNdg8xRVOjO480tcVxdPXKG68Hnge.',NULL,NULL,NULL,'2023-01-17 04:12:23','2023-01-17 04:12:23'),(77,'Hillard Strosin','cormier.chelsie@example.com','$2y$10$oqsmvU6WUGzI6B8G2j9KJ.jKT7lL462gHJFPaoTPjC0Uixf0oH5di',NULL,NULL,NULL,'2023-01-17 04:12:23','2023-01-17 04:12:23'),(78,'Mr. Marcos Weber MD','lowell.windler@example.com','$2y$10$CHmP.BOc1D3W2dKUHIL.M.cdRPtGycNV7bcnnnCdo3eEgYmc0JLgK',NULL,NULL,NULL,'2023-01-17 04:12:30','2023-01-17 04:12:30'),(79,'Prof. Jaron Thompson','mayer.kaylah@example.org','$2y$10$8pzVrdLjmj4UNUJaRmnIZunpvd8h.zZNIqsuRGPFB/WiQUzvIGh2.',NULL,NULL,NULL,'2023-01-17 04:12:30','2023-01-17 04:12:30'),(80,'Reinhold Emard','shawna80@example.net','$2y$10$8FU25NUHxnZ0Y1bmfErrY.u279gmSxH14rB38jZEcS7A0RtRDS3.e',NULL,NULL,NULL,'2023-01-17 04:12:47','2023-01-17 04:12:47'),(81,'Glennie Parker','reymundo19@example.org','$2y$10$dTHdrrlL2IYWyUB2TsXZu./cOrYehrT6XlnRS0Sf3/7FzYtjQp9FK',NULL,NULL,NULL,'2023-01-17 04:12:47','2023-01-17 04:12:47'),(82,'Prof. Rosie Ruecker PhD','becker.zora@example.org','$2y$10$tG2Fl6eLYkdL3Ds4Age6YObY4pe7Faqe3TNNBmXmxukHu.sicfGHW',NULL,NULL,NULL,'2023-01-17 04:13:05','2023-01-17 04:13:05'),(83,'Prof. Elva Marquardt DVM','fveum@example.com','$2y$10$BL2TvAeC9qFlYkamb.Bq6eErH90vBsh3kJKXe9GzFF05W5ygL/Em.',NULL,NULL,NULL,'2023-01-17 04:13:40','2023-01-17 04:13:40'),(84,'Mireille Hayes','reagan65@example.org','$2y$10$kMVIZ.N5CKmJv8WzfQI0CuDYURhjIMcd/jDWL9/0ZLENkbLHHpE.6',NULL,NULL,NULL,'2023-01-17 04:14:17','2023-01-17 04:14:17'),(85,'Brain Conn','xshanahan@example.net','$2y$10$4hLk.7UYVDZ4iN.qbIrL3.aDwDdKlsjmd7bI2eErEZmOP.C6/iqe6',NULL,NULL,NULL,'2023-01-17 04:14:34','2023-01-17 04:14:34'),(86,'Prof. Ora Hackett','greenholt.lavada@example.com','$2y$10$eRBsc7J2Ae2Wth6335vc3OnewIgpJKQRVGl8FOEXREF2sIYHe64uq',NULL,NULL,NULL,'2023-01-17 04:15:00','2023-01-17 04:15:00'),(87,'Vicky Grady','corwin.karine@example.net','$2y$10$MARdSt6gjesJR8LsQXh9J.ITF35xhxZ41CCT5S8udUXCrGIXAjLNa',NULL,NULL,NULL,'2023-01-17 04:17:21','2023-01-17 04:17:21'),(88,'Norene Kohler','wwilkinson@example.net','$2y$10$n6.4T5L5meanNtKCs0N2N.q7cTILEEy2b9PonCGhyPmqaCu6l10y6',NULL,NULL,NULL,'2023-01-17 04:17:55','2023-01-17 04:17:55'),(89,'Berniece Roob','pfeffer.anabel@example.net','$2y$10$ktChwAZyW6HbrrRLKyS1E.qBtY5N33pjjwyscAT2lI9yRpkyx7YCC',NULL,NULL,NULL,'2023-01-17 04:18:15','2023-01-17 04:18:15'),(90,'Justine Stroman','georgette29@example.net','$2y$10$aVYnwNDdr6lGjkYt87w2HeCpAwrpyrWpmlB5Np4Q/fN.jhuRWJaEO',NULL,NULL,NULL,'2023-01-17 04:18:48','2023-01-17 04:18:48'),(91,'Timmy Bednar','aida.moen@example.org','$2y$10$4CAJ6q21dpgAnRxExbpXiuamcwKPiscPtGJ7wwM40PQQ9CoWWQUUK',NULL,NULL,NULL,'2023-01-17 04:18:59','2023-01-17 04:18:59'),(92,'Sunny Purdy','crystel61@example.org','$2y$10$Fr/0xPmVUtzTNyBdwPXfXuivfd91Cqr.otoxHTszVu/tgUJQMAaou',NULL,NULL,NULL,'2023-01-17 04:19:27','2023-01-17 04:19:27'),(93,'Lavinia Fisher','vida.gleichner@example.com','$2y$10$pK1AOa4pLMM34S27V3qC0uKgYb8QI.ziCYFicAP0A5SkU5ajRWVEC',NULL,NULL,NULL,'2023-01-17 04:21:40','2023-01-17 04:21:40'),(94,'Fatima McDermott','tmoen@example.org','$2y$10$Mn0cBPjXUYaB5VFweyiRbOkeVbLvUSn/uYwe4zf33OZcn2J0XDKnq',NULL,NULL,NULL,'2023-01-17 04:24:23','2023-01-17 04:24:23'),(95,'Annetta Reinger II','norwood.wiegand@example.org','$2y$10$GduPkTw1FQ8t0iVKckgDduxBm9TZFNzQpmlpG4LRpPqrJFLlXQmia',NULL,NULL,NULL,'2023-01-17 04:26:41','2023-01-17 04:26:41'),(96,'Mr. Mario Schinner IV','ekuhn@example.org','$2y$10$QvRypuvJU1S9cJUUdmcyZuYm69x3Tgyt8Lqbhe2a0BlxBONNf5zEK',NULL,NULL,NULL,'2023-01-17 04:27:52','2023-01-17 04:27:52'),(97,'Dr. General Ferry','kallie.fritsch@example.com','$2y$10$oK6F4fQRamLgGPSviabpju2x3FAWL3g3O87PjobrSZxoY/04.ICkW',NULL,NULL,NULL,'2023-01-17 04:27:52','2023-01-17 04:27:52'),(98,'Donavon Hoeger DVM','lori.thompson@example.com','$2y$10$vXBUUL1hZDIyWCItLMeaW.Mne6WFcwCRtRtm4vzKpOZfgpdkmGNX.',NULL,NULL,NULL,'2023-01-17 04:28:04','2023-01-17 04:28:04'),(99,'Precious Cormier','reynolds.olin@example.com','$2y$10$dQYShRsvTewHQAXB0M2CDeM99h0d0Xzon03.5glOTSg3vBJ9a/rnu',NULL,NULL,NULL,'2023-01-17 04:28:25','2023-01-17 04:28:25'),(100,'Sammie Rowe','leuschke.kaden@example.com','$2y$10$FwRZHxb5SPRa0p4AHTIQiO1GHV3X8kPwlubPrXLC4L1ow4LcTCnQO',NULL,NULL,NULL,'2023-01-17 04:28:35','2023-01-17 04:28:35'),(101,'Ari Hamill','lehner.kristopher@example.net','$2y$10$vGpOIRArSA7/ugDCOcRH5e34.CjLWjg9scOoMPNrXpBSO6Qft0X86',NULL,NULL,NULL,'2023-01-17 04:28:35','2023-01-17 04:28:35'),(102,'Lurline Robel','zkris@example.net','$2y$10$wF6ivaTdAy9jMViwrBU3BO24DO7stSomxUcjQLGJRGpOjZg4Rdbb6',NULL,NULL,NULL,'2023-01-17 04:28:46','2023-01-17 04:28:46'),(103,'Darby Wisoky','murphy.thompson@example.org','$2y$10$rkTJz0sKuqhuhWt/ZwpwwOrULzvIIVC.vDmM4AuaoglDvguJGl9/y',NULL,NULL,NULL,'2023-01-17 04:28:46','2023-01-17 04:28:46'),(104,'Nikolas Durgan','emard.narciso@example.net','$2y$10$j3S71P50q18cyDRT/DcAO.Krvm37ddoO6S3H4Y2IcM6Dd/zUdGBES',NULL,NULL,NULL,'2023-01-17 04:28:57','2023-01-17 04:28:57'),(105,'Marcos Donnelly','qmcglynn@example.org','$2y$10$w41L/bNhDR9A7CfE6qoaDuxiPrB/mzHGBIVghikp40CGlOShzEEuC',NULL,NULL,NULL,'2023-01-17 04:28:57','2023-01-17 04:28:57'),(106,'Jedediah Blick','lueilwitz.thalia@example.net','$2y$10$1i2kPa7.N3NSEL/T0o.7guJuA061M8KzUWaQ/3TshSezy6feYo2HO',NULL,NULL,NULL,'2023-01-17 04:29:12','2023-01-17 04:29:12'),(107,'Dr. Joey Veum Jr.','fzboncak@example.org','$2y$10$fpL9G8DZqZilU49/EuKRpehF4gzbmwqkBRZy6c91DHvkXY2kmSgQ2',NULL,NULL,NULL,'2023-01-17 04:29:49','2023-01-17 04:29:49'),(108,'Raheem Keeling','amaggio@example.net','$2y$10$Pi.FEgeOmTPOEnlXsPpPSuyrFv8zdiHcOInRF6wK2Ip1KgajnRYLq',NULL,NULL,NULL,'2023-01-17 04:30:16','2023-01-17 04:30:16'),(109,'Berniece Bechtelar','satterfield.javon@example.org','$2y$10$3IIc/iL7T5HQdZpzn6CKYuyMo1gFZdrHy6R4RWgkpJRH0/8myQ3oq',NULL,NULL,NULL,'2023-01-17 04:30:16','2023-01-17 04:30:16'),(110,'Loren Gleichner','fkutch@example.net','$2y$10$r8tbeTgYOjl8lNbIqZSBfeMgE8DOH4177KEVx7wOzoIauTnd7ChFe',NULL,NULL,NULL,'2023-01-17 04:30:59','2023-01-17 04:30:59'),(111,'Daisha Cole','larkin.emery@example.com','$2y$10$K3B5lEngF.zYJ9M9mndJFemR9Ub2XR0rq2FscoTZH3VSf5Gshurfa',NULL,NULL,NULL,'2023-01-17 04:30:59','2023-01-17 04:30:59'),(112,'Marianna Labadie Sr.','rhuel@example.com','$2y$10$NyAtnWCeBV4PmhkW3WMWre3f9p5o7DGnHkLPxnlD6JDuhQoQJW1lG',NULL,NULL,NULL,'2023-01-17 04:31:10','2023-01-17 04:31:10'),(113,'Walton Dare','mariano18@example.net','$2y$10$PzCcAS/0rDVXSVuqNZTQjOt3tXTYfDKXpzaClhwDEJ5RJaZNQgA9i',NULL,NULL,NULL,'2023-01-17 04:31:10','2023-01-17 04:31:10'),(114,'Lydia Johns','maya57@example.com','$2y$10$f97o9WGi15LFqX5Ro8nFve2YWuU0QRTDhI3qcd7rwJ1ofcgF.dW3m',NULL,NULL,NULL,'2023-01-17 04:31:30','2023-01-17 04:31:30'),(115,'Iliana Cummerata','pkreiger@example.net','$2y$10$mE02PKf8clsRlMhTLYzC8eJkBfYRPWMmerdzeT7MABvIjWozj3dyu',NULL,NULL,NULL,'2023-01-17 04:31:33','2023-01-17 04:31:33'),(116,'Mrs. Lenna Murphy','connelly.fidel@example.org','$2y$10$MHOFqomVGA9mKAE6qJjlb.aIWL9QIaKpZjw3MjTlYJ2T3P1RWbHt.',NULL,NULL,NULL,'2023-01-17 04:32:06','2023-01-17 04:32:06'),(117,'Ophelia Klocko','karina.marquardt@example.net','$2y$10$VDOswJUhCpmGit6k1cLZ8ewhRUvJVbH/fZ16EnZC79eFHCmG9mn5q',NULL,NULL,NULL,'2023-01-17 04:32:19','2023-01-17 04:32:19'),(118,'Dr. Keanu Bednar III','krystel.hills@example.org','$2y$10$ZmJkQctXE8/KPUFVU.eA9ufTBQblBoAGNPOa7O8fCgQheeKn6Y34.',NULL,NULL,NULL,'2023-01-17 04:33:23','2023-01-17 04:33:23'),(119,'Mr. Eloy Braun DDS','usanford@example.org','$2y$10$2RlQt3g1NNL7T5t5b2Gly.jmnjwKnA6EzM7ANLzxFHEaJZ63wnWla',NULL,NULL,NULL,'2023-01-17 04:34:13','2023-01-17 04:34:13'),(120,'Carley Roob','reina.botsford@example.com','$2y$10$cvYrUEHBpfxXsNpyqbesOuN5HDD2C/u4pUgFthHsmYYKHrJOSvJ7q',NULL,NULL,NULL,'2023-01-17 04:38:27','2023-01-17 04:38:27'),(121,'Kiera Ward','yundt.benjamin@example.org','$2y$10$cyDmbW9u9CdyLbZeiyqexuNBTbF9aeFjMQoKtVxnu5mnVA66FhmMC',NULL,NULL,NULL,'2023-01-17 04:38:36','2023-01-17 04:38:36'),(122,'Dr. Marcus Frami II','sylvia.lynch@example.com','$2y$10$jdkQ6ERE9UZe6i28ehl6IOEo.buye5cqRcvM9VeYLsK27HpmGx/Se',NULL,NULL,NULL,'2023-01-17 04:38:45','2023-01-17 04:38:45'),(123,'Mozelle Dickens','bkovacek@example.net','$2y$10$fkTiZIrrIbh8HrHlHaZg9.RdPhQB7igiYZO8fTpYHgQ9k1PO254.y',NULL,NULL,NULL,'2023-01-17 04:40:22','2023-01-17 04:40:22'),(124,'Ollie Johnston','ismith@example.com','$2y$10$1N6SJ.OsvabRlJe24il56u.r.ZyA2CxhxA4/KZz3OtwMrXI5Rg.Su',NULL,NULL,NULL,'2023-01-17 04:43:47','2023-01-17 04:43:47'),(125,'Maximillia Koelpin','caesar20@example.com','$2y$10$ZUVgqM8D04FxLsFMHddD3eEn.mmowU1/ouxAFABFG.O.PDtUTSuYm',NULL,NULL,NULL,'2023-01-17 04:43:52','2023-01-17 04:43:52'),(126,'Miss Malika Skiles Sr.','breitenberg.nova@example.com','$2y$10$7Xa/M6Xct0trHXhXd8b9buf7WXNpb7Z6Egw918BBCSL4HC4CBZ2K6',NULL,NULL,NULL,'2023-01-17 04:59:44','2023-01-17 04:59:44'),(127,'Dr. Zola Kub Jr.','cortney36@example.org','$2y$10$.dlUGf6hF4.gmoiC41J3ieZtOeH7404GM7FpILLNBujQCngU9wV.K',NULL,NULL,NULL,'2023-01-17 05:00:00','2023-01-17 05:00:00'),(128,'Alessandra Baumbach','pedro.lang@example.com','$2y$10$6awyc9K68bsiC4nEiNZJ9ekGkuu.PSmWkPpzOmId2onuDfAI7vPJW',NULL,NULL,NULL,'2023-01-17 05:00:13','2023-01-17 05:00:13'),(129,'Laura Padberg','amos77@example.com','$2y$10$4hQxgmEb.wKesq5ewxO43uEBTFAWa.WCZHOnEZnoyUKKy4omVs8P2',NULL,NULL,NULL,'2023-01-17 05:00:46','2023-01-17 05:00:46'),(130,'Floy Ruecker','cleve.reichert@example.com','$2y$10$vbhurUQcF2d81bI3NR69f.rr7/QMCUf/5zmR42noLdiTw1x79D2kq',NULL,NULL,NULL,'2023-01-17 05:04:32','2023-01-17 05:04:32'),(131,'Coby Hudson','pbernier@example.com','$2y$10$LFT/jUi7CtC31W5eBz2u.ez/ff1clRlYylrvDYUVyvHikOSa8lPQ.',NULL,NULL,NULL,'2023-01-17 05:05:29','2023-01-17 05:05:29'),(132,'Stephany Hane','satterfield.vicente@example.org','$2y$10$mDcSq56xfArc1s4MvtfIXO66vCBgjno5Gbb9MW/KBtF1cAfNlD73K',NULL,NULL,NULL,'2023-01-17 05:05:32','2023-01-17 05:05:32'),(133,'Shana Monahan','lrolfson@example.com','$2y$10$GqSy14K38vb.SJXOC3yc9ul.nEAymc5KwcaGJJpbyCpQQQxxDNtjC',NULL,NULL,NULL,'2023-01-17 05:05:51','2023-01-17 05:05:51'),(134,'Jeffrey Murazik','walter25@example.net','$2y$10$sMVFRw2zHKDVvYz8M4cLVOkZsMZpbv/yHMmT2rB1qGuRbM2h9d4pq',NULL,NULL,NULL,'2023-01-17 05:07:11','2023-01-17 05:07:11'),(135,'Prof. Kirstin Collier I','xkulas@example.net','$2y$10$VplPCaQLL0Ak0KJ9fDyfOOMfzS9rn9ABrx006XYHsZ3VzRiAYbzE.',NULL,NULL,NULL,'2023-01-17 05:07:47','2023-01-17 05:07:47'),(136,'Houston Kautzer','tyra.leannon@example.org','$2y$10$otl0JlXe7xNfkg3VxRrAMOM5zvDuo0yrRHtG5ytQtTUhiAs7sf.hK',NULL,NULL,NULL,'2023-01-17 05:07:56','2023-01-17 05:07:56'),(137,'Concepcion Stroman III','emmy21@example.com','$2y$10$a7ZicbGYCHCQCzCDieImZ.CbjLsbd.mkk7HppI97I4fYtwJzWuo.2',NULL,NULL,NULL,'2023-01-17 05:09:19','2023-01-17 05:09:19'),(138,'Ahmad Gusikowski','kunze.scarlett@example.org','$2y$10$Q4EqaO0nLdgbOHdYfYhOquqY9eNsGpFTrlXzHO33DKxFHMW4vBUbK',NULL,NULL,NULL,'2023-01-17 05:09:29','2023-01-17 05:09:29'),(139,'Kennedy Murray','crystel.gorczany@example.com','$2y$10$1v7RSseAc3W/IzlTbq6RPeHezUkOHYOm9aRZm95x2A2DXsAhasuya',NULL,NULL,NULL,'2023-01-17 05:11:33','2023-01-17 05:11:33'),(140,'Gaston McClure','heaney.alden@example.net','$2y$10$p/asxkBuqfdH68/4z/BQY.cKfpH5xQDrghmCcYOm.e2i1SV/M7/aG',NULL,NULL,NULL,'2023-01-17 05:12:15','2023-01-17 05:12:15'),(141,'Christa Bartell','nbechtelar@example.com','$2y$10$pcZ0xYZvP/3NAW2bN9u9ROhqBqNMZj3qPMCSM5WNMe1rYOQ9/HlYe',NULL,NULL,NULL,'2023-01-17 05:14:58','2023-01-17 05:14:58'),(142,'Fanny Bayer Jr.','llewellyn63@example.com','$2y$10$XPzwY6I8eT1QuT3wFLLgYeTj0o43vH0i.W3AECY8IBqWy6HbUvDf6',NULL,NULL,NULL,'2023-01-17 05:15:45','2023-01-17 05:15:45'),(143,'Angelita Parisian V','abbott.willis@example.net','$2y$10$F4hDX7AJnuMih2FtCoQGreBWv0xkPCRRSKot1j24peTdzcz1rHHG.',NULL,NULL,NULL,'2023-01-17 05:16:03','2023-01-17 05:16:03'),(144,'Arnold Spencer','jonathon.beier@example.net','$2y$10$BRU5rtiJklMkJkLmnYwIiOlJUx1UWDgLmSpxE96nwJVWLsCBbRLr.',NULL,NULL,NULL,'2023-01-17 05:17:33','2023-01-17 05:17:33'),(145,'Asa Stanton','jmckenzie@example.com','$2y$10$qd13XU8URDKlorwj7/eyyeT3Q7r1oo3v5q/qnqp2mrSYu7HfzKI6i',NULL,NULL,NULL,'2023-01-17 05:18:30','2023-01-17 05:18:30'),(146,'Kariane Macejkovic','dmraz@example.net','$2y$10$BCrNPsBjS8A5P42qk.81lu7dDwUujfCd8N1uBa0cN7uISvgbA7bpK',NULL,NULL,NULL,'2023-01-17 05:19:35','2023-01-17 05:19:35'),(147,'Leila Abbott DDS','reymundo08@example.org','$2y$10$oOF2OXHzoY7Xi4oLqif6T..M9Yj2o3NFvwNtsP8xxipKps1t1po0e',NULL,NULL,NULL,'2023-01-17 05:20:12','2023-01-17 05:20:12'),(148,'Arno Gusikowski','ophelia64@example.org','$2y$10$FWOu3X.3W4TX7CVcu84NMOK2d4xoN.1xxjFmHlF6xT7FDJbLMP0TW',NULL,NULL,NULL,'2023-01-17 05:20:32','2023-01-17 05:20:32'),(149,'Tess Russel','porter.doyle@example.com','$2y$10$GAf5x21hf8Xv3kBh2EkfxeFqmC0l8LFgg1FM/KeGciRJbM4jJNjFC',NULL,NULL,NULL,'2023-01-17 05:23:50','2023-01-17 05:23:50'),(150,'Prof. Randy Kuhic','tpurdy@example.net','$2y$10$rTeE4bgZll4HjsUFB7ClDuH7chA3McQfVT.FzB/qFL6icgOe1KCpO',NULL,NULL,NULL,'2023-01-17 05:23:54','2023-01-17 05:23:54'),(151,'Clement Mertz','kaycee02@example.net','$2y$10$LubAZYpmDnJyHa9FcB9cvelhaQyw4gCL.B6plSCwIWvF8OG4JtdRa',NULL,NULL,NULL,'2023-01-17 05:24:16','2023-01-17 05:24:16'),(152,'Ryder Lemke','myrna09@example.org','$2y$10$Q1Q/kc1OLLtKgz5Y.rvfBuWdt293CLI32bftaNT8a44zz5Dg0rRL6',NULL,NULL,NULL,'2023-01-17 05:26:06','2023-01-17 05:26:06'),(153,'Evan Smitham','igulgowski@example.com','$2y$10$dfxNy8hKJ/JOEQj2JYbX8uVyN8IrTTn.TrudZRh30AUHg3/5rNd3y',NULL,NULL,NULL,'2023-01-17 05:26:42','2023-01-17 05:26:42'),(154,'Solon Mann','chanelle84@example.org','$2y$10$pcWgXRmU12gVN4SXsatpaO.MxUJa4kYOtRwleC3r.Wi1NcChKOOdK',NULL,NULL,NULL,'2023-01-17 05:37:44','2023-01-17 05:37:44'),(155,'Audreanne Rempel','xbosco@example.net','$2y$10$VAQ7qBBjCU56hzeXViy7yeTyzzwupHtk3bYAw1xJQFSC7I9TQ5O0i',NULL,NULL,NULL,'2023-01-17 05:38:00','2023-01-17 05:38:00'),(156,'Katlynn Hammes','white.libby@example.net','$2y$10$Wc38zkx.wGa9E8rBls98Y.bh3lUcDo6DFXnpMq5nkGVyFJv/0IKhG',NULL,NULL,NULL,'2023-01-17 05:38:25','2023-01-17 05:38:25'),(157,'Lelah Mohr','shyann.johnston@example.org','$2y$10$jk/rT2axPpL8aA1pzqjkn.9IjrEPiZXSih//AcDF.Vc9Ejg4qQrGi',NULL,NULL,NULL,'2023-01-17 05:39:25','2023-01-17 05:39:25'),(158,'Lolita DuBuque','wlockman@example.com','$2y$10$Clvz9XJbAEf.GwYJAQq5TONwf3IISTv/4Ozh3FSpJ0uP5ADmiWfpO',NULL,NULL,NULL,'2023-01-17 05:46:21','2023-01-17 05:46:21'),(159,'Earlene Little','klittle@example.net','$2y$10$0xRhC7DcGMeJTdH5Adoh7.dnCn01MOtBuDIhNqpReIEzRyE8POelS',NULL,NULL,NULL,'2023-01-17 05:46:47','2023-01-17 05:46:47'),(166,'Ollie Smitham','kathryne22@example.net','$2y$10$/16VeSq7AksSiNc03FBLA.Q88FcPsTvwbW6I.ugfaKKMd6otlRhnS',NULL,NULL,NULL,'2023-01-17 06:02:19','2023-01-17 06:02:19'),(174,'Kolby Koss DDS','skylar.douglas@example.org','$2y$10$szG2et7.5slsw.mpUBa2fec8Iyx0YjdzjzYChyfKwXeDEC2FfwTMW',NULL,NULL,NULL,'2023-01-17 06:34:06','2023-01-17 06:34:06'),(175,'Prof. Elliott Welch','maudie26@example.net','$2y$10$XGrZSaV.WVQsTGZ5ur1KAOpczFvsS8dxV2RXGysjeQRpZDVLOugcq',NULL,NULL,NULL,'2023-01-17 06:34:21','2023-01-17 06:34:21'),(176,'Jonas Wilkinson','kacie22@example.com','$2y$10$kMPkFejrAl/GN3VyRn2zjODB2F7Dopgxe.poqi2G86W/V1uJAYore',NULL,NULL,NULL,'2023-01-17 06:34:56','2023-01-17 06:34:56'),(177,'Mr. Ewald Nikolaus V','phyllis38@example.com','$2y$10$tgHC3.TCsuhtcej7EVEoveinYgmU/pydOJQ6d2J.aI7O.AfLvzsnq',NULL,NULL,NULL,'2023-01-17 06:35:10','2023-01-17 06:35:10'),(178,'Tracy Dibbert','bartell.velva@example.org','$2y$10$ehV/ICWqbUVxLj/b/pEAYeoDnJXAzqWZrtlJZw/JeFBYhr981w9Di',NULL,NULL,NULL,'2023-01-17 06:35:56','2023-01-17 06:35:56'),(179,'Mr. Charles Steuber','greenfelder.luisa@example.net','$2y$10$B18OzNnqQWvG33NCO54PJ.9OnCgVLOp6vGNF7Ldc4hn75u7gbli3i',NULL,NULL,NULL,'2023-01-17 06:37:21','2023-01-17 06:37:21');
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

-- Dump completed on 2023-01-17  9:54:52


-- MySQL dump 10.13  Distrib 8.0.31, for Linux (x86_64)
--
-- Host: localhost    Database: checkList_cake
-- ------------------------------------------------------
-- Server version	8.0.31-0ubuntu0.20.04.2

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
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2019_12_14_000001_create_personal_access_tokens_table',1),(3,'2023_01_15_020133_cakes',2),(4,'2023_01_15_021252_cake_notification',3),(5,'2023_01_15_172003_create_audits_table',4),(6,'2023_01_15_221213_create_jobs_table',5),(7,'2023_01_15_224823_create_failed_jobs_table',6);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-17  9:54:52


-- MySQL dump 10.13  Distrib 8.0.31, for Linux (x86_64)
--
-- Host: localhost    Database: checkList_cake
-- ------------------------------------------------------
-- Server version	8.0.31-0ubuntu0.20.04.2

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
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-17  9:54:52


-- MySQL dump 10.13  Distrib 8.0.31, for Linux (x86_64)
--
-- Host: localhost    Database: checkList_cake
-- ------------------------------------------------------
-- Server version	8.0.31-0ubuntu0.20.04.2

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
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-17  9:54:52


-- MySQL dump 10.13  Distrib 8.0.31, for Linux (x86_64)
--
-- Host: localhost    Database: checkList_cake
-- ------------------------------------------------------
-- Server version	8.0.31-0ubuntu0.20.04.2

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
-- Table structure for table `cakes`
--

DROP TABLE IF EXISTS `cakes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cakes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Nome',
  `weight` int NOT NULL COMMENT 'Peso em gramas.',
  `price` int NOT NULL COMMENT 'Preço do bolo.',
  `quantity` int NOT NULL COMMENT 'Quantidade em estoque.',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cakes`
--

LOCK TABLES `cakes` WRITE;
/*!40000 ALTER TABLE `cakes` DISABLE KEYS */;
INSERT INTO `cakes` VALUES (26,'bolo_update_teste',3,1,5,'2023-01-16 22:00:00','2023-01-17 05:12:36'),(27,'Bolo sint',4125,157,84,'2023-01-16 22:00:00','2023-01-16 22:00:00'),(28,'Bolo nisi',5694,100,57,'2023-01-16 22:00:00','2023-01-16 22:00:00'),(29,'Bolo natus',3115,103,10,'2023-01-16 22:00:00','2023-01-16 22:00:00'),(30,'Bolo culpa',7541,166,39,'2023-01-16 22:00:00','2023-01-16 22:00:00'),(31,'Bolo dolorem',8519,176,32,'2023-01-16 22:00:00','2023-01-16 22:00:00'),(32,'Bolo et',6301,187,17,'2023-01-16 22:00:00','2023-01-16 22:00:00'),(33,'Bolo ut',9497,183,22,'2023-01-16 22:00:00','2023-01-16 22:00:00'),(34,'Bolo sint',7214,182,22,'2023-01-16 22:00:00','2023-01-16 22:00:00'),(35,'Bolo molestiae',1135,123,18,'2023-01-16 22:00:00','2023-01-16 22:00:00'),(36,'bolo_02_azul',20,1,10,'2023-01-17 00:48:39','2023-01-17 00:48:39'),(37,'bolo',20,1,10,'2023-01-17 02:19:07','2023-01-17 02:19:07'),(38,'bolo',20,1,10,'2023-01-17 02:19:17','2023-01-17 02:19:17'),(39,'bolo',20,1,10,'2023-01-17 02:20:54','2023-01-17 02:20:54'),(41,'bolo',20,1,10,'2023-01-17 02:22:37','2023-01-17 02:22:37'),(42,'bolo',20,1,10,'2023-01-17 02:23:03','2023-01-17 02:23:03'),(43,'bolo',20,1,10,'2023-01-17 02:23:34','2023-01-17 02:23:34'),(45,'bolo',20,1,10,'2023-01-17 02:28:57','2023-01-17 02:28:57'),(46,'bolo',20,1,10,'2023-01-17 02:30:16','2023-01-17 02:30:16'),(47,'bolo',20,1,10,'2023-01-17 02:30:33','2023-01-17 02:30:33'),(48,'bolo',20,1,10,'2023-01-17 02:32:25','2023-01-17 02:32:25'),(49,'bolo',20,1,10,'2023-01-17 02:33:02','2023-01-17 02:33:02'),(50,'bolo',20,1,10,'2023-01-17 02:34:17','2023-01-17 02:34:17'),(51,'bolo',20,1,10,'2023-01-17 02:37:48','2023-01-17 02:37:48'),(52,'bolo',20,1,10,'2023-01-17 02:39:07','2023-01-17 02:39:07'),(53,'bolo',20,1,10,'2023-01-17 02:40:40','2023-01-17 02:40:40'),(54,'bolo',20,1,10,'2023-01-17 02:41:17','2023-01-17 02:41:17'),(55,'bolo',20,1,10,'2023-01-17 02:53:22','2023-01-17 02:53:22'),(56,'bolo_02_azul',20,1,10,'2023-01-17 04:25:46','2023-01-17 04:25:46'),(57,'Bolo',78,1,20,'2023-01-17 04:26:41','2023-01-17 04:26:41'),(58,'Bolo',78,1,20,'2023-01-17 04:27:52','2023-01-17 04:27:52'),(59,'Bolo',78,1,20,'2023-01-17 04:28:04','2023-01-17 04:28:04'),(60,'Bolo',78,1,20,'2023-01-17 04:28:25','2023-01-17 04:28:25'),(61,'Bolo',78,1,20,'2023-01-17 04:28:35','2023-01-17 04:28:35'),(62,'Bolo',78,1,20,'2023-01-17 04:28:46','2023-01-17 04:28:46'),(63,'Bolo',78,1,20,'2023-01-17 04:28:57','2023-01-17 04:28:57'),(64,'Bolo',78,1,20,'2023-01-17 04:29:12','2023-01-17 04:29:12'),(65,'Bolo',78,1,20,'2023-01-17 04:29:49','2023-01-17 04:29:49'),(66,'Bolo',78,1,20,'2023-01-17 04:30:16','2023-01-17 04:30:16'),(67,'Bolo',78,1,20,'2023-01-17 04:30:59','2023-01-17 04:30:59'),(68,'Bolo',78,1,20,'2023-01-17 04:31:10','2023-01-17 04:31:10'),(69,'Bolo',78,1,20,'2023-01-17 04:31:30','2023-01-17 04:31:30'),(70,'Bolo',78,1,20,'2023-01-17 04:31:33','2023-01-17 04:31:33'),(71,'Bolo',78,1,20,'2023-01-17 04:32:06','2023-01-17 04:32:06'),(72,'Bolo',78,1,20,'2023-01-17 04:32:19','2023-01-17 04:32:19'),(73,'Bolo',78,1,20,'2023-01-17 04:33:23','2023-01-17 04:33:23'),(74,'Bolo',78,1,20,'2023-01-17 04:34:13','2023-01-17 04:34:13'),(75,'Bolo',78,1,20,'2023-01-17 04:38:27','2023-01-17 04:38:27'),(79,'Bolo',78,1,20,'2023-01-17 04:43:22','2023-01-17 04:43:22'),(80,'Bolo',78,1,20,'2023-01-17 04:43:42','2023-01-17 04:43:42'),(83,'Bolo',78,1,20,'2023-01-17 04:43:59','2023-01-17 04:43:59'),(84,'Bolo',78,1,20,'2023-01-17 04:44:40','2023-01-17 04:44:40'),(85,'Bolo',78,1,20,'2023-01-17 04:58:22','2023-01-17 04:58:22'),(86,'Bolo',78,1,20,'2023-01-17 05:00:00','2023-01-17 05:00:00'),(87,'Bolo',78,1,20,'2023-01-17 05:00:13','2023-01-17 05:00:13'),(88,'Bolo',78,1,20,'2023-01-17 05:00:46','2023-01-17 05:00:46'),(89,'Bolo',78,1,20,'2023-01-17 05:04:33','2023-01-17 05:04:33'),(90,'Boloconsequuntur',1704,122,17,'2023-01-17 05:11:33','2023-01-17 05:11:33'),(91,'Bolomaiores',2969,172,45,'2023-01-17 05:12:15','2023-01-17 05:12:15'),(92,'Boloconsequuntur',6998,174,55,'2023-01-17 05:14:58','2023-01-17 05:14:58'),(93,'Bolonon',2586,176,70,'2023-01-17 05:15:45','2023-01-17 05:15:45'),(94,'Boloaut',6811,172,41,'2023-01-17 05:16:03','2023-01-17 05:16:03'),(95,'Boloqui',7735,164,78,'2023-01-17 05:17:33','2023-01-17 05:17:33'),(96,'Bolomagni',3311,200,58,'2023-01-17 05:18:30','2023-01-17 05:18:30'),(97,'Bolodeserunt',1702,145,93,'2023-01-17 05:37:44','2023-01-17 05:37:44'),(98,'Boloqui',8745,193,32,'2023-01-17 05:38:00','2023-01-17 05:38:00'),(99,'Boloaut',3716,167,86,'2023-01-17 05:38:25','2023-01-17 05:38:25'),(100,'Boloquia',8928,124,16,'2023-01-17 05:39:25','2023-01-17 05:39:25'),(101,'Bolosit',7842,191,60,'2023-01-17 05:46:21','2023-01-17 05:46:21'),(102,'Boloreiciendis',4718,149,15,'2023-01-17 05:46:47','2023-01-17 05:46:47'),(109,'Boloab',3747,184,79,'2023-01-17 06:02:19','2023-01-17 06:02:19'),(112,'Bolovoluptas',6260,100,68,'2023-01-17 06:34:21','2023-01-17 06:34:21'),(113,'Boloquia',1279,113,55,'2023-01-17 06:35:10','2023-01-17 06:35:10'),(114,'Bolounde',4545,106,98,'2023-01-17 06:35:56','2023-01-17 06:35:56'),(115,'bolo_02_azul',20,1,10,'2023-01-17 06:36:34','2023-01-17 06:36:34'),(116,'Bolotempore',6588,181,90,'2023-01-17 06:37:21','2023-01-17 06:37:21');
/*!40000 ALTER TABLE `cakes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-17  9:54:52


-- MySQL dump 10.13  Distrib 8.0.31, for Linux (x86_64)
--
-- Host: localhost    Database: checkList_cake
-- ------------------------------------------------------
-- Server version	8.0.31-0ubuntu0.20.04.2

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
-- Table structure for table `cake_notification`
--

DROP TABLE IF EXISTS `cake_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cake_notification` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cake_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cake_notification_cake_id_foreign` (`cake_id`),
  CONSTRAINT `cake_notification_cake_id_foreign` FOREIGN KEY (`cake_id`) REFERENCES `cakes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cake_notification`
--

LOCK TABLES `cake_notification` WRITE;
/*!40000 ALTER TABLE `cake_notification` DISABLE KEYS */;
INSERT INTO `cake_notification` VALUES (45,'bosco.eloise@mitchell.net',33,'2023-01-16 22:12:25','2023-01-16 22:12:25'),(46,'delores86@shanahan.com',34,'2023-01-16 22:12:25','2023-01-16 22:12:25'),(47,'amina.hoppe@kassulke.com',28,'2023-01-16 22:12:25','2023-01-16 22:12:25'),(48,'uoberbrunner@metz.biz',26,'2023-01-16 22:12:25','2023-01-16 22:12:25'),(49,'gibson.lamar@yahoo.com',31,'2023-01-16 22:12:25','2023-01-16 22:12:25'),(50,'jeramie40@waelchi.org',26,'2023-01-16 22:12:25','2023-01-16 22:12:25'),(51,'xsenger@reichel.net',31,'2023-01-16 22:12:25','2023-01-16 22:12:25'),(52,'quincy76@hansen.org',28,'2023-01-16 22:12:25','2023-01-16 22:12:25'),(53,'gkovacek@gmail.com',31,'2023-01-16 22:12:25','2023-01-16 22:12:25'),(54,'tkuhn@jenkins.com',27,'2023-01-16 22:12:25','2023-01-16 22:12:25'),(55,'abbott.laverne@yahoo.com',27,'2023-01-16 22:12:25','2023-01-16 22:12:25'),(56,'bparisian@yahoo.com',35,'2023-01-16 22:12:25','2023-01-16 22:12:25'),(57,'feil.chandler@hotmail.com',34,'2023-01-16 22:12:25','2023-01-16 22:12:25'),(58,'awisozk@hartmann.com',29,'2023-01-16 22:12:25','2023-01-16 22:12:25'),(59,'pharris@gmail.com',33,'2023-01-16 22:12:25','2023-01-16 22:12:25'),(60,'krajcik.donnie@yahoo.com',33,'2023-01-16 22:12:25','2023-01-16 22:12:25'),(61,'njones@yahoo.com',32,'2023-01-16 22:12:25','2023-01-16 22:12:25'),(62,'jones.kyler@yahoo.com',34,'2023-01-16 22:12:25','2023-01-16 22:12:25'),(63,'katheryn.brown@gmail.com',26,'2023-01-16 22:12:25','2023-01-16 22:12:25'),(64,'sporer.ashton@ohara.com',31,'2023-01-16 22:12:25','2023-01-16 22:12:25'),(65,'fabio.almeida@gmail.co',36,'2023-01-17 04:44:58','2023-01-17 04:44:58'),(66,'wlockman@example.com',101,'2023-01-17 05:46:22','2023-01-17 05:46:22'),(67,'klittle@example.net',102,'2023-01-17 05:46:49','2023-01-17 05:46:49'),(68,'fabio.almeida@gmail.co',88,'2023-01-17 05:51:56','2023-01-17 05:51:56');
/*!40000 ALTER TABLE `cake_notification` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-17  9:54:52




-- MySQL dump 10.13  Distrib 8.0.31, for Linux (x86_64)
--
-- Host: localhost    Database: checkList_cake
-- ------------------------------------------------------
-- Server version	8.0.31-0ubuntu0.20.04.2

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
-- Table structure for table `audits`
--

DROP TABLE IF EXISTS `audits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audits` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `event` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auditable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auditable_id` bigint unsigned NOT NULL,
  `old_values` text COLLATE utf8mb4_unicode_ci,
  `new_values` text COLLATE utf8mb4_unicode_ci,
  `url` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(1023) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audits_auditable_type_auditable_id_index` (`auditable_type`,`auditable_id`),
  KEY `audits_user_id_user_type_index` (`user_id`,`user_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audits`
--

LOCK TABLES `audits` WRITE;
/*!40000 ALTER TABLE `audits` DISABLE KEYS */;
/*!40000 ALTER TABLE `audits` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-17  9:54:52
