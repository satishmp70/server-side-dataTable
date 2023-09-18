-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: orders
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Beverages','Soft drinks, coffees, teas, beers, and ales',NULL,NULL),(2,'Condiments','Sweet and savory sauces, relishes, spreads, and seasonings',NULL,NULL),(3,'Confections','Desserts, candies, and sweet breads',NULL,NULL),(4,'Dairy Products','Cheeses',NULL,NULL),(5,'Grains/Cereals','Breads, crackers, pasta, and cereal',NULL,NULL),(6,'Meat/Poultry','Prepared meats',NULL,NULL),(7,'Produce','Dried fruit and bean curd',NULL,NULL),(8,'Seafood','Seaweed and fish',NULL,NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Alfreds Futterkiste','Maria Anders','Obere Str. 57','Berlin','12209','Germany',NULL,NULL),(2,'Ana Trujillo Emparedados y helados','Ana Trujillo','Avda. de la Constitución 2222','México D.F.','5021','Mexico',NULL,NULL),(3,'Antonio Moreno Taquería','Antonio Moreno','Mataderos 2312','México D.F.','5023','Mexico',NULL,NULL),(4,'Around the Horn','Thomas Hardy','120 Hanover Sq.','London','WA1 1DP','UK',NULL,NULL),(5,'Berglunds snabbköp','Christina Berglund','Berguvsvägen 8','Luleå','S-958 22','Sweden',NULL,NULL),(6,'Blauer See Delikatessen','Hanna Moos','Forsterstr. 57','Mannheim','68306','Germany',NULL,NULL),(7,'Blondel père et fils','Frédérique Citeaux','24, place Kléber','Strasbourg','67000','France',NULL,NULL),(8,'Bólido Comidas preparadas','Martín Sommer','C/ Araquil, 67','Madrid','28023','Spain',NULL,NULL),(9,'Bon app\'\'','Laurence Lebihans','12, rue des Bouchers','Marseille','13008','France',NULL,NULL),(10,'Bottom-Dollar Marketse','Elizabeth Lincoln','23 Tsawassen Blvd.','Tsawassen','T2F 8M4','Canada',NULL,NULL),(11,'B\'\'s Beverages','Victoria Ashworth','Fauntleroy Circus','London','EC2 5NT','UK',NULL,NULL),(12,'Cactus Comidas para llevar','Patricio Simpson','Cerrito 333','Buenos Aires','1010','Argentina',NULL,NULL),(13,'Centro comercial Moctezuma','Francisco Chang','Sierras de Granada 9993','México D.F.','5022','Mexico',NULL,NULL),(14,'Chop-suey Chinese','Yang Wang','Hauptstr. 29','Bern','3012','Switzerland',NULL,NULL),(15,'Comércio Mineiro','Pedro Afonso','Av. dos Lusíadas, 23','São Paulo','05432-043','Brazil',NULL,NULL),(16,'Consolidated Holdings','Elizabeth Brown','Berkeley Gardens 12 Brewery','London','WX1 6LT','UK',NULL,NULL),(17,'Drachenblut Delikatessend','Sven Ottlieb','Walserweg 21','Aachen','52066','Germany',NULL,NULL),(18,'Du monde entier','Janine Labrune','67, rue des Cinquante Otages','Nantes','44000','France',NULL,NULL),(19,'Eastern Connection','Ann Devon','35 King George','London','WX3 6FW','UK',NULL,NULL),(20,'Ernst Handel','Roland Mendel','Kirchgasse 6','Graz','8010','Austria',NULL,NULL),(21,'Familia Arquibaldo','Aria Cruz','Rua Orós, 92','São Paulo','05442-030','Brazil',NULL,NULL),(22,'FISSA Fabrica Inter. Salchichas S.A.','Diego Roel','C/ Moralzarzal, 86','Madrid','28034','Spain',NULL,NULL),(23,'Folies gourmandes','Martine Rancé','184, chaussée de Tournai','Lille','59000','France',NULL,NULL),(24,'Folk och fä HB','Maria Larsson','Åkergatan 24','Bräcke','S-844 67','Sweden',NULL,NULL),(25,'Frankenversand','Peter Franken','Berliner Platz 43','München','80805','Germany',NULL,NULL),(26,'France restauration','Carine Schmitt','54, rue Royale','Nantes','44000','France',NULL,NULL),(27,'Franchi S.p.A.','Paolo Accorti','Via Monte Bianco 34','Torino','10100','Italy',NULL,NULL),(28,'Furia Bacalhau e Frutos do Mar','Lino Rodriguez','Jardim das rosas n. 32','Lisboa','1675','Portugal',NULL,NULL),(29,'Galería del gastrónomo','Eduardo Saavedra','Rambla de Cataluña, 23','Barcelona','8022','Spain',NULL,NULL),(30,'Godos Cocina Típica','José Pedro Freyre','C/ Romero, 33','Sevilla','41101','Spain',NULL,NULL),(31,'Gourmet Lanchonetes','André Fonseca','Av. Brasil, 442','Campinas','04876-786','Brazil',NULL,NULL),(32,'Great Lakes Food Market','Howard Snyder','2732 Baker Blvd.','Eugene','97403','USA',NULL,NULL),(33,'GROSELLA-Restaurante','Manuel Pereira','5ª Ave. Los Palos Grandes','Caracas','1081','Venezuela',NULL,NULL),(34,'Hanari Carnes','Mario Pontes','Rua do Paço, 67','Rio de Janeiro','05454-876','Brazil',NULL,NULL),(35,'HILARIÓN-Abastos','Carlos Hernández','Carrera 22 con Ave. Carlos Soublette #8-35','San Cristóbal','5022','Venezuela',NULL,NULL),(36,'Hungry Coyote Import Store','Yoshi Latimer','City Center Plaza 516 Main St.','Elgin','97827','USA',NULL,NULL),(37,'Hungry Owl All-Night Grocers','Patricia McKenna','8 Johnstown Road','Cork','','Ireland',NULL,NULL),(38,'Island Trading','Helen Bennett','Garden House Crowther Way','Cowes','PO31 7PJ','UK',NULL,NULL),(39,'Königlich Essen','Philip Cramer','Maubelstr. 90','Brandenburg','14776','Germany',NULL,NULL),(40,'La corne d\'\'abondance','Daniel Tonini','67, avenue de l\'\'Europe','Versailles','78000','France',NULL,NULL),(41,'La maison d\'\'Asie','Annette Roulet','1 rue Alsace-Lorraine','Toulouse','31000','France',NULL,NULL),(42,'Laughing Bacchus Wine Cellars','Yoshi Tannamuri','1900 Oak St.','Vancouver','V3F 2K1','Canada',NULL,NULL),(43,'Lazy K Kountry Store','John Steel','12 Orchestra Terrace','Walla Walla','99362','USA',NULL,NULL),(44,'Lehmanns Marktstand','Renate Messner','Magazinweg 7','Frankfurt a.M.','60528','Germany',NULL,NULL),(45,'Let\'\'s Stop N Shop','Jaime Yorres','87 Polk St. Suite 5','San Francisco','94117','USA',NULL,NULL),(46,'LILA-Supermercado','Carlos González','Carrera 52 con Ave. Bolívar #65-98 Llano Largo','Barquisimeto','3508','Venezuela',NULL,NULL),(47,'LINO-Delicateses','Felipe Izquierdo','Ave. 5 de Mayo Porlamar','I. de Margarita','4980','Venezuela',NULL,NULL),(48,'Lonesome Pine Restaurant','Fran Wilson','89 Chiaroscuro Rd.','Portland','97219','USA',NULL,NULL),(49,'Magazzini Alimentari Riuniti','Giovanni Rovelli','Via Ludovico il Moro 22','Bergamo','24100','Italy',NULL,NULL),(50,'Maison Dewey','Catherine Dewey','Rue Joseph-Bens 532','Bruxelles','B-1180','Belgium',NULL,NULL),(51,'Mère Paillarde','Jean Fresnière','43 rue St. Laurent','Montréal','H1J 1C3','Canada',NULL,NULL),(52,'Morgenstern Gesundkost','Alexander Feuer','Heerstr. 22','Leipzig','4179','Germany',NULL,NULL),(53,'North/South','Simon Crowther','South House 300 Queensbridge','London','SW7 1RZ','UK',NULL,NULL),(54,'Océano Atlántico Ltda.','Yvonne Moncada','Ing. Gustavo Moncada 8585 Piso 20-A','Buenos Aires','1010','Argentina',NULL,NULL),(55,'Old World Delicatessen','Rene Phillips','2743 Bering St.','Anchorage','99508','USA',NULL,NULL),(56,'Ottilies Käseladen','Henriette Pfalzheim','Mehrheimerstr. 369','Köln','50739','Germany',NULL,NULL),(57,'Paris spécialités','Marie Bertrand','265, boulevard Charonne','Paris','75012','France',NULL,NULL),(58,'Pericles Comidas clásicas','Guillermo Fernández','Calle Dr. Jorge Cash 321','México D.F.','5033','Mexico',NULL,NULL),(59,'Piccolo und mehr','Georg Pipps','Geislweg 14','Salzburg','5020','Austria',NULL,NULL),(60,'Princesa Isabel Vinhoss','Isabel de Castro','Estrada da saúde n. 58','Lisboa','1756','Portugal',NULL,NULL),(61,'Que Delícia','Bernardo Batista','Rua da Panificadora, 12','Rio de Janeiro','02389-673','Brazil',NULL,NULL),(62,'Queen Cozinha','Lúcia Carvalho','Alameda dos Canàrios, 891','São Paulo','05487-020','Brazil',NULL,NULL),(63,'QUICK-Stop','Horst Kloss','Taucherstraße 10','Cunewalde','1307','Germany',NULL,NULL),(64,'Rancho grande','Sergio Gutiérrez','Av. del Libertador 900','Buenos Aires','1010','Argentina',NULL,NULL),(65,'Rattlesnake Canyon Grocery','Paula Wilson','2817 Milton Dr.','Albuquerque','87110','USA',NULL,NULL),(66,'Reggiani Caseifici','Maurizio Moroni','Strada Provinciale 124','Reggio Emilia','42100','Italy',NULL,NULL),(67,'Ricardo Adocicados','Janete Limeira','Av. Copacabana, 267','Rio de Janeiro','02389-890','Brazil',NULL,NULL),(68,'Richter Supermarkt','Michael Holz','Grenzacherweg 237','Genève','1203','Switzerland',NULL,NULL),(69,'Romero y tomillo','Alejandra Camino','Gran Vía, 1','Madrid','28001','Spain',NULL,NULL),(70,'Santé Gourmet','Jonas Bergulfsen','Erling Skakkes gate 78','Stavern','4110','Norway',NULL,NULL),(71,'Save-a-lot Markets','Jose Pavarotti','187 Suffolk Ln.','Boise','83720','USA',NULL,NULL),(72,'Seven Seas Imports','Hari Kumar','90 Wadhurst Rd.','London','OX15 4NB','UK',NULL,NULL),(73,'Simons bistro','Jytte Petersen','Vinbæltet 34','København','1734','Denmark',NULL,NULL),(74,'Spécialités du monde','Dominique Perrier','25, rue Lauriston','Paris','75016','France',NULL,NULL),(75,'Split Rail Beer & Ale','Art Braunschweiger','P.O. Box 555','Lander','82520','USA',NULL,NULL),(76,'Suprêmes délices','Pascale Cartrain','Boulevard Tirou, 255','Charleroi','B-6000','Belgium',NULL,NULL),(77,'The Big Cheese','Liz Nixon','89 Jefferson Way Suite 2','Portland','97201','USA',NULL,NULL),(78,'The Cracker Box','Liu Wong','55 Grizzly Peak Rd.','Butte','59801','USA',NULL,NULL),(79,'Toms Spezialitäten','Karin Josephs','Luisenstr. 48','Münster','44087','Germany',NULL,NULL),(80,'Tortuga Restaurante','Miguel Angel Paolino','Avda. Azteca 123','México D.F.','5033','Mexico',NULL,NULL),(81,'Tradição Hipermercados','Anabela Domingues','Av. Inês de Castro, 414','São Paulo','05634-030','Brazil',NULL,NULL),(82,'Trail\'\'s Head Gourmet Provisioners','Helvetius Nagy','722 DaVinci Blvd.','Kirkland','98034','USA',NULL,NULL),(83,'Vaffeljernet','Palle Ibsen','Smagsløget 45','Århus','8200','Denmark',NULL,NULL),(84,'Victuailles en stock','Mary Saveley','2, rue du Commerce','Lyon','69004','France',NULL,NULL),(85,'Vins et alcools Chevalier','Paul Henriot','59 rue de l\'\'Abbaye','Reims','51100','France',NULL,NULL),(86,'Die Wandernde Kuh','Rita Müller','Adenauerallee 900','Stuttgart','70563','Germany',NULL,NULL),(87,'Wartian Herkku','Pirkko Koskitalo','Torikatu 38','Oulu','90110','Finland',NULL,NULL),(88,'Wellington Importadora','Paula Parente','Rua do Mercado, 12','Resende','08737-363','Brazil',NULL,NULL),(89,'White Clover Markets','Karl Jablonski','305 - 14th Ave. S. Suite 3B','Seattle','98128','USA',NULL,NULL),(90,'Wilman Kala','Matti Karttunen','Keskuskatu 45','Helsinki','21240','Finland',NULL,NULL),(91,'Wolski','Zbyszek','ul. Filtrowa 68','Walla','01-012','Poland',NULL,NULL);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `last_name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth_date` datetime NOT NULL,
  `photo` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Davolio','Nancy','1968-12-08 00:00:00','EmpID1.pic','Education includes a BA in psychology from Colorado State University. She also completed (The Art of the Cold Call). Nancy is a member of \'Toastmasters International\'.',NULL,NULL),(2,'Fuller','Andrew','1952-02-19 00:00:00','EmpID2.pic','Andrew received his BTS commercial and a Ph.D. in international marketing from the University of Dallas. He is fluent in French and Italian and reads German. He joined the company as a sales representative, was promoted to sales manager and was then named vice president of sales. Andrew is a member of the Sales Management Roundtable, the Seattle Chamber of Commerce, and the Pacific Rim Importers Association.',NULL,NULL),(3,'Leverling','Janet','1963-08-30 00:00:00','EmpID3.pic','Janet has a BS degree in chemistry from Boston College). She has also completed a certificate program in food retailing management. Janet was hired as a sales associate and was promoted to sales representative.',NULL,NULL),(4,'Peacock','Margaret','1958-09-19 00:00:00','EmpID4.pic','Margaret holds a BA in English literature from Concordia College and an MA from the American Institute of Culinary Arts. She was temporarily assigned to the London office before returning to her permanent post in Seattle.',NULL,NULL),(5,'Buchanan','Steven','1955-03-04 00:00:00','EmpID5.pic','Steven Buchanan graduated from St. Andrews University, Scotland, with a BSC degree. Upon joining the company as a sales representative, he spent 6 months in an orientation program at the Seattle office and then returned to his permanent post in London, where he was promoted to sales manager. Mr. Buchanan has completed the courses \'Successful Telemarketing\' and \'International Sales Management\'. He is fluent in French.',NULL,NULL),(6,'Suyama','Michael','1963-07-02 00:00:00','EmpID6.pic','Michael is a graduate of Sussex University (MA, economics) and the University of California at Los Angeles (MBA, marketing). He has also taken the courses \'Multi-Cultural Selling\' and \'Time Management for the Sales Professional\'. He is fluent in Japanese and can read and write French, Portuguese, and Spanish.',NULL,NULL),(7,'King','Robert','1960-05-29 00:00:00','EmpID7.pic','Robert King served in the Peace Corps and traveled extensively before completing his degree in English at the University of Michigan and then joining the company. After completing a course entitled \'Selling in Europe\', he was transferred to the London office.',NULL,NULL),(8,'Callahan','Laura','1958-01-09 00:00:00','EmpID8.pic','Laura received a BA in psychology from the University of Washington. She has also completed a course in business French. She reads and writes French.',NULL,NULL),(9,'Dodsworth','Anne','1969-07-02 00:00:00','EmpID9.pic','Anne has a BA degree in English from St. Lawrence College. She is fluent in French and German.',NULL,NULL),(10,'West','Adam','1928-09-19 00:00:00','EmpID10.pic','An old chum.',NULL,NULL);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2014_10_12_100000_create_password_resets_table',1),(4,'2019_08_19_000000_create_failed_jobs_table',1),(5,'2019_12_14_000001_create_personal_access_tokens_table',1),(6,'2023_09_17_060059_create_categories_table',1),(7,'2023_09_17_060111_create_customers_table',1),(8,'2023_09_17_060126_create_employees_table',1),(9,'2023_09_17_061046_create_shippers_table',2),(10,'2023_09_17_062138_create_suppliers_table',3),(12,'2023_09_17_060205_create_orders_table',4);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_details` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=519 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
INSERT INTO `order_details` VALUES (1,1,11,12,NULL,NULL),(2,2,42,10,NULL,NULL),(3,3,72,5,NULL,NULL),(4,4,14,9,NULL,NULL),(5,5,51,40,NULL,NULL),(6,6,41,10,NULL,NULL),(7,7,51,35,NULL,NULL),(8,8,65,15,NULL,NULL),(9,9,22,6,NULL,NULL),(10,10,57,15,NULL,NULL),(11,11,65,20,NULL,NULL),(12,12,20,40,NULL,NULL),(13,13,33,25,NULL,NULL),(14,14,60,40,NULL,NULL),(15,15,31,20,NULL,NULL),(16,16,39,42,NULL,NULL),(17,17,49,40,NULL,NULL),(18,18,24,15,NULL,NULL),(19,19,55,21,NULL,NULL),(20,20,74,21,NULL,NULL),(21,21,2,20,NULL,NULL),(22,22,16,35,NULL,NULL),(23,23,36,25,NULL,NULL),(24,24,59,30,NULL,NULL),(25,25,53,15,NULL,NULL),(26,26,77,12,NULL,NULL),(27,27,27,25,NULL,NULL),(28,28,39,6,NULL,NULL),(29,29,77,15,NULL,NULL),(30,30,2,50,NULL,NULL),(31,31,5,65,NULL,NULL),(32,32,32,6,NULL,NULL),(33,33,21,10,NULL,NULL),(34,34,37,1,NULL,NULL),(35,35,41,16,NULL,NULL),(36,36,57,50,NULL,NULL),(37,37,62,15,NULL,NULL),(38,38,70,21,NULL,NULL),(39,39,21,20,NULL,NULL),(40,40,35,20,NULL,NULL),(41,41,5,12,NULL,NULL),(42,42,7,15,NULL,NULL),(43,43,56,2,NULL,NULL),(44,44,16,60,NULL,NULL),(45,45,24,28,NULL,NULL),(46,46,30,60,NULL,NULL),(47,47,74,36,NULL,NULL),(48,48,2,35,NULL,NULL),(49,49,41,25,NULL,NULL),(50,50,17,30,NULL,NULL),(51,51,70,20,NULL,NULL),(52,52,12,12,NULL,NULL),(53,53,40,50,NULL,NULL),(54,54,59,70,NULL,NULL),(55,55,76,15,NULL,NULL),(56,56,29,10,NULL,NULL),(57,57,72,4,NULL,NULL),(58,58,33,60,NULL,NULL),(59,59,72,20,NULL,NULL),(60,60,36,30,NULL,NULL),(61,61,43,25,NULL,NULL),(62,62,33,24,NULL,NULL),(63,63,20,6,NULL,NULL),(64,64,31,40,NULL,NULL),(65,65,72,24,NULL,NULL),(66,66,10,24,NULL,NULL),(67,67,31,15,NULL,NULL),(68,68,33,20,NULL,NULL),(69,69,40,60,NULL,NULL),(70,70,76,33,NULL,NULL),(71,71,71,20,NULL,NULL),(72,72,72,7,NULL,NULL),(73,73,24,12,NULL,NULL),(74,74,59,6,NULL,NULL),(75,75,10,15,NULL,NULL),(76,76,13,10,NULL,NULL),(77,77,28,20,NULL,NULL),(78,78,62,12,NULL,NULL),(79,79,44,16,NULL,NULL),(80,80,59,15,NULL,NULL),(81,81,63,8,NULL,NULL),(82,82,73,25,NULL,NULL),(83,83,17,15,NULL,NULL),(84,84,24,12,NULL,NULL),(85,85,55,20,NULL,NULL),(86,86,75,30,NULL,NULL),(87,87,19,1,NULL,NULL),(88,88,24,6,NULL,NULL),(89,89,35,4,NULL,NULL),(90,90,30,6,NULL,NULL),(91,91,57,2,NULL,NULL),(92,92,15,20,NULL,NULL),(93,93,19,18,NULL,NULL),(94,94,60,35,NULL,NULL),(95,95,72,3,NULL,NULL),(96,96,27,15,NULL,NULL),(97,97,44,21,NULL,NULL),(98,98,60,20,NULL,NULL),(99,99,67,5,NULL,NULL),(100,100,1,45,NULL,NULL),(101,101,40,40,NULL,NULL),(102,102,53,36,NULL,NULL),(103,103,35,100,NULL,NULL),(104,104,62,40,NULL,NULL),(105,105,16,40,NULL,NULL),(106,106,34,20,NULL,NULL),(107,107,46,15,NULL,NULL),(108,108,54,10,NULL,NULL),(109,109,68,3,NULL,NULL),(110,110,3,30,NULL,NULL),(111,111,64,9,NULL,NULL),(112,112,5,20,NULL,NULL),(113,113,29,15,NULL,NULL),(114,114,49,15,NULL,NULL),(115,115,77,10,NULL,NULL),(116,116,13,20,NULL,NULL),(117,117,44,24,NULL,NULL),(118,118,51,2,NULL,NULL),(119,119,20,20,NULL,NULL),(120,120,18,12,NULL,NULL),(121,121,24,10,NULL,NULL),(122,122,63,5,NULL,NULL),(123,123,75,6,NULL,NULL),(124,124,1,18,NULL,NULL),(125,125,17,15,NULL,NULL),(126,126,43,15,NULL,NULL),(127,127,60,21,NULL,NULL),(128,128,75,6,NULL,NULL),(129,129,56,4,NULL,NULL),(130,130,11,12,NULL,NULL),(131,131,16,30,NULL,NULL),(132,132,69,15,NULL,NULL),(133,133,39,60,NULL,NULL),(134,134,72,20,NULL,NULL),(135,135,2,40,NULL,NULL),(136,136,36,40,NULL,NULL),(137,137,59,30,NULL,NULL),(138,138,62,15,NULL,NULL),(139,139,19,15,NULL,NULL),(140,140,70,20,NULL,NULL),(141,141,66,30,NULL,NULL),(142,142,68,20,NULL,NULL),(143,143,40,10,NULL,NULL),(144,144,56,20,NULL,NULL),(145,145,17,40,NULL,NULL),(146,146,28,28,NULL,NULL),(147,147,43,12,NULL,NULL),(148,148,40,40,NULL,NULL),(149,149,65,30,NULL,NULL),(150,150,68,15,NULL,NULL),(151,151,49,30,NULL,NULL),(152,152,59,10,NULL,NULL),(153,153,71,2,NULL,NULL),(154,154,18,25,NULL,NULL),(155,155,29,25,NULL,NULL),(156,156,39,30,NULL,NULL),(157,157,30,10,NULL,NULL),(158,158,53,10,NULL,NULL),(159,159,54,5,NULL,NULL),(160,160,62,10,NULL,NULL),(161,161,68,3,NULL,NULL),(162,162,69,1,NULL,NULL),(163,163,70,5,NULL,NULL),(164,164,4,20,NULL,NULL),(165,165,6,30,NULL,NULL),(166,166,42,2,NULL,NULL),(167,167,43,20,NULL,NULL),(168,168,71,3,NULL,NULL),(169,169,16,10,NULL,NULL),(170,170,62,5,NULL,NULL),(171,171,42,6,NULL,NULL),(172,172,69,7,NULL,NULL),(173,173,28,4,NULL,NULL),(174,174,43,24,NULL,NULL),(175,175,53,20,NULL,NULL),(176,176,75,10,NULL,NULL),(177,177,36,12,NULL,NULL),(178,178,32,40,NULL,NULL),(179,179,58,30,NULL,NULL),(180,180,62,25,NULL,NULL),(181,181,34,14,NULL,NULL),(182,182,70,30,NULL,NULL),(183,183,41,10,NULL,NULL),(184,184,62,70,NULL,NULL),(185,185,1,20,NULL,NULL),(186,186,41,20,NULL,NULL),(187,187,76,6,NULL,NULL),(188,188,17,8,NULL,NULL),(189,189,28,14,NULL,NULL),(190,190,76,30,NULL,NULL),(191,191,71,30,NULL,NULL),(192,192,35,10,NULL,NULL),(193,193,52,20,NULL,NULL),(194,194,15,5,NULL,NULL),(195,195,25,4,NULL,NULL),(196,196,39,4,NULL,NULL),(197,197,16,21,NULL,NULL),(198,198,35,70,NULL,NULL),(199,199,46,30,NULL,NULL),(200,200,59,40,NULL,NULL),(201,201,63,80,NULL,NULL),(202,202,6,6,NULL,NULL),(203,203,13,12,NULL,NULL),(204,204,14,9,NULL,NULL),(205,205,31,4,NULL,NULL),(206,206,72,40,NULL,NULL),(207,207,4,24,NULL,NULL),(208,208,57,16,NULL,NULL),(209,209,75,50,NULL,NULL),(210,210,2,25,NULL,NULL),(211,211,11,50,NULL,NULL),(212,212,30,35,NULL,NULL),(213,213,58,30,NULL,NULL),(214,214,59,9,NULL,NULL),(215,215,65,40,NULL,NULL),(216,216,68,10,NULL,NULL),(217,217,19,10,NULL,NULL),(218,218,30,8,NULL,NULL),(219,219,38,20,NULL,NULL),(220,220,56,12,NULL,NULL),(221,221,26,50,NULL,NULL),(222,222,72,25,NULL,NULL),(223,223,54,15,NULL,NULL),(224,224,18,40,NULL,NULL),(225,225,42,10,NULL,NULL),(226,226,47,16,NULL,NULL),(227,227,14,10,NULL,NULL),(228,228,21,10,NULL,NULL),(229,229,71,40,NULL,NULL),(230,230,52,8,NULL,NULL),(231,231,68,10,NULL,NULL),(232,232,2,7,NULL,NULL),(233,233,31,25,NULL,NULL),(234,234,32,6,NULL,NULL),(235,235,51,48,NULL,NULL),(236,236,4,18,NULL,NULL),(237,237,23,40,NULL,NULL),(238,238,26,24,NULL,NULL),(239,239,36,20,NULL,NULL),(240,240,37,28,NULL,NULL),(241,241,72,25,NULL,NULL),(242,242,17,20,NULL,NULL),(243,243,30,15,NULL,NULL),(244,244,4,10,NULL,NULL),(245,245,17,70,NULL,NULL),(246,246,62,28,NULL,NULL),(247,247,18,20,NULL,NULL),(248,248,41,12,NULL,NULL),(249,249,43,40,NULL,NULL),(250,250,33,8,NULL,NULL),(251,251,59,9,NULL,NULL),(252,252,2,24,NULL,NULL),(253,253,31,56,NULL,NULL),(254,254,36,40,NULL,NULL),(255,255,55,40,NULL,NULL),(256,256,64,50,NULL,NULL),(257,257,68,4,NULL,NULL),(258,258,76,15,NULL,NULL),(259,259,4,35,NULL,NULL),(260,260,8,70,NULL,NULL),(261,261,8,70,NULL,NULL),(262,262,19,80,NULL,NULL),(263,263,42,9,NULL,NULL),(264,264,17,36,NULL,NULL),(265,265,56,20,NULL,NULL),(266,266,25,10,NULL,NULL),(267,267,39,50,NULL,NULL),(268,268,40,4,NULL,NULL),(269,269,75,6,NULL,NULL),(270,270,1,15,NULL,NULL),(271,271,23,25,NULL,NULL),(272,272,54,24,NULL,NULL),(273,273,50,15,NULL,NULL),(274,274,69,18,NULL,NULL),(275,275,38,20,NULL,NULL),(276,276,41,13,NULL,NULL),(277,277,44,77,NULL,NULL),(278,278,65,10,NULL,NULL),(279,279,24,10,NULL,NULL),(280,280,54,20,NULL,NULL),(281,281,11,12,NULL,NULL),(282,282,38,50,NULL,NULL),(283,283,1,12,NULL,NULL),(284,284,29,4,NULL,NULL),(285,285,24,25,NULL,NULL),(286,286,57,25,NULL,NULL),(287,287,31,30,NULL,NULL),(288,288,55,12,NULL,NULL),(289,289,69,20,NULL,NULL),(290,290,10,30,NULL,NULL),(291,291,26,16,NULL,NULL),(292,292,60,8,NULL,NULL),(293,293,24,10,NULL,NULL),(294,294,34,10,NULL,NULL),(295,295,36,20,NULL,NULL),(296,296,16,56,NULL,NULL),(297,297,31,70,NULL,NULL),(298,298,60,80,NULL,NULL),(299,299,28,30,NULL,NULL),(300,300,29,35,NULL,NULL),(301,301,38,10,NULL,NULL),(302,302,49,35,NULL,NULL),(303,303,54,28,NULL,NULL),(304,304,39,54,NULL,NULL),(305,305,60,55,NULL,NULL),(306,306,25,50,NULL,NULL),(307,307,51,20,NULL,NULL),(308,308,54,24,NULL,NULL),(309,309,31,20,NULL,NULL),(310,310,75,12,NULL,NULL),(311,311,76,12,NULL,NULL),(312,312,69,30,NULL,NULL),(313,313,71,5,NULL,NULL),(314,314,11,24,NULL,NULL),(315,315,65,5,NULL,NULL),(316,316,77,5,NULL,NULL),(317,317,34,36,NULL,NULL),(318,318,54,18,NULL,NULL),(319,319,65,15,NULL,NULL),(320,320,77,7,NULL,NULL),(321,321,21,5,NULL,NULL),(322,322,28,13,NULL,NULL),(323,323,57,25,NULL,NULL),(324,324,64,35,NULL,NULL),(325,325,29,20,NULL,NULL),(326,326,56,18,NULL,NULL),(327,327,1,15,NULL,NULL),(328,328,64,30,NULL,NULL),(329,329,74,20,NULL,NULL),(330,330,36,6,NULL,NULL),(331,331,20,12,NULL,NULL),(332,332,38,40,NULL,NULL),(333,333,60,70,NULL,NULL),(334,334,72,42,NULL,NULL),(335,335,58,80,NULL,NULL),(336,336,71,50,NULL,NULL),(337,337,31,30,NULL,NULL),(338,338,58,15,NULL,NULL),(339,339,14,15,NULL,NULL),(340,340,54,10,NULL,NULL),(341,341,31,42,NULL,NULL),(342,342,28,20,NULL,NULL),(343,343,39,20,NULL,NULL),(344,344,71,6,NULL,NULL),(345,345,41,8,NULL,NULL),(346,346,63,16,NULL,NULL),(347,347,65,20,NULL,NULL),(348,348,30,18,NULL,NULL),(349,349,53,20,NULL,NULL),(350,350,60,6,NULL,NULL),(351,351,70,30,NULL,NULL),(352,352,74,14,NULL,NULL),(353,353,5,32,NULL,NULL),(354,354,18,9,NULL,NULL),(355,355,29,14,NULL,NULL),(356,356,33,60,NULL,NULL),(357,357,74,50,NULL,NULL),(358,358,13,20,NULL,NULL),(359,359,50,15,NULL,NULL),(360,360,56,20,NULL,NULL),(361,361,20,28,NULL,NULL),(362,362,60,15,NULL,NULL),(363,363,7,10,NULL,NULL),(364,364,60,20,NULL,NULL),(365,365,68,8,NULL,NULL),(366,366,24,15,NULL,NULL),(367,367,34,10,NULL,NULL),(368,368,24,15,NULL,NULL),(369,369,28,6,NULL,NULL),(370,370,59,12,NULL,NULL),(371,371,71,15,NULL,NULL),(372,372,45,15,NULL,NULL),(373,373,52,20,NULL,NULL),(374,374,53,40,NULL,NULL),(375,375,10,16,NULL,NULL),(376,376,55,15,NULL,NULL),(377,377,62,20,NULL,NULL),(378,378,70,30,NULL,NULL),(379,379,31,60,NULL,NULL),(380,380,35,40,NULL,NULL),(381,381,46,45,NULL,NULL),(382,382,72,24,NULL,NULL),(383,383,13,18,NULL,NULL),(384,384,69,50,NULL,NULL),(385,385,2,25,NULL,NULL),(386,386,14,42,NULL,NULL),(387,387,25,7,NULL,NULL),(388,388,26,70,NULL,NULL),(389,389,31,32,NULL,NULL),(390,390,13,10,NULL,NULL),(391,391,62,10,NULL,NULL),(392,392,46,28,NULL,NULL),(393,393,53,70,NULL,NULL),(394,394,69,8,NULL,NULL),(395,395,23,40,NULL,NULL),(396,396,71,60,NULL,NULL),(397,397,72,21,NULL,NULL),(398,398,21,10,NULL,NULL),(399,399,51,18,NULL,NULL),(400,400,35,30,NULL,NULL),(401,401,55,120,NULL,NULL),(402,402,68,60,NULL,NULL),(403,403,71,30,NULL,NULL),(404,404,76,35,NULL,NULL),(405,405,77,14,NULL,NULL),(406,406,29,21,NULL,NULL),(407,407,35,35,NULL,NULL),(408,408,49,30,NULL,NULL),(409,409,30,18,NULL,NULL),(410,410,56,70,NULL,NULL),(411,411,65,20,NULL,NULL),(412,412,71,60,NULL,NULL),(413,413,23,60,NULL,NULL),(414,414,63,65,NULL,NULL),(415,415,16,21,NULL,NULL),(416,416,48,70,NULL,NULL),(417,417,26,30,NULL,NULL),(418,418,42,40,NULL,NULL),(419,419,49,30,NULL,NULL),(420,420,3,50,NULL,NULL),(421,421,1,10,NULL,NULL),(422,422,21,30,NULL,NULL),(423,423,28,42,NULL,NULL),(424,424,36,5,NULL,NULL),(425,425,40,2,NULL,NULL),(426,426,11,30,NULL,NULL),(427,427,69,15,NULL,NULL),(428,428,71,15,NULL,NULL),(429,429,37,10,NULL,NULL),(430,430,54,6,NULL,NULL),(431,431,62,35,NULL,NULL),(432,432,14,12,NULL,NULL),(433,433,21,12,NULL,NULL),(434,434,33,49,NULL,NULL),(435,435,59,16,NULL,NULL),(436,436,41,25,NULL,NULL),(437,437,44,40,NULL,NULL),(438,438,59,9,NULL,NULL),(439,439,14,20,NULL,NULL),(440,440,1,24,NULL,NULL),(441,441,62,40,NULL,NULL),(442,442,76,14,NULL,NULL),(443,443,19,18,NULL,NULL),(444,444,33,50,NULL,NULL),(445,445,17,2,NULL,NULL),(446,446,33,20,NULL,NULL),(447,447,19,20,NULL,NULL),(448,448,53,10,NULL,NULL),(449,449,57,20,NULL,NULL),(450,450,38,50,NULL,NULL),(451,451,46,2,NULL,NULL),(452,452,68,36,NULL,NULL),(453,453,77,35,NULL,NULL),(454,454,2,60,NULL,NULL),(455,455,47,55,NULL,NULL),(456,456,61,16,NULL,NULL),(457,457,74,15,NULL,NULL),(458,458,60,60,NULL,NULL),(459,459,69,20,NULL,NULL),(460,460,9,20,NULL,NULL),(461,461,13,2,NULL,NULL),(462,462,70,8,NULL,NULL),(463,463,73,20,NULL,NULL),(464,464,19,4,NULL,NULL),(465,465,26,30,NULL,NULL),(466,466,53,15,NULL,NULL),(467,467,77,10,NULL,NULL),(468,468,26,2,NULL,NULL),(469,469,31,14,NULL,NULL),(470,470,59,20,NULL,NULL),(471,471,35,60,NULL,NULL),(472,472,38,49,NULL,NULL),(473,473,68,30,NULL,NULL),(474,474,55,10,NULL,NULL),(475,475,76,20,NULL,NULL),(476,476,56,5,NULL,NULL),(477,477,64,7,NULL,NULL),(478,478,14,35,NULL,NULL),(479,479,46,20,NULL,NULL),(480,480,50,40,NULL,NULL),(481,481,63,35,NULL,NULL),(482,482,17,45,NULL,NULL),(483,483,21,50,NULL,NULL),(484,484,56,30,NULL,NULL),(485,485,59,70,NULL,NULL),(486,486,17,50,NULL,NULL),(487,487,40,50,NULL,NULL),(488,488,47,30,NULL,NULL),(489,489,26,10,NULL,NULL),(490,490,54,40,NULL,NULL),(491,491,56,28,NULL,NULL),(492,492,11,6,NULL,NULL),(493,493,76,18,NULL,NULL),(494,494,2,10,NULL,NULL),(495,495,22,12,NULL,NULL),(496,496,72,10,NULL,NULL),(497,497,46,5,NULL,NULL),(498,498,56,40,NULL,NULL),(499,499,64,30,NULL,NULL),(500,500,75,24,NULL,NULL),(501,501,53,15,NULL,NULL),(502,502,19,15,NULL,NULL),(503,503,34,20,NULL,NULL),(504,504,57,15,NULL,NULL),(505,505,12,15,NULL,NULL),(506,506,16,16,NULL,NULL),(507,507,64,6,NULL,NULL),(508,508,74,30,NULL,NULL),(509,509,2,45,NULL,NULL),(510,510,16,49,NULL,NULL),(511,511,29,24,NULL,NULL),(512,512,61,90,NULL,NULL),(513,513,27,50,NULL,NULL),(514,514,11,30,NULL,NULL),(515,515,54,80,NULL,NULL),(516,516,66,60,NULL,NULL),(517,517,11,6,NULL,NULL),(518,518,28,12,NULL,NULL);
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint(20) unsigned NOT NULL,
  `employee_id` bigint(20) unsigned NOT NULL,
  `supplier_id` bigint(20) unsigned NOT NULL,
  `order_date` datetime NOT NULL,
  `shipper_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_customer_id_foreign` (`customer_id`),
  KEY `orders_supplier_id_foreign` (`supplier_id`),
  KEY `orders_employee_id_foreign` (`employee_id`),
  KEY `orders_shipper_id_foreign` (`shipper_id`),
  CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  CONSTRAINT `orders_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE,
  CONSTRAINT `orders_shipper_id_foreign` FOREIGN KEY (`shipper_id`) REFERENCES `shippers` (`id`) ON DELETE CASCADE,
  CONSTRAINT `orders_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,90,5,5,'1996-07-04 00:00:00',3,NULL,NULL),(2,81,6,6,'1996-07-05 00:00:00',1,NULL,NULL),(3,34,4,4,'1996-07-08 00:00:00',2,NULL,NULL),(4,84,3,3,'1996-07-08 00:00:00',1,NULL,NULL),(5,76,4,4,'1996-07-09 00:00:00',2,NULL,NULL),(6,34,3,3,'1996-07-10 00:00:00',2,NULL,NULL),(7,14,5,5,'1996-07-11 00:00:00',2,NULL,NULL),(8,68,9,9,'1996-07-12 00:00:00',3,NULL,NULL),(9,88,3,3,'1996-07-15 00:00:00',2,NULL,NULL),(10,35,4,4,'1996-07-16 00:00:00',3,NULL,NULL),(11,20,1,1,'1996-07-17 00:00:00',1,NULL,NULL),(12,13,4,4,'1996-07-18 00:00:00',3,NULL,NULL),(13,55,4,4,'1996-07-19 00:00:00',1,NULL,NULL),(14,61,4,4,'1996-07-19 00:00:00',2,NULL,NULL),(15,65,8,8,'1996-07-22 00:00:00',3,NULL,NULL),(16,20,9,9,'1996-07-23 00:00:00',3,NULL,NULL),(17,24,6,6,'1996-07-24 00:00:00',3,NULL,NULL),(18,7,2,6,'1996-07-25 00:00:00',1,NULL,NULL),(19,87,3,3,'1996-07-26 00:00:00',3,NULL,NULL),(20,25,4,4,'1996-07-29 00:00:00',1,NULL,NULL),(21,33,8,8,'1996-07-30 00:00:00',3,NULL,NULL),(22,89,5,5,'1996-07-31 00:00:00',1,NULL,NULL),(23,87,1,1,'1996-08-01 00:00:00',1,NULL,NULL),(24,75,6,6,'1996-08-01 00:00:00',2,NULL,NULL),(25,65,6,6,'1996-08-02 00:00:00',2,NULL,NULL),(26,63,3,3,'1996-08-05 00:00:00',3,NULL,NULL),(27,85,6,6,'1996-08-06 00:00:00',1,NULL,NULL),(28,49,1,1,'1996-08-07 00:00:00',1,NULL,NULL),(29,80,8,8,'1996-08-08 00:00:00',3,NULL,NULL),(30,52,2,2,'1996-08-09 00:00:00',3,NULL,NULL),(31,5,8,6,'1996-08-12 00:00:00',2,NULL,NULL),(32,44,8,8,'1996-08-13 00:00:00',2,NULL,NULL),(33,5,2,6,'1996-08-14 00:00:00',1,NULL,NULL),(34,69,4,4,'1996-08-14 00:00:00',1,NULL,NULL),(35,69,4,4,'1996-08-15 00:00:00',1,NULL,NULL),(36,46,3,3,'1996-08-16 00:00:00',3,NULL,NULL),(37,44,4,4,'1996-08-19 00:00:00',1,NULL,NULL),(38,63,1,1,'1996-08-20 00:00:00',2,NULL,NULL),(39,63,8,8,'1996-08-21 00:00:00',3,NULL,NULL),(40,67,8,8,'1996-08-22 00:00:00',3,NULL,NULL),(41,66,4,4,'1996-08-23 00:00:00',1,NULL,NULL),(42,11,7,7,'1996-08-26 00:00:00',3,NULL,NULL),(43,15,8,8,'1996-08-27 00:00:00',1,NULL,NULL),(44,61,6,6,'1996-08-27 00:00:00',2,NULL,NULL),(45,81,1,1,'1996-08-28 00:00:00',2,NULL,NULL),(46,80,1,1,'1996-08-29 00:00:00',3,NULL,NULL),(47,65,4,4,'1996-08-30 00:00:00',2,NULL,NULL),(48,85,2,2,'1996-09-02 00:00:00',2,NULL,NULL),(49,46,6,6,'1996-09-03 00:00:00',1,NULL,NULL),(50,7,5,6,'1996-09-04 00:00:00',2,NULL,NULL),(51,37,6,6,'1996-09-05 00:00:00',2,NULL,NULL),(52,67,4,4,'1996-09-06 00:00:00',2,NULL,NULL),(53,49,2,2,'1996-09-09 00:00:00',2,NULL,NULL),(54,86,8,8,'1996-09-09 00:00:00',2,NULL,NULL),(55,76,4,4,'1996-09-10 00:00:00',2,NULL,NULL),(56,30,7,7,'1996-09-11 00:00:00',2,NULL,NULL),(57,80,1,1,'1996-09-12 00:00:00',2,NULL,NULL),(58,55,8,8,'1996-09-13 00:00:00',3,NULL,NULL),(59,69,1,1,'1996-09-16 00:00:00',3,NULL,NULL),(60,48,2,2,'1996-09-17 00:00:00',2,NULL,NULL),(61,2,7,6,'1996-09-18 00:00:00',3,NULL,NULL),(62,37,3,3,'1996-09-19 00:00:00',1,NULL,NULL),(63,77,8,8,'1996-09-20 00:00:00',2,NULL,NULL),(64,18,1,1,'1996-09-20 00:00:00',3,NULL,NULL),(65,86,2,2,'1996-09-23 00:00:00',2,NULL,NULL),(66,63,2,2,'1996-09-24 00:00:00',2,NULL,NULL),(67,65,1,1,'1996-09-25 00:00:00',2,NULL,NULL),(68,38,4,4,'1996-09-26 00:00:00',2,NULL,NULL),(69,65,1,1,'1996-09-27 00:00:00',3,NULL,NULL),(70,48,6,6,'1996-09-30 00:00:00',1,NULL,NULL),(71,38,8,8,'1996-10-01 00:00:00',2,NULL,NULL),(72,80,7,7,'1996-10-02 00:00:00',3,NULL,NULL),(73,87,5,5,'1996-10-03 00:00:00',3,NULL,NULL),(74,38,3,3,'1996-10-03 00:00:00',2,NULL,NULL),(75,58,7,7,'1996-10-04 00:00:00',3,NULL,NULL),(76,39,4,4,'1996-10-07 00:00:00',1,NULL,NULL),(77,71,9,9,'1996-10-08 00:00:00',1,NULL,NULL),(78,39,1,1,'1996-10-09 00:00:00',3,NULL,NULL),(79,8,4,6,'1996-10-10 00:00:00',2,NULL,NULL),(80,24,2,2,'1996-10-11 00:00:00',1,NULL,NULL),(81,28,4,4,'1996-10-14 00:00:00',3,NULL,NULL),(82,75,4,4,'1996-10-15 00:00:00',2,NULL,NULL),(83,46,3,3,'1996-10-16 00:00:00',1,NULL,NULL),(84,9,9,4,'1996-10-16 00:00:00',1,NULL,NULL),(85,51,3,3,'1996-10-17 00:00:00',2,NULL,NULL),(86,87,5,5,'1996-10-18 00:00:00',3,NULL,NULL),(87,84,8,8,'1996-10-21 00:00:00',2,NULL,NULL),(88,37,7,7,'1996-10-22 00:00:00',2,NULL,NULL),(89,60,7,7,'1996-10-23 00:00:00',2,NULL,NULL),(90,25,4,4,'1996-10-24 00:00:00',3,NULL,NULL),(91,55,4,4,'1996-10-25 00:00:00',3,NULL,NULL),(92,51,2,2,'1996-10-28 00:00:00',2,NULL,NULL),(93,9,1,4,'1996-10-29 00:00:00',3,NULL,NULL),(94,73,7,7,'1996-10-29 00:00:00',3,NULL,NULL),(95,25,4,4,'1996-10-30 00:00:00',2,NULL,NULL),(96,44,4,4,'1996-10-31 00:00:00',1,NULL,NULL),(97,89,4,4,'1996-11-01 00:00:00',2,NULL,NULL),(98,63,2,2,'1996-11-04 00:00:00',2,NULL,NULL),(99,65,3,3,'1996-11-05 00:00:00',3,NULL,NULL),(100,21,4,4,'1996-11-06 00:00:00',3,NULL,NULL),(101,86,4,4,'1996-11-07 00:00:00',2,NULL,NULL),(102,75,7,7,'1996-11-08 00:00:00',1,NULL,NULL),(103,41,6,6,'1996-11-11 00:00:00',2,NULL,NULL),(104,20,1,1,'1996-11-11 00:00:00',1,NULL,NULL),(105,28,3,3,'1996-11-12 00:00:00',3,NULL,NULL),(106,59,7,7,'1996-11-13 00:00:00',3,NULL,NULL),(107,58,8,8,'1996-11-14 00:00:00',3,NULL,NULL),(108,4,6,5,'1996-11-15 00:00:00',1,NULL,NULL),(109,86,6,6,'1996-11-18 00:00:00',2,NULL,NULL),(110,46,1,1,'1996-11-19 00:00:00',3,NULL,NULL),(111,41,5,5,'1996-11-20 00:00:00',1,NULL,NULL),(112,72,5,5,'1996-11-21 00:00:00',3,NULL,NULL),(113,7,4,6,'1996-11-22 00:00:00',3,NULL,NULL),(114,63,1,1,'1996-11-22 00:00:00',2,NULL,NULL),(115,9,3,6,'1996-11-25 00:00:00',1,NULL,NULL),(116,17,4,4,'1996-11-26 00:00:00',3,NULL,NULL),(117,19,1,1,'1996-11-26 00:00:00',1,NULL,NULL),(118,3,3,6,'1996-11-27 00:00:00',2,NULL,NULL),(119,29,8,8,'1996-11-28 00:00:00',2,NULL,NULL),(120,83,7,7,'1996-11-28 00:00:00',3,NULL,NULL),(121,20,2,2,'1996-11-29 00:00:00',2,NULL,NULL),(122,75,8,8,'1996-12-02 00:00:00',2,NULL,NULL),(123,14,6,6,'1996-12-03 00:00:00',2,NULL,NULL),(124,41,1,1,'1996-12-03 00:00:00',1,NULL,NULL),(125,62,5,5,'1996-12-04 00:00:00',2,NULL,NULL),(126,37,4,4,'1996-12-05 00:00:00',3,NULL,NULL),(127,91,1,1,'1996-12-05 00:00:00',3,NULL,NULL),(128,36,3,3,'1996-12-06 00:00:00',2,NULL,NULL),(129,51,1,1,'1996-12-09 00:00:00',2,NULL,NULL),(130,72,1,1,'1996-12-09 00:00:00',3,NULL,NULL),(131,24,5,5,'1996-12-10 00:00:00',3,NULL,NULL),(132,61,2,2,'1996-12-11 00:00:00',1,NULL,NULL),(133,37,8,8,'1996-12-12 00:00:00',3,NULL,NULL),(134,46,3,3,'1996-12-12 00:00:00',3,NULL,NULL),(135,20,4,4,'1996-12-13 00:00:00',1,NULL,NULL),(136,4,8,6,'1996-12-16 00:00:00',3,NULL,NULL),(137,5,3,6,'1996-12-16 00:00:00',3,NULL,NULL),(138,75,1,1,'1996-12-17 00:00:00',2,NULL,NULL),(139,21,9,9,'1996-12-18 00:00:00',3,NULL,NULL),(140,70,1,1,'1996-12-18 00:00:00',2,NULL,NULL),(141,72,2,2,'1996-12-19 00:00:00',1,NULL,NULL),(142,10,4,4,'1996-12-20 00:00:00',2,NULL,NULL),(143,20,6,6,'1996-12-23 00:00:00',1,NULL,NULL),(144,17,3,3,'1996-12-23 00:00:00',3,NULL,NULL),(145,59,2,2,'1996-12-24 00:00:00',3,NULL,NULL),(146,71,1,1,'1996-12-25 00:00:00',3,NULL,NULL),(147,36,1,1,'1996-12-25 00:00:00',3,NULL,NULL),(148,35,6,6,'1996-12-26 00:00:00',1,NULL,NULL),(149,25,1,1,'1996-12-27 00:00:00',3,NULL,NULL),(150,60,5,5,'1996-12-27 00:00:00',1,NULL,NULL),(151,71,2,2,'1996-12-30 00:00:00',3,NULL,NULL),(152,83,8,8,'1996-12-31 00:00:00',3,NULL,NULL),(153,19,1,1,'1997-01-01 00:00:00',3,NULL,NULL),(154,65,1,1,'1997-01-01 00:00:00',1,NULL,NULL),(155,20,8,8,'1997-01-02 00:00:00',2,NULL,NULL),(156,20,4,4,'1997-01-03 00:00:00',3,NULL,NULL),(157,49,2,2,'1997-01-03 00:00:00',1,NULL,NULL),(158,47,1,1,'1997-01-06 00:00:00',1,NULL,NULL),(159,62,7,7,'1997-01-07 00:00:00',1,NULL,NULL),(160,56,2,2,'1997-01-07 00:00:00',2,NULL,NULL),(161,23,8,8,'1997-01-08 00:00:00',1,NULL,NULL),(162,54,3,3,'1997-01-09 00:00:00',1,NULL,NULL),(163,10,3,3,'1997-01-10 00:00:00',3,NULL,NULL),(164,10,9,9,'1997-01-10 00:00:00',3,NULL,NULL),(165,87,8,8,'1997-01-13 00:00:00',2,NULL,NULL),(166,41,3,3,'1997-01-14 00:00:00',2,NULL,NULL),(167,21,2,2,'1997-01-14 00:00:00',3,NULL,NULL),(168,36,3,3,'1997-01-15 00:00:00',1,NULL,NULL),(169,87,8,8,'1997-01-16 00:00:00',3,NULL,NULL),(170,73,4,4,'1997-01-16 00:00:00',3,NULL,NULL),(171,63,4,4,'1997-01-17 00:00:00',1,NULL,NULL),(172,68,4,4,'1997-01-20 00:00:00',2,NULL,NULL),(173,88,3,3,'1997-01-21 00:00:00',1,NULL,NULL),(174,61,8,8,'1997-01-21 00:00:00',1,NULL,NULL),(175,27,2,2,'1997-01-22 00:00:00',1,NULL,NULL),(176,31,6,6,'1997-01-23 00:00:00',3,NULL,NULL),(177,51,7,7,'1997-01-23 00:00:00',2,NULL,NULL),(178,41,6,6,'1997-01-24 00:00:00',2,NULL,NULL),(179,29,4,4,'1997-01-27 00:00:00',1,NULL,NULL),(180,59,4,4,'1997-01-27 00:00:00',2,NULL,NULL),(181,66,7,7,'1997-01-28 00:00:00',1,NULL,NULL),(182,37,3,3,'1997-01-29 00:00:00',2,NULL,NULL),(183,20,4,4,'1997-01-30 00:00:00',1,NULL,NULL),(184,10,4,4,'1997-01-30 00:00:00',2,NULL,NULL),(185,75,3,3,'1997-01-31 00:00:00',2,NULL,NULL),(186,60,3,3,'1997-02-03 00:00:00',3,NULL,NULL),(187,24,3,3,'1997-02-03 00:00:00',2,NULL,NULL),(188,16,8,8,'1997-02-04 00:00:00',2,NULL,NULL),(189,7,3,2,'1997-02-05 00:00:00',2,NULL,NULL),(190,87,8,8,'1997-02-05 00:00:00',1,NULL,NULL),(191,79,3,3,'1997-02-06 00:00:00',2,NULL,NULL),(192,51,6,6,'1997-02-07 00:00:00',3,NULL,NULL),(193,71,4,4,'1997-02-10 00:00:00',2,NULL,NULL),(194,55,3,3,'1997-02-10 00:00:00',2,NULL,NULL),(195,20,3,3,'1997-02-11 00:00:00',2,NULL,NULL),(196,66,8,8,'1997-02-12 00:00:00',1,NULL,NULL);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `supplier_id` bigint(20) unsigned NOT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Chais','1',1.00,10,18,NULL,NULL),(2,'Chang','1',1.00,24,19,NULL,NULL),(3,'Aniseed Syrup','1',2.00,12,10,NULL,NULL),(4,'Chef Anton\'s Cajun Seasoning','2',2.00,48,22,NULL,NULL),(5,'Chef Anton\'s Gumbo Mix','2',2.00,36,21,NULL,NULL),(6,'Grandma\'s Boysenberry Spread','3',2.00,12,25,NULL,NULL),(7,'Uncle Bob\'s Organic Dried Pears','3',7.00,12,30,NULL,NULL),(8,'Northwoods Cranberry Sauce','3',2.00,12,40,NULL,NULL),(9,'Mishi Kobe Niku','4',6.00,18,97,NULL,NULL),(10,'Ikura','4',8.00,12,31,NULL,NULL),(11,'Queso Cabrales','5',4.00,1,21,NULL,NULL),(12,'Queso Manchego La Pastora','5',4.00,10,38,NULL,NULL),(13,'Konbu','6',8.00,2,6,NULL,NULL),(14,'Tofu','6',7.00,40,23,NULL,NULL),(15,'Genen Shouyu','6',2.00,24,16,NULL,NULL),(16,'Pavlova','7',3.00,32,17,NULL,NULL),(17,'Alice Mutton','7',6.00,20,39,NULL,NULL),(18,'Carnarvon Tigers','7',8.00,16,63,NULL,NULL),(19,'Teatime Chocolate Biscuits','8',3.00,10,9,NULL,NULL),(20,'Sir Rodney\'s Marmalade','8',3.00,30,81,NULL,NULL),(21,'Sir Rodney\'s Scones','8',3.00,24,10,NULL,NULL),(22,'Gustaf\'s Knäckebröd','9',5.00,24,21,NULL,NULL),(23,'Tunnbröd','9',5.00,12,9,NULL,NULL),(24,'Guaraná Fantástica','10',1.00,12,5,NULL,NULL),(25,'NuNuCa Nuß-Nougat-Creme','11',3.00,20,14,NULL,NULL),(26,'Gumbär Gummibärchen','11',3.00,100,31,NULL,NULL),(27,'Schoggi Schokolade','11',3.00,100,44,NULL,NULL),(28,'Rössle Sauerkraut','12',7.00,25,46,NULL,NULL),(29,'Thüringer Rostbratwurst','12',6.00,50,124,NULL,NULL),(30,'Nord-Ost Matjeshering','13',8.00,10,26,NULL,NULL),(31,'Gorgonzola Telino','14',4.00,12,13,NULL,NULL),(32,'Mascarpone Fabioli','14',4.00,24,32,NULL,NULL),(33,'Geitost','15',4.00,500,3,NULL,NULL),(34,'Sasquatch Ale','16',1.00,24,14,NULL,NULL),(35,'Steeleye Stout','16',1.00,24,18,NULL,NULL),(36,'Inlagd Sill','17',8.00,24,19,NULL,NULL),(37,'Gravad lax','17',8.00,12,26,NULL,NULL),(38,'Côte de Blaye','18',1.00,12,264,NULL,NULL),(39,'Chartreuse verte','18',1.00,3,18,NULL,NULL),(40,'Boston Crab Meat','19',8.00,24,18,NULL,NULL),(41,'Jack\'s New England Clam Chowder','19',8.00,12,10,NULL,NULL),(42,'Singaporean Hokkien Fried Mee','20',5.00,32,14,NULL,NULL),(43,'Ipoh Coffee','20',1.00,16,46,NULL,NULL),(44,'Gula Malacca','20',2.00,20,19,NULL,NULL),(45,'Røgede sild','21',8.00,1,10,NULL,NULL),(46,'Spegesild','21',8.00,4,12,NULL,NULL),(47,'Zaanse koeken','22',3.00,10,10,NULL,NULL),(48,'Chocolade','22',3.00,10,13,NULL,NULL),(49,'Maxilaku','23',3.00,24,20,NULL,NULL),(50,'Valkoinen suklaa','23',3.00,12,16,NULL,NULL),(51,'Manjimup Dried Apples','24',7.00,50,53,NULL,NULL),(52,'Filo Mix','24',5.00,16,7,NULL,NULL),(53,'Perth Pasties','24',6.00,48,33,NULL,NULL),(54,'Tourtière','25',6.00,16,7,NULL,NULL),(55,'Pâté chinois','25',6.00,24,24,NULL,NULL),(56,'Gnocchi di nonna Alice','26',5.00,24,38,NULL,NULL),(57,'Ravioli Angelo','26',5.00,24,20,NULL,NULL),(58,'Escargots de Bourgogne','27',8.00,24,13,NULL,NULL),(59,'Raclette Courdavault','28',4.00,5,55,NULL,NULL),(60,'Camembert Pierrot','28',4.00,15,34,NULL,NULL),(61,'Sirop d\'érable','29',2.00,24,29,NULL,NULL),(62,'Tarte au sucre','29',3.00,48,49,NULL,NULL),(63,'Vegie-spread','7',2.00,15,44,NULL,NULL),(64,'Wimmers gute Semmelknödel','12',5.00,20,33,NULL,NULL),(65,'Louisiana Fiery Hot Pepper Sauce','2',2.00,32,21,NULL,NULL),(66,'Louisiana Hot Spiced Okra','2',2.00,24,17,NULL,NULL),(67,'Laughing Lumberjack Lager','16',1.00,24,14,NULL,NULL),(68,'Scottish Longbreads','8',3.00,10,13,NULL,NULL),(69,'Gudbrandsdalsost','15',4.00,10,36,NULL,NULL),(70,'Outback Lager','7',1.00,24,15,NULL,NULL),(71,'Fløtemysost','15',4.00,10,22,NULL,NULL),(72,'Mozzarella di Giovanni','14',4.00,24,35,NULL,NULL),(73,'Röd Kaviar','17',8.00,24,15,NULL,NULL),(74,'Longlife Tofu','4',7.00,5,10,NULL,NULL),(75,'Rhönbräu Klosterbier','12',1.00,24,8,NULL,NULL),(76,'Lakkalikööri','23',1.00,500,18,NULL,NULL),(77,'Original Frankfurter grüne Soße','12',2.00,12,13,NULL,NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shippers`
--

DROP TABLE IF EXISTS `shippers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shippers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `shipper_name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shippers`
--

LOCK TABLES `shippers` WRITE;
/*!40000 ALTER TABLE `shippers` DISABLE KEYS */;
INSERT INTO `shippers` VALUES (1,'Speedy Express','(503) 555-9831',NULL,NULL),(2,'United Package','(503) 555-3199',NULL,NULL),(3,'Federal Shipping','(503) 555-9931',NULL,NULL);
/*!40000 ALTER TABLE `shippers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suppliers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `supplier_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (1,'Exotic Liquid','Charlotte Cooper','49 Gilbert St.','Londona','EC1 4SD','UK','(171) 555-2222',NULL,NULL),(2,'New Orleans Cajun Delights','Shelley Burke','P.O. Box 78934','New Orleans','70117','USA','(100) 555-4822',NULL,NULL),(3,'Grandma Kelly\'s Homestead','Regina Murphy','707 Oxford Rd.','Ann Arbor','48104','USA','(313) 555-5735',NULL,NULL),(4,'Tokyo Traders','Yoshi Nagase','9-8 Sekimai Musashino-shi','Tokyo','100','Japan','(03) 3555-5011',NULL,NULL),(5,'Cooperativa de Quesos \'Las Cabras\'','Antonio del Valle Saavedra','Calle del Rosal 4','Oviedo','33007','Spain','(98) 598 76 54',NULL,NULL),(6,'Mayumi\'s','Mayumi Ohno','92 Setsuko Chuo-ku','Osaka','545','Japan','(06) 431-7877',NULL,NULL),(7,'Pavlova, Ltd.','Ian Devling','74 Rose St. Moonie Ponds','Melbourne','3058','Australia','(03) 444-2343',NULL,NULL),(8,'Specialty Biscuits, Ltd.','Peter Wilson','29 King\'s Way','Manchester','M14 GSD','UK','(161) 555-4448',NULL,NULL),(9,'PB Knäckebröd AB','Lars Peterson','Kaloadagatan 13','Göteborg','S-345 67','Sweden','031-987 65 43',NULL,NULL),(10,'Refrescos Americanas LTDA','Carlos Diaz','Av. das Americanas 12.890','São Paulo','5442','Brazil','(11) 555 4640',NULL,NULL),(11,'Heli Süßwaren GmbH & Co. KG','Petra Winkler','Tiergartenstraße 5','Berlin','10785','Germany','(010) 9984510',NULL,NULL),(12,'Plutzer Lebensmittelgroßmärkte AG','Martin Bein','Bogenallee 51','Frankfurt','60439','Germany','(069) 992755',NULL,NULL),(13,'Nord-Ost-Fisch Handelsgesellschaft mbH','Sven Petersen','Frahmredder 112a','Cuxhaven','27478','Germany','(04721) 8713',NULL,NULL),(14,'Formaggi Fortini s.r.l.','Elio Rossi','Viale Dante, 75','Ravenna','48100','Italy','(0544) 60323',NULL,NULL),(15,'Norske Meierier','Beate Vileid','Hatlevegen 5','Sandvika','1320','Norway','(0)2-953010',NULL,NULL),(16,'Bigfoot Breweries','Cheryl Saylor','3400 - 8th Avenue Suite 210','Bend','97101','USA','(503) 555-9931',NULL,NULL),(17,'Svensk Sjöföda AB','Michael Björn','Brovallavägen 231','Stockholm','S-123 45','Sweden','08-123 45 67',NULL,NULL),(18,'Aux joyeux ecclésiastiques','Guylène Nodier','203, Rue des Francs-Bourgeois','Paris','75004','France','(1) 03.83.00.68',NULL,NULL),(19,'New England Seafood Cannery','Robb Merchant','Order Processing Dept. 2100 Paul Revere Blvd.','Boston','2134','USA','(617) 555-3267',NULL,NULL),(20,'Leka Trading','Chandra Leka','471 Serangoon Loop, Suite #402','Singapore','512','Singapore','555-8787',NULL,NULL),(21,'Lyngbysild','Niels Petersen','Lyngbysild Fiskebakken 10','Lyngby','2800','Denmark','43844108',NULL,NULL),(22,'Zaanse Snoepfabriek','Dirk Luchte','Verkoop Rijnweg 22','Zaandam','9999 ZZ','Netherlands','(12345) 1212',NULL,NULL),(23,'Karkki Oy','Anne Heikkonen','Valtakatu 12','Lappeenranta','53120','Finland','(953) 10956',NULL,NULL),(24,'G\'day, Mate','Wendy Mackenzie','170 Prince Edward Parade Hunter\'s Hill','Sydney','2042','Australia','(02) 555-5914',NULL,NULL),(25,'Ma Maison','Jean-Guy Lauzon','2960 Rue St. Laurent','Montréal','H1J 1C3','Canada','(514) 555-9022',NULL,NULL),(26,'Pasta Buttini s.r.l.','Giovanni Giudici','Via dei Gelsomini, 153','Salerno','84100','Italy','(089) 6547665',NULL,NULL),(27,'Escargots Nouveaux','Marie Delamare','22, rue H. Voiron','Montceau','71300','France','85.57.00.07',NULL,NULL),(28,'Gai pâturage','Eliane Noz','Bat. B 3, rue des Alpes','Annecy','74000','France','38.76.98.06',NULL,NULL),(29,'Forêts d\'érables','Chantal Goulet','148 rue Chasseur','Ste-Hyacinthe','J2S 7S8','Canada','(514) 555-2955',NULL,NULL);
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Satish Mishra','satish70210@gmail.com',NULL,'$2y$10$1hWClH0YGN.d6dTmhDFfJOslGjhE1v65hUAooUhxwRmDBDaDBilyu','WlhUFBnvCS1YF5UNkS3NotsZEfFAJoSIpTk72ihbIn2ui7eMXgaBW8TNg9vo','2023-09-17 17:42:51','2023-09-17 17:42:51');
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

-- Dump completed on 2023-09-18  7:05:20
