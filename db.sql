/*
SQLyog Community v13.0.1 (64 bit)
MySQL - 8.0.22 : Database - crop
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`crop` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `crop`;

/*Table structure for table `auth_group` */

DROP TABLE IF EXISTS `auth_group`;

CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `auth_group` */

/*Table structure for table `auth_group_permissions` */

DROP TABLE IF EXISTS `auth_group_permissions`;

CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `auth_group_permissions` */

/*Table structure for table `auth_permission` */

DROP TABLE IF EXISTS `auth_permission`;

CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `auth_permission` */

insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values 
(1,'Can add log entry',1,'add_logentry'),
(2,'Can change log entry',1,'change_logentry'),
(3,'Can delete log entry',1,'delete_logentry'),
(4,'Can view log entry',1,'view_logentry'),
(5,'Can add permission',2,'add_permission'),
(6,'Can change permission',2,'change_permission'),
(7,'Can delete permission',2,'delete_permission'),
(8,'Can view permission',2,'view_permission'),
(9,'Can add group',3,'add_group'),
(10,'Can change group',3,'change_group'),
(11,'Can delete group',3,'delete_group'),
(12,'Can view group',3,'view_group'),
(13,'Can add user',4,'add_user'),
(14,'Can change user',4,'change_user'),
(15,'Can delete user',4,'delete_user'),
(16,'Can view user',4,'view_user'),
(17,'Can add content type',5,'add_contenttype'),
(18,'Can change content type',5,'change_contenttype'),
(19,'Can delete content type',5,'delete_contenttype'),
(20,'Can view content type',5,'view_contenttype'),
(21,'Can add session',6,'add_session'),
(22,'Can change session',6,'change_session'),
(23,'Can delete session',6,'delete_session'),
(24,'Can view session',6,'view_session'),
(25,'Can add datasets',7,'add_datasets'),
(26,'Can change datasets',7,'change_datasets'),
(27,'Can delete datasets',7,'delete_datasets'),
(28,'Can view datasets',7,'view_datasets'),
(29,'Can add expert',8,'add_expert'),
(30,'Can change expert',8,'change_expert'),
(31,'Can delete expert',8,'delete_expert'),
(32,'Can view expert',8,'view_expert'),
(33,'Can add login',9,'add_login'),
(34,'Can change login',9,'change_login'),
(35,'Can delete login',9,'delete_login'),
(36,'Can view login',9,'view_login'),
(37,'Can add notification',10,'add_notification'),
(38,'Can change notification',10,'change_notification'),
(39,'Can delete notification',10,'delete_notification'),
(40,'Can view notification',10,'view_notification'),
(41,'Can add policies',11,'add_policies'),
(42,'Can change policies',11,'change_policies'),
(43,'Can delete policies',11,'delete_policies'),
(44,'Can view policies',11,'view_policies'),
(45,'Can add tips',12,'add_tips'),
(46,'Can change tips',12,'change_tips'),
(47,'Can delete tips',12,'delete_tips'),
(48,'Can view tips',12,'view_tips'),
(49,'Can add user',13,'add_user'),
(50,'Can change user',13,'change_user'),
(51,'Can delete user',13,'delete_user'),
(52,'Can view user',13,'view_user'),
(53,'Can add fertilizer',14,'add_fertilizer'),
(54,'Can change fertilizer',14,'change_fertilizer'),
(55,'Can delete fertilizer',14,'delete_fertilizer'),
(56,'Can view fertilizer',14,'view_fertilizer'),
(57,'Can add disease',15,'add_disease'),
(58,'Can change disease',15,'change_disease'),
(59,'Can delete disease',15,'delete_disease'),
(60,'Can view disease',15,'view_disease');

/*Table structure for table `auth_user` */

DROP TABLE IF EXISTS `auth_user`;

CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `auth_user` */

/*Table structure for table `auth_user_groups` */

DROP TABLE IF EXISTS `auth_user_groups`;

CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `auth_user_groups` */

/*Table structure for table `auth_user_user_permissions` */

DROP TABLE IF EXISTS `auth_user_user_permissions`;

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `auth_user_user_permissions` */

/*Table structure for table `crop_datasets` */

DROP TABLE IF EXISTS `crop_datasets`;

CREATE TABLE `crop_datasets` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `question` varchar(100) NOT NULL,
  `answer` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `crop_datasets` */

/*Table structure for table `crop_disease` */

DROP TABLE IF EXISTS `crop_disease`;

CREATE TABLE `crop_disease` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `disease_name` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `eid_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `crop_disease_eid_id_86448620_fk_crop_expert_id` (`eid_id`),
  CONSTRAINT `crop_disease_eid_id_86448620_fk_crop_expert_id` FOREIGN KEY (`eid_id`) REFERENCES `crop_expert` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `crop_disease` */

/*Table structure for table `crop_expert` */

DROP TABLE IF EXISTS `crop_expert`;

CREATE TABLE `crop_expert` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL,
  `pin` int NOT NULL,
  `post` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` bigint NOT NULL,
  `lid_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `crop_expert_lid_id_272b6869_fk_crop_login_id` (`lid_id`),
  CONSTRAINT `crop_expert_lid_id_272b6869_fk_crop_login_id` FOREIGN KEY (`lid_id`) REFERENCES `crop_login` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `crop_expert` */

insert  into `crop_expert`(`id`,`fname`,`lname`,`address`,`place`,`pin`,`post`,`email`,`phone`,`lid_id`) values 
(1,'muhammed','shakkir','','pattambi',123,'pattambi','mshakkirmv',123456789,5);

/*Table structure for table `crop_fertilizer` */

DROP TABLE IF EXISTS `crop_fertilizer`;

CREATE TABLE `crop_fertilizer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `eid_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `crop_fertilizer_eid_id_dd634127_fk_crop_expert_id` (`eid_id`),
  CONSTRAINT `crop_fertilizer_eid_id_dd634127_fk_crop_expert_id` FOREIGN KEY (`eid_id`) REFERENCES `crop_expert` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `crop_fertilizer` */

/*Table structure for table `crop_login` */

DROP TABLE IF EXISTS `crop_login`;

CREATE TABLE `crop_login` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `crop_login` */

insert  into `crop_login`(`id`,`username`,`password`,`type`) values 
(1,'msha','123','farmer'),
(2,'msha','1234','farmer'),
(3,'msha','1235','farmer'),
(4,'sha','123','expert'),
(5,'sha','123','expert');

/*Table structure for table `crop_notification` */

DROP TABLE IF EXISTS `crop_notification`;

CREATE TABLE `crop_notification` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `crop_notification` */

insert  into `crop_notification`(`id`,`name`,`description`,`date`) values 
(1,'notification','ggggggggggggggggggggggggggggggggggggggg','2023-03-16');

/*Table structure for table `crop_policies` */

DROP TABLE IF EXISTS `crop_policies`;

CREATE TABLE `crop_policies` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `crop_policies` */

insert  into `crop_policies`(`id`,`name`,`description`,`date`) values 
(1,'policy','poliiiiiiiiiiiiiiiiiiiiiiiiiii','2023-03-19');

/*Table structure for table `crop_tips` */

DROP TABLE IF EXISTS `crop_tips`;

CREATE TABLE `crop_tips` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `crop_tips` */

/*Table structure for table `crop_user` */

DROP TABLE IF EXISTS `crop_user`;

CREATE TABLE `crop_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL,
  `post` varchar(100) NOT NULL,
  `pin` int NOT NULL,
  `gender` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `lid_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `crop_user_lid_id_ef4de789_fk_crop_login_id` (`lid_id`),
  CONSTRAINT `crop_user_lid_id_ef4de789_fk_crop_login_id` FOREIGN KEY (`lid_id`) REFERENCES `crop_login` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `crop_user` */

insert  into `crop_user`(`id`,`fname`,`lname`,`place`,`post`,`pin`,`gender`,`email`,`lid_id`) values 
(1,'ss','u','pattambi','patttambi',123,'male','msha',2),
(2,'ss','u','pattambi','patttambi',123,'male','msha',3);

/*Table structure for table `django_admin_log` */

DROP TABLE IF EXISTS `django_admin_log`;

CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `django_admin_log` */

/*Table structure for table `django_content_type` */

DROP TABLE IF EXISTS `django_content_type`;

CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `django_content_type` */

insert  into `django_content_type`(`id`,`app_label`,`model`) values 
(1,'admin','logentry'),
(3,'auth','group'),
(2,'auth','permission'),
(4,'auth','user'),
(5,'contenttypes','contenttype'),
(7,'crop','datasets'),
(15,'crop','disease'),
(8,'crop','expert'),
(14,'crop','fertilizer'),
(9,'crop','login'),
(10,'crop','notification'),
(11,'crop','policies'),
(12,'crop','tips'),
(13,'crop','user'),
(6,'sessions','session');

/*Table structure for table `django_migrations` */

DROP TABLE IF EXISTS `django_migrations`;

CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `django_migrations` */

insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values 
(1,'contenttypes','0001_initial','2023-03-16 07:00:01.152565'),
(2,'auth','0001_initial','2023-03-16 07:00:02.912461'),
(3,'admin','0001_initial','2023-03-16 07:00:03.598765'),
(4,'admin','0002_logentry_remove_auto_add','2023-03-16 07:00:03.615828'),
(5,'admin','0003_logentry_add_action_flag_choices','2023-03-16 07:00:03.636432'),
(6,'contenttypes','0002_remove_content_type_name','2023-03-16 07:00:03.845493'),
(7,'auth','0002_alter_permission_name_max_length','2023-03-16 07:00:03.975432'),
(8,'auth','0003_alter_user_email_max_length','2023-03-16 07:00:04.072897'),
(9,'auth','0004_alter_user_username_opts','2023-03-16 07:00:04.089161'),
(10,'auth','0005_alter_user_last_login_null','2023-03-16 07:00:04.601512'),
(11,'auth','0006_require_contenttypes_0002','2023-03-16 07:00:04.622099'),
(12,'auth','0007_alter_validators_add_error_messages','2023-03-16 07:00:04.641967'),
(13,'auth','0008_alter_user_username_max_length','2023-03-16 07:00:04.786648'),
(14,'auth','0009_alter_user_last_name_max_length','2023-03-16 07:00:04.914375'),
(15,'auth','0010_alter_group_name_max_length','2023-03-16 07:00:04.945833'),
(16,'auth','0011_update_proxy_permissions','2023-03-16 07:00:04.961846'),
(17,'auth','0012_alter_user_first_name_max_length','2023-03-16 07:00:05.242755'),
(18,'crop','0001_initial','2023-03-16 07:00:06.670628'),
(19,'sessions','0001_initial','2023-03-16 07:00:06.758419'),
(20,'crop','0002_auto_20230316_1250','2023-03-16 08:39:47.375253'),
(21,'crop','0003_auto_20230316_1409','2023-03-16 08:39:47.557374'),
(22,'crop','0004_alter_user_post','2023-03-16 08:57:56.054755');

/*Table structure for table `django_session` */

DROP TABLE IF EXISTS `django_session`;

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `django_session` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
