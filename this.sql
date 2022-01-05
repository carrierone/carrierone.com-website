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
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4;

/*Data for the table `home_banners` */

insert  into `home_banners`(`id`,`title`,`short_text`,`button_text`,`button_href`,`updated_at`,`created_at`,`is_active`,`image`) values 
(27,'test3','test1','test1','test1','2022-01-05 05:21:50','2022-01-05 03:06:17',1,'uploads/homebanners/1641342110250.png'),
(29,'test3','test1','test1','test1','2022-01-05 05:21:53','2022-01-05 03:37:13',1,'uploads/homebanners/1641342113564.png');

/*Table structure for table `partners` */

DROP TABLE IF EXISTS `partners`;

CREATE TABLE `partners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_active` tinyint(4) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

/*Data for the table `partners` */

insert  into `partners`(`id`,`image`,`updated_at`,`created_at`,`is_active`) values 
(5,'uploads/partners/1641339850927.png','2022-01-05 04:44:10','2022-01-05 04:44:10',1),
(6,'uploads/partners/1641339857480.png','2022-01-05 04:44:17','2022-01-05 04:44:17',1),
(7,'uploads/partners/1641339863031.png','2022-01-05 04:44:23','2022-01-05 04:44:23',1),
(8,'uploads/partners/1641339868687.png','2022-01-05 04:44:28','2022-01-05 04:44:28',1),
(9,'uploads/partners/1641339875265.png','2022-01-05 04:44:35','2022-01-05 04:44:35',1);

/*Table structure for table `testimonials` */

DROP TABLE IF EXISTS `testimonials`;

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `review` text DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_active` tinyint(4) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

/*Data for the table `testimonials` */

insert  into `testimonials`(`id`,`review`,`name`,`updated_at`,`created_at`,`is_active`) values 
(2,'test','test','2022-01-05 04:32:55','2022-01-05 04:32:55',1),
(3,'test','test','2022-01-05 04:33:08','2022-01-05 04:33:08',1),
(4,'test','test','2022-01-05 04:33:09','2022-01-05 04:33:09',1),
(5,'test','test','2022-01-05 04:33:09','2022-01-05 04:33:09',1),
(6,'test','test','2022-01-05 04:33:10','2022-01-05 04:33:10',1),
(7,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ea commodo','test3','2022-01-05 04:33:42','2022-01-05 04:33:10',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
