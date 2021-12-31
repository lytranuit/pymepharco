/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 5.7.33 : Database - pymepharco
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`pymepharco` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `pymepharco`;

/*Table structure for table `pet_auth_activation_attempts` */

DROP TABLE IF EXISTS `pet_auth_activation_attempts`;

CREATE TABLE `pet_auth_activation_attempts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `pet_auth_activation_attempts` */

/*Table structure for table `pet_auth_groups` */

DROP TABLE IF EXISTS `pet_auth_groups`;

CREATE TABLE `pet_auth_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `pet_auth_groups` */

insert  into `pet_auth_groups`(`id`,`name`,`description`) values 
(1,'admin','Super Admin'),
(2,'member','Thành viên');

/*Table structure for table `pet_auth_groups_permissions` */

DROP TABLE IF EXISTS `pet_auth_groups_permissions`;

CREATE TABLE `pet_auth_groups_permissions` (
  `group_id` int(11) unsigned NOT NULL DEFAULT '0',
  `permission_id` int(11) unsigned NOT NULL DEFAULT '0',
  KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  KEY `group_id_permission_id` (`group_id`,`permission_id`),
  CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `pet_auth_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `pet_auth_permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `pet_auth_groups_permissions` */

/*Table structure for table `pet_auth_groups_users` */

DROP TABLE IF EXISTS `pet_auth_groups_users`;

CREATE TABLE `pet_auth_groups_users` (
  `group_id` int(11) unsigned NOT NULL DEFAULT '0',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  KEY `auth_groups_users_user_id_foreign` (`user_id`),
  KEY `group_id_user_id` (`group_id`,`user_id`),
  CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `pet_auth_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `pet_auth_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `pet_auth_groups_users` */

insert  into `pet_auth_groups_users`(`group_id`,`user_id`) values 
(1,2),
(1,3),
(1,9),
(1,10),
(2,4);

/*Table structure for table `pet_auth_logins` */

DROP TABLE IF EXISTS `pet_auth_logins`;

CREATE TABLE `pet_auth_logins` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) unsigned DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `email` (`email`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8;

/*Data for the table `pet_auth_logins` */

insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values 
(1,'127.0.0.1','daotran@gmail.com',2,'2020-12-28 08:04:30',1),
(2,'127.0.0.1','daotran@gmail.com',2,'2020-12-29 07:32:47',1),
(3,'127.0.0.1','daotran@gmail.com',2,'2020-12-29 08:17:16',1),
(4,'127.0.0.1','daotran@gmail.com',2,'2020-12-29 09:18:11',1),
(5,'127.0.0.1','daotran@gmail.com',2,'2020-12-29 18:05:59',1),
(6,'127.0.0.1','daotran@gmail.com',2,'2020-12-30 00:41:38',1),
(7,'127.0.0.1','daotran@gmail.com',2,'2020-12-30 07:31:37',1),
(8,'127.0.0.1','daotran@gmail.com',2,'2020-12-30 18:05:43',1),
(9,'127.0.0.1','daotran@gmail.com',2,'2020-12-31 01:16:27',1),
(10,'127.0.0.1','daotran@gmail.com',2,'2021-01-02 04:38:51',1),
(11,'127.0.0.1','daotran@gmail.com',2,'2021-01-02 07:29:29',1),
(12,'127.0.0.1','daotran@gmail.com',2,'2021-01-03 21:38:52',1),
(13,'127.0.0.1','daotran@gmail.com',2,'2021-01-04 08:28:07',1),
(14,'127.0.0.1','daotran@gmail.com',2,'2021-01-04 08:32:04',1),
(15,'127.0.0.1','daotran@gmail.com',2,'2021-01-04 18:28:50',1),
(16,'127.0.0.1','daotran@gmail.com',2,'2021-01-05 02:13:48',1),
(17,'127.0.0.1','daotran@gmail.com',2,'2021-01-05 09:54:34',1),
(18,'127.0.0.1','daotran@gmail.com',2,'2021-01-05 21:10:52',1),
(19,'127.0.0.1','daotran@gmail.com',2,'2021-01-06 01:37:46',1),
(20,'127.0.0.1','daotran@gmail.com',2,'2021-01-07 01:51:30',1),
(21,'127.0.0.1','daotran@gmail.com',2,'2021-01-07 08:09:01',1),
(22,'127.0.0.1','daotran@gmail.com',2,'2021-01-07 09:47:01',1),
(23,'127.0.0.1','lytranuit@gmail.com',3,'2021-01-07 20:39:55',1),
(24,'127.0.0.1','daotran@gmail.com',2,'2021-01-07 20:46:44',1),
(25,'127.0.0.1','daotran@gmail.com',2,'2021-01-12 20:48:01',1),
(26,'127.0.0.1','daotran@gmail.com',2,'2021-01-13 21:17:32',1),
(27,'127.0.0.1','daotran@gmail.com',2,'2021-01-14 02:12:38',1),
(28,'127.0.0.1','daotran@gmail.com',2,'2021-01-14 20:51:17',1),
(29,'127.0.0.1','daotran@gmail.com',2,'2021-01-17 18:14:46',1),
(30,'127.0.0.1','daotran@gmail.com',2,'2021-01-18 19:32:45',1),
(31,'127.0.0.1','daotran@gmail.com',2,'2021-01-18 19:37:25',1),
(32,'127.0.0.1','daotran@gmail.com',2,'2021-01-19 22:09:21',1),
(33,'127.0.0.1','daotran@gmail.com',2,'2021-01-20 03:37:24',1),
(34,'127.0.0.1','daotran@gmail.com',2,'2021-01-20 03:39:24',1),
(35,'127.0.0.1','daotran@gmail.com',2,'2021-01-21 17:52:27',1),
(36,'127.0.0.1','daotran@gmail.com',2,'2021-01-22 03:07:19',1),
(37,'127.0.0.1','daotran@gmail.com',2,'2021-01-22 21:51:32',1),
(38,'127.0.0.1','daotran@gmail.com',2,'2021-01-24 18:08:25',1),
(39,'127.0.0.1','daotran',NULL,'2021-05-28 07:35:23',0),
(40,'127.0.0.1','admin',NULL,'2021-05-28 07:35:29',0),
(41,'127.0.0.1','admin',NULL,'2021-05-28 07:42:07',0),
(42,'127.0.0.1','daotran',NULL,'2021-05-28 07:42:14',0),
(43,'127.0.0.1','daotran',NULL,'2021-05-28 07:44:58',0),
(44,'127.0.0.1','daotran@gmail.com',2,'2021-05-28 07:45:02',1),
(45,'127.0.0.1','daotran@gmail.com',2,'2021-05-28 19:28:16',1),
(46,'127.0.0.1','daotran@gmail.com',2,'2021-05-29 04:59:47',1),
(47,'127.0.0.1','daotran@gmail.com',2,'2021-05-29 20:13:39',1),
(48,'127.0.0.1','daotran@gmail.com',2,'2021-05-30 02:27:01',1),
(49,'127.0.0.1','daotran@gmail.com',2,'2021-06-01 22:24:18',1),
(50,'127.0.0.1','daotran@gmail.com',2,'2021-06-05 04:08:47',1),
(51,'127.0.0.1','daotran@gmail.com',2,'2021-06-30 19:35:29',1),
(52,'127.0.0.1','daotran@gmail.com',2,'2021-07-01 03:24:02',1),
(53,'127.0.0.1','daotran@gmail.com',2,'2021-07-01 20:08:06',1),
(54,'127.0.0.1','daotran@gmail.com',2,'2021-07-02 01:46:26',1),
(55,'127.0.0.1','daotran@gmail.com',2,'2021-07-02 19:21:14',1),
(56,'127.0.0.1','daotran@gmail.com',2,'2021-07-03 01:33:36',1),
(57,'127.0.0.1','daotran@gmail.com',2,'2021-07-03 18:16:42',1),
(58,'127.0.0.1','daotran@gmail.com',2,'2021-07-06 20:36:23',1),
(59,'127.0.0.1','daotran@gmail.com',2,'2021-07-07 02:47:57',1),
(60,'127.0.0.1','daotran@gmail.com',2,'2021-07-07 02:48:42',1),
(61,'127.0.0.1','daotran@gmail.com',2,'2021-07-07 03:20:30',1),
(62,'127.0.0.1','daotran@gmail.com',2,'2021-07-07 03:25:59',1),
(63,'127.0.0.1','daotran@gmail.com',2,'2021-07-07 03:26:40',1),
(64,'127.0.0.1','daotran',NULL,'2021-07-07 03:28:51',0),
(65,'127.0.0.1','daotran',NULL,'2021-07-07 04:24:22',0),
(66,'127.0.0.1','daotran',NULL,'2021-07-07 04:24:26',0),
(67,'127.0.0.1','daotran',NULL,'2021-07-07 04:24:32',0),
(68,'127.0.0.1','daotran',NULL,'2021-07-07 04:24:49',0),
(69,'127.0.0.1','daotran',NULL,'2021-07-07 04:24:55',0),
(70,'127.0.0.1','daotran',NULL,'2021-07-07 04:25:30',0),
(71,'127.0.0.1','daotran',NULL,'2021-07-07 04:25:39',0),
(72,'127.0.0.1','daotran@gmail.com',2,'2021-07-07 04:26:22',1),
(73,'127.0.0.1','daotran@gmail.com',2,'2021-07-07 18:55:19',1),
(74,'127.0.0.1','daotran@gmail.com',2,'2021-07-08 03:10:50',1),
(75,'127.0.0.1','daotran@gmail.com',2,'2021-07-08 07:37:10',1),
(76,'127.0.0.1','daotran@gmail.com',2,'2021-07-08 21:04:08',1),
(77,'127.0.0.1','daotran@gmail.com',2,'2021-07-09 19:01:53',1),
(78,'127.0.0.1','daotran@gmail.com',2,'2021-07-10 01:33:30',1),
(79,'127.0.0.1','daotran@gmail.com',2,'2021-07-10 05:00:03',1),
(80,'127.0.0.1','daotran@gmail.com',2,'2021-07-10 07:51:24',1),
(81,'127.0.0.1','daotran@gmail.com',2,'2021-07-10 18:49:18',1),
(82,'127.0.0.1','daotran@gmail.com',2,'2021-07-11 01:39:17',1),
(83,'127.0.0.1','daotran@gmail.com',2,'2021-07-11 01:39:59',1),
(84,'127.0.0.1','daotran@gmail.com',2,'2021-07-11 01:51:51',1),
(85,'127.0.0.1','daotran@gmail.com',2,'2021-07-11 02:02:02',1),
(86,'127.0.0.1','daotran@gmail.com',2,'2021-07-11 02:02:12',1),
(87,'127.0.0.1','daotran@gmail.com',2,'2021-07-11 02:04:26',1),
(88,'127.0.0.1','daotran@gmail.com',2,'2021-07-11 03:32:15',1),
(89,'127.0.0.1','daotran@gmail.com',2,'2021-07-11 04:28:23',1),
(90,'127.0.0.1','daotran@gmail.com',2,'2021-07-11 04:31:37',1),
(91,'127.0.0.1','daotran@gmail.com',2,'2021-07-11 04:35:00',1),
(92,'127.0.0.1','daotran@gmail.com',2,'2021-07-11 04:37:40',1),
(93,'127.0.0.1','daotran@gmail.com',2,'2021-07-12 02:32:17',1),
(94,'127.0.0.1','daotran@gmail.com',2,'2021-07-12 19:52:08',1),
(95,'127.0.0.1','daotran@gmail.com',2,'2021-07-12 22:54:06',1),
(96,'127.0.0.1','daotran@gmail.com',2,'2021-07-13 02:01:19',1),
(97,'127.0.0.1','daotran@gmail.com',2,'2021-07-14 01:43:21',1),
(98,'127.0.0.1','daotran@gmail.com',2,'2021-07-14 22:56:20',1),
(99,'127.0.0.1','daotran@gmail.com',2,'2021-07-15 02:13:50',1),
(100,'127.0.0.1','daotran@gmail.com',2,'2021-07-15 02:13:50',1),
(101,'127.0.0.1','daotran@gmail.com',2,'2021-07-15 19:16:04',1),
(102,'127.0.0.1','daotran@gmail.com',2,'2021-07-16 02:07:02',1),
(103,'127.0.0.1','daotran@gmail.com',2,'2021-07-16 02:14:19',1),
(104,'127.0.0.1','daotran@gmail.com',2,'2021-07-16 02:19:39',1),
(105,'127.0.0.1','daotran@gmail.com',2,'2021-07-16 02:19:56',1),
(106,'127.0.0.1','xcvsdf',NULL,'2021-07-16 20:07:56',0),
(107,'127.0.0.1','kjdfgdfg@gmail.com',6,'2021-07-16 20:11:54',1),
(108,'127.0.0.1','sdvc@gmail.com',7,'2021-07-16 21:11:00',1),
(109,'127.0.0.1','daotran@gmail.com',2,'2021-07-16 22:37:34',1),
(110,'127.0.0.1','daotran@gmail.com',2,'2021-07-16 23:13:24',1),
(111,'127.0.0.1','daotran',NULL,'2021-07-16 23:14:18',0),
(112,'127.0.0.1','daotran@gmail.com',2,'2021-07-16 23:14:23',1),
(113,'127.0.0.1','daotran@gmail.com',2,'2021-07-16 23:14:35',1),
(114,'127.0.0.1','kjdfgdfg@gmail.com',6,'2021-07-16 23:14:46',1),
(115,'127.0.0.1','kjdfgdfg@gmail.com',6,'2021-07-17 01:43:05',1),
(116,'127.0.0.1','daotran@gmail.com',2,'2021-07-17 02:05:44',1),
(117,'127.0.0.1','daotran@gmail.com',2,'2021-07-17 04:24:22',1),
(118,'127.0.0.1','daotran@gmail.com',2,'2021-07-22 23:14:18',1),
(119,'127.0.0.1','daotran',NULL,'2021-07-22 23:16:53',0),
(120,'127.0.0.1','cvbgh@gmail.com',9,'2021-07-22 23:20:03',1),
(121,'127.0.0.1','trandaica',NULL,'2021-07-23 22:56:11',0),
(122,'127.0.0.1','trandaica',NULL,'2021-07-23 22:56:28',0),
(123,'127.0.0.1','trandaica',NULL,'2021-07-23 22:56:32',0),
(124,'127.0.0.1','trandaica',NULL,'2021-07-23 22:56:54',0),
(125,'127.0.0.1','trandaica',NULL,'2021-07-23 22:57:14',0),
(126,'127.0.0.1','tranit',NULL,'2021-07-23 22:57:33',0),
(127,'127.0.0.1','lasdxfv@gmail.com',10,'2021-07-23 22:58:40',1),
(128,'127.0.0.1','lasdxfv@gmail.com',10,'2021-07-23 22:59:17',1),
(129,'127.0.0.1','lasdxfv@gmail.com',10,'2021-07-23 23:03:01',1),
(130,'127.0.0.1','lasdxfv@gmail.com',10,'2021-07-23 23:03:49',1),
(131,'127.0.0.1','trandaica',NULL,'2021-07-24 19:26:23',0),
(132,'127.0.0.1','lasdxfv@gmail.com',10,'2021-07-24 19:27:13',1),
(133,'127.0.0.1','lasdxfv@gmail.com',10,'2021-07-25 07:45:47',1),
(134,'127.0.0.1','lasdxfv@gmail.com',10,'2021-07-25 22:41:30',1),
(135,'127.0.0.1','lasdxfv@gmail.com',10,'2021-07-26 03:23:54',1),
(136,'127.0.0.1','admin',NULL,'2021-07-26 06:14:04',0),
(137,'127.0.0.1','lasdxfv@gmail.com',10,'2021-07-26 06:14:08',1),
(138,'127.0.0.1','daotran',NULL,'2021-08-05 03:42:48',0),
(139,'127.0.0.1','admin',NULL,'2021-08-05 03:42:56',0),
(140,'127.0.0.1','lasdxfv@gmail.com',10,'2021-08-05 03:43:00',1),
(141,'127.0.0.1','lasdxfv@gmail.com',10,'2021-08-05 20:14:51',1),
(142,'127.0.0.1','lasdxfv@gmail.com',10,'2021-08-06 01:37:49',1),
(143,'127.0.0.1','lasdxfv@gmail.com',10,'2021-08-08 21:26:16',1),
(144,'127.0.0.1','lasdxfv@gmail.com',10,'2021-08-09 02:22:56',1),
(145,'127.0.0.1','lasdxfv@gmail.com',10,'2021-11-23 18:34:26',1),
(146,'127.0.0.1','lasdxfv@gmail.com',10,'2021-11-24 21:36:39',1),
(147,'127.0.0.1','lasdxfv@gmail.com',10,'2021-11-25 03:25:29',1),
(148,'127.0.0.1','lasdxfv@gmail.com',10,'2021-11-25 20:03:53',1),
(149,'127.0.0.1','lasdxfv@gmail.com',10,'2021-12-01 01:10:11',1),
(150,'127.0.0.1','lasdxfv@gmail.com',10,'2021-12-01 21:38:15',1),
(151,'127.0.0.1','lasdxfv@gmail.com',10,'2021-12-02 00:28:36',1),
(152,'127.0.0.1','lasdxfv@gmail.com',10,'2021-12-02 03:11:13',1),
(153,'127.0.0.1','lasdxfv@gmail.com',10,'2021-12-05 19:48:44',1),
(154,'127.0.0.1','lasdxfv@gmail.com',10,'2021-12-06 02:50:06',1),
(155,'127.0.0.1','lasdxfv@gmail.com',10,'2021-12-06 18:38:17',1),
(156,'127.0.0.1','lasdxfv@gmail.com',10,'2021-12-10 02:34:50',1),
(157,'127.0.0.1','lasdxfv@gmail.com',10,'2021-12-12 21:41:06',1),
(158,'127.0.0.1','lasdxfv@gmail.com',10,'2021-12-15 02:03:35',1),
(159,'127.0.0.1','lasdxfv@gmail.com',10,'2021-12-15 20:51:44',1),
(160,'127.0.0.1','lasdxfv@gmail.com',10,'2021-12-16 00:45:42',1),
(161,'127.0.0.1','lasdxfv@gmail.com',10,'2021-12-16 19:46:46',1);

/*Table structure for table `pet_auth_permissions` */

DROP TABLE IF EXISTS `pet_auth_permissions`;

CREATE TABLE `pet_auth_permissions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `pet_auth_permissions` */

/*Table structure for table `pet_auth_reset_attempts` */

DROP TABLE IF EXISTS `pet_auth_reset_attempts`;

CREATE TABLE `pet_auth_reset_attempts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `pet_auth_reset_attempts` */

/*Table structure for table `pet_auth_tokens` */

DROP TABLE IF EXISTS `pet_auth_tokens`;

CREATE TABLE `pet_auth_tokens` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `expires` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `auth_tokens_user_id_foreign` (`user_id`),
  KEY `selector` (`selector`),
  CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `pet_auth_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `pet_auth_tokens` */

/*Table structure for table `pet_auth_users` */

DROP TABLE IF EXISTS `pet_auth_users`;

CREATE TABLE `pet_auth_users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `image_url` varchar(1000) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `pet_auth_users` */

insert  into `pet_auth_users`(`id`,`email`,`username`,`password_hash`,`reset_hash`,`reset_at`,`reset_expires`,`activate_hash`,`status`,`status_message`,`active`,`force_pass_reset`,`name`,`image_url`,`description`,`address`,`phone`,`created_at`,`updated_at`,`deleted_at`) values 
(2,'daotran@gmail.com','daotran','$2y$10$LxP70bB65ZIBgYgJyDzm9eL04.PDvofBxBw6mG5B.e0kHFEcnfE72',NULL,'2021-07-16 23:13:34',NULL,NULL,NULL,NULL,1,0,'trân2323',NULL,'sdfdfgdfhertert','sdf234234werwer','123123asd','2020-12-28 08:04:03','2021-07-16 23:13:34',NULL),
(3,'lytranuit@gmail.com','tranit','$2y$10$/By8EO75wGLrZZE3pC27Q.oXsaYWdISfkADrDRPcFjVeET4Wz3bgm',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'test',NULL,'','','','2021-01-07 09:49:41','2021-07-07 03:28:38',NULL),
(4,'1610034659@gmail.com','hienit','$2y$10$Q3y3B0LqTiWecUN8Mdve.eDPWoCV6R4W5OB00YDCBppJQ3bvdqI82',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'test',NULL,'','','','2021-01-07 09:50:59','2021-01-07 09:52:40','2021-01-07 09:52:40'),
(5,'sfoisjdf@gmail.com','daotran123','$2y$10$7vRFi6b/TLfSu12H0qvue.7lVtxzQsQ9PFDuqgSM0pS0ozdfeazOO',NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL,'2021-07-16 20:09:28','2021-07-22 23:27:58','2021-07-22 23:27:58'),
(6,'kjdfgdfg@gmail.com','daotran345','$2y$10$lyezObLuA2zBjMpvfW6b5eFeRG5uwEA2CDs3HCxT0PSQ1oC94g.gq',NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL,'2021-07-16 20:11:40','2021-07-22 23:28:00','2021-07-22 23:28:00'),
(7,'sdvc@gmail.com','daotran32','$2y$10$tpjY0jv1ZtQxJC6Lv/MIiO17ebUkVNeOn8q9L.oyFtvb0YtRJbPpG',NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL,'2021-07-16 21:10:01','2021-07-22 23:28:03','2021-07-22 23:28:03'),
(8,'sdsdvc@gmail.com','trab223','$2y$10$yR5SOuO.ef0MLLL2KMF63u2rZCQXj9IiYZ9fnpp0lWFOm3ci4T0li',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'vbdgưẻ',NULL,NULL,'sda','v','2021-07-16 22:29:38','2021-07-16 22:29:38',NULL),
(9,'cvbgh@gmail.com','trandaica','$2y$10$8Fy/5oqmDKVm1BwvroGFX.VPsne/b0fOj70Lj2LgXe9N8cGRRZhpa',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'tran',NULL,NULL,'','','2021-07-22 23:19:35','2021-07-22 23:19:35',NULL),
(10,'lasdxfv@gmail.com','admin','$2y$10$dz.z0tN25wUx65FYSLS2Nu7vt87pg4oLjK9jWnEn69i.NHHg4k5uC',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'tran',NULL,NULL,'','','2021-07-23 22:58:31','2021-07-23 22:58:31',NULL);

/*Table structure for table `pet_auth_users_permissions` */

DROP TABLE IF EXISTS `pet_auth_users_permissions`;

CREATE TABLE `pet_auth_users_permissions` (
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `permission_id` int(11) unsigned NOT NULL DEFAULT '0',
  KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  KEY `user_id_permission_id` (`user_id`,`permission_id`),
  CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `pet_auth_permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `pet_auth_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `pet_auth_users_permissions` */

/*Table structure for table `pet_category` */

DROP TABLE IF EXISTS `pet_category`;

CREATE TABLE `pet_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name_vi` varchar(256) DEFAULT NULL,
  `name_en` varchar(256) DEFAULT NULL,
  `name_jp` varchar(256) DEFAULT NULL,
  `description_vi` text,
  `description_en` text,
  `description_jp` text,
  `content_vi` text,
  `content_en` text,
  `content_jp` text,
  `image_url` varchar(1000) DEFAULT NULL,
  `active` tinyint(4) DEFAULT '1',
  `order` int(11) DEFAULT '0',
  `is_home` tinyint(4) DEFAULT '1',
  `type` int(11) DEFAULT '1',
  `parent_id` int(11) DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `slug` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `pet_category` */

insert  into `pet_category`(`id`,`name_vi`,`name_en`,`name_jp`,`description_vi`,`description_en`,`description_jp`,`content_vi`,`content_en`,`content_jp`,`image_url`,`active`,`order`,`is_home`,`type`,`parent_id`,`deleted_at`,`created_at`,`updated_at`,`date`,`slug`) values 
(1,'Sản phẩm thuốc','','','','','','','','','/assets/images/placeholder.png',1,0,0,1,0,NULL,NULL,NULL,'2021-08-09 04:11:17','san-pham-thuoc'),
(2,'Sản phẩm chăm sóc sức khỏe','','','','','','','','',NULL,1,0,0,1,0,NULL,NULL,NULL,'2021-12-01 01:33:03','san-pham-cham-soc-suc-khoe'),
(3,'Vitamin khoáng chất','','','','','','','','',NULL,1,0,0,1,0,NULL,NULL,NULL,'2021-12-01 01:33:41','vitamin-khoang-chat'),
(4,'Tuần hoàn máu','','','','','','','','','/assets/userfiles/files/Colorful-Free-Medical-Banner-Template.png',1,0,0,1,0,NULL,NULL,NULL,'2021-12-01 01:33:53','tuan-hoan-mau');

/*Table structure for table `pet_menu` */

DROP TABLE IF EXISTS `pet_menu`;

CREATE TABLE `pet_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name_vi` varchar(256) DEFAULT NULL,
  `name_en` varchar(256) DEFAULT NULL,
  `name_jp` varchar(256) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `link` varchar(1000) DEFAULT NULL,
  `related_id` int(11) DEFAULT '0',
  `order` int(11) DEFAULT '0',
  `parent_id` int(11) DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

/*Data for the table `pet_menu` */

insert  into `pet_menu`(`id`,`name_vi`,`name_en`,`name_jp`,`type`,`link`,`related_id`,`order`,`parent_id`,`deleted_at`,`created_at`,`updated_at`) values 
(1,'Trang chủ','Home','',1,'/',0,0,0,NULL,NULL,NULL),
(4,'Sản phẩm','Products','',4,'http://pymetest.duckdns.org/san-pham.html',0,8,0,NULL,NULL,NULL),
(5,'Tin tức','','',5,'http://pymetest.duckdns.org/tin-tuc.html',0,12,0,NULL,NULL,NULL),
(6,'Câu chuyện kinh doanh','Business','',1,'#',9,5,0,NULL,NULL,NULL),
(7,'Liên hệ','','',8,'http://pymetest.duckdns.org/lien-he',0,14,0,NULL,NULL,NULL),
(8,'Về chúng tôi','About us','',7,'http://pymetest.duckdns.org/gioi-thieu',0,1,0,NULL,NULL,NULL),
(9,'Thông tin doanh nghiệp','Company profile','',1,'#',0,2,8,NULL,NULL,NULL),
(10,'Mission and vision','Mission and vision','',1,'#',0,3,8,NULL,NULL,NULL),
(11,'Management','Management','',1,'#',0,4,8,NULL,NULL,NULL),
(12,'R&D','R&D','',1,'#',0,7,6,NULL,NULL,NULL),
(13,'Quality','Quality','',1,'#',0,6,6,NULL,NULL,NULL),
(14,'Tuần hoàn máu','','',2,'http://pymetest.duckdns.org/san-pham/c4.html',4,11,16,NULL,NULL,NULL),
(15,'Sản phẩm thuốc','','',2,'http://pymetest.duckdns.org/san-pham/c1.html',1,9,4,NULL,NULL,NULL),
(16,'Sản phẩm chăm sóc sức khỏe','','',2,'http://pymetest.duckdns.org/san-pham/c2.html',2,10,4,NULL,NULL,NULL),
(17,'Tuyển dụng','','',3,'http://pymetest.duckdns.org/tin-tuc/c10.html',10,13,5,NULL,NULL,NULL);

/*Table structure for table `pet_news` */

DROP TABLE IF EXISTS `pet_news`;

CREATE TABLE `pet_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title_vi` varchar(256) DEFAULT NULL,
  `content_vi` text,
  `title_en` varchar(256) DEFAULT NULL,
  `content_en` text,
  `title_jp` varchar(256) DEFAULT NULL,
  `content_jp` text,
  `slug` varchar(1000) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `image_url` varchar(1000) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

/*Data for the table `pet_news` */

insert  into `pet_news`(`id`,`title_vi`,`content_vi`,`title_en`,`content_en`,`title_jp`,`content_jp`,`slug`,`date`,`image_url`,`user_id`,`updated_at`,`created_at`,`deleted_at`) values 
(1,'PYMEPHARCO – 30 NĂM – CHẶNG ĐƯỜNG VƯƠN TỚI ƯU VIỆT KỶ NIỆM 30 NĂM THÀNH LẬP & KHÁNH THÀNH NHÀ MÁY DƯỢC PHẨM PME II TẠI SỐ 189 HOÀNG VĂN THỤ','<p>Ng&agrave;y 12/7, h&ograve;a chung kh&ocirc;ng kh&iacute; s&ocirc;i nổi nh&acirc;n kỷ niệm 30 năm ng&agrave;y t&aacute;i lập tỉnh Ph&uacute; Y&ecirc;n (1989-2019); C&ocirc;ng ty cổ phần&nbsp;<strong>Pymepharco</strong>&nbsp;long trọng tổ chức&nbsp;<strong>Lễ kỷ niệm 30 năm th&agrave;nh lập C&ocirc;ng ty cổ phần Pymepharco (1989 &ndash; 2019) v&agrave; Lễ kh&aacute;nh th&agrave;nh Nh&agrave; m&aacute;y Dược phẩm PME II tại 189 Ho&agrave;ng Văn Thụ đạt ti&ecirc;u chuẩn GMP &ndash; Ch&acirc;u &Acirc;u.</strong></p>\r\n\r\n<p>Đến dự buổi lễ c&oacute; đại diện Bộ Y tế, Cục Quản l&yacute; Dược, đại diện c&aacute;c Ban ng&agrave;nh Trung Ương, L&atilde;nh đạo Tỉnh, Ban ng&agrave;nh tại Ph&uacute; Y&ecirc;n, c&aacute;c Đối t&aacute;c, Kh&aacute;ch h&agrave;ng của&nbsp;<strong>Pymepharco</strong>&nbsp;trong v&agrave; ngo&agrave;i nước.</p>\r\n\r\n<p><a href=\"https://www.pymepharco.com/wp-content/uploads/2019/07/h1.png\"><img alt=\"\" src=\"https://www.pymepharco.com/wp-content/uploads/2019/07/h1-1024x563.png\" style=\"height:563px; width:1024px\" /></a></p>\r\n\r\n<p><em>H&igrave;nh ảnh: Nh&agrave; m&aacute;y dược phẩm PME II theo ti&ecirc;u chuẩn GMP &ndash; Ch&acirc;u &Acirc;u</em></p>\r\n\r\n<p>C&ocirc;ng ty cổ phần&nbsp;<strong>Pymepharco</strong>&nbsp;được th&agrave;nh lập v&agrave;o ng&agrave;y 23/7/1989. Trải qua 30 năm kh&ocirc;ng ngừng nỗ lực v&agrave; ph&aacute;t triển,&nbsp;<strong>Pymepharco</strong>&nbsp;đ&atilde; đạt được những th&agrave;nh tựu vượt bậc đ&aacute;ng tự h&agrave;o. Từ một c&ocirc;ng ty Dược địa phương chuy&ecirc;n ph&acirc;n phối vật tư, trang thiết bị y tế nhỏ lẻ,&nbsp;<strong>Pymepharco</strong>&nbsp;đ&atilde; vươn l&ecirc;n trở th&agrave;nh một trong những nh&agrave; sản xuất dược phẩm h&agrave;ng đầu Việt Nam v&agrave; khu vực với hệ thống nh&agrave; m&aacute;y sản xuất dược phẩm đạt ti&ecirc;u chuẩn&nbsp;<strong>EU-GMP</strong>, hệ thống ph&acirc;n phối với 19 chi nh&aacute;nh rộng khắp cả nước, c&aacute;c văn ph&ograve;ng đại diện, cửa h&agrave;ng chuy&ecirc;n doanh.&nbsp;<strong>Pymepharco</strong>&nbsp;sở hữu nguồn nh&acirc;n lực trẻ, tr&igrave;nh độ cao v&agrave; &aacute;p dụng hệ thống quản l&yacute; ti&ecirc;n tiến hiện đại.</p>\r\n\r\n<p><a href=\"https://www.pymepharco.com/wp-content/uploads/2019/07/h2.jpg\"><img alt=\"\" src=\"https://www.pymepharco.com/wp-content/uploads/2019/07/h2-1024x731.jpg\" style=\"height:731px; width:1024px\" /></a></p>\r\n\r\n<p><em>H&igrave;nh ảnh: Tập thể Pymepharco c&ugrave;ng c&aacute;c đại biểu</em></p>\r\n\r\n<p>Tiếp tục tr&ecirc;n con đường ph&aacute;t triển, ng&agrave;y 31/01/2018,&nbsp;<strong>Pymepharco</strong>&nbsp;ch&iacute;nh thức khởi c&ocirc;ng x&acirc;y dựng Nh&agrave; m&aacute;y Dược phẩm PME II c&oacute; tổng vốn đầu tư gần 800 tỷ đồng tr&ecirc;n diện t&iacute;ch hơn 30.000m2 tại địa chỉ 189 Ho&agrave;ng Văn Thụ, Phường 9, Tp. Tuy H&ograve;a, tỉnh Ph&uacute; Y&ecirc;n. Với c&ocirc;ng suất 1,2 tỷ vi&ecirc;n/năm/1 ca sản xuất, Nh&agrave; m&aacute;y dược phẩm PME II được đầu tư theo ti&ecirc;u chuẩn kỹ thuật&nbsp;<strong>GMP &ndash; Ch&acirc;u &Acirc;u</strong>.</p>\r\n\r\n<p>C&ocirc;ng tr&igrave;nh được ho&agrave;n th&agrave;nh sau 18 th&aacute;ng nỗ lực của to&agrave;n thể CB-CNV&nbsp;<strong>Pymepharco</strong>&nbsp;v&agrave; sự hỗ trợ của c&aacute;c chuy&ecirc;n gia nước ngo&agrave;i, l&agrave; một trong những nh&agrave; m&aacute;y hiện đại ngang tầm khu vực v&agrave; thế giới, được sự tư vấn kỹ thuật từ C&ocirc;ng ty FormaPharm v&agrave; chuyển giao c&ocirc;ng nghệ từ tập đo&agrave;n&nbsp;<strong>Stada &ndash; Đức</strong>, đủ sức tham gia v&agrave;o chuỗi cung ứng to&agrave;n cầu, đ&aacute;p ứng được nhu cầu sử dụng thuốc chất lượng cao với gi&aacute; cả hợp l&yacute; cho người Việt. Đ&acirc;y l&agrave; điểm nổi trội của&nbsp;<strong>Pymepharco</strong>&nbsp;tr&ecirc;n con đường hội nhập v&agrave; ph&aacute;t triển.</p>\r\n\r\n<p><a href=\"https://www.pymepharco.com/wp-content/uploads/2019/07/h3.jpg\"><img alt=\"\" src=\"https://www.pymepharco.com/wp-content/uploads/2019/07/h3-1024x637.jpg\" style=\"height:637px; width:1024px\" /></a></p>\r\n\r\n<p><em>H&igrave;nh ảnh: Đại biểu cắt băng kh&aacute;nh th&agrave;nh</em></p>\r\n\r\n<p>&Ocirc;ng&nbsp;<strong>Trương Quốc Cường &ndash; Thứ trưởng Bộ Y Tế</strong>&nbsp;đ&aacute;nh gi&aacute;:&nbsp;<em>&ldquo;Nh&agrave; m&aacute;y dược phẩm PME II ra đời thể hiện được dấu ấn nổi bật đặc biệt trong bức tranh chung của ng&agrave;nh Dược Việt Nam, l&agrave; kết quả đầu tư đ&uacute;ng hướng của doanh nghiệp theo chủ trương tăng dần tỷ trọng h&agrave;ng sản xuất trong nước của Bộ Y tế Việt Nam. Ch&uacute;ng ta vui mừng đ&oacute;n nhận một Nh&agrave; m&aacute;y hiện đại mang tầm khu vực v&agrave; quốc tế g&oacute;p phần v&agrave;o th&agrave;nh c&ocirc;ng chung cho ng&agrave;nh Dược v&agrave; Bộ y tế Việt Nam trong xu thế hội nhập. T&ocirc;i ho&agrave;n to&agrave;n tin tưởng rằng những sản phẩm mang thương hiệu&nbsp;<strong>Pymepharco</strong>&nbsp;sẽ vươn ra tr&ecirc;n thị trường quốc tế.&rdquo;</em></p>\r\n\r\n<p><a href=\"https://www.pymepharco.com/wp-content/uploads/2019/07/h4.jpg\"><img alt=\"\" src=\"https://www.pymepharco.com/wp-content/uploads/2019/07/h4-1024x731.jpg\" style=\"height:731px; width:1024px\" /></a></p>\r\n\r\n<p><em>H&igrave;nh ảnh: &Ocirc;ng Trương Quốc Cường &ndash; Thứ trưởng Bộ Y tế ph&aacute;t biểu</em></p>\r\n\r\n<p>Cũng trong dịp n&agrave;y, &ocirc;ng&nbsp;<strong>Peter Goldschmidt &ndash; Chủ tịch Tập đo&agrave;n Stada&nbsp; &ndash; Đức</strong>, hiện l&agrave; c&ocirc;ng ty nắm giữ 62% cổ phần tại&nbsp;<strong>Pymepharco</strong>, cũng đ&atilde; c&oacute; những ph&aacute;t biểu, kỳ vọng v&agrave;o một sự ph&aacute;t triển lớn mạnh của&nbsp;<strong>Pymepharco</strong>&nbsp;trong tương lai. &Ocirc;ng n&oacute;i:&nbsp;<em>&ldquo;Đầu tư v&agrave;o&nbsp;<strong>Pymepharco</strong>&nbsp;l&agrave; một trong những trọng t&acirc;m trong chiến lược kinh doanh của ch&uacute;ng t&ocirc;i. Sự thần tốc trong việc x&acirc;y dựng Nh&agrave; m&aacute;y Non-Betalactam n&agrave;y chứng tỏ sự tự h&agrave;o, kh&aacute;t vọng v&agrave; ngọn lửa nhiệt huyết tr&agrave;n đầy trong mỗi th&agrave;nh vi&ecirc;n&nbsp;<strong>Pymepharco</strong>&nbsp;đ&atilde; chung tay x&acirc;y dựng nh&agrave; m&aacute;y c&oacute; thể gọi l&agrave; kỳ t&iacute;ch trong ng&agrave;nh dược phẩm. T&ocirc;i c&oacute; niềm tin to lớn v&agrave;o sự ph&aacute;t triển của c&aacute;c bạn trong tương lai. V&agrave; chắc chắn rằng&nbsp;<strong>Stada</strong>&nbsp;sẽ lu&ocirc;n đồng h&agrave;nh v&agrave; hỗ trợ chặt chẽ để c&ugrave;ng&nbsp;<strong>Pymepharco</strong>&nbsp;phấn đấu cho những mục ti&ecirc;u lớn hơn, đưa&nbsp;<strong>Pymepharco</strong>&nbsp;vươn l&ecirc;n dẫn đầu trong thị trường dược phẩm Việt Nam v&agrave; vươn ra thị trường quốc tế rộng lớn.&rdquo;</em></p>\r\n\r\n<p><a href=\"https://www.pymepharco.com/wp-content/uploads/2019/07/h5.jpg\"><img alt=\"\" src=\"https://www.pymepharco.com/wp-content/uploads/2019/07/h5-1024x731.jpg\" style=\"height:731px; width:1024px\" /></a></p>\r\n\r\n<p><em>H&igrave;nh ảnh: &Ocirc;ng Peter Goldschmidt &ndash; Chủ tịch Tập đo&agrave;n Stada&nbsp; &ndash; Đức</em></p>\r\n\r\n<p>Tại buổi lễ kỷ niệm 30 năm ng&agrave;y th&agrave;nh lập,&nbsp;<strong>Pymepharco</strong>&nbsp;khẳng định tiếp tục đ&oacute;ng vai tr&ograve; dẫn đầu trong lĩnh vực sản xuất dược phẩm, ti&ecirc;n phong trong &aacute;p dụng khoa học kỹ thuật v&agrave;o qu&aacute; tr&igrave;nh sản xuất, n&acirc;ng cao chất lượng sản phẩm, phục vụ c&ocirc;ng t&aacute;c chăm s&oacute;c sức khỏe cộng đồng.</p>\r\n\r\n<p><strong>Pymepharco</strong>&nbsp;sẽ đẩy mạnh nghi&ecirc;n cứu, đưa ra thị trường c&aacute;c thuốc thế hệ mới, &aacute;p dụng c&ocirc;ng nghệ ti&ecirc;n tiến nhất tr&ecirc;n thế giới, bắt nhịp c&ugrave;ng thế giới trong cuộc c&aacute;ch mạng 4.0, đồng thời g&oacute;p phần quan trọng trong sự ph&aacute;t triển thịnh vượng của Ph&uacute; Y&ecirc;n hiện tại v&agrave; tương lai cũng như sự nghiệp c&ocirc;ng nghiệp h&oacute;a, hiện đại h&oacute;a đất nước.</p>\r\n\r\n<p><a href=\"https://www.pymepharco.com/wp-content/uploads/2019/07/h6.jpg\"><img alt=\"\" src=\"https://www.pymepharco.com/wp-content/uploads/2019/07/h6-1024x731.jpg\" style=\"height:731px; width:1024px\" /></a></p>\r\n\r\n<p><em>H&igrave;nh ảnh: Đại biểu tham quan nh&agrave; m&aacute;y mới</em></p>\r\n\r\n<p>&Ocirc;ng&nbsp;<strong>Huỳnh Tấn Nam &ndash; Chủ tịch HĐQT &ndash; Tổng Gi&aacute;m đốc</strong>&nbsp;<strong>Pymepharco</strong>&nbsp;chia sẻ:&nbsp;<em>&ldquo;Ch&uacute;ng ta đều hiểu rằng, kh&ocirc;ng c&oacute; sự thần tốc n&agrave;o đến với&nbsp;<strong>Pymepharco</strong>&nbsp;một c&aacute;ch dễ d&agrave;ng. Kh&ocirc;ng thể kể hết những kh&oacute; khăn, thử th&aacute;ch m&agrave; h&agrave;ng trăm nh&acirc;n vi&ecirc;n của&nbsp;<strong>Pymepharco</strong>&nbsp;đ&atilde; chắt chiu từng cơ hội nhỏ để bền ch&iacute; vượt qua để đi tới ng&agrave;y h&ocirc;m nay. V&agrave; ch&iacute;nh những sự nỗ lực, t&acirc;m huyết, sự tự h&agrave;o n&agrave;y đ&atilde; tạo ra những gi&aacute; trị rất đặc biệt, m&agrave; t&ocirc;i cho rằng đ&atilde; l&agrave;m n&ecirc;n thương hiệu, l&agrave;m n&ecirc;n sự tự h&agrave;o của&nbsp;<strong>Pymepharco</strong>, của người Ph&uacute; Y&ecirc;n. Th&agrave;nh c&ocirc;ng của ng&agrave;y h&ocirc;m nay bắt nguồn từ nỗ lực của ng&agrave;y h&ocirc;m qua. Th&agrave;nh c&ocirc;ng trong tương lai phụ thuộc v&agrave;o những h&agrave;nh động ngay từ b&acirc;y giờ. T&ocirc;i hy vọng mốc 30 năm m&agrave; ch&uacute;ng ta đang kỷ niệm h&ocirc;m nay, sẽ chỉ l&agrave; điểm khởi đầu cho những chặng đường mới nhiều th&agrave;nh tựu hơn cho nhiều năm về sau.&rdquo;</em></p>\r\n\r\n<p><a href=\"https://www.pymepharco.com/wp-content/uploads/2019/07/h7.jpg\"><img alt=\"\" src=\"https://www.pymepharco.com/wp-content/uploads/2019/07/h7-1024x585.jpg\" style=\"height:585px; width:1024px\" /></a></p>\r\n\r\n<p><em>H&igrave;nh ảnh: C&aacute;c đại biểu chụp h&igrave;nh lưu niệm</em></p>\r\n\r\n<p>Với vị thế dẫn đầu v&agrave; tr&aacute;ch nhiệm đ&oacute;ng g&oacute;p cho ng&agrave;nh Dược Việt Nam,&nbsp;<strong>Pymepharco</strong>&nbsp;sẽ trở th&agrave;nh điểm hội tụ v&agrave; lan tỏa tinh hoa tr&ecirc;n suốt chặng đường ph&aacute;t triển của m&igrave;nh, xứng đ&aacute;ng với danh hiệu&nbsp;<strong>&ldquo;Anh h&ugrave;ng lao động thời kỳ đổi mới&rdquo;</strong>, đưa ng&agrave;nh Dược Việt Nam đồng h&agrave;nh với khu vực v&agrave; tr&ecirc;n to&agrave;n thế giới.</p>\r\n','','','','','pymepharco-30-nam-chang-duong-vuon-toi-uu-viet-ky-niem-30-nam-thanh-lap-khanh-thanh-nha-may-duoc-pham-pme-ii-tai-so-189-hoang-van-thu','2021-08-09 03:38:08','/assets/userfiles/files/h2.jpg',10,NULL,NULL,NULL),
(2,'Pymepharco Tuyển Dụng Tháng 7 – Năm 2021','<p>C&ocirc;ng ty Cổ phần Pymepharco l&agrave; nh&agrave; sản xuất dược phẩm h&agrave;ng đầu tại Việt Nam, sở hữu hệ thống nh&agrave; m&aacute;y đạt ti&ecirc;u chuẩn EU-GMP v&agrave; l&agrave; đối t&aacute;c chiến lược của Tập đo&agrave;n Stada AG-Cộng h&ograve;a LB Đức. Hiện tại, do nhu cầu mở rộng sản xuất, kinh doanh, Pymepharco c&oacute; nhu cầu tuyển dụng vị tr&iacute; C&ocirc;ng nh&acirc;n Sản xuất với những y&ecirc;u cầu v&agrave; quyền lợi như sau:<br />\r\n<strong>Vị tr&iacute;: C&ocirc;ng nh&acirc;n sản xuất</strong><br />\r\n<strong>Số lượng cần tuyển: 50</strong><br />\r\n<strong>Y&ecirc;u cầu:</strong><br />\r\n&ndash; Tốt nghiệp trung cấp, cao đẳng c&aacute;c ng&agrave;nh điện, điện tử, dược, h&oacute;a.<br />\r\n&ndash; Sức khỏe tốt.<br />\r\n&ndash; Tuổi dưới 30.<br />\r\n&ndash; Ưu ti&ecirc;n nam<br />\r\n<strong>Ph&uacute;c lợi:</strong><br />\r\n&ndash; Lương: Theo quy định c&ocirc;ng ty<br />\r\n&ndash; Thưởng v&agrave; c&aacute;c chế độ kh&aacute;c theo quy định của C&ocirc;ng ty<br />\r\n&ndash; C&aacute;c chế độ bảo hiểm đầy đủ theo quy định của ph&aacute;p luật lao động<br />\r\n&ndash; Được tham gia c&aacute;c kh&oacute;a đ&agrave;o tạo nội bộ<br />\r\n&ndash; Được tham gia nhiều hoạt động phong tr&agrave;o của c&ocirc;ng ty, teambuilding, du lịch&hellip;<br />\r\n<strong>Địa điểm l&agrave;m việc:</strong><br />\r\nNh&agrave; m&aacute;y sản xuất dược phẩm &ndash; C&ocirc;ng ty Cổ phần Pymepharco<br />\r\nĐịa chỉ: 166-170 Nguyễn Huệ, Phường 7, Tp. Tuy H&ograve;a, Ph&uacute; Y&ecirc;n<br />\r\n<strong>Hồ sơ bao gồm:</strong><br />\r\n&ndash; Đơn xin việc.<br />\r\n&ndash; Bản m&ocirc; tả qu&aacute; tr&igrave;nh c&ocirc;ng t&aacute;c/ kinh nghiệm l&agrave;m việc.<br />\r\n&ndash; Sơ yếu l&yacute; lịch (c&oacute; x&aacute;c nhận của địa phương), giấy kh&aacute;m sức khỏe.<br />\r\n&ndash; Văn bằng, chứng chỉ li&ecirc;n quan.<br />\r\n&ndash; CMND, Sổ Hộ Khẩu (photo c&ocirc;ng chứng).<br />\r\n<strong>Li&ecirc;n hệ:</strong><br />\r\n&ndash; Ứng vi&ecirc;n vui l&ograve;ng nộp hồ sơ qua đường bưu điện về P.HCNS, địa chỉ: 166-170 Nguyễn Huệ, Phường 7, Tp. Tuy H&ograve;a, Ph&uacute; Y&ecirc;n hoặc qua email: tuyendung@pymepharco.com<br />\r\n&ndash; Để biết th&ecirc;m chi tiết vui l&ograve;ng gọi số: 02573 829 165 (P.HCNS)</p>\r\n','','','','','pymepharco-tuyen-dung-thang-7-nam-2021','2021-08-08 22:39:05','/assets/userfiles/files/tbtd-2.jpg',10,NULL,NULL,NULL),
(3,'DỊ ỨNG VÀ CÁCH PHÒNG TRÁNH !!!','<p>Dị ứng l&agrave; bệnh rất thường gặp trong x&atilde; hội v&agrave; c&oacute; thể xảy ra ở mọi lứa tuổi.<br />\r\nVậy dị ứng l&agrave; g&igrave;?<br />\r\n&ndash; Dị ứng ch&iacute;nh l&agrave; phản ứng qu&aacute; mức của hệ thống miễn dịch cơ thể đối với c&aacute;c t&aacute;c nh&acirc;n m&agrave; n&oacute; xem l&agrave; c&oacute; hại đối với cơ thể.</p>\r\n\r\n<p>C&aacute;c dấu hiệu v&agrave; triệu chứng của dị ứng:<br />\r\n&ndash; Dị ứng đường h&ocirc; hấp: vi&ecirc;m mũi dị ứng, ho dị ứng, hen phế quản.<br />\r\n&ndash; Dị ứng đường ti&ecirc;u h&oacute;a: n&ocirc;n, đau bụng v&agrave; ti&ecirc;u chảy; đặc biệt ở trẻ nhỏ.<br />\r\n&ndash; Dị ứng ngo&agrave;i da: ngứa, sẩn ngứa từ đỏ da nhẹ cho đến nổi mề đay, ph&aacute;t ban ngo&agrave;i da</p>\r\n\r\n<p>L&agrave;m thế n&agrave;o khi bị dị ứng?</p>\r\n\r\n<p>* Nếu biết r&otilde; nguy&ecirc;n nh&acirc;n g&acirc;y dị ứng:</p>\r\n\r\n<p>&ndash; H&atilde;y tr&aacute;nh xa nguy&ecirc;n nh&acirc;n n&agrave;y c&agrave;ng nhiều c&agrave;ng tốt. Tr&aacute;nh tiếp x&uacute;c với nguy&ecirc;n nh&acirc;n g&acirc;y dị ứng l&agrave; nguy&ecirc;n tắc ph&ograve;ng ngừa chủ yếu.</p>\r\n\r\n<p>* Để truy t&igrave;m nguy&ecirc;n nh&acirc;n g&acirc;y dị ứng:</p>\r\n\r\n<p>Bạn n&ecirc;n lưu &yacute; v&agrave; ghi nhớ những sự kiện, những chi tiết xảy ra trong m&ocirc;i trường xung quanh bạn v&agrave;o thời điểm bạn bị dị ứng, nhất l&agrave; t&igrave;nh trạng dị ứng lặp đi lặp lại nhiều lần, hay vi&ecirc;m da, thường xuất hiện ở nhiều v&ugrave;ng tr&ecirc;n da kể cả ở mắt (vi&ecirc;m kết mạc dị ứng)</p>\r\n\r\n<p>&ndash; T&igrave;nh trạng dị ứng nghi&ecirc;m trọng c&oacute; thể g&acirc;y ra sốc phản vệ, thường do dị<br />\r\nứng với thuốc hay do c&ocirc;n tr&ugrave;ng đốt, c&oacute; đặc trưng l&agrave;: k&iacute;ch động, kh&oacute; thở hoặc thở kh&ograve; kh&egrave;, nhịp tim nhanh, đổ mồ h&ocirc;i lạnh, da ẩm, ph&aacute;t ban ngo&agrave;i da, đau thắt bụng, ch&oacute;ng mặt, buồn n&ocirc;n v&agrave; n&ocirc;n, trụy mạch, co giật v&agrave; tử vong nếu kh&ocirc;ng được điều trị.</p>\r\n\r\n<p>* Nếu t&igrave;nh trạng dị ứng l&agrave; do thuốc g&acirc;y ra:</p>\r\n\r\n<p>&ndash; H&atilde;y ngưng sử dụng thuốc ng&agrave;y nay lập tức cho đến khi c&oacute; sự hướng dẫn của b&aacute; sĩ. N&ecirc;n b&aacute;o cho b&aacute;c sĩ về t&igrave;nh trạng dị ứng với c&aacute;c thuốc đ&atilde; biết khi đi kh&aacute;m bệnh.</p>\r\n\r\n<p>* Nếu t&igrave;nh trạng ngứa do dị ứng xảy ra nghi&ecirc;m trọng:</p>\r\n\r\n<p>&ndash; H&atilde;y d&ugrave;ng c&aacute;c chế phẩm chống ngứa kh&aacute;c. G&atilde;i nhiều c&oacute; thể l&agrave;m nặng th&ecirc;m triệu chứng.</p>\r\n\r\n<p>* Lu&ocirc;n giữ g&igrave;n sạch sẽ nh&agrave; cửa v&agrave; tr&aacute;nh c&aacute;c chất g&acirc;y dị ứng.<br />\r\nC&aacute;c dấu hiệu b&aacute;o động:</p>\r\n\r\n<p>H&atilde;y tham khảo &yacute; kiến b&aacute;c sĩ nếu:</p>\r\n\r\n<p>&ndash; Cơn hen phế quản trầm trọng th&ecirc;m v&agrave; kh&oacute; thở nghi&ecirc;m trọng.</p>\r\n\r\n<p>&ndash; Ti&ecirc;u chảy nặng c&oacute; thể k&egrave;m theo mất qu&aacute; nhiều dịch v&agrave; điện giải</p>\r\n\r\n<p>&ndash; C&oacute; cảm gi&aacute;c kh&oacute; chịu v&agrave; bứt rứt.</p>\r\n\r\n<p>Những nguy&ecirc;n nh&acirc;n g&acirc;y dị ứng thường gặp nhất:</p>\r\n\r\n<p>&ndash; Phấn hoa hay b&ocirc;ng cỏ , b&agrave;o tử nấm mốc, bụi nh&agrave;&hellip;</p>\r\n\r\n<p>&ndash; L&ocirc;ng c&ocirc;n tr&ugrave;ng v&agrave; s&uacute;c vật nu&ocirc;i</p>\r\n\r\n<p>&ndash; C&ocirc;n tr&ugrave;ng cắn hoặc đốt</p>\r\n\r\n<p>&ndash; Thức ăn: thủy hải sản, trứng, sữa, &hellip;</p>\r\n\r\n<p>&ndash; &Aacute;p lực, n&oacute;ng, lạnh, &aacute;nh s&aacute;ng mặt trời.</p>\r\n','','','','','di-ung-va-cach-phong-tranh-','2021-08-09 02:56:32','/assets/userfiles/files/dung-thuoc_1_0-190x125.jpg',10,NULL,NULL,NULL),
(4,'NHỮNG TIẾN BỘ TRONG ĐIỀU TRỊ RỐI LOẠN CƯƠNG','<p>Trong những năm gần đ&acirc;y, c&ugrave;ng với đ&agrave; ph&aacute;t triển của nền kinh x&atilde; hội, đời sống của người Việt Nam đ&atilde; được n&acirc;ng l&ecirc;n một bước, tuổi thọ ng&agrave;y cao, chất lượng cuộc sống ng&agrave;y c&agrave;ng được ch&uacute; trọng, những vấn đề ri&ecirc;ng tư của nam giới kh&ocirc;ng c&ograve;n bị bỏ qu&ecirc;n như trước nữa; trong đ&oacute; RỐI LOẠN CƯƠNG kh&ocirc;ng c&ograve;n l&agrave; chuyện kh&oacute; n&oacute;i v&agrave; kh&oacute; điều trị.</p>\r\n\r\n<p>Rối loạn cương dương l&agrave; một danh từ được c&aacute;c nh&agrave; y học Nam khoa sử dụng từ năm 1992 với t&ecirc;n khoa học Erectile Dysfunction (ED), ở nước ta c&aacute;c nh&agrave; y học cổ truyền thường gọi l&agrave; liệt dương hay bất lực v&agrave; trong d&acirc;n gian gọi l&agrave; yếu sinh l&yacute;. Bất lực thực ra l&agrave; c&aacute;ch gọi t&iacute;nh chất th&agrave;nh kiến, c&ograve;n rối loạn cương dương c&oacute; vẻ nhẹ nh&agrave;ng v&agrave; khoa học hơn, người bệnh dễ chấp nhận v&agrave; th&ocirc;ng cảm hơn. Thực chất đ&acirc;y kh&ocirc;ng phải l&agrave; vấn đề mới lạ m&agrave; n&oacute; đ&atilde; được đề cập từ rất xa xưa, v&agrave;o thế kỷ thứ X danh y Ba tư Avicenna đ&atilde; lưu &yacute; đến bệnh tiểu đường c&oacute; thể g&acirc;y ra bất lực, s&aacute;ch cổ Trung Hoa cũng ghi lại c&oacute; nhiều loại thuốc c&oacute; thể g&acirc;y k&iacute;ch th&iacute;ch t&igrave;nh dục, bất lực do t&acirc;m l&yacute; được Freud m&ocirc; tả năm 1912, năm 1926 b&aacute;c sỹ Hughes ở Atlanta, Georgia đ&atilde; m&ocirc; tả tới 10 nguy cơ như mộng tinh, xuất tinh qu&aacute; độ, bệnh lậu, hẹp bao quy đầu, thủ d&acirc;m , lo &acirc;u, trầm cảm, bệnh của tinh ho&agrave;n &hellip;đều c&oacute; thể đưa đến rối loạn cương dương.</p>\r\n\r\n<p>Ng&agrave;y nay, theo ước t&iacute;nh của c&aacute;c nh&agrave; nghi&ecirc;n cứu đến năm 2005 thế giới c&oacute; khoảng tr&ecirc;n 300 triệu nam giới mắc bệnh kh&oacute; n&oacute;i n&agrave;y, n&oacute; kh&ocirc;ng phải l&agrave; bệnh cấp t&iacute;nh, kh&ocirc;ng g&acirc;y tử vong nhưng mang t&iacute;nh x&atilde; hội s&acirc;u sắc, ảnh hưởng rất lớn đến hạnh ph&uacute;c gia đ&igrave;nh v&agrave; sản xuất trong x&atilde; hội, người rối loạn cương dương thường mặc cảm, thiếu tự tin.</p>\r\n\r\n<p>A. Nhắc lại sinh l&yacute; cương:</p>\r\n\r\n<p>Xuất ph&aacute;t từ t&acirc;m l&yacute; hướng dục tr&ecirc;n cơ sở Hormon sinh dục nam &ndash; kết hợp c&aacute;c gi&aacute;c quan, sẽ k&iacute;ch th&iacute;ch hưng phấn vỏ n&atilde;o rồi đi xuống trung t&acirc;m cương ở cột b&ecirc;n của tủy sống T 12-L1, đi theo nh&aacute;nh ly t&acirc;m thần kinh giao cảm trước hạch ở S2 &ndash; S4 khớp v&agrave;o đ&aacute;m rối thần kinh t&uacute;i tinh v&agrave; Tiền liệt tuyến để k&iacute;ch th&iacute;ch c&aacute;c sợi sau hạch đi tới c&aacute;c mạch m&aacute;u ở vật hang. Tại đ&oacute;, Nitric Oxid (NO) được giải ph&oacute;ng nhiều từ nội mạc mạch v&agrave;o tế b&agrave;o cơ trơn vật hang, để k&iacute;ch hoạt Enzym Guanylate cyclase n&ecirc;n l&agrave;m tăng tổng hợp Guanosine Monophosphate v&ograve;ng (GMPc) l&agrave; chất g&acirc;y d&atilde;n cơ trơn vật hang, l&agrave;m cương dương vật. Để c&acirc;n bằng hiện tượng sinh l&yacute; b&igrave;nh thường, sau qu&aacute; tr&igrave;nh cương l&agrave; qu&aacute; tr&igrave;nh mềm- x&igrave;u trở lại của dương vật. Chu tr&igrave;nh được tiếp tục của một chuỗi chuyển ho&aacute;- ho&aacute; sinh tiếp tục: Chất Guanosine monophosphat v&ograve;ng (GMPc) bị thuỷ ph&acirc;n bởi enzyme phosphodiesterase, l&agrave; chất hiện diện trong nhiều tổ chức kh&aacute;c nhau, đặc biệt ở vật hang, chiếm ưu thế l&agrave; enzyme phosphodiesterase type 5 (PDE 5), l&agrave;m mất t&aacute;c dụng d&atilde;n cơ trơn của GMPc khiến cho dương vật trở n&ecirc;n mềm-x&igrave;u trở lại b&igrave;nh thường.</p>\r\n\r\n<p>B.Nguy&ecirc;n Nh&acirc;n rối loạn cương:</p>\r\n\r\n<p>1. Nguy&ecirc;n nh&acirc;n do Nội tiết:</p>\r\n\r\n<p>Nội tiết sinh dục nam giữ vai tr&ograve; hết sức quan trọng trong hoạt động t&igrave;nh dục , khi lượng nội tiết giảm dần th&igrave; hoạt động sinh dục cũng giảm theo , nội tiết sinh dục gi&uacute;p cho sự ph&aacute;t triển của dương vật v&agrave; nam t&iacute;nh l&uacute;c trưởng th&agrave;nh, k&iacute;ch th&iacute;ch t&igrave;nh dục ở v&otilde; n&atilde;o, gi&uacute;p cho sự ham muốn v&agrave; cứng dương vật. Khi lượng Testosteron huyết tương giảm dưới 2mg/ml (b&igrave;nh thường l&agrave; 6mg/ml) th&igrave; dẫn đến rối loạn cương dương , cụ thể l&agrave; ở tuổi gi&agrave;. Khi tăng prolactin do bướu ở tuyến y&ecirc;n &gt;150ng/ml sẽ dẫn đến hạ thấp Testosteron sẽ l&agrave;m giảm ham th&iacute;ch t&igrave;nh dục, kh&oacute; cương đ&ocirc;i khi mất hẳn phản xạ ph&oacute;ng tinh.</p>\r\n\r\n<p>2. Nguy&ecirc;n nh&acirc;n do Mạch m&aacute;u:</p>\r\n\r\n<p>Mạch m&aacute;u giữ vai tr&ograve; hết sức quan trọng trong cơ chế cương , v&igrave; cương dương vật l&agrave; kết quả của sự dồn m&aacute;u v&agrave;o thể hang v&agrave; k&igrave;m giữ m&aacute;u để duy tr&igrave; độ cứng của dương vật cho tới khi đạt cực kho&aacute;i v&agrave; ph&oacute;ng tinh.Khi bị bất thường về mạch m&aacute;u như xơ vữa mạch m&aacute;u , bệnh l&yacute; mạch m&aacute;u đều ảnh hưởng đến cương v&igrave; m&aacute;u kh&ocirc;ng đổ dồn v&agrave;o thể hang .</p>\r\n\r\n<p>3. Nguy&ecirc;n nh&acirc;n do Thần kinh:</p>\r\n\r\n<p>Thần kinh giữ vai tr&ograve; t&aacute;c động mạnh mẽ,h&agrave;i ho&agrave; trong cơ chế cương đi từ trung t&acirc;m tuỷ sống giao cảm ở ngực-lưng(D12-L2)trung t&acirc;m ph&oacute; giao cảm thi&ecirc;ng (S2-S4)với trung t&acirc;m hướng dục ở v&otilde; n&atilde;o.</p>\r\n\r\n<p>Bệnh l&yacute; ở đu&ocirc;i ngựa tại tuỷ sống thi&ecirc;ng sẽ l&agrave;m mất khả năng cương k&egrave;m theo rối loạn đi tiểu. Trong chấn thương tuỷ sống giai đoạn đầu ,sốc tuỷ l&agrave;m mất hẳn sắc dục, tổn thương ở tuỷ sống cổ hay ngực sẽ mất kho&aacute;i cảm , nhưng phản xạ ph&oacute;ng tinh vẫn c&ograve;n , tổn thương tuỷ sống lưng L2 sẽ l&agrave;m rối loạn phản xạ ph&oacute;ng tinh. Tổn thương d&acirc;y thần kinh thẹn trong, thần kinh cương sẽ dẫn đến bất lực c&oacute; thể tạm thời hay vĩnh viễn.</p>\r\n\r\n<p>4.Nguy&ecirc;n nh&acirc;n dương vật bất thường:</p>\r\n\r\n<p>Do dị tật bẩm sinh , g&atilde;y dương vật can thiệp kh&ocirc;ng kịp thời , xơ ho&aacute; thể hang .</p>\r\n\r\n<p>5. Nguy&ecirc;n nh&acirc;n do t&acirc;m l&yacute;-Stress:</p>\r\n\r\n<p>Do lo sợ, trầm cảm , buồn thảm , bất ho&agrave; giữa vợ-chồng.bất m&atilde;n trong đời sống như mất việc , lao động qu&aacute; mức&hellip;</p>\r\n\r\n<p>6. Nguy&ecirc;n nh&acirc;n do d&ugrave;ng thuốc :<br />\r\n-Nh&oacute;m kh&aacute;ng Histamin như Cimetidin , Hydroxyzin , Diphenhydramin&hellip;</p>\r\n\r\n<p>-Nh&oacute;m thuốc trị cao huyết &aacute;p thường gặp nhiều trong nh&oacute;m thuốc lợi tiểu, nh&oacute;m ức chế beta Blockers,</p>\r\n\r\n<p>-Thuốc kh&aacute;ng Acetylcholin</p>\r\n\r\n<p>-Thuốc điều trị t&acirc;m thần : Haloperidol, Clopromazi,Thioridazin&hellip;</p>\r\n\r\n<p>-Thuốc an thần :Diazepam&hellip;</p>\r\n\r\n<p>7. Nghiện rượu<br />\r\nNghiện rượu l&agrave;m rối loạn cương dương do vi&ecirc;m đa d&acirc;y thần kinh ngoại bi&ecirc;n , vi&ecirc;m tuỷ sống, rối loạn chức năng gan, giảm nồng độ testosteron&hellip;</p>\r\n\r\n<p>8. Rối loạn cương trong bệnh tiểu đường:</p>\r\n\r\n<p>Bệnh tiểu đường ng&agrave;y nay đ&atilde; trở th&agrave;nh những vấn đề y khoa phổ biến, với t&iacute;nh chất của bệnh điều trị k&eacute;o d&agrave;i, thậm ch&iacute; đến hết cuộc đời c&ograve;n lại, v&igrave; vậy t&aacute;c động về t&acirc;m l&yacute; cũng như những biến chứng để lại hết sức nặng nề, trong đ&oacute; rối loạn cương l&agrave; phổ biến.</p>\r\n\r\n<p>Qua nhiều c&ocirc;ng tr&igrave;nh nghi&ecirc;n cứu, người ta thấy rằng tỷ lệ rối loạn cương chiếm một tỷ lệ cao, theo Gs.Ng&ocirc; Gia Hy tỷ lệ v&agrave;o khoảng 50%, tuy nhi&ecirc;n theo một số t&aacute;c giả kh&aacute;c tỷ lệ c&oacute; thể cao hơn, l&ecirc;n đến 75% . Để hiểu cốt l&otilde;i của vấn đề ta cần hiểu lại những vấn đề cơ chế tổn thương tr&ecirc;n mạch m&aacute;u v&agrave; thần kinh trong bệnh tiểu đường:</p>\r\n\r\n<p>-Tr&ecirc;n mạch m&aacute;u nhỏ:</p>\r\n\r\n<p>Sang thương thường tổn thương ở mạch m&aacute;u c&oacute; k&iacute;ch thước dưới 0,3mm, c&oacute; t&iacute;nh chất lan toả v&agrave; đặc hiệu. Anh hưởng l&ecirc;n nhiều cơ quan như bệnh l&yacute; v&otilde;ng mạc , bệnh l&yacute; cầu thận, bệnh l&yacute; thần kinh v&agrave; trong đ&oacute; c&oacute; cơ quan sinh dục. Cơ chế bệnh sinh của sang thương mạch m&aacute;u nhỏ hiện nay chưa r&otilde;, nhưng người ta thấy rằng c&oacute; sự rối loạn huyết động học, tăng hoạt t&iacute;nh của tiểu cầu, tăng tổng hợp Thromboxan A2 l&agrave; chất g&acirc;y co mạch v&agrave; kết d&iacute;nh tiểu cầu, tạo điều kiện cho th&agrave;nh lập huyết khối. Ngo&agrave;i ra c&ograve;n tăng t&iacute;ch tụ Sorbitol v&agrave; fructoz ở c&aacute;c m&ocirc;, sự giảm nồng độ Myonositol cũng l&agrave;m cho sang thương mạch m&aacute;u th&ecirc;m trầm trọng. Sang thương mạch m&aacute;u nhỏ được m&ocirc; tả qua m&ocirc; học l&agrave; sự dầy l&ecirc;n của m&agrave;ng đ&aacute;y mao mạch v&agrave; lớp nội mạc của c&aacute;c tiểu động mạch, nặng hơn nư&atilde; l&agrave; biến mất của c&aacute;c tế b&agrave;o chu b&igrave; bao quanh v&agrave; n&acirc;ng đỡ mao mạch, c&aacute;c sang thương m&ocirc; học n&agrave;y xuất hiện rất sớm, nhưng c&aacute;c biểu hiện l&acirc;m s&agrave;ng thường xuất hiện khoảng 10 đến 15 năm sau khi bệnh khởi ph&aacute;t.</p>\r\n\r\n<p>Nitric Oxide v&agrave; PGI 1 giữ vai tr&ograve; quan trọng trong cơ chế cương, m&agrave; 2 yếu tố tr&ecirc;n do nội mạc sinh ra , do lượng Nitric Oxide thiếu n&ecirc;n &aacute;p lực m&aacute;u trong thể hang kh&ocirc;ng tăng l&ecirc;n đủ mạnh để đ&oacute;ng c&aacute;c van tĩnh mạch dương vật l&agrave;m cho m&aacute;u tho&aacute;t ra nhanh, khiến cho kh&ocirc;ng duy tr&igrave; sự cương cứng. Với những yếu tố tr&ecirc;n , c&oacute; thể kết luận l&agrave; nội mạc giữ vai tr&ograve; quan trọng trong quan hệ rối loạn cương do đ&aacute;i th&aacute;o đường.</p>\r\n\r\n<p>-Tr&ecirc;n thần kinh ngoại vi:<br />\r\nĐ&aacute;i th&aacute;o đường ảnh hưởng l&ecirc;n mọi cấu tr&uacute;c của thần kinh , trừ n&atilde;o bộ. Đ&acirc;y l&agrave; biến chứng &iacute;t g&acirc;y tử vong nhưng gặp rất nhiều kh&oacute; khăn trong sinh hoạt v&agrave; điều trị, trong đ&oacute; c&oacute; sinh hoạt t&igrave;nh dục.</p>\r\n\r\n<p>Trong qu&aacute; tr&igrave;nh ph&aacute;t triển của bệnh , tiểu đường g&acirc;y tổn thương thần kinh trong đ&oacute; c&oacute; thần kinh hệ cơ quan sinh dục, l&agrave;m cho mối li&ecirc;n hệ thần kinh với nhau kh&ocirc;ng c&ograve;n như trước nữa, v&igrave; vậy trong &yacute; nghĩ cảm x&uacute;c c&oacute; ham muốn t&igrave;nh dục th&igrave; th&ocirc;ng tin đ&oacute; cũng chậm dẫn truyền đến dương vật, do đ&oacute; dương vật kh&ocirc;ng đ&aacute;p ứng &ldquo; tr&ecirc;n bảo dưới kh&ocirc;ng nghe&rdquo;.</p>\r\n\r\n<p>Bệnh l&yacute; thần kinh v&agrave; mạch m&aacute;u trong tiểu đường l&agrave; do th&agrave;nh mạch của mạch m&aacute;u nhỏ nu&ocirc;i dưỡng thần kinh bị tổn thương , kể cả mạch m&aacute;u cung cấp m&aacute;u cho dương vật. Sự lưu th&ocirc;ng m&aacute;u hoạt động k&eacute;m dẫn đến hậu quả l&agrave; kh&ocirc;ng cương cứng hay sự duy tr&igrave; cương cứng kh&ocirc;ng ho&agrave;n to&agrave;n.</p>\r\n\r\n<p>Nguy&ecirc;n nh&acirc;n ch&iacute;nh g&acirc;y bất lực l&agrave; do rối loạn hệ thần kinh ngoại bi&ecirc;n chủ yếu l&agrave; hệ thần kinh thực vật đưa dến rối loạn tuần ho&agrave;n .</p>\r\n\r\n<p>*Bệnh b&eacute;o ph&igrave; do mở qu&aacute; nhiều trong l&ograve;ng mạch m&aacute;u cũng g&acirc;y cản trở đưa m&aacute;u v&agrave;o thể hang .</p>\r\n\r\n<p>C.Điều Trị rối loạn cương dương:</p>\r\n\r\n<p>Với những tiến bộ của khoa học- y học ng&agrave;y nay, việc điều trị rối loạn cương dương kh&ocirc;ng c&ograve;n l&agrave; vấn đề kh&oacute; khăn nữa m&agrave; c&agrave;ng đi v&agrave;o hiệu quả v&agrave; cởi mở hơn, tuỳ theo t&iacute;nh chất của bệnh m&agrave; c&oacute; phương ph&aacute;p điều trị hợp l&yacute; để cho kết quả tốt nhất.</p>\r\n\r\n<p>1. Điều trị với phương ph&aacute;p t&acirc;m l&yacute; v&agrave; nhận thức:</p>\r\n\r\n<p>* Việc nhận thức về kiến thức cơ bản trong sinh hoạt t&igrave;nh dục l&agrave; việc l&agrave;m hết sức cần thiết, v&igrave; c&oacute; những hiểu biết cơ bản mới dễ d&agrave;ng khắc phục được t&igrave;nh trạng hiện tại, c&oacute; khi chỉ cần c&oacute; được nhận thức đ&oacute; th&igrave; sẽ khắc phục được t&igrave;nh trạng tr&ecirc;n. V&iacute; dụ: tr&aacute;nh t&igrave;nh trạng ta ăn cơm h&agrave;ng ng&agrave;y m&agrave; kh&ocirc;ng biết cơm đ&oacute; nấu gạo g&igrave; ( gạo l&uacute;a thơm N&agrave;ng Hương hay Chợ Đ&agrave;o) .</p>\r\n\r\n<p>* Vai tr&ograve; của người vợ l&agrave; v&ocirc; c&ugrave;ng quan trọng, cần t&acirc;m sự nhẹ nh&agrave;ng với những cảm x&uacute;c của m&igrave;nh, lu&ocirc;n s&aacute;t c&aacute;nh b&ecirc;n chồng để điều trị.</p>\r\n\r\n<p>-Giữ th&aacute;i độ v&agrave; tinh thần lạc quan, kh&ocirc;ng n&ecirc;n c&oacute; th&aacute;i độ tr&aacute;ch m&oacute;c, nghi kỵ hay ghen tu&ocirc;ng.</p>\r\n\r\n<p>-Tr&aacute;nh tạo &aacute;p lực cho chồng về chuyện t&igrave;nh dục, n&ecirc;n &aacute;p dụng những phương ph&aacute;p kh&aacute;c để hai b&ecirc;n c&ugrave;ng h&agrave;i l&ograve;ng, như ở phương T&acirc;y c&oacute; c&acirc;u &ldquo; Nhất lưỡi , nh&igrave; r&acirc;u , tam tay , tứ n&oacute;&rdquo;.-T&igrave;m hiểu v&agrave; n&acirc;ng cao kiến thức về c&aacute;ch chữa trị để vợ- chồng c&ugrave;ng thống nhất phương ph&aacute;p điều trị sao cho ph&ugrave; hợp với ho&agrave;n cảnh kinh tế , sinh hoạt , l&agrave;m việc của gia đ&igrave;nh.</p>\r\n\r\n<p>-Khuy&ecirc;n chồng bỏ rượu bia , thuốc l&aacute; v&agrave; tạo điều kiện gi&uacute;p đỡ chồng chọn một trong ba c&aacute;i l&ocirc;ng, như l&ocirc;ng d&agrave;i , l&ocirc;ng ngắn , kh&ocirc;ng l&ocirc;ng m&agrave; chơi. L&ocirc;ng d&agrave;i l&agrave; cầu l&ocirc;ng, l&ocirc;ng ngắn như Tennis, kh&ocirc;ng l&ocirc;ng như b&oacute;ng b&agrave;n &ndash; b&oacute;ng chuyền- b&oacute;ng đ&aacute;,ti&ecirc;u chuẩn vận động phải đổ mồ h&ocirc;i hay 30 ph&uacute;t vận động h&agrave;ng ng&agrave;y, theo Nguyệt san &ldquo;Khoa Tiết Niệu&rdquo;của Hoa Kỳ mới nhất nghi&ecirc;n cứu cho thấy người thiếu vận động cũng dẫn đến rối loạn cương dương , kết quả nghi&ecirc;n cứu 9 năm tr&ecirc;n 600 nam giới , đ&atilde; ph&aacute;t hiện người c&oacute; th&oacute;i quen vận động h&agrave;ng ng&agrave;y tr&ecirc;n 30 ph&uacute;t , năng lượng ti&ecirc;u hao tối thiểu 200 calo th&igrave; &iacute;t c&oacute; cơ hội bị rối loạn cương dương hơn những người &iacute;t vận động .</p>\r\n\r\n<p>&ndash; Vợ chồng cần được b&aacute;c sỹ chuy&ecirc;n khoa tư vấn v&agrave; điều trị với tinh thần cởi mở, kh&ocirc;ng dấu d&iacute;m, c&ugrave;ng thảo luận để đưa đến phương ph&aacute;p điều trị tốt nhất.</p>\r\n\r\n<p>-Tr&aacute;nh quan niệm sai lầm cho rối loạn cương dương l&agrave; một biểu hiện của bệnh thận kh&ocirc;ng điều trị được, đứng về mặt đ&ocirc;ng y th&igrave; rối loạn cương dương l&agrave; một biểu hiện của bệnh thận nhưng kh&ocirc;ng n&ecirc;n nhầm lẫn với thận &ldquo;Đ&ocirc;ng y&rdquo; với thận &ldquo;T&acirc;y y&rdquo;. Theo quan niệm của đ&ocirc;ng y l&agrave; bệnh li&ecirc;n quan đến bệnh thận như sưng ph&ugrave;- yếu sinh l&yacute;- đau lưng c&ograve;n t&acirc;y y th&igrave; thận c&oacute; 2 quả thận nằm ở sau lưng trong hố thận ở 2 b&ecirc;n thắt lưng, cạnh cột sống, s&aacute;t tr&ecirc;n cao, dưới phổi, c&oacute; nhiệm vụ ch&iacute;nh l&agrave; lọc m&aacute;u, b&agrave;i tiết nước tiểu để loại c&aacute;c độc chất trong qu&aacute; tr&igrave;nh chuyển h&oacute;a của cơ thể ra ngo&agrave;i, nhiệm vụ thứ hai l&agrave; thận tiết ra chất Hematoproteine để k&iacute;ch th&iacute;ch xương tạo hồng cầu v&agrave; chất renine angiotensine để gi&uacute;p điều h&ograve;a huyết &aacute;p, cũng như nhiều vi chất kh&aacute;c. Theo t&acirc;y y, đau lưng &iacute;t khi do thận g&acirc;y ra, đa số trường hợp đau lưng l&agrave; do bệnh của cột sống, cơ lưng,rễ thần kinh cột sống, c&ograve;n sưng ph&ugrave; c&oacute; thể li&ecirc;n quan đến c&aacute;c bệnh gan, tim, suy dinh dưỡng nặng. Ri&ecirc;ng rối loạn cương dương đa số trường hợp kh&ocirc;ng do thận g&acirc;y ra. Bệnh nh&acirc;n sỏi thận th&igrave; người hay đau lưng, mệt mỏi, ch&aacute;n đủ thứ chứ kh&ocirc;ng ri&ecirc;ng về chuyện t&igrave;nh dục. Tương tự người bệnh suy thận th&igrave; cả cơ thể đều mệt mỏi n&ecirc;n rối loạn cương dương l&agrave; điều kh&ocirc;ng thể tr&aacute;nh khỏi.</p>\r\n\r\n<p>2. Điều trị rối loạn cương dương do thuốc:</p>\r\n\r\n<p>Từ nhiều năm con người đ&atilde; khổ c&ocirc;ng t&igrave;m kiếm b&agrave;i thuốc c&ocirc;ng hiệu để khắc phục vấn nạn n&agrave;y. Cổ nh&acirc;n ta c&oacute; những b&agrave;i thuốc như : Minh mạng thang, Nhất dạ lục giao, Tam tinh hải cẩu&hellip;nhưng mọi cố gắng đều đem lại &iacute;t kết quả . May mắn thay trong những năm gần đ&acirc;y, với tiến bộ của y học hiện đại, kh&oacute; khăn n&agrave;y ở nam giới đ&atilde; được l&agrave;m s&aacute;ng tỏ, lần lượt nhiều phương ph&aacute;p điều trị v&agrave; nhiều thứ thuốc ra đời.</p>\r\n\r\n<p>a.Yohimbin:</p>\r\n\r\n<p>L&agrave; thuốc ức chế alpha cổ xưa nhất, nhưng cho đến nay vẫn được d&ugrave;ng, l&agrave; một indol-alcaloid c&oacute; t&iacute;nh chất l&agrave;m gi&atilde;n cơ hang qua cơ chế thần kinh trung ương v&agrave; một phần ngoại bi&ecirc;n.</p>\r\n\r\n<p>Liều thường d&ugrave;ng l&agrave; 15-40 mg/ng&agrave;y.</p>\r\n\r\n<p>T&aacute;c dụng phụ thường l&agrave;m tim đập nhanh, nhức đầu ăn kh&oacute; ti&ecirc;u, huyết &aacute;p cao.</p>\r\n','','','','','nhung-tien-bo-trong-dieu-tri-roi-loan-cuong','2021-08-09 02:48:18','/assets/images/placeholder.png',10,NULL,NULL,NULL),
(5,'BỆNH LOÃNG XƯƠNG – CÁCH THỨC PHÒNG NGỪA VÀ ĐIỀU TRỊ HIỆU QUẢ','<p>BẠN Đ&Atilde; HIỂU Đ&Uacute;NG VỀ BỆNH LO&Atilde;NG XƯƠNG?<br />\r\nLo&atilde;ng xương l&agrave; một bệnh l&yacute; được đặc trưng bởi sự giảm khối lượng xương (giảm mật độ chất kho&aacute;ng của xương, chủ yếu l&agrave; canxi), l&agrave;m cho xương trở n&ecirc;n gi&ograve;n, xốp v&agrave; dễ g&atilde;y. Tr&ecirc;n bề mặt xương của người bệnh lo&atilde;ng xương sẽ xuất hiện những lỗ thủng li ti giống như miếng bọt biển.<br />\r\nVề cơ chế, lo&atilde;ng xương l&agrave; hậu quả của sự ph&aacute; vỡ c&acirc;n bằng hai qu&aacute; tr&igrave;nh tạo xương v&agrave; hủy xương: qu&aacute; tr&igrave;nh tạo xương giảm trong khi qu&aacute; tr&igrave;nh hủy xương vẫn tiếp diễn b&igrave;nh thường.<br />\r\nĐ&acirc;y l&agrave; kết quả của một số yếu tố, bao gồm: yếu tố di truyền, &iacute;t hoạt động, chế độ ăn kh&ocirc;ng cung cấp đủ canxi v&agrave; chủ yếu nhất l&agrave; do sự giảm mạnh lượng hormones khi lớn tuổi (estrogen ở phụ nữ v&agrave; testosterone ở nam giới).<br />\r\nCh&uacute;ng ta c&oacute; thể v&iacute; bệnh lo&atilde;ng xương như một &ldquo;kẻ th&ugrave; tiềm ẩn&rdquo; do diễn biến k&iacute;n đ&aacute;o trong một thời gian d&agrave;i. Bệnh tiến triển &acirc;m thầm, &iacute;t khi bộc lộ triệu chứng sớm, cho đến khi khối lượng xương giảm nhiều (khoảng tr&ecirc;n 30%) th&igrave; c&aacute;c triệu chứng l&acirc;m s&agrave;ng mới thể hiện r&otilde;. C&aacute;c triệu chứng ch&iacute;nh c&oacute; thể l&agrave;: giảm chiều cao v&agrave; c&acirc;n nặng, đau cột sống lưng hay cổ, đau ch&acirc;n tay &ndash; c&aacute;c khớp, mỏi bại h&ocirc;ng, g&ugrave;, c&ograve;ng&hellip;<br />\r\nLo&atilde;ng xương l&agrave;m giảm chất lượng cuộc sống. Hậu quả l&agrave; tăng nguy cơ g&atilde;y xương (d&ugrave; va chạm nhẹ). G&atilde;y xương c&oacute; thể xảy ra ở bất cứ v&ugrave;ng n&agrave;o, nhưng thường gặp nhất l&agrave; ở c&aacute;c vị tr&iacute;: cột sống, xương đ&ugrave;i, xương h&ocirc;ng, cổ tay&hellip; Người lớn tuổi bị g&atilde;y xương đặc biệt nguy hiểm, do c&oacute; thể để lại di chứng t&agrave;n phế suốt đời, hay mắc phải nhiều bệnh sau g&atilde;y xương như vi&ecirc;m đường h&ocirc; hấp, tiết niệu, ti&ecirc;u h&oacute;a&hellip;.</p>\r\n\r\n<p><a href=\"https://www.pymepharco.com/wp-content/uploads/2013/10/AcitonalXC.jpg\"><img alt=\"AcitonalXC\" src=\"https://www.pymepharco.com/wp-content/uploads/2013/10/AcitonalXC.jpg\" style=\"height:417px; width:640px\" /></a></p>\r\n\r\n<p>BẠN C&Oacute; BIẾT NHỮNG ĐỐI TƯỢNG N&Agrave;O C&Oacute; NGUY CƠ MẮC BỆNH LO&Atilde;NG XƯƠNG?<br />\r\n&ndash; Phụ nữ: Lo&atilde;ng xương thường gặp nhất ở phụ nữ độ tuổi m&atilde;n kinh, v&agrave; nhất l&agrave; sau m&atilde;n kinh (khoảng tr&ecirc;n 50 tuổi).<br />\r\n&ndash; Nam giới: Lo&atilde;ng xương cũng xảy ra ở nam giới, nhưng với tỷ lệ mắc bệnh thấp hơn v&agrave; ở độ tuổi cao hơn (khoảng tr&ecirc;n 60 tuổi).<br />\r\nNguy&ecirc;n nh&acirc;n l&agrave; do: Hormon sinh dục nữ gi&uacute;p tăng hấp thu v&agrave; t&aacute;i hấp thu calci. Ở phụ nữ sau khi m&atilde;n kinh, hormon sinh dục nữ giảm l&agrave;m tăng nhanh tốc độ qu&aacute; tr&igrave;nh chuyển calci từ xương v&agrave;o m&aacute;u. Theo thống k&ecirc;, phụ nữ sau m&atilde;n kinh, h&agrave;ng năm thất tho&aacute;t 2-3% calci. Đ&oacute; l&agrave; nguy&ecirc;n nh&acirc;n ch&iacute;nh dẫn đến t&igrave;nh trạng phụ nữ bị lo&atilde;ng xương nhiều gấp 6 lần nam giới ở c&ugrave;ng độ tuổi. Nam giới cũng c&oacute; nguy cơ lo&atilde;ng xương nhưng chậm hơn do mức độ giảm hormon nam kh&ocirc;ng nhanh như phụ nữ.<br />\r\n&ndash; Ngo&agrave;i ra, lo&atilde;ng xương cũng xảy ra ở những trường hợp như: do c&aacute;c bệnh kh&aacute;c (bệnh tuyến thượng thận, cường gi&aacute;p trạng, suy thận m&atilde;n t&iacute;nh&hellip;) hoặc do d&ugrave;ng corticoid qu&aacute; liều v&agrave; k&eacute;o d&agrave;i.</p>\r\n\r\n<p><a href=\"https://www.pymepharco.com/wp-content/uploads/2013/10/acitonald.jpg\"><img alt=\"Woman With Back Pain\" src=\"https://www.pymepharco.com/wp-content/uploads/2013/10/acitonald.jpg\" style=\"height:480px; width:320px\" /></a><br />\r\nBẠN Đ&Atilde; BIẾT C&Aacute;CH PH&Ograve;NG NGỪA V&Agrave; HẠN CHẾ BỆNH LO&Atilde;NG XƯƠNG?<br />\r\n&ndash; Dinh dưỡng: Cần bổ sung canxi v&agrave; protein (chất đạm) qua thực phẩm. Những thức ăn gi&agrave;u canxi như: sữa v&agrave; c&aacute;c chế phẩm từ sữa, rau củ (s&uacute;p lơ xanh, đậu n&agrave;nh&hellip;) c&aacute;, thịt, t&ocirc;m, cua, đậu hũ &hellip; N&ecirc;n ch&uacute; &yacute; người cao tuổi cần nhiều lượng canxi hơn người trẻ, v&igrave; khả năng hấp thu của họ k&eacute;m hơn. Ngo&agrave;i ra, cần bổ sung th&ecirc;m Vitamin D hay tắm nắng (để tăng tổng hợp vitamin D trong cơ thể) gi&uacute;p canxi được hấp thu tốt hơn.<br />\r\n&ndash; Tập thể dục thường xuy&ecirc;n v&agrave; đều đặn, tuy nhi&ecirc;n cần hoạt động thể lực vừa phải, kh&ocirc;ng n&ecirc;n qu&aacute; gắng sức.<br />\r\n&ndash; X&acirc;y dựng lối sống l&agrave;nh mạnh: bỏ h&uacute;t thuốc l&aacute;, hạn chế rượu v&agrave; c&aacute;c thức uống c&oacute; cafein.<br />\r\n&ndash; Duy tr&igrave; c&acirc;n nặng hợp l&yacute;.<br />\r\n&ndash; B&ecirc;n cạnh đ&oacute;, c&oacute; thể d&ugrave;ng c&aacute;c biện ph&aacute;p hỗ trợ như sử dụng một số thuốc gi&uacute;p hạn chế qu&aacute; tr&igrave;nh hủy xương, bảo vệ sự vững chắc cho cấu tr&uacute;c xương như: Calcitonin, Alendronate, v&agrave; đặc biệt l&agrave; Risedronate (ACITONAL) của C&ocirc;ng ty Cổ phần PYMEPHARCO.</p>\r\n\r\n<p><a href=\"https://www.pymepharco.com/wp-content/uploads/2013/10/AcitonalCB.jpg\"><img alt=\"Man and woman jogging in a meadow\" src=\"https://www.pymepharco.com/wp-content/uploads/2013/10/AcitonalCB.jpg\" style=\"height:683px; width:1024px\" /></a><br />\r\nNHỮNG TH&Ocirc;NG TIN VỀ SẢN PHẨM ACITONAL M&Agrave; BẠN N&Ecirc;N BIẾT</p>\r\n\r\n<p>ACITONAL c&oacute; t&aacute;c động trực tiếp tr&ecirc;n bộ xương, đ&oacute;ng vai tr&ograve; như một t&aacute;c nh&acirc;n chống hủy xương do t&aacute;c động ức chế c&aacute;c hủy cốt b&agrave;o (c&aacute;c tế b&agrave;o tham gia v&agrave;o qu&aacute; tr&igrave;nh hủy xương), nhờ đ&oacute; duy tr&igrave; sự vững chắc trong kết cấu xương v&agrave; hạn chế nguy cơ g&atilde;y xương.</p>\r\n\r\n<p><a href=\"https://www.pymepharco.com/wp-content/uploads/2013/10/Acitonal.jpg\"><img alt=\"Acitonal\" src=\"https://www.pymepharco.com/wp-content/uploads/2013/10/Acitonal.jpg\" style=\"height:479px; width:591px\" /></a><br />\r\nHiện nay tr&ecirc;n thế giới, c&aacute;c chế phẩm Risedronate natri c&oacute; ba h&agrave;m lượng để lựa chọn sử dụng 5mg, 35mg, v&agrave; 150mg. Tại Việt Nam, để ph&ugrave; hợp với th&oacute;i quen sử dụng thuốc v&agrave; thể trạng của người Việt, ACITONAL được C&ocirc;ng ty Cổ phần PYMEPHARCO dụng sản xuất với hai h&agrave;m lượng 5mg v&agrave; 35 mg. Liều d&ugrave;ng th&ocirc;ng thường của ACITONAL của l&agrave;: uống 1 vi&ecirc;n 5mg/ng&agrave;y hoặc 1 vi&ecirc;n 35mg/tuần. Để sử dụng ACITONAL an to&agrave;n v&agrave; hiệu quả nhất, bạn n&ecirc;n đọc kỹ hướng dẫn sử dụng v&agrave; tham khảo &yacute; kiến c&aacute;c b&aacute;c sĩ, dược sĩ trước khi d&ugrave;ng thuốc.<br />\r\nACITONAL cần được sử dụng trong thời gian d&agrave;i. C&aacute;c nghi&ecirc;n cứu l&acirc;m s&agrave;ng cho thấy thuốc cho kết quả tốt v&agrave; an to&agrave;n trong v&ograve;ng 3-5 năm. Sau đ&oacute; n&ecirc;n tạm ngưng d&ugrave;ng thuốc để theo d&otilde;i.<br />\r\nBạn c&oacute; thể t&igrave;m hiểu th&ecirc;m th&ocirc;ng tin về sản phẩm tại:</p>\r\n\r\n<p>C&ocirc;ng ty Cổ phần PYMEPHARCO</p>\r\n\r\n<p>166-170 Nguyễn Huệ, Tuy H&ograve;a, Ph&uacute; Y&ecirc;n<br />\r\nĐT: (057) 3823 228 &ndash; Fax: (057) 3824 717.</p>\r\n\r\n<p>Chi nh&aacute;nh tại Tp.HCM: 44 Đồng Nai, P.15, Q.10<br />\r\nĐT: (08) 3970 8789 &ndash; Fax: (08) 3970 2208.</p>\r\n','','','','','benh-loang-xuong-cach-thuc-phong-ngua-va-dieu-tri-hieu-qua','2021-08-09 02:48:54','/assets/images/placeholder.png',10,NULL,NULL,NULL),
(6,'CHỨC NĂNG GAN VÀ NHỮNG ĐIỀU NÊN BIẾT ĐỂ BẢO VỆ GAN HIỆU QUẢ','<p>Tr&ecirc;n thị trường hiện nay c&oacute; một số sản phẩm c&oacute; t&aacute;c dụng bổ gan &ndash; hỗ trợ chức năng gan, nổi bật trong số đ&oacute; l&agrave; sản phẩm LIVERTON của C&ocirc;ng ty Cổ phần PYMEPHARCO với hoạt chất ch&iacute;nh l&agrave; Silymarin.<br />\r\nTẦM QUAN TRỌNG CỦA CHỨC NĂNG GAN<br />\r\nBạn cần biết, l&aacute; gan l&agrave; một bộ phận v&ocirc; c&ugrave;ng quan trọng cho sự sống. Gan l&agrave; cơ quan lớn nhất v&agrave; cũng l&agrave; cơ quan giữ nhiều chức năng ch&iacute;nh kh&ocirc;ng thể thiếu để bảo đảm cho một cơ thể khỏe mạnh. L&aacute; gan được xem như một nh&agrave; m&aacute;y hoạt động kh&ocirc;ng ngơi nghỉ để gi&uacute;p thanh lọc v&agrave; giải độc cho to&agrave;n bộ cơ thể. Đ&acirc;y c&ograve;n l&agrave; nơi dự trữ năng lượng, tổng hợp c&aacute;c chất sinh h&oacute;a cần thiết (như protein, lipid&hellip;), sản xuất nội tiết tố, tinh chế &ndash; chuyển h&oacute;a c&aacute;c chất v&agrave; tạo ra mật gi&uacute;p cho qu&aacute; tr&igrave;nh ti&ecirc;u h&oacute;a.<br />\r\nCh&iacute;nh v&igrave; giữ những vai tr&ograve; thiết yếu đ&oacute;, gan cần thiết cho sự sống c&ograve;n v&agrave; kh&ocirc;ng c&oacute; c&aacute;ch n&agrave;o để b&ugrave; đắp cho sự vắng mặt của chức năng gan.<br />\r\nHiểu được tầm quan trọng của gan nhưng kh&ocirc;ng phải ai cũng biết c&aacute;ch để bảo vệ l&aacute; gan m&igrave;nh một c&aacute;ch tốt nhất.</p>\r\n\r\n<p>NHỮNG NGUY CƠ TỔN THƯƠNG CHỨC NĂNG GAN<br />\r\nTuy l&agrave; một cơ quan lớn, hoạt động bền bỉ nhưng gan cũng l&agrave; cơ quan dễ bị rối loạn v&agrave; dễ &ldquo;mắc bệnh&rdquo; nhiều nhất do phải l&agrave;m việc qu&aacute; sức khi ta đưa v&agrave;o cơ thể nhiều chất độc hại. Những bữa ăn thiếu sự c&acirc;n bằng với lượng dư lipid (dầu, mỡ&hellip;), những m&oacute;n ăn k&eacute;m vệ sinh, th&oacute;i quen sử dụng nhiều rượu, bia, c&agrave; ph&ecirc;, thuốc l&aacute;&hellip;, lao động qu&aacute; sức, việc sử dụng c&aacute;c thuốc như thuốc kh&aacute;ng lao, kh&aacute;ng virus, qu&aacute; liều paracetamol&hellip; hay những c&ocirc;ng việc phải thường xuy&ecirc;n tiếp x&uacute;c với h&oacute;a chất độc hại đều l&agrave; những yếu tố nguy cơ đe dọa trực tiếp đến sức khỏe của l&aacute; gan, g&acirc;y suy giảm chức năng gan.<br />\r\nKhi bị tổn thương, gan kh&ocirc;ng c&ograve;n khả năng lọc v&agrave; thải chất độc trong m&aacute;u g&acirc;y t&iacute;ch tụ c&aacute;c chất độc, giảm sức đề kh&aacute;ng của cơ thể, đồng thời sẽ k&eacute;o theo hệ quả ảnh hưởng đến một loạt c&aacute;c hoạt động sống trong cơ thể l&agrave;m suy giảm chất lượng cuộc sống.<br />\r\nNếu kh&ocirc;ng biết c&aacute;ch bảo vệ, những căn bệnh m&agrave; l&aacute; gan bạn sẽ mắc phải c&oacute; thể kể đến: rối loạn chức năng gan, vi&ecirc;m gan, suy gan, gan nhiễm mỡ, nhiễm si&ecirc;u vi hay những căn bệnh phức tạp v&agrave; rất nguy hiểm như xơ gan, ung thư gan&hellip;<br />\r\nNHỮNG BIỂU HIỆN KHI CHỨC NĂNG GAN SUY GIẢM<br />\r\nC&aacute;c biểu hiện thường gặp như: mệt mỏi, ch&aacute;n ăn, ăn kh&ocirc;ng ti&ecirc;u (đặc biệt l&agrave; c&aacute;c thức ăn c&oacute; nhiều dầu mỡ), đau hạ sườn phải, ti&ecirc;u chảy&hellip;hay những biểu hiện ra b&ecirc;n ngo&agrave;i như: v&agrave;ng da &ndash; sạm da, nổi mề đay, mẩn ngứa, mụn nhọt&hellip;Khi chức năng gan suy giảm, c&aacute;c hoạt động sống trong cơ thể bị rối loạn, người bệnh sẽ gầy yếu, suy nhược v&agrave; nếu trong t&igrave;nh trạng ngộ độc do chất độc t&iacute;ch tụ nhiều c&oacute; thể sẽ dẫn đến h&ocirc;n m&ecirc;.</p>\r\n\r\n<p>L&Agrave;M THẾ N&Agrave;O ĐỂ BẢO VỆ CHỨC NĂNG GAN TỐT NHẤT<br />\r\nĐể bảo vệ l&aacute; gan của bạn, c&aacute;ch tốt nhất l&agrave; phải biết duy tr&igrave; một lối sống l&agrave;nh mạnh, ăn uống điều độ, hạn chế c&aacute;c m&oacute;n ăn nhiều dầu mỡ, kh&ocirc;ng d&ugrave;ng nhiều rượu bia, c&agrave; ph&ecirc;, thuốc l&aacute;&hellip;tăng cường vận động thể dục &ndash; thể thao, kh&ocirc;ng n&ecirc;n lao động qu&aacute; sức, đồng thời thường xuy&ecirc;n bổ sung dinh dưỡng cho cơ thể với c&aacute;c vitamin nh&oacute;m B, C.<br />\r\nB&ecirc;n cạnh đ&oacute;, bạn c&ograve;n c&oacute; thể sử dụng c&aacute;c dược phẩm hỗ trợ như l&agrave; một c&ocirc;ng cụ gi&uacute;p bảo vệ gan hiệu quả hơn. Tr&ecirc;n thị trường hiện nay c&oacute; một số sản phẩm c&oacute; t&aacute;c dụng bổ gan &ndash; hỗ trợ chức năng gan, nổi bật trong số đ&oacute; l&agrave; sản phẩm LIVERTON của C&ocirc;ng ty Cổ phần PYMEPHARCO với hoạt chất ch&iacute;nh l&agrave; Silymarin.<br />\r\nSilymarin c&oacute; nguồn gốc từ hạt của c&acirc;y kế sữa (Cardus marianus, Silybum marianum), một loại c&acirc;y trồng đ&atilde; được sử dụng trong y học trong nhiều thế kỷ như l&agrave; một loại thảo dược để điều trị c&aacute;c rối loạn li&ecirc;n quan đến gan. Đ&acirc;y l&agrave; một chất chống oxy h&oacute;a mạnh hơn so với vitamin C hoặc E n&ecirc;n c&oacute; t&aacute;c dụng rất tốt chống lại c&aacute;c gốc tự do c&oacute; thể g&acirc;y tổn hại c&aacute;c tế b&agrave;o khỏe mạnh.<br />\r\nThuốc đ&oacute;ng vai tr&ograve; như một &ldquo;người giữ cửa&rdquo; c&oacute; t&aacute;c dụng ngăn chặn c&aacute;c loại độc tố x&acirc;m nhập v&agrave; l&agrave;m tổn thương tế b&agrave;o gan (như rượu, c&aacute;c thuốc độc gan, h&oacute;a chất&hellip;), duy tr&igrave; chức năng của c&aacute;c cấu tr&uacute;c xung quanh v&agrave; b&ecirc;n trong tế b&agrave;o gan, gi&uacute;p gan hoạt động hiệu quả hơn v&agrave; tăng cường chức năng khử độc của gan. Thậm ch&iacute;, silymarin c&oacute; thể gi&uacute;p tạo ra c&aacute;c tế b&agrave;o gan mới thay thế tế b&agrave;o gan cũ đ&atilde; bị tổn thương.<br />\r\nLIVERTON (Silymarin) được sử dụng hằng ng&agrave;y trong ph&ograve;ng ngừa c&aacute;c thương tổn ở gan cho c&aacute;c đối tượng tiếp x&uacute;c nhiều với yếu tố nguy cơ như: người uống nhiều rượu bia, c&oacute; chế độ ăn nhiều chất b&eacute;o, đang d&ugrave;ng c&aacute;c thuốc c&oacute; hại cho gan, l&agrave;m việc trong m&ocirc;i trường h&oacute;a chất độc hại&hellip;Đồng thời, thuốc cũng cho t&aacute;c dụng hiệu quả trong c&aacute;c trường hợp: mệt mỏi, ch&aacute;n ăn, ăn kh&ocirc;ng ti&ecirc;u, v&agrave;ng da, rối loạn ti&ecirc;u h&oacute;a, dị ứng, mụn nhọt&hellip;do rối loạn chức năng gan, suy giảm chức năng gan, vi&ecirc;m gan cấp &ndash; mạn t&iacute;nh, gan nhiễm mỡ, loạn dưỡng gan, xơ gan, v&agrave; hỗ trợ trong điều trị ung thư gan.<br />\r\nLIVERTON (Silymarin) được sản xuất với hai h&agrave;m lượng 70mg v&agrave; 140mg để thuận tiện cho việc lựa chọn sử dụng. Liều d&ugrave;ng th&ocirc;ng thường đối với người lớn l&agrave;: uống 1 vi&ecirc;n x 3 lần/ng&agrave;y đối với vi&ecirc;n 70mg, hay 1 vi&ecirc;n x 2 lần/ng&agrave;y đối với vi&ecirc;n 140mg; Trẻ em d&ugrave;ng liều hằng ng&agrave;y 5 mg/kg, chia 2-3 lần/ng&agrave;y.<br />\r\nĐể sử dụng LIVERTON hiệu quả nhất, bạn n&ecirc;n đọc kỹ hướng dẫn sử dụng v&agrave; tham khảo &yacute; kiến c&aacute;c b&aacute;c sĩ, dược sĩ trước khi d&ugrave;ng thuốc.</p>\r\n\r\n<p>Bạn c&oacute; thể t&igrave;m hiểu th&ecirc;m th&ocirc;ng tin về sản phẩm tại:</p>\r\n\r\n<p style=\"text-align:center\">C&ocirc;ng ty Cổ phần PYMEPHARCO</p>\r\n\r\n<p style=\"text-align:center\">166-170 Nguyễn Huệ, Tuy H&ograve;a, Ph&uacute; Y&ecirc;n<br />\r\nĐT: (057) 3823 228 &ndash; Fax: (057) 3824 717.</p>\r\n\r\n<p style=\"text-align:center\">Chi nh&aacute;nh tại Tp.HCM: 44 Đồng Nai, P.15, Q.10<br />\r\nĐT: (08) 3970 8789 &ndash; Fax: (08) 3970 2208.</p>\r\n','','','','','chuc-nang-gan-va-nhung-dieu-nen-biet-de-bao-ve-gan-hieu-qua','2021-08-09 02:49:28','/assets/images/placeholder.png',10,NULL,NULL,NULL),
(7,'CBTT- Báo Cáo Tình Hình Quản Trị Công Ty 6 Tháng Đầu Năm 2021.','<p><a href=\"https://www.pymepharco.com/wp-content/uploads/2021/07/20210729-PME-BAO-CAO-TINH-HINH-QUAN-TRI-6-THANG-CBTT.pdf\">B&aacute;o c&aacute;o t&igrave;nh h&igrave;nh quản trị c&ocirc;ng ty 6 th&aacute;ng đầu năm 2021.</a></p>\r\n','','','','','cbtt--bao-cao-tinh-hinh-quan-tri-cong-ty-6-thang-dau-nam-2021','2021-08-09 02:58:51','/assets/userfiles/files/CBTT_new-270x179.png',10,NULL,NULL,NULL),
(8,'SẢN PHẨM PYMEPHARCO ĐƯỢC BỘ Y TẾ CÔNG BỐ CHỨNG MINH TƯƠNG ĐƯƠNG SINH HỌC','<p>Trong danh mục c&ocirc;ng bố c&aacute;c sản phẩm được chứng minh tương đương sinh học do Cục Quản l&yacute; Dược &ndash; Bộ Y tế ban h&agrave;nh , C&ocirc;ng ty Cổ phần PYMEPHARCO tự h&agrave;o l&agrave; doanh nghiệp dược Việt Nam c&oacute; số dược chất được c&ocirc;ng bố nhiều nhất.<br />\r\nC&aacute;c sản phẩm PYMEPHARCO đ&atilde; được c&ocirc;ng bố chứng minh tương đương sinh học Đợt 1, 2, 3, 4 &amp; 5 bao gồm:</p>\r\n\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" class=\"text-center\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>STT</strong></p>\r\n			</td>\r\n			<td>\r\n			<p style=\"text-align:center\"><strong>T&Ecirc;N THUỐC</strong></p>\r\n			</td>\r\n			<td>\r\n			<p style=\"text-align:center\"><strong>HOẠT CHẤT</strong></p>\r\n			</td>\r\n			<td>\r\n			<p style=\"text-align:center\"><strong>DẠNG B&Agrave;O CHẾ</strong></p>\r\n			</td>\r\n			<td>\r\n			<p style=\"text-align:center\"><strong>SỐ ĐĂNG K&Yacute;</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">&nbsp;1</td>\r\n			<td>\r\n			<p style=\"text-align:center\">NEGACEF 500</p>\r\n			</td>\r\n			<td>\r\n			<p style=\"text-align:center\">Cefuroxim 500 mg</p>\r\n			</td>\r\n			<td>\r\n			<p style=\"text-align:center\">Vi&ecirc;n bao phim</p>\r\n			</td>\r\n			<td>\r\n			<p style=\"text-align:center\">VD-11874-10</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">&nbsp;2</td>\r\n			<td>\r\n			<p style=\"text-align:center\">PYMECLAROCIL 500</p>\r\n			</td>\r\n			<td>\r\n			<p style=\"text-align:center\">Clarithromycin 500mg</p>\r\n			</td>\r\n			<td>\r\n			<p style=\"text-align:center\">Vi&ecirc;n n&eacute;n</p>\r\n\r\n			<p style=\"text-align:center\">bao phim</p>\r\n			</td>\r\n			<td>\r\n			<p style=\"text-align:center\">VD-13072-10</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">&nbsp;3</td>\r\n			<td>\r\n			<p style=\"text-align:center\">PYMETPHAGE 1000</p>\r\n			</td>\r\n			<td>\r\n			<p style=\"text-align:center\">Metformin HCl 1000mg</p>\r\n			</td>\r\n			<td>\r\n			<p style=\"text-align:center\">Vi&ecirc;n n&eacute;n</p>\r\n\r\n			<p style=\"text-align:center\">bao phim</p>\r\n			</td>\r\n			<td>\r\n			<p style=\"text-align:center\">VD-11880-10</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">&nbsp;4</td>\r\n			<td>\r\n			<p style=\"text-align:center\">ROSTOR 20</p>\r\n			</td>\r\n			<td>\r\n			<p style=\"text-align:center\">Rosuvastatin 20mg</p>\r\n			</td>\r\n			<td>\r\n			<p style=\"text-align:center\">Vi&ecirc;n n&eacute;n</p>\r\n\r\n			<p style=\"text-align:center\">bao phim</p>\r\n			</td>\r\n			<td>\r\n			<p style=\"text-align:center\">VD-7722-09</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">&nbsp;5</td>\r\n			<td>\r\n			<p style=\"text-align:center\">PYME AM10</p>\r\n			</td>\r\n			<td>\r\n			<p style=\"text-align:center\">Amlodipin 10mg</p>\r\n			</td>\r\n			<td>\r\n			<p style=\"text-align:center\">Vi&ecirc;n n&eacute;n</p>\r\n			</td>\r\n			<td>\r\n			<p style=\"text-align:center\">VD-6996-09</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">&nbsp;6</td>\r\n			<td>\r\n			<p style=\"text-align:center\">TATANOL</p>\r\n			</td>\r\n			<td>\r\n			<p style=\"text-align:center\">Acetaminophen 500mg</p>\r\n			</td>\r\n			<td>\r\n			<p style=\"text-align:center\">Vi&ecirc;n n&eacute;n</p>\r\n\r\n			<p style=\"text-align:center\">bao phim</p>\r\n			</td>\r\n			<td>\r\n			<p style=\"text-align:center\">VD-8219-09</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">&nbsp;7</td>\r\n			<td>\r\n			<p style=\"text-align:center\">VASPYCAR MR-35mg</p>\r\n			</td>\r\n			<td>\r\n			<p style=\"text-align:center\">Trimetazidin HCl 35mg</p>\r\n			</td>\r\n			<td>\r\n			<p style=\"text-align:center\">Vi&ecirc;n bao phim ph&oacute;ng th&iacute;ch c&oacute; kiểm so&aacute;t</p>\r\n			</td>\r\n			<td>\r\n			<p style=\"text-align:center\">VD-6047-08</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">&nbsp;8</td>\r\n			<td>\r\n			<p style=\"text-align:center\">PYCIP 500 mg</p>\r\n			</td>\r\n			<td>\r\n			<p style=\"text-align:center\">Ciprofloxacin 500 mg</p>\r\n			</td>\r\n			<td>\r\n			<p style=\"text-align:center\">Vi&ecirc;n n&eacute;n</p>\r\n\r\n			<p style=\"text-align:center\">bao phim</p>\r\n			</td>\r\n			<td>\r\n			<p style=\"text-align:center\">VD-7336-09</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">&nbsp;9</td>\r\n			<td>\r\n			<p style=\"text-align:center\">MOBIMED 15</p>\r\n			</td>\r\n			<td>\r\n			<p style=\"text-align:center\">Meloxicam 15mg</p>\r\n			</td>\r\n			<td>\r\n			<p style=\"text-align:center\">Vi&ecirc;n n&eacute;n</p>\r\n			</td>\r\n			<td>\r\n			<p style=\"text-align:center\">VD-11871-10</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">&nbsp;10</td>\r\n			<td>\r\n			<p style=\"text-align:center\">LEVOQUIN 500</p>\r\n			</td>\r\n			<td>\r\n			<p style=\"text-align:center\">Levofloxacin 500mg</p>\r\n			</td>\r\n			<td>\r\n			<p style=\"text-align:center\">Vi&ecirc;n n&eacute;n</p>\r\n\r\n			<p style=\"text-align:center\">bao phim</p>\r\n			</td>\r\n			<td>\r\n			<p style=\"text-align:center\">VD-12524-10</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">&nbsp;11</td>\r\n			<td>\r\n			<p style=\"text-align:center\">MENISON 16mg</p>\r\n			</td>\r\n			<td>\r\n			<p style=\"text-align:center\">Methylprednisolon 16mg</p>\r\n			</td>\r\n			<td>\r\n			<p style=\"text-align:center\">Vi&ecirc;n n&eacute;n</p>\r\n			</td>\r\n			<td>\r\n			<p style=\"text-align:center\">VD-12526-10</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">&nbsp;12</td>\r\n			<td>\r\n			<p style=\"text-align:center\">DIAPRID 4mg</p>\r\n			</td>\r\n			<td>\r\n			<p style=\"text-align:center\">Glimepirid 4mg</p>\r\n			</td>\r\n			<td>\r\n			<p style=\"text-align:center\">Vi&ecirc;n n&eacute;n</p>\r\n			</td>\r\n			<td>\r\n			<p style=\"text-align:center\">VD-12517-10</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">&nbsp;13</td>\r\n			<td>\r\n			<p style=\"text-align:center\">DROXICEF 500 mg</p>\r\n			</td>\r\n			<td>\r\n			<p style=\"text-align:center\">Cefadroxil 500mg</p>\r\n			</td>\r\n			<td>\r\n			<p style=\"text-align:center\">Vi&ecirc;n nang cứng</p>\r\n			</td>\r\n			<td>\r\n			<p style=\"text-align:center\">VD-8960-09</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">&nbsp;14</td>\r\n			<td>\r\n			<p style=\"text-align:center\">TENOCAR 100</p>\r\n			</td>\r\n			<td>\r\n			<p style=\"text-align:center\">Atenolol 100mg</p>\r\n			</td>\r\n			<td>\r\n			<p style=\"text-align:center\">Vi&ecirc;n n&eacute;n</p>\r\n			</td>\r\n			<td>\r\n			<p style=\"text-align:center\">VD-8976-09</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">&nbsp;15</td>\r\n			<td>\r\n			<p style=\"text-align:center\">CELORSTAD 250</p>\r\n			</td>\r\n			<td>\r\n			<p style=\"text-align:center\">Cefaclor 250mg</p>\r\n			</td>\r\n			<td>\r\n			<p style=\"text-align:center\">Vi&ecirc;n nang cứng</p>\r\n			</td>\r\n			<td>\r\n			<p style=\"text-align:center\">VD-11861-10</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">&nbsp;16</td>\r\n			<td>\r\n			<p style=\"text-align:center\">CEFADROXIL PMP 500</p>\r\n			</td>\r\n			<td>\r\n			<p style=\"text-align:center\">Cefadroxil 500mg</p>\r\n			</td>\r\n			<td>\r\n			<p style=\"text-align:center\">Vi&ecirc;n nang cứng</p>\r\n			</td>\r\n			<td>\r\n			<p style=\"text-align:center\">VD-11859-10</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">&nbsp;17</td>\r\n			<td>\r\n			<p style=\"text-align:center\">CEFUSTAD 500</p>\r\n			</td>\r\n			<td>\r\n			<p style=\"text-align:center\">Cefuroxim 250mg</p>\r\n			</td>\r\n			<td>\r\n			<p style=\"text-align:center\">Vi&ecirc;n n&eacute;n bao phim</p>\r\n			</td>\r\n			<td>\r\n			<p style=\"text-align:center\">VD-9685-09</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">&nbsp;18</td>\r\n			<td>\r\n			<p style=\"text-align:center\">CLARITHROMYCIN 500</p>\r\n			</td>\r\n			<td>\r\n			<p style=\"text-align:center\">Clarithromycin 500mg</p>\r\n			</td>\r\n			<td>\r\n			<p style=\"text-align:center\">Vi&ecirc;n n&eacute;n bao phim</p>\r\n			</td>\r\n			<td>\r\n			<p style=\"text-align:center\">VD-12513-10</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Kết quả tương đương sinh học l&agrave; một yếu tố quyết định đ&aacute;nh gi&aacute; chất lượng thuốc của c&aacute;c sản phẩm do C&ocirc;ng ty Cổ phần PYMEPHARCO sản xuất. Từ đ&oacute; gi&uacute;p người ti&ecirc;u d&ugrave;ng (thầy thuốc v&agrave; bệnh nh&acirc;n) c&oacute; thể lựa chọn được c&aacute;c sản phẩm điều trị c&oacute; gi&aacute; ph&ugrave; hợp với thu nhập của người d&acirc;n Việt Nam nhưng hiệu quả v&agrave; t&iacute;nh an to&agrave;n c&oacute; thể được so s&aacute;nh ngang với c&aacute;c thuốc ngoại nhập c&ugrave;ng loại.</p>\r\n','','','','','san-pham-pymepharco-duoc-bo-y-te-cong-bo-chung-minh-tuong-duong-sinh-hoc','2021-08-09 03:00:27','/assets/images/placeholder.png',10,NULL,NULL,NULL),
(9,'Báo Cáo Tài Chính Quí 2-2021.','<p><a href=\"https://www.pymepharco.com/wp-content/uploads/2021/07/BCTC-Q2.2021.pdf\">B&aacute;o C&aacute;o T&agrave;i Ch&iacute;nh Qu&iacute; 2-2021.</a></p>\r\n\r\n<p><a href=\"https://www.pymepharco.com/wp-content/uploads/2021/07/Gi%E1%BA%A3i-tr%C3%ACnh-LNST-qu%C3%BD-2.pdf\">Giải tr&igrave;nh lợi nhuận sau thuế qu&iacute; 2 năm 2021.</a></p>\r\n','','','','','bao-cao-tai-chinh-qui-2-2021','2021-08-09 03:24:14','/assets/images/placeholder.png',10,NULL,NULL,NULL),
(10,'Báo Cáo Tài Chính Quí II Năm 2017','<p><a href=\"https://www.pymepharco.com/wp-content/uploads/2017/07/BCTC-Q2-2017.pdf\">B&aacute;o c&aacute;o t&agrave;i ch&iacute;nh qu&iacute; 2 năm 2017</a>.</p>\r\n','','','','','bao-cao-tai-chinh-qui-ii-nam-2017','2021-08-09 03:24:37','/assets/images/placeholder.png',10,NULL,NULL,NULL),
(11,'Báo Cáo Tài Chính Quý 2 Năm 2018','<p><a href=\"https://www.pymepharco.com/wp-content/uploads/2018/07/Bao_Cao_Tai_Chinh_Qui_2_2018.pdf\">B&aacute;o c&aacute;o t&agrave;i ch&iacute;nh qu&yacute; 2 năm 2018.</a></p>\r\n','','','','','bao-cao-tai-chinh-quy-2-nam-2018','2021-08-09 03:24:55','/assets/images/placeholder.png',10,NULL,NULL,NULL),
(12,'Báo Cáo Tài Chính Bán Niên Năm 2020.','<p><a href=\"https://www.pymepharco.com/wp-content/uploads/2020/08/PME-BCTC-ban-nien-2020.pdf\">B&aacute;o C&aacute;o T&agrave;i Ch&iacute;nh B&aacute;n Ni&ecirc;n Năm 2020.</a></p>\r\n','','','','','bao-cao-tai-chinh-ban-nien-nam-2020','2021-08-09 03:26:31','/assets/images/placeholder.png',10,NULL,NULL,NULL),
(13,'Báo cáo tài chính giữa niên độ năm 2017','<p><a href=\"https://www.pymepharco.com/wp-content/uploads/2017/08/BCTC_giua_nien_do_2017.pdf\">B&aacute;o c&aacute;o t&agrave;i ch&iacute;nh giữa ni&ecirc;n độ năm 2017.</a></p>\r\n','','','','','bao-cao-tai-chinh-giua-nien-do-nam-2017','2021-08-09 03:25:51','/assets/images/placeholder.png',10,NULL,NULL,NULL),
(14,'Pymepharco Chung Tay Phòng Chống Dịch Covid-19','<p>Mỗi người một nhiệm vụ, một c&ocirc;ng việc, một tấm l&ograve;ng c&ugrave;ng chung tay ph&ograve;ng, chống dịch bệnh Covid-19. Tại&nbsp;<strong>Pymepharco</strong>,&nbsp;<em>con người lu&ocirc;n được đặt v&agrave;o vị tr&iacute; trung t&acirc;m v&agrave; kim chỉ nam: &ldquo; V&igrave; sức khỏe người Việt mai sau&rdquo; lu&ocirc;n được mỗi th&agrave;nh vi&ecirc;n nhận thức, g&igrave;n giữ. Ch&uacute;ng t&ocirc;i lu&ocirc;n sẵn s&agrave;ng đồng h&agrave;nh c&ugrave;ng Ch&iacute;nh phủ Việt Nam trong cuộc chiến đẩy l&ugrave;i COVID-19 nhằm bảo vệ sức khỏe v&agrave; sự an to&agrave;n của cộng đồng.&nbsp;</em><strong>Pymepharco</strong>&nbsp;cam kết giữ vững sản xuất để tiếp tục cung ứng đầy đủ thuốc cho thị trường, đặc biệt&nbsp;<em>ưu ti&ecirc;n&nbsp;</em>c&aacute;c loại thuốc&nbsp;<em>c&oacute; nhu cầu cao trong thời gian đối ph&oacute; với đại dịch hiện nay như thuốc chống nhiễm tr&ugrave;ng, thuốc k&iacute;ch th&iacute;ch miễn dịch v&agrave; thuốc giảm đau.</em></p>\r\n\r\n<p><strong>Biến &ldquo;nguy&rdquo; th&agrave;nh &ldquo;cơ&rdquo;:&nbsp;</strong><em>Ch&uacute;ng t&ocirc;i &yacute; thức một c&aacute;ch r&otilde; r&agrave;ng l&agrave; cuộc khủng hoảng hiện nay c&oacute; quy m&ocirc; to&agrave;n cầu đang diễn ra với mức độ nghi&ecirc;m trọng cao v&agrave; diễn biến thật kh&oacute; lường</em>&nbsp;&ndash; Tổng Gi&aacute;m đốc Huỳnh Tấn Nam chia sẻ &ndash;&nbsp;<em>Nhưng ch&iacute;nh trong ho&agrave;n cảnh kh&oacute; khăn ấy,&nbsp;<strong>Pymepharco</strong>&nbsp;sẽ lu&ocirc;n chủ động đối mặt th&aacute;ch thức, biến th&aacute;ch thức trước mắt trở th&agrave;nh lợi thế, t&igrave;m kiếm cơ hội bứt ph&aacute; trong hiện tại v&agrave; tương lai mang lại những gi&aacute; trị cho cộng đồng</em>.&nbsp;<em>Kh&oacute; khăn sẽ gi&uacute;p ch&uacute;ng t&ocirc;i trở n&ecirc;n mạnh mẽ v&agrave; th&agrave;nh c&ocirc;ng hơn.</em></p>\r\n\r\n<p><a href=\"https://www.pymepharco.com/wp-content/uploads/2020/04/co1.jpg\"><img alt=\"\" src=\"https://www.pymepharco.com/wp-content/uploads/2020/04/co1-1024x638.jpg\" style=\"height:638px; width:1024px\" /></a></p>\r\n\r\n<p><a href=\"https://www.pymepharco.com/wp-content/uploads/2020/04/co2.png\"><img alt=\"\" src=\"https://www.pymepharco.com/wp-content/uploads/2020/04/co2.png\" style=\"height:691px; width:949px\" /></a></p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, để tiếp sức cho tuyến đầu chống dịch,&nbsp;<strong>PYMEPHARCO&nbsp;</strong>đ&atilde; động vi&ecirc;n, chia sẻ, chung tay ủng hộ những chiến sĩ &aacute;o trắng trong cuộc chiến với COVID-19 đầy cam go v&agrave; nguy hiểm, tạo th&ecirc;m sức mạnh, niềm tin, tạo động lực lớn để mỗi người Việt Nam đo&agrave;n kết, c&ugrave;ng nhau vượt qua kh&oacute; khăn, hướng đến một cuộc sống khỏe mạnh, an to&agrave;n v&agrave; hạnh ph&uacute;c.&nbsp;<em><strong>PYMEPHARCO</strong>&nbsp;hi vọng rằng, những đ&oacute;ng g&oacute;p của&nbsp;<strong>PYMEPHARCO</strong>&nbsp;c&ugrave;ng với c&aacute;c doanh nghiệp v&agrave; tổ chức kh&aacute;c trong x&atilde; hội sẽ tạo th&agrave;nh sức mạnh cộng hưởng, chung sức đồng l&ograve;ng c&ugrave;ng Ch&iacute;nh phủ Việt Nam vượt qua giai đoạn kh&oacute; khăn n&agrave;y</em></p>\r\n\r\n<p><a href=\"https://www.pymepharco.com/wp-content/uploads/2020/04/co3.jpg\"><img alt=\"\" src=\"https://www.pymepharco.com/wp-content/uploads/2020/04/co3-1024x768.jpg\" style=\"height:768px; width:1024px\" /></a></p>\r\n\r\n<p>Về c&ocirc;ng t&aacute;c ph&ograve;ng dịch, ngay từ những ng&agrave;y đầu ti&ecirc;n khi dịch COVID-19 c&oacute; xuất hiện tại Việt Nam,&nbsp;<strong>PYMEPHARCO</strong>&nbsp;đ&atilde; chủ động triển khai nhiều biện ph&aacute;p ph&ograve;ng, chống COVID-19 tại c&aacute;c nh&agrave; m&aacute;y bao gồm việc li&ecirc;n tục cập nhật, đ&agrave;o tạo v&agrave; hướng dẫn nh&acirc;n vi&ecirc;n c&aacute;c phương ph&aacute;p ph&ograve;ng chống dịch bệnh, ph&aacute;t khẩu trang v&agrave; cung cấp nước rửa tay s&aacute;t khuẩn miễn ph&iacute;, kiểm tra th&acirc;n nhiệt của nh&acirc;n vi&ecirc;n tại c&aacute;c cổng nh&agrave; m&aacute;y, tạm dừng c&aacute;c hoạt động tập trung đ&ocirc;ng người, v&agrave; thường xuy&ecirc;n thực hiện c&aacute;c biện ph&aacute;p khử tr&ugrave;ng tại c&aacute;c khu vực trong nh&agrave; m&aacute;y. Đ&aacute;ng ch&uacute; &yacute;, tại c&aacute;c khu vực nh&agrave; ăn,&nbsp;<strong>PYMEPHARCO</strong>&nbsp;đ&atilde; tiến h&agrave;nh c&aacute;c biện ph&aacute;p nhằm hạn chế tiếp x&uacute;c trực tiếp giữa c&aacute;c nh&acirc;n vi&ecirc;n trong khi ăn, bố tr&iacute; gi&atilde;n khoảng c&aacute;ch, lệch giờ ăn, bổ sung dinh dưỡng, vitamin tăng sức đề kh&aacute;ng để đảm bảo an to&agrave;n sức khỏe cho nh&acirc;n vi&ecirc;n. Tất cả nhằm đảm bảo sự an to&agrave;n cao nhất cho tập thể, c&aacute;n bộ nh&acirc;n vi&ecirc;n trong cuộc chiến chống lại Covid-19.</p>\r\n\r\n<p><a href=\"https://www.pymepharco.com/wp-content/uploads/2020/04/co4.jpg\"><img alt=\"\" src=\"https://www.pymepharco.com/wp-content/uploads/2020/04/co4-1024x960.jpg\" style=\"height:960px; width:1024px\" /></a></p>\r\n\r\n<p><a href=\"https://www.pymepharco.com/wp-content/uploads/2020/04/co5.jpg\"><img alt=\"\" src=\"https://www.pymepharco.com/wp-content/uploads/2020/04/co5-1024x768.jpg\" style=\"height:768px; width:1024px\" /></a></p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"281\" src=\"https://www.youtube.com/embed/RfwS4iZTzsw?feature=oembed\" width=\"500\"></iframe></p>\r\n','','','','','pymepharco-chung-tay-phong-chong-dich-covid-19','2021-08-09 03:27:50','/assets/userfiles/files/co3-1024x768.jpg',10,NULL,NULL,NULL),
(15,'Pymepharco Tổ Chức Thành Công Đại Hội Đồng Cổ Đông Bất Thường Năm 2018','<p>V&agrave;o s&aacute;ng ng&agrave;y 19/10/2018, CTCP Pymepharco đ&atilde; tổ chức th&agrave;nh c&ocirc;ng ĐHĐCĐ bất thường năm 2018.</p>\r\n\r\n<p>Tham dự Đại hội c&oacute; 336 cổ đ&ocirc;ng trực tiếp v&agrave; ủy quyền tham dự, đại diện cho 70.853.583 cổ phần c&oacute; quyền biểu quyết, chiếm 94,46% vốn điều lệ C&ocirc;ng ty.</p>\r\n\r\n<p>Đại hội đ&atilde; biểu quyết th&ocirc;ng qua một số nội dung quan trọng tạo điều kiện thuận lợi cho sự ph&aacute;t triển của c&ocirc;ng ty trong thời gian sắp tới. Đặc biệt l&agrave; nội dung n&acirc;ng tỷ lệ sở hữu nước ngo&agrave;i tại Pymepharco từ 49% l&ecirc;n 100%, đồng thời điều chỉnh, bổ sung c&aacute;c ng&agrave;nh nghề kinh doanh để đ&aacute;p ứng điều kiện. Việc n&acirc;ng tỷ lệ sở hữu nước ngo&agrave;i tại c&ocirc;ng ty sẽ l&agrave; yếu tố quan trọng để tăng t&iacute;nh hấp dẫn cho cổ phiếu, thu h&uacute;t th&ecirc;m nguồn lực từ nh&agrave; đầu tư nước ngo&agrave;i, g&oacute;p phần tăng trưởng ph&aacute;t triển c&ocirc;ng ty trong d&agrave;i hạn.</p>\r\n\r\n<p>Cũng tại đại hội, cổ đ&ocirc;ng cũng thống nhất th&ocirc;ng qua tờ tr&igrave;nh Stada Service Holding B.V (Stada) v&agrave;/hoặc tổ chức c&oacute; li&ecirc;n quan đến Stada Service Holding B.V được n&acirc;ng tỷ lệ sở hữu từ 49% l&ecirc;n tối đa 72% m&agrave; kh&ocirc;ng cần thực hiện ch&agrave;o mua c&ocirc;ng khai.</p>\r\n\r\n<p>Theo chia sẻ từ đại diện cổ đ&ocirc;ng Stada, Pymepharco nằm trong Top 10 nh&agrave; m&aacute;y của Stada tr&ecirc;n to&agrave;n cầu.&nbsp;<em>&ldquo;Chiến lược của ch&uacute;ng t&ocirc;i c&oacute; c&ugrave;ng định hướng, mục ti&ecirc;u như của Pymepharco, hướng đến sản xuất những sản phẩm c&oacute; chất lượng tốt, kỹ thuật cao v&agrave; gi&aacute; hợp l&yacute;. Ch&uacute;ng t&ocirc;i sẽ đồng h&agrave;nh c&ugrave;ng Pymepharco trong nhiều hoạt động, từ đầu tư, đến kỹ thuật, marketing v&agrave; cả ph&acirc;n phối&rdquo;.</em></p>\r\n\r\n<p>Ngo&agrave;i ra, Đại hội cũng th&ocirc;ng qua việc từ nhiệm của &ocirc;ng Choo Yan Ho, Th&agrave;nh vi&ecirc;n HĐQT độc lập nhiệm kỳ 2016-2021, đồng thời thống nhất tăng số lượng th&agrave;nh vi&ecirc;n HĐQT từ 8 l&ecirc;n 11 th&agrave;nh vi&ecirc;n trong nhiệm kỳ n&agrave;y. Theo đ&oacute;, cổ đ&ocirc;ng đ&atilde; bầu bổ sung th&ecirc;m 4 th&agrave;nh vi&ecirc;n HĐQT, danh s&aacute;ch tr&uacute;ng cử bao gồm: &Ocirc;ng Mark Burgess Keatley, &Ocirc;ng Miguel Pagan Fernandez, &Ocirc;ng Ludwig Otto Friedrich Kl&ouml;ter v&agrave; &Ocirc;ng Carsten Patrick Cron.</p>\r\n\r\n<p><a href=\"https://www.pymepharco.com/wp-content/uploads/2018/10/pmp1-1.jpg\"><img alt=\"\" src=\"https://www.pymepharco.com/wp-content/uploads/2018/10/pmp1-1-1024x682.jpg\" style=\"height:682px; width:1024px\" /></a></p>\r\n\r\n<p>Hội Đồng Quản Trị C&ocirc;ng Ty Cổ Phần&nbsp; Pymepharco nhiệm kỳ 2016-2021</p>\r\n','','','','','pymepharco-to-chuc-thanh-cong-dai-hoi-dong-co-dong-bat-thuong-nam-2018','2021-08-09 03:28:33','/assets/images/placeholder.png',10,NULL,NULL,NULL),
(16,'Lễ khởi công xây dựng Nhà máy Non-Betalactam theo tiêu chuẩn EU-GMP / PIC/s và Team Betalactam Sterile PYMEPHARCO đã hoàn thành xuất sắc đợt thanh tra tiêu chuẩn EU-GMP.','<p><strong>Trong c&ugrave;ng ng&agrave;y 31/01/2018, tại Pymepharco diễn ra 2 sự kiện quan trọng: Lễ khởi c&ocirc;ng x&acirc;y dựng Nh&agrave; m&aacute;y Non-Betalactam theo ti&ecirc;u chuẩn EU-GMP / PIC/s v&agrave; Team Betalactam Sterile PYMEPHARCO</strong>&nbsp;<strong>đ&atilde; ho&agrave;n th&agrave;nh xuất sắc đợt thanh tra ti&ecirc;u chuẩn EU-GMP Thuốc ti&ecirc;m Betalactam do Cơ quan dược phẩm Ch&acirc;u &Acirc;u Hessen tại Darmstadt &ndash; Cộng h&ograve;a Li&ecirc;n bang Đức x&eacute;t duyệt từ ng&agrave;y 24/01 đến ng&agrave;y 31/01/2018</strong>.</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.pymepharco.com/wp-content/uploads/2018/01/KBCC6717.jpg\" style=\"height:4480px; width:6720px\" /></p>\r\n\r\n<p><em>H&igrave;nh 1: Ban l&atilde;nh đạo v&agrave; nh&acirc;n vi&ecirc;n Pymepharco chụp ảnh lưu niệm c&ugrave;ng đo&agrave;n thanh tra</em></p>\r\n\r\n<p>Sau tất cả những nỗ lực miệt m&agrave;i của&nbsp;<strong>Team Betalactam Sterile PYMEPHARCO</strong>&nbsp;trong gần 4 năm qua, đợt thanh tra ch&iacute;nh thức EU-GMP tại Nh&agrave; m&aacute;y thuốc ti&ecirc;m Betalactam Pymepharco đ&atilde; kết th&uacute;c tốt đẹp.</p>\r\n\r\n<p>Ti&ecirc;u chuẩn EU-GMP trong sản xuất dược phẩm, đặc biệt l&agrave; sản xuất thuốc v&ocirc; tr&ugrave;ng l&agrave; một ti&ecirc;u chuẩn rất khắt khe. N&oacute; đ&ograve;i hỏi sự đầu tư nghi&ecirc;m t&uacute;c v&agrave; tu&acirc;n thủ nghi&ecirc;m ngặt trong suốt qu&aacute; tr&igrave;nh thực hiện.</p>\r\n\r\n<p>Th&agrave;nh c&ocirc;ng n&agrave;y l&agrave; kết quả nỗ lực l&agrave;m việc hết m&igrave;nh, tận t&acirc;m cống hiến của tất cả c&aacute;c th&agrave;nh vi&ecirc;n trong tập thể Pymepharco cũng như sự hỗ trợ, hợp t&aacute;c bền chặt của tập đo&agrave;n Stada Arzneimittel AG (CHLB Đức) trong suốt qu&aacute; tr&igrave;nh đầu tư chuẩn bị v&agrave; trong đợt thanh tra ch&iacute;nh thức.</p>\r\n\r\n<p>N&oacute;i về kết quả n&agrave;y, &Ocirc;ng Fritz Kloeter &ndash; Ph&oacute; Chủ tịch điều h&agrave;nh phụ tr&aacute;ch kỹ thuật Tập đo&agrave;n Stada Arzneimittel AG (CHLB Đức) cho biết&nbsp;:&nbsp;<em>&laquo;&nbsp;Đ&oacute; l&agrave; một qu&aacute; tr&igrave;nh d&agrave;i nỗ lực. Ti&ecirc;u chuẩn trong sản xuất thuốc v&ocirc; tr&ugrave;ng l&agrave; rất khắt khe nhưng c&aacute;c bạn đ&atilde; vượt qua n&oacute;. Đ&oacute; thật sự l&agrave; một kết quả tuyệt vời. Xin ch&uacute;c mừng đến to&agrave;n thể đội ngũ Pymepharco&nbsp;&raquo;.</em></p>\r\n\r\n<p>C&ugrave;ng ng&agrave;y (31/01/2018), tại g&oacute;c Đ&ocirc;ng &ndash; Nam ng&atilde; tư đường Nguyễn Tr&atilde;i (nối d&agrave;i) v&agrave; Ho&agrave;ng Văn Thụ, phường 9, TP Tuy H&ograve;a,&nbsp;<strong>Pymepharco đ&atilde; khởi c&ocirc;ng x&acirc;y dựng Nh&agrave; m&aacute;y Non-Betalactam theo ti&ecirc;u chuẩn EU-GMP / PIC/s</strong>.</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.pymepharco.com/wp-content/uploads/2018/02/nm2.jpg\" style=\"height:929px; width:1800px\" /></p>\r\n\r\n<p>H&igrave;nh 2&nbsp;: Lễ khởi c&ocirc;ng x&acirc;y dựng nh&agrave; m&aacute;y Non-Betalactam</p>\r\n\r\n<p>Nh&agrave; m&aacute;y Non-Betalactam theo ti&ecirc;u chuẩn Ch&acirc;u &Acirc;u với c&ocirc;ng suất 1,2 tỉ vi&ecirc;n Non-Betalactam/năm/1ca do C&ocirc;ng ty CP Pymepharco l&agrave;m chủ đầu tư, C&ocirc;ng ty CP tư vấn x&acirc;y dựng gi&aacute; trị Kỹ thuật Việt thiết kế v&agrave; C&ocirc;ng ty CP Hồng Ph&uacute;c chịu tr&aacute;ch nhiệm thi c&ocirc;ng. Nh&agrave; m&aacute;y được x&acirc;y dựng tr&ecirc;n diện t&iacute;ch khoảng hơn 30.000m<sup>2</sup>, c&oacute; khối nh&agrave; cao 5 tầng, chiều cao tối đa 25m, s&acirc;n đường nội bộ, c&acirc;y xanh v&agrave; cụm tiện &iacute;ch kỹ thuật, khu vực ph&aacute;t triển tương lai (nghi&ecirc;n cứu ph&aacute;t triển v&agrave; nh&agrave; chuy&ecirc;n gia&hellip;). Tổng vốn đầu tư nh&agrave; m&aacute;y khoảng 700 tỉ đồng. Dự kiến, nh&agrave; m&aacute;y sẽ ho&agrave;n tất v&agrave; đưa v&agrave;o sản xuất trong th&aacute;ng 7/2019; g&oacute;p phần giải quyết việc l&agrave;m cho người lao động, ph&aacute;t triển ng&agrave;nh c&ocirc;ng nghiệp dược trở th&agrave;nh ng&agrave;nh c&ocirc;ng nghiệp mũi nhọn của tỉnh theo định hướng Đại hội Đảng bộ tỉnh lần thứ XVI; đ&aacute;p ứng được nguồn thuốc cung cấp cho điều trị trong nước v&agrave; hướng tới xuất khẩu.</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.pymepharco.com/wp-content/uploads/2018/02/nm3.jpg\" style=\"height:980px; width:1571px\" /></p>\r\n\r\n<p>Ph&aacute;t biểu tại buổi lễ, Chủ tịch HĐQT &ndash; Tổng Gi&aacute;m đốc Huỳnh Tấn Nam thể hiện quyết t&acirc;m đẩy nhanh tiến độ thi c&ocirc;ng c&ocirc;ng tr&igrave;nh, đảm bảo chất lượng kỹ thuật v&agrave; đưa v&agrave;o hoạt động theo đ&uacute;ng thời gian dự kiến. Tập thể l&atilde;nh đạo, c&aacute;n bộ, nh&acirc;n vi&ecirc;n c&ocirc;ng ty sẽ nỗ lực đầu tư, ph&aacute;t triển nh&agrave; m&aacute;y nhằm g&oacute;p phần cho sự ph&aacute;t triển kinh tế &ndash; x&atilde; hội địa phương v&agrave; cả nước.</p>\r\n\r\n<p>Như vậy, c&ugrave;ng với 02 d&acirc;y chuyền sản xuất đ&atilde; đạt EU-GMP l&agrave; kh&aacute;ng sinh Betalactam thuốc vi&ecirc;n v&agrave; Betalactam thuốc ti&ecirc;m, việc tiếp tục đầu tư nh&agrave; m&aacute;y Non Betalactam theo ti&ecirc;u chuẩn EU-GMP / PIC/s sẽ đưa Pymepharco trở th&agrave;nh m&ocirc;t trong những nh&agrave; m&aacute;y dẫn đầu về c&ocirc;ng nghệ hiện đại, quy tr&igrave;nh sản xuất với ti&ecirc;u chuẩn v&ocirc; c&ugrave;ng khắt khe được Ch&acirc;u &Acirc;u c&ocirc;ng nhận. Đối với Đ&ocirc;ng Nam &Aacute;, Pymepharco l&agrave; một trong số rất &iacute;t nh&agrave; m&aacute;y c&oacute; nhiều d&ograve;ng sản phẩm đạt EU-GMP nhất, ri&ecirc;ng tại Việt Nam đ&acirc;y l&agrave; nh&agrave; m&aacute;y duy nhất c&oacute; cả thuốc vi&ecirc;n v&agrave; thuốc ti&ecirc;m được c&ocirc;ng nhận EU-GMP bởi CHLB Đức &ndash; thuộc nh&oacute;m nước ICH về dược phẩm.</p>\r\n\r\n<p>Lợi thế cạnh tranh n&agrave;y gi&uacute;p Pymepharco chiếm lĩnh thị trường c&aacute;c sản phẩm thuốc đạt ti&ecirc;u chuẩn quốc tế (EU-GMP / PIC/s), đưa Pymepharco vươn l&ecirc;n top nh&agrave; sản xuất v&agrave; cung ứng dược phẩm h&agrave;ng đầu Việt Nam, g&oacute;p phần đưa ng&agrave;nh dược Việt Nam ph&aacute;t triển mạnh mẽ v&agrave; hội nhập thế giới.</p>\r\n','','','','','le-khoi-cong-xay-dung-nha-may-non-betalactam-theo-tieu-chuan-eu-gmp-pics-va-team-betalactam-sterile-pymepharco-da-hoan-thanh-xuat-sac-dot-thanh-tra-tieu-chuan-eu-gmp','2021-08-09 03:29:04','/assets/images/placeholder.png',10,NULL,NULL,NULL),
(17,'CHÚC MỪNG THÀNH CÔNG EU-GMP THUỐC TIÊM BETALACTAM','<p><strong>Chủ tịch Hội đồng Quản trị ch&uacute;c mừng Team Betalactam Sterile&nbsp;</strong><strong>P</strong><strong>YMEPHARCO ho&agrave;n th&agrave;nh xuất sắc đợt thanh tra ti&ecirc;u chuẩn EU-GMP Thuốc ti&ecirc;m Betalactam do Cơ quan dược phẩm Ch&acirc;u &Acirc;u Hessen tại Darmstadt &ndash; Cộng h&ograve;a Li&ecirc;n bang Đức x&eacute;t duyệt&nbsp;&nbsp;từ ng&agrave;y 24/01 đến ng&agrave;y 31/01/2018.</strong></p>\r\n\r\n<p><img alt=\"\" src=\"/assets/userfiles/files/KBCC6717.jpg\" /></p>\r\n','','','','','chuc-mung-thanh-cong-eu-gmp-thuoc-tiem-betalactam','2021-08-09 03:29:31','/assets/images/placeholder.png',10,NULL,NULL,NULL),
(18,'PYMEPHARCO LẬP CÚ ĐÚP GIẢI THƯỞNG TOP 10 CÔNG TY DƯỢC VIỆT NAM UY TÍN VÀ TOP 500 DOANH NGHIỆP LỚN NHẤT VIỆT NAM NĂM 2017','<p><strong>Ng&agrave;y 19/01/2018, CTCP PYMEPHARCO (HOSE: PME) đ&atilde; xuất sắc một l&uacute;c nhận 2 giải thưởng &ldquo;Top 10 C&ocirc;ng ty Dược Việt Nam Uy t&iacute;n&rdquo; v&agrave; &ldquo;Top 500 doanh nghiệp lớn nhất Việt Nam&rdquo; năm 2017 do C&ocirc;ng ty Cổ phần B&aacute;o c&aacute;o Đ&aacute;nh gi&aacute; Việt Nam phối hợp c&ugrave;ng B&aacute;o VietNamNet &ndash; Bộ Th&ocirc;ng tin &amp; Truyền th&ocirc;ng tổ chức&nbsp;</strong><strong>tại Kh&aacute;ch sạn Grand Plaza H&agrave; Nội.</strong></p>\r\n\r\n<p><a href=\"https://www.pymepharco.com/wp-content/uploads/2018/01/t1.png\"><img alt=\"\" src=\"https://www.pymepharco.com/wp-content/uploads/2018/01/t1-1024x773.png\" style=\"height:773px; width:1024px\" /></a></p>\r\n\r\n<p>Đ&acirc;y l&agrave; năm thứ 11 Bảng xếp hạng VNR500 được ch&iacute;nh thức c&ocirc;ng bố nhằm t&ocirc;n vinh những doanh nghiệp đ&atilde; đạt được những th&agrave;nh tựu xuất sắc trong hoạt động sản xuất kinh doanh trong năm t&agrave;i ch&iacute;nh 2017.</p>\r\n\r\n<p><a href=\"https://www.pymepharco.com/wp-content/uploads/2018/01/top3.jpg\"><img alt=\"\" src=\"https://www.pymepharco.com/wp-content/uploads/2018/01/top3.jpg\" style=\"height:720px; width:528px\" /></a></p>\r\n\r\n<p>Top 10 doanh nghiệp Dược uy t&iacute;n Việt Nam v&agrave; Top 500 doanh nghiệp lớn nhất Việt Nam được x&acirc;y dựng dựa tr&ecirc;n nghi&ecirc;n cứu về ảnh hưởng của c&aacute;c yếu tố t&agrave;i ch&iacute;nh, h&igrave;nh ảnh doanh nghiệp tr&ecirc;n truyền th&ocirc;ng v&agrave; đ&aacute;nh gi&aacute; của c&aacute;c chuy&ecirc;n gia t&agrave;i ch&iacute;nh, cụ thể bao gồm: (1) Năng lực t&agrave;i ch&iacute;nh thể hiện tr&ecirc;n b&aacute;o c&aacute;o t&agrave;i ch&iacute;nh gần nhất (tổng t&agrave;i sản, tổng doanh thu, lợi nhuận sau thuế, hiệu quả sử dụng vốn&hellip;); (2) Uy t&iacute;n truyền th&ocirc;ng được đ&aacute;nh gi&aacute; bằng phương ph&aacute;p Media Coding &ndash; m&atilde; h&oacute;a c&aacute;c b&agrave;i viết về c&ocirc;ng ty tr&ecirc;n c&aacute;c k&ecirc;nh truyền th&ocirc;ng c&oacute; ảnh hưởng; (3) Khảo s&aacute;t chuy&ecirc;n gia trong ng&agrave;nh dược; Khảo s&aacute;t dược sỹ/hiệu thuốc v&agrave; Khảo s&aacute;t doanh nghiệp được thực hiện trong th&aacute;ng 12/2017 về quy m&ocirc; vốn, thị trường, lao động, tốc độ tăng trưởng doanh thu, lợi nhuận, kế hoạch hoạt động trong năm 2017&hellip;</p>\r\n\r\n<p>Theo kế hoạch, năm 2017, PYMEPHARCO đặt mục ti&ecirc;u 1.573 tỷ đồng doanh thu thuần v&agrave; 300 tỷ đồng lợi nhuận trước thuế, tỷ lệ cổ tức 20%.</p>\r\n\r\n<p>Cụ thể, năm 2017 vừa qua PYMEPHARCO ( HOSE: PME) vượt kế hoạch với kết quả doanh thu thuần(DTT) hơn 1.622 tỉ đồng, lợi nhuận trước thuế 359 tỉ đồng. Ri&ecirc;ng qu&yacute; 4/2017 doanh thu thuần đạt hơn 423 tỷ đồng, lợi nhuận trước thuế 89 tỉ đồng. Kết quả kinh doanh của PYMEPHARCO rất tốt v&agrave; tăng trưởng đều đặn theo xu hướng chung kể từ năm 2012.</p>\r\n\r\n<p><a href=\"https://www.pymepharco.com/wp-content/uploads/2018/01/t2.jpg\"><img alt=\"\" src=\"https://www.pymepharco.com/wp-content/uploads/2018/01/t2-1024x707.jpg\" style=\"height:707px; width:1024px\" /></a>Hiệu quả kinh doanh của PYMEPHARCO hết sức ấn tượng, lợi nhuận năm 2017 so với 2016 tăng gần 20%.</p>\r\n\r\n<p><a href=\"https://www.pymepharco.com/wp-content/uploads/2018/01/t3.jpg\"><img alt=\"\" src=\"https://www.pymepharco.com/wp-content/uploads/2018/01/t3-1024x758.jpg\" style=\"height:758px; width:1024px\" /></a>PYMEPHARCO được v&iacute; như v&agrave;ng r&ograve;ng trong ng&agrave;nh dược phẩm đ&aacute;p ứng triển vọng cao của c&aacute;c nh&agrave; đầu tư.</p>\r\n','','','','','pymepharco-lap-cu-dup-giai-thuong-top-10-cong-ty-duoc-viet-nam-uy-tin-va-top-500-doanh-nghiep-lon-nhat-viet-nam-nam-2017','2021-08-09 03:30:27','/assets/images/placeholder.png',10,NULL,NULL,NULL),
(19,'DANH MỤC SẢN PHẨM PYMEPHARCO ĐƯỢC CHỨNG MINH TƯƠNG ĐƯƠNG SINH HỌC / TƯƠNG ĐƯƠNG ĐIỀU TRỊ VÀ ĐANG CHỜ BỘ Y TẾ CÔNG BỐ','<p>Vừa qua, trong danh mục c&ocirc;ng bố c&aacute;c sản phẩm được chứng minh tương đương sinh học do Cục Quản l&yacute; Dược &ndash; Bộ Y Tế ban h&agrave;nh , C&ocirc;ng ty Cổ phần PYMEPHARCO tự h&agrave;o l&agrave; doanh nghiệp dược Việt Nam c&oacute; số dược chất được c&ocirc;ng bố nhiều nhất.<br />\r\nV&agrave; một số sản phẩm đang chờ Bộ Y Tế c&ocirc;ng bố:</p>\r\n\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" class=\"text-center w-100\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>STT</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>T&Ecirc;N SẢN PHẨM</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>HOẠT CHẤT</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\" style=\"vertical-align:top\"><strong>TƯƠNG ĐƯƠNG SINH HỌC</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p>1</p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">CEFASTAD 500</td>\r\n			<td style=\"vertical-align:top\">Cefalexin 500 mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p>2</p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">CEFASTAD 250</td>\r\n			<td style=\"vertical-align:top\">Cefalexin 250 mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p>3</p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">TATANOL EXTRA</td>\r\n			<td style=\"vertical-align:top\">Acetaminophen 325 mg&nbsp; &amp; Ibuprofen 200 mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p>4</p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">MOBIMED 7,5</td>\r\n			<td style=\"vertical-align:top\">Meloxicam 7,5 mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p>5</p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">LEVOQUIN 250</td>\r\n			<td style=\"vertical-align:top\">Levofloxacin 250 mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p>6</p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">PYMECLAROCIL 250</td>\r\n			<td style=\"vertical-align:top\">Clarithromycin 250 mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p>7</p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">MENISON 4 mg</td>\r\n			<td style=\"vertical-align:top\">Methylprednisolon 4 mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p>8</p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">AMLODIPIN PMP 5 mg</td>\r\n			<td style=\"vertical-align:top\">Amlodipin 5 mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p>9</p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">PYME AM5</td>\r\n			<td style=\"vertical-align:top\">Amlodipin 5 mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p>10</p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">NEGACEF 250</td>\r\n			<td style=\"vertical-align:top\">Cefuroxim 250 mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p>11</p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">PYZACAR 50</td>\r\n			<td style=\"vertical-align:top\">&nbsp;Losartan 50 mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p>12</p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">TENOCAR 50</td>\r\n			<td style=\"vertical-align:top\">Atenolol 50 mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p>13</p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">ROSTOR 10</td>\r\n			<td style=\"vertical-align:top\">Rosuvastatin 10 mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p>14</p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">DIAPRID 2 mg</td>\r\n			<td style=\"vertical-align:top\">Glimepiride 2mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p>15</p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">PYMETPHAGE 850</td>\r\n			<td style=\"vertical-align:top\">Metformin HCl 850 mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p>16</p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">PYMETPHAGE 500</td>\r\n			<td style=\"vertical-align:top\">Metformin HCl 500 mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p>17</p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">PYME DIAPRO MR</td>\r\n			<td style=\"vertical-align:top\">Gliclazid 30 mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p>18</p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">FIXIMSTAD 100</td>\r\n			<td style=\"vertical-align:top\">Cefixim 100mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p>19</p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">FIXIMSTAD 200</td>\r\n			<td style=\"vertical-align:top\">Cefixim 200mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\" style=\"vertical-align:top\"><strong>TƯƠNG ĐƯƠNG ĐIỀU TRỊ</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p>1</p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">ALFACEF 1g</td>\r\n			<td style=\"vertical-align:top\">Ceftazidim 1g</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n','','','','','danh-muc-san-pham-pymepharco-duoc-chung-minh-tuong-duong-sinh-hoc-tuong-duong-dieu-tri-va-dang-cho-bo-y-te-cong-bo','2021-08-09 03:33:23','/assets/images/placeholder.png',10,NULL,NULL,NULL),
(20,'SẢN PHẨM PYMEPHARCO VÀ TƯƠNG ĐƯƠNG SINH HỌC','<p>Hiện nay kh&aacute;i niệm Tương đương sinh học (TĐSH) bao gồm: TĐSH in vitro bằng thử nghiệm độ h&ograve;a tan v&agrave; TĐSH in vivo, cần ph&acirc;n biệt hai kh&aacute;i niệm tr&ecirc;n để c&oacute; thể hiểu đ&uacute;ng về &yacute; nghĩa TĐSH.</p>\r\n\r\n<p><a href=\"https://www.pymepharco.com/wp-content/uploads/2013/10/vivo.jpg\"><img alt=\"vivo\" src=\"https://www.pymepharco.com/wp-content/uploads/2013/10/vivo.jpg\" style=\"height:363px; width:642px\" /></a><br />\r\nTr&ecirc;n thực tế, nhiều chế phẩm thuốc c&oacute; c&ugrave;ng hoạt chất, c&ugrave;ng dạng b&agrave;o chế nhưng tốc độ v&agrave; mức độ hấp thu v&agrave;o m&aacute;u lại kh&aacute;c nhau. Chất lượng nguy&ecirc;n liệu, th&agrave;nh phần t&aacute; dược v&agrave; kỹ thuật b&agrave;o chế l&agrave; những yếu tố c&oacute; nhiều ảnh hưởng tới sự hấp thu của thuốc. Dựa v&agrave;o kết quả đ&aacute;nh gi&aacute; TĐSH, nh&agrave; sản xuất c&oacute; thể tự khẳng định chất lượng đ&iacute;ch thực cho sản phẩm của m&igrave;nh; nh&agrave; quản l&yacute; c&oacute; th&ecirc;m cơ sở để xem x&eacute;t, thẩm định khi cấp ph&eacute;p lưu h&agrave;nh v&agrave; c&aacute;c b&aacute;c sĩ c&oacute; th&ecirc;m c&aacute;c th&ocirc;ng tin về dược động học để lựa chọn, thay thế thuốc trong điều trị.</p>\r\n\r\n<p>Phương ph&aacute;p đ&aacute;nh gi&aacute; TĐSH l&agrave; so s&aacute;nh c&aacute;c th&ocirc;ng số dược động học (Cmax, AUC, Tmax) của thuốc nghi&ecirc;n cứu với thuốc đối chứng. Thuốc đối chứng d&ugrave;ng để so s&aacute;nh thường được sử dụng l&agrave; chế phẩm được ph&aacute;t minh đầu ti&ecirc;n (thuốc brand name), đ&atilde; được cấp ph&eacute;p lưu h&agrave;nh tr&ecirc;n thế giới hoặc một thuốc tương tự c&oacute; chất lượng cao đang lưu h&agrave;nh ở thời điểm nghi&ecirc;n cứu.</p>\r\n\r\n<p>TĐSH (Bioequivalence) l&agrave; thử nghiệm bắt buộc đối với tất cả c&aacute;c thuốc generic trước khi lưu h&agrave;nh ở c&aacute;c nước ph&aacute;t triển (Mỹ, &Uacute;c, Cộng đồng Ch&acirc;u &Acirc;u&hellip;). Tuy nhi&ecirc;n ở nước ta, kh&aacute;i niệm n&agrave;y mới chỉ phổ biến v&agrave;i năm gần đ&acirc;y. Theo thống k&ecirc;, tr&ecirc;n thị trường dược phẩm ở Việt Nam hiện nay c&oacute; hơn 90% thuốc chưa được thử TĐSH, trong khi vấn đề TĐSH ng&agrave;y c&agrave;ng trở n&ecirc;n cấp b&aacute;ch g&oacute;p phần th&uacute;c đẩy nền c&ocirc;ng nghiệp dược Việt Nam ph&aacute;t triển v&agrave; hội nhập c&ugrave;ng thế giới.</p>\r\n\r\n<p>PYMEPHARCO hiện l&agrave; một trong những c&ocirc;ng ty đi đầu trong việc đưa c&aacute;c sản phẩm chứng minh TĐSH. Số lượng sản phẩm được thử nghiệm TĐSH của c&ocirc;ng ty đ&atilde; gần chạm đến con số 40 sản phẩm. Đ&acirc;y l&agrave; số lượng rất lớn so với mặt bằng chung về thử nghiệm TĐSH của cả nước v&agrave; l&agrave; niềm tự h&agrave;o của PYMEPHARCO. Điều n&agrave;y cho thấy c&ocirc;ng ty rất c&oacute; &yacute; thức trong việc đảm bảo minh bạch chất lượng thuốc v&agrave; đủ tư tin về năng lực sản xuất cũng như chất lượng sản phẩm của m&igrave;nh.</p>\r\n\r\n<p>Thực tế đ&atilde; chứng minh, tất cả c&aacute;c sản phẩm của PYMEPHARCO được tiến h&agrave;nh thử nghiệm đều đạt kết quả TĐSH với thuốc thuốc đối chứng của c&aacute;c quốc gia ph&aacute;t triển.<br />\r\nĐiều n&agrave;y sẽ tạo niềm tin c&oacute; cơ sở cho thầy thuốc v&agrave; bệnh nh&acirc;n về chất lượng thuốc của c&ocirc;ng ty, khẳng định ưu thế vượt trội của mặt h&agrave;ng tr&ecirc;n thị trường thuốc generic, b&ecirc;n cạnh đ&oacute; vẫn đảm bảo gi&aacute; th&agrave;nh ph&ugrave; hợp với thu nhập b&igrave;nh qu&acirc;n của người d&acirc;n Việt Nam.</p>\r\n\r\n<p>Với mục ti&ecirc;u h&agrave;ng đầu &ldquo;Vươn tới ưu việt&rdquo; trong c&ocirc;ng t&aacute;c chăm s&oacute;c sức khỏe cho tất cả người d&acirc;n Việt Nam, PYMEPHARCO lu&ocirc;n nỗ lực hết m&igrave;nh để sản xuất ra những sản phẩm tốt nhất với gi&aacute; th&agrave;nh ph&ugrave; hợp nhất, v&agrave; điều n&agrave;y đ&atilde; được chứng minh cụ thể bằng c&aacute;c kết quả thử nghiệm TĐSH x&aacute;c thực được tiến hảnh ở c&aacute;c trung t&acirc;m TĐSH uy t&iacute;n h&agrave;ng đầu quốc gia: Viện Kiềm nghiệm Trung Ương v&agrave; Viện Kiểm nghiệm thuốc TP.HCM.</p>\r\n\r\n<p>C&aacute;c sản phẩm được c&ocirc;ng ty tiến h&agrave;nh thử nghiệm TĐSH chủ yếu thuộc 4 d&ograve;ng sản phẩm lớn v&agrave; đều l&agrave; những sản phẩm chiến lược của c&ocirc;ng ty, bao gồm: Thuốc kh&aacute;ng sinh, Thuốc giảm đau &ndash; hạ sốt &ndash; kh&aacute;ng vi&ecirc;m, Thuốc tim mạch, Thuốc trị đ&aacute;i th&aacute;o đường.</p>\r\n\r\n<p><strong>DANH MỤC SẢN PHẨM ĐẠT TƯƠNG ĐƯƠNG SINH HỌC<br />\r\nCỦA PYMEPHARCO</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table align=\"\" border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:600px\" summary=\"\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>STT</strong></td>\r\n			<td><strong>HOẠT CHẤT</strong></td>\r\n			<td><strong>SẢN PHẨM PYMEPHARCO</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>&nbsp;Cefalexin 250 mg</td>\r\n			<td>&nbsp;CEFALEXIN STADA 250mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td>Cefalexin 500 mg</td>\r\n			<td>&nbsp;CEFALEXIN STADA 500mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3</td>\r\n			<td>Cefaclor 250 mg</td>\r\n			<td>&nbsp;CEFACLOR STADA 250 mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4</td>\r\n			<td>Cefuroxim 250 mg</td>\r\n			<td>&nbsp;NEGACEF 250mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>5</td>\r\n			<td>&nbsp;Cefuroxim 500 mg</td>\r\n			<td>&nbsp;NEGACEF 500mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>6</td>\r\n			<td>Cefadroxil 500 mg</td>\r\n			<td>&nbsp;DROXICEF 500 mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>7</td>\r\n			<td>&nbsp;Ciprofloxacin 500 mg</td>\r\n			<td>&nbsp;PYCIP</td>\r\n		</tr>\r\n		<tr>\r\n			<td>8</td>\r\n			<td>Clarithromycin 250 mg</td>\r\n			<td>&nbsp;PymeCLAROCIL 250</td>\r\n		</tr>\r\n		<tr>\r\n			<td>9</td>\r\n			<td>Clarithromycin 500 mg</td>\r\n			<td>&nbsp;PymeCLAROCIL 500</td>\r\n		</tr>\r\n		<tr>\r\n			<td>10</td>\r\n			<td>Levofloxacin 250 mg</td>\r\n			<td>&nbsp;LEVOQUIN 250</td>\r\n		</tr>\r\n		<tr>\r\n			<td>11</td>\r\n			<td>Levofloxacin 500 mg</td>\r\n			<td>&nbsp;LEVOQUIN 500</td>\r\n		</tr>\r\n		<tr>\r\n			<td>12</td>\r\n			<td>Acetaminophen 500 mg</td>\r\n			<td>&nbsp;TATANOL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>13</td>\r\n			<td>Acetaminophen 325 mg&nbsp; &amp; Ibuprofen 200 mg</td>\r\n			<td>&nbsp;TATANOL EXTRA</td>\r\n		</tr>\r\n		<tr>\r\n			<td>14</td>\r\n			<td>Meloxicam 7,5 mg</td>\r\n			<td>&nbsp;MOBIMED 7,5</td>\r\n		</tr>\r\n		<tr>\r\n			<td>15</td>\r\n			<td>Meloxicam 15 mg</td>\r\n			<td>&nbsp;MOBIMED 15</td>\r\n		</tr>\r\n		<tr>\r\n			<td>16</td>\r\n			<td>Methylprednisolon 4 mg</td>\r\n			<td>&nbsp;MENISON 4mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>17</td>\r\n			<td>Methylprednisolon 16 mg</td>\r\n			<td>&nbsp;MENISON 16mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>18</td>\r\n			<td>Amlodipin 5 mg</td>\r\n			<td>&nbsp;Amlodipin PMP 5mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>19</td>\r\n			<td>Amlodipin 10 mg</td>\r\n			<td>&nbsp;Pyme AM 10</td>\r\n		</tr>\r\n		<tr>\r\n			<td>20</td>\r\n			<td>&nbsp;Amlodipin 5 mg</td>\r\n			<td>&nbsp;Pyme AM 5</td>\r\n		</tr>\r\n		<tr>\r\n			<td>21</td>\r\n			<td>&nbsp;Atenolol 50 mg</td>\r\n			<td>&nbsp;TENOCAR 50</td>\r\n		</tr>\r\n		<tr>\r\n			<td>22</td>\r\n			<td>&nbsp;Atenolol 100 mg</td>\r\n			<td>&nbsp;TENOCAR 100</td>\r\n		</tr>\r\n		<tr>\r\n			<td>23</td>\r\n			<td>&nbsp;Losartan 50 mg</td>\r\n			<td>&nbsp;PYZACAR 50</td>\r\n		</tr>\r\n		<tr>\r\n			<td>24</td>\r\n			<td>&nbsp;Felodipin 5mg</td>\r\n			<td>&nbsp;FLODICAR 5mg MR</td>\r\n		</tr>\r\n		<tr>\r\n			<td>25</td>\r\n			<td>&nbsp;Trimetazidin 35 mg</td>\r\n			<td>&nbsp;VASPYCAR MR</td>\r\n		</tr>\r\n		<tr>\r\n			<td>26</td>\r\n			<td>Rosuvastatin 10 mg</td>\r\n			<td>&nbsp;ROSTOR 10 mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>27</td>\r\n			<td>&nbsp;Rosuvastatin 20 mg</td>\r\n			<td>ROSTOR 20 mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>28</td>\r\n			<td>Clopidogrel 75mg</td>\r\n			<td>&nbsp;PIDOCAR</td>\r\n		</tr>\r\n		<tr>\r\n			<td>29</td>\r\n			<td>&nbsp;Metformin HCl 500 mg</td>\r\n			<td>&nbsp;PYMETPHAGE 500</td>\r\n		</tr>\r\n		<tr>\r\n			<td>30</td>\r\n			<td>&nbsp;Metformin HCl 850 mg</td>\r\n			<td>&nbsp;PYMETPHAGE 850</td>\r\n		</tr>\r\n		<tr>\r\n			<td>31</td>\r\n			<td>&nbsp;Metformin HCl 1000 mg</td>\r\n			<td>&nbsp;PYMETPHAGE 1000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>32</td>\r\n			<td>Glimepiride 2mg</td>\r\n			<td>&nbsp;DIAPRID 2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>33</td>\r\n			<td>&nbsp;Glimepiride 4mg</td>\r\n			<td>&nbsp;DIAPRID 4</td>\r\n		</tr>\r\n		<tr>\r\n			<td>34</td>\r\n			<td>Gliclazid 30 mg</td>\r\n			<td>&nbsp;PYME DIAPRO MR\r\n			<p>&nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n','','','','','san-pham-pymepharco-va-tuong-duong-sinh-hoc','2021-08-09 03:36:34','/assets/images/placeholder.png',10,NULL,NULL,NULL),
(21,'CEFASTAD 250MG – CEFASTAD 500MG','<p>Cephalexin l&agrave; kh&aacute;ng sinh cephalosporin b&aacute;n tổng hợp thế hệ 1, c&oacute; t&aacute;c dụng diệt khuẩn bằng c&aacute;ch ức chế tổng hợp vỏ tế b&agrave;o vi khuẩn. Cephalexin được d&ugrave;ng trong điều trị c&aacute;c trường hợp nhiễm khuẩn ở đường h&ocirc; hấp, đường niệu, sản phụ khoa do c&aacute;c vi khuẩn nhạy cảm.<br />\r\nGần đ&acirc;y, để quản l&yacute; thị trường thuốc v&agrave; thực hiện ch&iacute;nh s&aacute;ch khuyến kh&iacute;ch c&aacute;c doanh nghiệp trong nước, Bộ Y tế Việt Nam đ&atilde; c&oacute; quyết định kh&ocirc;ng nhận hồ sơ c&aacute;c sản phẩm Cephalexin nước ngo&agrave;i đăng k&yacute; lưu h&agrave;nh v&agrave;o Việt Nam. Hầu hết chế phẩm cephalexin đang lưu h&agrave;nh tr&ecirc;n thị trường Việt Naam l&agrave; do c&aacute;c doanh nghiệp trong nước sản xuất.</p>\r\n\r\n<p>Do đ&oacute;, y&ecirc;u cầu được đặt ra l&agrave; l&agrave;m sao để sản phẩm của doanh nghiệp nổi bật tr&ecirc;n thị trường v&agrave; chứng minh được chất lượng sản phẩm. Từ thực tế đ&oacute; v&agrave; tự tin với những ưu điểm nỗi bật của sản phẩm: sản phẩm nhượng quyền của STADApharm GmbH &ndash; GERMANY v&agrave; c&oacute; nguồn nguy&ecirc;n liệu từ Ch&acirc;u &Acirc;u, CEFASTAD đ&atilde; được tiến h&agrave;nh chứng minh tương đương sinh học với chế phẩm đối chiếu l&agrave; Medolexin &reg; (do c&ocirc;ng ty Medochemie Ltd. &ndash; Cyprus sản xuất).</p>\r\n\r\n<p>CEFASTAD l&agrave; một trong những sản phẩm được chứng minh tương đương sinh học đầu ti&ecirc;n ở Việt Nam. Thử nghiệm được tiến h&agrave;nh trong từ năm 2005, do Trung t&acirc;m Đ&aacute;nh gi&aacute; tương đương sinh học thuộc Viện kiểm nghiệm thuốc Trung Ương thực hiện tr&ecirc;n 14 người t&igrave;nh nguyện khỏe mạnh.</p>\r\n\r\n<p><a href=\"https://www.pymepharco.com/wp-content/uploads/2013/10/cepha.jpg\"><img alt=\"cepha\" src=\"https://www.pymepharco.com/wp-content/uploads/2013/10/cepha.jpg\" style=\"height:345px; width:505px\" /></a></p>\r\n\r\n<p>Kết quả từ đường cong nồng độ trung b&igrave;nh Cephalexin trong huyết tương theo thời gian của 14 người t&igrave;nh nguyện sau khi uống thuốc đ&atilde; cho kết luận:<br />\r\nHai chế phẩm vi&ecirc;n nang CEFASTAD 500mg (C&ocirc;ng ty CP PYMEPHARCO) v&agrave; vi&ecirc;n nang Medolexin&reg; 500mg (C&ocirc;ng ty Medochemie Ltd. &ndash; Cyprus) tương đương sinh học in vivo.</p>\r\n\r\n<p>C&ugrave;ng với nghi&ecirc;n cứu chứng minh tương đương độ h&ograve;a tan In vitro đồng thời cũng đi đến kết luận:<br />\r\nChế phẩm vi&ecirc;n nang CEFASTAD 250mg tương đương sinh học in vivo so với chế phẩm vi&ecirc;n nang Medolexin&reg; 250mg (C&ocirc;ng ty Medochemie Ltd. &ndash; Cyprus).</p>\r\n\r\n<p>Kết quả n&agrave;y l&agrave; minh chứng r&otilde; r&agrave;ng nhất, đảm bảo sản phẩm CEFASTAD do c&ocirc;ng ty CP PYMEPHARCO sản xuất cho hiệu quả tương đương với c&aacute;c chế phẩm nổi tiếng Ch&acirc;u &Acirc;u nhưng lại c&oacute; gi&aacute; th&agrave;nh thấp hơn rất nhiều lần sẽ l&agrave; một lựa chọn hợp l&yacute; đ&aacute;p ứng y&ecirc;u cầu An to&agrave;n &ndash; Hiệu quả &ndash; Kinh tế, gi&uacute;p người d&acirc;n an t&acirc;m trong việc chữa bệnh.</p>\r\n','','','','','cefastad-250mg-cefastad-500mg','2021-08-09 03:37:34','/assets/images/placeholder.png',10,NULL,NULL,NULL);

/*Table structure for table `pet_news_tag` */

DROP TABLE IF EXISTS `pet_news_tag`;

CREATE TABLE `pet_news_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) DEFAULT NULL,
  `news_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

/*Data for the table `pet_news_tag` */

insert  into `pet_news_tag`(`id`,`tag_id`,`news_id`) values 
(13,11,1),
(14,10,2),
(15,12,3),
(16,12,4),
(17,12,5),
(18,12,6),
(19,9,7),
(20,13,8),
(21,9,9),
(22,9,10),
(23,9,11),
(24,9,12),
(25,9,13),
(26,11,14),
(27,11,15),
(28,11,16),
(29,11,17),
(30,11,18),
(31,13,19),
(32,13,20),
(33,13,21);

/*Table structure for table `pet_options` */

DROP TABLE IF EXISTS `pet_options`;

CREATE TABLE `pet_options` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(256) DEFAULT NULL,
  `value` longtext,
  `title` varchar(100) DEFAULT NULL,
  `comment` varchar(256) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `order` int(11) DEFAULT '0',
  `group` varchar(256) DEFAULT NULL,
  `deleted` tinyint(9) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

/*Data for the table `pet_options` */

insert  into `pet_options`(`id`,`key`,`value`,`title`,`comment`,`type`,`order`,`group`,`deleted`) values 
(1,'hot_line','028 7770 4567','Số điện thoại',NULL,'varchar',5,'general',0),
(3,'dia_chi','R1-08-03, Tòa nhà Everich, số 968 Ba Tháng Hai, Phường 15, Quận 11, Thành phố Hồ Chí Minh','Địa chỉ',NULL,'varchar',3,'general',0),
(4,'mo_ta','Hoàn thiện giá trị cuộc sống thông qua dinh dưỡng an toàn và có trách nhiệm','Mô tả',NULL,'text',2,'general',0),
(5,'email','cskh@simba.com.vn','Email',NULL,'varchar',4,'general',0),
(6,'hour_open','8h - 18h','Giờ mở cửa',NULL,'text',6,'general',0),
(9,'company_name',' Công Ty Cổ Phần Thương Mại Sim Ba','Tên công ty',NULL,'varchar',1,'general',0),
(10,'email_server','smtp.gmail.com','Email Server',NULL,'varchar',0,'send_mail',0),
(11,'email_port','465','Port',NULL,'varchar',0,'send_mail',0),
(12,'email_name','Foodzone E-shop','Name',NULL,'varchar',0,'send_mail',0),
(13,'email_email','lytranuit@gmail.com','Email',NULL,'varchar',0,'send_mail',0),
(18,'email_security','ssl','Security',NULL,'varchar',0,'send_mail',0),
(19,'email_username','lytranuit@gmail.com','Username',NULL,'varchar',0,'send_mail',0),
(20,'email_password','vexdxgjkbyqtbsf','Password',NULL,'varchar',0,'send_mail',0),
(21,'email_contact','binh.nguyen@simba.com.vn,cskh@simba.com.vn,simbasales@simba.com.vn,so-support@simba.com.vn,lytranuit@gmail.com,minh@greenitsolution.vn','Email Contact Name',NULL,'varchar',0,'send_mail',0);

/*Table structure for table `pet_product` */

DROP TABLE IF EXISTS `pet_product`;

CREATE TABLE `pet_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` float DEFAULT NULL,
  `slug` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_vi` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `name_en` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `name_jp` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `description_vi` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `description_en` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `description_jp` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `detail_vi` text CHARACTER SET utf8,
  `detail_en` text CHARACTER SET utf8,
  `detail_jp` text CHARACTER SET utf8,
  `image_url` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `active` int(11) DEFAULT '1',
  `deleted_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `name_vi` (`name_vi`),
  FULLTEXT KEY `name_jp` (`name_jp`),
  FULLTEXT KEY `name_en` (`name_en`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `pet_product` */

insert  into `pet_product`(`id`,`code`,`price`,`slug`,`name_vi`,`name_en`,`name_jp`,`description_vi`,`description_en`,`description_jp`,`detail_vi`,`detail_en`,`detail_jp`,`image_url`,`order`,`date`,`active`,`deleted_at`,`updated_at`,`created_at`) values 
(1,NULL,NULL,NULL,'Negacef 750mg','','','','','',NULL,NULL,NULL,'/assets/userfiles/images/product/1.jpg',NULL,'2021-08-06 01:48:21',1,NULL,NULL,NULL),
(2,NULL,NULL,'','Negacef 500','','','<p><strong>TH&Agrave;NH PHẦN:</strong>&nbsp;Candesartan cilexetil&nbsp;</p>\r\n\r\n<p><strong>H&Agrave;M LƯỢNG:</strong>&nbsp;8mg</p>\r\n\r\n<p><strong>QUY C&Aacute;CH:</strong>&nbsp;Hộp 2 vỉ x 14 vi&ecirc;n n&eacute;n</p>\r\n','','','','','','/assets/userfiles/images/product/2.jpg',NULL,'2021-08-06 01:48:46',1,NULL,NULL,NULL),
(3,NULL,NULL,NULL,'Pymetphage-500','','','','','',NULL,NULL,NULL,'/assets/userfiles/images/product/3.jpg',NULL,'2021-08-06 01:49:09',1,NULL,NULL,NULL),
(4,NULL,NULL,NULL,'negacef 1.5g','','','','','',NULL,NULL,NULL,'/assets/userfiles/images/product/4.jpg',NULL,'2021-08-06 01:49:34',1,NULL,NULL,NULL),
(5,NULL,NULL,NULL,'Tatanol children','','','','','',NULL,NULL,NULL,'/assets/userfiles/images/product/5.jpg',NULL,'2021-08-06 01:50:05',1,NULL,NULL,NULL),
(6,NULL,NULL,'','Mobimed','','','<p>test</p>\r\n','','',NULL,NULL,NULL,'/assets/userfiles/images/product/7.jpg',NULL,'2021-08-06 01:50:38',1,NULL,NULL,NULL),
(7,NULL,NULL,NULL,'Pymetphage 1000','','','','','',NULL,NULL,NULL,'/assets/userfiles/images/product/9.jpg',NULL,'2021-08-06 01:50:59',1,NULL,NULL,NULL),
(8,NULL,NULL,'vivace','Vivace','','','','','','','','','/assets/userfiles/images/product/thuoc-vivace-pymepharco-giup-tang-cuong-suc-de-khang-cho-co-the_00335.jpg',NULL,'2021-08-06 01:51:50',1,NULL,NULL,NULL);

/*Table structure for table `pet_product_category` */

DROP TABLE IF EXISTS `pet_product_category`;

CREATE TABLE `pet_product_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `order` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `pet_product_category` */

insert  into `pet_product_category`(`id`,`product_id`,`category_id`,`order`) values 
(1,2,2,0),
(2,8,1,0),
(3,8,2,0),
(4,8,3,0),
(5,8,4,0);

/*Table structure for table `pet_product_image` */

DROP TABLE IF EXISTS `pet_product_image`;

CREATE TABLE `pet_product_image` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `image_url` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `pet_product_image` */

/*Table structure for table `pet_slider` */

DROP TABLE IF EXISTS `pet_slider`;

CREATE TABLE `pet_slider` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image_url` varchar(1000) DEFAULT NULL,
  `text` longtext,
  `url` varchar(256) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `pet_slider` */

insert  into `pet_slider`(`id`,`image_url`,`text`,`url`,`order`,`deleted_at`,`created_at`,`updated_at`) values 
(5,'/assets/userfiles/images/nhamay2-crop.jpg','<p><span style=\"color:#ffffff\">C&ocirc;ng ty đang hoạch định những bước đi cần thiết, ph&aacute;t triển thương hiệu <strong>PYMEPHARCO </strong>cũng như hướng tới việc cung cấp cho cộng đồng những sản phẩm c&oacute; chất lượng cao v&agrave; xuất khẩu ra thị trường quốc tế.</span></p>\r\n','https://www.facebook.com/FoodzoneofSimba',1,NULL,NULL,NULL),
(6,'/assets/userfiles/images/hinh-nha-may-hoang-van-thu.jpg','<p><span style=\"color:#ffffff\">Thương hiệu <strong>PYMEPHARCO </strong>đ&atilde; tạo được thế vững chắc v&agrave; c&oacute; uy t&iacute;n tr&ecirc;n thị trường trong v&agrave; ngo&agrave;i nước. Ph&aacute;t huy những th&agrave;nh quả đ&atilde; đạt được, c&ocirc;ng ty tiếp tục đẩy mạnh d&ograve;ng sản phẩm Cephalosporin trong hệ thống cơ cấu sản phẩm.</span></p>\r\n','http://www.foodzone.vn/index/category/77',2,NULL,NULL,NULL),
(8,'/assets/userfiles/images/test/03_Jula0cde998a6e883f932065072c64083a6.jpg','Bánh Chocolate bắp Choco Shimi Ginbis','http://www.foodzone.vn/index/details/5461',5,'2021-07-21 20:18:49',NULL,NULL),
(9,'/assets/userfiles/images/test/03_Jula0cde998a6e883f932065072c64083a6.jpg',NULL,'',5,'2021-07-07 06:47:03',NULL,NULL),
(10,'/assets/userfiles/files/Colorful-Free-Medical-Banner-Template.png','','',0,'2021-08-05 22:17:41',NULL,NULL);

/*Table structure for table `pet_tag` */

DROP TABLE IF EXISTS `pet_tag`;

CREATE TABLE `pet_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name_vi` varchar(256) DEFAULT NULL,
  `description_vi` text,
  `name_en` varchar(256) DEFAULT NULL,
  `description_en` text,
  `name_jp` varchar(256) DEFAULT NULL,
  `description_jp` text,
  `date` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `is_home` int(11) DEFAULT '0',
  `image_url` varchar(1000) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `pet_tag` */

insert  into `pet_tag`(`id`,`name_vi`,`description_vi`,`name_en`,`description_en`,`name_jp`,`description_jp`,`date`,`user_id`,`is_home`,`image_url`,`deleted_at`,`updated_at`,`created_at`) values 
(2,'Tin Tức','test','','','','','2020-12-30 20:34:59',2,0,'3','2020-12-31 03:19:20',NULL,NULL),
(3,'Giới thiệu','vbfgdertertert','','','','','2020-12-30 20:59:59',2,0,'/assets/userfiles/images/test/03_Jula0cde998a6e883f932065072c64083a6.jpg','2021-07-12 23:11:36',NULL,NULL),
(4,'Tin khuyến mãi','tếtcvbfgh','','','','','2021-07-07 19:00:05',2,1,'/assets/userfiles/images/test/03_Jula0cde998a6e883f932065072c64083a6.jpg','2021-08-08 21:58:39',NULL,NULL),
(5,'Huấn luyện','','','','','','2021-07-12 23:09:22',2,0,'/assets/images/placeholder.png','2021-08-08 21:58:43',NULL,NULL),
(6,'Dinh dưỡng','','','','','','2021-07-12 23:11:11',2,0,'/assets/images/placeholder.png','2021-08-08 21:58:45',NULL,NULL),
(7,'Đời sống','','','','','','2021-07-12 23:11:22',2,0,'/assets/images/placeholder.png','2021-08-08 21:58:47',NULL,NULL),
(8,'Hỏi đáp','','','','','','2021-07-12 23:11:28',2,0,'/assets/images/placeholder.png','2021-08-08 21:58:49',NULL,NULL),
(9,'Quan hệ cổ đông','','','','','','2021-08-08 21:59:09',10,1,'/assets/images/placeholder.png',NULL,NULL,NULL),
(10,'Tuyển dụng','','','','','','2021-08-08 21:59:49',10,0,'/assets/images/placeholder.png',NULL,NULL,NULL),
(11,'Hoạt động của PMP','','','','','','2021-08-09 04:13:14',10,1,'/assets/images/placeholder.png',NULL,NULL,NULL),
(12,'Kiến thức y học','','','','','','2021-08-08 22:35:11',10,1,'/assets/images/placeholder.png',NULL,NULL,NULL),
(13,'Tương đương sinh học','','','','','','2021-08-08 22:35:19',10,1,'/assets/images/placeholder.png',NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
