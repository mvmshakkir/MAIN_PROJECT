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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
(60,'Can view disease',15,'view_disease'),
(61,'Can add tips',16,'add_tips'),
(62,'Can change tips',16,'change_tips'),
(63,'Can delete tips',16,'delete_tips'),
(64,'Can view tips',16,'view_tips');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `auth_user` */

insert  into `auth_user`(`id`,`password`,`last_login`,`is_superuser`,`username`,`first_name`,`last_name`,`email`,`is_staff`,`is_active`,`date_joined`) values 
(1,'pbkdf2_sha256$260000$heZSUYGNgID76znh8VoW52$ZCYSg6QvrldXXG9oMX6prsLugpK5I/AFUUl6C/qDMaI=','2023-04-06 10:42:36.825865',1,'admin','','','admin@gmail.com',1,1,'2023-04-06 09:10:09.793353');

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
  `description` longtext NOT NULL,
  `date` date NOT NULL,
  `eid_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `crop_disease_eid_id_86448620_fk_crop_expert_id` (`eid_id`),
  CONSTRAINT `crop_disease_eid_id_86448620_fk_crop_expert_id` FOREIGN KEY (`eid_id`) REFERENCES `crop_expert` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `crop_disease` */

insert  into `crop_disease`(`id`,`disease_name`,`description`,`date`,`eid_id`) values 
(7,'expert','expert','2023-03-28',4),
(8,'1. Diseases of Wheat:','In India, during summer season, high temperatures do not allow either the wheat crop or the rust to survive in the plain areas. Climatic conditions are favourable for the wheat rust to survive in the Himalayan region during summer season on the host plant of Barberry. Weather conditions are favourable for the survival of wheat rust in central Nepal, which acts as a source region for the wheat rust.\r\n\r\n\r\nLater on during winter season, when wheat crop is grown in the plains of north India, rust has the tendency to migrate from the Nepal hills to plains of north India. Similarly, Nilgiri hills in south India are the source region of wheat rust, where wheat is cultivated throughout the year. Wheat rust can move from Nilgiri hills towards north in central India.\r\ni. Yellow Rust:\r\nADVERTISEMENTS:\r\n\r\n\r\nYellow rust is mainly confined to the northern parts of India due to its low temperature requirement. In the wheat season, the weather conditions are favourable for the yellow rust in north India. Yellow rust spores move from Himalayas to plains of north-west India along with northerly winds. The weather conditions become favourable for the appearance of rust by the end of January.\r\n\r\nWeather conditions favourable for the appearance of yellow rust are given below:\r\n\r\n(a) Mean air temperature should range between 9 to 13°C.\r\n\r\n(b) Relative humidity should be more than 70 per cent.\r\n\r\nADVERTISEMENTS:\r\n\r\n\r\n(c) There must exist partly cloudy conditions.\r\n\r\nIf such type of conditions prevail for a week in mid-January, then yellow rust is likely to increase. If north to north-westerly winds persist, then the rust is likely to assume the highest severity.\r\n\r\nii. Brown Rust:\r\nBrown rust can survive over a wide range of temperature. Therefore, northern and southern hills act as source regions of infection. Brown rust can appear in the entire wheat belt under favourable weather conditions. This rust appears in Punjab during the month of February.\r\n\r\nWeather conditions favourable for its multiplication are given below:\r\n\r\nADVERTISEMENTS:\r\n\r\n\r\n(a) Mean air temperature between 15 to 20°C should prevail for a week.\r\n\r\n(b) Relative humidity should be more than 70 per cent.\r\n\r\n(c) Intermittent cloudiness must exist in the end of January or first week of February.','2023-03-30',1),
(9,'2. Diseases of Rice:','Blast Disease of Rice:\r\nThe weather conditions favourable for the incidence of disease are given below:\r\n\r\ni. Minimum temperature should be less than 26°C.\r\n\r\nii. Relative humidity should be more than 90 per cent.\r\n\r\nIf these conditions prevail during the period of seedling, tillering and ear emergence, then the disease is likely to appear. Severity of the disease is likely to increase if the minimum temperature remains below 23°C with relative humidity more than 90 per cent for many days.\r\n\r\nADVERTISEMENTS:\r\n\r\n\r\nCalm to light wind, intermittent rainfall, rainy days followed by clear days with bright sunshine and again rainy days with high humidity are favourable for the rapid spread of the disease. Based on the above weather conditions, the forecasting of the disease can be made.','2023-03-30',1);

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `crop_expert` */

insert  into `crop_expert`(`id`,`fname`,`lname`,`address`,`place`,`pin`,`post`,`email`,`phone`,`lid_id`) values 
(1,'muhammeddddddddd','shakkir','','pattambi',123,'pattambi','mshakkirmv',123456789,5),
(3,'mhd','mhdddd','','pattambi',123,'pattambi','mshakkirmv',1234,8),
(4,'expert','expert','','pattambi',123456,'pattambi','expert@gmail.com',8111951157,10);

/*Table structure for table `crop_fertilizer` */

DROP TABLE IF EXISTS `crop_fertilizer`;

CREATE TABLE `crop_fertilizer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `eid_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `crop_fertilizer_eid_id_dd634127_fk_crop_expert_id` (`eid_id`),
  CONSTRAINT `crop_fertilizer_eid_id_dd634127_fk_crop_expert_id` FOREIGN KEY (`eid_id`) REFERENCES `crop_expert` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `crop_fertilizer` */

insert  into `crop_fertilizer`(`id`,`name`,`description`,`eid_id`) values 
(3,'Nitrogen fertilizers','Nitrate-based fertilizers are the most commonly used straight fertilizers in Europe.\r\n\r\nThe main products are nitrate-based fertilizers such as ammonium nitrate (AN) and calcium ammonium nitrate (CAN), which are well suited to most European soils and climatic conditions, and urea and urea ammonium nitrate (UAN) aqueous solution, which are widely used in other parts of the world.\r\n\r\nOther straight nitrogen fertilizers include ammonium sulphate and ammonium sulphate nitrate, calcium nitrate, sodium nitrate, Chilean nitrate and anhydrous ammonia.',1),
(7,'Nitrogen fertilizers with inhibitors','Certain weather and soil conditions can lead to nitrogen immobilisation, denitrification, volatilization or leaching, all reducing fertilizer efficiency. In response, the industry has developed special types of fertilizers designed to reduce these effects. They include foliar, slow and controlled release fertilizers, as well as fertilizer additives such as urease and nitrification inhibitors.',1),
(8,'Sodium Nitrate:','The refined product contains about 16% nitrogen in the form of nitrates, which can be supplied directly to crops. For this reason, it is used as a source of nitrogen, especially in seedlings and vegetables, which require readily available nitrogen to grow quickly.\r\n\r\nSodium nitrate is easily soluble in water and is quickly leached from the soil. It is especially useful for acidic soils. Its continued use on a large scale in the soil can cause flocculation and poor physical condition in areas with little rain.',1),
(9,'Ammonium Nitrate:','Ammonium nitrate is a white crystalline salt that contains 33% to 35% nitrogen, 50% nitrate nitrogen and 50% ammonium. In the form of ammonium, it is not easily leached from the ground. It starts fast, strongly hygroscopic and cannot be stored. Under certain circumstances it is explosive, so it must be handled with care.\r\n\r\nIf you continue to use this fertilizer on your farmland, it will acidify the soil. This is why about 40% limestone or dolomite is usually mixed with Ammonium Nitrate because the presence of lime makes it suitable for acidic soils.',1);

/*Table structure for table `crop_login` */

DROP TABLE IF EXISTS `crop_login`;

CREATE TABLE `crop_login` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `crop_login` */

insert  into `crop_login`(`id`,`username`,`password`,`type`) values 
(1,'msha','123','farmer'),
(2,'msha','1234','farmer'),
(3,'msha','1235','farmer'),
(5,'sha','123','expert'),
(7,'admin','admin','admin'),
(8,'shaa','1234','expert'),
(9,'farmer','123','farmer'),
(10,'expert','Expert.1','expert');

/*Table structure for table `crop_notification` */

DROP TABLE IF EXISTS `crop_notification`;

CREATE TABLE `crop_notification` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `crop_notification` */

insert  into `crop_notification`(`id`,`name`,`description`,`date`) values 
(2,'നാളികേരത്തിന്‍റെ സംഭരണ വില വര്‍ദ്ധിപ്പിച്ചുകൊണ്ട് ഉത്തരവ് .','2023-24 ലെ ബഡ്ജറ്റ് പ്രസംഗത്തിൽ നാളിേകേര സംഭരണവില 32\r\nരൂപയിൽ നിന്നും 34 രൂപയായി ഉയർത്തുമെന്ന് പ്രക്യാപിച്ചിരിക്കുന്നു.ആയതിന്റെ \r\nഅടിസ്ഥാനത്തിൽ ഏപ്രിൽ 1 മുതൽ നാളികേര സംഭരണവില 32 രൂപയിൽ നിന്നും 34\r\nരൂപയായി വർദ്ധിപ്പിക്കുന്നതിനുള്ള   പ്രാപ്പോസൽ  ക്രിഷി വകുപ്പ് ഡയറക്ടർ പരാമർശം പ്രാകാരം\r\nസമർിപ്പിക്കുകയുണ്ടായി.\r\n2) 2023-24 ലെ ബഡ്ജറ്റ്  പ്രക്യാപന അടിസ്ഥാനത്തിൽ,\r\nനാളിേകരിെ സംഭരണവില 32 രൂപയിൽ നിന്നും 34 രൂപയായി 2023 ഏപ്രിൽ 1 മുതൽ\r\nവർദ്ധിപ്പിച്ചു കൊണ്ട്  ഉത്തരാവാകുന്നു.\r\n','2023-03-30'),
(5,'Production and Distribution of quality Planting Materials and improvement of Departmental Farms','As per Government Order read above, sanction was accorded to\r\nthe Director of Agriculture for Online Sale of Branded Products\r\nincluding additional components.\r\n2. Government further examined the matter in detail and modified\r\nthe above Government Order by deleting Paragraph 2 and the words \'\r\nof component no.3\' in para 3(b).\r\n3. The Government Order read above stands modified to the\r\nabove extent only.\r\n','2023-03-30'),
(6,'j','h','2023-04-06'),
(7,'jj','yuy','2023-04-06');

/*Table structure for table `crop_policies` */

DROP TABLE IF EXISTS `crop_policies`;

CREATE TABLE `crop_policies` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `crop_policies` */

insert  into `crop_policies`(`id`,`name`,`description`,`date`) values 
(6,'Agriculture Infrastructure Fund','The Union Cabinet in July 2020 has approved a new pan India Central Sector Scheme called Agriculture Infrastructure Fund (National Agriculture Infra Financing Facility). The scheme shall provide a medium - long term debt financing facility for investment in viable projects for post-harvest management Infrastructure and community farming assets through interest subvention and financial support.\r\n\r\n','2023-03-30'),
(7,'Credit facility for farmers','Crop loan upto Rs.3 lakhs at 7% rate of interest. This interest rate becomes 4% due to 3% interest subvention incentives provided to those farmers who repay crop loan on time.\r\nNo need of collateral security for farm loan up to Rs 1.6 lakh','2023-03-30'),
(8,'Crop insurance schemes','Insurance protection for Coconut Palm growers.\r\nPremium rate per palm ranges from Rs. 9.00 (in the plant age group of 4 to 15 years) to Rs. 14.00 (in the plant age group of 16-60 years).\r\n50-75% subsidy of premium is provided to all types of farmers.\r\nWhen the palm damaged, the claim payment equal to input cost loss damage is payable to the insured in notified areas.','2023-03-30'),
(9,'	Unified Package Insurance Scheme (UPIS) as pilot in 45 districts','To provide financial protection and comprehensive risk coverage of crops, assets, life and student safety to farmers.\r\nPilot will include 7 section Viz.., - Crop Insurance (PMFBY / WBCIS), Loss of life (Pradhan Mantri Jeevan Jyoti Bima Yojna (PMJJBY)), Accident Insurance (Pradhan Mantri Suraksha Bima Yojana - PMSBY) , Student safety, Household, Agriculture implements and Tractor.\r\nCrop insurance will be compulsory. However farmers can choose atleast 2 sections from remaining.','2023-03-30'),
(11,'sha','gg','2023-04-06');

/*Table structure for table `crop_tips` */

DROP TABLE IF EXISTS `crop_tips`;

CREATE TABLE `crop_tips` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` longtext NOT NULL,
  `description` longtext NOT NULL,
  `eid_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `crop_tips_eid_id_77022b70_fk_crop_expert_id` (`eid_id`),
  CONSTRAINT `crop_tips_eid_id_77022b70_fk_crop_expert_id` FOREIGN KEY (`eid_id`) REFERENCES `crop_expert` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `crop_tips` */

insert  into `crop_tips`(`id`,`name`,`description`,`eid_id`) values 
(1,'Green SIM cards for farmers','Green SIM card for farmers is an initiative of the IFFCO Kisan Sanchar Ltd (IKSL). IKSL is a joint venture of IFFCO (Indian Farmers Fertilizers Cooperative) and AIRTEL. IKSL provides voice-based agricultural information in regional languages to empower rural farmers. This service was launched in 2008.\r\n\r\n\r\n\r\nSubscribers receive 5 recorded voice messages. everyday. Each voice message is of one minute duration. These messages are in regional languages, covering various fields like Agriculture, Animal husbandry, Horticulture, Insurance, Government policies and schemes, Mandi prices, weather forecast, Sericulture, Pisciculture, Crop Loans, Plant protection, Health etc.\r\n\r\n',1),
(3,'Locate your nearest Krishi Vignan Kendra','The Department of Agriculture & Cooperation (DAC), Ministry of Agriculture, Govt. of India launched Kisan Call Centers on January 21, 2004 across the country to deliver extension services to the farming community. \r\nThe purpose of these call centers is to respond to issues raised by farmers, instantly, in the local language. There are call centers for every state which are expected to handle traffic from any part of the country. Queries related to agriculture and allied sectors are being addressed through these call centers.\r\n\r\nAt present IFFCO Kisan Sanchar Limited (IKSL) is managing Kisan Call Centres across the country.\r\n\r\nKisan Call Centre Toll Free Number across India: 1800-180-1551\r\nSource: MANAGE\r\n\r\nKisan Call Centre',1),
(4,'Tips for rice growers','Procure certified seed of High Yielding Varieties/Hybrids recommended for the area from authorized agencies/dealers,\r\nTreat the seed with recommended fungicides for minimizing the disease incidence.\r\nSow the pre-germinated seed of paddy in nursery bed as per guidelines prescribed by the State Agricultural University. Use recommended doses of farm yard manure, macro and micro nutrients in nursery beds at the time of sowing.\r\nNursery raising for planting systems like SRI, mechanical and general practice should be according to scientific recommendation.\r\nGet the soil tested for nutrient status and recommendations. Alternatively follow the general recommendations for major and micro nutrients prescribed by the State Agricultural University.\r\nApply lime/liming material to acid soils @ 2-4 quintals/ha or as per recommendation of the State Agricultural University at the time of field preparation.\r\nMini kits of rice varieties/hybrids are being distributed under NFSM. Interested farmers may contact officers of the State Department of Agriculture.\r\n',1);

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `crop_user` */

insert  into `crop_user`(`id`,`fname`,`lname`,`place`,`post`,`pin`,`gender`,`email`,`lid_id`) values 
(1,'ss','u','pattambi','patttambi',123,'male','msha',2),
(2,'ss','u','pattambi','patttambi',123,'male','msha',3),
(3,'farmer','farmer','pattambi','patttambi',123,'male','farmer@gmail.com',9);

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
(16,'crop','tips'),
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
(22,'crop','0004_alter_user_post','2023-03-16 08:57:56.054755'),
(23,'crop','0005_tips','2023-03-23 10:54:33.586721'),
(24,'crop','0006_alter_policies_description','2023-03-30 14:44:25.926882'),
(25,'crop','0007_alter_notification_description','2023-03-30 15:15:30.653011'),
(26,'crop','0008_alter_disease_description','2023-03-30 15:53:02.071428'),
(27,'crop','0009_alter_disease_description','2023-03-30 15:56:03.244887'),
(28,'crop','0010_auto_20230331_0009','2023-03-30 18:40:04.046118'),
(29,'crop','0011_alter_tips_description','2023-03-30 18:40:04.063159');

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
