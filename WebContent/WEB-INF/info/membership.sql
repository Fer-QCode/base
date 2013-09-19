-- MySQL dump 10.13  Distrib 5.1.61, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: membership3
-- ------------------------------------------------------
-- Server version	5.1.61-0ubuntu0.10.10.1

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
-- Table structure for table `bitacora`
--

DROP TABLE IF EXISTS `bitacora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bitacora` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `ip` varchar(16) NOT NULL,
  `eventDate` datetime NOT NULL,
  `action` int(11) DEFAULT NULL,
  `extraInfo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacora`
--

LOCK TABLES `bitacora` WRITE;
/*!40000 ALTER TABLE `bitacora` DISABLE KEYS */;
/*!40000 ALTER TABLE `bitacora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil`
--

DROP TABLE IF EXISTS `perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perfil` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo_perfil` varchar(40) NOT NULL,
  `descripcion_perfil` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_coigo_perfil` (`codigo_perfil`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil`
--

LOCK TABLES `perfil` WRITE;
/*!40000 ALTER TABLE `perfil` DISABLE KEYS */;
INSERT INTO `perfil` VALUES (1,'PERFIL_ADMIN','PERFIL DE ADMINISTRADOR'),(2,'PERFIL_SUPERVISOR','PERFIL DE SUPERVISOR'),(3,'PERFIL_USER','PERFIL_USER');
/*!40000 ALTER TABLE `perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `perfiles_por_usuario`
--

DROP TABLE IF EXISTS `perfiles_por_usuario`;
/*!50001 DROP VIEW IF EXISTS `perfiles_por_usuario`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `perfiles_por_usuario` (
  `id` int(11),
  `usuario` varchar(50),
  `codigo_perfil` varchar(40)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `preregistro`
--

DROP TABLE IF EXISTS `preregistro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `preregistro` (
  `id_preregistro` int(11) NOT NULL AUTO_INCREMENT,
  `correo` varchar(80) NOT NULL,
  `id_seguridad` varchar(50) DEFAULT NULL,
  `ventana_para_id_seguridad` datetime DEFAULT NULL,
  PRIMARY KEY (`id_preregistro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preregistro`
--

LOCK TABLES `preregistro` WRITE;
/*!40000 ALTER TABLE `preregistro` DISABLE KEYS */;
/*!40000 ALTER TABLE `preregistro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) NOT NULL,
  `clave` varchar(128) NOT NULL,
  `correo` varchar(80) NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `cuenta_no_expirada` tinyint(1) NOT NULL DEFAULT '1',
  `cuenta_no_bloqueada` tinyint(1) NOT NULL DEFAULT '1',
  `credencial_no_expirada` tinyint(1) NOT NULL DEFAULT '1',
  `habilitado` tinyint(1) NOT NULL DEFAULT '1',
  `contador_intentos_fallidos` int(11) NOT NULL DEFAULT '1',
  `instante_de_bloqueo` datetime DEFAULT NULL,
  `pregunta_secreta` varchar(200) NOT NULL,
  `respuesta_secreta` varchar(200) NOT NULL,
  `id_de_seguridad` varchar(50) DEFAULT NULL,
  `ventana_para_id_seguridad` datetime DEFAULT NULL,
  `fecha_ultimo_acceso` datetime DEFAULT NULL,
  `fecha_ultimo_cambio_clave` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_correo` (`correo`),
  UNIQUE KEY `idx_usuario` (`usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'gus','bc0d349239b43b89d84d4f0307c6a30c','arellano.gustavo@gmail.com','2010-01-01 09:31:50',1,1,1,1,0,'2009-09-13 17:07:04','Color preferido','ninguno','2TjKCp1zrGXO0wnDEnyWDdYzTK$uXf9ztNgPHlGWIW9g6HfKV1','2012-04-11 23:10:30','2012-09-13 17:07:04',NULL),(11,'erik','2dbfc1e61249282df2935c84ce54b673','gustavo.arellano@infotec.com.mx','2011-08-04 19:47:13',1,1,1,1,0,'2009-09-12 18:12:20','Cuanto es uno mas uno','dos','mz6S09Fn5kN4bj$Ug7S6hF9ybbBS8cVWpsNSkMhC5tK9FfDou6','2010-02-01 01:01:01','2012-09-12 18:12:20',NULL),(14,'luis','f063975d0bfffa564e0abffb74111a00','3gustavo.arellano@infotec.com.mx','2011-08-04 20:06:39',1,1,1,1,0,'2011-10-11 17:35:34','Cuanto es uno mas uno','dos','1',NULL,NULL,NULL),(16,'javier','c98f08aec8f2e6e068355095a0e27180','4gustavo.arellano@infotec.com.mx','2011-08-04 20:14:03',1,1,1,1,0,NULL,'Cuanto es uno mas uno','dos','1',NULL,NULL,NULL),(19,'tomas','97fa9bd1bc11b10c789b0fb05bc2a515','6gustavo.arellano@infotec.com.mx','2010-01-01 09:31:50',1,1,1,1,0,'2009-09-12 18:11:48','Color preferido','ninguno','Bzb98rUEf7','2011-08-04 16:50:56','2012-09-12 18:11:48',NULL),(21,'dario','84a26c4612a7f9958174ee6552625282','7gustavo.arellano@infotec.com.mx','2010-01-01 09:31:50',1,1,1,0,3,'2011-07-11 17:11:11','Color preferido','ninguno','Bzb98rUEf7','2011-08-04 16:50:56',NULL,NULL),(24,'pedro','1cec160e1d6c1c8cf37ec051eea1a3c9','8gustavo.arellano@infotec.com.mx','2010-01-01 09:31:50',1,1,1,1,3,'2011-07-11 17:11:11','Color preferido','ninguno','Bzb98rUEf7','2011-08-04 16:50:56',NULL,NULL),(25,'pablo','ce0a347a56a942d94d4dd9a1a9832ae7','9gustavo.arellano@infotec.com.mx','2010-01-01 09:31:50',1,1,1,1,3,'2011-07-11 17:11:11','Color preferido','ninguno','Bzb98rUEf7','2011-08-04 16:50:56',NULL,NULL),(28,'ramon','2d4cd364137c37310bec0e4c8e2c727c','10gustavo.arellano@infotec.com.mx','2010-01-01 09:31:50',1,1,1,1,2,'2011-07-11 17:11:11','Color preferido','ninguno','Bzb98rUEf7','2011-08-04 16:50:56',NULL,NULL),(30,'carlos','c082771bd36669a6f638540651961905','11gustavo.arellano@infotec.com.mx','2010-01-01 09:31:50',1,1,1,1,3,'2011-07-11 17:11:11','Color preferido','ninguno','Bzb98rUEf7','2011-08-04 16:50:56',NULL,NULL),(31,'miguel','d193b2c2d5662d09d27957f6629aec6a','mail-01@aol.com','2011-08-22 12:28:53',1,1,1,1,0,'2011-09-13 17:58:41','adelaida','adelaida','1',NULL,NULL,NULL),(36,'victor','39159e596c2587a2c4a5061c453b787d','a@a.com','2011-08-29 20:03:02',1,1,1,1,0,'2009-08-29 20:03:02','color','ninguno','VqV4Y7Z1Ij','2011-09-13 19:02:48',NULL,NULL),(37,'rodrigo','e364ccf32fcfc3e1a3302b514379e179','atomico@aol.com','2011-08-30 15:15:56',1,1,1,1,0,'2009-08-30 15:15:56','atomico','atomico','1','2009-08-30 15:15:56',NULL,NULL),(47,'julian','f9dc87ee993812c8b10feedddab4eeaa','gustavo.arellano2@infotec.com.mx','2011-09-14 11:29:21',1,1,1,1,0,'2011-09-14 11:13:43','color preferido = ninguno','nunguno','1','2009-09-14 11:29:21',NULL,NULL),(48,'adolfo','84a26c4612a7f9958174ee6552625282','abc@aol.com','2011-09-14 11:48:25',0,1,1,0,2,'2009-09-14 11:48:22','tavo1','tavo1','g5R5xRwILjnQmwcE$bRORByj4YVOsGhz6R1ooPpGRz7SgQtXFv','2012-02-16 10:04:51',NULL,NULL),(49,'valentin','697cbabb588bb72d0725e071bbbe621e','xyz@aol.com','2011-09-14 11:50:48',1,1,1,1,0,'2012-01-06 18:52:50','tavo2','tavo2','1','2009-09-14 11:50:46',NULL,NULL),(51,'tavito','208a38da59fc001361a19fc39d3adf82','arellano_gus@yahoo.com','2011-11-07 13:33:32',1,1,1,0,0,'2009-11-07 13:33:32','numero','noventa','ViXNl5gAmHo1i7s7PmHROVjyUbtETHvR$MUqyGCN2WvApycpWw','2012-05-23 17:08:37',NULL,NULL),(52,'5erik','378aff32eaffb7b37002b6c0d476b9ec','5gustavo.arellano@infotec.com.mx','2010-01-01 09:31:50',1,1,1,1,0,'2011-11-08 18:55:21','Color preferido','ninguno','hjynxA9Nkm','2011-10-30 15:10:43',NULL,NULL),(58,'cesar-cr','fb6f6f663196a4a3a4b7e85d44a5f127','cesar_casrey@hotmail.com','2011-12-08 19:00:50',1,1,1,1,1,'2011-12-08 18:44:20','nombre de mi mama','juana','1','2009-12-08 19:00:50',NULL,NULL),(60,'juan','0b01b158ab9d0425775af115625c6153','juan@algo.algo.com','2012-01-09 12:18:28',1,1,1,1,0,'2012-01-09 12:02:31','juan','juan','1','2009-01-09 12:18:28',NULL,NULL),(65,'alan','a1d6da1078ded4bbd173094a7c7543dc','alanrgz@hotmail.com','2012-01-27 11:08:43',1,1,1,1,1,'2012-01-27 18:22:01','Comida favorita','Enchiladas de mole','C8hj7Xb1AdDvFhp1VtcAYEc2upl7ly3n$Jw$76eml4ourcHQcA','2010-02-01 01:01:01',NULL,NULL),(67,'erik2','e968f28cfead710ec76aafc2514483ac','erik.valdivieso@infotec.com.mx','2012-01-27 11:48:45',1,1,1,1,0,'2012-01-27 12:31:06','color azul','no se','KDN85GqGFLCxReR1vSRCkc06StPVCNWChtrMFKHvKhOrQrCW5x','2010-02-01 01:01:01',NULL,NULL),(69,'julito','566f33f967c6ee9398a8b8640f239cd9','julio@hotmail.com','2012-01-27 12:32:59',1,1,1,0,0,'2009-01-27 12:32:59','1a nov','angelica','1','2009-01-27 12:32:59',NULL,NULL),(70,'claudia','fd8b4b66bbf28678052725d552bc0e51','alan.rodriguez@infotec.com.mx','2012-01-27 12:35:23',1,1,1,0,0,'2012-01-27 15:57:05','Perro','Toby','EedUoqVJ4A2TS4mKDCYvoD5zLNvxv0J9d2TlgA5FyM5W4ukOU0','2012-01-27 17:56:03',NULL,NULL),(71,'paco','11a76b5f61793a0137943ba29c665171','paco.rod@yahoo.com','2012-01-27 12:52:16',1,1,1,1,0,'2009-01-27 12:52:16','Mi empresa favorita','INFOTEC','1','2009-01-27 12:52:16',NULL,NULL),(72,'ruben','461a992971757274e5e60ac2c7d9bb0c','alanr78@yahoo.com.mx','2012-01-27 13:07:39',1,1,1,1,0,'2012-02-21 10:34:49','Actor favorito','Sean Connery','kSgCPYOTB8byZnvuTfqAmXqXvSgMWdbH6y7R5B6ZD4uhILDLV5','2012-02-20 20:09:07',NULL,NULL),(73,'martin','2b68c7fdde85c89bb6af03b4582c9a37','martinez@yahoo.com','2012-01-27 15:08:08',1,1,1,0,0,'2012-01-27 14:51:46','Coche favorito','Porsche','1','2009-01-27 15:08:08',NULL,NULL),(80,'marcelo','25f3ff529ffe4d617ba3f0be1acf34ee','marcelo.lujan1@gmail.com','2012-02-02 22:24:57',1,0,1,1,5,'2012-02-02 22:29:31','cual es','no se','1','2009-02-02 22:24:57',NULL,NULL),(82,'cynthia2','1e55b27d57e899ba8b006d1d33cb8b40','cynthiajuarez2@gmail.com','2012-02-14 16:14:45',1,1,1,1,0,'2012-02-15 19:44:07','como se llama mi perrita','blacky','1','2009-02-14 16:14:45',NULL,NULL),(84,'Irene','da9f9d4a40cdb00e90eccdf491b21921','anti.bipolar@gggl.com','2012-02-16 10:10:22',1,0,1,1,5,'2012-02-20 11:07:52','Nombre d  989889e mi mascota','muu78 78787878hhhh','1','2009-02-16 10:10:22',NULL,NULL),(88,'leticia','9f38e3569b23970accc85b86512661ec','letty@infotec.com.mx','2012-02-20 11:56:25',1,1,1,1,0,'2009-02-20 11:56:25','1er dia','Lunes','1','2009-02-20 11:56:25',NULL,NULL),(89,'isaac1','2c23cd3278118b37b0db40a8ffc84bbd','isaac.garcia.5cruz@gmail.com','2012-02-22 12:30:44',1,1,1,0,-9000,'2009-02-22 12:30:44','pregunta1','respuestasecreta1','1','2009-02-22 12:30:44',NULL,NULL),(91,'flavio','da770b0a07f9bb39d706cdc44801246b','flavio@aol.com','2012-02-22 17:03:39',1,1,1,1,0,'2009-02-22 17:03:39','ibarguengoitia','ibarguengoitia','1','2009-02-22 17:03:39',NULL,NULL);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_detalle`
--

DROP TABLE IF EXISTS `usuario_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario_detalle` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `ap_paterno` varchar(40) NOT NULL,
  `ap_materno` varchar(40) DEFAULT NULL,
  `telefonos` varchar(40) NOT NULL,
  `direccion` varchar(40) NOT NULL,
  `manda_correo_promo` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id_usuario`),
  CONSTRAINT `fk_usuario_detalle_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_detalle`
--

LOCK TABLES `usuario_detalle` WRITE;
/*!40000 ALTER TABLE `usuario_detalle` DISABLE KEYS */;
INSERT INTO `usuario_detalle` VALUES (1,'gustavo','arellano','sandoval','1234567890','no se',1),(11,'erik','valdivieso','diaz','55-7654321','puebla',1),(14,'luis','lopez','diaz','55-7654321','puebla',1),(16,'javierito','paez','juarez','123456789','10erik8',1),(19,'Gustavo','Arellano','Sandoval','44-7654321','mexico',1),(24,'Gustavo','Arellano','Sandoval','44-7654321','mexico',1),(25,'pablito','Arellano','Sandoval','44-7654321','mexico',1),(28,'10erik8','10erik8','10erik8','123456789','10erik8',1),(30,'carlitos','yacas','tonez','44-7654321','mexico',1),(31,'mike','treviño','adelaida','12345678','no se',1),(36,'vitor','kruger','','123456789','Calle cuatro',1),(37,'atomico','atomico','atomico','atomico','atomico',1),(47,'calvito','lustre','','12236373','calle 8',1),(48,'adolfo','ramirez','lopez','987654321','calle 7',1),(49,'vale','pomex','torres','736532576','calle 7',1),(52,'gustavo','arellano','sandoval','1234567890','no se',1),(60,'juan','juan','juan','1234567890','juan',1),(65,'Alan','Rodríguez','Sánchez','55 66 18 18','Guajintepec 35, col. Cantera Pte. Piedra',0),(67,'erik2','erik2','','5566778899','erik2',0),(69,'JULIO','PEREZ','PEREZ','5639 2121','San Fernando 15',0),(70,'Claudia Estela','Estrada','Gallegos','55 60 96 99','Hda. Trasquila 22',0),(71,'Francisco','Rodríguez','Rodríguez','6732 3232','Av. Sn. Nicolas 19',0),(72,'ruben','gomez','gomez','55609699','Guakintepec 35',0),(73,'Martín','Martínez','Gómez','56 94 00 21','Gladiolas 121',0),(80,'marcelo','lujan','','1212121212','blblblblbl',1),(82,'cynthia2','juarez','','7766554433','en su casa',1),(84,'irene','mnm','ghggg','nnnnnnn','jjjjjjjjj',0),(88,'Leticia','Bernabé','Martínez','55 99 60 96','Hda. Carlome 168, Naucalpan',0),(89,'isaac','sergio','sergio','assdasda','asdasdasd',0),(91,'ibarguengoitia','ibarguengoitia','ibarguengoitia','56442806','direccion',0);
/*!40000 ALTER TABLE `usuario_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_perfil`
--

DROP TABLE IF EXISTS `usuario_perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario_perfil` (
  `id_usuario` int(11) NOT NULL,
  `id_perfil` int(11) NOT NULL,
  PRIMARY KEY (`id_usuario`,`id_perfil`),
  KEY `fk_usuario_perfil_perfil` (`id_perfil`),
  CONSTRAINT `fk_usuario_perfil_perfil` FOREIGN KEY (`id_perfil`) REFERENCES `perfil` (`id`),
  CONSTRAINT `fk_usuario_perfil_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_perfil`
--

LOCK TABLES `usuario_perfil` WRITE;
/*!40000 ALTER TABLE `usuario_perfil` DISABLE KEYS */;
INSERT INTO `usuario_perfil` VALUES (1,1),(11,1),(30,1),(65,1),(72,1),(84,1),(89,1),(1,2),(11,2),(25,2),(47,2),(65,2),(70,2),(72,2),(84,2),(89,2),(1,3),(11,3),(30,3),(48,3),(49,3),(51,3),(58,3),(60,3),(65,3),(67,3),(69,3),(70,3),(71,3),(72,3),(73,3),(80,3),(82,3),(84,3),(88,3),(89,3),(91,3);
/*!40000 ALTER TABLE `usuario_perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `perfiles_por_usuario`
--

/*!50001 DROP TABLE IF EXISTS `perfiles_por_usuario`*/;
/*!50001 DROP VIEW IF EXISTS `perfiles_por_usuario`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`garellano`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `perfiles_por_usuario` AS (select `usuario`.`id` AS `id`,`usuario`.`usuario` AS `usuario`,`perfil`.`codigo_perfil` AS `codigo_perfil` from ((`usuario` join `perfil`) join `usuario_perfil`) where ((`usuario`.`id` = `usuario_perfil`.`id_usuario`) and (`perfil`.`id` = `usuario_perfil`.`id_perfil`)) order by `usuario`.`id`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-09-13 17:14:32