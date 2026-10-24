-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: 91.134.193.97    Database: srv_1086206_i6T
-- ------------------------------------------------------
-- Server version	5.5.60-0+deb8u1-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `_stats`
--

DROP TABLE IF EXISTS `_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `_stats` (
  `ssSQLID` tinyint(1) NOT NULL AUTO_INCREMENT,
  `RegistrovanihKorisnika` mediumint(9) NOT NULL DEFAULT '0',
  `BanovanihKorisnika` mediumint(9) NOT NULL DEFAULT '0',
  `KikovanihKorisnika` mediumint(9) NOT NULL DEFAULT '0',
  `BrojWarnova` mediumint(9) NOT NULL DEFAULT '0',
  `BrojPosetaServeru` mediumint(9) NOT NULL DEFAULT '0',
  `HappyHours` tinyint(1) NOT NULL DEFAULT '0',
  `HappyHoursLvl` tinyint(2) NOT NULL DEFAULT '0',
  `HappyJobs` tinyint(1) NOT NULL DEFAULT '0',
  `PocetniLevel` tinyint(1) NOT NULL DEFAULT '1',
  `PocetniNovaca` mediumint(9) NOT NULL DEFAULT '35000',
  `BankaNovac` mediumint(7) NOT NULL DEFAULT '0',
  `KupovinaVozila` tinyint(4) NOT NULL DEFAULT '1',
  `Report` tinyint(1) NOT NULL DEFAULT '1',
  `Pitanja` tinyint(1) NOT NULL DEFAULT '1',
  `RekordServera` smallint(5) NOT NULL DEFAULT '0',
  `Oglasi` tinyint(1) NOT NULL DEFAULT '1',
  `Registracija` tinyint(1) NOT NULL DEFAULT '1',
  `ReactTime` mediumint(9) NOT NULL DEFAULT '7500',
  `ReactName` varchar(25) NOT NULL DEFAULT 'No-one',
  PRIMARY KEY (`ssSQLID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_stats`
--

LOCK TABLES `_stats` WRITE;
/*!40000 ALTER TABLE `_stats` DISABLE KEYS */;
INSERT INTO `_stats` VALUES (1,2907,197,219,37,65225,3,10,0,1,250000,50000,0,1,1,138,1,1,2303,'Latore_Wallace');
/*!40000 ALTER TABLE `_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(55) NOT NULL,
  `password` varchar(512) NOT NULL,
  `date` varchar(22) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `atms`
--

DROP TABLE IF EXISTS `atms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `atms` (
  `atmSQLID` smallint(6) NOT NULL AUTO_INCREMENT,
  `atmPos1` float NOT NULL,
  `atmPos2` float NOT NULL,
  `atmPos3` float NOT NULL,
  `atmPos4` float NOT NULL,
  `atmPos5` float NOT NULL,
  `atmPos6` float NOT NULL,
  `atmPreseceneZice` tinyint(1) NOT NULL DEFAULT '0',
  `atmProbijenBios` tinyint(1) NOT NULL DEFAULT '0',
  `atmVremeDoRoba` tinyint(1) NOT NULL DEFAULT '0',
  `atmExists` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`atmSQLID`),
  UNIQUE KEY `atmSQLID` (`atmSQLID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atms`
--

LOCK TABLES `atms` WRITE;
/*!40000 ALTER TABLE `atms` DISABLE KEYS */;
INSERT INTO `atms` VALUES (1,1543.47,-2266.53,13.167,0,0,179.5,0,0,60,1),(2,1445.01,-1779.37,13.158,0,0,179.9,1,0,120,1),(3,1462.25,-1048.62,23.428,0,0,179.9,1,1,60,1),(4,1136.01,-888.085,43.01,0,0,89.9,1,1,120,1),(5,2480.13,-1907.91,13.206,0,0,0,0,1,120,1),(6,2005.45,-1279.48,23.477,0,0,90.6,0,0,60,1),(7,518.665,-1293.81,16.842,0,0,180,0,0,60,1),(8,1175.95,-961.396,42.43,0,0,-171.2,0,0,60,1);
/*!40000 ALTER TABLE `atms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banned`
--

DROP TABLE IF EXISTS `banned`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `banned` (
  `ban_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `ban_type` smallint(1) DEFAULT NULL,
  `ban_time` int(11) DEFAULT NULL,
  `ban_reason` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ban_admin` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ban_date` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_name` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ban_id`),
  UNIQUE KEY `ban_id` (`ban_id`)
) ENGINE=InnoDB AUTO_INCREMENT=236 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `blacklist`
--

DROP TABLE IF EXISTS `blacklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `blacklist` (
  `Time` varchar(22) NOT NULL,
  `Name` varchar(24) NOT NULL,
  `Admin` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bussines`
--

DROP TABLE IF EXISTS `bussines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bussines` (
  `bussines_id` int(11) NOT NULL AUTO_INCREMENT,
  `b_owner_sqlID` int(11) DEFAULT '-1',
  `bOnAuction` tinyint(1) NOT NULL DEFAULT '0',
  `bOwner` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Drzava',
  `b_price` int(11) NOT NULL,
  `b_type` smallint(3) NOT NULL,
  `b_locked` tinyint(4) DEFAULT '0',
  `b_money` int(11) DEFAULT '0',
  `b_enter_x` float NOT NULL,
  `b_enter_y` float NOT NULL,
  `b_enter_z` float NOT NULL,
  `b_exit_x` float DEFAULT '0',
  `b_exit_y` float DEFAULT '0',
  `b_exit_z` float DEFAULT '0',
  `b_enter_int` int(11) DEFAULT '0',
  `b_enter_vw` int(11) DEFAULT '0',
  `b_exit_int` int(11) DEFAULT '0',
  `b_exit_vw` int(11) DEFAULT '0',
  `b_name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `b_level` int(11) NOT NULL,
  `b_jobID` smallint(2) DEFAULT '0',
  `b_neaktivnost` int(11) DEFAULT '0',
  `b_facture` int(11) DEFAULT '100',
  PRIMARY KEY (`bussines_id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bussines`
--

LOCK TABLES `bussines` WRITE;
/*!40000 ALTER TABLE `bussines` DISABLE KEYS */;
INSERT INTO `bussines` VALUES (2,879,1,'Buster_Connelly',1000000,9,0,2063600,1368.78,-1279.64,13.547,315.763,-143.661,999.602,0,0,7,2,'Najkvalitetnije naoruzanje!',10,0,14,72),(4,-1,1,'Drzava',450000,6,0,20790,454.174,-1477.9,30.811,161.41,-96.687,1001.8,0,0,18,4,'ODECA CIPELE I KAPICE',5,0,0,100),(5,0,1,'Drzava',450000,7,0,173807,461.721,-1500.9,31.044,227.343,-8.244,1002.21,0,0,5,5,'KAPICE I ODECA',5,0,0,100),(12,0,1,'Drzava',500000,1,0,1879514,1833.78,-1842.62,13.578,-30.908,-92.01,1003.55,0,0,18,10,'LUKA NADEREM TE',5,0,21,79),(15,0,1,'Drzava',500000,1,0,3314231,1315.47,-898.115,39.578,-30.908,-92.01,1003.55,0,0,18,1,'Prodavnica 24/7',5,0,18,82),(18,0,1,'Drzava',450000,5,0,53560,2244.33,-1665.55,15.477,207.72,-110.546,1005.13,0,0,15,12,'Binco',5,0,26,30),(25,665,0,'Alex_Connelly',1000000,9,0,1494700,2101.11,-1359.52,23.984,315.763,-143.661,999.602,0,0,7,17,'Najjeftiniji GS kod Alex-a',10,0,102,9804),(27,0,1,'Drzava',450000,8,0,5320,2112.83,-1211.46,23.963,203.895,-50.657,1001.8,0,0,1,19,'Suburban Dodji Kupi Nismo Skupi Suburban',5,0,70,30),(30,1762,0,'Fsociety_Auschwitz',1500000,22,0,121197,1629.57,-1170.33,24.086,834.667,7.3881,1004.19,0,0,3,22,'Kladionica',5,0,76,395),(31,0,1,'Drzava',450000,6,0,279400,1457.14,-1137,23.942,161.41,-96.687,1001.8,0,0,18,23,'Zip',5,0,94,6),(32,338,0,'Starcevic_Barzini',550000,16,0,189500,1411.46,-1699.67,13.539,1031.73,2662.57,-46.5,0,0,0,24,'Svi sub na kanal StraLee !!! <3',5,0,53,178),(40,0,1,'Drzava',1000000,9,1,323995,2400.5,-1981.98,13.547,315.763,-143.661,999.602,0,0,7,31,'Zeka ',10,0,48,52),(42,0,1,'Drzava',500000,1,0,1098177,1352.31,-1759.25,13.508,-30.908,-92.01,1003.55,0,0,18,33,'Doði kupi nismo skupi',5,0,51,49),(45,646,0,'Marko_Escobar',3000000,18,1,665202,629.509,847.6,-42.958,0,0,0,0,0,0,32,'Rudar',5,4,3,283),(46,0,1,'Drzava',1500000,21,0,196551,2421.5,-1219.24,25.657,-2385.03,999.637,-20.535,0,0,6,0,'BOLJE DA LJULJA NEGO DA ZULJA <3 :D',5,0,55,45),(48,1418,0,'Nenad_Rambo',3000000,18,0,162748,1752.5,-1911.98,13.567,0,0,0,0,0,0,32,'Uber - Brzo do vase lokacije!',5,6,29,132),(49,434,0,'Toni_Leap',3000000,18,1,1285072,1828.64,-1431.62,13.602,0,0,0,0,0,0,33,'Firma - Mehanicar',5,1,30,13),(50,439,0,'Rico_Payne',3000000,18,0,16564,1892.1,-2335.9,13.547,0,0,0,0,0,0,34,'Znaci sine bouze :D',5,3,50,42),(51,1385,0,'Ivan_Strqfe',3000000,18,1,912256,1525.33,-1008.73,24.102,0,0,0,0,0,0,35,'Prevoznika novca radi,te za infernusa zaradi !',5,5,125,332),(53,1938,0,'Uros_Antonijevic',1000000,30,0,44800,1022.52,-1121.42,23.87,-2010.91,-752.766,1500.97,0,0,3,33,'-MOZZART-',5,0,5,233),(54,0,1,'Drzava',500000,1,0,434,1830.34,-1172.05,24.266,-30.908,-92.01,1003.55,0,0,18,22,'Najkvalitetnije oruzje :D',5,0,13,87),(55,1935,0,'Aki_Malenovic',3000000,18,0,18454,-2160.34,2778.57,13.311,0,0,0,4,4,0,23,'Proizvodjac Namestaja',5,7,50,4101),(58,972,0,'Andrej_Escobar',350000,3,0,90580,1199.26,-918.142,43.223,363.148,-75.17,1001.51,0,0,10,24,'nismo skupi pljesku kupi',5,0,3,338),(62,0,1,'Drzava',2000000,29,0,277200,1281.7,-1539.26,13.509,0,0,0,0,0,0,0,'Ko igra taj i dobija',5,0,57,43),(63,46,0,'Ghetoven',2000000,23,0,20257417,1686.43,-1351.14,17.4297,0,0,0,0,0,0,0,'Oglas',5,0,4,8880),(64,0,1,'Drzava',250000,10,0,565600,2229.84,-1721.25,13.561,772.359,-5.516,1000.73,0,0,5,29,'Aj budi malo jaci',5,0,29,71),(65,0,1,'Drzava',1000000,9,0,1271050,333.669,-1370.39,14.471,315.763,-143.661,999.602,0,0,7,26,'Doði kupi nismo skupi',10,0,51,49),(66,2099,0,'Igor_Milanovic',200000,17,1,15067,1420.23,-1719.41,13.547,0,0,0,0,0,0,27,'Moja Trafika',5,0,2,58),(67,0,1,'Drzava',200000,17,0,36677,1511.5,-2283.9,13.547,0,0,0,0,0,0,28,'Dodji kupi nismo skupi ;) {TRAFIKA}',5,0,68,32),(68,0,1,'Drzava',200000,17,0,6323,1696.68,-1313.48,13.673,0,0,0,0,0,0,29,'Dodji kupi nismo skupi',5,0,84,16),(69,0,1,'Drzava',200000,17,1,52791,1539.06,-1037.2,23.805,0,0,0,0,0,0,30,'DODJI KUPI NISMO SKUPI!',5,0,42,58),(70,732,0,'Feyker_Escobar',200000,17,0,19429,1177.18,-932.431,43.175,0,0,0,0,0,0,31,'MOZE  I  NA  LER',5,0,1,488),(71,0,1,'Drzava',200000,17,0,12230,1198.8,-1272.83,13.547,0,0,0,0,0,0,32,'svastara',5,0,34,66),(72,-1,1,'Drzava',200000,17,0,15128,1193.98,-1704.02,13.547,0,0,0,0,0,0,33,'DODJI KUPI NISMO SKUPI :D',5,0,0,100),(73,0,1,'Drzava',200000,17,0,1086,335.925,-1770.25,5.158,0,0,0,0,0,0,34,'Kupujte kod Sofije <33',5,0,2,81),(74,0,1,'Drzava',200000,17,0,20529,2260.58,-1308.33,23.984,0,0,0,0,0,0,35,'SHEMA PROM',5,0,55,45),(75,31,0,'.momenzi',3000000,18,0,4397577,-15.595,-280.148,1532.96,0,0,0,6,6,0,36,'Firma - Proizvodjac Municije',5,2,340,888),(76,824,1,'John_Vasquez',400000,19,0,603615,1541.81,-2266.55,13.547,0,0,0,0,0,0,37,'---PunGas---',5,0,2,240),(77,1485,0,'Daddy_Yanke',450000,6,0,0,1883.23,-1272.53,13.547,161.41,-96.687,1001.8,0,0,18,38,'Mario07 s',5,0,2,18);
/*!40000 ALTER TABLE `bussines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `containers`
--

DROP TABLE IF EXISTS `containers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `containers` (
  `koSQLID` smallint(6) NOT NULL AUTO_INCREMENT,
  `koObjPos1` float NOT NULL,
  `koObjPos2` float NOT NULL,
  `koObjPos3` float NOT NULL,
  `koObjRot1` float NOT NULL,
  `koObjRot2` float NOT NULL,
  `koObjRot3` float NOT NULL,
  PRIMARY KEY (`koSQLID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `containers`
--

LOCK TABLES `containers` WRITE;
/*!40000 ALTER TABLE `containers` DISABLE KEYS */;
INSERT INTO `containers` VALUES (1,1522.77,-1702.48,13.313,0,0,89.7),(2,910.802,-1636.17,13.303,0,0,89.5),(3,1539.16,-2297.64,13.295,0,0,91.4),(4,1442.13,-1045.05,23.558,0,0,179.8),(5,2010.05,-1251.86,23.744,0,0,0),(6,1215.33,-1341.33,13.321,0,0,-90.7),(7,1146.07,-904.669,42.601,0,0,-178),(8,2506.15,-1908.34,13.297,0,0,90.9),(9,1295.75,-1520.77,13.317,0,0,0),(10,1900.66,-1870.48,13.29,0,0,-89.4),(11,211.589,-237.21,1.288,0,0,0),(12,2426.52,-2430.09,13.384,0,0,-45.8),(13,2245.07,-89.313,26.164,0,0,0.9),(14,2230.31,-1690.08,13.735,0,4.6,-100.8),(15,2102.81,-1215.7,23.969,0,0,0),(16,457.075,-1489.21,30.847,0,0,-80.7),(17,670.521,-585.039,16.056,0,0,-89.2);
/*!40000 ALTER TABLE `containers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gangzones`
--

DROP TABLE IF EXISTS `gangzones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `gangzones` (
  `gzone_id` int(11) NOT NULL AUTO_INCREMENT,
  `taken` tinyint(4) DEFAULT NULL,
  `takeable` tinyint(4) DEFAULT NULL,
  `gang_id` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `is_special` tinyint(1) NOT NULL DEFAULT '0',
  `max_x` float NOT NULL DEFAULT '0',
  `max_y` float NOT NULL DEFAULT '0',
  `min_x` float NOT NULL DEFAULT '0',
  `min_y` float NOT NULL DEFAULT '0',
  `color` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pickup_pos_x` float DEFAULT NULL,
  `pickup_pos_y` float DEFAULT NULL,
  `pickup_pos_z` float DEFAULT NULL,
  PRIMARY KEY (`gzone_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gangzones`
--

LOCK TABLES `gangzones` WRITE;
/*!40000 ALTER TABLE `gangzones` DISABLE KEYS */;
INSERT INTO `gangzones` VALUES (1,1,1,3,0,0,1352.43,-724.02,1165.38,-934.508,'000001',1290.22,-766.385,92.249),(2,1,1,4,0,0,1301.21,-1966.92,1068.01,-2106.83,'BABABA',1292.46,-2043.37,58.558),(3,1,1,3,0,0,2544.92,-1624.81,2437.54,-1725.73,'000001',2438.06,-1632.29,13.403),(4,1,1,10,0,0,2197.76,-1001.66,1873.25,-1128.54,'FF0000',2124.65,-1004.53,59.041),(5,1,1,3,0,0,1074.52,-1046.77,969.313,-1134.09,'000001',1055.12,-1053.1,31.15),(6,1,1,7,0,0,224.746,-1614.94,-48.752,-1863.08,'e6e33e',159.811,-1650.55,14.592),(8,1,1,7,0,0,2318.48,-1889.56,2220.43,-1965.37,'e6e33e',2226.32,-1937.76,13.538),(9,1,1,3,0,0,2479.67,-573.036,2285.67,-764.036,'000001',2467.13,-694.776,116.891),(10,1,1,10,0,0,2482.53,-2509.94,2377.52,-2656.15,'FF0000',2472.84,-2530.56,13.648),(11,1,1,7,0,0,2810.69,-2330.03,2666.25,-2565.75,'e6e33e',2774.56,-2401.09,13.628),(12,1,1,10,0,0,2331.65,-2358.73,2150.98,-2469.72,'FF0000',2302.31,-2398.86,13.332),(13,1,1,7,0,0,2148.52,-2478.34,1324.41,-2691.78,'e6e33e',1649.1,-2547.79,13.547),(14,1,1,3,0,0,1843.09,-2189.62,1254.64,-2381.65,'000001',1278.55,-2285.89,13.008),(15,1,1,7,0,0,2224.69,-2013.8,2036.33,-2160.7,'e6e33e',2104.25,-2099.95,13.547),(16,1,1,7,0,0,1956.42,-1746.59,1814.77,-1935.95,'e6e33e',1893.71,-1795.61,13.547),(17,1,1,7,0,0,1829.64,-1955.94,1676.8,-2108.95,'e6e33e',1799.53,-1970.93,13.548),(18,1,1,7,0,0,2216.81,-1733.29,2088.31,-1887.92,'e6e33e',2179.57,-1812.06,13.547),(19,1,1,10,0,0,2533.83,-1734.89,2420.42,-1925.54,'FF0000',2510.75,-1784.43,13.547),(20,1,1,10,0,0,2849.79,-1657.24,2634.16,-1895.4,'FF0000',2803.25,-1834.82,9.897),(21,1,1,10,0,0,2714.71,-1263.19,2644,-1596.88,'FF0000',2704.05,-1394.36,35.013),(22,1,1,10,0,0,2569.83,-1257.12,2450.77,-1441.58,'FF0000',2539.12,-1357.41,30.809),(23,1,1,10,0,0,2344.75,-1388.01,2220.4,-1475.7,'FF0000',2301.22,-1439.36,24),(24,1,1,10,0,0,2214.36,-1496.73,2106.27,-1614.47,'FF0000',2150.57,-1499.54,23.963),(25,1,1,10,0,0,2555.57,-1499.96,2436.43,-1585.86,'FF0000',2485.67,-1524.4,23.992),(26,1,1,3,0,0,2173.51,-1219.98,2078.73,-1295.96,'000001',2112.3,-1260.94,23.989),(27,1,1,10,0,0,2643.21,-1152.94,2376.26,-1251.4,'FF0000',2557.79,-1217.58,53.95),(28,1,1,10,0,0,2835.51,-1049.9,2744.54,-1250.66,'FF0000',2825.58,-1183.96,25.165),(29,1,1,3,0,0,2602.39,-936.421,2283.41,-1078.21,'000001',2472.98,-974.852,80.244),(30,1,1,7,0,0,1980.55,-1347.59,1858.26,-1454.36,'e6e33e',1920.5,-1415.54,13.57),(31,1,1,4,0,0,1296.74,-1714.4,1037.82,-1842.24,'BABABA',1139.39,-1760.97,13.595),(32,1,1,7,0,0,917.696,-1567.56,815.437,-1763.6,'e6e33e',877.136,-1603.79,13.548),(33,1,1,7,0,0,1196.47,-1409.03,1047.43,-1564.48,'e6e33e',1161.03,-1489.7,22.769),(34,1,1,7,0,0,912.701,-1332.64,802.936,-1388.93,'e6e33e',872.7,-1338.78,13.547),(35,1,1,3,25,0,619.88,-1410.82,458.846,-1575.57,'000001',589.551,-1508.57,15.349),(36,1,1,3,0,0,788.615,-1060.71,644.487,-1312.79,'000001',763.802,-1122.84,24.229),(37,1,1,3,0,0,1047.28,-1226.5,948.456,-1313.57,'000001',995.212,-1267.63,15.031),(38,1,1,3,0,0,1336.6,-1143.51,1223.52,-1274.27,'000001',1327.11,-1189.63,23.578),(40,1,1,3,0,0,1256.75,-1040.85,1169.76,-1134.63,'000001',1220.64,-1071.16,29.223),(41,1,1,7,0,0,1588.97,-1442.05,1436.43,-1585.48,'e6e33e',1526.08,-1495.81,13.563),(42,1,1,3,0,0,1707.89,-1167.32,1461.64,-1296.94,'000001',1567.76,-1203.76,19.856),(43,1,1,7,0,0,2029.55,-1520.82,1828.31,-1605.56,'e6e33e',1978.66,-1566.76,13.628),(44,1,1,7,0,0,1816.56,-1613.62,1696.37,-1725.01,'e6e33e',1766.45,-1691.68,13.428),(45,1,1,3,0,0,2065.28,-1141.14,1858.84,-1253.77,'000001',1924.53,-1193.78,20.193),(46,1,1,10,0,0,2343.89,-1655.21,2254.44,-1728.86,'FF0000',2330.17,-1695.73,13.346),(47,1,1,10,0,0,2772,-2167.84,2423.84,-2246.38,'FF0000',2562.05,-2243.54,13.539),(48,1,1,3,0,0,2621.67,-2326.98,2437.88,-2470.49,'000001',2584.21,-2395.59,13.521),(49,1,1,10,0,0,2719.92,-1927.15,2614.9,-2041.3,'FF0000',2705.66,-1995.84,13.555),(50,1,1,3,0,0,2339.86,-1155.36,2228,-1299.63,'000001',2325.52,-1230.65,22.511);
/*!40000 ALTER TABLE `gangzones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gates`
--

DROP TABLE IF EXISTS `gates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `gates` (
  `gateid` int(11) NOT NULL AUTO_INCREMENT,
  `gateowner` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gatemodel` int(11) NOT NULL,
  `gatefor` int(11) NOT NULL,
  `gateorg` int(11) DEFAULT NULL,
  `gatespeed` float NOT NULL,
  `gateradius` float NOT NULL,
  `gatetime` int(11) NOT NULL,
  `gatepos_1` float NOT NULL,
  `gatepos_2` float NOT NULL,
  `gatepos_3` float NOT NULL,
  `gatepos_4` float NOT NULL,
  `gatepos_5` float NOT NULL,
  `gatepos_6` float NOT NULL,
  `gateint` int(11) DEFAULT NULL,
  `gatevw` int(11) DEFAULT NULL,
  `gatemove_1` float NOT NULL,
  `gatemove_2` float NOT NULL,
  `gatemove_3` float NOT NULL,
  `gatemove_4` float NOT NULL,
  `gatemove_5` float NOT NULL,
  `gatemove_6` float NOT NULL,
  PRIMARY KEY (`gateid`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gates`
--

LOCK TABLES `gates` WRITE;
/*!40000 ALTER TABLE `gates` DISABLE KEYS */;
INSERT INTO `gates` VALUES (5,'',2920,1,1,1,8,5000,1544.68,-1630.84,13.113,90.1,0.4,179.615,0,0,1544.68,-1630.84,13.113,7,0.4,179.615),(8,'',980,1,3,1.5,8,8000,1245.75,-767.823,93.749,0,0,-179.752,0,0,1245.75,-767.823,88.159,0,0,-179.752),(9,'',980,1,4,1.5,8,8000,1286.84,-2056.54,60.516,0,0,268.796,0,0,1286.84,-2056.54,54.886,0,0,268.796),(11,'',980,1,7,1.5,8,8000,973.445,-1104.67,25.575,0,0,-90.96,0,0,973.445,-1104.67,20.045,0,0,-90.96),(13,'',980,1,8,1.5,8,8000,78.755,-1704.98,7.319,0,0,-28.917,0,0,85.6,-1708.76,7.319,0,0,-28.917),(14,'Ino42O',2909,2,-1,2,8,8000,417.458,-1251.09,51.729,-2.6,0,-67.599,0,0,417.345,-1251.14,49.052,-2.6,0,-67.599),(16,'Ino42O',2988,2,-1,2,8,8000,431.03,-1245.84,48.76,0,0,-67.126,0,0,431.032,-1245.87,48.76,0,0,23.074),(18,'',1495,1,1,1.5,8,5000,1365.68,1066.76,1625.45,0,0,89.806,6,1,1365.67,1065.42,1625.45,0,0,89.806),(21,'',968,8,-1,2.5,8,8000,1731.99,552.76,26.151,1.1,-90.9,161.04,0,0,1731.99,552.76,26.151,1.1,-9.3,161.04),(22,'',968,8,-1,2.5,8,8000,1745.52,548.078,26.117,1.3,90.4,160.94,0,0,1745.52,548.078,26.117,1.3,8.4,161.64),(23,'',968,8,-1,2.5,8,8000,1751.49,509.618,28.196,0,-90.6,340.482,0,0,1751.49,509.618,28.196,0,-9.5,340.482),(24,'',968,8,-1,2.5,8,8000,1738.01,514.289,28.214,0.2,90.3,-18.985,0,0,1738.01,514.289,28.214,0.2,9.5,-18.985),(31,'Hrsak',19870,2,-1,10,8,10000,2362.22,554.897,8.441,0,0,179.942,0,0,2362.22,554.897,4.551,0,0,179.942),(32,'Marko_Escobar',975,2,-1,2,8,8000,264.091,-1334.45,53.687,0,0,-142.342,0,0,257.781,-1339.32,53.687,0,0,-142.342),(36,'Marioo',19912,2,-1,2,8,8000,2340.1,599.311,12.576,0,0,1.523,0,0,2340.1,599.311,7.066,0,0,1.523),(37,'Aleksa_Walker',19912,2,-1,2,8,8000,1006.85,-642.212,120.715,0,0,23.805,0,0,999.964,-645.251,120.715,0,0,23.805),(38,'Clauf_Dollitle',969,2,-1,2,8,8000,850.689,-576.497,15.44,0,0,181.36,0,0,856.557,-576.358,15.44,0,0,181.36),(39,'Rico_Payne',19912,2,-1,2,8,8000,287.983,-1317.79,55.668,0,0,33.631,0,0,297.158,-1311.68,55.668,0,0,33.631);
/*!40000 ALTER TABLE `gates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gps`
--

DROP TABLE IF EXISTS `gps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `gps` (
  `gpsSQLID` smallint(6) NOT NULL AUTO_INCREMENT,
  `gpsName` varchar(50) NOT NULL,
  `gpsPos1` float NOT NULL,
  `gpsPos2` float NOT NULL,
  `gpsPos3` float NOT NULL,
  PRIMARY KEY (`gpsSQLID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gps`
--

LOCK TABLES `gps` WRITE;
/*!40000 ALTER TABLE `gps` DISABLE KEYS */;
INSERT INTO `gps` VALUES (1,'Opstina',1487.07,-1762.52,13.568),(2,'Banka',1458.93,-1025.07,23.839),(3,'Spawn - Aerodrom',1575.98,-2294.36,13.295),(4,'Zlatara',2001.65,-1279.66,23.907),(5,'Igraonica',1286.81,-1308.37,13.55),(6,'Salon Vozila',555.7,-1287.43,17.259),(7,'Oglasi',1692.69,-1343.64,17.444),(8,'AutoSkola',2485.24,-1907.28,13.59),(9,'Lutrija',1283.15,-1543.15,13.524),(10,'Electronic Shop',1411.5,-1699.61,13.539),(11,'Crno Trziste',200.053,-237.893,2.352),(12,'Pijaca',1895.61,-1877.6,13.508),(13,'Hangar',2417.35,-2477.35,13.634),(14,'Casino',1022.53,-1121.42,23.87),(15,'Javna Kuca',2421.57,-1219.24,25.657),(19,'Klizaliste',1067.3,-1784.26,13.645);
/*!40000 ALTER TABLE `gps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_skills`
--

DROP TABLE IF EXISTS `job_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `job_skills` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `skill_mehanicar` tinyint(3) DEFAULT '1',
  `skill_pmunicije` tinyint(3) NOT NULL DEFAULT '1',
  `skill_pilot` tinyint(3) DEFAULT '1',
  `skill_rudar` tinyint(3) DEFAULT '1',
  `skill_pnovca` tinyint(3) DEFAULT '1',
  `skill_uber` tinyint(3) DEFAULT '1',
  `skill_pnamjestaja` tinyint(3) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2883 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `log-ban`
--

DROP TABLE IF EXISTS `log-ban`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `log-ban` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `log-bandera`
--

DROP TABLE IF EXISTS `log-bandera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `log-bandera` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `log-chat`
--

DROP TABLE IF EXISTS `log-chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `log-chat` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `log-connect`
--

DROP TABLE IF EXISTS `log-connect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `log-connect` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `log-delete`
--

DROP TABLE IF EXISTS `log-delete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `log-delete` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log-delete`
--

LOCK TABLES `log-delete` WRITE;
/*!40000 ALTER TABLE `log-delete` DISABLE KEYS */;
/*!40000 ALTER TABLE `log-delete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log-deleteacc`
--

DROP TABLE IF EXISTS `log-deleteacc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `log-deleteacc` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log-deleteacc`
--

LOCK TABLES `log-deleteacc` WRITE;
/*!40000 ALTER TABLE `log-deleteacc` DISABLE KEYS */;
/*!40000 ALTER TABLE `log-deleteacc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log-edit`
--

DROP TABLE IF EXISTS `log-edit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `log-edit` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log-edit`
--

LOCK TABLES `log-edit` WRITE;
/*!40000 ALTER TABLE `log-edit` DISABLE KEYS */;
/*!40000 ALTER TABLE `log-edit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log-fakture`
--

DROP TABLE IF EXISTS `log-fakture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `log-fakture` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `log-gift`
--

DROP TABLE IF EXISTS `log-gift`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `log-gift` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `log-give`
--

DROP TABLE IF EXISTS `log-give`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `log-give` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `log-kick`
--

DROP TABLE IF EXISTS `log-kick`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `log-kick` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `log-komande`
--

DROP TABLE IF EXISTS `log-komande`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `log-komande` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log-komande`
--

LOCK TABLES `log-komande` WRITE;
/*!40000 ALTER TABLE `log-komande` DISABLE KEYS */;
/*!40000 ALTER TABLE `log-komande` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log-kredit`
--

DROP TABLE IF EXISTS `log-kredit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `log-kredit` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `log-kupovina`
--

DROP TABLE IF EXISTS `log-kupovina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `log-kupovina` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `log-make`
--

DROP TABLE IF EXISTS `log-make`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `log-make` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `log-neaktivnost`
--

DROP TABLE IF EXISTS `log-neaktivnost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `log-neaktivnost` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `log-offvratistats`
--

DROP TABLE IF EXISTS `log-offvratistats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `log-offvratistats` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log-offvratistats`
--

LOCK TABLES `log-offvratistats` WRITE;
/*!40000 ALTER TABLE `log-offvratistats` DISABLE KEYS */;
/*!40000 ALTER TABLE `log-offvratistats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log-password`
--

DROP TABLE IF EXISTS `log-password`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `log-password` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `log-pay`
--

DROP TABLE IF EXISTS `log-pay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `log-pay` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `log-paysafe-kodovi`
--

DROP TABLE IF EXISTS `log-paysafe-kodovi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `log-paysafe-kodovi` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `log-pm`
--

DROP TABLE IF EXISTS `log-pm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `log-pm` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `log-poeni`
--

DROP TABLE IF EXISTS `log-poeni`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `log-poeni` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `log-punishment`
--

DROP TABLE IF EXISTS `log-punishment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `log-punishment` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `log-rcon`
--

DROP TABLE IF EXISTS `log-rcon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `log-rcon` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `log-rob`
--

DROP TABLE IF EXISTS `log-rob`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `log-rob` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `log-sell`
--

DROP TABLE IF EXISTS `log-sell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `log-sell` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `log-setstat`
--

DROP TABLE IF EXISTS `log-setstat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `log-setstat` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `log-smjenjivanja`
--

DROP TABLE IF EXISTS `log-smjenjivanja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `log-smjenjivanja` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `log-sretniid`
--

DROP TABLE IF EXISTS `log-sretniid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `log-sretniid` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `log-stats`
--

DROP TABLE IF EXISTS `log-stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `log-stats` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `log-tajna`
--

DROP TABLE IF EXISTS `log-tajna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `log-tajna` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log-tajna`
--

LOCK TABLES `log-tajna` WRITE;
/*!40000 ALTER TABLE `log-tajna` DISABLE KEYS */;
/*!40000 ALTER TABLE `log-tajna` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log-transfer`
--

DROP TABLE IF EXISTS `log-transfer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `log-transfer` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `log-unban`
--

DROP TABLE IF EXISTS `log-unban`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `log-unban` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `log-unjail`
--

DROP TABLE IF EXISTS `log-unjail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `log-unjail` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `log-vratistats`
--

DROP TABLE IF EXISTS `log-vratistats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `log-vratistats` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `log-warn`
--

DROP TABLE IF EXISTS `log-warn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `log-warn` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `log-xbon-kodovi`
--

DROP TABLE IF EXISTS `log-xbon-kodovi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `log-xbon-kodovi` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log-xbon-kodovi`
--

LOCK TABLES `log-xbon-kodovi` WRITE;
/*!40000 ALTER TABLE `log-xbon-kodovi` DISABLE KEYS */;
/*!40000 ALTER TABLE `log-xbon-kodovi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log-zamena`
--

DROP TABLE IF EXISTS `log-zamena`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `log-zamena` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log-zamena`
--

LOCK TABLES `log-zamena` WRITE;
/*!40000 ALTER TABLE `log-zamena` DISABLE KEYS */;
/*!40000 ALTER TABLE `log-zamena` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_members`
--

DROP TABLE IF EXISTS `org_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `org_members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `memb_rank` smallint(1) NOT NULL,
  `memb_type` smallint(1) NOT NULL DEFAULT '0',
  `memb_sqlID` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2313 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `organizations`
--

DROP TABLE IF EXISTS `organizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `organizations` (
  `org_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `prefix` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(24) CHARACTER SET utf8 DEFAULT NULL,
  `type` int(11) NOT NULL,
  `suspended` tinyint(4) DEFAULT '0',
  `max_members` smallint(2) DEFAULT '30',
  `male_skin_1` smallint(3) NOT NULL,
  `male_skin_2` smallint(3) NOT NULL,
  `male_skin_3` smallint(3) NOT NULL,
  `male_skin_4` smallint(3) NOT NULL,
  `male_skin_5` smallint(3) NOT NULL,
  `male_skin_6` smallint(3) NOT NULL,
  `female_skin_1` smallint(3) NOT NULL,
  `female_skin_2` smallint(3) NOT NULL,
  `female_skin_3` smallint(3) NOT NULL,
  `female_skin_4` smallint(3) NOT NULL,
  `female_skin_5` smallint(3) NOT NULL,
  `female_skin_6` smallint(3) NOT NULL,
  `rank_1` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `rank_2` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `rank_3` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `rank_4` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `rank_5` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `rank_6` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `enter_pos_x` float NOT NULL,
  `enter_pos_y` float NOT NULL,
  `enter_pos_z` float NOT NULL,
  `exit_pos_x` float NOT NULL,
  `exit_pos_y` float NOT NULL,
  `exit_pos_z` float NOT NULL,
  `interior` int(11) DEFAULT '0',
  `virtualw` int(11) DEFAULT '0',
  `spawn_point_x` float DEFAULT '0',
  `spawn_point_y` float DEFAULT '0',
  `spawn_point_z` float DEFAULT '0',
  `oDilerX` float NOT NULL DEFAULT '0',
  `oDilerY` float NOT NULL DEFAULT '0',
  `oDilerZ` float NOT NULL DEFAULT '0',
  `oDilerA` float NOT NULL DEFAULT '0',
  `oDilerCena` smallint(6) NOT NULL DEFAULT '500',
  `oDilerRadi` tinyint(1) NOT NULL DEFAULT '0',
  `duty_point_pos_x` float DEFAULT '0',
  `duty_point_pos_y` float DEFAULT '0',
  `duty_point_pos_z` float DEFAULT '0',
  `duty_point_int` smallint(6) DEFAULT '0',
  `duty_point_vw` smallint(6) DEFAULT '0',
  `equip_point_pos_x` float DEFAULT '0',
  `equip_point_pos_y` float DEFAULT '0',
  `equip_point_pos_z` float DEFAULT '0',
  `equip_point_int` smallint(6) DEFAULT '0',
  `equip_point_vw` smallint(6) DEFAULT '0',
  `savez` smallint(6) DEFAULT '-1',
  `safe_pos_x` float DEFAULT '0',
  `safe_pos_y` float DEFAULT '0',
  `safe_pos_z` float DEFAULT '0',
  `safe_money` int(11) DEFAULT '0',
  `safe_drug_amount` smallint(6) DEFAULT '0',
  `safe_mats` int(11) NOT NULL DEFAULT '0',
  `oPortX` float NOT NULL DEFAULT '0',
  `oPortY` float NOT NULL DEFAULT '0',
  `oPortZ` float NOT NULL DEFAULT '3',
  `oPortA` float NOT NULL DEFAULT '0',
  `ent_bussines` smallint(6) DEFAULT '0',
  `owned_business` smallint(6) DEFAULT '0',
  PRIMARY KEY (`org_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organizations`
--

LOCK TABLES `organizations` WRITE;
/*!40000 ALTER TABLE `organizations` DISABLE KEYS */;
INSERT INTO `organizations` VALUES (1,'Police Department','PD','2641FE',1,0,40,280,266,265,267,301,281,306,307,307,308,308,309,'Police Officer','Police Sergeant','Police Lieutenant','Police Captain','Deputy Chief of Police','Chief of Police',1555.5,-1675.58,16.195,1360.51,1076.5,1626.49,6,1,1374.21,1076.92,1626.49,0,0,0,0,1000,0,1373.91,1062.9,1626.49,6,1,1373.29,1056.65,1626.49,6,1,-1,0,0,0,1450800,0,0,1529.67,-1673.93,13.383,179.72,0,0),(2,'Sheriff Department','SD','6CA877',1,0,40,303,302,282,301,311,288,309,309,309,309,309,309,'Deputy Sheriff Generalist','Deputy Sheriff','Sergeant','Lieutenant','Undersheriff','Sheriff',626.965,-571.775,17.912,-0.534,8.439,2005.41,6,2,-0.37,-1.134,2005.41,0,0,0,0,2000,1,-14.168,18.257,2005.41,6,2,-16.696,20.304,2005.41,6,2,-1,0,0,0,0,0,0,642.381,-570.994,16.188,259.934,0,0),(3,'Black Dragon Triads','BDT','000001',3,0,50,111,111,111,112,112,113,141,148,148,150,150,192,'Ordinary Member','Blue Dragon','Red Dragon','Enforcer','Deputy Mountain Master','Dragon Head',1298.54,-797.987,84.141,1934.02,280.123,1371.42,6,3,1957.11,277.508,1374.94,0,0,0,0,1000,1,0,0,0,0,0,0,0,0,0,0,-1,1947.69,255.46,1375.32,1298805,160,17506,1238.92,-736.498,95.576,7.385,0,0),(4,'La Cosa Nostra','LCN','BABABA',3,0,50,6,7,21,28,30,272,13,12,41,41,56,76,'Associates','Soldiers','Consigliere','Underboss','Boss','Godfather',1122.73,-2037.02,69.894,1934.02,280.123,1371.42,6,4,1957.91,278.034,1374.94,0,0,0,0,2000,0,0,0,0,0,0,0,0,0,0,0,-1,1947.66,255.46,1375.32,2345173,232,95603,1313.01,-2056.83,57.943,91.046,0,0),(5,'Grove Street Family','GSF','199139',2,0,50,105,106,107,270,269,271,191,191,191,191,191,191,'Soulja','Thug','Homeboy','Gangsta','O.G Loc','Top O.G',2495.37,-1691.14,14.766,291.552,-141.117,1161.28,6,5,286.805,-143.556,1161.28,2431.37,-1680.61,13.793,357.152,1000,1,0,0,0,0,0,0,0,0,0,0,6,290.508,-154.948,1164.74,2040623,1047,18137,2476.53,-1665.64,13.324,60.653,0,0),(6,'Ballas Family','BF','A32776',2,0,50,102,102,103,103,103,104,190,190,193,193,193,195,'Grunt','Solider','Senior Solider','Warlord','Right Hand','Top O.G',2036.33,-1052.11,25.022,291.552,-141.117,1161.28,6,6,286.399,-143.806,1161.28,2021.24,-1081.29,24.562,340.377,100,0,0,0,0,0,0,0,0,0,0,0,5,290.508,-154.959,1164.74,855,180,7101,2028.76,-1071.49,24.562,339.812,0,0),(7,'Yakuza','Y','e6e33e',3,0,50,58,120,121,122,123,187,55,55,55,56,56,56,'Shingiin','Keikei','Shategashira','Saiko Komon','Wakagashira','Oyabun',1004.74,-1105.06,23.828,1934.02,280.123,1371.42,6,7,1958,278.404,1374.94,0,0,0,0,100,1,0,0,0,0,0,0,0,0,0,0,-1,1947.68,255.463,1374.94,870949,108,24681,962.593,-1103.34,23.693,356.828,0,0),(8,'Russian Mafia','RM','4691FA',3,0,50,171,186,230,115,137,292,76,76,76,93,93,93,'Shestyorka','Sovyak','Brodyaga','Brigadier','Sovietnik','Pakhan',71.087,-1750.76,25.763,1934.02,280.123,1371.42,6,8,1958.38,278.388,1374.94,0,0,0,0,250,1,0,0,0,0,0,0,0,0,0,0,-1,1947.71,255.461,1374.94,1876547,1872,126,118.429,-1689.31,9.5,270.901,0,0),(9,'Los Santos Vagos','LSV','D4B726',2,0,50,108,108,108,109,109,110,211,211,211,211,211,211,'Lil Ese','Soldado','Hermano','Corner Boss','El Padre','El Jefe',2279.27,-1916.84,14.136,291.552,-141.117,1161.28,6,9,287.426,-143.528,1161.28,2301.44,-1905.42,13.616,357.508,100,1,0,0,0,0,0,0,0,0,0,0,-1,290.507,-154.959,1164.74,14001,88,5422,2313.79,-1906.97,13.403,359.916,0,16),(10,'The Siberian Wolves','TSW','FF0000',3,0,50,185,185,217,223,186,177,216,216,216,216,216,216,'Associates','Soldiers','Consigliere','Underboss','Boss','Godfather',2358.82,-649.644,128.204,1934.02,280.123,1371.42,6,10,1957.36,278.219,1374.94,0,0,0,0,300,0,0,0,0,0,0,0,0,0,0,0,-1,1947.69,255.461,1375.32,6904000,8464,619188,2390.47,-663.971,127.944,243.803,0,0);
/*!40000 ALTER TABLE `organizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `propertys`
--

DROP TABLE IF EXISTS `propertys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `propertys` (
  `iSQLID` mediumint(9) NOT NULL AUTO_INCREMENT,
  `iOwnerSQLID` mediumint(9) NOT NULL DEFAULT '-1',
  `iGarageSqlID` mediumint(9) NOT NULL DEFAULT '-1',
  `iOwned` tinyint(4) NOT NULL DEFAULT '0',
  `iOnAuction` tinyint(1) NOT NULL DEFAULT '0',
  `iOwner` varchar(25) NOT NULL DEFAULT 'Drzava',
  `iMoney` int(11) NOT NULL DEFAULT '0',
  `iUsage` tinyint(4) NOT NULL,
  `iNeaktivnost` smallint(3) NOT NULL DEFAULT '0',
  `iEnter1` float NOT NULL,
  `iEnter2` float NOT NULL,
  `iEnter3` float NOT NULL,
  `iExit1` float NOT NULL,
  `iExit2` float NOT NULL,
  `iExit3` float NOT NULL,
  `iPrice` int(11) NOT NULL,
  `iLevel` smallint(6) NOT NULL,
  `iLocked` tinyint(4) NOT NULL DEFAULT '1',
  `iVrsta` tinyint(4) NOT NULL,
  `iInterior` int(11) NOT NULL,
  `iVW` int(11) NOT NULL,
  `iOruzje1` tinyint(4) NOT NULL DEFAULT '0',
  `iOruzje2` tinyint(4) NOT NULL DEFAULT '0',
  `iOruzje3` tinyint(4) NOT NULL DEFAULT '0',
  `iOruzje4` tinyint(4) NOT NULL DEFAULT '0',
  `iMunicija1` smallint(6) NOT NULL DEFAULT '0',
  `iMunicija2` smallint(6) NOT NULL DEFAULT '0',
  `iMunicija3` smallint(6) NOT NULL DEFAULT '0',
  `iMunicija4` smallint(6) NOT NULL DEFAULT '0',
  `iDrugAmmount` smallint(6) NOT NULL DEFAULT '0',
  `iMats` mediumint(9) NOT NULL DEFAULT '0',
  `iAlarm` tinyint(1) NOT NULL DEFAULT '0',
  `iDoorLevel` tinyint(4) NOT NULL DEFAULT '0',
  `iLockLevel` tinyint(1) NOT NULL DEFAULT '0',
  `iTime` smallint(6) NOT NULL DEFAULT '0',
  `iAdress` varchar(50) NOT NULL DEFAULT '',
  `iRentable` tinyint(1) NOT NULL DEFAULT '0',
  `iRentPrice` smallint(6) NOT NULL DEFAULT '0',
  `iRentovano` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`iSQLID`)
) ENGINE=InnoDB AUTO_INCREMENT=538 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propertys`
--

LOCK TABLES `propertys` WRITE;
/*!40000 ALTER TABLE `propertys` DISABLE KEYS */;
INSERT INTO `propertys` VALUES (49,-1,-1,0,0,'Drzava',0,2,0,1189,-1018.05,36.234,1281.03,-36.4,1000.92,350000,3,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Temple',0,0,0),(50,-1,-1,0,1,'Drzava',0,2,0,1196.49,-1017.04,36.234,1281.03,-36.4,1000.92,350000,3,1,0,5,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Temple',0,0,0),(51,-1,-1,0,0,'Drzava',0,2,0,1188.19,-1011.86,36.227,1281.03,-36.4,1000.92,350000,3,1,0,5,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Temple',0,0,0),(52,-1,-1,0,0,'Drzava',0,2,0,1195.68,-1010.88,36.227,1281.03,-36.4,1000.92,350000,3,1,0,5,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Temple',0,0,0),(53,2219,-1,1,0,'Kaca_Montana',0,2,28,1234.73,-1016.14,32.607,1281.03,-36.4,1000.92,350000,3,1,0,5,4,0,0,0,0,0,0,0,0,0,0,4,5,4,0,'Temple',0,0,0),(54,-1,-1,0,0,'Drzava',0,2,0,1227.24,-1017.14,32.602,1281.03,-36.4,1000.92,350000,3,0,0,5,5,0,0,4,0,0,0,1,0,0,0,0,0,0,0,'Temple',0,600,0),(55,-1,-1,0,0,'Drzava',0,2,0,1233.93,-1010.03,32.602,1281.03,-36.4,1000.92,350000,3,1,0,5,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Temple',0,0,0),(56,2325,-1,1,0,'Danis_Corleone',0,2,51,1226.43,-1010.97,32.602,1281.03,-36.4,1000.92,350000,3,1,0,5,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Temple',0,0,0),(57,732,-1,1,0,'Feyker_Escobar',0,2,1,1233.92,-1009.99,36.328,1281.03,-36.4,1000.92,350000,3,0,0,5,8,0,0,0,0,0,0,0,0,0,0,0,3,0,0,'Temple',0,0,0),(58,638,-1,1,0,'Bojan_Cappone',0,2,107,1226.44,-1011,36.328,1281.03,-36.4,1000.92,350000,3,0,0,5,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Temple',0,1000,0),(60,-1,-1,0,1,'Drzava',0,2,0,1234.73,-1016.17,36.336,1281.03,-36.4,1000.92,350000,3,1,0,5,10,0,0,0,0,0,0,0,0,91,0,4,5,4,0,'Temple',0,150,0),(61,2597,-1,1,0,'Cale_Wilson',0,1,8,1241.95,-1077.2,31.555,2180.95,-567.4,1502.01,750000,5,1,2,12,11,24,25,24,29,100,49,100,200,163,3000,4,5,4,0,'Temple',0,50,0),(62,2359,-1,1,0,'Milan_Savic',0,1,2,1242.26,-1099.89,27.977,2180.95,-567.4,1502.01,750000,5,1,2,12,12,0,0,0,0,0,0,0,0,0,0,4,5,4,0,'Temple',0,750,0),(63,2325,-1,1,0,'Danis_Corleone',0,1,50,1285.26,-1089.8,28.258,2180.95,-567.4,1502.01,750000,5,1,2,12,13,0,0,0,0,0,0,0,0,0,0,4,5,4,0,'Temple',0,0,0),(64,1937,-1,1,0,'Kristina_Radivojevic',0,1,2,1285.26,-1067.42,31.679,2180.95,-567.4,1502.01,750000,5,1,2,12,14,0,0,0,0,0,0,0,0,0,0,4,5,4,0,'Temple',0,0,0),(65,2210,-1,1,0,'Veljko_Jelkic',1,1,107,1141.81,-1070.57,31.766,2180.95,-567.4,1502.01,750000,5,1,2,12,15,0,0,0,0,0,0,0,0,0,0,4,5,4,0,'Temple',0,0,0),(66,732,-1,1,0,'Feyker_Escobar',0,1,1,1183.47,-1076.73,31.679,2180.95,-567.4,1502.01,750000,5,1,2,12,16,0,0,0,0,0,0,0,0,0,0,4,5,4,0,'Temple',0,1000,0),(67,2478,-1,1,0,'Milos_Pajovic',90000,1,384,1183.48,-1099.1,28.258,2180.95,-567.4,1502.01,750000,5,1,2,12,17,0,0,0,0,0,0,0,0,30,0,4,5,4,0,'Temple',0,0,0),(68,1176,-1,1,0,'Majkl_Jovanovic',29,1,172,1142.12,-1092.88,28.188,2180.95,-567.4,1502.01,750000,5,0,2,12,18,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Temple',0,1,0),(69,1175,-1,1,0,'Glen_Coreli',0,1,361,1127.96,-1021.17,34.992,-1036.53,-2205.94,1501.09,1000000,5,1,3,7,19,0,0,0,0,0,0,0,0,0,3000,0,0,0,0,'Temple',0,0,0),(70,2702,-1,1,0,'Petkovic_Aleksandar',0,1,50,1118.05,-1021.66,34.992,-1036.53,-2205.94,1501.09,1000000,5,1,3,7,20,24,0,0,0,100,0,0,0,0,0,0,0,0,0,'Temple',0,0,0),(71,2573,-1,1,0,'Jakov_Miro',0,1,1,1103.4,-1069.68,31.89,2180.95,-567.4,1502.01,750000,5,0,2,12,21,0,0,0,0,0,0,0,0,49,0,4,5,4,0,'Temple',0,1,0),(72,2126,-1,1,0,'Marko_Basaric',0,1,2,1068.43,-1081.41,27.523,2180.95,-567.4,1502.01,750000,5,0,2,12,22,0,0,0,0,0,0,0,0,0,0,0,2,0,0,'Temple',0,0,0),(74,2126,-1,1,0,'Marko_Basaric',500000,1,2,1103.41,-1092.52,28.469,2180.95,-567.4,1502.01,750000,5,1,2,12,23,24,34,31,26,498,143,180,100,0,0,4,5,4,0,'Temple',0,0,0),(75,2677,-1,1,0,'Cole_Vukojevic',0,1,6,1051.1,-1059.3,34.797,-1036.53,-2205.94,1501.09,1000000,5,1,3,7,24,0,0,0,0,0,0,0,0,260,0,4,5,4,0,'Temple',0,1000,0),(76,-1,-1,0,0,'Drzava',2000,1,0,993.783,-1059.03,33.7,-1036.53,-2205.94,1501.09,1000000,5,0,3,7,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Temple',0,1000,0),(77,1192,-1,1,0,'Clauf_Dollitle',0,1,26,1325.95,-1067.7,31.555,2180.95,-567.4,1502.01,750000,5,0,2,12,26,0,0,0,0,0,0,0,0,181,0,4,5,4,0,'Temple',0,500,0),(78,1175,-1,1,0,'Glen_Coreli',0,1,361,1326.27,-1090.65,27.977,2180.95,-567.4,1502.01,750000,5,0,2,12,27,0,0,0,0,0,0,0,0,528,6000,0,0,0,0,'Temple',0,0,0),(79,1211,-1,1,0,'Adnan_Corlleone',0,2,153,1505.38,-1061.18,25.063,1281.03,-36.4,1000.92,350000,3,0,0,5,28,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Mulholland Intersection',0,0,0),(80,1835,-1,1,0,'Viktor_Zivkovic',0,2,57,1509.61,-1061.18,25.063,1281.03,-36.4,1000.92,350000,3,0,0,5,29,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Mulholland Intersection',0,0,0),(81,-1,-1,0,1,'Drzava',0,2,0,1513.99,-1061.18,25.063,1281.03,-36.4,1000.92,350000,3,0,0,5,30,0,0,0,0,0,0,0,0,0,0,1,0,0,0,'Mulholland Intersection',0,0,0),(82,2186,-1,1,0,'Edo_Corelli',0,2,0,1546.26,-1096.93,25.063,1281.03,-36.4,1000.92,350000,3,1,0,5,31,0,0,0,0,0,0,0,0,300,0,4,5,4,0,'Mulholland Intersection',0,0,0),(97,-1,-1,0,0,'Drzava',0,2,0,1187.44,-1261.01,15.18,1281.03,-36.4,1000.92,350000,3,1,0,5,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Market',0,0,0),(98,-1,-1,0,0,'Drzava',0,2,0,1179.89,-1261.04,15.18,1281.03,-36.4,1000.92,350000,3,1,0,5,33,0,0,0,0,0,0,0,0,0,0,4,5,4,0,'Market',0,0,0),(99,1981,-1,1,0,'Kimi_Johnson',0,2,222,1187.36,-1254.75,15.18,1281.03,-36.4,1000.92,350000,3,0,0,5,34,24,31,0,25,162,115,0,100,0,0,0,0,0,0,'Market',0,1000,0),(100,-1,-1,0,0,'Drzava',0,2,0,1179.81,-1254.85,15.18,1281.03,-36.4,1000.92,350000,3,1,0,5,35,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Market',0,0,0),(101,-1,-1,0,0,'Drzava',0,2,0,1187.36,-1254.7,18.891,1281.03,-36.4,1000.92,350000,3,1,0,5,36,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Market',0,0,0),(102,1068,-1,1,0,'Almin_Koma',0,2,239,1179.81,-1254.8,18.891,1281.03,-36.4,1000.92,350000,3,1,0,5,37,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Market',0,0,0),(103,-1,-1,0,1,'Drzava',0,2,0,1179.89,-1261.07,18.898,1281.03,-36.4,1000.92,350000,3,0,0,5,38,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Market',0,0,0),(104,-1,-1,0,0,'Drzava',4000,2,0,1187.44,-1261.05,18.898,1281.03,-36.4,1000.92,350000,3,1,0,5,39,0,0,0,0,0,0,0,0,0,0,1,1,1,0,'Market',0,1000,2),(105,-1,-1,0,1,'Drzava',0,2,0,1071.47,-1440.64,13.548,1281.03,-36.4,1000.92,350000,3,1,0,5,40,0,0,0,0,0,0,0,0,0,0,2,2,2,0,'Market',0,0,0),(106,1068,-1,1,0,'Almin_Koma',0,2,239,1070.46,-1449.75,13.544,1281.03,-36.4,1000.92,350000,3,0,0,5,41,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Market',0,0,0),(107,1957,-1,1,0,'Jasko_Omerovic',0,2,2,1069.51,-1458.58,13.546,1281.03,-36.4,1000.92,350000,3,1,0,5,42,0,0,0,0,0,0,0,0,0,0,4,5,4,0,'Market',0,0,0),(108,43,-1,1,0,'Ognjen_Miticc',0,2,195,1068.03,-1467.15,13.542,1281.03,-36.4,1000.92,350000,3,0,0,5,43,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Market',0,0,0),(109,-1,-1,0,0,'Drzava',0,2,0,1065.29,-1477.27,13.544,1281.03,-36.4,1000.92,350000,3,0,0,5,44,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Market',0,0,0),(110,-1,-1,0,0,'Drzava',0,2,0,1063.03,-1485.59,13.546,1281.03,-36.4,1000.92,350000,3,1,0,5,45,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Market',0,0,0),(111,-1,-1,0,0,'Drzava',0,2,0,1057.18,-1507.28,13.555,1281.03,-36.4,1000.92,350000,3,1,0,5,46,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Market',0,0,0),(112,-1,-1,0,0,'Drzava',0,2,0,1054.86,-1515.94,13.563,1281.03,-36.4,1000.92,350000,3,1,0,5,47,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Market',0,0,0),(113,-1,-1,0,0,'Drzava',0,2,0,1052.58,-1524.49,13.556,1281.03,-36.4,1000.92,350000,3,1,0,5,48,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Market',0,0,0),(114,1952,-1,1,0,'Miljan_Maksimovic',0,2,268,1050.89,-1532.54,13.546,1281.03,-36.4,1000.92,350000,3,0,0,5,49,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Market',0,0,0),(115,1861,-1,1,0,'Matke_Markovic',0,1,57,880.081,-1424.82,14.484,-1036.53,-2205.94,1501.09,1000000,5,1,3,7,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Marina',0,0,0),(116,1453,-1,1,0,'Mateo_Dunder',0,1,99,852.189,-1423.27,14.137,-1036.53,-2205.94,1501.09,1000000,5,0,3,7,51,31,34,0,0,200,254,0,0,523,0,0,0,0,0,'Marina',0,0,0),(117,2460,-1,1,0,'Aldin_Fusko',0,1,28,824.468,-1424.2,14.499,-1036.53,-2205.94,1501.09,1000000,5,0,3,7,52,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Marina',0,0,0),(118,-1,-1,0,1,'Drzava',0,1,0,813.682,-1456.75,14.228,2180.95,-567.4,1502.01,750000,5,0,2,12,53,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Marina',0,250,0),(119,-1,-1,0,0,'Drzava',0,1,0,841.313,-1471.36,14.314,2180.95,-567.4,1502.01,750000,5,0,2,12,54,0,0,0,0,0,0,0,0,0,0,4,5,4,0,'Marina',0,0,0),(120,2099,-1,1,0,'Igor_Milanovic',0,1,2,900.222,-1447.43,14.371,2180.95,-567.4,1502.01,750000,5,1,2,12,55,31,24,31,25,200,100,441,100,0,0,4,5,4,0,'Marina',0,1000,0),(121,-1,-1,0,0,'Drzava',0,1,0,900.208,-1471.03,14.344,2180.95,-567.4,1502.01,750000,5,0,2,12,56,0,0,0,0,0,0,0,0,180,0,0,0,0,0,'Marina',0,0,0),(122,1947,-1,1,0,'Matija_Young',1,1,4,901.743,-1514.66,14.364,2180.95,-567.4,1502.01,750000,5,0,2,12,57,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Marina',0,0,0),(123,964,-1,1,0,'Christian_Grey',500000,1,242,876.209,-1512.77,14.349,2180.95,-567.4,1502.01,750000,5,0,2,12,58,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Marina',0,0,0),(124,1010,-1,1,0,'Luka_Vukicevic',0,1,79,849.59,-1520.01,14.348,2180.95,-567.4,1502.01,750000,5,0,2,12,59,0,0,0,0,0,0,0,0,0,0,4,1,1,0,'Marina',0,0,0),(125,1902,-1,1,0,'Aca_Zlatko',0,1,357,822.323,-1505.51,14.398,2180.95,-567.4,1502.01,750000,5,0,2,12,60,0,0,0,0,0,0,0,0,57,0,4,5,4,0,'Marina',0,0,0),(126,-1,-1,0,0,'Drzava',0,1,0,782.782,-1464.6,13.547,2180.95,-567.4,1502.01,750000,5,1,2,12,61,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Marina',0,0,0),(127,1364,-1,1,0,'Filip_Tanaskovic',0,1,81,784.4,-1435.94,13.547,2180.95,-567.4,1502.01,750000,5,0,2,12,62,0,0,0,0,0,0,0,0,0,0,4,5,4,0,'Marina',0,0,0),(128,2577,-1,1,0,'Jovan_Jovisic',70,1,30,771.157,-1510.57,13.547,2180.95,-567.4,1502.01,750000,5,1,2,12,63,29,31,24,0,200,200,200,0,100,0,4,5,4,0,'Marina',0,10,0),(129,920,-1,1,0,'Bojan_Milidragovic',0,1,55,761.055,-1564.24,13.929,2180.95,-567.4,1502.01,750000,5,0,2,12,64,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Marina',0,0,0),(131,-1,-1,0,0,'Drzava',0,1,0,766.923,-1605.81,13.804,-2169.97,-2135.96,1501.1,500000,5,0,1,8,65,0,0,0,0,0,0,0,0,0,0,1,1,1,0,'Marina',0,1000,0),(132,-1,-1,0,0,'Drzava',0,1,0,697.279,-1627.02,3.749,-2169.97,-2135.96,1501.1,500000,5,1,1,8,66,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Marina',0,0,0),(133,-1,-1,0,0,'Drzava',0,1,0,693.759,-1645.83,4.094,-2169.97,-2135.96,1501.1,500000,5,1,1,8,67,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Marina',0,0,0),(134,-1,-1,0,0,'Drzava',0,1,0,694.918,-1690.73,4.346,-2169.97,-2135.96,1501.1,500000,5,1,1,8,68,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Marina',0,0,0),(135,536,-1,1,0,'Nermin_Maestro',0,1,1,693.545,-1705.94,3.819,-2169.97,-2135.96,1501.1,500000,5,1,1,8,69,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Marina',0,0,0),(136,-1,-1,0,1,'Drzava',100000,1,0,653.587,-1714.01,14.765,-2169.97,-2135.96,1501.1,500000,5,1,1,8,70,0,0,0,0,0,0,0,0,0,0,1,1,1,0,'Marina',0,100,0),(137,2208,-1,1,0,'Matija_Mihailovic',0,1,449,652.663,-1693.82,14.544,-2169.97,-2135.96,1501.1,500000,5,1,1,8,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Marina',0,0,0),(138,2460,-1,1,0,'Aldin_Fusko',0,1,28,657.228,-1652.54,15.406,-2169.97,-2135.96,1501.1,500000,5,1,1,8,72,0,0,0,0,0,0,0,0,0,0,4,5,4,0,'Marina',0,100,0),(139,2501,-1,1,0,'Almedin_Fusko',0,1,104,656.119,-1635.87,15.862,-2169.97,-2135.96,1501.1,500000,5,1,1,8,73,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Marina',0,0,0),(140,-1,-1,0,0,'Drzava',0,1,0,653.244,-1619.86,15,-2169.97,-2135.96,1501.1,500000,5,0,1,8,74,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Marina',0,0,0),(141,-1,-1,0,0,'Drzava',0,1,0,660.437,-1599.85,15,-2169.97,-2135.96,1501.1,500000,5,0,1,8,75,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Marina',0,0,0),(142,1361,-1,1,0,'Jovan_Capone',0,1,286,692.858,-1602.77,15.047,-2169.97,-2135.96,1501.1,500000,5,0,1,8,76,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Marina',0,0,0),(150,2092,-1,1,0,'Ronoro_Zoro',0,2,2,657.41,-1481.29,14.852,1281.03,-36.4,1000.92,350000,3,1,0,5,77,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Marina',0,0,0),(153,1725,-1,1,0,'Jan_Grujic',0,2,499,657.452,-1528.46,14.852,1281.03,-36.4,1000.92,350000,3,1,0,5,78,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Marina',0,0,0),(155,-1,-1,0,0,'Drzava',0,1,0,2847.25,-1309.98,14.668,2180.95,-567.4,1502.01,750000,5,0,2,12,79,0,0,0,0,0,0,0,0,0,0,4,5,4,0,'East Beach',0,1000,0),(156,-1,-1,0,0,'Drzava',0,1,0,2842.11,-1334.8,14.742,2180.95,-567.4,1502.01,750000,5,1,2,12,80,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'East Beach',0,0,0),(157,434,-1,1,0,'Toni_Leap',3000,1,30,2851.85,-1365.87,14.171,-1036.53,-2205.94,1501.09,1000000,5,0,3,7,81,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'East Beach',0,1000,0),(158,1938,-1,1,0,'Uros_Antonijevic',0,1,5,1332.19,-633.475,109.135,-1036.53,-2205.94,1501.09,1000000,5,1,3,7,82,34,31,31,31,500,400,400,500,0,0,4,5,4,0,'Mulholland',0,1000,0),(159,1192,-1,1,0,'Clauf_Dollitle',0,1,26,2808.15,-1190.89,25.339,2180.95,-567.4,1502.01,750000,5,1,2,12,83,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'East Beach',0,0,0),(160,1604,-1,1,0,'John_Dollitle',0,1,167,2807.97,-1175.92,25.384,2180.95,-567.4,1502.01,750000,5,0,2,12,84,0,0,0,0,0,0,0,0,0,0,4,5,4,0,'East Beach',0,0,0),(161,-1,-1,0,0,'Drzava',0,2,0,2750.39,-1222.37,64.602,1281.03,-36.4,1000.92,350000,3,1,0,5,85,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'East Beach',0,0,0),(162,-1,-1,0,0,'Drzava',0,2,0,2750.39,-1238.8,61.525,1281.03,-36.4,1000.92,350000,3,1,0,5,86,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'East Beach',0,0,0),(163,1620,-1,1,0,'Nicki_Reed',0,1,2,1112.64,-742.04,100.133,2180.95,-567.4,1502.01,750000,5,0,2,12,87,0,0,0,0,0,0,0,0,0,0,4,5,4,0,'Mulholland',0,1000,0),(164,891,-1,1,0,'Nemanja_Stijovic',0,1,459,1093.83,-807.145,107.42,2180.95,-567.4,1502.01,750000,5,0,2,12,88,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Mulholland',0,0,0),(165,-1,-1,0,0,'Drzava',0,1,0,1017.01,-763.361,112.563,2180.95,-567.4,1502.01,750000,5,0,2,12,89,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Mulholland',0,0,0),(166,1081,-1,1,0,'Kemal_Pajser',0,1,26,977.447,-771.718,112.203,2180.95,-567.4,1502.01,750000,5,0,2,12,90,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Mulholland',0,1,0),(168,53,-1,1,0,'Rambo_Jonshon',125,1,74,848.023,-745.546,94.969,2180.95,-567.4,1502.01,750000,5,0,2,12,91,0,0,0,0,0,0,0,0,0,0,1,1,1,0,'Mulholland',0,100,1),(169,1081,-1,1,0,'Kemal_Pajser',0,1,26,867.63,-717.629,105.68,2180.95,-567.4,1502.01,750000,5,0,2,12,92,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Mulholland',0,0,0),(170,1937,-1,1,0,'Kristina_Radivojevic',0,1,2,897.843,-677.233,116.89,2180.95,-567.4,1502.01,750000,5,1,2,12,93,0,0,0,0,0,0,0,0,0,0,4,5,4,0,'Mulholland',0,666,0),(171,2186,-1,1,0,'Edo_Corelli',0,1,0,946.22,-710.559,122.62,-2169.97,-2135.96,1501.1,500000,5,1,1,8,94,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Mulholland',0,0,0),(172,1933,-1,1,0,'Aleksa_Walker',0,1,1,980.496,-677.259,121.976,-1036.53,-2205.94,1501.09,1000000,5,0,3,7,95,0,0,0,0,0,0,0,0,0,0,4,5,4,0,'Mulholland',0,0,0),(173,527,-1,1,0,'Phoenix_Cappone',0,1,1,1045.15,-642.943,120.117,-1036.53,-2205.94,1501.09,1000000,5,0,3,7,96,24,0,0,0,300,0,0,0,1310,0,4,5,4,0,'Mulholland',0,0,0),(174,824,-1,1,0,'John_Vasquez',0,1,2,1095.06,-647.915,113.648,-1036.53,-2205.94,1501.09,1000000,5,0,3,7,97,0,0,0,0,0,0,0,0,0,10000,4,5,4,0,'Mulholland',0,1000,1),(176,665,-1,1,0,'Alex_Connelly',0,1,102,808.258,-759.37,76.531,2180.95,-567.4,1502.01,750000,5,0,2,12,98,0,0,0,0,0,0,0,0,0,0,1,1,1,0,'Mulholland',0,1000,0),(177,-1,-1,0,1,'Drzava',0,1,0,2091.07,-1277.84,26.18,-2169.97,-2135.96,1501.1,500000,5,0,1,8,99,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Jefferson',0,0,0),(178,1571,-1,1,0,'Dare_Dollitle',0,1,240,785.923,-828.412,70.29,-2169.97,-2135.96,1501.1,500000,5,0,1,8,100,0,0,0,0,0,0,0,0,0,0,4,5,4,0,'Mulholland',0,0,0),(179,414,-1,1,0,'Ilija_Ved',0,1,51,2132.21,-1280.05,25.891,-2169.97,-2135.96,1501.1,500000,5,0,1,8,101,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Jefferson',0,0,0),(180,33,-1,1,0,'Milan_Vasquez',0,1,176,2150.11,-1285.04,24.527,-2169.97,-2135.96,1501.1,500000,5,0,1,8,102,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Jefferson',0,0,0),(181,1426,-1,1,0,'Vawik_Corleone',0,1,123,2148.43,-1320.07,26.074,-2169.97,-2135.96,1501.1,500000,5,0,1,8,103,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Jefferson',0,0,0),(182,2445,-1,1,0,'Copeone_Grubor',0,1,34,2126.76,-1320.86,26.624,2180.95,-567.4,1502.01,750000,5,0,2,12,104,0,0,0,0,0,0,0,0,0,0,4,4,4,0,'Jefferson',0,1000,0),(183,7,-1,1,0,'Pejca',7,1,37,300.275,-1154.48,81.391,-1036.53,-2205.94,1501.09,1000000,5,0,3,7,105,0,0,0,0,0,0,0,0,0,0,4,5,4,0,'Richman',0,1,0),(184,-1,-1,0,1,'Drzava',0,1,0,2100.85,-1321.89,25.953,-2169.97,-2135.96,1501.1,500000,5,1,1,8,106,0,0,0,0,0,0,0,0,0,0,4,2,4,0,'Jefferson',0,1,0),(185,-1,-1,0,0,'Drzava',0,1,0,2090.89,-1235.17,26.019,-2169.97,-2135.96,1501.1,500000,5,0,1,8,107,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Jefferson',0,0,0),(186,31,-1,1,0,'.momenzi',10,1,339,251.381,-1220.25,76.102,-1036.53,-2205.94,1501.09,1000000,5,0,3,7,108,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Richman',0,1,1),(187,72,-1,1,0,'Saiyan_Barzini',0,1,222,2110.94,-1244.4,25.852,-2169.97,-2135.96,1501.1,500000,5,0,1,8,109,0,0,0,0,0,0,0,0,0,0,4,5,4,0,'Jefferson',0,0,0),(188,-1,-1,0,0,'Drzava',0,1,0,2133.52,-1233,24.422,-2169.97,-2135.96,1501.1,500000,5,1,1,8,110,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Jefferson',0,0,0),(189,434,-1,1,0,'Toni_Leap',36017,1,30,253.296,-1269.94,74.43,-1036.53,-2205.94,1501.09,1000000,5,0,3,7,111,0,4,31,29,0,1,325,200,600,0,1,0,0,0,'Richman',0,1,5),(190,638,-1,1,0,'Bojan_Cappone',0,1,107,219.125,-1249.88,78.337,-1036.53,-2205.94,1501.09,1000000,5,0,3,7,112,0,0,0,0,0,0,0,0,0,0,4,5,4,0,'Richman',0,0,-1),(191,2445,-1,1,0,'Copeone_Grubor',0,1,34,2153.75,-1243.81,25.367,-2169.97,-2135.96,1501.1,500000,5,0,1,8,113,0,0,0,0,0,0,0,0,0,0,4,1,4,0,'Jefferson',0,0,0),(192,646,-1,1,0,'Marko_Escobar',808,1,3,254.364,-1367.1,53.109,-1036.53,-2205.94,1501.09,1000000,5,0,3,7,114,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Richman',0,100,0),(193,439,-1,1,0,'Rico_Payne',0,1,26,298.868,-1338.49,53.442,-1036.53,-2205.94,1501.09,1000000,5,0,3,7,115,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Richman',0,0,0),(194,-1,-1,0,0,'Drzava',0,1,0,2191.84,-1239.23,24.488,-2169.97,-2135.96,1501.1,500000,5,1,1,8,116,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Jefferson',0,0,0),(195,-1,-1,0,0,'Drzava',0,1,0,2209.76,-1240.25,24.48,-2169.97,-2135.96,1501.1,500000,5,1,1,8,117,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Jefferson',0,0,0),(196,-1,-1,0,0,'Drzava',290,1,0,355.179,-1281.14,53.704,-2169.97,-2135.96,1501.1,500000,5,0,1,8,118,0,0,0,0,0,0,0,0,0,0,3,4,1,0,'Richman',0,10,0),(197,891,-1,1,0,'Nemanja_Stijovic',0,1,459,345.079,-1298.08,50.759,-2169.97,-2135.96,1501.1,500000,5,1,1,8,119,0,0,0,0,0,0,0,0,0,0,4,5,4,0,'Rodeo',0,0,0),(198,1055,-1,1,0,'Viktor_Bujisic',3503124,1,74,2229.6,-1241.61,25.656,-2169.97,-2135.96,1501.1,500000,5,0,1,8,120,0,0,0,0,0,0,0,0,0,0,4,5,1,0,'Jefferson',0,500,-1),(199,1861,-1,1,0,'Matke_Markovic',20,1,57,2249.91,-1238.91,25.898,-2169.97,-2135.96,1501.1,500000,5,0,1,8,121,0,0,0,0,0,0,0,0,0,0,4,5,4,0,'Jefferson',0,1,0),(200,353,-1,1,0,'Depay_Wizzard',0,1,5,398.253,-1271.33,50.02,2180.95,-567.4,1502.01,750000,5,1,2,12,122,29,31,0,0,170,200,0,0,53,1017,2,1,1,0,'Richman',0,10,0),(201,381,-1,1,0,'Bilan_Mitevski',0,1,3,2250.21,-1280.05,25.477,-2169.97,-2135.96,1501.1,500000,5,0,1,8,123,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Jefferson',0,0,0),(202,-1,-1,0,1,'Drzava',76,1,0,431.926,-1254.01,51.581,2180.95,-567.4,1502.01,750000,5,0,2,12,124,0,0,0,0,0,0,0,0,0,0,2,0,0,0,'Richman',0,1,3),(203,2240,-1,1,0,'Andrija_Coreli',0,1,2,2230.14,-1280.08,25.629,-2169.97,-2135.96,1501.1,500000,5,1,1,8,125,25,0,0,0,47,0,0,0,0,0,4,5,4,0,'Jefferson',0,1,0),(204,72,-1,1,0,'Saiyan_Barzini',0,1,222,2207.89,-1280.82,25.121,-2169.97,-2135.96,1501.1,500000,5,1,1,8,126,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Jefferson',0,0,0),(205,1047,-1,1,0,'Sale_Cezarr',0,1,384,552.888,-1200.3,44.832,2180.95,-567.4,1502.01,750000,5,0,2,12,127,33,0,0,0,50,0,0,0,0,0,4,5,4,0,'Richman',0,0,0),(206,1171,-1,1,0,'Savic_Nikola',3860001,1,14,2191.58,-1275.6,25.156,-2169.97,-2135.96,1501.1,500000,5,1,1,8,128,24,25,0,0,100,50,0,0,177,0,4,5,4,0,'Jefferson',0,1,1),(207,-1,-1,0,0,'Drzava',0,1,0,612.38,-1085.77,58.827,2180.95,-567.4,1502.01,750000,5,1,2,12,129,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Richman',0,0,0),(208,1036,-1,1,0,'Ajla_Escobar',0,2,108,2352,-1170.67,28.075,1281.03,-36.4,1000.92,350000,3,1,0,5,130,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'East Los Santos',0,0,0),(209,-1,-1,0,0,'Drzava',5106532,1,0,648.408,-1058.6,52.58,-2169.97,-2135.96,1501.1,500000,5,0,1,8,131,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Richman',0,10,1),(210,2126,-1,1,0,'Marko_Basaric',0,1,2,700.302,-1060.25,49.422,2180.95,-567.4,1502.01,750000,5,0,2,12,132,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Richman',0,0,0),(211,-1,-1,0,0,'Drzava',0,2,0,2334.4,-1203.99,27.977,1281.03,-36.4,1000.92,350000,3,0,0,5,133,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'East Los Santos',0,0,0),(212,1067,-1,1,0,'Zumrey_Halley',0,1,178,673.181,-1020.06,55.76,-2169.97,-2135.96,1501.1,500000,5,0,1,8,134,0,0,0,0,0,0,0,0,0,0,1,5,1,0,'Richman',0,0,0),(213,8,-1,1,0,'Capone',24,1,122,724.847,-999.462,52.734,-2169.97,-2135.96,1501.1,500000,5,0,1,8,135,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Richman',0,1,3),(214,-1,-1,0,0,'Drzava',0,1,0,2373.93,-1138.92,29.059,-2169.97,-2135.96,1501.1,500000,5,1,1,8,136,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'East Los Santos',0,0,0),(215,-1,-1,0,0,'Drzava',0,1,0,2394.84,-1133.54,30.719,-2169.97,-2135.96,1501.1,500000,5,0,1,8,137,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Las Colinas',0,0,0),(216,-1,-1,0,0,'Drzava',0,1,0,2427.45,-1135.77,34.711,-2169.97,-2135.96,1501.1,500000,5,0,1,8,138,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'East Los Santos',0,0,0),(217,-1,-1,0,0,'Drzava',0,1,0,2488,-1135.24,39.586,-2169.97,-2135.96,1501.1,500000,5,1,1,8,139,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'East Los Santos',0,0,0),(218,-1,-1,0,0,'Drzava',0,1,0,2510.57,-1132.54,41.621,-2169.97,-2135.96,1501.1,500000,5,1,1,8,140,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Las Colinas',0,0,0),(220,2599,-1,1,0,'Steph_Wilson',10004,1,8,836.053,-894.924,68.769,-1036.53,-2205.94,1501.09,1000000,5,1,3,7,141,24,31,29,34,499,184,200,75,100,10000,4,5,4,0,'Mulholland',0,1,-2),(221,-1,-1,0,0,'Drzava',0,1,0,2438.62,-1105.79,43.082,-2169.97,-2135.96,1501.1,500000,5,1,1,8,142,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Las Colinas',0,0,0),(222,-1,-1,0,0,'Drzava',0,1,0,910.305,-817.598,103.126,2180.95,-567.4,1502.01,750000,5,0,2,12,143,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Mulholland',0,0,0),(223,-1,-1,0,0,'Drzava',0,1,0,2407.89,-1106.97,40.296,-2169.97,-2135.96,1501.1,500000,5,1,1,8,144,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Las Colinas',0,0,0),(224,2322,-1,1,0,'Tarik_Pajser',0,1,386,924.083,-853.387,93.457,-2169.97,-2135.96,1501.1,500000,5,0,1,8,145,0,0,0,0,0,0,0,0,0,0,4,5,4,0,'Mulholland',0,0,-1),(225,-1,-1,0,1,'Drzava',0,1,0,937.974,-848.616,93.584,-2169.97,-2135.96,1501.1,500000,5,0,1,8,146,0,0,0,0,0,0,0,0,0,0,4,5,4,0,'Mulholland',0,999,0),(226,-1,-1,0,0,'Drzava',0,1,0,2457.02,-1102.5,43.867,-2169.97,-2135.96,1501.1,500000,5,0,1,8,147,0,0,0,0,0,0,0,0,22,0,4,5,4,0,'Las Colinas',0,0,0),(227,-1,-1,0,0,'Drzava',0,1,0,2470.7,-1105.32,44.488,-2169.97,-2135.96,1501.1,500000,5,1,1,8,148,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Las Colinas',0,0,0),(228,676,-1,1,0,'Danijel_Cobanov',1,1,125,989.889,-828.605,95.469,-2169.97,-2135.96,1501.1,500000,5,0,1,8,149,25,22,5,0,50,100,1,0,0,0,4,5,4,0,'Mulholland',0,10,0),(229,-1,-1,0,0,'Drzava',0,1,0,2519.03,-1112.98,56.593,-2169.97,-2135.96,1501.1,500000,5,0,1,8,150,0,0,0,0,0,0,0,0,0,0,0,1,0,0,'Las Colinas',0,0,0),(230,1364,-1,1,0,'Filip_Tanaskovic',0,1,81,2572.38,-1091.78,67.226,-2169.97,-2135.96,1501.1,500000,5,1,1,8,151,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Las Colinas',0,0,0),(231,-1,-1,0,0,'Drzava',0,1,0,2576.68,-1070.74,69.832,-2169.97,-2135.96,1501.1,500000,5,1,1,8,152,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Las Colinas',0,0,0),(232,230,-1,1,0,'Danijel_Tunicc',11,1,122,1034.86,-813.166,101.852,-2169.97,-2135.96,1501.1,500000,5,0,1,8,153,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Mulholland',0,1,0),(233,-1,-1,0,1,'Drzava',0,3,0,2579.59,-1033.2,69.58,-407.353,-2086.5,1501.1,300000,5,0,0,7,154,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Las Colinas',0,200,0),(234,638,-1,1,0,'Bojan_Cappone',0,3,107,2562.1,-1034.41,69.869,-407.353,-2086.5,1501.1,300000,5,0,0,7,155,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Las Colinas',0,0,0),(235,-1,-1,0,0,'Drzava',0,3,0,2549.21,-1032.2,69.579,-407.353,-2086.5,1501.1,300000,5,0,0,7,156,0,0,0,0,0,0,0,0,0,0,0,1,0,0,'Las Colinas',0,0,0),(236,1175,-1,1,0,'Glen_Coreli',0,3,361,2526.81,-1033.53,69.579,-407.353,-2086.5,1501.1,300000,5,1,0,7,157,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Las Colinas',0,0,0),(237,-1,-1,0,1,'Drzava',0,3,0,2512.83,-1027.16,70.086,-407.353,-2086.5,1501.1,300000,5,0,0,7,158,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Las Colinas',0,0,0),(238,-1,-1,0,1,'Drzava',0,3,0,2499.75,-1065.57,70.236,-407.353,-2086.5,1501.1,300000,5,0,0,7,159,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Las Colinas',0,0,-1),(239,1866,-1,1,0,'Motherxx_Cappone',0,3,425,2526.09,-1060.71,69.971,-407.353,-2086.5,1501.1,300000,5,0,0,7,160,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Las Colinas',0,0,0),(240,-1,-1,0,0,'Drzava',0,3,0,2534.48,-1063.46,69.565,-407.353,-2086.5,1501.1,300000,5,1,0,7,161,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Las Colinas',0,0,0),(241,2208,-1,1,0,'Matija_Mihailovic',0,3,449,2491.35,-1012.34,65.398,-407.353,-2086.5,1501.1,300000,5,0,0,7,162,0,0,0,0,0,0,0,0,2,0,4,5,4,0,'Las Colinas',0,0,0),(242,33,-1,1,0,'Milan_Vasquez',0,3,176,2479.65,-1064.05,66.998,-407.353,-2086.5,1501.1,300000,5,0,0,7,163,0,0,0,0,0,0,0,0,0,0,1,0,0,0,'Las Colinas',0,0,0),(243,1860,-1,1,0,'Milica_Ljubicic',0,3,294,2457.77,-1054.56,59.959,-407.353,-2086.5,1501.1,300000,5,1,0,7,164,0,0,0,0,0,0,0,0,0,0,4,5,4,0,'Las Colinas',0,0,0),(244,-1,-1,0,1,'Drzava',0,3,0,2462.48,-1011.14,60.114,-407.353,-2086.5,1501.1,300000,5,0,0,7,165,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Las Colinas',0,0,0),(245,2196,-1,1,0,'El_Patreon',4551,3,361,2439.9,-1010.87,54.344,-407.353,-2086.5,1501.1,300000,5,0,0,7,166,0,24,0,0,0,200,0,0,74,1500,4,5,4,0,'Las Colinas',0,0,0),(246,-1,-1,0,0,'Drzava',0,3,0,2454.19,-964.945,80.073,-407.353,-2086.5,1501.1,300000,5,1,0,7,167,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Las Colinas',0,0,0),(247,-1,-1,0,0,'Drzava',0,3,0,2459.4,-947.701,80.083,-407.353,-2086.5,1501.1,300000,5,0,0,7,168,4,0,0,0,1,0,0,0,0,0,1,5,0,0,'Las Colinas',0,50,0),(248,1485,-1,1,0,'Daddy_Yanke',0,3,3,2472.39,-962.371,80.525,-407.353,-2086.5,1501.1,300000,5,1,0,7,169,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Las Colinas',0,0,0),(249,-1,-1,0,1,'Drzava',0,3,0,2492.1,-965.621,82.549,-407.353,-2086.5,1501.1,300000,5,0,0,7,170,0,0,0,0,0,0,0,0,0,0,1,1,1,0,'Las Colinas',0,1000,0),(250,1286,-1,1,0,'Amil_Johnson',0,3,341,2499.41,-946.995,82.471,-407.353,-2086.5,1501.1,300000,5,0,0,7,171,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Las Colinas',0,0,0),(251,-1,-1,0,0,'Drzava',0,3,0,2517.86,-965.261,82.328,-407.353,-2086.5,1501.1,300000,5,1,0,7,172,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Las Colinas',0,0,-1),(252,-1,-1,0,0,'Drzava',0,3,0,2552.4,-958.315,82.633,-407.353,-2086.5,1501.1,300000,5,1,0,7,173,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Las Colinas',0,0,0),(253,2675,-1,1,0,'Jovan_Dimitrijevic',0,3,121,2581.5,-969.319,81.365,-407.353,-2086.5,1501.1,300000,5,1,0,7,174,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Las Colinas',0,0,0),(254,-1,-1,0,1,'Drzava',0,3,0,2582.9,-952.932,81.388,-407.353,-2086.5,1501.1,300000,5,1,0,7,175,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Las Colinas',0,0,0),(255,-1,-1,0,0,'Drzava',0,1,0,2628.11,-1067.97,69.716,2180.95,-567.4,1502.01,750000,5,1,2,12,176,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Las Colinas',0,0,0),(256,-1,-1,0,0,'Drzava',0,1,0,2627.65,-1085.15,69.716,2180.95,-567.4,1502.01,750000,5,1,2,12,177,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Las Colinas',0,0,0),(257,-1,-1,0,0,'Drzava',0,1,0,2625.93,-1098.72,69.359,2180.95,-567.4,1502.01,750000,5,1,2,12,178,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Las Colinas',0,0,0),(258,-1,-1,0,0,'Drzava',0,1,0,2625.94,-1112.61,67.995,2180.95,-567.4,1502.01,750000,5,1,2,12,179,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Las Colinas',0,0,0),(259,1937,-1,1,0,'Kristina_Radivojevic',0,1,2,768.078,-1656.01,5.609,-2169.97,-2135.96,1501.1,500000,5,1,1,8,180,0,0,0,0,0,0,0,0,0,0,4,5,4,0,'Marina',0,0,0),(302,1021,-1,1,0,'Petar_Tomac',0,2,377,893.758,-1635.86,14.93,1281.03,-36.4,1000.92,350000,3,0,0,5,181,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Verona Beach',0,0,0),(304,-1,-1,0,1,'Drzava',0,2,0,865.448,-1633.85,14.93,1281.03,-36.4,1000.92,350000,3,0,0,5,182,0,33,0,0,0,20,0,0,0,0,0,0,0,0,'Verona Beach',0,0,0),(309,513,-1,1,0,'Stefi_King',0,2,98,883.126,-1800.39,13.802,1281.03,-36.4,1000.92,350000,3,0,0,5,183,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Verona Beach',0,0,0),(310,2046,-1,1,0,'Cobex_Shock',0,2,411,866.871,-1798.96,13.816,1281.03,-36.4,1000.92,350000,3,0,0,5,184,0,0,0,0,0,0,0,0,0,0,4,5,4,0,'Verona Beach',0,0,0),(311,338,-1,1,0,'Starcevic_Barzini',3,2,53,910.402,-1802.7,13.801,1281.03,-36.4,1000.92,350000,3,0,0,5,185,0,0,0,0,0,0,0,0,0,0,4,0,0,0,'Verona Beach',0,1,1),(313,-1,-1,0,0,'Drzava',100000,2,0,921.625,-1803.85,13.838,1281.03,-36.4,1000.92,350000,3,0,0,5,186,0,0,0,0,0,0,0,0,0,0,4,5,4,0,'Verona Beach',0,0,0),(315,-1,-1,0,1,'Drzava',0,2,0,933.578,-1805.2,13.843,1281.03,-36.4,1000.92,350000,3,0,0,5,187,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Verona Beach',0,0,0),(317,2033,-1,1,0,'Stefan_Duric',0,2,290,957.666,-1809.07,13.881,1281.03,-36.4,1000.92,350000,3,0,0,5,188,0,0,0,0,0,0,0,0,0,0,4,5,4,0,'Verona Beach',0,0,0),(319,2049,-1,1,0,'Marko_Crevar',0,2,109,969.647,-1812.04,13.884,1281.03,-36.4,1000.92,350000,3,0,0,5,189,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Verona Beach',0,0,0),(320,2425,-1,1,0,'Filip_Makocevic',0,2,99,980.903,-1814.81,13.889,1281.03,-36.4,1000.92,350000,3,0,0,5,190,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Verona Beach',0,0,0),(322,2677,-1,1,0,'Cole_Vukojevic',0,2,7,992.591,-1817.62,13.894,1281.03,-36.4,1000.92,350000,3,1,0,5,191,0,0,0,0,0,0,0,0,0,10000,4,5,4,0,'Verona Beach',0,1,0),(333,381,-1,1,0,'Bilan_Mitevski',0,1,3,2523.27,-1679.27,15.497,-2169.97,-2135.96,1501.1,500000,5,0,1,8,192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ganton',0,0,0),(334,-1,-1,0,0,'Drzava',0,1,0,2514.36,-1691.56,14.046,-2169.97,-2135.96,1501.1,500000,5,1,1,8,193,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ganton',0,0,0),(335,625,-1,1,0,'Kyrie_Irving',0,1,51,2459.51,-1691.66,13.545,-2169.97,-2135.96,1501.1,500000,5,0,1,8,194,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ganton',0,0,0),(336,-1,-1,0,0,'Drzava',0,1,0,2469.6,-1646.35,13.78,-2169.97,-2135.96,1501.1,500000,5,0,1,8,195,0,0,0,0,0,0,0,0,0,0,4,5,4,0,'Ganton',0,1000,0),(337,2036,-1,1,0,'Jovan_Warrior',0,1,5,2486.45,-1644.54,14.077,2180.95,-567.4,1502.01,750000,5,0,2,12,196,0,0,0,0,0,0,0,0,0,0,4,5,4,0,'Ganton',0,0,0),(338,-1,-1,0,0,'Drzava',0,1,0,2498.53,-1642.25,14.113,-2169.97,-2135.96,1501.1,500000,5,0,1,8,197,0,0,0,0,0,0,0,0,50,0,0,0,0,0,'Ganton',0,100,0),(339,381,-1,1,0,'Bilan_Mitevski',0,1,3,2513.73,-1650.26,14.356,-2169.97,-2135.96,1501.1,500000,5,0,1,8,198,0,0,0,0,0,0,0,0,0,1013,4,5,4,0,'Ganton',0,300,0),(340,-1,-1,0,0,'Drzava',0,1,0,2451.97,-1641.41,14.066,-2169.97,-2135.96,1501.1,500000,5,0,1,8,199,0,0,0,0,0,0,0,0,0,0,1,1,1,0,'Ganton',0,1000,0),(341,1108,-1,1,0,'Bane_Vedrox',0,1,78,2413.84,-1646.79,14.012,-2169.97,-2135.96,1501.1,500000,5,0,1,8,200,25,0,0,0,50,0,0,0,21,0,2,5,0,0,'Ganton',0,500,0),(342,-1,-1,0,0,'Drzava',5000,1,0,2409.01,-1674.94,14.375,-2169.97,-2135.96,1501.1,500000,5,0,1,8,201,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ganton',0,1000,1),(343,-1,-1,0,0,'Drzava',0,1,0,2393.2,-1646.03,13.905,-2169.97,-2135.96,1501.1,500000,5,0,1,8,202,0,0,0,0,0,0,0,0,0,0,4,5,4,0,'Ganton',0,500,0),(344,2286,-1,1,0,'Harex_Bro',0,1,76,2384.63,-1675.83,15.246,-2169.97,-2135.96,1501.1,500000,5,0,1,8,203,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ganton',0,0,0),(345,-1,-1,0,0,'Drzava',0,1,0,2362.82,-1643.15,14.352,-2169.97,-2135.96,1501.1,500000,5,1,1,8,204,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ganton',0,0,0),(346,180,-1,1,0,'Bado_Gallardo',0,1,102,2368.31,-1675.34,14.168,-2169.97,-2135.96,1501.1,500000,5,0,1,8,205,0,0,0,0,0,0,0,0,0,0,4,5,4,0,'Ganton',0,500,0),(347,-1,-1,0,0,'Drzava',0,1,0,2326.89,-1681.98,14.93,-2169.97,-2135.96,1501.1,500000,5,0,1,8,206,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ganton',0,0,0),(348,-1,-1,0,0,'Drzava',0,1,0,2385.46,-1711.66,14.242,-2169.97,-2135.96,1501.1,500000,5,0,1,8,207,0,0,0,0,0,0,0,0,0,0,4,5,4,0,'Ganton',0,1000,0),(349,-1,-1,0,0,'Drzava',0,1,0,2402.55,-1714.99,14.133,-2169.97,-2135.96,1501.1,500000,5,1,1,8,208,0,0,0,0,0,0,0,0,0,0,4,5,4,0,'Ganton',0,0,0),(350,-1,-1,0,0,'Drzava',0,1,0,2326.7,-1716.7,14.238,-2169.97,-2135.96,1501.1,500000,5,1,1,8,209,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ganton',0,500,0),(351,-1,-1,0,0,'Drzava',0,1,0,2308.85,-1714.33,14.98,-2169.97,-2135.96,1501.1,500000,5,0,1,8,210,31,31,33,0,162,83,47,0,0,0,4,5,4,0,'Ganton',0,0,0),(352,-1,-1,0,0,'Drzava',0,1,0,2306.97,-1679.2,14.332,-2169.97,-2135.96,1501.1,500000,5,1,1,8,211,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ganton',0,0,0),(353,1768,-1,1,0,'Bato_Auschwitz',12697,1,272,2067.05,-1731.67,14.207,-2169.97,-2135.96,1501.1,500000,5,0,1,8,212,0,0,0,0,0,0,0,0,0,0,4,5,4,0,'Idlewood',0,300,0),(354,-1,-1,0,0,'Drzava',0,1,0,2066.24,-1717.12,14.136,-2169.97,-2135.96,1501.1,500000,5,1,1,8,213,0,0,0,0,0,0,0,0,0,0,4,5,4,0,'Idlewood',0,0,0),(355,1565,-1,1,0,'Veljko_Aleksic',0,1,82,2065.1,-1703.55,14.148,-2169.97,-2135.96,1501.1,500000,5,0,1,8,214,0,0,0,0,0,0,0,0,0,0,1,5,1,0,'Idlewood',0,0,0),(356,-1,-1,0,0,'Drzava',0,1,0,2066.74,-1656.55,14.133,-2169.97,-2135.96,1501.1,500000,5,0,1,8,215,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Idlewood',0,0,0),(357,1078,-1,1,0,'Djokenzi_Djoka',0,1,4,2067.56,-1643.77,14.136,-2169.97,-2135.96,1501.1,500000,5,0,1,8,216,0,0,0,0,0,0,0,0,100,0,0,0,0,0,'Idlewood',0,0,0),(358,-1,-1,0,0,'Drzava',0,1,0,2067.7,-1628.84,14.207,-2169.97,-2135.96,1501.1,500000,5,0,1,8,217,0,0,0,0,0,0,0,0,0,0,4,5,4,0,'Idlewood',0,0,0),(359,-1,-1,0,0,'Drzava',0,1,0,2018.05,-1629.9,14.043,-2169.97,-2135.96,1501.1,500000,5,1,1,8,218,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Idlewood',0,0,0),(360,-1,-1,0,0,'Drzava',0,1,0,2016.54,-1641.71,14.113,-2169.97,-2135.96,1501.1,500000,5,1,1,8,219,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Idlewood',0,0,0),(361,-1,-1,0,0,'Drzava',0,1,0,2013.58,-1656.33,14.136,-2169.97,-2135.96,1501.1,500000,5,1,1,8,220,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Idlewood',0,0,0),(362,-1,-1,0,0,'Drzava',35,1,0,2018.23,-1703.2,14.234,-2169.97,-2135.96,1501.1,500000,5,1,1,8,221,0,0,0,0,0,0,0,0,0,0,4,5,4,0,'Idlewood',0,1000,1),(363,2425,-1,1,0,'Filip_Makocevic',0,1,99,2016.19,-1716.9,14.125,-2169.97,-2135.96,1501.1,500000,5,1,1,8,222,46,0,0,0,1,0,0,0,7,0,4,5,4,0,'Idlewood',0,0,-1),(364,-1,-1,0,0,'Drzava',0,1,0,2015.35,-1732.54,14.234,-2169.97,-2135.96,1501.1,500000,5,1,1,8,223,0,0,0,0,0,0,0,0,0,0,4,5,4,0,'Idlewood',0,1,0),(365,-1,-1,0,0,'Drzava',0,1,0,1980.38,-1718.97,17.03,2180.95,-567.4,1502.01,750000,5,1,2,12,224,0,0,0,0,0,0,0,0,0,0,4,5,4,0,'Idlewood',0,0,0),(366,-1,-1,0,0,'Drzava',0,1,0,1980.99,-1682.82,17.054,2180.95,-567.4,1502.01,750000,5,1,2,12,225,0,0,0,0,0,0,0,0,0,0,1,0,0,0,'Idlewood',0,0,0),(367,1808,0,1,0,'Brajan_Castelo',0,1,78,315.756,-1769.44,4.621,-1036.53,-2205.94,1501.09,1000000,5,1,3,7,226,0,0,0,0,0,0,0,0,200,0,4,5,4,0,'Santa Maria Beach',0,999,0),(369,2180,0,1,0,'Marko_Blazevski',1095,1,271,295.262,-1764.12,4.868,-2169.97,-2135.96,1501.1,500000,5,1,1,8,227,0,0,0,0,0,0,0,0,0,0,4,5,4,0,'Santa Maria Beach',0,100,0),(370,-1,0,0,1,'Drzava',0,1,0,280.888,-1767.27,4.551,2180.95,-567.4,1502.01,750000,5,0,2,12,228,0,0,0,0,0,0,0,0,0,0,4,5,4,0,'Santa Maria Beach',0,1,0),(374,1741,0,1,0,'David_Destigo',0,1,79,206.976,-1768.88,4.37,2180.95,-567.4,1502.01,750000,5,0,2,12,229,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Santa Maria Beach',0,0,0),(375,1650,0,1,0,'Stefan_Malaz',3,1,0,192.778,-1769.4,4.329,-2169.97,-2135.96,1501.1,500000,5,1,1,8,230,0,0,0,0,0,0,0,0,1000,0,2,3,1,0,'Santa Maria Beach',0,1,0),(376,2568,0,1,0,'Mrki_Gonzalez',7000,1,10,167.766,-1758.94,6.797,2180.95,-567.4,1502.01,750000,5,0,2,12,231,0,24,0,0,0,100,0,0,21,0,1,0,1,0,'Santa Maria Beach',0,1000,1),(377,879,0,1,0,'Buster_Connelly',0,2,14,685.416,-1421.91,14.775,1281.03,-36.4,1000.92,350000,3,1,0,5,232,0,0,0,0,0,0,0,0,0,0,4,5,4,0,'Marina',0,0,0),(378,2576,0,1,0,'Boris_Dankuc',10000,1,52,797.235,-1729.2,13.547,2180.95,-567.4,1502.01,750000,5,0,2,12,233,4,31,0,0,1,349,0,0,30,10000,4,5,4,0,'Marina',0,0,0),(379,-1,0,0,0,'Drzava',0,1,0,794.143,-1707.57,14.038,-2169.97,-2135.96,1501.1,500000,5,0,1,8,234,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Marina',0,0,0),(380,-1,0,0,0,'Drzava',0,1,0,795.025,-1692.09,14.463,-2169.97,-2135.96,1501.1,500000,5,0,1,8,235,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Marina',0,0,0),(381,-1,0,0,1,'Drzava',0,1,0,790.927,-1661.14,13.485,2180.95,-567.4,1502.01,750000,5,0,2,12,236,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Marina',0,0,0),(383,1935,0,1,0,'Aki_Malenovic',0,1,50,769.228,-1696.56,5.155,-2169.97,-2135.96,1501.1,500000,5,1,1,8,237,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Marina',0,0,0),(384,1938,0,1,0,'Uros_Antonijevic',0,1,5,769.227,-1745.86,13.077,2180.95,-567.4,1502.01,750000,5,1,2,12,238,0,0,0,0,0,0,0,0,0,0,4,5,4,0,'Marina',0,0,0),(385,-1,0,0,0,'Drzava',0,1,0,768.965,-1726.23,13.432,-2169.97,-2135.96,1501.1,500000,5,0,1,8,239,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Marina',0,0,0),(386,-1,0,0,0,'Drzava',0,1,0,1895.4,-2068.92,15.669,-2169.97,-2135.96,1501.1,500000,5,0,1,8,240,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'El Corona',0,0,0),(387,-1,0,0,0,'Drzava',0,1,0,1873.51,-2070.76,15.497,-2169.97,-2135.96,1501.1,500000,5,0,1,8,241,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'El Corona',0,0,0),(388,-1,0,0,0,'Drzava',0,1,0,1851.85,-2070.45,15.481,-2169.97,-2135.96,1501.1,500000,5,0,1,8,242,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'El Corona',0,0,0),(389,-1,0,0,1,'Drzava',1100045,1,0,1804.12,-2124.9,13.942,-2169.97,-2135.96,1501.1,500000,5,1,1,8,243,0,0,0,0,0,0,0,0,0,0,2,5,4,0,'El Corona',0,5,2),(390,2359,0,1,0,'Milan_Savic',0,1,2,1782.17,-2126.51,14.068,-2169.97,-2135.96,1501.1,500000,5,0,1,8,244,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'El Corona',0,0,0),(391,1860,0,1,0,'Milica_Ljubicic',0,1,294,1781.53,-2101.45,14.057,-2169.97,-2135.96,1501.1,500000,5,0,1,8,245,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'El Corona',0,0,0),(392,-1,0,0,0,'Drzava',0,1,0,1801.83,-2098.94,14.021,-2169.97,-2135.96,1501.1,500000,5,0,1,8,246,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'El Corona',0,0,0),(393,-1,0,0,0,'Drzava',0,1,0,1762.41,-2101.99,13.857,-2169.97,-2135.96,1501.1,500000,5,0,1,8,247,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'El Corona',0,0,0),(394,-1,0,0,1,'Drzava',0,1,0,1761.32,-2125.45,14.057,-2169.97,-2135.96,1501.1,500000,5,0,1,8,248,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'El Corona',0,0,0),(395,-1,0,0,0,'Drzava',0,1,0,1734.06,-2097.98,14.037,-2169.97,-2135.96,1501.1,500000,5,0,1,8,249,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'El Corona',0,0,0),(396,-1,0,0,0,'Drzava',100000,1,0,1734.63,-2130.21,14.021,-2169.97,-2135.96,1501.1,500000,5,0,1,8,250,0,0,0,0,0,0,0,0,0,0,4,5,4,0,'El Corona',0,0,0),(397,-1,0,0,0,'Drzava',0,1,0,1715.07,-2125.45,14.057,-2169.97,-2135.96,1501.1,500000,5,0,1,8,251,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'El Corona',0,0,0),(398,2173,0,1,0,'Max_Smith',0,1,220,1711.62,-2101.45,14.021,-2169.97,-2135.96,1501.1,500000,5,0,1,8,252,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'El Corona',0,0,0),(399,1875,0,1,0,'Dejan_Sowa',0,1,386,1684.9,-2098.16,13.834,-2169.97,-2135.96,1501.1,500000,5,1,1,8,253,26,26,24,26,96,495,295,140,0,0,0,0,0,0,'Verdant Bluffs',0,0,0),(400,-1,0,0,0,'Drzava',0,1,0,1673.83,-2122.34,14.146,-2169.97,-2135.96,1501.1,500000,5,0,1,8,254,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Verdant Bluffs',0,0,0),(401,-1,0,0,0,'Drzava',0,1,0,1667.39,-2106.94,14.072,-2169.97,-2135.96,1501.1,500000,5,0,1,8,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Verdant Bluffs',0,0,0),(402,-1,0,0,0,'Drzava',0,1,0,1695.38,-2125.83,13.81,-2169.97,-2135.96,1501.1,500000,5,0,1,8,256,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'El Corona',0,0,0),(404,-1,0,0,0,'Drzava',0,1,0,2257.1,-1643.94,15.808,-2169.97,-2135.96,1501.1,500000,5,0,1,8,257,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ganton',0,0,0),(405,155,0,1,0,'Damke_Black',0,1,76,2282.21,-1641.21,15.89,-2169.97,-2135.96,1501.1,500000,5,0,1,8,258,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ganton',0,0,0),(406,1341,0,1,0,'Luka_Castello',0,1,109,1540.47,-851.31,64.336,-2169.97,-2135.96,1501.1,500000,5,1,1,8,259,0,0,0,0,0,0,0,0,0,0,4,5,4,0,'Mulholland Intersection',0,1000,0),(407,856,0,1,0,'Luka_Caponee',0,1,335,1468.66,-906.178,54.836,2180.95,-567.4,1502.01,750000,5,0,2,12,260,26,0,0,0,100,0,0,0,0,0,4,5,4,0,'Mulholland Intersection',0,1,0),(408,2574,0,1,0,'Danijel_Salvatore',10100,1,327,1421.86,-886.23,50.686,-2169.97,-2135.96,1501.1,500000,5,0,1,8,261,0,0,0,0,0,0,0,0,62,0,4,5,4,0,'Mulholland',0,0,0),(409,972,0,1,0,'Andrej_Escobar',0,1,3,1535.04,-800.202,72.849,-2169.97,-2135.96,1501.1,500000,5,1,1,8,262,0,0,0,0,0,0,0,0,0,0,4,5,4,0,'Mulholland Intersection',0,1000,0),(410,-1,0,0,1,'Drzava',1000,1,0,1527.86,-772.621,80.578,-2169.97,-2135.96,1501.1,500000,5,0,1,8,263,0,0,0,0,0,0,0,0,0,0,4,5,4,0,'Mulholland Intersection',0,0,1),(411,2,0,1,0,'Kristijan',0,1,313,1496.98,-687.892,95.563,-1036.53,-2205.94,1501.09,1000000,5,0,3,7,264,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Mulholland',0,0,0),(412,2322,0,1,0,'Tarik_Pajser',300,3,386,795.2,-506.149,18.013,-407.353,-2086.5,1501.1,1,5,0,0,7,265,0,0,0,0,0,0,0,0,0,0,2,1,2,0,'Dillimore',0,100,1),(413,2124,0,1,0,'Jovan_Mihailovic',0,1,359,791.501,-1753.21,13.461,2180.95,-567.4,1502.01,750000,5,0,2,12,266,0,0,0,0,0,0,0,0,0,0,4,5,4,0,'Marina',0,100,0),(414,2,0,1,0,'Kristijan',0,1,313,-2552.09,2266.45,5.476,-1036.53,-2205.94,1501.09,1000000,5,0,3,7,267,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Bayside',0,0,0),(415,1081,0,1,0,'Kemal_Pajser',0,1,26,189.639,-1308.17,70.249,-1036.53,-2205.94,1501.09,1,5,0,3,7,268,0,0,0,0,0,0,0,0,0,0,4,5,0,0,'Richman',0,0,0),(416,46,0,1,0,'Ghetoven',0,1,4,154.249,-1946.62,5.39,-1036.53,-2205.94,1501.09,1000000,5,1,3,7,269,0,0,0,0,0,0,0,0,0,0,4,5,4,0,'Santa Maria Beach',0,0,0),(417,-1,0,0,1,'Drzava',0,1,0,2244.5,-1637.63,16.238,-2169.97,-2135.96,1501.1,500000,5,0,1,8,270,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ganton',0,0,0),(418,1528,0,1,0,'Nik_Gonzales',0,1,1,228.022,-1405.48,51.609,2180.95,-567.4,1502.01,750000,5,0,2,12,271,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Rodeo',0,0,0),(419,966,0,1,0,'Jasmin_Meskovic',20,1,76,1442.63,-628.831,95.719,-1036.53,-2205.94,1501.09,1000000,5,1,3,7,272,25,33,24,0,43,41,90,0,0,0,0,0,0,0,'Mulholland',0,1,4),(420,1300,-1,1,0,'Petar_Cappone',0,1,27,1440.63,-926.132,39.648,2180.95,-567.4,1502.01,750000,5,0,2,12,273,0,0,0,0,0,0,0,0,0,0,0,1,1,0,'Mulholland',0,0,0),(421,-1,-1,0,1,'Drzava',0,1,0,1411.19,-920.874,38.422,2180.95,-567.4,1502.01,750000,5,0,2,12,274,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Mulholland',0,0,0),(422,-1,-1,0,0,'Drzava',0,2,0,1280.86,-874.85,46.844,1281.03,-36.4,1000.92,350000,3,0,0,5,275,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Mulholland',0,0,0),(423,-1,-1,0,0,'Drzava',0,2,0,1288.35,-873.857,46.844,1281.03,-36.4,1000.92,350000,3,0,0,5,276,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Mulholland',0,0,0),(424,-1,-1,0,0,'Drzava',0,2,0,1280.04,-868.62,46.836,1281.03,-36.4,1000.92,350000,3,0,0,5,277,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Mulholland',0,0,0),(425,-1,-1,0,0,'Drzava',0,2,0,1287.54,-867.714,46.836,1281.03,-36.4,1000.92,350000,3,0,0,5,278,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Mulholland',0,0,0),(426,-1,-1,0,1,'Drzava',1,2,0,1291.03,-896.867,46.625,1281.03,-36.4,1000.92,350000,3,1,0,5,279,0,0,0,0,0,0,0,0,0,0,4,5,4,0,'Mulholland',0,50,0),(427,2290,-1,1,0,'Tadija_Crnojevic',0,2,434,1283.53,-897.829,46.625,1281.03,-36.4,1000.92,350000,3,0,0,5,280,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Mulholland',0,0,0),(428,-1,-1,0,0,'Drzava',0,2,0,1284.35,-904.086,46.633,1281.03,-36.4,1000.92,350000,3,0,0,5,281,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Mulholland',0,0,0),(429,1833,-1,1,0,'Felix_Eskobar',0,2,173,1291.84,-903.061,46.633,1281.03,-36.4,1000.92,350000,3,0,0,5,282,24,0,0,0,100,0,0,0,80,0,0,0,0,0,'Mulholland',0,0,0),(430,1047,-1,1,0,'Sale_Cezarr',0,2,384,1252.89,-901.877,46.594,1281.03,-36.4,1000.92,350000,3,0,0,5,283,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Mulholland',0,0,0),(431,2240,-1,1,0,'Andrija_Coreli',0,2,2,1253.7,-908.096,46.602,1281.03,-36.4,1000.92,350000,3,0,0,5,284,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Mulholland',0,0,0),(432,2675,-1,1,0,'Jovan_Dimitrijevic',3,2,122,1246.22,-909.049,46.602,1281.03,-36.4,1000.92,350000,3,0,0,5,285,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Mulholland',0,999,0),(433,-1,-1,0,0,'Drzava',0,2,0,1245.41,-902.862,46.594,1281.03,-36.4,1000.92,350000,3,0,0,5,286,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Mulholland',0,0,0),(434,-1,-1,0,0,'Drzava',0,2,0,1242.12,-878.257,46.641,1281.03,-36.4,1000.92,350000,3,0,0,5,287,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Mulholland',0,0,0),(435,-1,-1,0,0,'Drzava',0,2,0,1249.61,-877.314,46.641,1281.03,-36.4,1000.92,350000,3,0,0,5,288,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Mulholland',0,0,0),(436,-1,-1,0,0,'Drzava',0,2,0,1248.8,-871.134,46.633,1281.03,-36.4,1000.92,350000,3,0,0,5,289,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Mulholland',0,0,0),(437,-1,-1,0,0,'Drzava',0,2,0,1241.3,-872.054,46.633,1281.03,-36.4,1000.92,350000,3,0,0,5,290,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Mulholland',0,0,0),(438,1047,-1,1,0,'Sale_Cezarr',0,1,384,416.676,-1154.06,76.688,-1036.53,-2205.94,1501.09,1000000,5,0,3,7,291,0,0,0,0,0,0,0,0,0,0,4,5,4,0,'Richman',0,0,0),(440,2625,-1,1,0,'Pesta_Bling',203,1,51,891.206,-783.148,101.314,-1036.53,-2205.94,1501.09,1000000,5,1,3,7,292,0,0,0,0,0,0,0,0,0,0,4,5,4,0,'Mulholland',0,200,1),(441,-1,0,0,1,'Drzava',0,3,0,870.415,-24.93,63.985,-407.353,-2086.5,1501.1,300000,5,0,0,7,293,24,0,0,0,499,0,0,0,0,0,4,5,4,0,'Fern Ridge',0,1000,0),(445,920,0,1,0,'Bojan_Milidragovic',0,1,55,1905.98,-1112.95,26.664,-2169.97,-2135.96,1501.1,500000,5,0,1,8,294,0,0,0,0,0,0,0,0,0,0,1,1,1,0,'Glen Park',0,0,0),(446,-1,0,0,0,'Drzava',0,1,0,1885.88,-1113.59,26.276,-2169.97,-2135.96,1501.1,500000,5,0,1,8,295,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Glen Park',0,0,0),(447,2702,0,1,0,'Petkovic_Aleksandar',0,1,50,1921.3,-1115.13,27.088,-2169.97,-2135.96,1501.1,500000,5,0,1,8,296,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Glen Park',0,0,0),(448,-1,0,0,1,'Drzava',0,1,0,1939.12,-1114.49,27.452,-2169.97,-2135.96,1501.1,500000,5,0,1,8,297,0,0,0,0,0,0,0,0,0,0,4,5,4,0,'Glen Park',0,0,0),(449,-1,0,0,0,'Drzava',0,1,0,1955.12,-1115.36,27.83,-2169.97,-2135.96,1501.1,500000,5,0,1,8,298,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Glen Park',0,0,0),(450,2263,0,1,0,'Bojan_Coreli',0,1,5,2000.03,-1114.06,27.125,-2169.97,-2135.96,1501.1,500000,5,1,1,8,299,34,24,0,0,68,373,0,0,95,0,1,0,0,0,'Glen Park',0,0,0),(451,-1,0,0,1,'Drzava',0,1,0,2022.92,-1120.27,26.421,-2169.97,-2135.96,1501.1,500000,5,1,1,8,300,0,0,0,0,0,0,0,0,0,0,4,5,4,0,'Glen Park',0,0,0),(452,2144,0,1,0,'Braca_Dumanovic',0,1,4,2045.47,-1116.65,26.362,-2169.97,-2135.96,1501.1,500000,5,1,1,8,301,0,0,0,0,0,0,0,0,0,0,4,5,4,0,'Glen Park',0,1000,0),(453,2702,0,1,0,'Petkovic_Aleksandar',0,2,50,1471.37,-1178.08,23.922,1281.03,-36.4,1000.92,350000,3,1,0,5,302,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Downtown Los Santos',0,0,0),(454,1,0,1,0,'Saco',0,2,3,1370.81,-1316.09,13.547,1281.03,-36.4,1000.92,350000,3,0,0,5,303,0,0,0,0,0,0,0,0,0,0,4,5,4,0,'Downtown Los Santos',0,0,0),(455,150,0,1,0,'Ahmet_Castellano',0,2,3,1370.81,-1320.16,13.547,1281.03,-36.4,1000.92,350000,3,0,0,5,304,0,0,0,0,0,0,0,0,0,0,4,5,4,0,'Downtown Los Santos',0,1,0),(456,1413,0,1,0,'Leon_Ultimate',0,2,223,1370.81,-1341.27,13.547,1281.03,-36.4,1000.92,350000,3,0,0,5,305,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Downtown Los Santos',0,0,0),(457,-1,0,0,1,'Drzava',0,2,0,1370.81,-1361.45,13.547,1281.03,-36.4,1000.92,350000,3,0,0,5,306,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Downtown Los Santos',0,0,0),(458,527,0,1,0,'Phoenix_Cappone',0,2,1,1370.81,-1365.47,13.547,1281.03,-36.4,1000.92,350000,3,0,0,5,307,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Downtown Los Santos',0,0,0),(461,2208,0,1,0,'Matija_Mihailovic',15000,1,403,1535.81,-885.339,57.657,2180.95,-567.4,1502.01,750000,5,0,2,12,308,0,0,0,0,0,0,0,0,0,0,4,5,4,0,'Mulholland Intersection',0,500,-3),(463,-1,-1,0,0,'Drzava',0,2,0,1187.44,-1233.32,22.141,1281.03,-36.4,1000.92,350000,3,0,0,5,309,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Market',0,0,0),(464,-1,-1,0,0,'Drzava',0,2,0,1179.89,-1233.37,22.141,1281.03,-36.4,1000.92,350000,3,0,0,5,310,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Market',0,0,0),(465,-1,-1,0,0,'Drzava',0,2,0,1179.81,-1227.16,22.133,1281.03,-36.4,1000.92,350000,3,0,0,5,311,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Market',0,0,0),(466,-1,-1,0,0,'Drzava',0,2,0,1187.36,-1227.07,22.133,1281.03,-36.4,1000.92,350000,3,1,0,5,312,0,0,0,0,0,0,0,0,0,0,4,5,4,0,'Market',0,0,0),(467,-1,-1,0,0,'Drzava',0,2,0,1187.36,-1227.21,18.555,1281.03,-36.4,1000.92,350000,3,1,0,5,313,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Market',0,0,0),(468,-1,-1,0,0,'Drzava',0,2,0,1187.44,-1233.32,18.555,1281.03,-36.4,1000.92,350000,3,0,0,5,314,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Market',0,0,0),(469,-1,-1,0,0,'Drzava',0,2,0,1179.89,-1233.41,18.555,1281.03,-36.4,1000.92,350000,3,0,0,5,315,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Market',0,0,0),(470,-1,-1,0,0,'Drzava',0,2,0,1179.81,-1227.12,18.555,1281.03,-36.4,1000.92,350000,3,0,0,5,316,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Market',0,0,0),(471,-1,-1,0,1,'Drzava',0,2,0,1189.01,-1018.01,32.547,1281.03,-36.4,1000.92,350000,3,1,0,5,317,0,0,0,0,0,0,0,0,0,0,4,5,4,0,'Temple',0,0,0),(472,-1,-1,0,0,'Drzava',0,2,0,1188.18,-1011.8,32.547,1281.03,-36.4,1000.92,350000,3,0,0,5,318,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Temple',0,0,0),(473,-1,-1,0,0,'Drzava',0,2,0,1195.67,-1010.87,32.553,1281.03,-36.4,1000.92,350000,3,0,0,5,319,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Temple',0,0,0),(474,-1,-1,0,1,'Drzava',0,2,0,1196.5,-1017.09,32.547,1281.03,-36.4,1000.92,350000,3,0,0,5,320,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Temple',0,0,0),(475,-1,-1,0,0,'Drzava',0,2,0,2750.38,-1205.72,67.484,1281.03,-36.4,1000.92,350000,3,0,0,5,321,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'East Beach',0,0,0),(476,-1,-1,0,0,'Drzava',0,2,0,2756.32,-1182.79,69.403,1281.03,-36.4,1000.92,350000,3,0,0,5,322,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'East Beach',0,0,0),(478,-1,-1,0,0,'Drzava',0,1,0,2797.86,-1245.37,47.385,-2169.97,-2135.96,1501.1,500000,5,0,1,8,323,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'East Beach',0,0,0),(479,-1,0,0,0,'Drzava',0,1,0,2782.15,-1281.24,44.372,-2169.97,-2135.96,1501.1,500000,5,0,1,8,324,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'East Beach',0,0,0),(480,-1,0,0,0,'Drzava',0,1,0,2809.53,-1280.98,43.903,-2169.97,-2135.96,1501.1,500000,5,0,1,8,325,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'East Beach',0,0,0),(481,-1,0,0,0,'Drzava',0,1,0,2809.53,-1303.01,38.924,-2169.97,-2135.96,1501.1,500000,5,0,1,8,326,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'East Beach',0,0,0),(482,-1,0,0,0,'Drzava',0,1,0,2782.15,-1306.28,38.889,-2169.97,-2135.96,1501.1,500000,5,0,1,8,327,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'East Beach',0,0,0),(483,-1,0,0,0,'Drzava',0,1,0,2809.53,-1324.86,33.867,-2169.97,-2135.96,1501.1,500000,5,0,1,8,328,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'East Beach',0,0,0),(484,-1,0,0,0,'Drzava',0,1,0,2781.94,-1333.39,32.399,-2169.97,-2135.96,1501.1,500000,5,0,1,8,329,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'East Beach',0,0,0),(485,-1,0,0,0,'Drzava',0,1,0,2807.98,-1353.92,27.219,-2169.97,-2135.96,1501.1,500000,5,0,1,8,330,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'East Beach',0,0,0),(486,-1,0,0,0,'Drzava',0,1,0,2781.94,-1358.43,26.371,-2169.97,-2135.96,1501.1,500000,5,0,1,8,331,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'East Beach',0,0,0),(487,-1,0,0,0,'Drzava',0,1,0,2807.99,-1369.65,23.583,-2169.97,-2135.96,1501.1,500000,5,0,1,8,332,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'East Beach',0,0,0),(488,-1,-1,0,0,'Drzava',0,1,0,2550.29,-1197.53,60.843,-2169.97,-2135.96,1501.1,500000,5,0,1,8,333,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'East Los Santos',0,0,0),(489,-1,-1,0,0,'Drzava',0,1,0,2520.68,-1198,56.599,-2169.97,-2135.96,1501.1,500000,5,0,1,8,334,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'East Los Santos',0,0,0),(490,-1,-1,0,0,'Drzava',0,1,0,2467.66,-1200.41,36.812,-2169.97,-2135.96,1501.1,500000,5,0,1,8,335,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'East Los Santos',0,0,0),(491,-1,-1,0,0,'Drzava',0,1,0,2472.91,-1238.12,32.569,-2169.97,-2135.96,1501.1,500000,5,0,1,8,336,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'East Los Santos',0,0,0),(492,-1,-1,0,0,'Drzava',0,1,0,2492.12,-1239.02,37.905,-2169.97,-2135.96,1501.1,500000,5,0,1,8,337,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'East Los Santos',0,0,0),(493,1207,-1,1,0,'Anel_Almenitorr',0,1,107,2516.51,-1225.75,39.091,-2169.97,-2135.96,1501.1,500000,5,0,1,8,338,0,31,0,0,0,200,0,0,475,1009,0,0,0,0,'East Los Santos',0,1000,0),(494,-1,-1,0,0,'Drzava',0,1,0,2531.02,-1228.61,43.722,-2169.97,-2135.96,1501.1,500000,5,0,1,8,339,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'East Los Santos',0,0,0),(495,-1,-1,0,0,'Drzava',0,1,0,2550.96,-1233.79,49.332,-2169.97,-2135.96,1501.1,500000,5,0,1,8,340,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'East Los Santos',0,0,0),(496,-1,-1,0,0,'Drzava',0,1,0,2469.18,-1278.36,30.366,-2169.97,-2135.96,1501.1,500000,5,0,1,8,341,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'East Los Santos',0,0,0),(497,-1,-1,0,0,'Drzava',0,1,0,2470.37,-1295.53,30.233,-2169.97,-2135.96,1501.1,500000,5,0,1,8,342,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'East Los Santos',0,0,0),(498,-1,-1,0,0,'Drzava',0,1,0,2433.6,-1275.03,24.757,-2169.97,-2135.96,1501.1,500000,5,0,1,8,343,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'East Los Santos',0,0,0),(499,-1,-1,0,0,'Drzava',0,1,0,2434.81,-1289.25,25.348,-2169.97,-2135.96,1501.1,500000,5,0,1,8,344,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'East Los Santos',0,0,0),(500,-1,-1,0,0,'Drzava',0,1,0,2433.93,-1303.31,25.323,-2169.97,-2135.96,1501.1,500000,5,0,1,8,345,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'East Los Santos',0,0,0),(501,-1,-1,0,0,'Drzava',0,1,0,2433.94,-1320.69,25.323,-2169.97,-2135.96,1501.1,500000,5,0,1,8,346,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'East Los Santos',0,0,0),(502,-1,-1,0,0,'Drzava',0,1,0,2383.53,-1366.31,24.491,-2169.97,-2135.96,1501.1,500000,5,0,1,8,347,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'East Los Santos',0,0,0),(503,-1,-1,0,0,'Drzava',0,1,0,2389.73,-1346.16,25.077,-2169.97,-2135.96,1501.1,500000,5,0,1,8,348,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'East Los Santos',0,0,0),(504,-1,-1,0,0,'Drzava',0,1,0,2387.86,-1328.5,25.124,-2169.97,-2135.96,1501.1,500000,5,0,1,8,349,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'East Los Santos',0,0,0),(505,2675,-1,1,0,'Jovan_Dimitrijevic',0,1,121,2388.42,-1279.68,25.129,-2169.97,-2135.96,1501.1,500000,5,1,1,8,350,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'East Los Santos',0,0,0),(506,-1,0,0,0,'Drzava',0,3,0,2373.85,-8.632,28.442,-407.353,-2086.5,1501.1,300000,5,1,0,7,351,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Palomino Creek',0,0,0),(507,-1,0,0,1,'Drzava',0,1,0,2111.33,-1278.98,25.836,-2169.97,-2135.96,1501.1,500000,5,0,1,8,352,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Jefferson',0,0,0),(508,2502,0,1,0,'Marci_Koby',5000,1,2,2094.04,-1122.67,27.69,-2169.97,-2135.96,1501.1,500000,5,1,1,8,353,0,0,0,0,0,0,0,0,157,0,4,5,4,0,'Las Colinas',0,0,0),(509,646,0,1,0,'Marko_Escobar',0,1,3,2095.36,-1145.25,26.593,-2169.97,-2135.96,1501.1,500000,5,0,1,8,354,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Jefferson',0,0,0),(510,1645,0,1,0,'Tadija_Filic',0,1,265,2092.24,-1166.5,26.586,-2169.97,-2135.96,1501.1,500000,5,0,1,8,355,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Jefferson',0,0,0),(511,-1,0,0,0,'Drzava',0,1,0,2091.64,-1184.3,27.057,-2169.97,-2135.96,1501.1,500000,5,0,1,8,356,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Jefferson',0,0,0),(512,1938,0,1,0,'Uros_Antonijevic',0,1,5,161.51,-1455.87,32.845,2180.95,-567.4,1502.01,750000,5,0,2,12,357,24,31,0,0,500,450,0,0,1306,0,4,5,4,0,'Rodeo',0,0,0),(513,824,0,1,0,'John_Vasquez',18,1,2,142.634,-1470.37,25.211,2180.95,-567.4,1502.01,750000,5,1,2,12,358,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Rodeo',0,1,0),(514,918,0,1,0,'Pishki_Boris',0,1,355,497.391,-1095.07,82.359,2180.95,-567.4,1502.01,750000,5,0,2,12,359,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Richman',0,0,0),(515,919,0,1,0,'Nemanja_Milivojevic',0,1,355,559.115,-1076.41,72.922,2180.95,-567.4,1502.01,750000,5,0,2,12,360,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Richman',0,0,0),(516,1046,0,1,0,'Emir_Johnson',21000,1,379,645.997,-1117.42,44.207,2180.95,-567.4,1502.01,750000,5,1,2,12,361,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Richman',0,1000,1),(517,1164,-1,1,0,'Nikolic_Stefan',4,1,381,827.792,-857.991,70.331,-2169.97,-2135.96,1501.1,500000,5,0,1,8,362,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Mulholland',0,1,2),(518,1053,0,1,0,'Bube_Novkovic',4060,1,13,874.976,-876.854,77.797,-1036.53,-2205.94,1501.09,1000000,5,1,3,7,363,0,0,0,0,0,0,0,0,220,0,1,0,0,0,'Mulholland',0,1000,0),(519,31,0,1,0,'.momenzi',2000,3,339,500.842,1116.31,15.036,-407.353,-2086.5,1501.1,300000,5,0,0,7,364,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Bone County',0,1000,0),(520,-1,0,0,1,'Drzava',0,1,0,-2793.15,11.109,7.43,-1036.53,-2205.94,1501.09,1000000,5,0,3,7,365,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ocean Flats',0,0,0),(521,-1,0,0,0,'Drzava',0,1,0,-2710.75,967.472,54.461,-1036.53,-2205.94,1501.09,1000000,5,0,3,7,366,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ocean Flats',0,0,0),(522,-1,-1,0,1,'Drzava',2,3,0,743.332,-509.323,18.013,-407.353,-2086.5,1501.1,300000,5,0,0,7,367,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dillimore',0,1,0),(523,-1,-1,0,1,'Drzava',0,3,0,745.193,-556.78,18.013,-407.353,-2086.5,1501.1,300000,5,0,0,7,368,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dillimore',0,0,0),(524,1861,-1,1,0,'Matke_Markovic',0,3,57,736.709,-556.783,18.013,-407.353,-2086.5,1501.1,300000,5,1,0,7,369,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dillimore',0,0,0),(525,1808,-1,1,0,'Brajan_Castelo',0,3,78,768.319,-503.481,18.013,-407.353,-2086.5,1501.1,300000,5,1,0,7,370,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dillimore',0,0,0),(526,2092,-1,1,0,'Ronoro_Zoro',0,3,2,766.609,-556.784,18.013,-407.353,-2086.5,1501.1,300000,5,1,0,7,371,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dillimore',0,0,0),(527,2786,-1,1,0,'Jack_Watana',200,3,2,818.244,-509.321,18.013,-407.353,-2086.5,1501.1,300000,5,0,0,7,372,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dillimore',0,100,1),(528,1776,-1,1,0,'El_Pachino',0,3,380,745.675,-591.129,18.013,-407.353,-2086.5,1501.1,300000,5,0,0,7,373,0,0,0,0,0,0,0,0,0,0,4,5,4,0,'Dillimore',0,0,0),(529,46,-1,1,0,'Ghetoven',0,1,4,2186.89,1113.31,12.654,-1036.53,-2205.94,1501.09,1000000,5,0,3,7,374,0,0,0,0,0,0,0,0,0,0,2,0,0,0,'Come-A-Lot',0,0,0),(530,69,-1,1,0,'.mumitza',0,1,96,2239.05,1285.6,10.82,-1036.53,-2205.94,1501.09,1000000,5,1,3,7,375,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'iloveyou<3',0,0,0),(531,864,-1,1,0,'Marioo',0,1,31,2370.28,569.313,7.799,-1036.53,-2205.94,1501.09,1000000,5,1,3,7,376,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Red County',0,0,0),(532,31,-1,1,0,'.momenzi',0,1,339,2415.42,-52.283,28.154,-1036.53,-2205.94,1501.09,1000000,5,0,3,7,377,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Palomino Creek',0,0,0),(533,1462,-1,1,0,'Ivonica',0,1,268,2438.79,-54.964,28.154,2180.95,-567.4,1502.01,750000,5,0,2,12,378,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Palomino Creek',0,0,0),(534,1,-1,1,0,'Saco',79,1,3,2985.78,-783.537,11.74,-1036.53,-2205.94,1501.09,1000000,5,0,3,7,379,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Los Santos',0,1,3),(535,1192,-1,1,0,'Clauf_Dollitle',0,1,155,854.561,-605.202,18.422,-1036.53,-2205.94,1501.09,1000000,5,0,3,7,380,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dillimore',0,0,0),(536,2092,-1,1,0,'Ronoro_Zoro',0,1,130,1273.95,2522.54,10.82,-1036.53,-2205.94,1501.09,1000000,5,0,3,7,381,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Prickle Pine',0,0,0),(537,1808,-1,1,0,'Brajan_Castelo',0,1,78,952.546,-909.109,45.766,-1036.53,-2205.94,1501.09,1000000,5,0,3,7,382,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Mulholland',0,0,0);
/*!40000 ALTER TABLE `propertys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `punishments`
--

DROP TABLE IF EXISTS `punishments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `punishments` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_user_id` int(11) NOT NULL,
  `p_admin` int(11) NOT NULL,
  `p_reason` varchar(64) NOT NULL,
  `p_jail_min` int(11) NOT NULL,
  `p_money_fine` int(11) NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=879 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `quests`
--

DROP TABLE IF EXISTS `quests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `quests` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `easy_quest_1` tinyint(1) DEFAULT '0',
  `easy_quest_2` tinyint(1) DEFAULT '0',
  `easy_quest_3` tinyint(1) DEFAULT '0',
  `easy_quest_4` tinyint(1) DEFAULT '0',
  `easy_quest_5` tinyint(1) DEFAULT '0',
  `easy_quest_6` tinyint(1) DEFAULT '0',
  `easy_quest_7` tinyint(1) DEFAULT '0',
  `easy_quest_8` tinyint(1) DEFAULT '0',
  `easy_quest_9` tinyint(1) DEFAULT '0',
  `easy_quest_10` tinyint(1) DEFAULT '0',
  `easy_reward_quest_1` tinyint(1) DEFAULT '0',
  `easy_reward_quest_2` tinyint(1) DEFAULT '0',
  `easy_reward_quest_3` tinyint(1) DEFAULT '0',
  `easy_reward_quest_4` tinyint(1) DEFAULT '0',
  `easy_reward_quest_5` tinyint(1) DEFAULT '0',
  `easy_reward_quest_6` tinyint(1) DEFAULT '0',
  `easy_reward_quest_7` tinyint(1) DEFAULT '0',
  `easy_reward_quest_8` tinyint(1) DEFAULT '0',
  `easy_reward_quest_9` tinyint(1) DEFAULT '0',
  `easy_reward_quest_10` tinyint(1) DEFAULT '0',
  `xmas_quest_1` smallint(5) DEFAULT '0',
  `xmas_quest_2` smallint(5) DEFAULT '0',
  `xmas_quest_3` smallint(5) DEFAULT '0',
  `xmas_quest_4` smallint(5) DEFAULT '0',
  `xmas_quest_5` smallint(5) DEFAULT '0',
  `xmas_quest_6` smallint(5) DEFAULT '0',
  `xmas_quest_7` smallint(5) DEFAULT '0',
  `xmas_quest_8` smallint(5) DEFAULT '0',
  `xmas_quest_9` smallint(5) DEFAULT '0',
  `xmas_quest_10` smallint(5) DEFAULT '0',
  `xmas_quest_11` tinyint(1) DEFAULT '0',
  `xmas_quest_12` tinyint(1) DEFAULT '0',
  `xmas_quest_13` tinyint(1) DEFAULT '0',
  `xmas_quest_14` tinyint(1) DEFAULT '0',
  `xmas_quest_15` tinyint(1) DEFAULT '0',
  `xmas_quest_16` smallint(2) DEFAULT '0',
  `xmas_quest_17` tinyint(1) DEFAULT '0',
  `xmas_quest_18` tinyint(1) DEFAULT '0',
  `xmas_quest_19` tinyint(1) DEFAULT '0',
  `xmas_quest_20` tinyint(1) DEFAULT '0',
  `xmas_quest_21` tinyint(1) DEFAULT '0',
  `xmas_quest_22` tinyint(1) DEFAULT '0',
  `xmas_quest_23` tinyint(1) DEFAULT '0',
  `xmas_quest_24` tinyint(1) DEFAULT '0',
  `xmas_quest_25` tinyint(1) DEFAULT '0',
  `xmas_quest_26` tinyint(1) DEFAULT '0',
  `xmas_quest_27` tinyint(1) DEFAULT '0',
  `xmas_quest_28` tinyint(1) DEFAULT '0',
  `xmas_quest_29` tinyint(1) DEFAULT '0',
  `xmas_quest_30` tinyint(1) DEFAULT '0',
  `xmas_quest_31` smallint(2) DEFAULT '0',
  `xmas_quest_32` tinyint(1) DEFAULT '0',
  `xmas_quest_33` tinyint(1) DEFAULT '0',
  `xmas_done_quest_1` tinyint(1) DEFAULT '0',
  `xmas_done_quest_2` tinyint(1) DEFAULT '0',
  `xmas_done_quest_3` tinyint(1) DEFAULT '0',
  `xmas_done_quest_4` tinyint(1) DEFAULT '0',
  `xmas_done_quest_5` tinyint(1) DEFAULT '0',
  `xmas_done_quest_6` tinyint(1) DEFAULT '0',
  `xmas_done_quest_7` tinyint(1) DEFAULT '0',
  `xmas_done_quest_8` tinyint(1) DEFAULT '0',
  `xmas_done_quest_9` tinyint(1) DEFAULT '0',
  `xmas_done_quest_10` tinyint(1) DEFAULT '0',
  `xmas_done_quest_16` tinyint(1) DEFAULT '0',
  `xmas_done_quest_17` tinyint(1) DEFAULT '0',
  `xmas_done_quest_31` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2908 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rents`
--

DROP TABLE IF EXISTS `rents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `rents` (
  `vrSQLID` smallint(6) NOT NULL AUTO_INCREMENT,
  `vrLiP_Pos_X` float NOT NULL,
  `vrLiP_Pos_Y` float NOT NULL,
  `vrLiP_Pos_Z` float NOT NULL,
  `vrSpawn_Pos_X` float NOT NULL,
  `vrSpawn_Pos_Y` float NOT NULL,
  `vrSpawn_Pos_Z` float NOT NULL,
  `vrSpawn_Pos_A` float NOT NULL,
  PRIMARY KEY (`vrSQLID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rents`
--

LOCK TABLES `rents` WRITE;
/*!40000 ALTER TABLE `rents` DISABLE KEYS */;
INSERT INTO `rents` VALUES (1,1545.62,-2270.56,13.546,1550.13,-2269.54,13.544,0.105),(2,1484.14,-1762.52,13.568,1473.6,-1737.14,13.383,89.011),(3,1465.82,-1050.72,24.016,1461.77,-1043.61,23.828,88.551),(4,1176.65,-1336.92,13.587,1183.74,-1338.79,13.566,268.697),(5,912.22,-1233.01,16.977,914.884,-1228.45,16.977,268.819),(6,1828.64,-1426.63,13.602,1837.16,-1433.88,13.563,269.759),(7,1956.73,-2183.69,13.547,1960.71,-2183.34,13.547,359.454),(9,1847.36,-1871.68,13.578,1841.09,-1870.59,13.39,359.455),(10,1327.6,-1556.46,13.547,1320.45,-1545.04,13.547,351.748),(11,242.45,-226.693,1.57,238.115,-229.968,1.578,179.379),(12,2493.16,-1958.5,13.583,2492.35,-1952.37,13.435,358.758),(13,2011.81,-1283.06,23.974,2021.26,-1276.66,23.975,0.684),(14,2404.81,-1242.99,23.813,2410.61,-1242.53,23.813,182.465),(15,594.552,865.143,-43.355,596.687,860.711,-43.042,270.543);
/*!40000 ALTER TABLE `rents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki`
--

DROP TABLE IF EXISTS `tiki`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tiki` (
  `tID` smallint(6) NOT NULL AUTO_INCREMENT,
  `tPosX` float NOT NULL,
  `tPosY` float NOT NULL,
  `tPosZ` float NOT NULL,
  PRIMARY KEY (`tID`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiki`
--

LOCK TABLES `tiki` WRITE;
/*!40000 ALTER TABLE `tiki` DISABLE KEYS */;
INSERT INTO `tiki` VALUES (1,164.458,-1248.87,77.247),(2,349.112,-1162.78,80.914),(3,694.973,-500.132,16.336),(4,885.856,-658.982,110.569),(5,1034.41,-664.799,120.351),(6,1401.84,-794.304,86.613),(7,512.007,-1486.9,14.511),(8,574.947,-1694.12,16.55),(9,610.049,-1876.89,4.274),(10,836.241,-2067.13,12.867),(11,1002.1,-2168.43,13.094),(12,1181.27,-2226.8,44.085),(13,1653.13,-2538.29,13.547),(14,2255.53,-2640.04,13.587),(15,2360.26,-2327.72,16.029),(16,2560.05,-2522.21,13.161),(17,2657.83,-2450.16,13.633),(18,2723.9,-2016.89,13.547),(19,2507.43,-1885.46,13.547),(20,2873.17,-1590.65,22.416),(21,2778.85,-1416.42,24.745),(22,2438.67,-1415.82,24.021),(23,2240.73,-1626.5,15.807),(24,2559.51,-1244.76,47.617),(25,2607.01,-1130.91,65.475),(26,2089.94,-971.689,55.516),(27,1908.4,-1088.46,24.317),(28,1785.59,-1227.27,16.934),(29,1479.32,-1638.93,14.148),(30,1130.47,-1489.82,22.769),(31,1183.85,-1230.58,18.555),(32,1232.45,-1114.15,25.225),(33,1696.48,-1037.62,23.906),(34,1756.71,-2003.23,14.124),(35,2217.91,-2086.93,13.547),(36,2530.95,-2009.79,13.547),(37,2635.07,-2002.65,13.555),(38,1973.67,-1591.08,13.574),(39,715.513,-1626.26,2.43),(40,723.114,-1495.47,1.934),(41,727.737,-1276.17,13.648),(42,986.34,-1273.54,15.179),(43,1528.51,-1390.82,14.04),(44,1931.8,-1200.41,19.077),(45,2481,-1378.28,28.836),(46,2253.41,-1437.24,24.373),(47,2444.63,-957.141,80.04),(48,1638.73,-797.989,59.601),(49,2942.2,-2051.68,3.548),(50,2791.93,-1825.84,9.858),(51,2611.68,-1199.9,60.781);
/*!40000 ALTER TABLE `tiki` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_clothes`
--

DROP TABLE IF EXISTS `user_clothes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_clothes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `cloth_slot_1` int(11) DEFAULT '-1',
  `cloth_slot_1_p1` float DEFAULT '0',
  `cloth_slot_1_p2` float DEFAULT '0',
  `cloth_slot_1_p3` float DEFAULT '0',
  `cloth_slot_1_p4` float DEFAULT '0',
  `cloth_slot_1_p5` float DEFAULT '0',
  `cloth_slot_1_p6` float DEFAULT '0',
  `cloth_slot_1_p7` float DEFAULT '0',
  `cloth_slot_1_p8` float DEFAULT '0',
  `cloth_slot_1_p9` float DEFAULT '0',
  `cloth_slot_2` int(11) DEFAULT '-1',
  `cloth_slot_2_p1` float DEFAULT '0',
  `cloth_slot_2_p2` float DEFAULT '0',
  `cloth_slot_2_p3` float DEFAULT '0',
  `cloth_slot_2_p4` float DEFAULT '0',
  `cloth_slot_2_p5` float DEFAULT '0',
  `cloth_slot_2_p6` float DEFAULT '0',
  `cloth_slot_2_p7` float DEFAULT '0',
  `cloth_slot_2_p8` float DEFAULT '0',
  `cloth_slot_2_p9` float DEFAULT '0',
  `cloth_slot_3` int(11) DEFAULT '-1',
  `cloth_slot_3_p1` float DEFAULT '0',
  `cloth_slot_3_p2` float DEFAULT '0',
  `cloth_slot_3_p3` float DEFAULT '0',
  `cloth_slot_3_p4` float DEFAULT '0',
  `cloth_slot_3_p5` float DEFAULT '0',
  `cloth_slot_3_p6` float DEFAULT '0',
  `cloth_slot_3_p7` float DEFAULT '0',
  `cloth_slot_3_p8` float DEFAULT '0',
  `cloth_slot_3_p9` float DEFAULT '0',
  `cloth_slot_4` int(11) DEFAULT '-1',
  `cloth_slot_4_p1` float DEFAULT '0',
  `cloth_slot_4_p2` float DEFAULT '0',
  `cloth_slot_4_p3` float DEFAULT '0',
  `cloth_slot_4_p4` float DEFAULT '0',
  `cloth_slot_4_p5` float DEFAULT '0',
  `cloth_slot_4_p6` float DEFAULT '0',
  `cloth_slot_4_p7` float DEFAULT NULL,
  `cloth_slot_4_p8` float DEFAULT '0',
  `cloth_slot_4_p9` float DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2908 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `user_id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `p_name` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `isonline` tinyint(1) DEFAULT '0',
  `user_ip` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 NOT NULL,
  `registered` tinyint(1) DEFAULT '0',
  `sex` tinyint(1) NOT NULL,
  `age` tinyint(2) NOT NULL,
  `level` smallint(5) DEFAULT '1',
  `exp` smallint(6) DEFAULT '0',
  `xOnlineSati` smallint(6) DEFAULT '0',
  `money` int(11) DEFAULT '0',
  `xBRacun` int(11) DEFAULT '0',
  `xZlato` mediumint(9) DEFAULT '0',
  `xPlatiRacun` mediumint(9) DEFAULT '0',
  `payday` tinyint(2) DEFAULT '0',
  `upgrades` tinyint(3) DEFAULT '0',
  `admin_lvl` tinyint(1) DEFAULT '0',
  `admin_code` int(4) DEFAULT '0',
  `xSpecAdmin` tinyint(1) DEFAULT '0',
  `helper_level` tinyint(1) DEFAULT '0',
  `vip_level` tinyint(1) DEFAULT '0',
  `promoter_level` tinyint(1) NOT NULL DEFAULT '0',
  `xYouTuber` tinyint(1) NOT NULL DEFAULT '0',
  `spec_rank` tinyint(2) DEFAULT '0',
  `staff_min` smallint(6) DEFAULT '0',
  `vip_time` float DEFAULT '0',
  `skin_id` smallint(5) DEFAULT '0',
  `spawn` tinyint(1) DEFAULT '0',
  `lider` tinyint(2) NOT NULL DEFAULT '0',
  `clan` tinyint(2) NOT NULL DEFAULT '0',
  `rank` tinyint(2) NOT NULL DEFAULT '0',
  `materials` mediumint(9) DEFAULT '0',
  `job_id` tinyint(2) DEFAULT '0',
  `fight_style` tinyint(1) DEFAULT '0',
  `spawn_hp` float DEFAULT '0',
  `vehicle_license` tinyint(1) DEFAULT '0',
  `boat_license` tinyint(1) DEFAULT '0',
  `air_license` tinyint(1) DEFAULT '0',
  `gun_license` tinyint(1) DEFAULT '0',
  `toolkit` tinyint(1) DEFAULT '0',
  `property_id_1` smallint(4) DEFAULT '-1',
  `property_id_2` smallint(4) DEFAULT '-1',
  `property_id_3` smallint(4) DEFAULT '-1',
  `bussines_id` smallint(4) DEFAULT '0',
  `garage_id` smallint(4) DEFAULT '0',
  `xTelefon` tinyint(1) NOT NULL DEFAULT '0',
  `phone_number` mediumint(9) DEFAULT '0',
  `phone_credit` mediumint(9) DEFAULT '0',
  `strenght` smallint(3) DEFAULT '0',
  `jail_type` tinyint(1) DEFAULT '0',
  `jail_time` smallint(4) DEFAULT '0',
  `wanted_level` tinyint(2) DEFAULT '0',
  `arrested` smallint(6) DEFAULT '0',
  `xPDUhapsio` mediumint(9) NOT NULL DEFAULT '0',
  `xPDStatsTicket` mediumint(9) NOT NULL DEFAULT '0',
  `xPDStatsTicketMoney` mediumint(9) NOT NULL DEFAULT '0',
  `xTakenWeps` mediumint(9) NOT NULL DEFAULT '0',
  `xTakenDrugs` mediumint(9) NOT NULL DEFAULT '0',
  `credit_rest` mediumint(9) DEFAULT '0',
  `credit_amount` mediumint(9) DEFAULT '0',
  `credit_installment` smallint(5) DEFAULT '0',
  `warn` tinyint(1) DEFAULT '0',
  `mute` int(11) DEFAULT '0',
  `mask_id` mediumint(9) DEFAULT '0',
  `rp_learn` tinyint(1) DEFAULT '0',
  `marker_p1` float DEFAULT '0',
  `marker_p2` float DEFAULT '0',
  `marker_p3` float DEFAULT '0',
  `gps_level` tinyint(1) DEFAULT '1',
  `org_contract` smallint(5) DEFAULT '0',
  `hitman_price` mediumint(9) DEFAULT '0',
  `country` tinyint(2) DEFAULT '0',
  `email` varchar(128) CHARACTER SET utf8 NOT NULL,
  `org_punishment` tinyint(3) DEFAULT '0',
  `offpjail` varchar(64) CHARACTER SET utf8 DEFAULT '2',
  `offpprison` varchar(64) CHARACTER SET utf8 DEFAULT '2',
  `offpmute` varchar(64) CHARACTER SET utf8 DEFAULT '2',
  `married` tinyint(1) DEFAULT '0',
  `married_to` varchar(64) CHARACTER SET utf8 DEFAULT 'Niko',
  `xBingoNumber` smallint(3) DEFAULT '0',
  `xBingoMoney` mediumint(9) DEFAULT '0',
  `vehicle_slots` smallint(4) DEFAULT '1',
  `rob_time` tinyint(3) DEFAULT '0',
  `leave_jail` tinyint(1) DEFAULT '0',
  `hangar_time` tinyint(3) DEFAULT '0',
  `event_first_place` smallint(5) DEFAULT '0',
  `event_second_place` smallint(5) DEFAULT '0',
  `event_third_place` smallint(5) DEFAULT '0',
  `dm_event_kills` mediumint(9) DEFAULT '0',
  `cstdm_score` mediumint(9) DEFAULT '0',
  `rent_id` smallint(4) DEFAULT '-1',
  `reserve_keys` int(11) DEFAULT '-1',
  `watch` smallint(5) DEFAULT '0',
  `dbo` tinyint(1) DEFAULT '0',
  `dbo_color` tinyint(2) DEFAULT '0',
  `xUPoen` smallint(3) DEFAULT '0',
  `xTiki` tinyint(3) NOT NULL DEFAULT '0',
  `reaction_poen` smallint(3) DEFAULT '0',
  `taking_time` tinyint(3) DEFAULT '0',
  `gift` smallint(6) DEFAULT '0',
  `xPaketic` tinyint(1) DEFAULT '0',
  `gate_key` varchar(64) CHARACTER SET utf8 DEFAULT 'Niko',
  `mats_smugl` tinyint(1) DEFAULT '0',
  `robp_time` tinyint(3) DEFAULT '0',
  `xAGMStats` smallint(8) NOT NULL DEFAULT '0',
  `xBoombox` tinyint(1) NOT NULL DEFAULT '0',
  `xTorba_Pizza` smallint(6) NOT NULL DEFAULT '0',
  `xTorba_Sok` smallint(6) NOT NULL DEFAULT '0',
  `xTorba_Pivo` smallint(6) NOT NULL DEFAULT '0',
  `xTorba_Hambi` smallint(6) NOT NULL DEFAULT '0',
  `xTorba_Riba` smallint(6) NOT NULL DEFAULT '0',
  `xTorba_Laptop` tinyint(1) NOT NULL DEFAULT '0',
  `xTorba_Droga` mediumint(9) NOT NULL DEFAULT '0',
  `xTorba_Kantica` mediumint(9) NOT NULL DEFAULT '0',
  `xTorba_Oruzje_1` smallint(3) NOT NULL DEFAULT '0',
  `xTorba_Oruzje_2` smallint(3) NOT NULL DEFAULT '0',
  `xTorba_Oruzje_3` smallint(3) NOT NULL DEFAULT '0',
  `xTorba_OruzjeM_1` smallint(6) NOT NULL DEFAULT '0',
  `xTorba_OruzjeM_2` smallint(6) NOT NULL DEFAULT '0',
  `xTorba_OruzjeM_3` smallint(6) NOT NULL DEFAULT '0',
  `xTDColor` tinyint(2) NOT NULL DEFAULT '0',
  `xFirework` tinyint(2) DEFAULT '0',
  `xAktivnaIgra` tinyint(2) NOT NULL DEFAULT '0',
  `xBonPotvrda` int(11) NOT NULL DEFAULT '0',
  `xPaysPotvrda` int(11) NOT NULL DEFAULT '0',
  `xVIPWarn` tinyint(1) NOT NULL DEFAULT '0',
  `xOglasWarn` tinyint(1) NOT NULL DEFAULT '0',
  `xTogLabel` tinyint(1) NOT NULL DEFAULT '0',
  `last_login` varchar(64) CHARACTER SET utf8 DEFAULT '2',
  `reg_date` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2908 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Saco',0,'255.255.255.255','05BB68A513FD40BD92104AE5E6D0F79025C36C17B598C8326AF759A77068468B',1,1,24,21,25,155,23787,44217,845,0,2,1,7,1,0,0,0,0,0,1,9104,0,217,1,0,0,0,0,2,0,40,1,1,1,1,1,534,454,0,0,0,0,999,834,9,0,0,0,0,0,0,0,0,0,0,0,0,0,1579551627,0,0,1094.05,-629.831,110.868,1,0,0,2,'n/a',0,'2','2','2',0,'Niko',0,0,4,0,0,0,3,2,2,9,1,-1,-1,0,1,0,5,6,8,0,17,1,'Niko',0,0,146,0,0,0,0,0,0,0,441,0,24,24,31,300,300,781,18,0,5,0,0,0,0,1,'2020-01-29 21:09:51','2019-11-14 23:53:35');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `vehicles` (
  `veh_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_sqlID` int(11) DEFAULT '0',
  `v_price` int(11) NOT NULL,
  `v_locked` tinyint(1) DEFAULT '0',
  `v_pos_x` float NOT NULL,
  `v_pos_y` float NOT NULL,
  `v_pos_z` float NOT NULL,
  `v_pos_a` float NOT NULL,
  `v_virtualw` int(11) NOT NULL,
  `v_interior` int(11) NOT NULL,
  `v_usage` smallint(2) NOT NULL,
  `v_organization` smallint(2) DEFAULT '0',
  `v_color_1` int(11) NOT NULL,
  `v_color_2` int(11) NOT NULL,
  `v_model` int(11) NOT NULL,
  `v_teh` smallint(2) DEFAULT '0',
  `v_reg` smallint(2) DEFAULT '0',
  `v_reg_vreme` smallint(3) DEFAULT '0',
  `v_tablice` varchar(24) COLLATE utf8_unicode_ci DEFAULT 'NEMA',
  `v_insurance` smallint(2) DEFAULT '0',
  `v_lock` smallint(2) DEFAULT '0',
  `v_alarm` smallint(2) DEFAULT '0',
  `v_neon` int(11) DEFAULT '0',
  `v_tuned` tinyint(1) DEFAULT '0',
  `v_imobilizator` int(11) DEFAULT '0',
  `v_spoiler` int(11) DEFAULT '0',
  `v_hood` int(11) DEFAULT '0',
  `v_roof` int(11) DEFAULT '0',
  `v_skirt` int(11) DEFAULT '0',
  `v_lamps` int(11) DEFAULT '0',
  `v_nitro` int(11) DEFAULT '0',
  `v_exhaust` int(11) DEFAULT '0',
  `v_wheels` int(11) DEFAULT '0',
  `v_stereo` int(11) DEFAULT '0',
  `v_hydraulics` int(11) DEFAULT '0',
  `v_front_bumper` int(11) DEFAULT '0',
  `v_rear_bumper` int(11) DEFAULT '0',
  `v_vents` int(11) DEFAULT '0',
  `v_paintjob` int(11) DEFAULT '255',
  `v_drug_ammount` int(11) DEFAULT '0',
  `v_mats` int(11) DEFAULT '0',
  `v_weapon_melee` int(11) DEFAULT '0',
  `v_weapon_slot_1` int(11) DEFAULT '0',
  `v_weapon_ammo_1` int(11) DEFAULT '0',
  `v_weapon_slot_2` int(11) DEFAULT '0',
  `v_weapon_ammo_2` int(11) DEFAULT '0',
  `v_neaktivnost` int(11) DEFAULT '0',
  `v_kilometri` int(11) DEFAULT '0',
  `v_metri` int(11) DEFAULT '0',
  PRIMARY KEY (`veh_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1373 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicles`
--

LOCK TABLES `vehicles` WRITE;
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
INSERT INTO `vehicles` VALUES (166,29,410000,0,1005.54,-663.096,121.29,78.543,0,0,1,0,128,0,489,0,2,500,'BALBOA',0,0,0,0,1,0,1002,1005,1006,0,1024,1010,1020,1082,0,0,0,0,0,255,0,0,0,0,0,0,0,0,40,26),(167,56,1700000,0,830.193,-852.643,69.589,198.695,0,0,1,0,3,3,560,0,2,500,'Antonio ',0,0,0,18647,1,0,1139,0,1032,0,0,1010,1029,1080,1086,0,1169,1140,0,255,0,0,0,0,0,0,0,0,310,770),(168,0,0,0,1578.48,-1711.56,5.611,359.751,0,0,2,1,0,1,596,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(169,0,0,0,1583.46,-1711.37,5.611,0.562,0,0,2,1,0,1,596,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(170,0,0,0,1587.47,-1711.39,5.611,359.694,0,0,2,1,0,1,596,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(171,0,0,0,1591.58,-1711.36,5.612,0.14,0,0,2,1,0,1,596,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(172,0,0,0,1595.63,-1711.29,5.612,0.243,0,0,2,1,0,1,596,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(173,0,0,0,1602.41,-1704.22,5.612,90.62,0,0,2,1,0,1,596,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(174,0,0,0,1602.74,-1700.14,6.08,90.482,0,0,2,1,0,1,599,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(175,0,0,0,1602.73,-1695.98,6.08,90.088,0,0,2,1,0,1,599,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(176,0,0,0,1602.19,-1691.94,6.019,90.002,0,0,2,1,0,0,490,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(177,0,0,0,1602.17,-1687.97,6.019,89.506,0,0,2,1,0,0,490,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(178,0,0,0,1602.43,-1683.96,5.649,89.678,0,0,2,1,0,0,601,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(179,0,0,0,1586.04,-1667.5,5.892,270.473,0,0,2,1,0,1,427,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(180,0,1700000,0,1584.79,-1671.74,5.62,269.542,0,0,2,1,79,0,411,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(181,0,0,0,1567.39,-1654.79,28.396,91.635,0,0,2,1,0,1,497,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(182,0,0,0,1566.49,-1699.28,28.396,89.128,0,0,2,1,1,0,497,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(200,7,1700000,1,2977.01,-767.689,10.691,129.57,0,0,1,0,194,194,560,0,2,500,'PEJCA',0,1,1,18650,1,1,1138,0,1032,1026,0,1009,1028,1080,1086,1087,1169,1140,0,2,0,0,0,26,425,0,0,0,518,162),(202,0,1400000,0,1242.57,-805.188,83.849,176.333,0,0,2,3,0,0,451,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(203,0,1400000,0,1248.59,-805.169,83.849,174.582,0,0,2,3,0,0,451,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(204,0,1400000,0,1254.56,-805.044,83.849,177.903,0,0,2,3,0,0,451,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(205,0,2000000,0,1245.66,-829.487,84.073,140.247,0,0,2,3,0,0,579,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(206,0,2000000,0,1239.44,-833.936,84.074,123.578,0,0,2,3,0,0,579,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(207,0,2000000,0,1231.65,-836.284,84.106,98.672,0,0,2,3,0,0,579,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(208,0,2000000,0,1222.79,-834.988,84.431,74.345,0,0,2,3,0,0,579,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(209,0,2500000,0,1270.43,-832.387,82.712,266.79,0,0,2,3,0,0,522,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(210,0,2500000,0,1270.58,-829.858,82.71,270.737,0,0,2,3,0,0,522,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(211,0,2500000,0,1293.22,-832.4,82.71,88.043,0,0,2,3,0,0,522,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(212,0,2500000,0,1270.49,-827.291,82.713,270.959,0,0,2,3,0,0,522,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(213,0,2500000,0,1293.08,-828.98,82.708,91.162,0,0,2,3,0,0,522,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(214,0,2500000,0,1293.12,-826.332,82.71,87.868,0,0,2,3,0,0,522,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(215,0,2500000,0,1247.62,-2009.18,59.345,178.533,0,0,2,4,1,1,522,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(216,0,2500000,0,1249.93,-2009.08,59.279,180.527,0,0,2,4,1,1,522,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(217,0,2500000,0,1257.75,-2009.1,59.056,179.686,0,0,2,4,1,1,522,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(218,0,2500000,0,1270.13,-2009.1,58.702,181.58,0,0,2,4,1,1,522,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(219,0,2500000,0,1272.09,-2009.31,58.644,181.782,0,0,2,4,1,1,522,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(220,0,2500000,0,1259.92,-2009.09,58.992,186.228,0,0,2,4,1,1,522,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(221,0,1700000,0,1276.82,-2015.33,58.648,91.236,0,0,2,4,1,1,560,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(222,0,1700000,0,1276.88,-2021.58,58.658,90.453,0,0,2,4,1,1,560,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,24,100,31,200,0,0,0),(223,0,1700000,0,1276.99,-2028.29,58.681,91.691,0,0,2,4,1,1,560,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(224,0,1700000,0,1276.9,-2033.92,58.704,90.547,0,0,2,4,1,1,560,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,31,200,24,100,0,0,0),(225,0,1400000,0,1246.25,-2038.48,59.527,270.221,0,0,2,4,1,1,451,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(226,0,1400000,0,1246.26,-2027.77,59.527,271.587,0,0,2,4,1,1,451,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,34,74,29,185,0,0,0),(227,0,1400000,0,1246.55,-2016.14,59.516,270.155,0,0,2,4,1,1,451,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(228,0,1700000,0,1276.93,-2040.21,58.728,89.618,0,0,2,4,1,1,560,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,24,100,25,100,0,0,0),(229,0,205000,0,2507.99,-1671.17,13.162,346.611,0,0,2,5,128,128,566,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(230,0,205000,0,2507.02,-1663.52,13.19,22.759,0,0,2,5,128,128,566,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(231,0,205000,0,2501.22,-1657.31,13.181,63.319,0,0,2,5,128,128,566,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(232,0,205000,0,2493.22,-1655.6,13.148,84.817,0,0,2,5,128,128,566,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,24,100,31,200,0,0,0),(233,0,225000,0,2488.32,-1682.7,13.203,90.211,0,0,2,5,128,128,567,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(234,0,225000,0,2481.31,-1681.75,13.206,74.185,0,0,2,5,128,128,567,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(236,0,250000,0,2505.46,-1694.52,13.682,0.383,0,0,2,5,128,128,482,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(237,0,250000,0,2486.11,-1655.32,13.45,89.949,0,0,2,5,128,128,482,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(238,0,800000,0,2499.89,-1686.62,13.159,9.378,0,0,2,5,128,128,468,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(240,0,800000,0,2498.44,-1686.89,13.155,7.192,0,0,2,5,128,128,468,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(241,0,800000,0,2497.22,-1687.03,13.152,14.593,0,0,2,5,128,128,468,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(242,0,950000,0,1292.99,-789.872,96.648,225.434,0,0,2,3,0,0,487,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(244,0,250000,0,1246.3,-2052.88,59.936,268.36,0,0,2,4,1,1,482,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,25,100,24,100,0,0,0),(245,0,250000,0,1246.31,-2057.95,59.922,268.385,0,0,2,4,1,1,482,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(246,0,250000,0,1249.72,-793.908,89.622,0.091,0,0,2,3,0,0,482,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(247,0,250000,0,1249.95,-785.975,90.365,359.5,0,0,2,3,0,0,482,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(248,0,250000,0,2059.88,-1054.1,27.067,182.889,0,0,2,6,85,85,482,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(249,0,250000,0,2055.91,-1051.34,26.715,188.381,0,0,2,6,85,85,482,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(250,0,250000,0,2018.54,-1051.34,24.53,339.061,0,0,2,6,85,85,517,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(251,0,225000,0,2010.11,-1048.14,24.523,340.38,0,0,2,6,85,85,567,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(252,0,225000,0,2006.18,-1046.71,24.509,339.668,0,0,2,6,85,85,567,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(253,0,225000,0,2002.09,-1045.16,24.496,339.945,0,0,2,6,85,85,567,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(254,0,250000,0,1997.98,-1043.35,24.468,339.835,0,0,2,6,85,85,517,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(255,0,800000,0,2002.44,-1036.39,24.39,218.12,0,0,2,6,85,85,468,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(256,0,800000,0,2015.3,-1038.05,24.461,169.556,0,0,2,6,85,85,468,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(257,0,800000,0,2013.75,-1037.85,24.452,162.363,0,0,2,6,85,85,468,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(261,0,2500000,0,1013.93,-1070.55,29.058,211.445,0,0,2,7,95,95,522,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(262,0,2500000,0,1011.82,-1070.84,29.058,208.017,0,0,2,7,95,95,522,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(263,0,2500000,0,1016.02,-1070.49,29.055,211.793,0,0,2,7,95,95,522,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(264,0,2500000,0,1018.09,-1070.4,29.057,213.615,0,0,2,7,95,95,522,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(265,0,950000,0,1004.46,-1088.5,24.009,233.475,0,0,2,7,95,95,487,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(266,0,1700000,0,1016.76,-1086.01,23.534,180.024,0,0,2,7,95,95,560,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,22,0,0,0,0,0,0,0,0,0),(267,0,1700000,0,1021.57,-1085.87,23.533,181.264,0,0,2,7,95,95,560,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,25,25,24,122,0,0,0),(268,0,1700000,0,1026.79,-1085.76,23.538,181.301,0,0,2,7,95,95,560,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(269,0,250000,0,1034.56,-1090.03,23.948,90.657,0,0,2,7,95,95,482,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(270,0,250000,0,1034.73,-1093.67,23.948,92.155,0,0,2,7,95,95,482,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(271,0,2500000,0,68.469,-1745.27,2.795,328.912,0,0,2,8,87,87,522,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(272,0,2500000,0,67.492,-1744.39,2.791,323.35,0,0,2,8,87,87,522,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(273,0,2500000,0,66.51,-1743.4,2.791,320.191,0,0,2,8,87,87,522,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(276,0,1700000,0,74.712,-1752.1,2.928,0.358,0,0,2,8,87,87,560,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(277,0,1700000,0,71.036,-1751.8,2.928,359.3,0,0,2,8,87,87,560,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(279,0,250000,0,78.883,-1741.85,3.339,359.108,0,0,2,8,87,87,482,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(280,0,250000,0,79.181,-1733.45,3.339,358.245,0,0,2,8,87,87,482,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,4,0,0,0,0,0,0,0),(281,0,450000,0,30.592,-1763.02,-0.484,33.567,0,0,2,8,87,87,452,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(282,0,450000,0,26.907,-1765.37,-0.508,33,0,0,2,8,87,87,452,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(283,0,240000,0,2295.54,-1907.55,13.279,179.922,0,0,2,9,194,194,533,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(284,0,240000,0,2295.38,-1914.88,13.277,180.044,0,0,2,9,194,194,533,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(286,0,250000,0,2283.13,-1929.7,12.858,179.541,0,0,2,9,194,194,482,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(287,0,250000,0,2286.25,-1930.14,12.94,180.525,0,0,2,9,194,194,482,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(288,0,800000,0,2288.46,-1925.15,13.215,318.396,0,0,2,9,194,194,468,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(290,0,800000,0,2286.78,-1924.99,13.216,320.595,0,0,2,9,194,194,468,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(291,0,185000,0,2261.33,-1931.19,12.712,181.076,0,0,2,9,194,194,534,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(292,0,205000,0,2275.58,-1935.91,13.324,270.345,0,0,2,9,194,1,566,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(293,2,1700000,0,-2558.21,2263.42,4.764,153.609,0,0,1,0,1,4,560,0,2,500,'KRISTIJAN',0,0,0,0,1,0,1139,0,1033,1027,0,1010,1029,1074,1086,0,1170,1140,0,2,0,0,0,0,0,0,0,0,3,434),(295,658,2000000,0,1814.33,-1875.61,13.496,176.66,0,0,1,0,64,64,579,0,2,500,'iloveyou',0,0,0,18652,1,0,0,0,0,0,0,1010,0,1080,0,1087,0,0,0,255,0,0,0,0,0,0,0,0,32,816),(296,31,0,0,2408.83,-40.731,26.687,269.023,0,0,1,0,128,1,423,0,2,500,'Balboa',0,1,1,18649,1,0,0,0,0,0,0,1009,0,1074,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,96,428),(302,181,420,0,439.843,-1275.36,50.888,72.638,0,0,1,0,1,0,471,0,1,500,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,120,738),(303,181,420,0,442.015,-1258.42,55.576,200.848,0,0,1,0,1,2,513,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,317,64),(305,295,1500000,0,1560.54,-2338.42,13.172,269.663,0,0,1,0,1,0,541,0,2,500,'NemanjicGro',0,5,4,18652,1,3,0,0,0,0,0,1010,0,1080,1086,0,0,0,0,255,0,0,5,0,0,0,0,0,195,100),(306,250,1200000,1,1792.08,-2129.75,13.406,0.528,0,0,1,0,5,1,562,0,2,500,'EMILIO',0,1,1,18647,1,1,1146,0,1035,1041,0,1010,1034,1075,1086,1087,1172,1148,0,0,0,0,0,0,0,0,0,0,47,393),(310,267,1700000,0,1110.59,-732.489,100.002,90.336,0,0,1,0,229,0,560,0,2,500,'IMPERIA',0,1,1,0,1,1,1138,0,1033,1026,0,1010,1028,1082,0,0,1169,1140,0,0,0,0,0,0,0,0,0,0,349,10),(314,45,310000,0,1648.12,-1783.87,13.424,76.126,0,0,1,0,0,0,445,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,11,0),(318,72,1700000,0,2113.74,-1239.21,25.14,55.859,0,0,1,0,3,3,560,0,0,0,'NEMA',0,5,0,18652,1,0,1139,0,1033,1030,0,0,1028,1082,0,0,1169,1141,0,1,0,0,0,0,0,0,0,0,147,852),(321,15,1200000,1,727.837,-993.025,52.334,60.087,0,0,1,0,2,2,562,0,2,500,'stotkata',0,0,0,0,1,0,1146,0,0,1040,0,1010,0,1074,0,1087,0,0,0,0,0,0,0,0,0,0,0,0,99,8),(322,10,1200000,1,726.108,-996.192,52.354,58.628,0,0,1,0,89,54,562,1,0,0,'NEMA',0,1,1,0,1,1,1146,0,1038,1036,0,1010,1037,1076,1086,1087,1172,1148,0,2,0,0,0,0,0,0,0,0,34,696),(323,181,950000,0,428.808,-1257.34,55.247,203.023,0,0,1,0,1,2,487,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,2,675),(325,17,800000,0,1516.25,-694.592,94.371,91.906,0,0,1,0,3,3,559,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,1,416),(326,417,1400000,0,1278.94,-1099.8,25.686,92.435,0,0,1,0,0,0,451,0,2,500,'Richz <3',0,5,4,18647,1,5,0,0,0,0,0,1010,0,1079,0,0,0,0,0,255,0,0,0,0,0,0,0,0,92,669),(333,257,1700000,1,261.813,-1218.81,74.832,215.719,0,0,1,0,241,241,411,0,0,0,'NEMA',0,1,1,0,1,1,0,0,0,0,0,1009,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,95,682),(335,181,800000,0,428.726,-1267.5,51.273,20.915,0,0,1,0,0,0,468,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(336,395,1700000,1,2238.14,-1930.39,12.542,179.192,0,0,1,0,0,0,411,0,0,0,'NEMA',0,0,0,0,1,0,0,0,0,0,0,1010,0,1084,0,0,0,0,0,255,0,0,0,0,0,0,0,0,32,480),(338,2127,1700000,0,386.577,-1244.77,52.124,295.568,0,0,1,0,0,0,411,0,1,500,'NEMA',0,1,1,18652,1,1,0,0,0,0,0,1010,0,1080,1086,0,0,0,0,255,0,0,0,0,0,0,0,0,306,8),(339,37,620000,0,1284.66,-1156.66,23.602,300.067,0,0,1,0,42,13,480,0,0,0,'NEMA',0,0,0,18647,1,0,0,0,0,0,0,1010,0,1080,0,0,0,0,0,255,0,0,0,0,0,0,0,0,48,985),(340,208,600000,1,897.456,-778.496,101.063,331.969,0,0,1,0,3,1,558,0,2,500,'BALBOA',0,0,0,0,1,0,1164,0,1091,1094,0,1010,1092,1073,0,0,1165,1167,0,0,0,0,0,0,0,0,0,0,31,529),(341,1,2500000,0,2964.28,-782.29,4.657,133.028,0,0,1,0,0,0,522,1,0,0,'NEMA',0,1,1,0,1,1,0,0,0,0,0,0,0,1080,0,0,0,0,0,255,0,0,0,0,0,0,0,0,321,86),(343,29,1200000,0,4235.35,2948.68,1.885,243.371,0,0,1,0,0,0,415,0,2,500,'KLJUCINA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,63,927),(345,7,1700000,0,2976.88,-773.244,10.725,129.64,0,0,1,0,194,194,411,0,2,500,'PEJCA',0,2,1,18650,1,1,0,0,0,0,0,1009,0,1080,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,396,550),(346,265,1400000,0,1484.76,-1068.8,23.326,202.971,0,0,1,0,0,0,451,1,0,0,'NEMA',0,1,1,18648,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,7,302),(350,72,1400000,0,2111.99,-1227.34,23.636,92.438,0,0,1,0,241,241,451,0,2,500,'SAIYAN YT',0,4,0,0,1,0,0,0,0,0,0,1008,0,1082,0,0,0,0,0,255,0,0,0,0,0,0,0,0,151,568),(354,186,1500000,0,1530.85,-812.508,71.637,92.421,0,0,1,0,238,1,541,0,2,500,'Nis-018',0,3,1,18652,1,1,0,0,0,0,0,1009,0,1080,1086,0,0,0,0,255,0,0,0,0,0,0,0,0,50,393),(355,208,800000,1,899.695,-777.352,101.11,337.346,0,0,1,0,128,0,559,0,2,500,'LATORE',0,0,0,0,1,0,1158,0,1067,1069,0,1010,1065,1073,0,0,1160,1159,0,0,0,0,0,0,0,0,0,0,11,817),(358,37,350000,0,1284.66,-1160.54,23.499,31.973,0,0,1,0,0,0,463,0,0,0,'NEMA',0,0,0,0,1,0,0,0,0,0,0,0,0,1025,1086,0,0,0,0,255,0,0,0,0,0,0,0,0,36,497),(361,156,1500000,0,876.523,-27.458,62.824,161.036,0,0,1,0,0,0,541,0,0,0,'NEMA',0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,31,491,0,0,0,71,934),(362,418,620000,0,1330.27,-1062.03,28.428,271.971,0,0,1,0,0,0,480,0,1,500,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,35,65),(363,72,1200000,0,2105.09,-1242.73,24.592,1.73,0,0,1,0,6,3,562,0,0,0,'NEMA',0,0,0,0,1,0,1146,0,1038,1036,0,1008,1037,1079,1086,0,1171,1149,0,0,0,0,0,0,0,0,0,0,61,262),(364,1,1700000,1,2971.68,-800.397,10.724,0.219,0,0,1,0,0,0,560,0,2,500,'SACO',0,0,0,0,1,0,1138,0,1032,1027,0,1010,1028,1080,1086,0,1169,1141,0,2,0,0,0,0,0,0,0,0,286,139),(365,667,1200000,0,1158.23,-2044.29,69,202.971,0,0,1,0,1,1,521,0,2,500,'NILE',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,32,8),(368,17,950000,0,1487.62,-697.142,94.894,195.352,0,0,1,0,3,3,487,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,1,825),(370,382,390000,0,978.206,-831.262,95.474,209.201,0,0,1,0,0,0,550,0,2,500,'Milos Car',0,1,1,18647,1,0,1001,0,0,0,0,1008,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,76,311),(372,253,620000,0,1553.17,-1282.57,17.212,0.511,0,0,1,0,0,0,480,1,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,3,213),(373,432,1000000,1,1553.17,-1282.57,17.212,0.511,0,0,1,0,0,0,429,0,2,500,'jusuf',0,4,1,18648,1,1,0,0,0,0,0,1009,0,1025,0,0,0,0,0,255,0,0,4,0,0,0,0,0,74,351),(375,246,290000,0,1436.68,-644.699,95.331,266.35,0,0,1,0,0,0,471,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,3,501),(376,743,2000000,1,848.68,-1475.35,12.842,176.622,0,0,1,0,1,1,579,0,2,500,'PEJCA',0,0,0,0,1,0,0,0,0,0,0,1009,0,1074,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,180,57),(380,250,1700000,1,1794.5,-2137.85,13.21,178.17,0,0,1,0,9,9,560,0,0,0,'NEMA',0,0,0,0,1,0,1139,0,1032,1031,0,1010,1028,1074,1086,1087,1170,1141,0,1,0,0,0,0,0,0,0,0,5,23),(383,513,310000,1,890.567,-1798.32,13.608,353.918,0,0,1,0,155,155,445,0,2,500,'STAMENI',0,1,1,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,65,701),(384,21,440000,0,-2329.99,-124.551,35.069,179.732,0,0,1,0,1,1,580,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,11,493),(385,434,1700000,0,1010.87,-1084.57,23.533,184.421,0,0,1,0,134,134,560,0,2,500,'UROSKER',0,2,1,18651,1,4,1139,0,1033,1031,0,1010,1028,1080,1086,0,1169,1140,0,2,0,0,4,0,0,29,385,0,1409,521),(386,394,900000,0,1324.57,-1081.45,25.272,269.099,0,0,1,0,0,0,506,0,1,500,'NEMA',0,1,1,18648,1,1,0,0,0,0,0,1009,0,1074,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,54,938),(389,553,620000,0,1323.63,-2314.81,13.326,202.971,0,0,1,0,0,0,480,0,0,0,'NEMA',0,0,1,0,1,0,0,0,0,0,0,1010,0,1074,0,0,0,0,0,255,0,0,0,0,0,0,0,0,58,475),(393,409,1200000,0,1436.86,-889.836,50.304,185.331,0,0,1,0,6,3,562,0,2,500,'DRIFT',0,0,0,18650,1,0,1146,0,1038,1039,0,1010,1034,1083,1086,1087,1171,1148,0,0,0,0,0,0,0,0,0,0,151,30),(394,633,1200000,0,852.976,-1527.79,12.714,268.344,0,0,1,0,93,0,562,0,2,500,'WTF',0,0,0,18648,1,0,0,0,0,1036,0,0,1034,1075,0,0,1171,1148,0,255,0,0,0,25,50,0,0,0,515,757),(395,328,1700000,0,840.716,-896.558,68.482,240.217,0,0,1,0,0,0,411,0,2,500,'RAZER',0,0,0,0,1,0,0,0,0,0,0,1010,0,1074,1086,0,0,0,0,255,0,0,0,0,0,0,0,0,54,704),(397,156,0,0,727.185,-1496.31,0.149,179.671,0,0,1,0,0,0,595,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,1,501),(398,369,350000,0,2517.4,-1672.26,13.601,54.319,0,0,1,0,0,0,463,0,2,500,'Sokol',0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,13,588),(400,434,2500000,0,281.985,-1260.38,73.495,257.56,0,0,1,0,134,143,522,0,2,500,'URKEKER',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,806,524),(403,577,505000,0,264.598,-1904.2,0.193,173.287,0,0,1,0,0,0,484,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,13,598),(408,31,2000000,0,1604.69,-2341.61,24.568,176.184,0,0,1,0,0,0,519,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,18,33),(409,31,600000,0,2419.91,-62.425,27.213,271.087,0,0,1,0,1,0,475,0,2,500,'Momenzi',0,0,0,18647,1,0,0,0,0,0,0,1010,0,1080,0,1087,0,0,0,255,0,0,0,25,69,0,0,0,149,911),(410,651,1500000,0,1686.2,-2105.2,13.172,269.879,0,0,1,0,211,1,541,0,2,500,'Djukii',0,2,0,18651,1,1,0,0,0,0,0,1010,0,1080,1086,0,0,0,0,255,139,0,4,31,347,24,293,0,412,113),(414,1356,1200000,0,2379.14,-639.496,126.959,305.916,0,0,1,0,8,9,415,0,2,500,'PAJSERCINA',0,3,4,18649,1,3,1003,0,0,1017,0,1010,1019,1080,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,550,934),(419,565,2500000,1,1981.45,-1985.15,13.123,176.71,0,0,1,0,0,1,522,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,19,792),(420,591,215000,0,1032.44,-803.389,101.632,24.214,0,0,1,0,3,3,527,1,0,0,'NEMA',0,1,1,18651,1,1,1001,0,0,0,0,0,0,1083,0,0,0,0,0,255,0,0,0,0,0,0,0,0,21,331),(421,1982,310000,0,2141.12,-1314.6,24.239,359.282,0,0,1,0,181,181,445,0,2,500,'Starcevic',0,0,0,0,1,0,0,0,0,0,0,1010,0,1079,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,92,276),(423,328,2000000,0,832.698,-890.336,68.64,54.379,0,0,1,0,0,0,579,0,2,500,'KURAC',0,0,0,18649,1,0,0,0,0,0,0,1010,0,1081,0,1087,0,0,0,255,0,0,0,24,50,26,84,0,106,750),(425,328,590000,0,822.933,-943.207,60.726,111.9,0,0,1,0,3,3,469,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,40,490),(427,409,590000,1,1432.38,-889.552,54.397,12.808,0,0,1,0,0,0,469,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,18,663),(432,625,1700000,0,2473.19,-1691.43,13.211,359.425,0,0,1,0,0,0,411,1,0,0,'NEMA',0,0,0,18649,1,0,0,0,0,0,0,1010,0,1080,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,72,937),(433,46,2000000,0,2315.61,592.114,7.66,177.43,0,0,1,0,0,0,579,0,2,500,'MONTANA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,35,610),(435,219,1000000,1,527.869,-1289.29,17.242,356.913,0,0,1,0,0,0,429,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,14,307),(436,46,1700000,0,2323.54,591.01,7.6,182.969,0,0,1,0,0,0,560,0,2,500,'MONTANA',0,0,0,18650,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,209,549),(437,46,1700000,0,2335.48,550.166,7.435,359.056,0,0,1,0,0,0,411,0,2,500,'MONTANA',0,0,0,18649,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,3,82),(438,46,900000,0,2331.89,550.183,7.467,359.027,0,0,1,0,0,0,506,0,2,500,'MONTANA',0,0,0,0,1,0,0,0,0,0,0,1009,0,1074,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,2,253),(439,864,1200000,0,2349.83,549.515,7.418,1.404,0,0,1,0,0,0,562,0,2,500,'MONTANA',0,0,0,0,1,0,1147,0,1035,1036,0,1010,1037,1074,0,1087,1172,1149,0,255,0,0,0,0,0,0,0,0,261,806),(443,46,1500000,0,2328.26,550.595,7.428,359.104,0,0,1,0,0,0,541,0,2,500,'MONTANA',0,0,0,0,1,0,0,0,0,0,0,1010,0,1097,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,3,614),(444,46,600000,0,2345.8,515.565,-0.613,180.177,0,0,1,0,0,0,446,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,8,385),(445,46,950000,0,2346.51,590.788,12.053,178.958,0,0,1,0,1,1,487,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,5,329),(446,46,515000,0,180.429,-1868.64,3.442,4.371,0,0,1,0,2,0,513,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,3,748),(449,577,440000,0,2422.95,-1129.71,34.397,359.215,0,0,1,0,0,0,580,0,0,0,'NEMA',0,0,0,0,1,0,1023,0,1006,1017,0,1009,1020,1081,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,9,770),(451,1213,2000000,0,1997.58,-1119.25,26.656,213.544,0,0,1,0,0,0,579,0,2,500,'Knez',0,0,0,0,1,0,0,0,0,0,0,1009,0,1080,0,1087,0,0,0,255,0,0,0,0,0,0,0,0,92,972),(453,1931,1700000,0,1560.65,-2303.75,13.26,269.562,0,0,1,0,3,3,560,0,2,500,'FLEX',0,0,0,0,1,0,1138,0,1033,0,0,1010,0,0,0,0,1169,1141,0,2,0,0,0,0,0,0,0,0,266,515),(455,527,1700000,1,1031.26,-636.256,119.858,278.237,0,0,1,0,0,0,411,0,2,500,'TABLICE',0,0,0,18647,1,0,0,0,0,0,0,1010,0,1083,0,1087,0,0,0,255,0,0,0,0,0,0,0,0,3517,818),(456,136,1700000,1,1559.93,-2328.61,13.275,90.006,0,0,1,0,0,0,411,0,2,500,'Haris',0,1,1,18652,1,1,0,0,0,0,0,1010,0,1079,0,0,0,0,0,255,0,0,0,0,0,0,0,0,444,834),(457,434,1700000,0,285.502,-1270.77,73.672,31.35,0,0,1,0,134,134,411,0,2,500,'xxxx',0,0,0,18651,1,0,0,0,0,0,0,1010,0,1080,1086,0,0,0,0,255,0,0,0,0,0,0,0,0,1409,261),(458,900,1700000,0,1145.95,-1061.34,29.269,270.571,0,0,1,0,3,3,560,0,2,500,'PUN GAS!',0,2,1,18648,1,2,1139,0,1033,1026,0,1009,1028,1080,1086,1087,1169,1140,0,0,0,0,0,0,0,0,0,0,189,937),(459,1931,1200000,0,1560.74,-2300.4,13.295,268.668,0,0,1,0,1,1,562,0,2,500,'Castellano',0,0,0,18648,1,0,1146,0,1035,1039,0,1010,1037,1080,1086,1087,1172,1149,0,0,0,0,0,0,0,0,0,0,668,37),(460,625,1700000,1,2461.69,-1685.24,13.204,269.847,0,0,1,0,0,1,560,0,0,0,'NEMA',0,0,0,18652,1,0,1138,0,1032,1026,0,0,1028,1098,1086,1087,1169,1141,0,2,0,0,0,0,0,0,0,0,64,336),(461,730,1200000,0,1020.24,-1056.02,30.766,2.867,0,0,1,0,6,6,562,0,2,500,'ANA<3',0,0,0,18648,1,0,1147,0,1038,1041,0,1008,1037,1080,1086,0,1171,1149,0,0,0,0,0,0,0,0,0,0,95,860),(463,435,1200000,0,1236.8,-1089.37,25.502,272.221,0,0,1,0,1,2,562,0,1,500,'NEMA',0,0,0,18647,1,0,1147,0,1035,1036,0,1010,1034,1074,1086,1087,1171,1148,0,1,0,0,0,0,0,0,0,0,79,590),(464,328,1700000,0,845.776,-899.792,68.479,233.281,0,0,1,0,0,0,560,0,2,500,'PUNGAS',0,0,0,0,1,0,1138,0,1032,0,0,1010,0,1080,0,0,1170,1140,0,255,900,0,0,24,497,0,0,0,109,470),(465,267,1700000,0,1421.1,-921.016,35.772,132.547,0,0,1,0,226,0,411,0,1,500,'NEMA',0,0,0,0,1,0,0,0,0,0,0,1010,0,1082,0,0,0,0,0,255,0,0,0,0,0,0,0,0,71,111),(466,633,1700000,1,854.354,-1512.16,12.837,86.073,0,0,1,0,93,0,411,0,1,500,'NEMA',0,0,0,0,1,0,0,0,0,0,0,1009,0,1074,0,0,0,0,0,255,0,0,0,0,0,0,0,0,169,212),(469,417,30000,0,527.869,-1289.29,17.242,356.913,0,0,1,0,0,0,481,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,103),(470,391,1700000,0,527.845,-1288.86,16.946,0,0,0,1,0,0,0,411,0,2,500,'RAZER',0,0,0,0,1,0,0,0,0,0,0,1010,0,1080,0,1087,0,0,0,255,0,0,0,0,0,0,0,0,13,607),(471,565,1400000,0,1414.7,-927.6,35.688,125.004,0,0,1,0,0,0,451,1,0,0,'NEMA',0,0,0,0,1,0,0,0,0,0,0,1008,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,16,805),(472,1039,1200000,0,1583.78,-2268.53,13.199,123.745,0,0,1,0,1,1,562,0,2,500,'Djukii',0,5,4,18647,1,5,1147,0,1038,1039,0,1010,1034,1074,0,0,1172,1149,0,1,0,0,0,0,0,0,0,0,97,158),(475,31,1700000,0,2424.69,-62.184,27.202,2.666,0,0,1,0,6,0,411,0,2,500,'INFUENCER',0,1,1,18649,1,0,0,0,0,0,0,1010,0,1079,0,0,0,0,0,255,0,0,0,0,0,0,0,0,49,689),(476,651,1700000,0,1698.83,-2082.59,13.252,180.136,0,0,1,0,211,1,560,0,2,500,'fikiw',0,0,0,18648,1,0,1138,0,1032,1027,0,1010,1028,1080,0,0,1169,1141,0,2,1391,0,4,29,462,31,463,0,171,194),(477,679,1200000,0,1030.29,-1104.05,23.687,0.764,0,0,1,0,1,1,562,0,2,500,'Ahmet',0,5,4,18652,1,5,1147,0,1038,1040,0,1010,1037,1079,1086,1087,1171,1148,0,1,0,985,4,31,234,0,0,0,76,638),(479,31,1200000,0,2424.46,-54.718,26.955,358.823,0,0,1,0,221,1,562,0,0,0,'NEMA',0,0,0,18650,1,0,1147,0,1035,1041,0,1010,1034,1080,1086,1087,1172,1148,0,1,0,0,0,0,0,0,0,0,128,985),(480,1,1700000,0,2976.72,-800.272,10.746,1.423,0,0,1,0,0,0,411,0,2,500,'SACO',0,0,0,0,1,0,0,0,0,0,0,1010,0,1080,1086,0,0,0,0,255,0,0,0,0,0,0,0,0,365,82),(481,798,1700000,0,2266.43,-90.184,26.017,273.148,0,0,1,0,3,6,560,0,2,500,'Fererro',0,0,0,18649,1,0,1139,0,1032,0,0,1010,0,0,0,0,1169,1140,0,1,0,0,0,0,0,0,0,0,238,834),(482,1938,1700000,0,1354.9,-630.585,108.797,17.897,0,0,1,0,89,2,560,0,2,500,'PUN GAS',0,5,4,18648,1,5,1139,0,1033,1031,0,1010,1029,1079,1086,1087,1169,1141,0,1,0,0,0,0,0,0,0,0,2257,240),(484,646,1700000,0,250.485,-1357.37,52.814,305.02,0,0,1,0,5,3,560,0,0,0,'NEMA',0,0,0,18649,1,1,1138,0,1033,1030,0,1010,1028,0,0,0,1169,1141,0,1,0,0,4,29,198,25,95,0,273,524),(485,780,1000000,0,286.309,-1263.23,73.453,302.284,0,0,1,0,0,44,429,0,2,500,'PETAR',0,0,0,18647,1,0,0,0,0,0,0,1010,0,1080,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,35,49),(486,665,300000,1,814.525,-767.767,76.967,284.169,0,0,1,0,4,5,400,0,0,0,'NEMA',0,0,0,18649,1,0,0,0,0,0,0,1009,1018,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,49,757),(487,33,405000,0,2153.29,-1291.62,23.786,269.813,0,0,1,0,6,6,602,0,2,500,'SPECADMIN',0,0,0,18652,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,69,0),(493,31,800000,0,2420.47,-45.603,26.865,1.833,0,0,1,0,221,1,468,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,57,750),(494,156,1400000,0,861.024,-17.244,62.914,129.82,0,0,1,0,0,0,451,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,5,778),(496,252,2000000,0,977.164,-830.278,95.86,26.249,0,0,1,0,1,1,579,0,0,0,'NEMA',0,0,0,18649,1,0,0,0,0,0,0,0,0,1078,1086,0,0,0,0,255,0,0,0,0,0,0,0,0,146,818),(497,927,2000000,0,1552.71,-2361.26,13.295,182.829,0,0,1,0,0,0,579,0,1,500,'NEMA',0,0,0,0,1,0,0,0,0,0,0,1010,0,1075,0,0,0,0,0,255,0,0,0,0,0,0,0,0,46,989),(500,246,440000,0,1448.96,-635.259,95.672,179.272,0,0,1,0,0,0,580,0,2,500,'Kafa&Ivona ',0,5,4,0,1,5,0,0,1006,0,0,1009,1018,1073,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,70,387),(501,42,160000,0,1456.98,-934.396,36.383,182.251,0,0,1,0,0,1,405,0,0,0,'NEMA',0,0,0,18648,1,0,1023,0,0,0,0,0,0,1080,0,0,0,0,0,255,0,0,0,0,0,0,0,0,5,668),(503,42,280000,0,1452.56,-933.404,36.391,176.085,0,0,1,0,0,0,507,0,0,0,'NEMA',0,0,0,18648,1,0,0,0,0,0,0,1010,0,1080,0,0,0,0,0,255,0,0,0,0,0,0,0,0,4,549),(504,343,340000,0,2086.02,-1226.63,23.659,270.513,0,0,1,0,0,0,551,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,22,500),(505,1485,600000,1,1884.77,-1266.6,13.06,269.021,0,0,1,0,1,33,558,0,0,0,'NEMA',0,1,3,18650,1,2,1164,0,1088,0,0,1009,0,1074,0,1087,1166,1168,0,0,0,0,0,0,0,0,0,0,216,640),(506,7,2500000,1,2977.6,-776.887,10.592,127.656,0,0,1,0,194,194,522,0,2,500,'Djukii',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,209,943),(507,43,25000,0,527.869,-1289.29,17.242,356.913,0,0,1,0,0,0,510,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,4,688),(508,43,1700000,0,2135.97,-1316.44,24.334,0.122,0,0,1,0,152,152,411,0,2,500,'INFLUENCER',0,3,2,18648,1,0,0,0,0,0,0,1010,0,1080,0,0,0,0,0,255,0,0,0,0,0,0,0,0,110,14),(510,743,1400000,1,4229.7,2958.39,1.656,63.633,0,0,1,0,6,6,451,0,2,500,'ANA<3',0,0,0,18650,1,0,0,0,0,0,0,1009,0,1096,0,0,0,0,0,255,0,0,0,0,0,0,0,0,169,594),(513,854,1700000,1,1268.41,-741.957,94.322,9.297,0,0,1,0,0,0,411,0,2,500,'Djukii',0,0,0,18649,1,0,0,0,0,0,0,1010,0,1073,0,0,0,0,0,255,0,0,0,0,0,0,0,0,159,751),(515,246,530000,1,1433.51,-659.958,95.742,129.852,0,0,1,0,1,1,545,0,2,500,'Kafa&Ivona',0,1,2,18647,1,1,0,0,0,0,0,1009,0,1073,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,13,263),(516,336,1700000,1,1880.89,-2144.39,13.252,181.409,0,0,1,0,1,1,560,0,2,500,'Belminn',0,0,0,18648,1,0,1138,0,1032,1027,0,0,1028,0,0,0,1169,1141,0,2,0,0,0,31,500,0,0,0,77,988),(519,866,1700000,0,1981.91,-1675.02,15.616,270.835,0,0,1,0,1,1,560,0,0,0,'NEMA',0,0,0,18648,1,0,0,0,1033,0,0,1010,1029,1074,1086,1087,0,0,0,2,0,0,0,0,0,0,0,0,24,515),(521,136,1700000,1,1561.22,-2325.42,13.255,89.246,0,0,1,0,1,1,560,0,2,500,'Haris ',0,2,2,18648,1,2,1139,0,1033,1031,0,1010,1029,0,0,0,1170,1141,0,1,852,0,0,0,0,0,0,0,162,908),(522,867,1400000,0,1978.72,-1710.99,15.631,269.136,0,0,1,0,1,0,451,0,2,500,'NikolaDiaz',0,1,1,18648,1,1,0,0,0,0,0,1010,0,1079,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,13,413),(525,919,1700000,0,564.143,-1065.54,73.411,28.471,0,0,1,0,14,14,560,0,2,500,'1556',0,3,1,0,1,2,1139,0,1033,1031,0,1010,1029,1074,1086,1087,1170,1140,0,2,0,0,0,33,50,25,50,0,233,571),(528,252,1700000,0,980.452,-828.988,95.526,26.926,0,0,1,0,1,1,411,0,0,0,'NEMA',0,0,0,0,1,0,0,0,0,0,0,1010,0,1080,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,259,206),(529,730,440000,0,1016.66,-1055.52,30.788,359.653,0,0,1,0,1,1,580,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,21,211),(532,240,1200000,0,230.301,-1401.27,51.364,55.285,0,0,1,0,1,1,415,0,2,500,'BEGOVIC',0,0,0,18652,1,0,1001,0,0,1007,0,0,1018,1080,0,0,0,0,0,255,0,0,0,0,0,0,0,0,51,707),(533,538,1700000,0,1247.06,-2022.57,59.521,272.124,0,0,1,0,0,0,411,0,0,0,'NEMA',0,0,0,18648,1,0,0,0,0,0,0,1010,0,1079,1086,0,0,0,0,255,0,0,0,0,0,0,0,0,120,788),(535,187,1400000,1,1516.53,-767.98,79.69,137.951,0,0,1,0,223,223,451,0,0,0,'NEMA',0,0,0,0,1,0,0,0,0,0,0,0,0,1077,0,1087,0,0,0,255,0,0,0,0,0,0,0,0,32,604),(539,856,1700000,0,1458.23,-906.936,54.757,359.635,0,0,1,0,3,3,411,0,0,0,'NEMA',0,0,0,18649,1,0,0,0,0,0,0,1010,0,0,0,1087,0,0,0,255,0,0,0,0,0,0,0,0,88,623),(542,491,1500000,0,1277.86,-2048.51,58.629,271.089,0,0,1,0,0,3,541,0,2,500,'PUSI GA',0,1,1,18647,1,4,0,0,0,0,0,1010,0,1097,1086,0,0,0,0,255,0,0,0,0,0,0,0,0,141,564),(545,489,1700000,0,1513.42,-2280.19,13.356,272.19,0,0,1,0,6,6,560,0,1,500,'NEMA',0,5,4,18647,1,5,1138,0,1033,1027,0,1009,1029,1080,1086,0,1169,1141,0,2,0,0,0,0,0,31,200,0,529,39),(549,46,2500000,0,2324.86,550.527,7.365,2.611,0,0,1,0,6,3,522,0,2,500,'MUJO',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,94,165),(550,2400,1700000,1,665.752,-582.084,15.976,91.108,0,0,1,0,3,0,411,0,0,0,'NEMA',0,0,0,18652,1,0,0,0,0,0,0,1010,0,0,1086,0,0,0,0,255,0,0,0,0,0,0,0,0,185,726),(553,577,650000,0,527.869,-1289.29,17.242,356.913,0,0,1,0,0,0,461,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,4,466),(554,964,1700000,0,872.297,-1505.15,12.755,88.418,0,0,1,0,171,171,560,0,2,500,'xyz',0,5,4,0,1,5,1139,0,1032,1027,0,1010,1029,1074,0,1087,1169,1141,0,255,0,0,0,0,0,0,0,0,200,975),(555,856,800000,1,1474.55,-901.05,54.982,267.922,0,0,1,0,0,0,559,0,1,500,'NEMA',0,0,0,0,1,0,1162,0,1068,1072,0,1010,1066,1077,0,1087,1173,1159,0,255,0,0,0,29,200,26,89,0,67,586),(556,638,1700000,1,1262.85,-2061.29,59.259,268.029,0,0,1,0,3,3,560,0,2,500,'LCN',0,5,4,18648,1,5,1138,0,1033,0,0,1010,1029,1082,0,0,1169,1141,0,0,0,0,0,26,86,24,461,0,298,979),(557,1426,1200000,0,4287.02,3035.8,3.837,219.044,0,0,1,0,6,0,562,0,2,500,'ifshe13im13',0,1,1,18648,1,1,1146,0,1038,1040,0,1010,1037,1080,0,1087,1172,1148,0,0,0,0,0,0,0,0,0,0,173,182),(558,1038,1700000,0,1467.12,-1183.38,23.479,1.677,0,0,1,0,1,0,560,0,2,500,'matke1312',0,5,4,18648,1,5,1139,0,1033,1031,0,1009,1028,1078,1086,1087,1169,1141,0,1,0,0,0,0,0,0,0,0,176,979),(560,187,1200000,0,1513.76,-765.773,80.101,140.799,0,0,1,0,1,1,562,0,2,500,'BoKi',0,2,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,26,323),(562,855,2500000,1,752.567,-551.843,16.814,175.929,0,0,1,0,0,1,522,0,0,0,'NEMA',0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,126,171),(563,439,1700000,0,289.427,-1340,53.147,339.918,0,0,1,0,0,0,411,0,2,500,'MAFIJA',0,0,0,18647,1,0,0,0,0,0,0,1010,0,1080,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,177,583),(564,732,1700000,0,998.699,-1094.54,23.533,226.524,0,0,1,0,3,0,560,0,2,500,'KI-2002-NS',0,2,2,18647,1,2,1139,0,1033,1027,0,1010,0,1080,0,0,1169,1141,0,1,0,0,0,0,0,0,0,0,2071,823),(570,809,1500000,1,217.655,-243.753,1.233,108.263,0,0,1,0,0,0,541,0,0,0,'NEMA',0,0,0,0,1,0,0,0,0,0,0,0,0,0,1086,0,0,0,0,255,0,0,0,0,0,0,0,0,8,378),(572,918,1700000,0,478.019,-1087.18,82.332,357.424,0,0,1,0,0,0,560,0,2,500,'FLASH',0,0,0,18652,1,1,0,0,0,0,0,1010,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,138,151),(574,0,1700000,0,2369.46,-660.469,128.354,269.659,0,0,2,10,3,3,560,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(575,0,1700000,0,2369.34,-654.314,127.56,268.293,0,0,2,10,3,3,560,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(576,0,1700000,0,2376.05,-660.519,128.239,268.024,0,0,2,10,3,3,560,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(577,0,1400000,0,2402.08,-663.517,127.636,74.876,0,0,2,10,3,3,451,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,26,32,0,0,0,0,0),(578,0,1400000,0,2401.74,-659.989,127.476,73.221,0,0,2,10,3,3,451,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(579,0,1400000,0,2401.47,-667.152,127.705,73.91,0,0,2,10,3,3,451,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(580,0,2000000,0,2390.02,-684.585,126.679,191.261,0,0,2,10,3,3,579,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(581,0,2000000,0,2388.36,-677.166,127.222,192.29,0,0,2,10,3,3,579,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(582,0,2500000,0,2386.47,-650.298,126.968,141.253,0,0,2,10,3,3,522,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(583,0,2500000,0,2386.81,-652.198,127.043,139.023,0,0,2,10,3,3,522,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(585,0,950000,0,2371.36,-676.835,129.87,232.537,0,0,2,10,3,3,487,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(586,0,250000,0,2402.31,-674.244,127.568,1.817,0,0,2,10,3,3,482,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,24,182,0,0,0,0,0),(587,0,250000,0,2403.18,-682.634,126.842,7.016,0,0,2,10,3,3,482,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,34,46,0,0,0,0,0),(588,665,1700000,0,4317.56,3016.61,3.975,37.923,0,0,1,0,106,0,560,0,0,0,'NEMA',0,1,1,18647,1,0,1139,0,0,1031,0,1010,1028,1079,0,0,1169,1141,0,1,0,0,0,0,0,0,0,0,167,950),(590,71,530000,0,564.449,-1193.42,44.598,291.031,0,0,1,0,0,0,545,0,2,500,'nwnezz',0,0,0,0,1,0,0,0,0,0,0,1010,0,1080,0,0,0,0,0,255,0,0,0,0,0,0,0,0,75,234),(592,2033,1700000,0,952.39,-1802.55,13.959,256.801,0,0,1,0,200,20,411,0,2,500,'STEFAN',0,0,0,18651,1,0,0,0,0,0,0,1008,0,1080,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,605,406),(593,918,1700000,0,481.586,-1087.8,82.176,0.415,0,0,1,0,1,2,411,0,2,500,'FLASH',0,0,0,0,1,0,0,0,0,0,0,1010,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,191,738),(595,1105,250000,1,2056.57,-1635.72,13.502,270.187,0,0,1,0,3,3,517,0,2,500,'BOKI',0,1,1,18647,1,1,1023,0,0,1007,0,1010,1020,1085,1086,0,0,0,0,255,0,0,0,0,0,0,0,0,19,144),(597,1105,30000,1,2069.05,-1625.4,13.391,227.368,0,0,1,0,3,3,481,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,5,244),(598,842,280000,0,110.18,-1714.8,9.184,260.441,0,0,1,0,0,0,507,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,13,538),(601,1113,340000,1,2318.87,-1708.28,13.348,180.871,0,0,1,0,0,0,551,0,0,0,'NEMA',0,0,0,0,1,0,1002,0,1006,0,0,1010,1020,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,2,118),(603,798,1700000,0,1833.19,-1437.87,13.117,267.103,0,0,1,0,0,0,411,1,0,0,'NEMA',0,0,0,0,1,0,0,0,0,0,0,1009,0,0,1086,0,0,0,0,255,0,0,0,0,0,0,0,0,53,9),(604,939,1700000,0,1277.33,-2048.94,58.907,89.165,0,0,1,0,1,1,560,0,2,500,'IDEGAS',0,3,2,18650,1,2,1139,0,1033,1027,0,1010,1028,1096,0,0,1170,1141,0,1,0,0,0,0,0,0,0,0,314,897),(605,965,1700000,1,1246.88,-2022.96,59.504,91.477,0,0,1,0,0,0,560,0,2,500,'PUNGAS',0,5,4,18648,1,4,1138,0,0,1030,0,1010,0,1075,0,0,0,0,0,255,0,0,0,0,0,0,0,0,86,599),(607,743,25000,1,837.714,-1477.65,13.992,210.749,0,0,1,0,1,1,510,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,22,310),(609,964,1500000,0,876.943,-1518.53,13.18,89.73,0,0,1,0,0,0,541,0,2,500,'brzbrzbrzi',0,0,0,0,1,0,0,0,0,0,0,1010,0,1098,0,1087,0,0,0,255,0,0,0,0,0,0,0,0,23,784),(610,1053,1700000,1,879.566,-868.712,77.438,117.594,0,0,1,0,0,0,411,0,2,500,'VR BUBE 358',0,0,0,18649,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,284,282),(613,489,2500000,0,1279.36,-831.341,82.714,1.866,0,0,1,0,6,5,522,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,303,500),(614,2263,1700000,1,2003.72,-1120.43,26.436,359.993,0,0,1,0,6,6,560,0,1,500,'NEMA',0,1,1,18650,1,4,1139,0,1033,1031,0,1010,1029,1082,1086,0,1170,1141,0,2,0,0,0,0,0,0,0,0,773,180),(617,156,1700000,0,870.887,-13.72,62.922,68.474,0,0,1,0,0,0,411,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,4,371),(619,654,110000,0,1844.05,-1407.9,13.124,136.443,0,0,1,0,0,0,474,4,0,0,'16.10',0,1,1,18648,1,5,0,0,0,0,0,1009,0,1083,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,7,113),(628,1452,1200000,0,752.432,-502.34,17.047,180.577,0,0,1,0,170,0,415,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,24,200,0,0,0,90,214),(635,898,580000,0,71.51,-1738.95,2.824,279.225,0,0,1,0,10,10,581,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,158,302),(636,1452,1400000,0,752.425,-495.343,17.034,179.908,0,0,1,0,1,0,451,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,17,176),(637,919,1400000,1,555.213,-1065.54,75.298,120.634,0,0,1,0,0,0,451,0,0,0,'NEMA',0,0,0,0,1,0,0,0,0,0,0,1010,0,0,1086,0,0,0,0,255,1,0,0,0,0,0,0,0,30,375),(639,1249,1200000,1,1096.88,-1101.67,25.006,88.836,0,0,1,0,211,211,562,0,2,500,'DESPOTOVIC',0,1,1,18651,1,1,1147,0,1035,1039,0,1010,1034,1079,0,0,1171,1148,0,255,200,0,0,29,353,26,188,0,65,130),(640,1176,1700000,0,1273.83,-733.515,93.389,189.244,0,0,1,0,13,0,411,0,0,0,'NEMA',0,0,0,0,1,0,0,0,0,0,0,1009,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,76,875),(642,1212,1700000,0,2103.97,-1274.32,25.154,179.725,0,0,1,0,0,0,560,0,2,500,'DJIZLA',0,1,0,18651,1,1,1138,0,1033,1027,0,1010,1029,1080,1086,1087,1169,1141,0,0,0,0,0,0,0,0,0,0,465,145),(645,1620,1700000,0,1108.87,-730.742,100.176,90.272,0,0,1,0,0,0,411,0,2,500,'Egirl',0,0,0,18652,1,0,0,0,0,0,0,1010,0,1080,0,1087,0,0,0,255,0,0,0,0,0,0,0,0,548,633),(646,1046,1700000,1,636.58,-1123.52,44.221,46.688,0,0,1,0,0,0,411,0,2,500,'Emir King',0,5,4,0,1,0,0,0,0,0,0,1010,0,1080,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,483,731),(655,920,120000,0,1910.41,-1115.85,25.563,358.941,0,0,1,0,5,5,419,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,9,123),(656,1148,120000,0,542.65,-1289.29,17.242,356.913,0,0,1,0,0,0,419,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(660,794,700000,0,1261.16,-764.295,92.421,4.311,0,0,1,0,1,1,589,0,2,500,'GOLJF',0,0,0,18652,1,0,1016,0,0,1017,0,1009,1018,1080,0,0,0,0,0,255,0,0,0,0,0,0,0,0,116,173),(661,193,800000,0,527.845,-1288.86,16.946,0,0,0,1,0,0,0,559,1,0,0,'NEMA',0,0,0,0,1,0,1162,0,0,1072,0,1010,1066,1075,0,1087,0,0,0,255,0,0,0,0,0,0,0,0,3,578),(664,824,1700000,0,1089.98,-642.992,113.003,334.543,0,0,1,0,1,1,560,0,2,500,'PAJSERCINA',0,0,0,18647,1,0,1138,0,1032,0,0,1009,1028,0,0,0,1169,1141,0,255,4325,10000,0,0,0,31,200,0,1124,887),(667,71,1200000,0,1841.43,-1363.45,13.249,180.938,0,0,1,0,236,0,415,0,0,0,'NEMA',0,0,0,0,1,0,1001,0,0,1017,0,0,1019,1080,0,0,0,0,0,255,0,0,0,0,0,0,0,0,20,328),(671,31,700000,0,2424.62,-46.345,26.54,359.834,0,0,1,0,0,0,589,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,12,416),(672,2,700000,0,230.883,-1190.74,73.529,159.937,0,0,1,0,0,0,402,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,5,730),(673,1021,500000,1,2410.04,-662.393,127.116,283.819,0,0,1,0,0,0,506,0,1,500,'NEMA',0,0,0,0,1,0,0,0,0,0,0,1009,0,1074,0,1087,0,0,0,255,0,0,0,0,0,0,0,0,98,485),(674,1396,620000,1,2426.37,-689.286,125.8,31.238,0,0,1,0,0,0,477,0,2,500,'IRFAN',0,0,0,18647,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,29,176),(677,1440,1700000,0,973.418,-1094.99,23.617,91.285,0,0,1,0,89,89,560,0,1,500,'NEMA',0,1,1,18651,1,1,1139,0,1032,1026,0,1008,1029,1080,1086,0,1169,1141,0,2,85,0,0,0,0,0,0,0,225,136),(678,844,600000,1,658.409,-1065.07,48.458,229.228,0,0,1,0,192,192,475,0,2,500,'HARUN',0,0,0,0,1,0,0,0,0,0,0,1010,0,1080,0,1087,0,0,0,255,0,0,0,0,0,0,0,0,38,240),(683,136,2500000,1,1560.97,-2308.91,13.11,92.706,0,0,1,0,0,3,522,0,2,500,'Haris',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,208,415),(684,336,1200000,1,1864.06,-2144.77,13.207,179.457,0,0,1,0,3,1,562,0,2,500,'Belminn18',0,0,0,18648,1,0,1147,0,1038,1039,0,0,1037,1080,0,0,1171,1149,0,0,0,0,0,0,0,0,0,0,49,24),(686,1384,1700000,0,1818.27,-1558.2,13.243,335.58,0,0,1,0,0,0,560,0,0,0,'NEMA',0,0,0,0,1,0,0,0,0,0,0,0,1028,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,4,640),(687,1175,1700000,0,1138.11,-1024.57,31.601,178.312,0,0,1,0,43,43,560,0,0,0,'NEMA',0,0,0,0,1,0,1138,0,1033,1031,0,1010,1029,1080,0,0,0,0,0,2,433,0,4,0,0,0,0,0,439,546),(688,1492,1700000,0,783.664,-1424.05,13.165,271.13,0,0,1,0,0,0,560,0,0,0,'NEMA',0,0,0,0,1,0,1138,0,1033,1027,0,1010,1029,1080,0,1087,1169,1141,0,255,0,0,0,0,0,0,0,0,38,792),(690,256,2500000,0,725.436,-992.879,52.201,59.712,0,0,1,0,0,200,522,0,1,500,'NEMA',0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,103,652),(692,1452,195000,0,740.34,-524.348,15.869,269.946,0,0,1,0,0,170,576,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,22,634),(700,1164,1700000,0,831.889,-857.195,69.628,200.668,0,0,1,0,6,0,560,1,0,0,'NEMA',0,0,0,18650,1,0,1139,0,1032,1026,0,1010,1029,1079,0,0,1169,1140,0,2,0,0,0,0,0,0,0,0,49,791),(702,804,1700000,0,2180.71,-1271.85,24.364,355.069,0,0,1,0,6,0,560,0,2,500,'SULTAN',0,0,0,18650,1,0,1139,0,1032,1026,0,1010,1029,1080,0,0,1169,1140,0,2,0,0,0,0,0,0,0,0,83,488),(703,965,950000,1,1116.58,-2016.64,74.607,204.008,0,0,1,0,0,0,487,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,7,3),(704,33,1500000,1,2146.56,-1291.6,23.529,91.069,0,0,1,0,8,3,541,0,2,500,'JEBAC',0,0,0,18650,1,0,0,0,0,0,0,1010,0,1080,1086,1087,0,0,0,255,235,0,0,0,0,0,0,0,274,774),(705,1081,1700000,0,193.461,-1313.42,69.962,93.606,0,0,1,0,200,0,560,0,0,0,'NEMA',0,0,0,18649,1,0,1139,0,1033,1031,0,0,1029,1080,0,0,1170,1141,0,2,0,0,0,0,0,0,0,0,393,893),(706,821,1700000,0,4275.67,2998.08,4.129,127.352,0,0,1,0,255,255,560,0,2,500,'[GM]Selvir',0,0,0,0,1,0,1138,0,0,0,0,0,0,1080,0,0,0,0,0,1,0,0,0,0,0,0,0,0,182,48),(708,1222,120000,0,664.87,-1059.98,48.998,237.872,0,0,1,0,192,192,419,0,2,500,'Adiin',0,1,1,18650,1,1,0,0,0,0,0,1010,0,1080,0,0,0,0,0,255,0,0,0,0,0,0,0,0,28,435),(710,732,590000,0,1221.4,-1105.39,25.003,50.328,0,0,1,0,1,1,469,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,30,141),(711,1147,1700000,0,534.482,-1275.75,16.968,308.077,0,0,1,0,0,0,411,0,2,500,'RUSSIA  ',0,0,0,18648,1,0,0,0,0,0,0,1009,0,1080,0,1087,0,0,0,255,0,0,0,0,0,0,0,0,64,875),(712,1164,540000,0,826.702,-866.146,69.352,269.683,0,0,1,0,2,0,565,0,0,0,'NEMA',0,0,0,0,1,0,0,0,1053,1047,0,1010,1046,1080,0,0,1153,1151,0,2,0,0,0,0,0,0,0,0,15,246),(715,1212,2000000,0,2100.86,-1275.95,25.623,180.633,0,0,1,0,0,0,579,0,2,500,'DJIZLA',0,0,0,0,1,0,0,0,0,0,0,1010,0,1080,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,86,138),(716,1395,700000,0,527.437,-1288.69,17.049,359.679,0,0,1,0,0,0,402,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(717,1395,145000,0,527.437,-1288.69,17.049,359.679,0,0,1,0,0,0,410,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,10,124),(720,891,310000,1,350.423,-1281.27,53.715,26.051,0,0,1,0,1,1,445,0,2,500,'ConeJebach',0,0,0,0,1,0,0,0,0,0,0,1010,0,1078,0,0,0,0,0,255,0,0,0,24,321,0,0,0,85,113),(721,1475,210000,0,2427.27,-1640.73,13.549,183.601,0,0,1,0,16,0,413,0,2,500,'LujanDzony',0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,24,100,0,0,0,44,841),(722,419,440000,1,2417.83,-688.548,125.603,78.086,0,0,1,0,0,0,580,0,2,500,'LJ-30-MJ',0,0,0,18647,1,0,1023,0,0,0,0,1010,0,1080,0,1087,0,0,0,255,0,0,0,0,0,0,0,0,21,339),(726,1113,250000,1,2318.98,-1718.01,13.673,178.923,0,0,1,0,0,0,482,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,2,652),(727,1010,410000,0,855.035,-1512.52,13.352,265.494,0,0,1,0,2,2,489,0,2,500,'Nikola',0,0,0,0,1,0,0,0,0,0,0,1010,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,96,250),(728,1171,1700000,0,979.208,-1047.47,30.104,264.155,0,0,1,0,6,6,560,0,2,500,'Nikola',0,0,0,18648,1,0,1138,0,0,0,0,1010,0,1083,0,0,0,0,0,0,0,0,0,0,0,0,0,0,172,372),(729,1418,1700000,1,2974.48,-763.948,10.521,178.731,0,0,1,0,0,0,560,0,2,500,'Mozzart',0,0,0,0,1,0,1139,0,1033,1031,0,1010,1029,1080,0,1087,1170,1141,0,2,0,0,0,0,0,0,0,0,761,600),(735,1045,320000,0,871.119,-875.664,77.346,179.824,0,0,1,0,0,0,426,0,1,500,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,4,145),(736,1045,300000,0,876.477,-873.51,77.716,50.719,0,0,1,0,0,0,400,0,1,500,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,4,40),(739,1473,1700000,0,614.478,-1080.09,58.754,35.284,0,0,1,0,226,226,411,0,2,500,'===187===',0,0,0,0,1,0,0,0,0,0,0,1010,0,1080,0,1087,0,0,0,255,0,0,0,0,0,0,0,0,454,881),(741,940,700000,1,1249.39,-774.291,91.212,182.017,0,0,1,0,0,0,402,0,0,0,'NEMA',0,0,0,0,1,0,0,0,0,0,0,1010,0,1025,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,28,667),(746,352,145000,0,539.46,-1271.63,16.898,306.853,0,0,1,0,0,0,410,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,3,553),(747,2127,1700000,0,391.107,-1239.97,51.625,27.409,0,0,1,0,1,1,560,0,2,500,'IDE GAS',0,0,0,0,1,0,1139,0,0,1030,0,1010,1029,1080,0,0,0,1140,0,255,0,0,0,0,0,0,0,0,284,423),(748,2211,1700000,0,2966.03,-799.93,10.678,0.739,0,0,1,0,59,59,560,0,2,500,'BilanM',0,0,0,18648,1,0,1139,0,1033,1026,0,1010,0,1080,1086,1087,1170,1141,0,255,0,0,0,0,0,0,0,0,42,734),(749,1292,1700000,0,103.582,-1695.31,10.492,275.513,0,0,1,0,0,0,560,0,0,0,'NEMA',0,0,0,0,1,0,0,0,0,0,0,0,1028,1080,0,0,1169,1141,0,2,0,0,0,0,0,0,0,0,48,857),(750,1250,1200000,0,2035.41,-1082.54,24.317,341.146,0,0,1,0,0,0,562,0,2,500,'Stefanoov1c',0,1,1,18649,1,1,1147,0,1038,1040,0,1010,1034,1074,1086,0,1171,1149,0,0,0,0,0,0,0,0,0,0,40,930),(754,381,195000,0,2523.79,-1687.49,13.178,55.678,0,0,1,0,6,1,576,0,2,500,'BilanM',0,0,0,18647,1,0,0,0,0,1137,0,1010,1135,1074,1086,0,1190,1193,0,2,0,0,0,0,0,0,0,0,14,961),(757,1576,1000000,1,527.437,-1288.69,17.049,359.679,0,0,1,0,1,1,429,0,1,500,'NEMA',0,0,0,18649,1,0,0,0,0,0,0,1009,0,1074,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,489,151),(758,0,2000000,0,997.637,-1072.33,29.405,181.013,0,0,2,7,95,95,579,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(759,0,2000000,0,1001.64,-1072.29,29.409,180.32,0,0,2,7,95,95,579,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(760,0,2000000,0,1005.32,-1072.06,29.418,181.673,0,0,2,7,95,95,579,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(761,0,2000000,0,1000.61,-1079.04,29.492,268.893,0,0,2,7,95,95,579,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(765,793,110000,1,1254.76,-2062.16,59.736,271.94,0,0,1,0,0,0,474,0,2,500,'TUNING',0,1,1,18650,1,1,0,0,0,0,0,1009,0,1081,0,1087,0,0,0,255,0,0,0,0,0,0,0,0,67,164),(766,1286,1500000,0,2495.29,-951.697,82.065,87.164,0,0,1,0,1,0,541,0,1,500,'NEMA',0,0,1,18649,1,0,0,0,0,0,0,1010,0,1097,0,1087,0,0,0,255,0,0,0,0,0,0,0,0,83,270),(768,1600,410000,0,1935.11,-1117.7,26.561,181.182,0,0,1,0,211,0,489,0,2,500,'Frenkie',0,0,0,0,1,0,1016,0,1006,0,0,0,1018,1080,0,1087,0,0,0,255,0,0,0,24,100,0,0,0,53,351),(769,844,1700000,1,655.542,-1067.93,48.306,228.559,0,0,1,0,192,1,560,0,0,0,'NEMA',0,0,0,0,1,0,0,0,0,1031,0,1010,0,1079,0,1087,1170,1140,0,255,0,0,0,0,0,0,0,0,47,430),(770,844,800000,0,660.745,-1062.09,48.712,229.783,0,0,1,0,192,19,468,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,3,274),(771,1492,1700000,0,527.437,-1288.69,17.049,359.679,0,0,1,0,0,0,411,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,5,266),(772,795,1700000,0,4314.44,3019.48,3.971,39.019,0,0,1,0,211,211,560,0,0,0,'NEMA',0,0,0,18648,1,0,1138,0,1032,1027,0,1010,1029,1078,1086,0,1169,1141,0,2,0,0,0,0,0,0,0,0,326,419),(773,1450,1700000,1,2458.04,-1013.14,59.436,179.619,0,0,1,0,6,6,560,0,2,500,'mateo',0,0,0,18647,1,0,1138,0,0,0,0,1010,1028,1080,1086,1087,1169,1140,0,2,0,0,0,0,0,0,0,0,99,861),(774,1453,1700000,0,860.056,-1419.2,12.586,357.39,0,0,1,0,6,6,411,0,2,500,'Rodeo :)',0,0,0,18647,1,0,0,0,0,0,0,1010,0,1080,0,1087,0,0,0,255,0,0,0,0,0,0,0,0,146,323),(775,1205,180000,0,527.437,-1288.69,17.049,359.679,0,0,1,0,0,0,401,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,18,564),(776,1678,315000,1,1037.83,-1071.18,29.588,180.398,0,0,1,0,0,0,500,0,2,500,'LUKA',0,1,1,0,1,1,0,0,0,0,0,1010,1019,1074,1086,0,0,0,0,255,0,0,0,0,0,0,0,0,28,672),(777,1077,310000,1,667.915,-546.268,16.211,89.665,0,0,1,0,0,0,445,0,2,500,'JoKer',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,5,957),(779,0,2000000,0,78.904,-1752.17,3.155,0.652,0,0,2,8,87,87,579,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,990,0,31,391,24,96,0,0,0),(780,0,2000000,0,70.564,-1734.86,3.223,359.903,0,0,2,8,87,87,579,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(783,1164,225000,0,820.641,-868.253,69.685,258.629,0,0,1,0,5,0,535,0,0,0,'NEMA',0,0,0,0,1,0,0,0,0,1120,0,1010,1114,1083,0,0,1117,0,0,1,0,0,0,0,0,0,0,0,12,137),(784,1564,1700000,0,1069.81,-1102.43,24.529,270.734,0,0,1,0,0,0,411,0,2,500,'BEGI',0,0,0,18648,1,0,0,0,0,0,0,1009,0,1078,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,34,282),(789,1687,590000,0,1117.09,-2023.03,74.437,311.89,0,0,1,0,0,0,469,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,9,296),(790,1689,570000,0,2013.1,-1117.73,26.287,179.137,0,0,1,0,0,0,554,0,2,500,'UROS',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,10,660),(791,435,1700000,0,1246.67,-1107.31,25.194,265.469,0,0,1,0,3,2,560,0,2,500,'HAWKINS',0,0,0,0,1,0,1138,0,1033,1031,0,1010,1028,1081,1086,1087,1169,1140,0,1,0,0,0,0,0,0,0,0,15,305),(792,966,950000,1,1456.39,-620.415,99.982,134.594,0,0,1,0,0,0,487,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,78,485),(793,1731,225000,0,1793.07,-2150.25,13.507,359.546,0,0,1,0,1,4,567,0,2,500,'milorad123',0,1,1,18649,1,1,0,0,1130,0,0,1010,1129,1080,0,0,0,0,0,2,100,10000,0,0,0,0,0,0,116,526),(800,1047,700000,1,4307.64,3010.99,3.88,39.115,0,0,1,0,0,0,589,0,2,500,'1312',0,0,0,18648,1,0,1016,0,1006,1017,0,1010,1018,1080,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,94,453),(802,1646,700000,0,1246.88,-2047.34,59.833,88.3,0,0,1,0,0,0,402,0,2,500,'MY NIGGA',0,0,0,18648,1,0,0,0,0,0,0,1009,0,1025,0,0,0,0,0,255,0,0,0,0,0,0,0,0,133,21),(803,1387,1500000,0,1560.98,-2335.21,13.173,89.064,0,0,1,0,4,0,541,0,0,0,'NEMA',0,0,0,0,1,0,0,0,0,0,0,1010,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,27,487),(804,90,405000,1,2251.14,-1326.53,24.102,61.314,0,0,1,0,0,0,602,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,21,679),(805,90,700000,0,2242.64,-1319.69,23.262,20.728,0,0,1,0,0,0,402,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,34,593),(808,1756,320000,1,2016.72,-1707.83,12.97,90.118,0,0,1,0,0,0,426,0,2,500,'C.Houston',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,9,785),(809,1615,1200000,1,2390.48,-1716.05,13.268,0.699,0,0,1,0,0,0,562,0,2,500,'SAGI',0,3,2,0,1,1,1147,0,1038,1041,0,1010,1034,1079,1086,0,1172,1148,0,255,0,0,0,0,0,0,0,0,26,278),(810,90,300000,0,2236.71,-1326.8,24.645,301.367,0,0,1,0,0,0,400,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,21,240),(812,1038,225000,0,1475.84,-1168.41,24.475,91.231,0,0,1,0,1,1,567,0,2,500,'Sava',0,3,2,0,1,2,0,0,0,0,0,1010,1129,1076,1086,1087,1188,1186,0,2,0,0,0,26,50,0,0,0,92,194),(813,1450,1700000,1,2455.75,-1009.43,59.5,174.712,0,0,1,0,0,0,411,0,0,0,'NEMA',0,1,1,18647,1,0,0,0,0,0,0,0,0,1080,0,0,0,0,0,255,0,0,0,0,0,0,0,0,3,542),(816,1731,590000,0,1802.18,-2146.14,17.604,90.464,0,0,1,0,1,2,469,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,6,577),(823,1725,1700000,1,647.792,-1514.11,14.633,91.841,0,0,1,0,0,0,411,0,2,500,'RealStexR',0,1,1,18647,1,1,0,0,0,0,0,1010,0,1098,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,58,729),(827,1762,1700000,0,1561.09,-2260.69,13.253,90.682,0,0,1,0,211,211,560,0,2,500,'AUSCHWITZ',0,0,0,0,1,0,1138,0,1032,0,0,1010,1028,1079,0,1087,1169,1140,0,255,0,0,0,0,0,0,0,0,225,412),(838,1450,1400000,0,2453.93,-1009.05,59.439,177.838,0,0,1,0,0,0,451,0,0,0,'NEMA',0,0,0,18647,1,0,0,0,0,0,0,1010,0,1080,0,1087,0,0,0,255,0,0,0,0,0,0,0,0,4,575),(840,1473,2500000,1,606.943,-1087.08,58.398,36.594,0,0,1,0,226,226,522,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,25,628),(841,1641,585000,1,934.892,-839.05,94.231,115.575,0,0,1,0,0,0,561,0,2,500,'fakeTAXI',0,5,4,0,1,5,1058,0,1055,1062,0,1010,1064,0,1086,0,1155,1154,0,2,0,0,4,24,500,0,0,0,151,568),(842,1718,1400000,1,1041.42,-1053.22,31.41,359.483,0,0,1,0,79,79,451,0,2,500,'Sava',0,0,0,18648,1,0,0,0,0,0,0,1010,0,1080,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,14,781),(844,1795,1400000,1,1105.46,-729.883,100.599,90.508,0,0,1,0,0,0,451,0,2,500,'protablice',0,0,0,0,1,0,0,0,0,0,0,1010,0,1083,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,29,0),(845,1604,950000,0,2808.03,-1183.18,25.568,268.079,0,0,1,0,200,0,487,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,12,657),(846,1192,2000000,0,851.68,-582.987,18.083,177.755,0,0,1,0,200,1,579,0,2,500,'NILE',0,0,0,0,1,0,0,0,0,0,0,1010,0,1080,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,21,238),(847,145,1700000,0,1104.37,-1048.11,31.519,271.062,0,0,1,0,0,0,560,0,2,500,'BMW MAFIJA',0,0,0,0,1,0,1138,0,1033,1027,0,1010,1029,1080,1086,1087,1170,1141,0,2,0,0,0,0,0,0,0,0,126,260),(851,1741,1700000,0,164.452,-1781.68,3.84,268.634,0,0,1,0,0,0,411,0,0,0,'NEMA',0,0,0,0,1,0,0,0,0,0,0,1010,0,0,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,53,162),(852,1711,1700000,0,149.173,-1473.76,24.871,50.988,0,0,1,0,1,2,560,0,2,500,'1312',0,4,4,18648,1,4,1139,0,1033,1031,0,1010,1029,0,1086,1087,1169,1141,0,0,0,0,0,0,0,0,0,0,502,713),(854,879,120000,0,666.51,-1421.1,14.393,0.783,0,0,1,0,5,2,412,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,19,939),(855,1176,30000,0,516.965,-1286.94,16.757,117.752,0,0,1,0,0,0,481,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,4,504),(857,1642,1700000,0,1202.82,-1028.05,31.857,90.37,0,0,1,0,0,0,560,0,2,500,'luka sisa',0,0,0,0,1,0,1139,0,1032,1031,0,1009,1028,1073,0,1087,1169,1140,0,0,0,0,0,0,0,0,0,0,24,929),(858,378,1200000,1,2409.93,-687.844,125.887,120.66,0,0,1,0,1,1,562,0,1,500,'NEMA',0,1,1,18651,1,1,1146,0,1035,1036,0,1009,1034,0,1086,0,1171,1148,0,255,0,0,0,0,0,0,0,0,81,42),(861,180,2500000,1,2356.83,-1679.58,13.084,356.814,0,0,1,0,0,0,522,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,453,175),(862,665,30000,0,530.75,-1277.69,16.749,291.963,0,0,1,0,0,0,481,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,26,765),(874,855,1700000,1,749.595,-552.317,16.961,179.334,0,0,1,0,0,0,560,0,0,0,'NEMA',0,0,0,0,1,0,1139,0,1033,1027,0,1010,0,1073,0,0,1170,1141,0,1,0,0,0,0,0,0,0,0,5,396),(875,1725,2500000,1,649.784,-1521.41,14.438,86.911,0,0,1,0,20,20,522,0,2,500,'RealStexR',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,46,836),(877,1128,500000,1,761.564,-515.232,16.428,183.4,0,0,1,0,0,0,506,0,0,0,'NEMA',0,0,0,18650,1,0,0,0,0,0,0,1009,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,9,383),(879,1866,500000,0,2516.1,-1059.55,69.262,349.716,0,0,1,0,0,0,506,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,36,248),(884,898,1200000,0,195.235,-1775.27,3.404,87.624,0,0,1,0,90,90,415,0,0,0,'NEMA',0,0,0,0,1,0,1001,0,0,1017,0,1010,1018,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,113,440),(891,2625,1700000,0,895.773,-777.008,100.859,20.244,0,0,1,0,4,0,411,0,2,500,'DIZELAS',0,0,0,18649,1,0,0,0,0,0,0,1009,0,1074,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,451,378),(892,1860,225000,0,2451.55,-1054.48,59.611,356.768,0,0,1,0,0,0,567,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,5,775),(894,1860,410000,0,2452.08,-1054.95,59.886,356.068,0,0,1,0,0,0,489,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,8,852),(896,1861,2500000,1,886.417,-1417.61,14.025,271.621,0,0,1,0,0,0,522,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,479,802),(897,1835,1700000,0,882.984,-1453.93,13.201,359.441,0,0,1,0,0,0,411,0,2,500,'DUVAJ GA',0,0,0,18649,1,0,0,0,0,0,0,1010,0,1075,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,661,787),(898,53,1700000,1,835.665,-753.674,84.968,220.918,0,0,1,0,0,0,560,0,0,0,'NEMA',0,0,0,0,1,0,1139,0,1033,1027,0,1010,1029,1074,1086,1087,1169,1141,0,2,0,0,0,0,0,0,0,0,17,343),(899,809,500000,0,976.829,-825.792,96.057,28.827,0,0,1,0,0,0,506,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,1,684),(901,879,540000,0,659.839,-1422.15,14.316,2.144,0,0,1,0,0,0,565,0,2,500,'AEZAKMI',0,1,1,18647,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,10000,0,0,0,0,0,0,208,301),(904,1055,370000,0,936.202,-1112.37,23.844,23.395,0,0,1,0,3,2,555,0,2,500,'Simoni HD',0,3,4,18647,1,1,0,0,0,0,0,1010,0,1080,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,102,393),(905,864,1700000,0,2346.42,549.253,7.593,0.058,0,0,1,0,1,1,560,0,2,500,'HRSAK',0,0,0,18647,1,0,1139,0,0,1026,0,1010,1029,0,1086,0,0,1141,0,255,0,0,0,0,0,0,0,0,395,158),(910,1645,1700000,0,2485.9,-1014.59,65.221,149.233,0,0,1,0,108,103,560,0,0,0,'NEMA',0,0,0,18651,1,0,1139,0,1032,1030,0,1010,1028,1080,0,1087,1170,1140,0,255,0,0,0,0,0,0,0,0,203,507),(915,2209,1500000,1,648.11,-1709.7,14.047,355.665,0,0,1,0,95,32,541,0,2,500,'Shadow',0,1,2,18649,1,1,0,0,0,0,0,1010,0,1080,0,1087,0,0,0,255,0,0,0,0,0,0,0,0,299,309),(916,1861,1700000,0,886.896,-1422.76,14.416,269.74,0,0,1,0,0,0,411,0,2,500,'PUN GASSS',0,0,0,18647,1,0,0,0,0,0,0,1010,0,1079,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,427,886),(919,1311,1700000,1,1561.5,-2308.72,13.277,268.178,0,0,1,0,7,7,411,0,0,0,'NEMA',0,0,0,0,1,0,0,0,0,0,0,1010,0,1083,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,16,704),(920,414,215000,0,2137.24,-1273.17,25.482,181.416,0,0,1,0,0,0,483,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,6,220),(921,1462,1500000,0,2444.21,-51.477,27.062,1.098,0,0,1,0,0,0,541,0,2,500,'Momenzi ',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,6,50),(922,1762,1700000,1,1561.07,-2257.51,13.208,90.259,0,0,1,0,211,211,560,0,2,500,'FSOCIETY',0,1,1,0,1,1,1138,0,1032,0,0,1010,1028,1079,1086,1087,1169,1140,0,255,0,0,0,0,0,0,0,0,25,734),(924,1979,1700000,0,292.121,-1338.52,53.145,352.124,0,0,1,0,1,1,560,0,2,500,'Selmir',0,5,4,0,1,5,1138,0,1033,1031,0,1010,1029,1079,1086,0,1170,1141,0,2,0,0,0,0,0,0,0,0,18,989),(925,1382,320000,0,527.437,-1288.69,17.049,359.679,0,0,1,0,0,0,426,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,2,37),(929,1046,1700000,0,631.635,-1118.7,45.757,45.292,0,0,1,0,0,0,560,0,2,500,'EmirKing',0,1,0,0,1,0,1139,0,1032,1027,0,1010,1028,1080,1086,1087,1169,1141,0,2,0,0,0,0,0,0,0,0,296,0),(937,1108,2500000,0,2403.44,-1642.38,13.115,175.651,0,0,1,0,3,1,522,2,0,0,'NEMA',0,0,0,0,1,0,0,0,0,0,0,0,0,1083,0,0,0,0,0,255,0,0,0,0,0,0,0,0,220,120),(944,1591,1700000,0,2032.17,-1054.71,24.513,343.572,0,0,1,0,1,5,411,0,2,500,'Spookyyyy',0,5,3,18649,1,3,0,0,0,0,0,1010,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,551,451),(945,1995,1700000,0,1431.21,-883.961,50.395,41.848,0,0,1,0,0,0,560,0,0,0,'NEMA',0,0,0,18648,1,0,1139,0,1033,1030,0,1010,1029,1080,1086,1087,1169,1141,0,2,0,0,0,0,0,0,0,0,85,926),(946,2047,300000,0,784.959,-1470,13.743,263.995,0,0,1,0,24,24,400,0,1,500,'NEMA',0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,120,751),(947,1913,1700000,1,2096.65,-1327.03,25.27,357.818,0,0,1,0,241,241,411,0,0,0,'NEMA',0,0,0,0,1,0,0,0,0,0,0,1010,0,1080,1086,0,0,0,0,255,0,0,0,0,0,0,0,0,6,112),(948,1672,1400000,0,2035.52,-1057.31,24.501,148.548,0,0,1,0,0,0,451,0,2,500,'Nenad!',0,0,0,18649,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,175,296),(951,1990,1700000,0,1043.02,-1072.04,29.213,132.418,0,0,1,0,0,0,411,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,28,218),(952,1925,800000,0,2452.4,-1107.34,42.997,179.169,0,0,1,0,0,0,559,0,2,500,'Donn',0,1,3,0,1,0,1162,0,1067,1069,0,1010,1066,1081,1086,1087,1160,1159,0,1,0,0,0,0,0,0,0,0,9,512),(955,378,1400000,1,2392.58,-701.01,124.726,307.37,0,0,1,0,0,0,451,0,2,500,'ULTIMATE',0,0,0,18652,1,0,0,0,0,0,0,1010,0,1073,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,79,361),(958,1902,1700000,0,816.906,-1499.57,12.858,357.701,0,0,1,0,0,0,411,0,2,500,'PUNGAS 69',0,0,0,18647,1,0,0,0,0,0,0,1010,0,1080,0,1087,0,0,0,255,0,0,0,0,0,0,0,0,95,0),(961,2033,700000,0,527.437,-1288.69,17.049,359.679,0,0,1,0,0,0,402,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,6,288),(966,1591,1700000,0,2022.36,-1040.82,24.866,310.58,0,0,1,0,0,0,560,0,2,500,'Spookyyyy',0,0,0,18648,1,0,0,0,1033,0,0,1010,1029,1074,0,1087,1170,1141,0,2,0,0,0,0,0,0,0,0,71,540),(972,258,180000,0,511.898,-1299.01,17.022,98.938,0,0,1,0,0,0,401,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,3),(973,439,1200000,0,309.936,-1333.39,53.218,36.207,0,0,1,0,200,0,415,0,0,0,'NEMA',0,0,0,0,1,0,1023,0,0,0,0,1010,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,147,814),(977,2573,1700000,1,2473.47,-1687.52,13.191,357.322,0,0,1,0,0,0,411,0,2,500,'MiLAN',0,0,0,18648,1,0,0,0,0,0,0,1010,0,1080,0,1087,0,0,0,255,0,0,0,0,0,0,0,0,185,367),(979,1981,1400000,0,1180.58,-1249.75,14.875,182.492,0,0,1,0,0,0,451,0,2,500,'!K1M1!',0,0,0,0,1,0,0,0,0,0,0,1010,0,1080,0,0,0,0,0,255,0,0,0,34,75,29,200,0,208,644),(981,613,1700000,0,4299.27,3045.12,3.926,213.448,0,0,1,0,5,5,560,0,2,500,'ZG 1357 HR',0,1,1,18647,1,1,1138,0,1033,1026,0,1010,1028,1080,1086,1087,1169,1141,0,2,0,0,0,0,0,0,0,0,195,815),(983,2126,2500000,0,1262.8,-2009.88,58.905,179.34,0,0,1,0,8,0,522,0,1,500,'NEMA',0,1,1,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,705,996),(985,2322,1700000,1,928.868,-858.725,93.128,0.558,0,0,1,0,3,4,560,0,2,500,'Nerko',0,1,0,18651,1,0,1138,0,1033,1031,0,1010,1029,1080,1086,1087,1170,1141,0,2,0,0,0,0,0,0,0,0,290,0),(987,2047,1500000,0,783.06,-1481.52,13.2,260.997,0,0,1,0,24,24,541,0,2,500,'Scorpion',0,0,0,0,1,0,0,0,0,0,0,1010,0,0,1086,0,0,0,0,255,1,0,0,0,0,0,0,0,42,875),(990,527,1700000,0,1050.12,-639.027,119.78,47.074,0,0,1,0,0,0,560,0,2,500,'JESTE',0,0,0,18650,1,0,1138,0,1033,1027,0,1010,1029,1083,1086,1087,1169,1141,0,255,0,0,0,0,0,0,0,0,562,625),(992,527,1500000,1,1033.89,-641.305,119.703,325.927,0,0,1,0,0,0,541,0,2,500,'PHOENIX BRT',0,0,0,0,1,1,0,0,0,0,0,1010,0,1083,0,1087,0,0,0,255,0,0,0,0,0,0,0,0,101,773),(994,2092,1700000,0,1273.39,2532.61,10.483,272.269,0,0,1,0,6,123,560,0,2,500,'Kakarot',0,1,2,18650,1,0,1138,0,1032,1027,0,1010,1029,1080,1086,1087,1169,1141,0,2,0,0,0,0,0,0,0,0,154,757),(997,148,300000,0,527.437,-1288.69,17.049,359.679,0,0,1,0,0,0,400,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,2,166),(1001,148,120000,0,1833.83,-1419.86,13.371,92.018,0,0,1,0,0,0,412,0,0,0,'NEMA',0,0,1,18648,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,3,946),(1002,2046,1700000,0,860.338,-1794.42,13.567,357.166,0,0,1,0,223,223,411,0,2,500,'Gospodin 1',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,126,337),(1003,1768,300000,0,2049.96,-1739.73,13.661,270.729,0,0,1,0,0,0,400,0,2,500,'1337',0,0,1,0,1,1,0,0,0,0,0,1010,0,1080,1086,0,0,0,0,255,0,0,0,0,0,0,0,0,60,478),(1005,2046,620000,0,870.691,-1795.93,13.543,355.618,0,0,1,0,128,128,480,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,40,879),(1006,1673,1700000,0,2013.01,-1073.98,24.306,66.793,0,0,1,0,5,5,560,0,0,0,'NEMA',0,0,0,18649,1,0,1139,0,1032,0,0,1010,1028,1078,0,0,1169,1140,0,1,0,0,0,0,0,0,0,0,244,808),(1007,2087,700000,1,527.437,-1288.69,17.049,359.679,0,0,1,0,0,0,402,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,9,170),(1009,1967,1700000,0,1560.83,-2254.4,13.195,90.969,0,0,1,0,1,1,560,0,0,0,'NEMA',0,0,0,18647,1,0,1139,0,1033,1031,0,1010,1029,1074,1086,1087,1170,1141,0,1,0,0,0,0,0,0,0,0,112,435),(1014,1526,310000,1,2062.45,-1636.87,13.392,268.247,0,0,1,0,0,0,445,0,2,500,'Tuno',0,0,0,0,1,0,0,0,0,0,0,1009,0,1073,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,15,958),(1017,1300,2500000,0,1448.17,-931.311,36.357,172.794,0,0,1,0,0,0,522,0,2,500,'.tea.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,231,463),(1018,1981,2500000,1,1185.4,-1250,14.741,166.595,0,0,1,0,0,1,522,0,2,500,'PLeBeX',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,196,358),(1020,1768,145000,0,2049.65,-1736.49,13.225,267.303,0,0,1,0,211,211,410,0,0,0,'NEMA',0,0,0,0,1,0,1023,0,0,0,0,1010,1020,1080,1086,0,0,0,0,255,0,0,0,0,0,0,0,0,65,662),(1023,2186,1700000,1,948.578,-704.644,121.907,30.452,0,0,1,0,6,6,411,0,1,500,'NEMA',0,5,4,18650,1,5,0,0,0,0,0,1009,0,1080,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,407,316),(1024,2571,2000000,1,1650.37,-1110.93,23.797,92.565,0,0,1,0,235,0,579,0,2,500,'SALE STEPA',0,2,2,18652,1,0,0,0,0,0,0,1010,0,0,0,1087,0,0,0,255,79,2500,0,34,127,26,98,0,351,841),(1025,1768,2500000,0,2054.4,-1728.96,13.116,180.626,0,0,1,0,0,0,522,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,9,282),(1026,1979,1700000,0,300.393,-1332.88,53.17,75.774,0,0,1,0,0,0,411,0,2,500,'Selmir',0,5,4,0,1,5,0,0,0,0,0,1010,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,7,143),(1028,2025,215000,0,527.437,-1288.69,17.049,359.679,0,0,1,0,0,0,527,1,0,0,'NEMA',0,2,1,0,1,1,0,0,0,0,0,1009,0,0,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,34,856),(1034,1938,1700000,0,164.212,-1444.2,36.034,48.974,0,0,1,0,3,3,411,0,2,500,'UVATI ME!',0,5,4,18649,1,5,0,0,0,0,0,1010,0,1073,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,865,571),(1035,2275,1700000,0,1568.13,-1891.54,13.213,180.826,0,0,1,0,3,3,560,0,0,0,'NEMA',0,0,0,0,1,0,1138,0,1033,1027,0,1010,1029,1075,1086,1087,1170,1140,0,0,0,0,0,0,0,0,0,0,135,597),(1038,2156,530000,0,1620.98,-1024.63,23.709,111.136,0,0,1,0,1,1,545,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,33,322),(1039,427,185000,0,1319.11,-644.529,108.844,18.614,0,0,1,0,2,3,534,0,2,500,'TEC',0,1,1,18648,1,1,0,0,0,1122,0,1010,1127,1080,1086,1087,1179,1180,0,2,0,0,0,0,0,0,0,0,19,395),(1040,53,185000,0,833.717,-760.342,84.92,249.403,0,0,1,0,146,0,534,0,2,500,'JEBACNANIVO',0,0,0,18648,1,0,0,0,0,1106,0,1008,1126,1080,1086,1087,1179,1178,0,2,0,0,0,0,0,0,0,0,305,297),(1041,2574,1700000,0,4252.09,3051.08,1.777,103.12,0,0,1,0,211,211,560,0,0,0,'NEMA',0,0,0,0,1,0,1138,0,1033,1031,0,1010,1029,1085,1086,1087,1170,1141,0,0,0,0,0,0,0,0,0,0,10,514),(1042,1937,1700000,0,1280.94,-1058.12,29.156,93.868,0,0,1,0,0,0,560,0,2,500,'STARCEVIC ',0,5,4,18647,1,5,1139,0,1033,1027,0,1010,1029,1080,1086,1087,1170,1141,0,255,0,0,0,0,0,0,0,0,408,304),(1043,2068,1700000,0,1755.82,-2146.32,13.21,90.708,0,0,1,0,0,0,560,0,2,500,'MrazeX',0,3,3,0,1,2,1139,0,1032,1030,0,1010,0,1082,1086,1087,1169,1140,0,255,0,0,0,0,0,0,0,0,44,26),(1055,2049,1200000,0,973.16,-1809.22,13.846,6.78,0,0,1,0,0,0,562,0,2,500,'MARKO.C',0,0,0,18647,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,149,541),(1056,2073,1700000,1,760.208,-1605.74,12.925,0.25,0,0,1,0,1,1,560,0,0,0,'NEMA',0,0,0,18651,1,0,1139,0,1033,1027,0,1010,1028,1080,1086,1087,1169,1141,0,0,0,0,0,0,0,0,0,0,25,46),(1057,69,3000000,0,2049.93,-2593.46,14.468,90.847,0,0,1,0,0,0,519,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,6,820),(1066,1462,1700000,0,2444.18,-44.699,26.685,1.755,0,0,1,0,233,233,560,0,2,500,'Lamelica',0,0,0,0,1,0,1139,0,0,0,0,0,1029,1079,0,0,0,0,0,255,0,0,0,0,0,0,0,0,41,421),(1067,1875,1700000,1,1700.37,-2083.17,13.21,181.789,0,0,1,0,1,1,560,0,2,500,'SoWa',0,1,1,18647,1,1,1138,0,1033,1027,0,1010,1028,1079,1086,1087,1169,1141,0,0,0,0,0,0,0,0,0,0,107,456),(1068,1750,1400000,0,2855.06,-1343.22,10.734,270.012,0,0,1,0,6,6,451,0,2,500,'IDE GAS',0,0,0,0,1,0,0,0,0,0,0,1010,0,1080,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,122,745),(1070,2322,2500000,0,931.975,-856.256,93.047,23.629,0,0,1,0,6,1,522,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,381,734),(1071,1988,1700000,0,2007.97,-1076.12,24.29,334.472,0,0,1,0,1,0,411,0,1,500,'NEMA',0,0,1,0,1,1,0,0,0,0,0,1008,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,47,789),(1076,2073,570000,0,527.437,-1288.69,17.049,359.679,0,0,1,0,1,1,554,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,1,71),(1077,69,-1,0,2231.01,1273.13,10.472,359.881,0,0,1,0,1,1,409,0,2,5000,'iloveyou',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,641),(1078,69,-1,0,2231.04,1285.46,10.472,359.931,0,0,1,0,0,0,409,0,2,5000,'iloveyou',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,116),(1079,69,-1,0,2231.02,1300.47,10.472,358.946,0,0,1,0,1,1,409,0,2,5000,'iloveyou',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,46),(1080,69,-1,0,2223.67,1299.74,10.472,180.814,0,0,1,0,1,1,409,0,2,5000,'iloveyou',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(1081,69,-1,0,2223.78,1285.35,10.472,180.365,0,0,1,0,1,1,409,0,2,5000,'iloveyou',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,63),(1082,69,-1,0,2223.77,1272.74,10.472,180.836,0,0,1,0,1,1,409,0,2,5000,'iloveyou',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,57),(1084,1641,170000,1,933.962,-853.448,93.487,207.687,0,0,1,0,5,5,422,1,0,0,'NEMA',0,0,0,18651,1,0,0,0,0,0,0,1010,0,1080,0,1087,0,0,0,255,0,0,0,0,0,0,0,0,5,608),(1088,1902,540000,0,813.357,-1500.33,12.786,355.958,0,0,1,0,0,0,565,0,2,500,'DINAMICNO',0,0,0,0,1,0,0,0,0,0,0,1010,0,0,0,1087,0,0,0,255,0,0,0,0,0,0,0,0,21,647),(1090,1275,1200000,1,1370.8,-1087.36,24.458,173.325,0,0,1,0,3,3,562,0,1,500,'NEMA',0,0,0,18647,1,0,1146,0,1038,1041,0,1010,1037,1080,1086,1087,1172,1149,0,0,0,0,0,0,0,0,0,0,87,380),(1093,898,290000,0,527.437,-1288.69,17.049,359.679,0,0,1,0,3,3,471,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,7,967),(1094,2124,300000,0,1608.45,-1167.13,24.17,90.424,0,0,1,0,1,0,400,0,2,500,'Jovan Gamer',0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,22,542),(1096,2099,1700000,1,899.812,-1442.54,13.258,269.183,0,0,1,0,125,125,411,0,2,500,'1312',0,0,0,0,1,0,0,0,0,0,0,1010,0,1080,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,173,622),(1100,1571,1700000,0,795.903,-858.512,60.355,155.274,0,0,1,0,0,0,411,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,67,504),(1101,1776,225000,0,2115.23,-1165.01,24.158,173.632,0,0,1,0,155,155,535,0,2,500,'gospodin 1',0,0,0,0,1,0,0,0,0,1120,0,1010,1114,1080,0,1087,1117,0,0,1,380,0,0,0,0,0,0,0,89,632),(1102,2210,1700000,0,1147.63,-1061.36,29.372,268.326,0,0,1,0,0,0,560,0,1,500,'NEMA',0,1,1,0,1,0,1138,0,1032,1026,0,1010,1029,1025,0,0,1169,1141,0,0,0,0,0,0,0,0,0,0,28,738),(1103,1480,1700000,1,931.413,-1112.6,23.857,0.125,0,0,1,0,108,108,411,0,2,500,'Simoni HD',0,1,1,18651,1,1,0,0,0,0,0,1010,0,1080,0,1087,0,0,0,255,0,0,0,0,0,0,0,0,77,483),(1104,2099,1700000,1,904.203,-1455.12,12.739,270.928,0,0,1,0,106,106,560,0,2,500,'Mauuuu',0,0,0,18648,1,0,1139,0,1033,1030,0,1010,1029,1080,1086,1087,1170,1141,0,2,0,0,0,31,200,24,200,0,401,289),(1105,2186,1700000,1,944.7,-715.574,121.914,29.223,0,0,1,0,1,1,560,0,1,500,'NEMA',0,5,4,18650,1,5,1139,0,1032,1031,0,1010,1028,1080,0,1087,1169,1141,0,1,0,0,0,0,0,0,0,0,584,923),(1106,8,1700000,1,727.543,-993.207,52.342,62.407,0,0,1,0,3,3,560,0,2,500,'CAPONE',0,0,0,18647,1,0,1138,0,1032,1026,0,1009,1028,1080,0,1087,1169,1141,0,1,0,0,0,0,0,0,0,0,9,468),(1108,1311,650000,1,1572.8,-2318.77,12.952,16.395,0,0,1,0,5,5,461,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,10,526),(1112,966,2500000,1,1452.87,-635.438,95.335,140.561,0,0,1,0,0,0,522,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,189,300),(1113,864,2500000,0,2339,551.142,7.365,0.66,0,0,1,0,0,0,522,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,669),(1115,2196,110000,0,2427.24,-1011.03,54.106,193.452,0,0,1,0,0,0,474,0,0,0,'NEMA',0,0,0,0,1,0,0,0,0,0,0,1010,0,1083,0,0,0,0,0,255,0,0,0,0,0,0,0,0,47,355),(1116,2208,1400000,0,645.406,-1699.54,14.516,352.221,0,0,1,0,0,0,451,0,1,500,'NEMA',0,0,0,18647,1,0,0,0,0,0,0,0,0,1025,0,0,0,0,0,255,0,0,0,0,0,0,0,0,32,102),(1118,1952,1000000,0,527.437,-1288.69,17.049,359.679,0,0,1,0,0,0,429,0,0,0,'NEMA',0,0,0,0,1,0,0,0,0,0,0,1010,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,60,271),(1121,1571,950000,0,795.388,-848.699,60.819,167.817,0,0,1,0,0,0,487,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,23,309),(1125,1776,225000,0,750.842,-582.351,17.087,91.502,0,0,1,0,155,155,567,0,2,500,'gospodin 2',0,0,0,0,1,0,0,0,1130,1133,0,1010,1132,1080,1086,1087,1188,1186,0,2,0,0,0,0,0,0,0,0,61,581),(1127,986,600000,1,2499.81,-1650.54,13.28,6.645,0,0,1,0,0,0,475,0,0,0,'NEMA',0,0,0,0,1,0,0,0,0,0,0,1010,0,1073,0,1087,0,0,0,255,0,0,0,0,0,0,0,0,53,776),(1131,1808,1200000,0,916.246,-920.652,42.232,182.771,0,0,1,0,226,226,562,0,2,500,'KENJAC',0,1,1,18649,1,1,1146,0,1038,1041,0,1010,1034,1080,1086,1087,1171,1148,0,1,0,0,0,0,0,0,0,0,62,608),(1132,1938,950000,0,2333.59,-662.293,130.242,269.925,0,0,1,0,3,3,487,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,1066,449),(1136,676,1500000,1,979.256,-826.253,95.756,28.497,0,0,1,0,8,0,541,0,0,0,'NEMA',0,0,0,18647,1,0,0,0,0,0,0,1010,0,1080,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,70,699),(1139,732,1400000,0,1000.48,-1091,23.534,225.549,0,0,1,0,125,125,451,0,1,500,'NEMA',0,0,0,18648,1,1,0,0,0,0,0,1010,0,1080,0,0,0,0,0,255,0,0,0,0,0,0,0,0,424,547),(1140,2056,700000,0,527.437,-1288.69,17.049,359.679,0,0,1,0,0,0,402,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(1142,1081,1700000,0,192.821,-1302,69.961,86.222,0,0,1,0,200,0,411,0,0,0,'NEMA',0,0,0,18650,1,0,0,0,0,0,0,1010,0,1080,0,1087,0,0,0,255,0,0,0,0,0,0,0,0,43,37),(1143,2460,1700000,1,1570.12,-1034.11,23.567,324.75,0,0,1,0,1,2,560,0,0,0,'NEMA',0,0,0,18651,1,0,1139,0,1033,1031,0,1008,0,1080,1086,1087,1170,1140,0,0,0,0,0,0,0,0,0,0,259,873),(1144,638,2500000,0,229.318,-1242.49,77.832,208.541,0,0,1,0,233,233,522,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,110,253),(1145,1361,1400000,0,688.217,-1599.87,13.805,1.102,0,0,1,0,125,0,451,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,10,895),(1146,2036,1200000,0,1672.59,-1720.78,20.134,89.016,0,0,1,0,2,2,562,0,2,500,'.::JoVaN::>',0,0,0,0,1,0,1147,0,1035,1041,0,1010,1034,1080,1086,0,1172,1148,0,1,0,0,0,0,0,0,0,0,55,452),(1149,644,700000,0,1031.65,-800.662,101.74,22.118,0,0,1,0,3,3,589,4,0,0,'JERI DIZEL',0,0,0,0,1,0,0,0,0,0,0,1010,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,70,488),(1150,1361,580000,0,685.868,-1600.11,13.687,322.378,0,0,1,0,125,0,581,0,2,500,'GAS',0,5,4,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,6,637),(1151,2523,1700000,0,2456.47,-1666.29,13.171,268.863,0,0,1,0,0,0,411,0,2,500,'BOSS',0,1,1,18648,1,0,0,0,0,0,0,1010,0,1080,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,209,392),(1154,1861,1200000,1,735.356,-548.826,16.797,333.477,0,0,1,0,0,0,415,0,2,500,'PUN_GAS',0,0,0,0,1,0,0,0,0,0,0,1010,1019,0,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,73,768),(1155,1207,620000,0,973.768,-1095.19,23.777,90.306,0,0,1,0,0,0,480,0,2,500,'Almenitor',0,0,0,18648,1,0,0,0,0,0,0,1008,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,97,211),(1157,2500,540000,0,2466.58,-1669.35,13.048,195.356,0,0,1,0,0,0,565,0,2,500,'GSF',0,0,0,18649,1,0,1049,0,1054,1048,0,1010,1046,1081,1086,1087,1153,1151,0,0,0,0,0,0,0,0,0,0,233,381),(1158,2599,800000,1,827.595,-885.008,68.394,254.348,0,0,1,0,3,3,559,0,2,500,'LaraDemax',0,3,4,18647,1,4,1162,0,1067,1071,0,1010,1065,1085,1086,1087,1160,1161,0,1,0,0,0,0,0,0,0,0,105,599),(1163,2154,1400000,1,527.437,-1288.69,17.049,359.679,0,0,1,0,0,0,451,0,0,0,'NEMA',0,0,0,18648,1,0,0,0,0,0,0,1010,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,4,871),(1167,1192,245000,0,1330.78,-1058.39,28.276,268.26,0,0,1,0,3,3,496,0,0,0,'NEMA',0,0,0,0,1,0,1023,0,0,1007,0,1010,1019,1077,1086,0,0,0,0,255,0,0,0,0,0,0,0,0,104,961),(1168,1571,500000,0,789.448,-859.459,60.346,204.335,0,0,1,0,0,0,506,0,0,0,'NEMA',0,0,0,18651,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,89,73),(1171,644,250000,1,1029.57,-795.284,102.391,21.837,0,0,1,0,222,222,482,0,1,500,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,39,114),(1173,1328,440000,0,1561.71,-2251.17,13.343,87.829,0,0,1,0,69,69,580,0,2,500,'Starcevic69',0,0,0,18650,1,0,1023,0,1006,0,0,0,1018,1080,0,0,0,0,0,255,0,0,0,0,0,0,0,0,91,404),(1178,644,320000,0,1023.3,-776.121,102.661,120.616,0,0,1,0,26,26,426,3,0,0,'NEMA',0,0,0,0,1,0,0,0,0,0,0,1010,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,7,764),(1179,2286,320000,1,2393.28,-1678.03,14.071,359.235,0,0,1,0,0,0,426,0,2,500,'Harex',0,0,0,18649,1,0,1001,0,0,0,0,1010,1019,1073,0,1087,0,0,0,255,0,0,0,0,0,0,0,0,51,879),(1180,180,1700000,1,2361.29,-1683.88,13.293,359.999,0,0,1,0,0,0,411,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,69,709),(1182,644,160000,1,1033.62,-806.097,101.524,22.477,0,0,1,0,0,0,405,0,2,500,'PUN GAS',0,0,0,0,1,0,0,0,0,0,0,1010,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,19,406),(1183,1418,800000,1,2968.85,-764.286,10.69,179.293,0,0,1,0,0,0,559,0,0,0,'NEMA',0,0,0,0,1,0,1162,0,1068,1071,0,1010,1065,1080,1086,1087,1173,1161,0,0,0,0,0,0,0,0,0,0,25,808),(1184,1762,1700000,1,1426.08,-1099.83,17.228,1.552,0,0,1,0,200,0,560,0,0,0,'NEMA',0,0,0,18647,1,0,1139,0,1033,1031,0,1010,1029,1080,1086,1087,1170,1141,0,2,0,0,0,0,0,0,0,0,6,730),(1186,1565,1200000,0,86.02,-1652.05,10.734,305.428,0,0,1,0,3,3,562,0,0,0,'NEMA',0,0,0,18647,1,0,1146,0,1035,1041,0,1010,1037,1080,1086,1087,1171,1148,0,1,0,0,0,0,0,0,0,0,89,31),(1187,2275,700000,0,2384.32,-1644.4,13.5,181.794,0,0,1,0,0,0,402,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,39,37),(1188,676,1000000,1,971.057,-820.019,96.561,28.113,0,0,1,0,3,0,429,0,0,0,'NEMA',0,0,0,18647,1,0,0,0,0,0,0,1010,0,0,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,119,744),(1189,1163,165000,0,527.437,-1288.69,17.049,359.679,0,0,1,0,0,0,479,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,2,842),(1191,2364,1700000,0,1560.83,-2312.14,13.252,88.82,0,0,1,0,3,3,560,0,0,0,'NEMA',0,0,0,18647,1,0,1139,0,1033,0,0,1010,1029,1079,0,0,1169,1141,0,0,0,0,0,0,0,0,0,0,889,672),(1196,1833,165000,1,1317.66,-917.098,37.717,84.228,0,0,1,0,0,125,479,0,2,500,'LULE',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,39,811),(1199,2173,1700000,0,1723.16,-2092.75,13.252,180.054,0,0,1,0,1,1,560,0,0,0,'NEMA',0,0,0,0,1,0,1139,0,1033,0,0,1010,1029,1073,0,0,1170,1140,0,0,0,0,0,0,0,0,0,0,46,735),(1201,1341,1200000,1,1536.25,-841.792,64.411,91.742,0,0,1,0,0,0,562,1,0,0,'NEMA',0,1,1,18647,1,1,1147,0,1038,1041,0,1010,1034,1080,1086,0,1171,1149,0,1,0,0,0,0,0,0,0,0,16,861),(1202,2322,1700000,1,935.728,-855.976,93.201,50.282,0,0,1,0,0,0,411,0,0,0,'NEMA',0,0,0,18648,1,0,0,0,0,0,0,1009,0,1080,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,21,307),(1203,1565,1700000,0,100.052,-1657.69,10.077,312.88,0,0,1,0,200,0,560,1,0,0,'NEMA',0,5,4,18651,1,0,1139,0,0,1031,0,1010,1028,1080,1086,1087,1170,1141,0,0,0,0,0,0,0,0,0,0,96,113),(1204,1947,1200000,0,894.317,-1518.7,12.871,179.504,0,0,1,0,0,0,415,0,0,0,'NEMA',0,0,0,18647,1,0,1001,0,0,0,0,1010,1019,1078,0,1087,0,0,0,255,0,0,0,0,0,0,0,0,152,736),(1205,986,340000,1,2503,-1650.69,13.363,343.122,0,0,1,0,0,0,551,0,0,0,'NEMA',0,0,0,18652,1,0,1003,0,1006,0,0,1010,1020,1073,0,1087,0,0,0,255,0,0,0,0,0,0,0,0,23,471),(1207,1604,1400000,0,2801.15,-1171.22,25.242,177.028,0,0,1,0,2,0,451,0,2,500,'ROŽI',0,0,0,18648,1,0,0,0,0,0,0,1010,0,1083,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,55,218),(1208,966,1200000,1,1460.44,-635.133,95.509,177.386,0,0,1,0,0,0,562,0,0,0,'NEMA',0,0,0,0,1,0,1147,0,1035,1039,0,1010,1037,1085,0,1087,1171,1148,0,2,0,0,0,0,0,0,0,0,95,929),(1209,2316,180000,0,527.367,-1288.68,17.012,358.953,0,0,1,0,0,0,401,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,134),(1210,1669,1700000,0,1542.69,-2360.71,13.239,180.817,0,0,1,0,0,0,411,0,2,500,'gg',0,0,0,0,1,0,0,0,0,0,0,1010,0,1073,0,1087,0,0,0,255,0,0,0,0,0,0,0,0,74,546),(1212,2316,1200000,1,1297.78,-2061.39,58.135,264.597,0,0,1,0,13,13,562,0,0,0,'NEMA',0,0,0,0,1,0,0,0,0,0,0,1009,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,22,0),(1214,1364,245000,0,527.437,-1288.69,17.049,359.679,0,0,1,0,0,0,496,0,0,0,'NEMA',0,0,0,0,1,0,1023,0,1006,1017,0,1010,1020,1079,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,3,218),(1215,1776,800000,0,1283.82,-831.145,82.808,355.961,0,0,1,0,155,0,468,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,269,746),(1217,2702,245000,0,1106.9,-1025.71,31.643,2.527,0,0,1,0,0,3,496,0,2,500,'STARCEVIC69',0,0,0,18647,1,0,1023,0,1006,1007,0,1010,1019,1080,0,1087,0,0,0,255,0,0,0,0,0,0,0,0,123,711),(1219,1875,2500000,1,1697,-2084.41,13.108,177.463,0,0,1,0,1,1,522,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,12,278),(1220,2478,600000,0,1189.69,-1089.14,25.499,91.794,0,0,1,0,0,1,558,0,1,500,'NEMA',0,0,0,18652,1,0,1163,0,1091,1090,0,1008,1092,1096,1086,1087,1166,1168,0,1,0,0,0,0,0,0,0,0,31,913),(1223,230,205000,0,1029.36,-810.667,101.634,15.481,0,0,1,0,3,3,566,0,2,500,'KI-011-MG',0,1,1,0,1,1,0,0,0,0,0,1010,0,1077,1086,0,0,0,0,255,0,0,0,0,0,0,0,0,14,682),(1224,864,600000,0,2357.23,515.316,-0.468,182.043,0,0,1,0,0,0,446,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,7,17),(1225,864,950000,0,2377.83,580.047,16.091,81.145,0,0,1,0,0,0,487,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,3,973),(1226,2425,210000,0,2006.62,-1717.51,13.55,2.469,0,0,1,0,1,1,413,0,1,500,'NEMA',0,0,1,0,1,0,0,0,0,0,0,0,0,1098,0,0,0,0,0,255,0,0,0,0,0,0,0,0,221,907),(1227,2211,1700000,0,2962.45,-800.264,10.722,1.185,0,0,1,0,59,59,560,0,2,500,'SOMIKA',0,1,1,0,1,1,1138,0,1033,1026,0,1010,1029,1082,0,0,1169,1141,0,1,0,0,0,0,0,0,0,0,115,907),(1228,2445,540000,0,2676.63,-1946.5,13.051,1.309,0,0,1,0,1,2,565,0,1,500,'NEMA',0,1,1,18651,1,1,1049,0,1054,1048,0,1010,1046,1081,0,1087,1153,1151,0,1,77,2000,0,0,0,0,0,0,124,705),(1231,1650,160000,1,200.099,-1774.62,3.549,270.385,0,0,1,0,0,0,405,0,2,500,'SRB ZUDI8',0,0,0,18648,1,0,1023,0,0,0,0,1010,1018,1078,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,10,673),(1233,1650,1700000,1,194.66,-1774.05,3.48,261.386,0,0,1,0,135,135,560,0,2,500,'SRB ZURI8',0,0,0,18648,1,0,1139,0,1033,1031,0,1010,1028,1078,1086,1087,1169,1141,0,1,0,0,0,0,0,0,0,0,59,546),(1234,1430,1400000,0,1672.52,-1541.81,13.268,337.302,0,0,1,0,1,8,451,0,2,500,'Kakarot',0,0,0,18648,1,0,0,0,0,0,0,1010,0,1080,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,33,125),(1235,230,120000,1,1029.37,-798.484,101.998,23.083,0,0,1,0,3,3,419,0,2,500,'KI-011-MG',0,1,3,0,1,2,0,0,0,0,0,1010,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,4,355),(1236,2501,280000,1,653.216,-1656.94,14.424,86.755,0,0,1,0,0,0,507,0,1,500,'NEMA',0,0,0,0,1,0,0,0,0,0,0,1010,0,1074,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,137,368),(1237,180,1700000,1,2361.2,-1677.1,13.25,359.839,0,0,1,0,0,0,560,0,0,0,'NEMA',0,0,0,18648,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,155,42),(1243,1650,440000,1,208.306,-1774.74,3.612,269.059,0,0,1,0,0,0,580,0,2,500,'SRB ZURI8',0,0,0,18648,1,0,1023,0,1006,1017,0,1010,1018,1078,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,9,796),(1244,381,650000,0,2517.59,-1672.32,13.664,67.022,0,0,1,0,59,59,461,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,9,846),(1246,1418,620000,0,2963.34,-763.124,10.64,180.51,0,0,1,0,0,0,480,0,2,500,'Mozzart',0,0,0,0,1,0,0,0,0,0,0,1010,0,1080,0,1087,0,0,0,255,0,0,0,0,0,0,0,0,181,536),(1247,676,950000,1,985.143,-834.764,100.043,60.315,0,0,1,0,6,0,487,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,17,9),(1248,2502,500000,0,2090.45,-1117.95,26.412,340.142,0,0,1,0,0,0,506,0,2,500,'MARCI00000',0,1,1,18650,1,0,0,0,0,0,0,1009,0,0,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,99,133),(1250,353,1700000,1,408.02,-1264.56,49.951,23.435,0,0,1,0,243,243,560,0,2,500,'Depay',0,2,2,18649,1,2,1139,0,1033,1027,0,1010,1029,1084,1086,1087,1169,1141,0,255,0,0,0,0,0,0,0,0,146,109),(1251,646,1700000,0,262.916,-1374.13,52.772,308.289,0,0,1,0,3,6,560,0,0,0,'NEMA',0,0,0,0,1,0,1138,0,1032,1030,0,1010,1028,1080,0,1087,1170,1140,0,0,0,0,0,0,0,0,0,0,29,575),(1252,1565,145000,0,92.574,-1655.5,10.491,319.658,0,0,1,0,0,0,410,0,0,0,'NEMA',0,0,0,0,1,0,0,0,0,0,0,1010,0,0,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,309,88),(1253,2504,410000,1,2394.06,-696.566,125.531,209.119,0,0,1,0,0,0,489,0,1,500,'NEMA',0,1,1,18647,1,1,1002,0,1006,0,0,1010,1020,1079,0,1087,0,0,0,255,0,0,0,0,0,0,0,0,39,621),(1255,1485,620000,1,931.862,-1099.26,24.092,238.091,0,0,1,0,0,2,480,0,2,500,'Mario07 s',0,0,0,18649,1,0,0,0,0,0,0,1010,0,1080,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,46,49),(1256,1036,310000,0,527.437,-1288.69,17.049,359.679,0,0,1,0,3,3,445,0,0,0,'NEMA',0,0,0,18648,1,0,0,0,0,0,0,1009,0,1080,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,38,915),(1257,646,1200000,0,276.038,-1355.68,52.764,9.464,0,0,1,0,6,155,562,0,2,500,'Boss',0,5,4,0,1,5,1146,0,1038,1039,0,1010,1034,1074,1086,1087,1171,1148,0,1,0,0,0,0,0,0,0,0,86,31),(1258,2240,1200000,0,1252.5,-2062.55,59.493,273.149,0,0,1,0,24,243,562,0,2,500,'AMEL',0,1,1,18647,1,5,1146,0,1038,1041,0,1010,1034,1075,0,1087,1172,1148,0,1,0,0,0,33,46,0,0,0,140,931),(1261,2157,540000,0,2205.35,-1408.5,23.56,0.074,0,0,1,0,0,0,565,0,0,0,'NEMA',0,0,0,0,1,0,0,0,0,0,0,1010,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,7,645),(1264,1620,1700000,0,1109.03,-733.9,100.162,88.478,0,0,1,0,1,1,560,0,2,500,'Nicki R',0,1,1,18652,1,1,1138,0,1032,1026,0,1010,1028,1080,1086,1087,1169,1141,0,0,0,0,0,0,0,0,0,0,511,699),(1268,1400,1000000,0,527.437,-1288.69,17.049,359.679,0,0,1,0,0,0,429,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,136),(1269,2546,1700000,1,2413.1,-675.345,126.635,93.465,0,0,1,0,6,6,560,0,2,500,'Slagerche',0,2,1,18650,1,2,1139,0,1033,1030,0,1010,1028,1080,0,0,1170,1141,0,0,0,0,0,0,0,0,0,0,40,391),(1271,2574,2000000,0,542.667,-1275.43,17.178,288.402,0,0,1,0,0,0,579,0,0,0,'NEMA',0,5,4,0,1,5,0,0,0,0,0,0,0,1080,1086,0,0,0,0,255,0,0,0,0,0,0,0,0,11,667),(1272,1081,2000000,0,194.552,-1318.76,70.068,90.772,0,0,1,0,200,0,579,0,0,0,'NEMA',0,0,0,0,1,0,0,0,0,0,0,1010,0,1080,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,10,530),(1273,2574,950000,0,1431.09,-889.788,54.534,358.723,0,0,1,0,61,61,487,0,0,0,'NEMA',0,0,0,0,1,0,0,0,0,0,0,0,0,0,1086,0,0,0,0,255,0,0,0,0,0,0,0,0,2,121),(1277,0,290000,0,2839.65,-504.984,16.756,27.693,0,0,1,0,1,1,434,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(1278,824,1500000,0,1087.55,-635.295,112.61,322.268,0,0,1,0,1,1,541,0,2,500,'PunGas',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,56,10),(1279,824,2000000,0,1103.23,-645.927,113.308,43.573,0,0,1,0,32,32,579,0,2,500,'PunGas',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,10000,0,0,0,0,0,0,36,59),(1280,1328,185000,0,565.9,-1273.96,16.951,12.774,0,0,1,0,0,0,534,0,0,0,'NEMA',0,0,0,0,1,0,0,0,0,1122,0,1010,1127,1080,1086,1087,1185,1180,0,1,0,0,0,0,0,0,0,0,13,217),(1281,155,1700000,1,2271.3,-1639.06,15.051,179.407,0,0,1,0,0,0,560,0,2,500,'BLACK',0,0,0,0,1,0,1138,0,0,0,0,1010,1028,1080,0,0,1170,0,0,255,0,0,0,0,0,0,0,0,100,258),(1282,2568,1400000,0,158.372,-1764.42,4.202,0.733,0,0,1,0,1,2,451,0,2,500,'Kakarot',0,0,0,18652,1,0,0,0,0,0,0,1010,0,1080,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,61,353),(1284,1995,530000,0,1486.19,-688.732,94.561,173.13,0,0,1,0,200,0,545,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,14,203),(1286,2035,1400000,0,1260.91,-2062.68,59.269,266.378,0,0,1,0,2,2,451,3,0,0,'NEMA',0,0,0,18648,1,0,0,0,0,0,0,1010,0,1074,0,1087,0,0,0,255,0,0,0,0,0,0,0,0,70,3),(1287,2504,300000,0,2397.36,-702.121,124.344,212.209,0,0,1,0,0,0,400,1,0,0,'NEMA',0,1,1,0,1,1,0,0,0,0,0,1010,1018,1085,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,4,186),(1288,1430,3000000,0,2070.75,-2542.33,13.353,2.23,0,0,1,0,0,0,519,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,7,612),(1289,1036,1700000,0,2346.7,-1167.35,27.39,323.043,0,0,1,0,5,5,560,0,0,0,'NEMA',0,0,0,18651,1,0,1138,0,1033,1030,0,1009,1029,1080,1086,1087,1170,1140,0,0,0,0,0,0,0,0,0,0,60,333),(1291,145,1400000,0,1110.21,-1047.94,31.58,269.649,0,0,1,0,20,2,451,0,2,500,'msavic22',0,0,0,18648,1,0,0,0,0,0,0,1010,0,1080,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,193,847),(1294,9,1700000,0,1525.84,-1175.47,23.762,0.109,0,0,1,0,0,0,560,0,0,0,'NEMA',0,0,0,0,1,0,1138,0,1033,1027,0,1010,1028,1080,1086,0,1169,1141,0,255,0,0,0,0,0,0,0,0,55,315),(1295,1130,800000,0,2196.77,-1265.06,24.242,268.526,0,0,1,0,0,0,559,0,2,500,'jeste',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,20,627),(1296,2577,1700000,0,925.794,-1119.96,23.693,123.637,0,0,1,0,0,0,560,0,2,500,'Boleke',0,1,1,18652,1,1,1138,0,1033,1031,0,1010,1029,1074,1086,1087,1170,1141,0,255,0,0,0,34,75,31,212,0,191,432),(1297,2219,2500000,0,1242.72,-1021.05,32.177,273.324,0,0,1,0,0,0,522,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,16,730),(1299,2245,1200000,0,1560.57,-2234.45,13.32,87.928,0,0,1,0,0,0,415,0,2,500,'Alen',0,0,0,0,1,0,0,0,0,0,0,1009,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,15,989),(1300,1,600000,0,2969.27,-775.945,-0.451,267.962,0,0,1,0,1,1,446,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,32,502),(1301,338,440000,1,1412.72,-1706.83,13.44,231.234,0,0,1,0,0,0,470,0,2,500,'Saco Kralj',0,1,2,18651,1,2,0,0,0,0,0,0,0,1075,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,245,470),(1302,0,250000,0,619.699,-585.705,17.361,270.286,0,0,2,2,0,0,482,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(1303,0,250000,0,627.431,-585.615,16.776,272.149,0,0,2,2,0,0,482,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(1304,0,0,0,612.871,-574.204,26.827,356.106,0,0,2,2,86,86,563,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(1305,0,0,0,612.651,-603.65,23.42,181.326,0,0,2,2,86,86,563,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(1306,0,0,0,665.787,-580.048,16.066,87.376,0,0,2,2,86,86,596,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(1307,0,0,0,627.629,-591.141,16.318,272.369,0,0,2,2,86,86,596,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(1308,0,0,0,620.084,-591.493,16.961,270.93,0,0,2,2,86,86,596,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(1309,0,0,0,622.216,-610.661,16.842,269.814,0,0,2,2,86,86,596,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(1310,0,0,0,622.499,-606.978,16.83,268.851,0,0,2,2,86,86,596,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(1311,0,0,0,612.781,-601.424,17.368,269.793,0,0,2,2,86,86,427,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(1312,0,0,0,612.632,-597.382,17.372,272.092,0,0,2,2,86,86,427,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(1313,0,0,0,651.255,-564.874,16.379,357.585,0,0,2,2,86,86,431,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(1314,0,0,0,636.169,-576.903,15.991,177.12,0,0,2,2,86,86,598,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(1315,0,0,0,636.085,-562.769,16.001,180.701,0,0,2,2,86,86,598,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(1316,0,0,0,636.079,-554.241,15.993,180.749,0,0,2,2,86,86,598,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(1317,0,0,0,636.005,-544.789,16.025,179.504,0,0,2,2,86,86,598,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(1319,2263,1700000,1,1999.48,-1120.99,26.405,357.517,0,0,1,0,6,1,411,0,0,0,'NEMA',0,0,0,18648,1,0,0,0,0,0,0,1009,0,1075,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,14,117),(1320,150,1700000,0,527.437,-1288.69,17.049,359.679,0,0,1,0,6,6,560,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,9,673),(1321,381,700000,1,2255.07,-1273.62,25.146,176.811,0,0,1,0,0,0,402,0,2,500,'DARE',0,0,0,18649,1,0,0,0,0,0,0,1010,0,1098,0,0,0,0,0,255,0,0,0,0,0,0,0,0,53,956),(1322,1528,1700000,0,527.437,-1288.69,17.049,359.679,0,0,1,0,0,0,411,0,0,0,'NEMA',0,0,0,0,1,0,0,0,0,0,0,1010,0,1080,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,6,377),(1323,2786,500000,1,827.061,-495.386,17.168,357.465,0,0,1,0,22,22,506,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,33,50,25,50,0,20,202),(1324,2126,1500000,0,1274.14,-2062.74,58.824,88.646,0,0,1,0,0,0,541,0,2,500,'PUTKA',0,0,0,0,1,0,0,0,0,0,0,1010,0,1079,0,1087,0,0,0,255,0,0,0,0,0,0,0,0,65,281),(1325,1485,1200000,1,1295.08,-2051.08,58.41,269.536,0,0,1,0,158,175,562,0,2,500,'SimoniHD200',0,0,0,18647,1,0,1146,0,1035,1041,0,1010,1034,1080,1086,1087,1172,1149,0,1,196,0,0,34,16,31,317,0,12,36),(1326,1973,1700000,0,527.437,-1288.69,17.049,359.679,0,0,1,0,0,0,560,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(1328,2099,2500000,1,905.291,-1448.71,13.121,271.475,0,0,1,0,125,125,522,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,160,942),(1329,2263,1400000,1,2009.4,-1120.27,26.036,1.334,0,0,1,0,6,1,451,0,0,0,'NEMA',0,0,0,18648,1,0,0,0,0,0,0,1010,0,1075,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,12,171),(1330,2777,500000,1,827.498,-508.693,16.665,359.526,0,0,1,0,5,0,506,0,0,0,'NEMA',0,0,0,0,1,0,0,0,0,0,0,1009,0,0,0,1087,0,0,0,255,0,0,0,0,0,0,0,0,20,885),(1332,145,700000,0,1117.07,-1047.95,31.741,270.851,0,0,1,0,0,0,589,0,2,500,'VR-033-RL',0,0,0,0,1,0,1016,0,1006,1017,0,1010,1020,1080,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,2,838),(1333,2144,410000,1,2050.01,-1111.75,25.657,179.279,0,0,1,0,3,3,489,0,2,500,'TS-DUMANOVI',0,0,0,18647,1,0,1002,0,0,0,0,0,1020,1085,0,0,0,0,0,255,0,0,0,0,0,0,0,0,40,147),(1334,1053,2500000,1,878.265,-872.774,77.232,42.949,0,0,1,0,0,0,522,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,7,703),(1335,2240,1700000,0,1252.37,-2048.83,59.512,268.713,0,0,1,0,42,43,560,0,2,500,'AKI',0,0,0,18651,1,0,1139,0,1033,1030,0,1010,0,1085,1086,1087,1169,1140,0,0,0,0,0,0,0,0,0,0,92,647),(1336,2240,1500000,0,1279.54,-2049.17,58.737,94.694,0,0,1,0,0,29,541,0,2,500,'AKI',0,1,1,18652,1,4,0,0,0,0,0,1010,0,1080,0,1087,0,0,0,255,0,0,0,0,0,0,0,0,5,568),(1338,2325,310000,0,1279.2,-1098.84,25.897,90.213,0,0,1,0,0,0,445,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,2,155),(1339,439,1700000,0,655.526,-1230.29,16.421,86.195,0,0,1,0,6,6,560,0,0,0,'NEMA',0,0,0,18649,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,4,309),(1340,439,1400000,0,527.437,-1288.69,17.049,359.679,0,0,1,0,0,0,451,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,979),(1341,439,1500000,0,527.437,-1288.69,17.049,359.679,0,0,1,0,0,0,541,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(1342,2359,1700000,0,1245.81,-1107.53,25.251,263.495,0,0,1,0,20,20,560,0,2,500,'kobe bryant',0,0,0,0,1,0,1138,0,1033,0,0,1009,1029,1080,1086,0,1169,1141,0,0,0,0,0,0,0,0,0,0,28,921),(1344,1053,1700000,1,865.292,-873.312,76.67,280.429,0,0,1,0,0,0,560,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,2,474),(1345,1078,1700000,0,2064.54,-1636.5,13.205,269.972,0,0,1,0,3,0,560,0,2,500,'12345567890',0,1,1,18647,1,0,1139,0,1033,1030,0,1010,1029,1079,1086,1087,1170,1141,0,1,0,0,0,0,0,0,0,0,11,908),(1348,972,800000,0,1524.27,-814.305,71.059,267.3,0,0,1,0,1,1,559,0,2,500,'11111',0,0,0,0,1,0,1162,0,1068,1071,0,1010,1065,1073,0,0,1173,1161,0,2,0,0,0,0,0,0,0,0,43,534),(1353,2359,600000,0,924.187,-1108.9,23.872,358.975,0,0,1,0,50,50,558,0,2,500,'drogerasi',0,1,2,0,1,1,1164,0,1091,1094,0,1010,1089,1080,1086,0,1166,1168,0,2,0,0,0,0,0,0,0,0,33,500),(1354,2599,1500000,0,827.176,-886.93,68.36,255.693,0,0,1,0,0,0,541,0,2,500,'Demax',0,1,1,0,1,1,0,0,0,0,0,1008,0,1078,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,17,65),(1355,2597,500000,0,527.437,-1288.69,17.049,359.679,0,0,1,0,0,0,506,0,0,0,'NEMA',0,0,0,18647,1,0,0,0,0,0,0,1009,0,1085,0,0,0,0,0,255,0,0,0,0,0,0,0,0,8,290),(1356,177,700000,0,1556.1,-2361.56,13.298,0.179,0,0,1,0,1,1,402,0,2,500,'milkicDev',0,1,1,0,1,1,0,0,0,0,0,1010,0,1079,0,0,0,0,0,255,0,0,0,0,0,0,0,0,45,961),(1358,2568,1700000,0,165.909,-1774.35,3.935,272.296,0,0,1,0,0,0,560,1,0,0,'NEMA',0,0,0,18647,1,0,1139,0,0,0,0,1010,1029,1075,0,1087,1169,1141,0,2,0,0,0,0,0,0,0,0,0,826),(1359,2186,1500000,1,949.669,-694.062,121.658,119.507,0,0,1,0,0,6,541,0,2,500,'EDO',0,5,4,0,1,5,0,0,0,0,0,1010,0,1080,0,1087,0,0,0,255,0,0,0,0,0,0,0,0,32,351),(1360,2786,600000,0,527.437,-1288.69,17.049,359.679,0,0,1,0,0,0,587,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,5,769),(1364,2144,210000,1,2054.25,-1115.42,25.288,323.027,0,0,1,0,3,3,413,0,2,500,'TS-DUMAN',0,0,0,0,1,0,0,0,0,0,0,0,0,1080,0,0,0,0,0,255,0,0,0,0,0,0,0,0,14,709),(1365,1480,1200000,1,938.163,-1111.02,23.841,355.784,0,0,1,0,3,3,562,0,1,500,'NEMA',0,0,0,18647,1,0,1146,0,1035,1041,0,1010,1034,1080,0,1087,1171,1149,0,1,0,0,0,0,0,0,0,0,6,697),(1366,1968,700000,1,2041.16,-1068.7,24.826,246.434,0,0,1,0,0,0,402,0,1,500,'NEMA',0,0,0,0,1,0,0,0,0,0,0,1010,0,1025,1086,1087,0,0,0,255,1000,10000,0,0,0,0,0,0,24,361),(1367,972,245000,0,934.45,-1097.71,24.07,207.841,0,0,1,0,1,2,496,0,2,500,'A-2010-S',0,0,0,0,1,0,1023,0,1006,1017,0,1010,1019,1079,1086,0,0,0,0,255,0,0,0,0,0,0,0,0,8,253),(1368,1947,215000,0,889.395,-1524.1,13.511,254.375,0,0,1,0,0,0,483,0,0,0,'NEMA',0,0,0,18650,1,0,0,0,0,0,0,0,0,1083,0,1087,0,0,0,255,0,0,0,0,0,0,0,0,15,987),(1369,1947,1700000,0,901.237,-1519.43,13.257,178.957,0,0,1,0,34,36,560,0,0,0,'NEMA',0,0,0,18647,1,0,1138,0,1032,1026,0,1010,1029,1078,0,1087,1169,1141,0,2,0,0,0,0,0,0,0,0,10,853),(1370,1480,1500000,1,922.136,-1110.13,23.815,4.203,0,0,1,0,0,6,541,0,2,500,'Simoni HD',0,0,0,18651,1,0,0,0,0,0,0,1010,0,1080,1086,1087,0,0,0,255,0,0,0,0,0,0,0,0,15,527),(1371,0,950000,0,2506.61,-1694.54,18.155,180.666,0,0,2,5,128,128,487,0,0,0,'NEMA',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0),(1372,1957,540000,0,527.437,-1288.69,17.049,359.679,0,0,1,0,0,0,565,4,0,0,'Omerovic',0,0,0,0,1,0,1050,0,0,0,0,1010,0,1073,0,1087,1152,1150,0,0,0,0,0,0,0,0,0,0,12,128);
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xmas_presents`
--

DROP TABLE IF EXISTS `xmas_presents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `xmas_presents` (
  `presSQLID` smallint(6) NOT NULL AUTO_INCREMENT,
  `presTaken` tinyint(1) NOT NULL DEFAULT '0',
  `presPlaced` tinyint(1) NOT NULL DEFAULT '1',
  `presPos1` float NOT NULL,
  `presPos2` float NOT NULL,
  `presPos3` float NOT NULL,
  `presPos4` float NOT NULL,
  `presPos5` float NOT NULL,
  `presPos6` float NOT NULL,
  PRIMARY KEY (`presSQLID`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xmas_presents`
--

LOCK TABLES `xmas_presents` WRITE;
/*!40000 ALTER TABLE `xmas_presents` DISABLE KEYS */;
INSERT INTO `xmas_presents` VALUES (1,1,1,-2527.87,2266.53,4.594,0,0,5.5),(2,1,1,-2529.73,2267.11,4.274,0,0,39.4),(3,1,1,1567.96,-2276.56,13.153,0,0,18.3),(4,1,1,1566.57,-2278.18,12.937,0,0,0),(5,1,1,1565.54,-2276.02,13.037,0,0,38.1),(6,1,1,1538.37,-1719.99,13.117,0,0,-15.1),(7,1,1,1538.14,-1717.75,12.857,0,0,21.1),(8,1,1,1441.72,-1585.51,12.963,0,0,0),(9,1,1,1438.47,-1584.82,12.807,0,0,-19.9),(10,1,1,1378.29,-1029.11,26.168,0,0,-28.8),(11,1,1,1375.98,-1028.31,25.86,0,0,-10.3),(12,1,1,2026.59,-1268.19,23.44,0,0,10.7),(13,1,1,2024.11,-1267.81,23.248,0,0,-29),(14,1,1,1188.63,-1385.67,13.023,0,0,-24.3),(15,1,1,1187.57,-1387.53,12.915,0,0,-41),(16,1,1,1335.39,-1290.02,12.651,15.5,0,27.2),(17,1,1,1333.96,-1287.86,13.053,0,0,42.2),(18,1,1,561.056,-1282.89,16.618,0,0,17.6),(19,1,1,563.603,-1280.83,16.462,0,-10.8,-34.2),(20,1,1,561.361,-1280.49,16.242,-4.7,0,35.3),(21,1,1,1734.28,-1274.89,12.994,11,0,-23.7),(22,1,1,1733.94,-1272.55,12.804,11.5,-16.4,-63.3),(23,1,1,2506.81,-1920.67,12.817,0,0,0),(24,1,1,2504.35,-1919.26,13.146,0,0,28.5),(25,1,1,2504.71,-1921.58,12.587,0,0,-20.3),(26,1,1,1286.5,-1560.18,12.856,-8.4,12.8,16.7),(27,1,1,1286.05,-1557.77,12.815,0,0,0),(28,1,1,212.42,-246.695,1.279,-16,15.2,43.8),(29,1,1,2444.75,-2460.45,12.997,10.9,-11.4,-92.4),(30,1,1,910.508,-1643.31,12.783,0,0,-21.5),(31,1,1,1840.06,-1398.45,12.979,0,13.5,10.5),(32,1,1,1839.99,-1400.95,12.821,11.2,15.4,-11.9),(33,1,1,1969.92,-2173.8,12.923,0,0,-21.6),(34,1,1,814.188,836.607,9.391,0,0,0),(35,1,1,1778.64,-1886.05,12.899,0,0,-8.2),(36,1,1,1776.83,-1888.17,12.699,-6.7,17.6,-58.2),(37,1,1,929.925,-1235.62,17.357,0,0,-17.6),(38,1,1,927.807,-1234.07,17.045,0,0,31.7),(39,1,1,2275.28,-91.305,25.807,0,0,15.2),(40,1,1,2277.76,-90.913,25.954,0,0,0),(41,1,1,1251.05,-737.884,93.589,-13.5,14.8,21.7),(42,1,1,1248.05,-737.798,94.29,-15.8,0,0),(43,1,1,1295.44,-2064.35,57.932,0,0,-23),(44,1,1,1293.56,-2062.95,58.24,0,0,32.9),(45,1,1,2493.42,-1668.66,12.784,0,0,-20.4),(46,1,1,2491.83,-1666.96,12.914,0,0,18.2),(47,1,1,2490.97,-1669.2,12.396,0,0,0),(48,1,1,1991.2,-1048.37,23.678,0,0,-14.8),(49,1,1,1991.58,-1045.86,23.903,0,0,11.2),(50,1,1,1993.38,-1047.93,24.063,0,0,0),(51,1,1,999.153,-1096.83,23.348,0,0,7.5),(52,1,1,997.406,-1098.99,22.858,0,0,22.7),(53,1,1,114.643,-1702.59,8.812,0,0,15.2),(54,1,1,114.242,-1699.88,8.581,0,0,0),(55,1,1,2306.82,-1921.64,12.649,0,0,52.8),(56,1,1,2306.57,-1918.68,12.971,0,0,-27.8),(57,1,1,159.379,-1933.07,3.053,0,0,0),(58,1,1,159.749,-1935.24,3.243,0,0,0),(65,0,1,1282.15,2535.56,10.283,0,0,36.5),(66,0,1,1283.66,2537,10.43,0,0,13.1),(67,0,1,1283.82,2535.31,10.31,0,0,30),(68,0,1,1283.15,2518.41,10.29,0,0,31.3),(69,0,1,1283.23,2520.5,10.38,0,0,-25.3),(72,1,1,149.384,-1934.8,3.193,0,0,0),(73,1,1,148.505,-1933.11,2.9,0,0,0),(74,1,1,147.618,-1936.6,2.873,0,0,0);
/*!40000 ALTER TABLE `xmas_presents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xmas_trees`
--

DROP TABLE IF EXISTS `xmas_trees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `xmas_trees` (
  `ctSQLID` smallint(6) NOT NULL AUTO_INCREMENT,
  `ctPlaced` tinyint(1) NOT NULL DEFAULT '1',
  `ctPos1` float NOT NULL,
  `ctPos2` float NOT NULL,
  `ctPos3` float NOT NULL,
  `ctPos4` float NOT NULL,
  `ctPos5` float NOT NULL,
  `ctPos6` float NOT NULL,
  PRIMARY KEY (`ctSQLID`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xmas_trees`
--

LOCK TABLES `xmas_trees` WRITE;
/*!40000 ALTER TABLE `xmas_trees` DISABLE KEYS */;
INSERT INTO `xmas_trees` VALUES (1,1,-2528.89,2266.19,3.723,0,0,0),(2,1,1566.55,-2276.93,12.347,0,0,36.371),(3,1,1538.64,-1718.81,12.367,0,0,295.187),(4,1,1439.67,-1585.46,11.933,0,0,333.077),(5,1,1377.28,-1028.43,25.439,0,0,319.65),(6,1,2025.34,-1268.52,22.668,0,0,184.602),(7,1,1188.13,-1386.56,12.415,0,0,49.241),(8,1,1334.73,-1288.86,12.403,0,0,134.491),(10,1,562.788,-1282.2,15.952,0,0,218.489),(11,1,1735.14,-1273.42,12.262,0,0,-70.09),(12,1,2505.15,-1920.43,12.297,0,0,20.844),(13,1,1285.72,-1559.12,12.357,0,0,110.482),(14,1,210.989,-246.698,0.788,0,0,108.522),(15,1,2443.86,-2461.69,12.471,0,0,81.943),(16,1,910.065,-1644.66,12.273,0,0,63.239),(17,1,1838.98,-1399.63,12.401,0,0,71.699),(18,1,1969.17,-2175.03,12.283,0,0,218.943),(19,1,813.755,838.512,8.759,0,0,131.859),(20,1,1777.29,-1886.77,12.09,0,0,49.162),(21,1,928.643,-1235.32,16.725,0,0,140.03),(22,1,2276.38,-90.752,25.246,0,0,9.392),(23,1,1249.62,-738.19,93.501,0,0,172.616),(24,1,1294.28,-2063.94,57.473,0,0,124.676),(25,1,2492.23,-1668.23,12.134,0,0,93.969),(26,1,1991.96,-1047.13,23.428,0,0,297.104),(27,1,998.232,-1098.02,22.738,0,0,48.989),(28,1,114.142,-1701.27,8.267,0,0,62.822),(29,1,2306.76,-1920.13,12.156,0,0,86.346),(30,1,160.336,-1934.12,2.573,0,0,347.514),(32,1,1283.15,2536.6,9.733,0,0,91.102),(33,1,1282.89,2519.44,9.73,0,0,117.712),(35,1,148.093,-1934.61,2.513,0,0,14.17),(36,1,1533.75,-859.695,64.573,0,0,26.479);
/*!40000 ALTER TABLE `xmas_trees` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-30  0:21:45
