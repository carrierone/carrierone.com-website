/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 10.4.21-MariaDB : Database - cherryvoice
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

/*Data for the table `admin` */

insert  into `admin`(`id`,`name`,`email`,`password`,`updated_at`,`created_at`) values 
(1,'test','test@gnauk,cin','25d55ad283aa400af464c76d713c07ad','2021-12-18 04:51:00','2021-12-18 02:04:30'),
(2,'test','test@gmail.com','25d55ad283aa400af464c76d713c07ad','2021-12-18 04:37:22','2021-12-18 04:37:22'),
(3,'test','test@gmail.com','25d55ad283aa400af464c76d713c07ad','2021-12-18 04:38:05','2021-12-18 04:38:05'),
(4,'test','test@gmail.com','25d55ad283aa400af464c76d713c07ad','2021-12-18 04:39:04','2021-12-18 04:39:04'),
(5,'test','test@gmail.com','25d55ad283aa400af464c76d713c07ad','2021-12-18 04:39:59','2021-12-18 04:39:59'),
(6,'test','test2@gmail.com','25d55ad283aa400af464c76d713c07ad','2021-12-18 04:52:20','2021-12-18 04:52:20'),
(7,'test','test3@gmail.com','25d55ad283aa400af464c76d713c07ad','2021-12-18 04:52:52','2021-12-18 04:52:52'),
(8,'test','test3@gmail.com','25d55ad283aa400af464c76d713c07ad','2022-01-03 22:51:40','2022-01-03 22:51:40'),
(9,'test','test4@gmail.com','25d55ad283aa400af464c76d713c07ad','2022-01-03 22:52:10','2022-01-03 22:52:10'),
(10,'test','test4@gmail.com','25d55ad283aa400af464c76d713c07ad','2022-01-03 22:52:13','2022-01-03 22:52:13'),
(11,'test','test4@gmail.com','25d55ad283aa400af464c76d713c07ad','2022-01-03 22:52:22','2022-01-03 22:52:22');

/*Table structure for table `home_banners` */

DROP TABLE IF EXISTS `home_banners`;

CREATE TABLE `home_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `short_text` varchar(555) DEFAULT NULL,
  `button_text` varchar(50) DEFAULT NULL,
  `button_href` varchar(100) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_active` tinyint(4) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;

/*Data for the table `home_banners` */

insert  into `home_banners`(`id`,`title`,`short_text`,`button_text`,`button_href`,`updated_at`,`created_at`,`is_active`) values 
(1,'test',NULL,NULL,NULL,'2022-01-03 23:10:06','2022-01-03 23:10:06',1),
(2,'test','test','test','/123/123','2022-01-03 23:10:44','2022-01-03 23:10:44',0),
(3,'test','test','test','/123/123','2022-01-03 23:10:56','2022-01-03 23:10:56',0),
(4,'test','test','test','/123/123','2022-01-03 23:11:39','2022-01-03 23:11:39',1),
(5,'test','test','test','/123/123','2022-01-03 23:36:27','2022-01-03 23:36:27',1),
(6,'test',NULL,NULL,NULL,'2022-01-03 23:47:05','2022-01-03 23:47:05',1),
(7,'test',NULL,NULL,NULL,'2022-01-03 23:50:49','2022-01-03 23:50:49',1),
(8,'test',NULL,NULL,NULL,'2022-01-03 23:53:17','2022-01-03 23:53:17',1),
(9,'test',NULL,NULL,NULL,'2022-01-03 23:55:32','2022-01-03 23:55:32',1),
(10,'test',NULL,NULL,NULL,'2022-01-03 23:55:35','2022-01-03 23:55:35',1),
(11,'test',NULL,NULL,NULL,'2022-01-03 23:55:37','2022-01-03 23:55:37',1),
(12,'test',NULL,NULL,NULL,'2022-01-03 23:57:24','2022-01-03 23:57:24',1),
(13,'test',NULL,NULL,NULL,'2022-01-03 23:58:00','2022-01-03 23:58:00',1),
(14,'test',NULL,NULL,NULL,'2022-01-03 23:58:23','2022-01-03 23:58:23',1),
(15,'test',NULL,NULL,NULL,'2022-01-03 23:59:38','2022-01-03 23:59:38',1),
(16,'test',NULL,NULL,NULL,'2022-01-04 00:01:20','2022-01-04 00:01:20',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
