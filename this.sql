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

/*Table structure for table `m_flag` */

DROP TABLE IF EXISTS `m_flag`;

CREATE TABLE `m_flag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `flag_type` varchar(100) NOT NULL,
  `flag_value` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `flag_additionalText` text DEFAULT NULL,
  `has_image` varchar(1) DEFAULT '0',
  `is_active` varchar(1) DEFAULT '1',
  `is_config` varchar(1) DEFAULT '0',
  `flag_show_text` text DEFAULT NULL,
  `is_featured` int(11) DEFAULT 0,
  `is_deleted` int(11) DEFAULT 0,
  `user_id` int(11) DEFAULT 0,
  `is_editor` tinyint(4) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2013 DEFAULT CHARSET=utf8;

/*Data for the table `m_flag` */

insert  into `m_flag`(`id`,`flag_type`,`flag_value`,`created_at`,`updated_at`,`flag_additionalText`,`has_image`,`is_active`,`is_config`,`flag_show_text`,`is_featured`,`is_deleted`,`user_id`,`is_editor`) values 
(59,'COMPANYPHONE','000-000-0000','2019-04-19 11:33:45','0000-00-00 00:00:00','000-000-0000','0','1','1','Company Phone',0,0,0,0),
(123,'COMPANY','Cherry Voice INC','2022-01-05 23:58:33','0000-00-00 00:00:00','Cherry Voice INC','0','1','1','Company',0,0,0,0),
(218,'COMPANYEMAIL','info@demo.com','2019-04-19 11:33:45','0000-00-00 00:00:00','info@demo.com','0','1','1','Company Email',0,0,0,0),
(499,'CURRENTHEME','red','2019-04-23 03:16:09','0000-00-00 00:00:00','red','0','1','1','Theme Option',0,0,0,0),
(519,'ADDRESS','Dummy address','2019-04-29 23:54:53','0000-00-00 00:00:00','107 Silver Circle','0','1','1','Address',0,0,0,0),
(682,'FACEBOOK','https://facebook.com/sdd','2019-04-23 23:56:03','0000-00-00 00:00:00','https://facebook.com/sdd','0','1','1','Facebook',0,0,0,0),
(1960,'TWITTER','https://twitter.com/','2019-04-19 11:34:21','0000-00-00 00:00:00','https://twitter.com/','0','1','1','Twitter',0,0,0,0),
(1961,'PINTEREST','https://instagram.com/','2022-01-05 23:33:47','0000-00-00 00:00:00','https://instagram.com/','0','1','1','Pinterest',0,0,0,0),
(1962,'GOOGLEPLUS','https://googleplus.com/','2019-04-19 11:35:03','0000-00-00 00:00:00','https://googleplus.com/','0','1','1','Google+',0,0,0,0),
(1963,'LINKEDIN','https://googleplus.com/','2019-04-19 11:35:03','0000-00-00 00:00:00','https://googleplus.com/','0','1','1','Linkedin',0,0,0,0),
(1996,'WELCOME10','About','2022-01-07 06:30:35','2022-01-07 06:30:35','About','0','1','0','WELCOME10',0,0,0,1),
(1997,'WELCOME11','Carrier One','2022-01-07 06:30:35','2022-01-07 06:30:35','Carrier One','0','1','0','WELCOME11',0,0,0,1),
(1998,'WELCOME2','Lorem Ipsum is simply dummy text of the printing and typesetting\n              industry. Lorem Ipsum has been the industry\'s standard dummy\n              text.','2022-01-07 06:30:36','2022-01-07 06:30:36','Lorem Ipsum is simply dummy text of the printing and typesetting\n              industry. Lorem Ipsum has been the industry\'s standard dummy\n              text.','0','1','0','WELCOME2',0,0,0,1),
(1999,'WELCOME3','Ever since the 1500s, when an unknown printer took a galley of\n              type and scrambled it to make a type specimen book. It has\n              survived not only five centuries, but also the leap.','2022-01-07 06:30:37','2022-01-07 06:30:37','Ever since the 1500s, when an unknown printer took a galley of\n              type and scrambled it to make a type specimen book. It has\n              survived not only five centuries, but also the leap.','0','1','0','WELCOME3',0,0,0,1),
(2000,'WELCOME4','Into electronic typesetting, remaining essentially unchanged. It\n              was popularised in the 1960s with the release of Letraset sheets\n              containing Lorem Ipsum passages, and more recently with desktop\n              publish softwa','2022-01-07 06:30:37','2022-01-07 06:30:37','Into electronic typesetting, remaining essentially unchanged. It\n              was popularised in the 1960s with the release of Letraset sheets\n              containing Lorem Ipsum passages, and more recently with desktop\n              publish software like aldus pagemaker.','0','1','0','WELCOME4',0,0,0,1),
(2001,'WELCOME5','Popular Products &amp; Services','2022-01-07 06:30:38','2022-01-07 06:30:38','Popular Products &amp; Services','0','1','0','WELCOME5',0,0,0,1),
(2002,'WELCOME6','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do\n          eiusmod tempor incididunt ut labore et dolore magna aliqua.','2022-01-07 06:30:39','2022-01-07 06:30:39','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do\n          eiusmod tempor incididunt ut labore et dolore magna aliqua.','0','1','0','WELCOME6',0,0,0,1),
(2003,'WELCOME7','We Connect The World','2022-01-07 06:30:42','2022-01-07 06:30:42','We Connect The World','0','1','0','WELCOME7',0,0,0,1),
(2004,'WELCOME8','Lorem ipsum dolor sit amet, consectetur adipisi cing elit, sed\n              do eiusmod tempor incididunt.ut labore et dolore magna aliqua.\n              Ut enim ad minim veniam, quis nostrud exercitation ullamco labor\n              nisi ut aliquip e','2022-01-07 06:30:47','2022-01-07 06:30:47','Lorem ipsum dolor sit amet, consectetur adipisi cing elit, sed\n              do eiusmod tempor incididunt.ut labore et dolore magna aliqua.\n              Ut enim ad minim veniam, quis nostrud exercitation ullamco labor\n              nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor\n              in reprehenderit in voluptate velit esse cillum dolore eu fugiat\n              nulla pariatur.','0','1','0','WELCOME8',0,0,0,1),
(2005,'WELCOME9','Take a Deeper Look','2022-01-07 06:30:49','2022-01-07 06:30:49','Take a Deeper Look','0','1','0','WELCOME9',0,0,0,1),
(2007,'WELCOME1','<div>Client Reviews</div>','2022-01-07 06:30:55','2022-01-07 06:30:55','<div>Client Reviews</div>','0','1','0','WELCOME1',0,0,0,1),
(2009,'PARTNERS1','Our Partners','2022-01-07 06:31:01','2022-01-07 06:31:01','Our Partners','0','1','0','PARTNERS1',0,0,0,1),
(2010,'FOOTER4','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do\n            eiusmod tempor incididunt ut labore et dolore magna aliqua.','2022-01-07 06:32:28','2022-01-07 06:32:28','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do\n            eiusmod tempor incididunt ut labore et dolore magna aliqua.','0','1','0','FOOTER4',0,0,0,1),
(2011,'FOOTER3','About Us','2022-01-07 06:32:29','2022-01-07 06:32:29','About Us','0','1','0','FOOTER3',0,0,0,1),
(2012,'FOOTER5','Ut enim ad minim veniam, quis nostrud exercitation Lorem ipsum\n            dolor sit amet, consectetur','2022-01-07 06:32:31','2022-01-07 06:32:31','Ut enim ad minim veniam, quis nostrud exercitation Lorem ipsum\n            dolor sit amet, consectetur','0','1','0','FOOTER5',0,0,0,1);

/*Table structure for table `newsletters` */

DROP TABLE IF EXISTS `newsletters`;

CREATE TABLE `newsletters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `newsletters` */

insert  into `newsletters`(`id`,`email`,`updated_at`,`created_at`) values 
(2,'test@gmail.com','2022-01-05 06:36:18','2022-01-05 06:36:18');

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
