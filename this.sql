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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

/*Data for the table `admin` */

insert  into `admin`(`id`,`name`,`email`,`password`,`updated_at`,`created_at`) values 
(1,'test','test@gnauk,cin','25d55ad283aa400af464c76d713c07ad','2021-12-18 04:51:00','2021-12-18 02:04:30'),
(2,'test','test@gmail.com','25d55ad283aa400af464c76d713c07ad','2021-12-18 04:37:22','2021-12-18 04:37:22'),
(3,'test','test@gmail.com','25d55ad283aa400af464c76d713c07ad','2021-12-18 04:38:05','2021-12-18 04:38:05'),
(4,'test','test@gmail.com','25d55ad283aa400af464c76d713c07ad','2021-12-18 04:39:04','2021-12-18 04:39:04'),
(5,'test','test@gmail.com','25d55ad283aa400af464c76d713c07ad','2021-12-18 04:39:59','2021-12-18 04:39:59'),
(6,'test','test2@gmail.com','25d55ad283aa400af464c76d713c07ad','2021-12-18 04:52:20','2021-12-18 04:52:20'),
(7,'test','test3@gmail.com','25d55ad283aa400af464c76d713c07ad','2021-12-18 04:52:52','2021-12-18 04:52:52');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
