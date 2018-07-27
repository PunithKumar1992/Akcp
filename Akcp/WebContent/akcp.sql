/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.1.36-community : Database - akcp
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`akcp` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `akcp`;

/*Table structure for table `akcpaboutusimage` */

DROP TABLE IF EXISTS `akcpaboutusimage`;

CREATE TABLE `akcpaboutusimage` (
  `about_id` int(10) NOT NULL AUTO_INCREMENT,
  `about_image` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`about_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `akcpaboutusimage` */

insert  into `akcpaboutusimage`(`about_id`,`about_image`) values (1,'aboutus.png');

/*Table structure for table `akcpadminregesitration` */

DROP TABLE IF EXISTS `akcpadminregesitration`;

CREATE TABLE `akcpadminregesitration` (
  `admin_id` int(50) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `akcpadminregesitration` */

insert  into `akcpadminregesitration`(`admin_id`,`admin_name`,`admin_email`,`admin_password`,`admin_phone`) values (1,'punith','punithkumar325@gmail.com','123456','9738562088'),(4,'seema','seema@gmail.com','Seema@123456','9738562088');

/*Table structure for table `akcpbanner` */

DROP TABLE IF EXISTS `akcpbanner`;

CREATE TABLE `akcpbanner` (
  `banner_id` int(10) NOT NULL,
  `banner_caption` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner_image` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `akcpbanner` */

insert  into `akcpbanner`(`banner_id`,`banner_caption`,`banner_image`) values (1,'Akhanda Karnataka Cinema Parishath','banner.jpg');

/*Table structure for table `akcpfeedback` */

DROP TABLE IF EXISTS `akcpfeedback`;

CREATE TABLE `akcpfeedback` (
  `feed_id` bigint(255) NOT NULL AUTO_INCREMENT,
  `feedbacker_name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `feedbacker_email` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `feedbacker_subject` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `feedbacker_phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `feedbacker_msg` longtext COLLATE utf8_unicode_ci,
  `feeddisplay_status` int(10) DEFAULT NULL,
  PRIMARY KEY (`feed_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `akcpfeedback` */

insert  into `akcpfeedback`(`feed_id`,`feedbacker_name`,`feedbacker_email`,`feedbacker_subject`,`feedbacker_phone`,`feedbacker_msg`,`feeddisplay_status`) values (1,'punith','punithkumar325@gmail.com','Sjvdcddg','9738562088','knkNNDDnbdn,dmkdz',1);

/*Table structure for table `akcphomeaboutusimage` */

DROP TABLE IF EXISTS `akcphomeaboutusimage`;

CREATE TABLE `akcphomeaboutusimage` (
  `homeabout_id` int(10) NOT NULL AUTO_INCREMENT,
  `homeabout_image` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`homeabout_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `akcphomeaboutusimage` */

insert  into `akcphomeaboutusimage`(`homeabout_id`,`homeabout_image`) values (1,'homeabout.jpg');

/*Table structure for table `akcpmembership` */

DROP TABLE IF EXISTS `akcpmembership`;

CREATE TABLE `akcpmembership` (
  `membership_id` int(10) NOT NULL AUTO_INCREMENT,
  `member_name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_contact` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_email` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_place` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_dob` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_profession` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_msg` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`membership_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `akcpmembership` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
