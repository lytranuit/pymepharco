/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.7.33 : Database - pymepharco
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
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

insert  into `pet_auth_groups`(`id`,`name`,`description`) values (1,'admin','Super Admin');
insert  into `pet_auth_groups`(`id`,`name`,`description`) values (2,'member','Thành viên');

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

insert  into `pet_auth_groups_users`(`group_id`,`user_id`) values (1,2);
insert  into `pet_auth_groups_users`(`group_id`,`user_id`) values (1,3);
insert  into `pet_auth_groups_users`(`group_id`,`user_id`) values (1,9);
insert  into `pet_auth_groups_users`(`group_id`,`user_id`) values (1,10);
insert  into `pet_auth_groups_users`(`group_id`,`user_id`) values (2,4);

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
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8;

/*Data for the table `pet_auth_logins` */

insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (1,'127.0.0.1','daotran@gmail.com',2,'2020-12-28 08:04:30',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (2,'127.0.0.1','daotran@gmail.com',2,'2020-12-29 07:32:47',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (3,'127.0.0.1','daotran@gmail.com',2,'2020-12-29 08:17:16',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (4,'127.0.0.1','daotran@gmail.com',2,'2020-12-29 09:18:11',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (5,'127.0.0.1','daotran@gmail.com',2,'2020-12-29 18:05:59',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (6,'127.0.0.1','daotran@gmail.com',2,'2020-12-30 00:41:38',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (7,'127.0.0.1','daotran@gmail.com',2,'2020-12-30 07:31:37',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (8,'127.0.0.1','daotran@gmail.com',2,'2020-12-30 18:05:43',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (9,'127.0.0.1','daotran@gmail.com',2,'2020-12-31 01:16:27',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (10,'127.0.0.1','daotran@gmail.com',2,'2021-01-02 04:38:51',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (11,'127.0.0.1','daotran@gmail.com',2,'2021-01-02 07:29:29',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (12,'127.0.0.1','daotran@gmail.com',2,'2021-01-03 21:38:52',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (13,'127.0.0.1','daotran@gmail.com',2,'2021-01-04 08:28:07',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (14,'127.0.0.1','daotran@gmail.com',2,'2021-01-04 08:32:04',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (15,'127.0.0.1','daotran@gmail.com',2,'2021-01-04 18:28:50',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (16,'127.0.0.1','daotran@gmail.com',2,'2021-01-05 02:13:48',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (17,'127.0.0.1','daotran@gmail.com',2,'2021-01-05 09:54:34',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (18,'127.0.0.1','daotran@gmail.com',2,'2021-01-05 21:10:52',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (19,'127.0.0.1','daotran@gmail.com',2,'2021-01-06 01:37:46',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (20,'127.0.0.1','daotran@gmail.com',2,'2021-01-07 01:51:30',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (21,'127.0.0.1','daotran@gmail.com',2,'2021-01-07 08:09:01',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (22,'127.0.0.1','daotran@gmail.com',2,'2021-01-07 09:47:01',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (23,'127.0.0.1','lytranuit@gmail.com',3,'2021-01-07 20:39:55',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (24,'127.0.0.1','daotran@gmail.com',2,'2021-01-07 20:46:44',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (25,'127.0.0.1','daotran@gmail.com',2,'2021-01-12 20:48:01',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (26,'127.0.0.1','daotran@gmail.com',2,'2021-01-13 21:17:32',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (27,'127.0.0.1','daotran@gmail.com',2,'2021-01-14 02:12:38',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (28,'127.0.0.1','daotran@gmail.com',2,'2021-01-14 20:51:17',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (29,'127.0.0.1','daotran@gmail.com',2,'2021-01-17 18:14:46',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (30,'127.0.0.1','daotran@gmail.com',2,'2021-01-18 19:32:45',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (31,'127.0.0.1','daotran@gmail.com',2,'2021-01-18 19:37:25',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (32,'127.0.0.1','daotran@gmail.com',2,'2021-01-19 22:09:21',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (33,'127.0.0.1','daotran@gmail.com',2,'2021-01-20 03:37:24',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (34,'127.0.0.1','daotran@gmail.com',2,'2021-01-20 03:39:24',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (35,'127.0.0.1','daotran@gmail.com',2,'2021-01-21 17:52:27',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (36,'127.0.0.1','daotran@gmail.com',2,'2021-01-22 03:07:19',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (37,'127.0.0.1','daotran@gmail.com',2,'2021-01-22 21:51:32',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (38,'127.0.0.1','daotran@gmail.com',2,'2021-01-24 18:08:25',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (39,'127.0.0.1','daotran',NULL,'2021-05-28 07:35:23',0);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (40,'127.0.0.1','admin',NULL,'2021-05-28 07:35:29',0);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (41,'127.0.0.1','admin',NULL,'2021-05-28 07:42:07',0);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (42,'127.0.0.1','daotran',NULL,'2021-05-28 07:42:14',0);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (43,'127.0.0.1','daotran',NULL,'2021-05-28 07:44:58',0);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (44,'127.0.0.1','daotran@gmail.com',2,'2021-05-28 07:45:02',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (45,'127.0.0.1','daotran@gmail.com',2,'2021-05-28 19:28:16',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (46,'127.0.0.1','daotran@gmail.com',2,'2021-05-29 04:59:47',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (47,'127.0.0.1','daotran@gmail.com',2,'2021-05-29 20:13:39',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (48,'127.0.0.1','daotran@gmail.com',2,'2021-05-30 02:27:01',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (49,'127.0.0.1','daotran@gmail.com',2,'2021-06-01 22:24:18',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (50,'127.0.0.1','daotran@gmail.com',2,'2021-06-05 04:08:47',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (51,'127.0.0.1','daotran@gmail.com',2,'2021-06-30 19:35:29',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (52,'127.0.0.1','daotran@gmail.com',2,'2021-07-01 03:24:02',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (53,'127.0.0.1','daotran@gmail.com',2,'2021-07-01 20:08:06',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (54,'127.0.0.1','daotran@gmail.com',2,'2021-07-02 01:46:26',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (55,'127.0.0.1','daotran@gmail.com',2,'2021-07-02 19:21:14',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (56,'127.0.0.1','daotran@gmail.com',2,'2021-07-03 01:33:36',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (57,'127.0.0.1','daotran@gmail.com',2,'2021-07-03 18:16:42',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (58,'127.0.0.1','daotran@gmail.com',2,'2021-07-06 20:36:23',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (59,'127.0.0.1','daotran@gmail.com',2,'2021-07-07 02:47:57',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (60,'127.0.0.1','daotran@gmail.com',2,'2021-07-07 02:48:42',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (61,'127.0.0.1','daotran@gmail.com',2,'2021-07-07 03:20:30',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (62,'127.0.0.1','daotran@gmail.com',2,'2021-07-07 03:25:59',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (63,'127.0.0.1','daotran@gmail.com',2,'2021-07-07 03:26:40',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (64,'127.0.0.1','daotran',NULL,'2021-07-07 03:28:51',0);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (65,'127.0.0.1','daotran',NULL,'2021-07-07 04:24:22',0);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (66,'127.0.0.1','daotran',NULL,'2021-07-07 04:24:26',0);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (67,'127.0.0.1','daotran',NULL,'2021-07-07 04:24:32',0);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (68,'127.0.0.1','daotran',NULL,'2021-07-07 04:24:49',0);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (69,'127.0.0.1','daotran',NULL,'2021-07-07 04:24:55',0);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (70,'127.0.0.1','daotran',NULL,'2021-07-07 04:25:30',0);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (71,'127.0.0.1','daotran',NULL,'2021-07-07 04:25:39',0);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (72,'127.0.0.1','daotran@gmail.com',2,'2021-07-07 04:26:22',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (73,'127.0.0.1','daotran@gmail.com',2,'2021-07-07 18:55:19',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (74,'127.0.0.1','daotran@gmail.com',2,'2021-07-08 03:10:50',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (75,'127.0.0.1','daotran@gmail.com',2,'2021-07-08 07:37:10',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (76,'127.0.0.1','daotran@gmail.com',2,'2021-07-08 21:04:08',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (77,'127.0.0.1','daotran@gmail.com',2,'2021-07-09 19:01:53',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (78,'127.0.0.1','daotran@gmail.com',2,'2021-07-10 01:33:30',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (79,'127.0.0.1','daotran@gmail.com',2,'2021-07-10 05:00:03',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (80,'127.0.0.1','daotran@gmail.com',2,'2021-07-10 07:51:24',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (81,'127.0.0.1','daotran@gmail.com',2,'2021-07-10 18:49:18',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (82,'127.0.0.1','daotran@gmail.com',2,'2021-07-11 01:39:17',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (83,'127.0.0.1','daotran@gmail.com',2,'2021-07-11 01:39:59',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (84,'127.0.0.1','daotran@gmail.com',2,'2021-07-11 01:51:51',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (85,'127.0.0.1','daotran@gmail.com',2,'2021-07-11 02:02:02',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (86,'127.0.0.1','daotran@gmail.com',2,'2021-07-11 02:02:12',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (87,'127.0.0.1','daotran@gmail.com',2,'2021-07-11 02:04:26',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (88,'127.0.0.1','daotran@gmail.com',2,'2021-07-11 03:32:15',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (89,'127.0.0.1','daotran@gmail.com',2,'2021-07-11 04:28:23',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (90,'127.0.0.1','daotran@gmail.com',2,'2021-07-11 04:31:37',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (91,'127.0.0.1','daotran@gmail.com',2,'2021-07-11 04:35:00',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (92,'127.0.0.1','daotran@gmail.com',2,'2021-07-11 04:37:40',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (93,'127.0.0.1','daotran@gmail.com',2,'2021-07-12 02:32:17',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (94,'127.0.0.1','daotran@gmail.com',2,'2021-07-12 19:52:08',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (95,'127.0.0.1','daotran@gmail.com',2,'2021-07-12 22:54:06',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (96,'127.0.0.1','daotran@gmail.com',2,'2021-07-13 02:01:19',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (97,'127.0.0.1','daotran@gmail.com',2,'2021-07-14 01:43:21',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (98,'127.0.0.1','daotran@gmail.com',2,'2021-07-14 22:56:20',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (99,'127.0.0.1','daotran@gmail.com',2,'2021-07-15 02:13:50',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (100,'127.0.0.1','daotran@gmail.com',2,'2021-07-15 02:13:50',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (101,'127.0.0.1','daotran@gmail.com',2,'2021-07-15 19:16:04',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (102,'127.0.0.1','daotran@gmail.com',2,'2021-07-16 02:07:02',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (103,'127.0.0.1','daotran@gmail.com',2,'2021-07-16 02:14:19',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (104,'127.0.0.1','daotran@gmail.com',2,'2021-07-16 02:19:39',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (105,'127.0.0.1','daotran@gmail.com',2,'2021-07-16 02:19:56',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (106,'127.0.0.1','xcvsdf',NULL,'2021-07-16 20:07:56',0);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (107,'127.0.0.1','kjdfgdfg@gmail.com',6,'2021-07-16 20:11:54',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (108,'127.0.0.1','sdvc@gmail.com',7,'2021-07-16 21:11:00',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (109,'127.0.0.1','daotran@gmail.com',2,'2021-07-16 22:37:34',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (110,'127.0.0.1','daotran@gmail.com',2,'2021-07-16 23:13:24',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (111,'127.0.0.1','daotran',NULL,'2021-07-16 23:14:18',0);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (112,'127.0.0.1','daotran@gmail.com',2,'2021-07-16 23:14:23',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (113,'127.0.0.1','daotran@gmail.com',2,'2021-07-16 23:14:35',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (114,'127.0.0.1','kjdfgdfg@gmail.com',6,'2021-07-16 23:14:46',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (115,'127.0.0.1','kjdfgdfg@gmail.com',6,'2021-07-17 01:43:05',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (116,'127.0.0.1','daotran@gmail.com',2,'2021-07-17 02:05:44',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (117,'127.0.0.1','daotran@gmail.com',2,'2021-07-17 04:24:22',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (118,'127.0.0.1','daotran@gmail.com',2,'2021-07-22 23:14:18',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (119,'127.0.0.1','daotran',NULL,'2021-07-22 23:16:53',0);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (120,'127.0.0.1','cvbgh@gmail.com',9,'2021-07-22 23:20:03',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (121,'127.0.0.1','trandaica',NULL,'2021-07-23 22:56:11',0);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (122,'127.0.0.1','trandaica',NULL,'2021-07-23 22:56:28',0);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (123,'127.0.0.1','trandaica',NULL,'2021-07-23 22:56:32',0);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (124,'127.0.0.1','trandaica',NULL,'2021-07-23 22:56:54',0);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (125,'127.0.0.1','trandaica',NULL,'2021-07-23 22:57:14',0);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (126,'127.0.0.1','tranit',NULL,'2021-07-23 22:57:33',0);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (127,'127.0.0.1','lasdxfv@gmail.com',10,'2021-07-23 22:58:40',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (128,'127.0.0.1','lasdxfv@gmail.com',10,'2021-07-23 22:59:17',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (129,'127.0.0.1','lasdxfv@gmail.com',10,'2021-07-23 23:03:01',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (130,'127.0.0.1','lasdxfv@gmail.com',10,'2021-07-23 23:03:49',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (131,'127.0.0.1','trandaica',NULL,'2021-07-24 19:26:23',0);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (132,'127.0.0.1','lasdxfv@gmail.com',10,'2021-07-24 19:27:13',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (133,'127.0.0.1','lasdxfv@gmail.com',10,'2021-07-25 07:45:47',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (134,'127.0.0.1','lasdxfv@gmail.com',10,'2021-07-25 22:41:30',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (135,'127.0.0.1','lasdxfv@gmail.com',10,'2021-07-26 03:23:54',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (136,'127.0.0.1','admin',NULL,'2021-07-26 06:14:04',0);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (137,'127.0.0.1','lasdxfv@gmail.com',10,'2021-07-26 06:14:08',1);
insert  into `pet_auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values (138,'127.0.0.1','lasdxfv@gmail.com',10,'2021-07-26 20:04:50',1);

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

insert  into `pet_auth_users`(`id`,`email`,`username`,`password_hash`,`reset_hash`,`reset_at`,`reset_expires`,`activate_hash`,`status`,`status_message`,`active`,`force_pass_reset`,`name`,`image_url`,`description`,`address`,`phone`,`created_at`,`updated_at`,`deleted_at`) values (2,'daotran@gmail.com','daotran','$2y$10$LxP70bB65ZIBgYgJyDzm9eL04.PDvofBxBw6mG5B.e0kHFEcnfE72',NULL,'2021-07-16 23:13:34',NULL,NULL,NULL,NULL,1,0,'trân2323',NULL,'sdfdfgdfhertert','sdf234234werwer','123123asd','2020-12-28 08:04:03','2021-07-16 23:13:34',NULL);
insert  into `pet_auth_users`(`id`,`email`,`username`,`password_hash`,`reset_hash`,`reset_at`,`reset_expires`,`activate_hash`,`status`,`status_message`,`active`,`force_pass_reset`,`name`,`image_url`,`description`,`address`,`phone`,`created_at`,`updated_at`,`deleted_at`) values (3,'lytranuit@gmail.com','tranit','$2y$10$/By8EO75wGLrZZE3pC27Q.oXsaYWdISfkADrDRPcFjVeET4Wz3bgm',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'test',NULL,'','','','2021-01-07 09:49:41','2021-07-07 03:28:38',NULL);
insert  into `pet_auth_users`(`id`,`email`,`username`,`password_hash`,`reset_hash`,`reset_at`,`reset_expires`,`activate_hash`,`status`,`status_message`,`active`,`force_pass_reset`,`name`,`image_url`,`description`,`address`,`phone`,`created_at`,`updated_at`,`deleted_at`) values (4,'1610034659@gmail.com','hienit','$2y$10$Q3y3B0LqTiWecUN8Mdve.eDPWoCV6R4W5OB00YDCBppJQ3bvdqI82',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'test',NULL,'','','','2021-01-07 09:50:59','2021-01-07 09:52:40','2021-01-07 09:52:40');
insert  into `pet_auth_users`(`id`,`email`,`username`,`password_hash`,`reset_hash`,`reset_at`,`reset_expires`,`activate_hash`,`status`,`status_message`,`active`,`force_pass_reset`,`name`,`image_url`,`description`,`address`,`phone`,`created_at`,`updated_at`,`deleted_at`) values (5,'sfoisjdf@gmail.com','daotran123','$2y$10$7vRFi6b/TLfSu12H0qvue.7lVtxzQsQ9PFDuqgSM0pS0ozdfeazOO',NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL,'2021-07-16 20:09:28','2021-07-22 23:27:58','2021-07-22 23:27:58');
insert  into `pet_auth_users`(`id`,`email`,`username`,`password_hash`,`reset_hash`,`reset_at`,`reset_expires`,`activate_hash`,`status`,`status_message`,`active`,`force_pass_reset`,`name`,`image_url`,`description`,`address`,`phone`,`created_at`,`updated_at`,`deleted_at`) values (6,'kjdfgdfg@gmail.com','daotran345','$2y$10$lyezObLuA2zBjMpvfW6b5eFeRG5uwEA2CDs3HCxT0PSQ1oC94g.gq',NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL,'2021-07-16 20:11:40','2021-07-22 23:28:00','2021-07-22 23:28:00');
insert  into `pet_auth_users`(`id`,`email`,`username`,`password_hash`,`reset_hash`,`reset_at`,`reset_expires`,`activate_hash`,`status`,`status_message`,`active`,`force_pass_reset`,`name`,`image_url`,`description`,`address`,`phone`,`created_at`,`updated_at`,`deleted_at`) values (7,'sdvc@gmail.com','daotran32','$2y$10$tpjY0jv1ZtQxJC6Lv/MIiO17ebUkVNeOn8q9L.oyFtvb0YtRJbPpG',NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL,'2021-07-16 21:10:01','2021-07-22 23:28:03','2021-07-22 23:28:03');
insert  into `pet_auth_users`(`id`,`email`,`username`,`password_hash`,`reset_hash`,`reset_at`,`reset_expires`,`activate_hash`,`status`,`status_message`,`active`,`force_pass_reset`,`name`,`image_url`,`description`,`address`,`phone`,`created_at`,`updated_at`,`deleted_at`) values (8,'sdsdvc@gmail.com','trab223','$2y$10$yR5SOuO.ef0MLLL2KMF63u2rZCQXj9IiYZ9fnpp0lWFOm3ci4T0li',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'vbdgưẻ',NULL,NULL,'sda','v','2021-07-16 22:29:38','2021-07-16 22:29:38',NULL);
insert  into `pet_auth_users`(`id`,`email`,`username`,`password_hash`,`reset_hash`,`reset_at`,`reset_expires`,`activate_hash`,`status`,`status_message`,`active`,`force_pass_reset`,`name`,`image_url`,`description`,`address`,`phone`,`created_at`,`updated_at`,`deleted_at`) values (9,'cvbgh@gmail.com','trandaica','$2y$10$8Fy/5oqmDKVm1BwvroGFX.VPsne/b0fOj70Lj2LgXe9N8cGRRZhpa',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'tran',NULL,NULL,'','','2021-07-22 23:19:35','2021-07-22 23:19:35',NULL);
insert  into `pet_auth_users`(`id`,`email`,`username`,`password_hash`,`reset_hash`,`reset_at`,`reset_expires`,`activate_hash`,`status`,`status_message`,`active`,`force_pass_reset`,`name`,`image_url`,`description`,`address`,`phone`,`created_at`,`updated_at`,`deleted_at`) values (10,'lasdxfv@gmail.com','admin','$2y$10$dz.z0tN25wUx65FYSLS2Nu7vt87pg4oLjK9jWnEn69i.NHHg4k5uC',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'tran',NULL,NULL,'','','2021-07-23 22:58:31','2021-07-23 22:58:31',NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8;

/*Data for the table `pet_category` */

insert  into `pet_category`(`id`,`name_vi`,`name_en`,`name_jp`,`description_vi`,`description_en`,`description_jp`,`content_vi`,`content_en`,`content_jp`,`image_url`,`active`,`order`,`is_home`,`type`,`parent_id`,`deleted_at`,`created_at`,`updated_at`,`date`,`slug`) values (34,'THỰC PHẨM CHẾ BIẾN HÀNG NGÀY','BASIC DAILY COOKING','定番アイテム','sdfsdf','','','<p>testsđ&aacute;</p>\r\n','','','/assets/images/placeholder.png',1,0,1,1,0,NULL,NULL,NULL,NULL,'');
insert  into `pet_category`(`id`,`name_vi`,`name_en`,`name_jp`,`description_vi`,`description_en`,`description_jp`,`content_vi`,`content_en`,`content_jp`,`image_url`,`active`,`order`,`is_home`,`type`,`parent_id`,`deleted_at`,`created_at`,`updated_at`,`date`,`slug`) values (35,'THỦY SẢN CHẾ BIẾN (ĂN LIỀN)','PROCESSED SEAFOOD (READY TO EAT)','シーフード - Ready to Eat','','','','','','','/assets/userfiles/images/test/20_Maya16f779002f7bc582b44b7de773be4e2.jpg',1,2,1,2,0,NULL,NULL,NULL,NULL,'');
insert  into `pet_category`(`id`,`name_vi`,`name_en`,`name_jp`,`description_vi`,`description_en`,`description_jp`,`content_vi`,`content_en`,`content_jp`,`image_url`,`active`,`order`,`is_home`,`type`,`parent_id`,`deleted_at`,`created_at`,`updated_at`,`date`,`slug`) values (36,'THỦY SẢN CHẾ BIẾN (COOK)','PROCESSED SEAFOOD (READY TO COOK)','シーフード - Ready to Cook','','','','','','','/assets/images/placeholder.png',1,3,1,2,0,NULL,NULL,NULL,'2021-07-08 21:04:35','');
insert  into `pet_category`(`id`,`name_vi`,`name_en`,`name_jp`,`description_vi`,`description_en`,`description_jp`,`content_vi`,`content_en`,`content_jp`,`image_url`,`active`,`order`,`is_home`,`type`,`parent_id`,`deleted_at`,`created_at`,`updated_at`,`date`,`slug`) values (37,'GIA VỊ & TƯƠNG XỐT','SEASONINGS','調味料','','','',NULL,NULL,NULL,'',1,1,1,1,0,NULL,NULL,NULL,NULL,NULL);
insert  into `pet_category`(`id`,`name_vi`,`name_en`,`name_jp`,`description_vi`,`description_en`,`description_jp`,`content_vi`,`content_en`,`content_jp`,`image_url`,`active`,`order`,`is_home`,`type`,`parent_id`,`deleted_at`,`created_at`,`updated_at`,`date`,`slug`) values (38,'RONG BIỂN','SEAWEEDS','海藻','','','',NULL,NULL,NULL,'',1,4,1,1,0,NULL,NULL,NULL,NULL,NULL);
insert  into `pet_category`(`id`,`name_vi`,`name_en`,`name_jp`,`description_vi`,`description_en`,`description_jp`,`content_vi`,`content_en`,`content_jp`,`image_url`,`active`,`order`,`is_home`,`type`,`parent_id`,`deleted_at`,`created_at`,`updated_at`,`date`,`slug`) values (39,'GẠO & MÌ NHẬT ','JAPANESE RICE, SUPERFOOD & NOODLES','米、麺、穀類','','','',NULL,NULL,NULL,'',1,5,1,1,0,NULL,NULL,NULL,NULL,NULL);
insert  into `pet_category`(`id`,`name_vi`,`name_en`,`name_jp`,`description_vi`,`description_en`,`description_jp`,`content_vi`,`content_en`,`content_jp`,`image_url`,`active`,`order`,`is_home`,`type`,`parent_id`,`deleted_at`,`created_at`,`updated_at`,`date`,`slug`) values (41,'ĐỒ UỐNG KHÔNG CỒN','NON-ALCOHOLIC DRINKS','ノンアルコール飲料','','','',NULL,NULL,NULL,'',1,6,1,1,0,NULL,NULL,NULL,NULL,NULL);
insert  into `pet_category`(`id`,`name_vi`,`name_en`,`name_jp`,`description_vi`,`description_en`,`description_jp`,`content_vi`,`content_en`,`content_jp`,`image_url`,`active`,`order`,`is_home`,`type`,`parent_id`,`deleted_at`,`created_at`,`updated_at`,`date`,`slug`) values (42,'KEM - SỮA - PHÔ MAI','ICE CREAM - MILK - CHEESES','乳製品','','','',NULL,NULL,NULL,'',1,7,1,1,0,NULL,NULL,NULL,NULL,NULL);
insert  into `pet_category`(`id`,`name_vi`,`name_en`,`name_jp`,`description_vi`,`description_en`,`description_jp`,`content_vi`,`content_en`,`content_jp`,`image_url`,`active`,`order`,`is_home`,`type`,`parent_id`,`deleted_at`,`created_at`,`updated_at`,`date`,`slug`) values (43,'THỰC PHẨM CHO BÉ','BABY FOOD','ベビーフード','','','',NULL,NULL,NULL,'',1,8,1,1,0,NULL,NULL,NULL,NULL,NULL);
insert  into `pet_category`(`id`,`name_vi`,`name_en`,`name_jp`,`description_vi`,`description_en`,`description_jp`,`content_vi`,`content_en`,`content_jp`,`image_url`,`active`,`order`,`is_home`,`type`,`parent_id`,`deleted_at`,`created_at`,`updated_at`,`date`,`slug`) values (44,'BÁNH KẸO','CONFECTIONERIRES','お菓子','','','',NULL,NULL,NULL,'',1,9,1,1,0,NULL,NULL,NULL,NULL,NULL);
insert  into `pet_category`(`id`,`name_vi`,`name_en`,`name_jp`,`description_vi`,`description_en`,`description_jp`,`content_vi`,`content_en`,`content_jp`,`image_url`,`active`,`order`,`is_home`,`type`,`parent_id`,`deleted_at`,`created_at`,`updated_at`,`date`,`slug`) values (45,'ĐỒ DÙNG NHÀ BẾP','KITCHENWARE','キッチン用品','','','',NULL,NULL,NULL,'',0,10,0,1,0,NULL,NULL,NULL,NULL,NULL);
insert  into `pet_category`(`id`,`name_vi`,`name_en`,`name_jp`,`description_vi`,`description_en`,`description_jp`,`content_vi`,`content_en`,`content_jp`,`image_url`,`active`,`order`,`is_home`,`type`,`parent_id`,`deleted_at`,`created_at`,`updated_at`,`date`,`slug`) values (46,'PHI THỰC PHẨM','NON-FOOD','日用品','','','',NULL,NULL,NULL,'',1,11,1,1,0,NULL,NULL,NULL,NULL,NULL);
insert  into `pet_category`(`id`,`name_vi`,`name_en`,`name_jp`,`description_vi`,`description_en`,`description_jp`,`content_vi`,`content_en`,`content_jp`,`image_url`,`active`,`order`,`is_home`,`type`,`parent_id`,`deleted_at`,`created_at`,`updated_at`,`date`,`slug`) values (131,'test','','','<p>&aacute;dcvsdfwẻ</p>\r\n','','',NULL,NULL,NULL,'/assets/userfiles/images/test/03_Jula0cde998a6e883f932065072c64083a6.jpg',1,0,1,1,0,'2021-07-12 23:07:10',NULL,NULL,'2021-07-08 21:25:24','test');
insert  into `pet_category`(`id`,`name_vi`,`name_en`,`name_jp`,`description_vi`,`description_en`,`description_jp`,`content_vi`,`content_en`,`content_jp`,`image_url`,`active`,`order`,`is_home`,`type`,`parent_id`,`deleted_at`,`created_at`,`updated_at`,`date`,`slug`) values (132,'Shop chó cưng','','','ád','','','<p>&aacute;dxgfg</p>\r\n','','','/assets/userfiles/images/test/20_Maya16f779002f7bc582b44b7de773be4e2.jpg',1,0,1,2,0,NULL,NULL,NULL,'2021-07-08 21:26:36','test2');

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

/*Data for the table `pet_menu` */

insert  into `pet_menu`(`id`,`name_vi`,`name_en`,`name_jp`,`type`,`link`,`related_id`,`order`,`parent_id`,`deleted_at`,`created_at`,`updated_at`) values (1,'Trang chủ','Home','',1,'#',0,0,0,NULL,NULL,NULL);
insert  into `pet_menu`(`id`,`name_vi`,`name_en`,`name_jp`,`type`,`link`,`related_id`,`order`,`parent_id`,`deleted_at`,`created_at`,`updated_at`) values (2,'Khuyến mãi','Promotion','',4,'#',0,1,0,'2021-07-08 23:21:25',NULL,NULL);
insert  into `pet_menu`(`id`,`name_vi`,`name_en`,`name_jp`,`type`,`link`,`related_id`,`order`,`parent_id`,`deleted_at`,`created_at`,`updated_at`) values (3,'Khuyến mãi','Promotion','',6,'#',0,14,0,NULL,NULL,NULL);
insert  into `pet_menu`(`id`,`name_vi`,`name_en`,`name_jp`,`type`,`link`,`related_id`,`order`,`parent_id`,`deleted_at`,`created_at`,`updated_at`) values (4,'Sản phẩm','','',4,'#',0,1,0,NULL,NULL,NULL);
insert  into `pet_menu`(`id`,`name_vi`,`name_en`,`name_jp`,`type`,`link`,`related_id`,`order`,`parent_id`,`deleted_at`,`created_at`,`updated_at`) values (5,'Tin tức','','',5,'#',0,2,0,NULL,NULL,NULL);
insert  into `pet_menu`(`id`,`name_vi`,`name_en`,`name_jp`,`type`,`link`,`related_id`,`order`,`parent_id`,`deleted_at`,`created_at`,`updated_at`) values (6,'Shop của chó','','',1,'#',0,3,0,NULL,NULL,NULL);
insert  into `pet_menu`(`id`,`name_vi`,`name_en`,`name_jp`,`type`,`link`,`related_id`,`order`,`parent_id`,`deleted_at`,`created_at`,`updated_at`) values (7,'Shop của mèo','','',1,'#',0,11,0,NULL,NULL,NULL);
insert  into `pet_menu`(`id`,`name_vi`,`name_en`,`name_jp`,`type`,`link`,`related_id`,`order`,`parent_id`,`deleted_at`,`created_at`,`updated_at`) values (8,'Shop vật nuôi khác','','',1,'#',0,12,0,NULL,NULL,NULL);
insert  into `pet_menu`(`id`,`name_vi`,`name_en`,`name_jp`,`type`,`link`,`related_id`,`order`,`parent_id`,`deleted_at`,`created_at`,`updated_at`) values (9,'Tin tức','','',1,'#',0,13,0,NULL,NULL,NULL);
insert  into `pet_menu`(`id`,`name_vi`,`name_en`,`name_jp`,`type`,`link`,`related_id`,`order`,`parent_id`,`deleted_at`,`created_at`,`updated_at`) values (10,'Thức ăn cho chó','','',1,'#',0,10,6,NULL,NULL,NULL);
insert  into `pet_menu`(`id`,`name_vi`,`name_en`,`name_jp`,`type`,`link`,`related_id`,`order`,`parent_id`,`deleted_at`,`created_at`,`updated_at`) values (11,'Quần áo cho chó','','',1,'#',0,9,6,NULL,NULL,NULL);
insert  into `pet_menu`(`id`,`name_vi`,`name_en`,`name_jp`,`type`,`link`,`related_id`,`order`,`parent_id`,`deleted_at`,`created_at`,`updated_at`) values (12,'Dụng cụ vệ sinh','','',1,'#',0,4,6,NULL,NULL,NULL);
insert  into `pet_menu`(`id`,`name_vi`,`name_en`,`name_jp`,`type`,`link`,`related_id`,`order`,`parent_id`,`deleted_at`,`created_at`,`updated_at`) values (13,'Chuồng,nhà,trại','','',1,'#',0,5,6,NULL,NULL,NULL);
insert  into `pet_menu`(`id`,`name_vi`,`name_en`,`name_jp`,`type`,`link`,`related_id`,`order`,`parent_id`,`deleted_at`,`created_at`,`updated_at`) values (14,'Nhà,nệm','','',1,'#',0,6,13,NULL,NULL,NULL);
insert  into `pet_menu`(`id`,`name_vi`,`name_en`,`name_jp`,`type`,`link`,`related_id`,`order`,`parent_id`,`deleted_at`,`created_at`,`updated_at`) values (15,'Chuồng,lồng','','',1,'#',0,8,13,NULL,NULL,NULL);
insert  into `pet_menu`(`id`,`name_vi`,`name_en`,`name_jp`,`type`,`link`,`related_id`,`order`,`parent_id`,`deleted_at`,`created_at`,`updated_at`) values (16,'Giỏ xách','','',1,'#',0,7,13,NULL,NULL,NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `pet_news` */

insert  into `pet_news`(`id`,`title_vi`,`content_vi`,`title_en`,`content_en`,`title_jp`,`content_jp`,`slug`,`date`,`image_url`,`user_id`,`updated_at`,`created_at`,`deleted_at`) values (1,NULL,'<p><img class=\"fr-dib fr-draggable\" src=\"http://foodzone.local/public/uploads/2020-04-19/1587307659.jpg\" style=\"width: 300px;\"></p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `pet_news`(`id`,`title_vi`,`content_vi`,`title_en`,`content_en`,`title_jp`,`content_jp`,`slug`,`date`,`image_url`,`user_id`,`updated_at`,`created_at`,`deleted_at`) values (2,'Highcharts Demo','<p>helolololdfgdfgdfg<span class=\"fr-video fr-dvb fr-draggable\" contenteditable=\"false\" draggable=\"true\"><iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/jkfLbg_aMbA\" frameborder=\"0\" allowfullscreen=\"\"></iframe></span></p>',NULL,NULL,NULL,NULL,NULL,'2020-04-19 21:51:58',NULL,5,NULL,NULL,NULL);
insert  into `pet_news`(`id`,`title_vi`,`content_vi`,`title_en`,`content_en`,`title_jp`,`content_jp`,`slug`,`date`,`image_url`,`user_id`,`updated_at`,`created_at`,`deleted_at`) values (3,'Test youtube','<p><span class=\"fr-video fr-dvb fr-draggable\" contenteditable=\"false\" draggable=\"true\"><iframe width=\"640\" height=\"360\" src=\"//www.youtube.com/embed/aYOOXs4yjYI?wmode=opaque\" frameborder=\"0\" allowfullscreen=\"\"></iframe></span></p>',NULL,NULL,NULL,NULL,NULL,'2020-04-19 22:01:39',NULL,5,NULL,NULL,NULL);
insert  into `pet_news`(`id`,`title_vi`,`content_vi`,`title_en`,`content_en`,`title_jp`,`content_jp`,`slug`,`date`,`image_url`,`user_id`,`updated_at`,`created_at`,`deleted_at`) values (4,'Phí vận chuyển tại Foodzone','<table data-mce-style=\"width: 1041px; margin-left: auto; margin-right: auto;\"><tbody><tr data-mce-style=\"height: 80px;\"><td data-mce-style=\"width: 202.4px; text-align: center; height: 80px;\"><span data-mce-style=\"font-size: 11pt;\"><strong>Gi&aacute; trị h&oacute;a đơn</strong></span><br></td><td data-mce-style=\"width: 202.4px; text-align: center; height: 80px;\"><span data-mce-style=\"font-size: 11pt;\"><strong>1/3/4/5/6/8/</strong></span><br><span data-mce-style=\"font-size: 11pt;\"><strong>10/11/&nbsp;</strong></span><span data-mce-style=\"font-size: 11pt;\"><strong>Ph&uacute; Nhuận</strong></span><br></td><td data-mce-style=\"width: 164px; text-align: center; height: 80px;\"><span data-mce-style=\"font-size: 11pt;\"><strong>7/T&acirc;n B&igrave;nh/T&acirc;n Ph&uacute;/B&igrave;nh Thạnh</strong></span></td><td data-mce-style=\"width: 203.2px; text-align: center; height: 80px;\"><span data-mce-style=\"font-size: 11pt;\"><strong>2</strong></span></td><td data-mce-style=\"width: 260.8px; text-align: center; height: 80px;\"><span data-mce-style=\"font-size: 11pt;\"><strong>12/G&ograve; Vấp/Kh&aacute;c</strong></span></td></tr><tr data-mce-style=\"height: 54px;\"><td data-mce-style=\"width: 179.2px; height: 54px; text-align: center;\"><span data-mce-style=\"font-size: 11pt;\">&ge;500.000đ</span></td><td data-mce-style=\"width: 202.4px; height: 54px; text-align: center;\"><span data-mce-style=\"font-size: 11pt;\"><strong>Miễn ph&iacute;</strong></span></td><td data-mce-style=\"width: 164px; height: 54px; text-align: center;\"><span data-mce-style=\"font-size: 11pt;\"><strong>Miễn ph&iacute;</strong></span></td><td data-mce-style=\"width: 203.2px; height: 54px; text-align: center;\"><span data-mce-style=\"font-size: 11pt;\"><strong>Miễn ph&iacute;</strong></span></td><td data-mce-style=\"width: 260.8px; height: 325px;\" rowspan=\"6\"><span data-mce-style=\"font-size: 10pt;\">Theo gi&aacute; nh&agrave; vận chuyển</span></td></tr><tr data-mce-style=\"height: 54px;\"><td data-mce-style=\"width: 179.2px; height: 54px; text-align: center;\"><span data-mce-style=\"font-size: 11pt;\">&ge;400.000đ</span></td><td data-mce-style=\"width: 202.4px; height: 54px; text-align: center;\"><span data-mce-style=\"font-size: 11pt;\">10.000</span></td><td data-mce-style=\"width: 164px; height: 54px; text-align: center;\"><span data-mce-style=\"font-size: 11pt;\">15.000</span></td><td data-mce-style=\"width: 203.2px; height: 54px; text-align: center;\"><span data-mce-style=\"font-size: 10pt;\">20.000</span></td></tr><tr data-mce-style=\"height: 54px;\"><td data-mce-style=\"width: 179.2px; height: 54px; text-align: center;\"><span data-mce-style=\"font-size: 11pt;\">&ge;300.000đ</span></td><td data-mce-style=\"width: 202.4px; height: 54px; text-align: center;\"><span data-mce-style=\"font-size: 11pt;\">15.000</span></td><td data-mce-style=\"width: 164px; height: 54px; text-align: center;\"><span data-mce-style=\"font-size: 11pt;\">25.000</span></td><td data-mce-style=\"width: 203.2px; height: 54px; text-align: center;\"><span data-mce-style=\"font-size: 13.3333px;\">30.000</span></td></tr><tr data-mce-style=\"height: 54px;\"><td data-mce-style=\"width: 179.2px; height: 54px; text-align: center;\"><span data-mce-style=\"font-size: 11pt;\">&ge;200.000đ</span></td><td data-mce-style=\"width: 202.4px; height: 54px; text-align: center;\"><span data-mce-style=\"font-size: 11pt;\">20.000</span></td><td data-mce-style=\"width: 164px; height: 54px; text-align: center;\"><span data-mce-style=\"font-size: 11pt;\">30.000</span></td><td data-mce-style=\"width: 203.2px; height: 54px; text-align: center;\"><span data-mce-style=\"font-size: 10pt;\">40.000</span></td></tr><tr data-mce-style=\"height: 54px;\"><td data-mce-style=\"width: 179.2px; height: 54px; text-align: center;\"><span data-mce-style=\"font-size: 11pt;\">&ge;100.000đ</span></td><td data-mce-style=\"width: 202.4px; height: 54px; text-align: center;\"><span data-mce-style=\"font-size: 11pt;\">25.000</span></td><td data-mce-style=\"width: 164px; height: 54px; text-align: center;\"><span data-mce-style=\"font-size: 11pt;\">35.000</span></td><td data-mce-style=\"width: 203.2px; height: 54px; text-align: center;\"><span data-mce-style=\"font-size: 10pt;\">50.000</span></td></tr><tr data-mce-style=\"height: 55px;\"><td data-mce-style=\"width: 179.2px; height: 55px; text-align: center;\"><span data-mce-style=\"font-size: 11pt;\">&lt;100.000đ&nbsp;</span></td><td data-mce-style=\"width: 202.4px; height: 55px; text-align: center;\"><span data-mce-style=\"font-size: 11pt;\">30.000</span></td><td data-mce-style=\"width: 164px; height: 55px; text-align: center;\"><span data-mce-style=\"font-size: 11pt;\">40.000</span></td><td data-mce-style=\"width: 203.2px; height: 55px; text-align: center;\"><span data-mce-style=\"font-size: 10pt;\">60.000</span></td></tr></tbody></table>',NULL,NULL,NULL,NULL,NULL,'2020-06-01 23:42:04',NULL,5,NULL,NULL,NULL);
insert  into `pet_news`(`id`,`title_vi`,`content_vi`,`title_en`,`content_en`,`title_jp`,`content_jp`,`slug`,`date`,`image_url`,`user_id`,`updated_at`,`created_at`,`deleted_at`) values (5,'Hướng dẫn mua hàng','<p><strong>Bước 1: Chọn sản phẩm</strong></p><p>&nbsp;Tại trang chủ <a href=\"http://www.foodzone.vn/\"><span>www.foodzone.vn</span></a>, để gi&uacute;pbạn dễ d&agrave;ng lựa chọn hơn, ch&uacute;ng t&ocirc;i đ&atilde; ph&acirc;n loại sản phẩm theo nh&oacute;m. Ngo&agrave;i ra,bạn c&oacute; thể nhập trực tiếp mặt h&agrave;ng m&igrave;nh muốn mua v&agrave;o thanh c&ocirc;ng cụ t&igrave;m kiếm.</p><p>Di chuột v&agrave;o mặt h&agrave;ng muốn mua. Bấm &ldquo;<strong>Xem nhanh</strong>&rdquo; để biết được th&ocirc;ng tin sơ bộ của sản phẩm.</p><p>Nhấp &ldquo;Th&ecirc;m v&agrave;o giỏ h&agrave;ng&rdquo;&nbsp;<img class=\"fr-dib fr-draggable fr-fil\" src=\"http://www.foodzone.vn/public/uploads/2020-08-25/1598333652.png\" style=\"width: 181px; height: 42.8367px;\"></p><p>Nếu bạn đ&atilde; mua đủ sản phẩm, nhấp v&agrave;o biểu tượng giỏ h&agrave;ng (gần ngay thanh c&ocirc;ng cụ t&igrave;m kiếm sản phẩm).&nbsp;<img class=\"fr-dib fr-draggable fr-fil\" src=\"http://www.foodzone.vn/public/uploads/2020-08-25/1598333701.png\" style=\"width: 49px; height: 41.2632px;\"></p><p>Tại đ&acirc;y, bạn sẽ c&oacute; th&ocirc;ng tin tất cả sản phẩm m&igrave;nh đ&atilde; mua, bao gồm cả gi&aacute; tiền cần phải thanh to&aacute;n.</p><p>&nbsp;<strong>Bước 2: Điền th&ocirc;ng tin giao h&agrave;ng</strong></p><p>Nếu bạn c&oacute; t&agrave;i khoản <a href=\"http://www.foodzone.vn\"><span>www.foodzone.vn</span></a>, trang web sẽ lưu lại địa chỉ giao h&agrave;ng cho lần sau v&agrave; dễ quản l&yacute; t&agrave;i khoản v&agrave; đơn h&agrave;ng của bạn hơn.</p><p>Nếu bạn chưa c&oacute; t&agrave;i khoản, phiền bạn điền c&aacute;c th&ocirc;ng tin: T&ecirc;n, email, số điện thoại, địa chỉ nhận h&agrave;ng&hellip;&nbsp;</p><p><strong>Bước 3: Ho&agrave;n tất đặt h&agrave;ng</strong></p><p>Sau khi đền đầy đủ th&ocirc;ng tin, kiểm tra lại số lượng, h&agrave;ng h&oacute;a bạn mua.&nbsp;</p><p>Nhấn n&uacute;t &quot;<strong>HO&Agrave;N TẤT ĐƠN H&Agrave;NG</strong>&rdquo;<span>&nbsp;</span><br><span><img class=\"fr-dib fr-draggable fr-fil\" src=\"http://www.foodzone.vn/public/uploads/2020-08-25/1598333743.png\" style=\"width: 164px; height: 37.1733px;\"></span></p><p>Nếu đơn h&agrave;ng của bạn th&agrave;nh c&ocirc;ng sẽ hiện <strong>&ldquo;Đơn h&agrave;ng của bạn đ&atilde; th&agrave;nh c&ocirc;ng! FOODZONE sẽ li&ecirc;n hệ với bạn sớm nhất.&rdquo;</strong></p>','','','','',NULL,'2020-06-28 00:08:52',NULL,5,NULL,NULL,NULL);
insert  into `pet_news`(`id`,`title_vi`,`content_vi`,`title_en`,`content_en`,`title_jp`,`content_jp`,`slug`,`date`,`image_url`,`user_id`,`updated_at`,`created_at`,`deleted_at`) values (6,'Chính sách về thanh toán, giao nhận, vận chuyển','<p><strong><u>1. Điều khoản về thanh to&aacute;n:</u></strong></p><p>&nbsp; &nbsp;Đối với kh&aacute;ch h&agrave;ng tại Tp.HCM, Đ&agrave; Nẵng, H&agrave; Nội , việc thanh to&aacute;n c&oacute; thể bằng tiền mặt cho nh&acirc;n vi&ecirc;n giao h&agrave;ng tại thời điểm nhận h&agrave;ng, hoặc bằng chuyển khoản qua ng&acirc;n h&agrave;ng trước khi giao h&agrave;ng. Đối với kh&aacute;ch h&agrave;ng ở c&aacute;c tỉnh th&agrave;nh kh&aacute;c, vui l&ograve;ng thanh to&aacute;n bằng chuyển khoản trước khi Sim Ba gửi h&agrave;ng. Chi tiết ng&acirc;n h&agrave;ng để chuyển khoản như sau:</p><p style=\"margin-left: 20px;\">Người thụ hưởng:<strong><span>&nbsp;</span>C&ocirc;ng ty Cổ Phần Thương Mại Sim Ba</strong><br>Ng&acirc;n h&agrave;ng Vietcombank: T&agrave;i khoản số <strong>0421003918237 tại ng&acirc;n h&agrave;ng Vietcombank &ndash; Tp. HCM&nbsp;</strong><br>Ng&acirc;n h&agrave;ng &Aacute; Ch&acirc;u: T&agrave;i khoản số <strong>11095399 tại ng&acirc;n h&agrave;ng ACB - Tp. HCM.</strong><br>Ng&acirc;n h&agrave;ng Standard Chartered Bank: T&agrave;i khoản số <strong>99143933299 tại ng&acirc;n h&agrave;ng Standard Chartered &ndash; Tp. HCM.</strong></p><p><u><strong>2. Điều khoản Giao h&agrave;ng:</strong></u></p><p>- Đối với c&aacute;c kh&aacute;ch h&agrave;ng tại Tp.HCM, Đ&agrave; nẵng, H&agrave; nội, h&agrave;ng h&oacute;a sẽ được giao trong v&ograve;ng 24-48 giờ kể từ khi Foodzone.vn x&aacute;c nhận đơn h&agrave;ng qua điện thoại, fax hoặc email.<br>- Đối với c&aacute;c kh&aacute;ch h&agrave;ng ở địa phương kh&aacute;c, h&agrave;ng h&oacute;a sẽ được giao trong v&ograve;ng 24-72 giờ kể từ khi Foodzone.vn nhận được thanh to&aacute;n qua chuyển khoản ng&acirc;n h&agrave;ng. Vui l&ograve;ng th&ocirc;ng b&aacute;o cho Foodzone.vn bằng số 028 7770 4567 , fax 028-62999708 hoặc email đến Foodzone.vn nếu trong khoảng thời gian tr&ecirc;n qu&yacute; kh&aacute;ch h&agrave;ng vẫn chưa nhận được h&agrave;ng.</p><p>Việc gửi h&agrave;ng bằng đường bưu điện đ&ocirc;i khi c&oacute; thể c&oacute; sự chậm trễ do c&aacute;c điều kiện kh&aacute;ch quan như thi&ecirc;n tai, tai nạn, v.v&hellip; Những việc chậm trễ như vậy sẽ được coi l&agrave; trường hợp bất khả kh&aacute;ng.</p><p><u><strong><strong><em>3. C&aacute;c điều k</em></strong>hoản kh&aacute;c:</strong></u><br>- Gi&aacute; cả được ni&ecirc;m yết tr&ecirc;n website đ&atilde; bao gồm thuế gi&aacute; trị gia tăng VAT;<br>- Foodzone chịu tr&aacute;ch nhiệm về chất lượng h&agrave;ng h&oacute;a v&agrave; dịch vụ cung cấp cho kh&aacute;ch h&agrave;ng;<br>- Foodzone c&oacute; tr&aacute;ch nhiệm cung cấp c&aacute;c giấy tờ ph&aacute;p l&yacute; li&ecirc;n quan đến h&agrave;ng h&oacute;a như c&aacute;c c&ocirc;ng bố chất lượng, giấy chứng nhận đạt chất lượng nhập khẩu, xuất xứ h&agrave;ng h&oacute;a, v.v&hellip;</p>','','','','',NULL,'2020-06-28 00:09:00',NULL,5,NULL,NULL,NULL);
insert  into `pet_news`(`id`,`title_vi`,`content_vi`,`title_en`,`content_en`,`title_jp`,`content_jp`,`slug`,`date`,`image_url`,`user_id`,`updated_at`,`created_at`,`deleted_at`) values (7,'Chính sách đổi hàng, trả hàng, hoàn tiền','<p><u><strong>1. Việc Hủy đơn h&agrave;ng:</strong></u><br>Trước khi h&agrave;ng được giao, đơn h&agrave;ng đ&atilde; đặt c&oacute; thể được hủy. Kh&aacute;ch h&agrave;ng vui l&ograve;ng gọi đến số Hotline 028 7770 4567 để hủy đơn h&agrave;ng.<br><br><u><strong>2. Việc đổi h&agrave;ng, trả h&agrave;ng, ho&agrave;n tiền:</strong></u></p><p><strong><u>(Kh&ocirc;ng &aacute;p dụng cho h&agrave;ng Khuyến M&atilde;i).</u></strong><br>Sau khi mua h&agrave;ng v&agrave; nhận được h&agrave;ng, Kh&aacute;ch h&agrave;ng c&oacute; thể đổi h&agrave;ng trong v&ograve;ng 03 ng&agrave;y sau khi nhận được h&agrave;ng. Trường hợp Kh&aacute;ch h&agrave;ng muốn đổi h&agrave;ng, vui l&ograve;ng kh&ocirc;ng mở bao b&igrave; hoặc ni&ecirc;m phong h&agrave;ng h&oacute;a, v&agrave; gọi số Hotline 028 7770 4567 hoặc Fax (028) 62999708 hoặc email</p><p><u><strong>1. Việc Hủy đơn h&agrave;ng:</strong></u><br>Trước khi h&agrave;ng được giao, đơn h&agrave;ng đ&atilde; đặt c&oacute; thể được hủy. Kh&aacute;ch h&agrave;ng vui l&ograve;ng gọi đến số Hotline 028 7770 4567 để hủy đơn h&agrave;ng.<br><br><u><strong>2. Việc đổi h&agrave;ng, trả h&agrave;ng, ho&agrave;n tiền:</strong></u></p><p><strong><u>(Kh&ocirc;ng &aacute;p dụng cho h&agrave;ng Khuyến M&atilde;i).</u></strong></p><p><br>Sau khi mua h&agrave;ng v&agrave; nhận được h&agrave;ng, Kh&aacute;ch h&agrave;ng c&oacute; thể đổi h&agrave;ng trong v&ograve;ng 03 ng&agrave;y sau khi nhận được h&agrave;ng. Trường hợp Kh&aacute;ch h&agrave;ng muốn đổi h&agrave;ng, vui l&ograve;ng kh&ocirc;ng mở bao b&igrave; hoặc ni&ecirc;m phong h&agrave;ng h&oacute;a, v&agrave; gọi số Hotline 028 7770 4567 hoặc Fax (028) 62999708 hoặc email Foodzone.vn để đổi h&agrave;ng;<br><br>Việc Trả h&agrave;ng c&oacute; thể được thực hiện trong v&ograve;ng 03 ng&agrave;y kể từ khi Kh&aacute;ch h&agrave;ng nhận h&agrave;ng. Vui l&ograve;ng kh&ocirc;ng mở bao b&igrave; h&agrave;ng h&oacute;a hoặc ni&ecirc;m phong của h&agrave;ng muốn trả. Trường hợp qu&yacute; kh&aacute;ch mua h&agrave;ng c&oacute; sản phẩm khuyến m&atilde;i k&egrave;m theo, h&agrave;ng khuyến m&atilde;i cần được trả c&ugrave;ng với h&agrave;ng mua.<br><br>Chi ph&iacute; vận chuyển/giao nhận li&ecirc;n quan đến đổi/trả h&agrave;ng sẽ do Foodzone.vn chịu, nếu việc đổi/trả h&agrave;ng do lỗi của Foodzone.vn; trường hợp việc đổi trả do &yacute; muốn chủ quan của kh&aacute;ch h&agrave;ng, th&igrave; Kh&aacute;ch h&agrave;ng sẽ chịu ph&iacute; vận chuyển/giao nhận. Địa chỉ nhận h&agrave;ng đổi trả như sau:</p><p>&nbsp; <strong>&nbsp;C&ocirc;ng ty TNHH Thương Mại Sim Ba<br>&nbsp; &nbsp;R1-08-03, T&ograve;a nh&agrave; EverRich,<br>&nbsp; &nbsp;Số 968 Ba Th&aacute;ng Hai, Phường 15, Quận 11, Tp.HCM.</strong><br><br><u><strong>3. Ho&agrave;n tiền:</strong></u><br>Foodzone.vn cam kết sẽ ho&agrave;n tiền cho Kh&aacute;ch h&agrave;ng trong v&ograve;ng 03 ng&agrave;y sau khi nhận được v&agrave; x&aacute;c nhận t&igrave;nh trạng của h&agrave;ng đổi trả.<br><br><u><strong>4. Việc Khiếu nại chất lượng h&agrave;ng h&oacute;a:</strong></u><br>Trường hợp Kh&aacute;ch h&agrave;ng c&oacute; khiếu nại về chất lượng h&agrave;ng h&oacute;a, vui l&ograve;ng gọi số Hotline 028 7770 4567 hoặc Fax (028) 62 999 708) trong v&ograve;ng 07 ng&agrave;y kể từ khi nhận được h&agrave;ng. Foodzone.vn sẽ li&ecirc;n lạc ngay với kh&aacute;ch h&agrave;ng để giải quyết c&aacute;c khiếu nại.</p>',NULL,NULL,NULL,NULL,NULL,'2020-06-28 00:09:08',NULL,5,NULL,NULL,NULL);
insert  into `pet_news`(`id`,`title_vi`,`content_vi`,`title_en`,`content_en`,`title_jp`,`content_jp`,`slug`,`date`,`image_url`,`user_id`,`updated_at`,`created_at`,`deleted_at`) values (8,'Chính sách bảo mật','<p>Foodzone.vn cam kết sẽ bảo mật những th&ocirc;ng tin mang t&iacute;nh ri&ecirc;ng tư của bạn. Bạn vui l&ograve;ng đọc bản &ldquo;Ch&iacute;nh s&aacute;ch bảo mật&rdquo; dưới đ&acirc;y để hiểu hơn những cam kết m&agrave; ch&uacute;ng t&ocirc;i thực hiện, nhằm t&ocirc;n trọng v&agrave; bảo vệ quyền lợi của người truy cập:</p><p><strong>1. Mục đ&iacute;ch v&agrave; phạm vi thu thập</strong></p><p>- Để truy cập v&agrave; sử dụng một số dịch vụ tại Foodzone.vn, bạn c&oacute; thể sẽ được y&ecirc;u cầu đăng k&yacute; với ch&uacute;ng t&ocirc;i th&ocirc;ng tin c&aacute; nh&acirc;n (Email, Họ t&ecirc;n, Số ĐT li&ecirc;n lạc&hellip;). Mọi th&ocirc;ng tin khai b&aacute;o phải đảm bảo t&iacute;nh ch&iacute;nh x&aacute;c v&agrave; hợp ph&aacute;p. Foodzone.vn kh&ocirc;ng chịu mọi tr&aacute;ch nhiệm li&ecirc;n quan đến ph&aacute;p luật của th&ocirc;ng tin khai b&aacute;o.&nbsp;</p><p>- Ch&uacute;ng t&ocirc;i cũng c&oacute; thể thu thập th&ocirc;ng tin về số lần viếng thăm, bao gồm số trang bạn xem, số links (li&ecirc;n kết) bạn click v&agrave; những th&ocirc;ng tin kh&aacute;c li&ecirc;n quan đến việc kết nối đến site Foodzone.vn. Ch&uacute;ng t&ocirc;i cũng thu thập c&aacute;c th&ocirc;ng tin m&agrave; tr&igrave;nh duyệt Web (Browser) bạn sử dụng mỗi khi truy cập v&agrave;o Foodzone.vn, bao gồm: địa chỉ IP, loại Browser, ng&ocirc;n ngữ sử dụng, thời gian v&agrave; những địa chỉ m&agrave; Browser truy xuất đến.</p><p><strong>2. Phạm vi sử dụng th&ocirc;ng tin</strong></p><p>Foodzone.vn thu thập v&agrave; sử dụng th&ocirc;ng tin c&aacute; nh&acirc;n bạn với mục đ&iacute;ch ph&ugrave; hợp v&agrave; ho&agrave;n to&agrave;n tu&acirc;n thủ nội dung của &ldquo;Ch&iacute;nh s&aacute;ch bảo mật&rdquo; n&agrave;y. Khi cần thiết, ch&uacute;ng t&ocirc;i c&oacute; thể sử dụng những th&ocirc;ng tin n&agrave;y v&agrave;o c&aacute;c mục đ&iacute;ch:</p><p>- Xử l&yacute; đơn h&agrave;ng: gọi điện/tin nhắn x&aacute;c nhận việc đặt h&agrave;ng, th&ocirc;ng b&aacute;o về trạng th&aacute;i đơn h&agrave;ng &amp; thời gian giao h&agrave;ng, x&aacute;c nhận việc huỷ đơn h&agrave;ng (nếu c&oacute;).</p><p>- Gởi thư ngỏ/ thư cảm ơn, giới thiệu sản phẩm, cung cấp th&ocirc;ng tin/ dịch vụ mới hoặc c&aacute;c chương tr&igrave;nh khuyến m&atilde;i của Foodzone.vn.</p><p>- Giải quyết khiếu nại v&agrave; giải đ&aacute;p thắc mắc của kh&aacute;ch h&agrave;ng.</p><p>- Xem x&eacute;t v&agrave; n&acirc;ng cấp nội dung v&agrave; giao diện của website v&agrave; ứng dụng.</p><p>- C&aacute;c khảo s&aacute;t để chăm s&oacute;c kh&aacute;ch h&agrave;ng tốt hơn.</p><p>- X&aacute;c nhận c&aacute;c th&ocirc;ng tin về kỹ thuật &amp; bảo mật th&ocirc;ng tin kh&aacute;ch h&agrave;ng.</p><p>- C&aacute;c trường hợp c&oacute; sự y&ecirc;u cầu của cơ quan nh&agrave; nước c&oacute; thẩm quyền, theo đ&uacute;ng quy định của ph&aacute;p luật.</p><p><strong>3. Thời gian lưu trữ th&ocirc;ng tin</strong></p><p>Dữ liệu c&aacute; nh&acirc;n của Th&agrave;nh vi&ecirc;n sẽ được lưu trữ cho đến khi c&oacute; y&ecirc;u cầu hủy bỏ hoặc tự th&agrave;nh vi&ecirc;n đăng nhập v&agrave; thực hiện hủy bỏ. C&ograve;n lại trong mọi trường hợp th&ocirc;ng tin c&aacute; nh&acirc;n th&agrave;nh vi&ecirc;n sẽ được bảo mật tr&ecirc;n m&aacute;y chủ của Foodzone.vn.</p><p><strong>4. Địa chỉ của đơn vị thu thập v&agrave; quản l&yacute; th&ocirc;ng tin c&aacute; nh&acirc;n</strong></p><p>C&Ocirc;NG TY TNHH THƯƠNG MẠI SIM BA</p><p>Địa chỉ : R1-08-03 T&ograve;a nh&agrave; Everich Số 968, Ba Th&aacute;ng Hai, P.15, Q11, Tp.HCM</p><p>Điện thoại: 028 7770 4567</p><p><strong>5. Phương tiện v&agrave; c&ocirc;ng cụ để người d&ugrave;ng tiếp cận v&agrave; chỉnh sửa dữ liệu c&aacute; nh&acirc;n</strong></p><p>Người d&ugrave;ng tiếp cận v&agrave; chỉnh sửa dữ liệu c&aacute; nh&acirc;n bằng c&aacute;ch h&igrave;nh thức sau:</p><p>+ Trực tiếp truy cập website bằng ID c&aacute; nh&acirc;n v&agrave; chỉnh sửa/ cập nhật th&ocirc;ng tin tại mục Th&ocirc;ng tin c&aacute; nh&acirc;n.</p><p>+ Gọi điện thoại đến tổng đ&agrave;i chăm s&oacute;c kh&aacute;ch h&agrave;ng 028 7770 4567, bằng nghiệp vụ chuy&ecirc;n m&ocirc;n x&aacute;c định th&ocirc;ng tin c&aacute; nh&acirc;n v&agrave; nh&acirc;n vi&ecirc;n c&ocirc;ng ty sẽ hỗ trợ chỉnh sửa thay người d&ugrave;ng.</p><p>+ Gửi g&oacute;p &yacute; trực tiếp từ website Foodzone.vn, quản trị vi&ecirc;n kiểm tra th&ocirc;ng tin v&agrave; li&ecirc;n lạc lại với người d&ugrave;ng để x&aacute;c nhận th&ocirc;ng tin 1 lần nữa v&agrave; quản trị vi&ecirc;n chỉnh sửa th&ocirc;ng tin cho người d&ugrave;ng.</p><p><strong>6. Cam kết bảo mật th&ocirc;ng tin c&aacute; nh&acirc;n kh&aacute;ch h&agrave;ng</strong><br>+ Kh&aacute;ch h&agrave;ng c&oacute; quyền y&ecirc;u cầu thay đổi hoặc huỷ bỏ th&ocirc;ng tin c&aacute; nh&acirc;n của m&igrave;nh.</p><p>+ Th&ocirc;ng tin c&aacute; nh&acirc;n của th&agrave;nh vi&ecirc;n tr&ecirc;n Foodzone.vn được Foodzone.vn cam kết bảo mật tuyệt đối theo ch&iacute;nh s&aacute;ch bảo vệ th&ocirc;ng tin c&aacute; nh&acirc;n của Foodzone.vn. Việc thu thập v&agrave; sử dụng th&ocirc;ng tin của mỗi th&agrave;nh vi&ecirc;n chỉ được thực hiện khi c&oacute; sự đồng &yacute; của kh&aacute;ch h&agrave;ng đ&oacute; trừ những trường hợp ph&aacute;p luật c&oacute; quy định kh&aacute;c.</p><p>+ Chỉ sử dụng th&ocirc;ng tin kh&aacute;ch h&agrave;ng v&agrave;o c&aacute;c nội dung ở mục 2. Kh&ocirc;ng ph&aacute;t t&aacute;n, cung cấp th&ocirc;ng tin kh&aacute;ch h&agrave;ng cho b&ecirc;n thứ 3 trừ trường hợp cơ quan nh&agrave; nước c&oacute; thẩm quyền y&ecirc;u cầu.</p><p>Foodzone.vn cũng khuyến c&aacute;o qu&yacute; kh&aacute;ch n&ecirc;n tu&acirc;n thủ c&aacute;c nguy&ecirc;n tắc sau để c&oacute; thể bảo vệ th&ocirc;ng tin c&aacute; nh&acirc;n của m&igrave;nh, gồm:</p><p>+ Kh&ocirc;ng tiết lộ T&ecirc;n sử dụng/T&ecirc;n đăng nhập v&agrave;/hoặc Mật khẩu với bất kỳ ai, viết hoặc sử dụng ở nơi m&agrave; mọi người c&oacute; thể nhận biết v&agrave; nh&igrave;n thấy được.</p><p>+ Khi chọn mật khẩu qu&yacute; kh&aacute;ch kh&ocirc;ng n&ecirc;n chọn những th&ocirc;ng tin dễ x&aacute;c định như họ t&ecirc;n, ng&agrave;y sinh, số điện thoại hoặc một số k&yacute; tự, con số dễ nhận biết từ t&ecirc;n, ng&agrave;y sinh, số điện thoại của qu&yacute; kh&aacute;ch.</p><p>+ Tho&aacute;t khỏi hệ thống v&agrave; tr&igrave;nh duyệt khi rời khỏi m&aacute;y t&iacute;nh, ngay cả trong thời gian ngắn. Nếu sử dụng m&aacute;y t&iacute;nh chung nhiều người, qu&yacute; kh&aacute;ch n&ecirc;n đăng xuất, hoặc tho&aacute;t hết tất cả cửa sổ website đang mở.</p><p>+ Khi nghi ngờ mật khẩu đ&atilde; bị lộ, qu&yacute; kh&aacute;ch thay đổi mật khẩu ngay lập tức, trong trường hợp cần thiết qu&yacute; kh&aacute;ch lập tức th&ocirc;ng b&aacute;o v&agrave; đề nghị được hỗ trợ từ Foodzone.vn.</p>',NULL,NULL,NULL,NULL,NULL,'2020-06-28 00:09:16',NULL,5,NULL,NULL,NULL);
insert  into `pet_news`(`id`,`title_vi`,`content_vi`,`title_en`,`content_en`,`title_jp`,`content_jp`,`slug`,`date`,`image_url`,`user_id`,`updated_at`,`created_at`,`deleted_at`) values (9,'ĐIỀU CHỈNH GIẢM GIÁ BÁN RƯỢU DASSAI 45','<p><img src=\"http://www.simba.com.vn/public/uploads/2020-03-02/1583121123.jpg\" class=\"fr-dii fr-draggable\"></p><p align=\"left\">K&iacute;nh gửi Qu&yacute; kh&aacute;ch h&agrave;ng,<br><br>Sim Ba xin gửi đến Qu&yacute; kh&aacute;ch h&agrave;ng lời ch&agrave;o tr&acirc;n trọng. C&aacute;m ơn Qu&yacute; kh&aacute;ch h&agrave;ng đ&atilde; lu&ocirc;n ủng hộ ch&uacute;ng t&ocirc;i trong thời gian qua.<br><br>&nbsp;Sau khi l&agrave;m việc với nh&agrave; sản xuất, ch&uacute;ng t&ocirc;i quyết định điều chỉnh giảm gi&aacute; b&aacute;n rượu <strong>Dassai 45</strong> c&aacute;c size kể từ ng&agrave;y <strong>01/03/2020</strong>, cụ thể như sau:</p><p align=\"left\"><img src=\"http://www.simba.com.vn/public/uploads/2020-03-02/1583122604.jpg\" class=\"fr-dii fr-draggable\"></p>',NULL,NULL,NULL,NULL,NULL,'2020-07-21 14:30:52',NULL,5,NULL,NULL,NULL);
insert  into `pet_news`(`id`,`title_vi`,`content_vi`,`title_en`,`content_en`,`title_jp`,`content_jp`,`slug`,`date`,`image_url`,`user_id`,`updated_at`,`created_at`,`deleted_at`) values (10,'Test 1','<p>Test</p>\r\n','Good News','<p>sdfsdf</p>\r\n','Japanese','<p>sdfsdf</p>\r\n','','2020-07-21 15:26:37','/assets/images/placeholder.png',5,NULL,NULL,NULL);
insert  into `pet_news`(`id`,`title_vi`,`content_vi`,`title_en`,`content_en`,`title_jp`,`content_jp`,`slug`,`date`,`image_url`,`user_id`,`updated_at`,`created_at`,`deleted_at`) values (11,'Omakase - hành trình khám phá ẩm thực đỉnh cao đất nước Mặt trời mọc','<p style=\"text-align:justify\"><strong><span style=\"font-size:18px\">Với những t&iacute;n đồ ẩm thực Nhật Bản y&ecirc;u th&iacute;ch hương vị thuần khiết của Sushi, Sashimi v&agrave; Tempura th&igrave; tuyệt phẩm Omakase sẽ l&agrave; một trải nghiệm kh&ocirc;ng thể bỏ qua.</span></strong></p>\r\n\r\n<p>Omakase l&agrave; phong ẩm thực nổi tiếng v&agrave; l&acirc;u đời của người Nhật. Khi bạn chọn thực đơn Omakase th&igrave; c&oacute; nghĩa l&agrave; bạn sẽ để đầu bếp quyết định m&oacute;n ăn của m&igrave;nh. Bản th&acirc;n của từ n&agrave;y trong tiếng Nhật c&oacute; nghĩa l&agrave; &ldquo;t&ocirc;i tin tưởng (tuỳ) v&agrave;o bạn&rdquo;. Omakase c&oacute; mặt tại những nh&agrave; h&agrave;ng c&oacute; nguy&ecirc;n liệu tươi sống mỗi ng&agrave;y như c&aacute;c nh&agrave; h&agrave;ng Sushi.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p><img alt=\"Omakase - hành trình khám phá ẩm thực đỉnh cao đất nước Mặt trời mọc - Ảnh 1\" class=\"fr-dii fr-draggable\" src=\"https://static.doanhnhan.vn/w761/images/upload/2020/7/7/pp-sorae-4-154622.jpg\" style=\"height:367.688px; width:555px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Omakase - hành trình khám phá ẩm thực đỉnh cao đất nước Mặt trời mọc - Ảnh 2\" class=\"fr-dii fr-draggable\" src=\"https://static.doanhnhan.vn/w761/images/upload/2020/7/7/pp-sorae-14-154640.jpg\" style=\"height:370.007px; width:557px\" /></p>\r\n\r\n<p style=\"text-align:justify\">Trải nghiệm Omakase l&agrave; một h&agrave;nh tr&igrave;nh thi vị, độc nhất v&agrave; ẩn chứa nhiều bất ngờ m&agrave; hiếm m&oacute;n ăn n&agrave;o c&oacute; thể mang lại.</p>\r\n\r\n<p style=\"text-align:justify\">Thực kh&aacute;ch sẽ kh&ocirc;ng gọi m&oacute;n cụ thể hay y&ecirc;u cầu thay đổi theo khẩu vị c&aacute; nh&acirc;n m&agrave; chuẩn bị tinh thần đ&oacute;n nhận những trải nghiệm bất ngờ từ những s&aacute;ng tạo độc đ&aacute;o, gu ẩm thực tuyệt vời của một đầu bếp phục vụ Omakase đầy t&acirc;m huyết.</p>\r\n\r\n<p><img alt=\"Omakase - hành trình khám phá ẩm thực đỉnh cao đất nước Mặt trời mọc - Ảnh 3\" class=\"fr-dii fr-draggable\" src=\"https://static.doanhnhan.vn/w761/images/upload/2020/7/7/pp-sorae-8-154701.jpg\" style=\"height:368.007px; width:554px\" /></p>\r\n\r\n<p><img alt=\"Omakase - hành trình khám phá ẩm thực đỉnh cao đất nước Mặt trời mọc - Ảnh 4\" class=\"fr-dii fr-draggable\" src=\"https://static.doanhnhan.vn/w761/images/upload/2020/7/7/img_0980-154723.jpg\" style=\"height:366.686px; width:552px\" /></p>\r\n\r\n<p style=\"text-align:justify\">Kh&ocirc;ng chỉ thưởng thức ẩm thực đơn thuần, thực kh&aacute;ch c&ograve;n c&oacute; cơ hội tr&ograve; chuyện với đầu bếp Omakase để thấu hiểu hơn về tinh thần l&agrave;m n&ecirc;n những tuyệt phẩm ho&agrave;n hảo cả về vị gi&aacute;c lẫn h&igrave;nh thức &ndash; điểm nhấn quan trọng tạo ra sự kh&aacute;c biệt đ&aacute;ng kể trong phong c&aacute;ch thưởng thức m&oacute;n ăn v&ocirc; c&ugrave;ng th&uacute; vị n&agrave;y.</p>\r\n\r\n<p><img alt=\"Omakase - hành trình khám phá ẩm thực đỉnh cao đất nước Mặt trời mọc - Ảnh 5\" class=\"fr-dii fr-draggable\" src=\"https://static.doanhnhan.vn/w761/images/upload/2020/7/7/pp-sorae-1-154739.jpg\" style=\"height:367.35px; width:553px\" /></p>\r\n\r\n<p><img alt=\"Omakase - hành trình khám phá ẩm thực đỉnh cao đất nước Mặt trời mọc - Ảnh 6\" class=\"fr-dii fr-draggable\" src=\"https://static.doanhnhan.vn/w761/images/upload/2020/7/7/pp-sorae-15-160140.jpg\" style=\"height:366.686px; width:552px\" /></p>\r\n\r\n<p style=\"text-align:justify\">Omakase chỉ phổ biến trong thực đơn của những nh&agrave; h&agrave;ng Nhật Bản cao cấp, đ&ograve;i hỏi nguy&ecirc;n liệu tươi ngon thuần khiết nhất, được chế biến bởi đ&ocirc;i b&agrave;n tay t&agrave;i hoa của c&aacute;c bậc thầy am hiểu ẩm thực đỉnh cao để c&oacute; thể tạo n&ecirc;n m&oacute;n Omakase đ&uacute;ng điệu.</p>\r\n\r\n<p style=\"text-align:justify\">Kh&ocirc;ng gian để thưởng thức Omakase cũng phải được thiết kế đặc biệt, ấm c&uacute;ng v&agrave; gần gũi để thực kh&aacute;ch &ldquo;mục sở thị&rdquo; qu&aacute; tr&igrave;nh chế biến của đầu bếp.</p>\r\n\r\n<p style=\"text-align:justify\">Bằng sự kh&eacute;o l&eacute;o, cảm nhận tinh tế c&ugrave;ng niềm đam m&ecirc;, đầu bếp Omakase &ldquo;thổi hồn&rdquo; v&agrave;o từng nguy&ecirc;n liệu, biến những &yacute; tưởng s&aacute;ng tạo th&agrave;nh những m&oacute;n ăn ho&agrave;n hảo, độc nhất được b&agrave;i tr&iacute; c&ocirc;ng phu với hương vị kh&oacute; qu&ecirc;n.&nbsp;</p>\r\n\r\n<p style=\"text-align:right\"><em>Theo R.R</em></p>\r\n','Omakase - a journey to discover the Japanese culinary','<p style=\"text-align:justify\"><strong><span style=\"font-size:18px\">For Japanese culinary devotees who love the pure flavors of Sushi, Sashimi and Tempura, Omakase will be an experience not to be missed.</span></strong></p>\r\n\r\n<p style=\"text-align:justify\">Omakase is a famous dinning tradition of letting the chef decide your order, originated from Japan. The word itself means &ldquo;I will leave it to you&rdquo;.</p>\r\n\r\n<p style=\"text-align:justify\">Omakase course is usually available at restaurants with fresh ingredients arriving everyday. These restaurants often serve sushi where the dishes require fresh seafood and meat.</p>\r\n\r\n<p><img alt=\"Omakase - hành trình khám phá ẩm thực đỉnh cao đất nước Mặt trời mọc - Ảnh 1\" class=\"fr-dii fr-draggable\" src=\"https://static.doanhnhan.vn/w761/images/upload/2020/7/7/pp-sorae-4-154622.jpg\" style=\"height:366.021px; width:551px\" /></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p><img alt=\"Omakase - hành trình khám phá ẩm thực đỉnh cao đất nước Mặt trời mọc - Ảnh 2\" class=\"fr-dii fr-draggable\" src=\"https://static.doanhnhan.vn/w761/images/upload/2020/7/7/pp-sorae-14-154640.jpg\" style=\"height:362.7px; width:546px\" /></p>\r\n\r\n<p style=\"text-align:justify\">Experiencing Omakase is a poetic, unique and full of surprises that few dishes can bring.<br />\r\nDiners will not order specific dishes or request to change according to personal taste but prepare the spirit of receiving unexpected experiences from the unique creations and great culinary tastes of a dedicated Omakase chef.</p>\r\n\r\n<p><img alt=\"Omakase - hành trình khám phá ẩm thực đỉnh cao đất nước Mặt trời mọc - Ảnh 3\" class=\"fr-dii fr-draggable\" src=\"https://static.doanhnhan.vn/w761/images/upload/2020/7/7/pp-sorae-8-154701.jpg\" style=\"height:362.7px; width:546px\" /></p>\r\n\r\n<p><img alt=\"Omakase - hành trình khám phá ẩm thực đỉnh cao đất nước Mặt trời mọc - Ảnh 4\" class=\"fr-dii fr-draggable\" src=\"https://static.doanhnhan.vn/w761/images/upload/2020/7/7/img_0980-154723.jpg\" style=\"height:364.693px; width:549px\" /></p>\r\n\r\n<p style=\"text-align:justify\">Not only enjoying pure cuisine, diners also have the opportunity to chat with chef Omakase to better understand the spirit of making perfect masterpieces in both taste and form - an important highlight to create the There is a significant difference in the style of enjoying this interesting meal.</p>\r\n\r\n<p><img alt=\"Omakase - hành trình khám phá ẩm thực đỉnh cao đất nước Mặt trời mọc - Ảnh 5\" class=\"fr-dii fr-draggable\" src=\"https://static.doanhnhan.vn/w761/images/upload/2020/7/7/pp-sorae-1-154739.jpg\" style=\"height:365.357px; width:550px\" /></p>\r\n\r\n<p><img alt=\"Omakase - hành trình khám phá ẩm thực đỉnh cao đất nước Mặt trời mọc - Ảnh 6\" class=\"fr-dii fr-draggable\" src=\"https://static.doanhnhan.vn/w761/images/upload/2020/7/7/pp-sorae-15-160140.jpg\" style=\"height:367.35px; width:553px\" /></p>\r\n\r\n<p style=\"text-align:justify\">Omakase is only popular in the menu of high-end Japanese restaurants, requiring the purest fresh ingredients, prepared by the talented hands of expert culinary masters to be able to create the Omakase.</p>\r\n\r\n<p style=\"text-align:justify\">The space to enjoy Omakase must also be specially designed, cozy and close for diners to &quot;taste&quot; the chef&#39;s processing.</p>\r\n\r\n<p style=\"text-align:justify\">With the ingenuity, delicate feeling and passion, the Omakase chef &quot;brings soul&quot; into each ingredient, turning creative ideas into perfect, unique dishes, ornate with flavor unforgettable.</p>\r\n\r\n<p style=\"text-align:right\"><em>Theo R.R</em></p>\r\n','おまかせ-日本の料理を発見する旅','<p><strong>寿司、刺身、天ぷらのピュアな味わいを愛する日本の料理愛好家にとって、おまかせは必見の体験です。</strong></p>\r\n\r\n<p>おまかせは、日本発祥の伝統料理で、シェフが注文を決めます。言葉そのものは「お任せします」という意味です。</p>\r\n\r\n<p>おまかせコースは通常、新鮮な食材が毎日届くレストランで利用できます。これらのレストランでは、新鮮な魚介類や肉が必要な寿司を提供しています。</p>\r\n\r\n<p><img alt=\"おまかせ-hànhtrìnhkhámpháẩmthựcđỉnhcaođấtnướcMặttrờimọc-Ảnh1\" class=\"fr-dii fr-draggable\" src=\"https://static.doanhnhan.vn/w761/images/upload/2020/7/7/pp-sorae-4-154622.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"おまかせ-hànhtrìnhkhámpháẩmthựcđỉnhcaođấtnướcMặttrờimọc-Ảnh2\" class=\"fr-dii fr-draggable\" src=\"https://static.doanhnhan.vn/w761/images/upload/2020/7/7/pp-sorae-14-154640.jpg\" /></p>\r\n\r\n<p>おまかせを体験することは詩的で独特であり、いくつかの料理がもたらす驚きに満ちています。<br />\r\nダイナーは、特定の料理を注文したり、個人の好みに応じて変更を要求したりせず、専任のオマカセシェフのユニークな料理と素晴らしい料理の味から予想外の体験を受け取る精神を準備します。</p>\r\n\r\n<p><img alt=\"おまかせ-hànhtrìnhkhámpháẩmthựcđỉnhcaođấtnướcMặttrờimọc-Ảnh3\" class=\"fr-dii fr-draggable\" src=\"https://static.doanhnhan.vn/w761/images/upload/2020/7/7/pp-sorae-8-154701.jpg\" /></p>\r\n\r\n<p><img alt=\"おまかせ-hànhtrìnhkhámpháẩmthựcđỉnhcaođấtnướcMặttrờimọc-Ảnh4\" class=\"fr-dii fr-draggable\" src=\"https://static.doanhnhan.vn/w761/images/upload/2020/7/7/img_0980-154723.jpg\" /></p>\r\n\r\n<p>純粋な料理を楽しむだけでなく、おまかせシェフと話をして、味と形の両方で完璧な傑作を作る精神をよりよく理解することもできます。この興味深い食事の楽しみ方には大きな違いがあります。&nbsp;</p>\r\n\r\n<p><img alt=\"おまかせ-hànhtrìnhkhámpháẩmthựcđỉnhcaođấtnướcMặttrờimọc-Ảnh5\" class=\"fr-dii fr-draggable\" src=\"https://static.doanhnhan.vn/w761/images/upload/2020/7/7/pp-sorae-1-154739.jpg\" /></p>\r\n\r\n<p><img alt=\"おまかせ-hànhtrìnhkhámpháẩmthựcđỉnhcaođấtnướcMặttrờimọc-Ảnh6\" class=\"fr-dii fr-draggable\" src=\"https://static.doanhnhan.vn/w761/images/upload/2020/7/7/pp-sorae-15-160140.jpg\" /></p>\r\n\r\n<p>おまかせは、高級日本食レストランのメニューでのみ人気があり、熟練した料理の達人の才能のある手によっておまかせを作成できるように準備された、最も純粋で新鮮な食材が必要です。</p>\r\n\r\n<p>おまかせを楽しむための空間は、特別にデザインされ、居心地がよく、ディナーの際にシェフの加工を「味わう」ために近くなければなりません。</p>\r\n\r\n<p>創意工夫、繊細な気分、情熱で、おまかせのシェフはそれぞれの要素に「魂」を吹き込み、創造的なアイデアを完璧でユニークな料理に変え、忘れられない風味で華やかにします。</p>\r\n\r\n<p style=\"text-align:right\"><em>RR</em></p>\r\n\r\n<p style=\"text-align:right\">&nbsp;</p>\r\n','','2020-08-12 11:31:36','/assets/images/placeholder.png',5,NULL,NULL,NULL);
insert  into `pet_news`(`id`,`title_vi`,`content_vi`,`title_en`,`content_en`,`title_jp`,`content_jp`,`slug`,`date`,`image_url`,`user_id`,`updated_at`,`created_at`,`deleted_at`) values (12,'Natto - Món ăn bổ dưỡng từ Nhật Bản','<p style=\"text-align:justify\">L&agrave; một loại enzyme c&oacute; độ tinh khiết cao, Natto được coi l&agrave; một trong những si&ecirc;u thực dưỡng ng&agrave;y nay. Chất bổ sung đặc biệt hiệu quả để cải thiện qu&aacute; tr&igrave;nh lưu th&ocirc;ng m&aacute;u, nhưng c&ocirc;ng dụng của n&oacute; kh&ocirc;ng dừng lại ở đ&oacute;. Chất nhầy v&agrave; vị mặn của natto rất kh&oacute; để hấp dẫn mọi người; tuy nhi&ecirc;n, n&oacute; lại l&agrave; sản phẩm rất tốt cho sức khỏe.</p>\r\n\r\n<p style=\"text-align:justify\">Natto (な っ と う hay 納豆) l&agrave; một m&oacute;n ăn truyền thống của Nhật Bản được l&agrave;m từ đậu n&agrave;nh l&ecirc;n men. N&oacute; thường được ăn với cơm, h&agrave;nh l&aacute;, nước tương v&agrave; một &iacute;t m&ugrave; tạt v&agrave;ng karashi. Natto thường được người Nhật ăn v&agrave;o bữa s&aacute;ng.</p>\r\n\r\n<p style=\"text-align:center\"><img class=\"fr-dii fr-draggable\" src=\"http://www.foodzone.vn/public/uploads/2020-08-12/1597224220.png\" style=\"height:543px; width:543px\" /></p>\r\n\r\n<p style=\"text-align:justify\">Natto - một sự kết hợp tạo ra nhiều loại protein thực vật c&oacute; lợi cho sức khỏe. Ban đầu natto c&oacute; hương vị kh&aacute; kh&oacute; ngửi, mặn v&agrave; nhầy.&nbsp;Tuy nhi&ecirc;n, Natto c&oacute; thể được sử dụng như một phương ph&aacute;p điều trị v&agrave; ph&ograve;ng ngừa sức khỏe hiệu quả. Với bảng m&agrave;u protein đa dạng, thực phẩm cung cấp nhiều loại chất dinh dưỡng tốt cho việc điều trị một loạt c&aacute;c t&igrave;nh trạng sức khỏe.</p>\r\n\r\n<p style=\"text-align:justify\"><a href=\"http://www.foodzone.vn/index/details/3965\">Bạn c&oacute; thể mua natto tại đ&acirc;y</a>.</p>\r\n\r\n<p style=\"text-align:justify\">C&oacute; c&acirc;u: &ldquo;You are what you eat - Những g&igrave; bạn ăn thể hiện bạn l&agrave; ai&rdquo;. Quan điểm n&agrave;y đặc biệt đ&uacute;ng khi n&oacute;i đến c&aacute;c loại thực phẩm như natto - một loại si&ecirc;u thực phẩm chứa đầy chất dinh dưỡng c&oacute; hiệu quả để điều trị một loạt c&aacute;c t&igrave;nh trạng kh&aacute;c nhau.</p>\r\n\r\n<p style=\"text-align:right\"><em>Source: justonecookbook</em></p>\r\n','Natto - Health Benefits','<p style=\"text-align:justify\"><strong>A highly purified enzyme, natto is considered one of today&rsquo;s superfoods. The supplement is particularly effective for improving circulation and reducing swelling, but its uses do not stop there. The enzyme&rsquo;s slimy texture and salty flavor are not necessarily attractive to everyone; however, its health benefits are.</strong></p>\r\n\r\n<p style=\"text-align:justify\"><strong>Natto</strong> (なっとう or 納豆) is a traditional Japanese food made of fermented soybeans. &nbsp;It is usually served over rice with green onions, soy sauce and&nbsp;<em>karashi</em>&nbsp;mustard. &nbsp;Natto is most commonly eaten as a Japanese style breakfast food.</p>\r\n\r\n<p style=\"text-align:center\"><img class=\"fr-dib fr-draggable\" src=\"http://www.foodzone.vn/public/uploads/2020-08-12/1597224220.png\" style=\"height:540px; width:540px\" /></p>\r\n\r\n<p style=\"text-align:justify\">Natto &ndash; a combination that renders an assortment of healthful vegetable proteins. Traditionally called nattokinase, natto can be described in flavor as strong and pungent with a slimy texture. The supplement can also be likened in flavor to the salty bite of blue cheese and is typically eaten with rice.<br />\r\n<a href=\"http://www.foodzone.vn/index/details/3965\">Detailed reference for Natto</a></p>\r\n\r\n<p style=\"text-align:justify\">The saying goes, &ldquo;You are what you eat.&rdquo; This sentiment is especially true when it comes to supplemental foods like natto &ndash; a nutrient filled superfood effective for treating a host of different conditions.</p>\r\n\r\n<p style=\"text-align:right\"><em>Source: justonecookbook</em></p>\r\n','納豆-健康上の利点','<p><strong>高度に精製された酵素である納豆は、今日のスーパーフードの1つと考えられています。サプリメントは循環の改善と腫れの軽減に特に効果的ですが、その使用はそこで止まりません。酵素のぬるぬるした食感と塩味は必ずしも誰にとっても魅力的ではありません。しかし、その健康上の利点があります。</strong></p>\r\n\r\n<p><strong>納豆は</strong>（なっとうや納豆）納豆で作られた日本の伝統的な食べ物です。通常、ネギ、醤油、<em>唐辛子</em>マスタードを添えてご飯の上に出されます。納豆は、和食の朝食によく食べられます。 &nbsp;</p>\r\n\r\n<p><img class=\"fr-dii fr-draggable\" src=\"http://www.foodzone.vn/public/uploads/2020-08-12/1597224220.png\" /></p>\r\n\r\n<p>納豆&ndash;健康的な植物性タンパク質の品揃えを提供する組み合わせ。納豆は伝統的にナットウキナーゼと呼ばれ、味は粘り気があり、粘り気があり、粘り気があり、粘り気がある。サプリメントは、風味がブルーチーズの塩味に似ていることもあり、通常はご飯と一緒に食べられます。</p>\r\n\r\n<p><span style=\"color:#000000\"><a href=\"http://www.foodzone.vn/index/search?q=ms021&amp;type=product\">ここで納豆を買うことができます。</a></span></p>\r\n\r\n<p><span style=\"color:#000000\">「あなたはあなたが食べるものです。」という格言は続きます。この感情は、納豆のような栄養補助食品に特に当てはまります。これは、さまざまな病状の治療に効果的な栄養素入りのスーパーフードです。</span></p>\r\n\r\n<p style=\"text-align:right\"><span style=\"color:#000000\"><em>justonecookbook</em></span></p>\r\n\r\n<h1>&nbsp;</h1>\r\n','','2020-08-12 16:28:08','/assets/images/placeholder.png',5,NULL,NULL,NULL);
insert  into `pet_news`(`id`,`title_vi`,`content_vi`,`title_en`,`content_en`,`title_jp`,`content_jp`,`slug`,`date`,`image_url`,`user_id`,`updated_at`,`created_at`,`deleted_at`) values (13,'Tamago Kakegohan - Vì sao người Nhật mê đắm món cơm trứng sống này?','<p style=\"text-align:left\">Một trong những m&oacute;n ăn phổ biến, được nhiều người Nhật ưa chuộng nhất l&agrave; cơm trộn trứng sống (Tamago Kakegohan). Cho trứng sống v&agrave;o b&aacute;t cơm trắng, th&ecirc;m ch&uacute;t x&igrave; dầu v&agrave; &iacute;t h&agrave;nh ng&ograve;, thế l&agrave; th&agrave;nh bữa s&aacute;ng đơn giản m&agrave; tiết kiệm.</p>\r\n\r\n<p><img class=\"fr-dib fr-draggable\" src=\"http://www.foodzone.vn/public/uploads/2020-08-13/1597285643.jpg\" style=\"height:357.664px; width:537px\" /></p>\r\n\r\n<p style=\"text-align:justify\">Ngo&agrave;i ra c&ograve;n nhiều m&oacute;n kh&aacute;c sử dụng trứng sống như Oyako-don, lẩu sukiyaki, lẩu shabushabu...<br />\r\nKh&aacute;c với người Việt thường ăn ch&iacute;n uống s&ocirc;i, người Nhật lại rất th&iacute;ch ăn trứng g&agrave; sống v&agrave; sử dụng cho hầu hết c&aacute;c m&oacute;n ăn y&ecirc;u th&iacute;ch của họ.<br />\r\nNhưng khi sống ở nước ngo&agrave;i họ lại kh&ocirc;ng ăn trứng g&agrave; sống m&agrave; chỉ khi về lại Nhật họ mới thưởng thức với vẻ m&atilde;n nguyện r&otilde; rệt. Bạn c&oacute; biết v&igrave; sao kh&ocirc;ng?</p>\r\n\r\n<p style=\"text-align:justify\">Trứng l&agrave; loại dễ nhiễm phải vi khuẩn Salmonella SE, nguy&ecirc;n nh&acirc;n g&acirc;y ra chứng ngộ độc thực phẩm ở người. Tại Mỹ, khoảng 0.03% trứng sống bị nhiễm v&agrave; con số đ&oacute; c&oacute; lẽ sẽ cao hơn tại Việt Nam.</p>\r\n\r\n<p style=\"text-align:justify\">Để diệt vi khuẩn n&agrave;y phải qua xử l&yacute; nhiệt ở 100 độ. V&igrave; vậy phần l&ograve;ng v&agrave;ng của trứng nếu trong t&igrave;nh trạng lỏng, chưa ch&iacute;n th&igrave; vẫn c&ograve;n tồn tại vi khuẩn đ&oacute;. Do đ&oacute;, d&ugrave; rất th&iacute;ch ăn trứng sống nhưng người Nhật vẫn lựa chọn kh&ocirc;ng ăn khi ở nước ngo&agrave;i.<br />\r\nNhư thế c&oacute; nghĩa l&agrave; trứng g&agrave; sống ở Nhật an to&agrave;n?<br />\r\nSự thật đ&uacute;ng như vậy.</p>\r\n\r\n<p style=\"text-align:justify\"><img class=\"fr-dib fr-draggable\" src=\"http://www.foodzone.vn/public/uploads/2020-08-14/1597394764.png\" style=\"height:238.483px; width:546px\" /></p>\r\n\r\n<p style=\"text-align:center\"><a href=\"http://www.foodzone.vn/index/details/5286\"><em>Trứng g&agrave; ăn sống Vfood</em></a></p>\r\n\r\n<p style=\"text-align:justify\">Người ta ti&ecirc;m ph&ograve;ng vắc-xin cho g&agrave; đầy đủ, v.v&hellip; n&ecirc;n g&agrave; con đẻ ra được nu&ocirc;i th&agrave;nh g&agrave; đẻ trứng khỏe mạnh m&agrave; ho&agrave;n to&agrave;n kh&ocirc;ng sử dụng c&aacute;c chất kh&aacute;ng sinh ngay từ giai đoạn c&ograve;n l&agrave; g&agrave; con.G&agrave; con được chăm s&oacute;c ch&uacute; trọng đến m&ocirc;i trường kh&ocirc;ng kh&iacute;, quản l&yacute; vệ sinh, được cung cấp thức ăn dinh dưỡng để sinh sống thoải m&aacute;i trong chuồng g&agrave; đ&atilde; ngăn chặn sự x&acirc;m nhập của c&aacute;c t&aacute;c nh&acirc;n b&ecirc;n ngo&agrave;i mang vi khuẩn, v.v&hellip; v&agrave;o chuồng.Đ&oacute; l&agrave; nguy&ecirc;n nh&acirc;n m&agrave; người Nhật c&oacute; thể thoải m&aacute;i ăn trứng g&agrave; sống m&agrave; kh&ocirc;ng lo ngộ độc thực phẩm.</p>\r\n\r\n<p style=\"text-align:justify\">Người Nhật kh&ocirc;ng phải t&ugrave;y tiện cho trứng sống v&agrave;o thức ăn, m&agrave; họ đ&atilde; t&iacute;nh to&aacute;n v&agrave; nghi&ecirc;n cứu kỹ m&oacute;n ăn n&agrave;o kết hợp<br />\r\nđược với trứng sống sẽ ra hương vị đặc biệt g&igrave;.</p>\r\n\r\n<p style=\"text-align:justify\"><img class=\"fr-dib fr-draggable\" src=\"http://www.foodzone.vn/public/uploads/2020-08-14/1597395308.png\" style=\"height:364.103px; width:544px\" />Như lẩu sukiyaki, khi cho thịt b&ograve; ch&iacute;n nh&uacute;ng v&agrave;o trứng sống l&agrave;m miếng thịt mềm, b&eacute;o ngậy, khiến c&aacute;c thực kh&aacute;ch cứ muốn ăn m&atilde;i. Kh&ocirc;ng c&oacute; trứng sống sẽ kh&ocirc;ng l&agrave;m n&ecirc;n lẩu sukiyaki.</p>\r\n\r\n<p style=\"text-align:right\"><em>Nguồn: Kengo Abe - www.japo.vn</em></p>\r\n','Rice topped with egg','<h2><em><span style=\"font-size:14px\"><strong>What Is Tamago Kake Gohan?</strong></span></em></h2>\r\n\r\n<p>Tamago kake gohan can be translated into English as &ldquo;rice topped with egg.&quot; It is a simple but incredibly popular dish in Japanese cuisine that is usually eaten at breakfast, although it can be enjoyed at any time of the day. White rice, a raw egg, and soy sauce are all you need for this deceptively hearty meal. In recent years, tamago kake gohan has gained some notoriety outside of Japan from its depiction in the anime Gin no Saji (Silver Spoon). The dish has received a lot of positive and curious reactions from anime fans across the world, but one hangup that non-Japanese often have about TKG is the concern about how safe it is to eat raw eggs.</p>\r\n\r\n<p><img alt=\"Tamago kake gohan raw egg with rice\" class=\"fr-dii fr-draggable\" src=\"https://d20aeo683mqd6t.cloudfront.net/images/imgs/000/048/147/original/pouring-soysauce-onto-tamago-kake-gohan-p63046529_M.jpg?1591160823&amp;d=750x750\" /></p>\r\n\r\n<h2><strong><em><span style=\"font-size:14px\">Is It Safe to Eat Raw Eggs?&nbsp;</span></em></strong><strong><em><span style=\"font-size:14px\">Japanese Egg Regulations</span></em></strong></h2>\r\n\r\n<p>In most countries, it is normal to be concerned about eating raw eggs. The risk of salmonella poisoning from raw eggs is nothing to laugh at, with the average case causing stomach cramps, fever, and diarrhea lasting for four to seven days. Severe cases of salmonella can even be fatal, so why take the risk? Well, Japan, in its quest for culinary perfection, has devised methods to ensure a way of safely consuming raw eggs.</p>\r\n\r\n<p>Thanks to strict procedures and regulations for egg production in Japan, the chance of contracting salmonella from eating an egg is close to nil. The sanitary regulations for Japanese chicken farms are more stringent than in many other countries, Japanese chicken farmers wear more protective gear when entering the coop, and extra precautions are taken to prevent the chickens from coming into contact with sources of contagions such as wild birds, insects, and other animals. This leads to a much lower chance that the chickens themselves become infected with salmonella and therefore reduces the risk of it passing on to the egg.&nbsp;</p>\r\n\r\n<p style=\"text-align:right\"><img class=\"fr-dii fr-draggable\" src=\"http://www.foodzone.vn/public/uploads/2020-08-14/1597394764.png\" /></p>\r\n\r\n<p style=\"text-align:center\"><a href=\"http://www.foodzone.vn/index/details/5286\">Chicken Egg ISE - Vfood Vitamin E (Eat raw)</a></p>\r\n\r\n<p>On top of this, once the eggs are collected, they are thoroughly tested. Each egg is run through a machine that individually washes, sterilizes, and checks for potential issues such as cracks, dirt, or blood spots. The machines even scan the eggs for any traces of bacteria, and eggs with imperfections are discarded. The eggs are then immediately shipped to stores, so that they will be consumed when still extremely fresh. In Japan, eggs are treated as though they will be consumed raw, so the expiration date is typically set to only 2 weeks after processing. This is much shorter than in many other countries and is another measure to ensure that the eggs will be eaten while fresh.&nbsp;</p>\r\n\r\n<p style=\"text-align:right\"><strong><em>Source :</em></strong>&nbsp;<a href=\"https://www.tsunagujapan.com/tamago-kake-gohan/\">https://www.tsunagujapan.com</a></p>\r\n\r\n<p>&nbsp;</p>\r\n','玉子かけごはん','<h2><span style=\"font-size:14px\"><strong>玉子かけごはんとは？</strong></span></h2>\r\n\r\n<p>玉子かけごはんは英語に「たまごかけご飯」と訳されます。日替わりでとても人気のある料理で、朝食によく食べられますが、いつでも楽しめます。白米玉子かけごはんは、アニメ「銀のさじ」の描写から、近年海外でも知られるようになりました。世界中のアニメファンからの好奇心旺盛な反応の1つですが、外国人がTKGについてよく抱くハングアップの1つは、生の卵を食べることの安全性に関する懸念です。</p>\r\n\r\n<p><img class=\"fr-dii fr-draggable\" src=\"https://d20aeo683mqd6t.cloudfront.net/images/imgs/000/048/134/original/Stirred-tamago-kake-gohan-s1643750071.jpg?1591152660&amp;d=750x750\" /></p>\r\n\r\n<h2><strong><span style=\"font-size:14px\">生卵を食べても安全ですか？日本の卵の規制</span></strong></h2>\r\n\r\n<p>ほとんどの国では、生の卵を食べることを心配するのが普通です。生卵によるサルモネラ中毒のリスクは笑いものではありません。平均的なケースでは、胃のけいれん、発熱、下痢が4〜7日間続きます。サルモネラ菌の重症例は致命的でさえあり得るので、なぜリスクを取るのか？さて、日本は料理の完璧さを求めて、生卵を安全に消費する方法を確実にする方法を考案しました。</p>\r\n\r\n<p>日本の産卵に関する厳格な手続きと規制のおかげで、サルモネラ菌が卵を食べることで感染する可能性はほとんどありません。日本の養鶏場の衛生規則は、他の多くの国よりも厳格であり、日本の養鶏家は小屋に入るときに保護具を着用し、鶏が野鳥などの伝染源と接触しないように特別な予防策が講じられています。昆虫、およびその他の動物。これにより、ニワトリ自身がサルモネラに感染する可能性がはるかに低くなり、その結果、ニワトリが卵に伝染するリスクが減少します。</p>\r\n\r\n<p style=\"text-align:center\"><a href=\"http://www.foodzone.vn/index/details/5286\"><img class=\"fr-dii fr-draggable\" src=\"http://www.foodzone.vn/public/uploads/2020-08-14/1597394764.png\" style=\"background-color:initial; font-size:0.88rem; text-align:initial\" /></a></p>\r\n\r\n<p style=\"text-align:center\">&nbsp; <a href=\"http://www.foodzone.vn/index/details/5286\">たまご（伊勢エッグ）Vfood　ビタミンE</a></p>\r\n\r\n<p>これに加えて、卵が収集されたら、徹底的にテストされます。各卵は、個別に洗浄、殺菌、亀裂、汚れ、または血斑などの潜在的な問題がないかどうかを確認する機械を通過します。機械は卵に細菌の痕跡がないかスキャンし、欠陥のある卵は廃棄されます。卵はすぐに店舗に出荷され、非常に新鮮なときに消費されます。日本では、卵は生で消費されるかのように扱われるため、有効期限は通常、処理後わずか2週間に設定されています。これは他の多くの国よりもはるかに短く、卵が新鮮な間に食べられるようにするためのもう1つの方法です。</p>\r\n\r\n<p style=\"text-align:right\"><strong><em>Source :</em></strong>&nbsp;<a href=\"https://www.tsunagujapan.com\">https://www.tsunagujapan.com</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n','','2020-08-12 17:18:01','/assets/images/placeholder.png',5,NULL,NULL,NULL);
insert  into `pet_news`(`id`,`title_vi`,`content_vi`,`title_en`,`content_en`,`title_jp`,`content_jp`,`slug`,`date`,`image_url`,`user_id`,`updated_at`,`created_at`,`deleted_at`) values (14,'Narutomaki là gì? (Miếng chả màu trắng và hồng hay được topping trên mì ramen ở Nhật)','<p style=\"text-align:center\"><br />\r\n<em>Phong c&aacute;ch m&igrave; ramen ở Tokyo</em></p>\r\n\r\n<p>M&agrave;u trắng v&agrave; hồng xoắn hay được topping tr&ecirc;n m&igrave; ramen ở Nhật Bản l&agrave; g&igrave;? Đ&oacute; ch&iacute;nh l&agrave; &quot;<a href=\"http://www.foodzone.vn/index/details/2570\">Narutomaki</a> -鳴門巻&quot; hoặc gọi tắt l&agrave; Naruto. Naruto l&agrave; một loại chả c&aacute; (ở Nhật gọi l&agrave; kamaboko) thường được d&ugrave;ng để topping l&ecirc;n m&igrave; ramen.</p>\r\n\r\n<p><strong>&quot;Naruto&quot; được l&agrave;m như thế n&agrave;o?</strong></p>\r\n\r\n<p style=\"text-align:center\"><img class=\"fr-dii fr-draggable\" src=\"http://www.foodzone.vn/public/uploads/2020-10-07/1602054418.jpg\" style=\"height:367.652px; width:550px\" /><br />\r\n<em>Narutomaki</em></p>\r\n\r\n<p><a href=\"http://www.foodzone.vn/index/details/2570\">Narutomaki</a>&nbsp;được l&agrave;m bằng c&aacute;ch bọc chả c&aacute; trắng v&agrave; chả c&aacute; m&agrave;u hồng lại với nhau th&agrave;nh h&igrave;nh thanh d&agrave;i. Chả c&aacute; sau đ&oacute; được l&agrave;m ch&iacute;n bằng hơi nước, để đ&ocirc;ng lại v&agrave; c&oacute; thể cắt th&agrave;nh từng l&aacute;t mỏng.</p>\r\n\r\n<p><strong>Narutomaki c&oacute; vị như thế n&agrave;o?</strong></p>\r\n\r\n<p style=\"text-align:center\"><strong><img class=\"fr-dii fr-draggable\" src=\"http://www.foodzone.vn/public/uploads/2020-10-07/1602054460.jpg\" style=\"height:364px; width:546px\" /></strong></p>\r\n\r\n<p style=\"text-align:justify\"><a href=\"http://www.foodzone.vn/index/details/2570\">Narutomaki</a>&nbsp;c&oacute; vị tanh nhẹ v&agrave; hơi dai. Ban đầu n&oacute; thường được topping tr&ecirc;n m&igrave; ramen như một sự tương phản trực quan với m&agrave;u n&acirc;u của nước soup, thịt v&agrave; măng đ&atilde; chiếm phần lớn tr&ecirc;n b&aacute;t m&igrave;. V&agrave; v&igrave; n&oacute; kh&ocirc;ng thực sự quan trọng, n&ecirc;n phần lớn c&aacute;c cửa h&agrave;ng ramen hiện đại kh&ocirc;ng c&ograve;n sử dụng naruto để topping nữa. Tuy nhi&ecirc;n, n&oacute; c&oacute; vị ngon v&agrave; vẫn được nhiều người y&ecirc;u th&iacute;ch!</p>\r\n\r\n<p><strong>Tại sao lại gọi l&agrave; Naruto?</strong></p>\r\n\r\n<p style=\"text-align:center\"><strong><img class=\"fr-dib fr-draggable\" src=\"http://www.foodzone.vn/public/uploads/2020-10-07/1602057726.jpg\" style=\"height:487px; width:487px\" /></strong><em>Xo&aacute;y nước Naruto (鳴門の渦潮)</em></p>\r\n\r\n<p style=\"text-align:justify\">R&otilde; r&agrave;ng kh&ocirc;ng c&oacute; t&agrave;i liệu n&agrave;o ghi lại nguồn gốc của c&aacute;i t&ecirc;n &#39;<a href=\"http://www.foodzone.vn/index/details/2570\">Narutomaki</a>&#39;, nhưng một số giả thuyết cho rằng Naruto được đặt t&ecirc;n v&igrave; h&igrave;nh dạng gợi nhớ đến &#39;Xo&aacute;y nước Naruto&quot;</p>\r\n\r\n<p><strong>Tại sao narutomaki được sử dụng để topping m&igrave; ramen?</strong></p>\r\n\r\n<p style=\"text-align:center\"><strong><img class=\"fr-dii fr-draggable\" src=\"http://www.foodzone.vn/public/uploads/2020-10-07/1602055091.jpg\" style=\"height:365.673px; width:549px\" /></strong><br />\r\n<em>&nbsp;M&igrave; soba Nhật Bản với naruto được topping ph&iacute;a tr&ecirc;n.</em></p>\r\n\r\n<p style=\"text-align:justify\"><a href=\"http://www.foodzone.vn/index/details/2570\">Naruto</a>&nbsp;đ&atilde; được sử dụng l&agrave;m topping cho m&oacute;n m&igrave; soba của Nhật Bản từ cuối thời Edo (khoảng hơn 150 năm trước). Khi ramen lần đầu ti&ecirc;n du nhập v&agrave;o Nhật Bản từ Trung Quốc v&agrave;o đầu những năm 1900, n&oacute; được gọi l&agrave; &#39;shina soba,&#39; c&oacute; nghĩa l&agrave; &#39;Soba của Trung Quốc.&#39;&nbsp;</p>\r\n\r\n<p style=\"text-align:right\"><em>Source:favy-jp</em></p>\r\n','What is Narutomaki? (The White and Pink Thing on Ramen)','<p style=\"text-align:center\"><img class=\"fr-dib fr-draggable\" src=\"http://www.foodzone.vn/public/uploads/2020-10-07/1602054283.jpg\" style=\"height:361.333px; width:542px\" /><em>Tokyo-style ramen</em></p>\r\n\r\n<p style=\"text-align:justify\">What&#39;s the white and pink swirl thing on ramen? It&#39;s called &#39;<a href=\"http://www.foodzone.vn/index/details/2570\">Narutomaki</a>&#39;鳴門巻 or just &#39;Naruto&#39; for short. <a href=\"http://www.foodzone.vn/index/details/2570\">Narutomaki</a> is a type of fish cake (called kamaboko in Japanese) that is a classic topping for ramen.</p>\r\n\r\n<p style=\"text-align:left\"><strong><span style=\"font-size:14px\">What do you mean by &quot;fish cake?&quot;</span></strong></p>\r\n\r\n<p style=\"text-align:center\"><img class=\"fr-dib fr-draggable\" src=\"http://www.foodzone.vn/public/uploads/2020-10-07/1602054418.jpg\" style=\"height:360px; width:540px\" /><em>Narutomaki up close</em></p>\r\n\r\n<p style=\"text-align:left\"><a href=\"http://www.foodzone.vn/index/details/2570\">Narutomaki</a> is made by wrapping white fish paste colored with red food dye with undyed fish paste into a log shape. The fish paste log is then cooked with steam so that it solidifies and can be cut into thin slices.</p>\r\n\r\n<p style=\"text-align:justify\"><strong><span style=\"font-size:14px\">What does narutomaki taste like?</span></strong><strong><span style=\"font-size:14px\"><img class=\"fr-dib fr-draggable\" src=\"http://www.foodzone.vn/public/uploads/2020-10-07/1602054460.jpg\" style=\"height:356.967px; width:536px\" /></span></strong><a href=\"http://www.foodzone.vn/index/details/2570\">Narutomaki</a> has a fairly mild fishy taste and a chewy texture. It was originally included in ramen as a visual contrast to the brown colors of the soup, chashu, and menma that dominate the bowl. Since it&#39;s not really important for flavor, the majority of modern ramen shops no longer use naruto as a topping. However, it does taste good and is still loved by many!</p>\r\n\r\n<p style=\"text-align:left\"><span style=\"font-size:14px\"><strong>Why is it called &#39;Naruto?&#39;</strong></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:14px\"><strong><img class=\"fr-dib fr-draggable\" src=\"http://www.foodzone.vn/public/uploads/2020-10-07/1602054506.jpg\" style=\"height:361.944px; width:546px\" /></strong></span><em>Naruto Whirlpools (鳴門の渦潮)</em></p>\r\n\r\n<p style=\"text-align:justify\">There&#39;s apparently no written record of the origin of the name &#39;<a href=\"http://www.foodzone.vn/index/details/2570\">Narutomaki</a>,&#39; but the common theory is that the fish cake was given its name because the shape is reminiscent of the famous &#39;Naruto Whirlpools.&#39;</p>\r\n\r\n<p style=\"text-align:left\"><strong><span style=\"font-size:14px\">Why is narutomaki used as a ramen topping?</span></strong></p>\r\n\r\n<p style=\"text-align:center\"><strong><span style=\"font-size:14px\"><img class=\"fr-dib fr-draggable\" src=\"http://www.foodzone.vn/public/uploads/2020-10-07/1602055091.jpg\" style=\"height:353.633px; width:531px\" /></span></strong><em>Japanese soba with naruto as a topping</em></p>\r\n\r\n<p style=\"text-align:justify\">Naruto had been used as a topping for Japanese soba noodles since the end of the Edo period, some 150+ years ago, before ramen was even eaten in Japan. When ramen was first introduced to Japan from China in the early 1900s, it was called &#39;shina soba,&#39; which means &#39;Chinese soba.&#39; It&#39;s thought that since <a href=\"http://www.foodzone.vn/index/details/2570\">narutomaki</a> was commonly used as a topping for Japanese soba, it was soon added to the new &#39;Chinese soba&#39; as well.</p>\r\n\r\n<p style=\"text-align:right\"><em>Source:favy-jp</em></p>\r\n','什么是鸣鸟？ （拉面的白色和粉红色的东西）','<p style=\"text-align:center\"><img class=\"fr-dii fr-draggable\" src=\"http://www.foodzone.vn/public/uploads/2020-10-07/1602054283.jpg\" /><br />\r\n<em>东京风味的拉面</em></p>\r\n\r\n<p>拉面上的白色和粉红色漩涡状东西是什么？它被称为&ldquo; <a href=\"http://www.foodzone.vn/index/details/2570\">Narutomaki</a>&rdquo;鸣门巻，或简称为&ldquo; Naruto&rdquo;。 <a href=\"http://www.foodzone.vn/index/details/2570\">Narutomaki</a>是一种鱼饼（日语称为kamaboko），是拉面的经典浇头。</p>\r\n\r\n<p style=\"text-align:left\"><strong><span style=\"font-size:14px\">&ldquo;鱼糕&rdquo;是什么意思？</span></strong></p>\r\n\r\n<p style=\"text-align:center\"><img class=\"fr-dii fr-draggable\" src=\"http://www.foodzone.vn/public/uploads/2020-10-07/1602054418.jpg\" /><br />\r\n<em>Narutomaki关闭</em></p>\r\n\r\n<p><a href=\"http://www.foodzone.vn/index/details/2570\">Narutomaki</a>是通过将染有红色食用染料的白色鱼酱和未染色的鱼酱包裹成原木形状制成的。然后将鱼肉原木用蒸汽煮熟，使其固化，然后切成薄片。</p>\r\n\r\n<p><strong>narutomaki的味道如何？</strong></p>\r\n\r\n<p style=\"text-align:center\"><strong><img class=\"fr-dii fr-draggable\" src=\"http://www.foodzone.vn/public/uploads/2020-10-07/1602054460.jpg\" /></strong></p>\r\n\r\n<p style=\"text-align:justify\"><a href=\"http://www.foodzone.vn/index/details/2570\">Narutomaki</a>具有相当温和的腥味和耐嚼的质地。它最初是包含在拉面中的，与形成碗状的汤，茶树和浓汤的棕色形成视觉对比。由于味道并不是很重要，因此大多数现代拉面店不再将火影忍者用作浇头。但是，它的味道确实不错，仍然受到许多人的喜爱！</p>\r\n\r\n<p style=\"text-align:left\"><strong>为什么叫&ldquo;火影忍者&rdquo;？</strong></p>\r\n\r\n<p style=\"text-align:center\"><strong><img class=\"fr-dii fr-draggable\" src=\"http://www.foodzone.vn/public/uploads/2020-10-07/1602054506.jpg\" /></strong><br />\r\n鸣门の涡潮（Naruto Whirlpools）</p>\r\n\r\n<p style=\"text-align:justify\">&ldquo; <a href=\"http://www.foodzone.vn/index/details/2570\">Narutomaki</a>&rdquo;这个名字的由来似乎没有任何书面记录，但是通常的理论是，鱼饼之所以被命名是因为它的形状让人联想到著名的&ldquo; Naruto Whirlpools&rdquo;。</p>\r\n\r\n<p style=\"text-align:left\"><strong>为什么将narutomaki用作拉面浇头？</strong></p>\r\n\r\n<p style=\"text-align:center\"><strong><img class=\"fr-dii fr-draggable\" src=\"http://www.foodzone.vn/public/uploads/2020-10-07/1602055091.jpg\" /></strong><br />\r\n<em>日本荞麦面与火影忍者作为浇头</em></p>\r\n\r\n<p style=\"text-align:justify\">火影忍者自江户时代末期（大约150年前）起就被用作日本荞麦面的浇头，而在日本甚至还没有吃过拉面。 1900年代初期，拉面从中国首次引入日本时，被称为&ldquo;什锦荞麦面&rdquo;，意为&ldquo;中国荞麦面&rdquo;。人们认为，由于<a href=\"http://www.foodzone.vn/index/details/2570\">narutomaki</a>通常被用作日本荞麦面的配料，因此很快也将其添加到了新的&ldquo;中国荞麦面&rdquo;中。</p>\r\n\r\n<p style=\"text-align:right\"><em>Source:favy-jp</em></p>\r\n','test','2020-10-07 14:21:37','/assets/userfiles/images/test/03_Jula0cde998a6e883f932065072c64083a6.jpg',5,NULL,NULL,NULL);

/*Table structure for table `pet_news_tag` */

DROP TABLE IF EXISTS `pet_news_tag`;

CREATE TABLE `pet_news_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) DEFAULT NULL,
  `news_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `pet_news_tag` */

insert  into `pet_news_tag`(`id`,`tag_id`,`news_id`) values (8,4,14);
insert  into `pet_news_tag`(`id`,`tag_id`,`news_id`) values (9,4,13);
insert  into `pet_news_tag`(`id`,`tag_id`,`news_id`) values (10,4,12);
insert  into `pet_news_tag`(`id`,`tag_id`,`news_id`) values (11,4,11);
insert  into `pet_news_tag`(`id`,`tag_id`,`news_id`) values (12,4,10);

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

insert  into `pet_options`(`id`,`key`,`value`,`title`,`comment`,`type`,`order`,`group`,`deleted`) values (1,'hot_line','028 7770 4567','Số điện thoại',NULL,'varchar',5,'general',0);
insert  into `pet_options`(`id`,`key`,`value`,`title`,`comment`,`type`,`order`,`group`,`deleted`) values (3,'dia_chi','R1-08-03, Tòa nhà Everich, số 968 Ba Tháng Hai, Phường 15, Quận 11, Thành phố Hồ Chí Minh','Địa chỉ',NULL,'varchar',3,'general',0);
insert  into `pet_options`(`id`,`key`,`value`,`title`,`comment`,`type`,`order`,`group`,`deleted`) values (4,'mo_ta','Hoàn thiện giá trị cuộc sống thông qua dinh dưỡng an toàn và có trách nhiệm','Mô tả',NULL,'text',2,'general',0);
insert  into `pet_options`(`id`,`key`,`value`,`title`,`comment`,`type`,`order`,`group`,`deleted`) values (5,'email','cskh@simba.com.vn','Email',NULL,'varchar',4,'general',0);
insert  into `pet_options`(`id`,`key`,`value`,`title`,`comment`,`type`,`order`,`group`,`deleted`) values (6,'hour_open','8h - 18h','Giờ mở cửa',NULL,'text',6,'general',0);
insert  into `pet_options`(`id`,`key`,`value`,`title`,`comment`,`type`,`order`,`group`,`deleted`) values (9,'company_name',' Công Ty Cổ Phần Thương Mại Sim Ba','Tên công ty',NULL,'varchar',1,'general',0);
insert  into `pet_options`(`id`,`key`,`value`,`title`,`comment`,`type`,`order`,`group`,`deleted`) values (10,'email_server','smtp.gmail.com','Email Server',NULL,'varchar',0,'send_mail',0);
insert  into `pet_options`(`id`,`key`,`value`,`title`,`comment`,`type`,`order`,`group`,`deleted`) values (11,'email_port','465','Port',NULL,'varchar',0,'send_mail',0);
insert  into `pet_options`(`id`,`key`,`value`,`title`,`comment`,`type`,`order`,`group`,`deleted`) values (12,'email_name','Foodzone E-shop','Name',NULL,'varchar',0,'send_mail',0);
insert  into `pet_options`(`id`,`key`,`value`,`title`,`comment`,`type`,`order`,`group`,`deleted`) values (13,'email_email','lytranuit@gmail.com','Email',NULL,'varchar',0,'send_mail',0);
insert  into `pet_options`(`id`,`key`,`value`,`title`,`comment`,`type`,`order`,`group`,`deleted`) values (18,'email_security','ssl','Security',NULL,'varchar',0,'send_mail',0);
insert  into `pet_options`(`id`,`key`,`value`,`title`,`comment`,`type`,`order`,`group`,`deleted`) values (19,'email_username','lytranuit@gmail.com','Username',NULL,'varchar',0,'send_mail',0);
insert  into `pet_options`(`id`,`key`,`value`,`title`,`comment`,`type`,`order`,`group`,`deleted`) values (20,'email_password','vexdxgjkbyqtbsf','Password',NULL,'varchar',0,'send_mail',0);
insert  into `pet_options`(`id`,`key`,`value`,`title`,`comment`,`type`,`order`,`group`,`deleted`) values (21,'email_contact','binh.nguyen@simba.com.vn,cskh@simba.com.vn,simbasales@simba.com.vn,so-support@simba.com.vn,lytranuit@gmail.com,minh@greenitsolution.vn','Email Contact Name',NULL,'varchar',0,'send_mail',0);

/*Table structure for table `pet_product` */

DROP TABLE IF EXISTS `pet_product`;

CREATE TABLE `pet_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` float DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `pet_product` */

insert  into `pet_product`(`id`,`code`,`price`,`name_vi`,`name_en`,`name_jp`,`description_vi`,`description_en`,`description_jp`,`detail_vi`,`detail_en`,`detail_jp`,`image_url`,`order`,`date`,`active`,`deleted_at`,`updated_at`,`created_at`) values (5,'SD116',10000,'Đào ngâm đóng hộp (7-10miếng/hộp) - 820g','Canned Peach Halves In Light Syrup (7-10pcs/can) - 820g','薄いシロップ漬けの桃の缶詰 (7-10pcs/缶) - 820g','test','','','<p>test</p>\r\n','','<p>test</p>\r\n',NULL,NULL,NULL,1,NULL,NULL,NULL);
insert  into `pet_product`(`id`,`code`,`price`,`name_vi`,`name_en`,`name_jp`,`description_vi`,`description_en`,`description_jp`,`detail_vi`,`detail_en`,`detail_jp`,`image_url`,`order`,`date`,`active`,`deleted_at`,`updated_at`,`created_at`) values (6,'KW038',432000,'Than trắng Binchotan - 10kg','Binchotan white charcoal - 10kg','備長炭白炭 - 10kg','100% than trắng Binchotan Nhật Bản, gỗ Bạch đàn tròn lẫn xẻ.','','','','','',NULL,NULL,NULL,1,NULL,NULL,NULL);
insert  into `pet_product`(`id`,`code`,`price`,`name_vi`,`name_en`,`name_jp`,`description_vi`,`description_en`,`description_jp`,`detail_vi`,`detail_en`,`detail_jp`,`image_url`,`order`,`date`,`active`,`deleted_at`,`updated_at`,`created_at`) values (7,'SY057',101700,'Nước tương Koikuchi mini (Shibanuma) - 5ml x 100 gói','Mini koikuchi soy sauce (Shibanuma) - 5ml x 100pcs','こいくち醤油ミニ (Shibanuma) - 5ml*100pcs','','','','','','',NULL,NULL,NULL,1,NULL,NULL,NULL);
insert  into `pet_product`(`id`,`code`,`price`,`name_vi`,`name_en`,`name_jp`,`description_vi`,`description_en`,`description_jp`,`detail_vi`,`detail_en`,`detail_jp`,`image_url`,`order`,`date`,`active`,`deleted_at`,`updated_at`,`created_at`) values (8,'FF564-NSV',0,'Nghêu Chế Biến - Kanetoku Asari Garlic Pepper - 1kg','Asari Garlic Pepper Kanetoku - 1kg','かね徳 あさりガーリックペッパー - 1kg','Nghêu Nhật (nghêu Manila) (short-neck clam???) ???%, nước tương, gia vị lên men, ớt chuông xanh, đường, chiết xuất gừng, chiết xuất cá ngừ, chiết xuất tảo bẹ, giấm, ớt Paprika, chiết xuất sò, ớt, tỏi, ớt, tiêu, rau mùi tây, protein thủy phân, muối, chiết x','','','','','',NULL,NULL,NULL,1,NULL,NULL,NULL);
insert  into `pet_product`(`id`,`code`,`price`,`name_vi`,`name_en`,`name_jp`,`description_vi`,`description_en`,`description_jp`,`detail_vi`,`detail_en`,`detail_jp`,`image_url`,`order`,`date`,`active`,`deleted_at`,`updated_at`,`created_at`) values (9,'FF563-NSV',0,'Bạch Tuộc Chế Biến - Kanetoku Tako Kimchi 2008','Kanetoku Tako Kimchi 2008 - 1kg','かね徳 たこキムチ 2008 - 1kg','Bạch tuôc (từ Việt Nam) ???%, gia vị kim chi (ớt chuông đỏ, muối, đường/xi rô glucose đồng phân, tỏi, xi rô giảm đường, táo nhuyễn, hành tây, đường, nước tương, protein thủy phân, gừng, gia vị lên men, tương cà chua, chiết xuất krill (nhuyễn thể), nước mắm','','','','','',NULL,NULL,NULL,1,NULL,NULL,NULL);
insert  into `pet_product`(`id`,`code`,`price`,`name_vi`,`name_en`,`name_jp`,`description_vi`,`description_en`,`description_jp`,`detail_vi`,`detail_en`,`detail_jp`,`image_url`,`order`,`date`,`active`,`deleted_at`,`updated_at`,`created_at`) values (10,'FF561-NSV',0,'Ốc Xoắn Chế Biến - Kanetoku Tsubu Kai Chanja-Fu','Tubugai Chanja Fukanetoku - 1kg','かね徳 つぶ貝チャンジャ風 - 1kg','Ốc xoắn (từ Nga) ???%, gia vị kim chi (ớt chuông đỏ, muối, đường/xi rô glucose đồng phân, tỏi, xi rô giảm đường, táo nhuyễn, hành tây, đường, nước tương, protein thủy phân, gừng, gia vị lên men, tương cà chua, chiết xuất krill (nhuyễn thể), nước mắm), đườn','','','','','',NULL,NULL,NULL,1,NULL,NULL,NULL);
insert  into `pet_product`(`id`,`code`,`price`,`name_vi`,`name_en`,`name_jp`,`description_vi`,`description_en`,`description_jp`,`detail_vi`,`detail_en`,`detail_jp`,`image_url`,`order`,`date`,`active`,`deleted_at`,`updated_at`,`created_at`) values (11,'SS246',2280000,'Xốt Liquid Shio Koji - 10L','Liquid Shio Koji - 10L','塩こうじ 液体 (ハナマルキ) - 10L','Men Koji (làm từ gạo), muối, rượu ethyl','','','<pre style=\"text-align:justify\">\r\n<span style=\"font-family:times new roman,times,serif\"><span style=\"font-size:14px\"><strong>L&agrave;m cho m&oacute;n ăn ngon hơn</strong>\r\n\r\nEnzyme trong Koji c&oacute; thể ph&acirc;n hủy tinh bột v&agrave; protein th&agrave;nh đường v&agrave; axit amin để tăng vị ngọt v&agrave; vị umami. \r\nNgo&agrave;i ra, do t&aacute;c động của vi khuẩn axit lactic v&agrave; nấm men. Khi ướp c&ugrave;ng shio koji thịt, c&aacute; sau khi nấu sẽ kh&ocirc;ng bị kh&ocirc;, vẫn giữ được  độ căng b&oacute;ng cho miếng thịt.\r\n<strong>\r\nL&agrave;m mềm thịt</strong>\r\n\r\nV&igrave; enzym c&oacute; thể ph&acirc;n hủy tinh bột v&agrave; protein n&ecirc;n n&oacute; c&oacute; thể l&agrave;m mềm thịt khi bạn ướp.\r\n\r\n<strong>Gi&agrave;u dinh dưỡng</strong>\r\n\r\nShio Koji chứa nhiều chất dinh dưỡng hơn muối như vitamin (B1, B2, B6, axit pantothenic, biotin (vitamin H)), vv, do hoạt động của enzym v&agrave; vi sinh vật như vi khuẩn axit lactic v&agrave; nấm men.</span></span></pre>\r\n','<p><strong>Make the food delicious</strong></p>\r\n\r\n<p>Enzymes in Koji can break down starch and proteins into sugars and amino acids to enhance sweetness and umami.</p>\r\n\r\n<p>Also because of the effects of lactic acid bacteria and yeast, the ultimate food will have a lot of taste elements, so that you can enjoy the complex tastes more than when you eat ingredients alone.</p>\r\n\r\n<p><strong>Make the ingredients tender</strong></p>\r\n\r\n<p>Since the enzyme can break down starch and proteins, it can soften the meat when you marinate.</p>\r\n\r\n<p><strong>Rich in nutrition</strong></p>\r\n\r\n<p>Shio Koji contains more nutrients than salt such as vitamins (B1, B2, B6, pantothenic acid, biotin (vitamin H)), etc, because of the action of enzyme and microorganisms such as lactic acid bacteria and yeast.</p>\r\n\r\n<p><strong>Improvement and anti-ageing</strong></p>\r\n\r\n<p>The lactic acid bacteria are known for their &ldquo;intestinal action&rdquo;, which regulates the intestinal environment. It is said that there is a good effect for improving the constitution or skin condition. You may notice that the skin of your hand and fingers become smoother after you treat the food with Shio Koji.</p>\r\n','',NULL,NULL,NULL,1,NULL,NULL,NULL);
insert  into `pet_product`(`id`,`code`,`price`,`name_vi`,`name_en`,`name_jp`,`description_vi`,`description_en`,`description_jp`,`detail_vi`,`detail_en`,`detail_jp`,`image_url`,`order`,`date`,`active`,`deleted_at`,`updated_at`,`created_at`) values (12,'FF560-NSV',0,'Cá hồi Chế Biến - Kanetoku Salmon Yukke-fu - 500g','Salmon Yukke Fukanetoku - 500g','かね徳 サーモンユッケ風 - 500g','Cá hồi Đại Tây Dương (Na Uy) ???%, gia vị kim chi (ớt chuông đỏ, muối, đường/xi rô glucose đồng phân, tỏi, xi rô giảm đường, táo nhuyễn, hành tây, đường, nước tương, protein thủy phân, gừng, gia vị lên men, tương cà chua, chiết xuất krill (nhuyễn thể), nướ','','','','','',NULL,NULL,NULL,1,NULL,NULL,NULL);
insert  into `pet_product`(`id`,`code`,`price`,`name_vi`,`name_en`,`name_jp`,`description_vi`,`description_en`,`description_jp`,`detail_vi`,`detail_en`,`detail_jp`,`image_url`,`order`,`date`,`active`,`deleted_at`,`updated_at`,`created_at`) values (13,'WI003',24000,'Túi đá Gel giữ lạnh - 500g','Gel-ice pack for cooling - 500g','冷却用ジェルアイスパック - 500g','Nước 88.8%, Sodium polyacrylate 10%, Polyethylene 1.2%','','','','','',NULL,NULL,NULL,1,NULL,NULL,NULL);

/*Table structure for table `pet_product_category` */

DROP TABLE IF EXISTS `pet_product_category`;

CREATE TABLE `pet_product_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `order` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `pet_product_category` */

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
  `text` varchar(256) DEFAULT NULL,
  `url` varchar(256) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `pet_slider` */

insert  into `pet_slider`(`id`,`image_url`,`text`,`url`,`order`,`deleted_at`,`created_at`,`updated_at`) values (5,'/assets/userfiles/images/nhamay2-crop.jpg','FANPAGE FODDZONE','https://www.facebook.com/FoodzoneofSimba',1,NULL,NULL,NULL);
insert  into `pet_slider`(`id`,`image_url`,`text`,`url`,`order`,`deleted_at`,`created_at`,`updated_at`) values (6,'/assets/userfiles/images/hinh-nha-may-hoang-van-thu.jpg','','http://www.foodzone.vn/index/category/77',2,NULL,NULL,NULL);
insert  into `pet_slider`(`id`,`image_url`,`text`,`url`,`order`,`deleted_at`,`created_at`,`updated_at`) values (8,'/assets/userfiles/images/test/03_Jula0cde998a6e883f932065072c64083a6.jpg','Bánh Chocolate bắp Choco Shimi Ginbis','http://www.foodzone.vn/index/details/5461',5,'2021-07-21 20:18:49',NULL,NULL);
insert  into `pet_slider`(`id`,`image_url`,`text`,`url`,`order`,`deleted_at`,`created_at`,`updated_at`) values (9,'/assets/userfiles/images/test/03_Jula0cde998a6e883f932065072c64083a6.jpg',NULL,'',5,'2021-07-07 06:47:03',NULL,NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `pet_tag` */

insert  into `pet_tag`(`id`,`name_vi`,`description_vi`,`name_en`,`description_en`,`name_jp`,`description_jp`,`date`,`user_id`,`is_home`,`image_url`,`deleted_at`,`updated_at`,`created_at`) values (2,'Tin Tức','test','','','','','2020-12-30 20:34:59',2,0,'3','2020-12-31 03:19:20',NULL,NULL);
insert  into `pet_tag`(`id`,`name_vi`,`description_vi`,`name_en`,`description_en`,`name_jp`,`description_jp`,`date`,`user_id`,`is_home`,`image_url`,`deleted_at`,`updated_at`,`created_at`) values (3,'Giới thiệu','vbfgdertertert','','','','','2020-12-30 20:59:59',2,0,'/assets/userfiles/images/test/03_Jula0cde998a6e883f932065072c64083a6.jpg','2021-07-12 23:11:36',NULL,NULL);
insert  into `pet_tag`(`id`,`name_vi`,`description_vi`,`name_en`,`description_en`,`name_jp`,`description_jp`,`date`,`user_id`,`is_home`,`image_url`,`deleted_at`,`updated_at`,`created_at`) values (4,'Tin khuyến mãi','tếtcvbfgh','','','','','2021-07-07 19:00:05',2,1,'/assets/userfiles/images/test/03_Jula0cde998a6e883f932065072c64083a6.jpg',NULL,NULL,NULL);
insert  into `pet_tag`(`id`,`name_vi`,`description_vi`,`name_en`,`description_en`,`name_jp`,`description_jp`,`date`,`user_id`,`is_home`,`image_url`,`deleted_at`,`updated_at`,`created_at`) values (5,'Huấn luyện','','','','','','2021-07-12 23:09:22',2,0,'/assets/images/placeholder.png',NULL,NULL,NULL);
insert  into `pet_tag`(`id`,`name_vi`,`description_vi`,`name_en`,`description_en`,`name_jp`,`description_jp`,`date`,`user_id`,`is_home`,`image_url`,`deleted_at`,`updated_at`,`created_at`) values (6,'Dinh dưỡng','','','','','','2021-07-12 23:11:11',2,0,'/assets/images/placeholder.png',NULL,NULL,NULL);
insert  into `pet_tag`(`id`,`name_vi`,`description_vi`,`name_en`,`description_en`,`name_jp`,`description_jp`,`date`,`user_id`,`is_home`,`image_url`,`deleted_at`,`updated_at`,`created_at`) values (7,'Đời sống','','','','','','2021-07-12 23:11:22',2,0,'/assets/images/placeholder.png',NULL,NULL,NULL);
insert  into `pet_tag`(`id`,`name_vi`,`description_vi`,`name_en`,`description_en`,`name_jp`,`description_jp`,`date`,`user_id`,`is_home`,`image_url`,`deleted_at`,`updated_at`,`created_at`) values (8,'Hỏi đáp','','','','','','2021-07-12 23:11:28',2,0,'/assets/images/placeholder.png',NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
