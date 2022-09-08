/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 10.4.18-MariaDB : Database - stock
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`stock` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `stock`;

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '标题',
  `tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '标签',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '详情',
  `pageview_counts` int(11) NOT NULL DEFAULT 0 COMMENT '浏览量',
  `pageviews` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '浏览人',
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '状态(0:在线中;1:已下线)',
  `created_at` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime DEFAULT NULL COMMENT '修改时间',
  `published_at` datetime DEFAULT NULL COMMENT '首次上线时间',
  `topped_at` datetime DEFAULT NULL COMMENT '置顶时间',
  PRIMARY KEY (`id`),
  KEY `bulletins_title_index` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `news` */

insert  into `news`(`id`,`title`,`tags`,`content`,`pageview_counts`,`pageviews`,`status`,`created_at`,`updated_at`,`published_at`,`topped_at`) values 
(2,'Daphne Kolle2','qq','<p><span style=\"color: rgb(51, 51, 51); font-size: 14px;\">Daphne Koller co-founded Coursera in 2012. She served as the company’s Co-CEO until 2014, and then as President until 2016. Daphne has recently founded Insitro which applies machine learning techniques to drive innovation in the area of life sciences. Before Insitro, Daphne served as Chief Computing Officer of Calico Labs, an Alphabet (Google) company using advanced technology to understand aging. Before founding Coursera, Daphne was the Rajeev Motwani Professor of Computer Science at Stanford University, where she served on the faculty for 18 years. She is the author of over 200 refereed publications, and has been honored with multiple awards and fellowships, including the Presidential Early Career Award for Scientists and Engineers (PECASE), the ACM Prize in Computing, the MacArthur Foundation Fellowship, and the Cox Medal for excellence in fostering undergraduate research at Stanford; she was also recognized as one of TIME Magazine’s 100 most influential people in 2012. Daphne was inducted into the National Academy of Engineering in 2011 and elected a fellow of the American Academy of Arts and Sciences in 2014</span><br></p>',2,'[2,31]',0,'2017-02-24 12:12:22','2020-05-03 11:03:29','2020-05-03 11:03:29','2020-05-03 11:03:29'),
(3,'Our Story','qq','<p><span style=\"color: rgb(0, 0, 0); font-size: 22px;\">Our Story</span></p><p style=\"text-align: left;\">Coursera was founded by Daphne Koller and Andrew Ng with a vision of providing life-transforming learning experiences to anyone, anywhere. It is now a leading online learning platform for higher education, where&nbsp;56&nbsp;million learners from around the world come to learn skills of the future. More than&nbsp;200&nbsp;of the world’s top universities and industry educators partner with Coursera to offer courses, Specializations, certificates, and degree programs.&nbsp;2,300&nbsp;companies trust the company’s enterprise platform&nbsp;<a href=\"https://www.coursera.org/business/\">Coursera for Business</a>&nbsp;to transform their talent.&nbsp;<a href=\"https://www.coursera.org/government\">Coursera for Government</a>&nbsp;equips government employees and citizens with in-demand skills to build a competitive workforce.&nbsp;<a href=\"https://www.coursera.org/campus/\">Coursera for Campus</a>&nbsp;empowers any university to offer high-quality, job-relevant online education to students, alumni, faculty, and staff. Coursera is backed by leading investors that include Kleiner Perkins, New Enterprise Associates, Learn Capital, and SEEK Group.</p>',3,'[2,31,1]',0,'2017-02-24 12:12:22','2020-05-03 11:02:59','2020-05-03 11:02:59','2020-05-03 11:02:00'),
(4,'Andrew Ng','qq','<p><span style=\"color: rgb(51, 51, 51); font-size: 14px;\">Andrew Ng co-founded Coursera in 2012, served as the company’s Co-CEO until 2014, and is currently the Chair of the Coursera Board. He is the former Chief Scientist at Baidu, a Chinese language search engine, where he was responsible for driving the company\'s global AI strategy and infrastructure. Dr. Ng is also an adjunct professor in the computer science department at Stanford University. In 2011, he led the development of Stanford\'s Massive Open Online Course platform and taught an online machine learning class that was offered to over 100,000 students - the initiative that led to the co-founding of Coursera. Previously, Dr. Ng was the founding lead of the Google Brain deep learning project. Dr. Ng has authored or co-authored over 100 research papers in machine learning, robotics, and related fields. In 2013 he was named to the Time 100 list of the most influential persons in the world. He holds degrees from Carnegie Mellon University, MIT, and the University of California, Berkeley.</span><br></p>',2,'[2,31]',0,'2017-02-25 12:12:22','2020-05-03 11:02:55','2020-05-03 11:02:55','2020-05-03 11:02:48'),
(8,'2 hours project','qq','<p><span style=\"color: rgb(55, 58, 60); font-size: 14px;\">In this 2 hours project you will learn how to build custom regional reports with Google Analytics. You will familiarize with Google Analytics and its usage, create a marketing custom regional dashboard with table and graph widgets, customize a standard geo report and scheduled the report you have designed to be sent monthly via email to a distributed regional marketing team.</span><br></p>',3,'[2,31,1]',0,'2017-02-20 12:12:22','2020-05-03 11:08:16','2020-05-03 11:08:16',NULL),
(12,'Online Degrees','d','<p>Top degrees that fit your life</p><p>Transform your career with&nbsp;a degree online&nbsp;from a world-class university&nbsp;on Coursera. Our modular degree learning experience gives you the ability to study on your own schedule and earn credit as you complete your course assignments. For a breakthrough price, you’ll learn from top university instructors and graduate with an industry-relevant university credential.</p><ul><li>Flexible online learning, with open degree courses you can start today</li><li>Build your own schedule over 1-4 years of study</li></ul>',0,'',0,'2017-03-01 16:03:53','2020-05-03 11:01:30','2020-05-03 11:01:30','2020-05-03 11:01:30'),
(14,'We envision a world','a','<h2 style=\"margin-left: 0px;\">Courses</h2><p>Learn something new</p><p>Every course is taught by top instructors from world-class universities and companies, so you can learn something new anytime, anywhere. Hundreds of&nbsp;free courses&nbsp;give you access to on-demand video lectures, homework exercises, and community discussion forums. Paid courses provide additional quizzes and projects as well as a shareable Course Certificate upon completion.</p><ul><li>100% online</li><li>Learn something new in 4-6 weeks</li></ul><h2 style=\"margin-left: 0px;\">Specializations</h2><p>Master a skill</p><p>If you want to master a specific career skill, consider enrolling in a&nbsp;Specialization. You’ll complete a series of rigorous courses at your own pace, tackle hands-on projects based on real business challenges, and earn a Specialization Certificate to share with your professional network and potential employers.</p><ul><li>100% online</li><li>Master a skill in 4-6 months</li></ul><h2 style=\"margin-left: 0px;\">Professional Certificates</h2><p>Get job-ready for an in-demand career</p><p>Whether you’re looking to start a new career or change your current one,&nbsp;Professional Certificates&nbsp;on Coursera help you become job-ready. Learn at your own pace from top companies and universities, apply your new skills to hands-on projects that showcase your expertise to potential employers, unlock access to career support resources, and earn a career credential to kickstart your new career.</p><ul><li>100% online</li><li>Get job-ready in less than a year with hands-on projects</li></ul>',2,'[31,1]',0,'2017-03-01 16:23:04','2020-05-03 11:00:38','2020-05-03 11:00:38','2020-05-03 11:00:38'),
(21,'Bayesian Statistics3','312','<p>This course describes Bayesian statistics, in which one\'s inferences about parameters or hypotheses are updated as evidence accumulates. You will learn to use Bayes’ rule to transform prior probabilities into posterior probabilities, and be introduced to the underlying theory and perspective of the Bayesian paradigm. The course will apply Bayesian methods to several practical problems, to show end-to-end Bayesian analyses that move from framing the question to building models to eliciting prior probabilities to implementing in R (free statistical software) the final posterior distribution. Additionally, the course will introduce credible regions, Bayesian comparisons of means and proportions, Bayesian regression and inference using multiple models, and discussion of Bayesian prediction.</p><p>We assume learners in this course have background knowledge equivalent to what is covered in the earlier three courses in this specialization: \"Introduction to Probability and Data,\" \"Inferential Statistics,\" and \"Linear Regression and Modeling.\"</p>',1,'[1]',0,'2017-03-28 21:30:15','2020-05-03 11:07:39','2020-05-03 11:07:39',NULL),
(22,'Statistical inference methods','1','<p><span style=\"color: rgb(55, 58, 60); font-size: 14px;\">This course covers commonly used statistical inference methods for numerical and categorical data. You will learn how to set up and perform hypothesis tests, interpret p-values, and report the results of your analysis in a way that is interpretable for clients or the public. Using numerous data examples, you will learn to report estimates of quantities in a way that expresses the uncertainty of the quantity of interest. You will be guided through installing and using R and RStudio (free statistical software), and will use this software for lab exercises and a final project. The course introduces practical tools for performing data analysis and explores the fundamental concepts necessary to interpret and report results for both categorical and numerical data</span></p>',1,'[1]',0,'2017-03-29 09:14:56','2020-05-03 11:07:10','2020-05-03 12:04:49',NULL),
(23,'Professional Certificates','1','<h2 style=\"text-align: center;\">Find your path to a new career</h2><p style=\"text-align: center;\">Gain the in-demand skills you need to break into a new career field like information technology or data science. No prior experience is required to get started.</p>',1,'[1]',0,'2017-03-29 09:30:07','2020-05-03 11:06:12','2020-05-03 11:04:49',NULL),
(24,'Transform lives2','1','<h2 style=\"margin-left: 0px;\">Courses</h2><p>Learn something new</p><p>Every course is taught by top instructors from world-class universities and companies, so you can learn something new anytime, anywhere. Hundreds of&nbsp;free courses&nbsp;give you access to on-demand video lectures, homework exercises, and community discussion forums. Paid courses provide additional quizzes and projects as well as a shareable Course Certificate upon completion.</p><ul><li>100% online</li><li>Learn something new in 4-6 weeks</li></ul><h2 style=\"margin-left: 0px;\">Specializations</h2><p>Master a skill</p><p>If you want to master a specific career skill, consider enrolling in a&nbsp;Specialization. You’ll complete a series of rigorous courses at your own pace, tackle hands-on projects based on real business challenges, and earn a Specialization Certificate to share with your professional network and potential employers.</p><ul><li>100% online</li><li>Master a skill in 4-6 months</li></ul><h2 style=\"margin-left: 0px;\">Professional Certificates</h2><p>Get job-ready for an in-demand career</p><p>Whether you’re looking to start a new career or change your current one,&nbsp;Professional Certificates&nbsp;on Coursera help you become job-ready. Learn at your own pace from top companies and universities, apply your new skills to hands-on projects that showcase your expertise to potential employers, unlock access to career support resources, and earn a career credential to kickstart your new career.</p><ul><li>100% online</li><li>Get job-ready in less than a year with hands-on projects</li></ul>',13,NULL,0,'2017-03-29 13:33:00','2020-05-03 11:04:49','2020-05-03 11:04:49',NULL),
(32,'2122133','2112','dsdsds',0,NULL,0,NULL,NULL,NULL,NULL),
(33,'12345665','123','2333\r\n',0,NULL,0,NULL,NULL,NULL,NULL),
(34,'5555','45651','54612321\r\n',0,NULL,0,NULL,NULL,NULL,NULL),
(35,'Daphne Koller33','qq','<p>g in 2011 and elected a fellow of the American Academy of Arts and Sciences in 2014</p>',0,NULL,0,NULL,NULL,NULL,NULL),
(36,'Daphne Koller3232','qq','<p>g in 2011 and elected a fellow of the American Academy of Arts and Sciences in 2014</p>',0,NULL,0,NULL,NULL,NULL,NULL),
(37,'Daphne Koller322236','qq','<p>g in 2011 and elected a fellow of the American Academy of Arts and Sciences in 2014</p>',0,NULL,0,NULL,NULL,NULL,NULL),
(38,'Test','test','test',0,NULL,0,NULL,NULL,NULL,NULL);

/*Table structure for table `stock` */

DROP TABLE IF EXISTS `stock`;

CREATE TABLE `stock` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `rate` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Data for the table `stock` */

insert  into `stock`(`id`,`name`,`price`,`rate`) values 
(1,'stock1',101,10.1),
(2,'stock2',102,10.2),
(3,'stock3',103,10.3),
(4,'stock4',104,10.4);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`password`) values 
(1,'admin','dIjjMbi2TleU2j+k6xCtXQ=='),
(2,'admin1','YEyhGeLbZWhjeDPdz+ChZw=='),
(5,'admin111','YEyhGeLbZWhjeDPdz+ChZw=='),
(6,'admin123','YEyhGeLbZWhjeDPdz+ChZw=='),
(7,'ad','YEyhGeLbZWhjeDPdz+ChZw=='),
(8,'admin55','4QrcOUm6Wau+VuBX8g+IPg=='),
(9,'admin1234','YEyhGeLbZWhjeDPdz+ChZw=='),
(10,'admin123455','YEyhGeLbZWhjeDPdz+ChZw=='),
(11,'admin1234567','YEyhGeLbZWhjeDPdz+ChZw=='),
(12,'123456','YEyhGeLbZWhjeDPdz+ChZw=='),
(13,'admin123558','YEyhGeLbZWhjeDPdz+ChZw=='),
(14,'1235','YEyhGeLbZWhjeDPdz+ChZw=='),
(15,'12356','YEyhGeLbZWhjeDPdz+ChZw=='),
(16,'ad55','YEyhGeLbZWhjeDPdz+ChZw=='),
(17,'123','4QrcOUm6Wau+VuBX8g+IPg==');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
