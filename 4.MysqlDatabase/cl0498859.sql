-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: cl0498859
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `cl0498859`
--

/*!40000 DROP DATABASE IF EXISTS `cl0498859`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cl0498859` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `cl0498859`;

--
-- Table structure for table `bijiguanli`
--

DROP TABLE IF EXISTS `bijiguanli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bijiguanli` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bijimingcheng` varchar(200) DEFAULT NULL COMMENT '笔记名称',
  `kemu` varchar(200) DEFAULT NULL COMMENT '科目',
  `tupian` longtext COMMENT '图片',
  `bijixiangqing` longtext COMMENT '笔记详情',
  `shangchuanshijian` datetime DEFAULT NULL COMMENT '上传时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1708757881217 DEFAULT CHARSET=utf8 COMMENT='笔记管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bijiguanli`
--

LOCK TABLES `bijiguanli` WRITE;
/*!40000 ALTER TABLE `bijiguanli` DISABLE KEYS */;
INSERT INTO `bijiguanli` VALUES (91,'2024-02-24 06:41:49','笔记名称1','科目1','file/bijiguanliTupian1.jpg,file/bijiguanliTupian2.jpg,file/bijiguanliTupian3.jpg','','2024-02-24 14:41:49','学号1','学生姓名1'),(92,'2024-02-24 06:41:49','笔记名称2','科目2','file/bijiguanliTupian2.jpg,file/bijiguanliTupian3.jpg,file/bijiguanliTupian4.jpg','','2024-02-24 14:41:49','学号2','学生姓名2'),(93,'2024-02-24 06:41:49','笔记名称3','科目3','file/bijiguanliTupian3.jpg,file/bijiguanliTupian4.jpg,file/bijiguanliTupian5.jpg','','2024-02-24 14:41:49','学号3','学生姓名3'),(94,'2024-02-24 06:41:49','笔记名称4','科目4','file/bijiguanliTupian4.jpg,file/bijiguanliTupian5.jpg,file/bijiguanliTupian6.jpg','','2024-02-24 14:41:49','学号4','学生姓名4'),(95,'2024-02-24 06:41:49','笔记名称5','科目5','file/bijiguanliTupian5.jpg,file/bijiguanliTupian6.jpg,file/bijiguanliTupian7.jpg','','2024-02-24 14:41:49','学号5','学生姓名5'),(96,'2024-02-24 06:41:49','笔记名称6','科目6','file/bijiguanliTupian6.jpg,file/bijiguanliTupian7.jpg,file/bijiguanliTupian8.jpg','','2024-02-24 14:41:49','学号6','学生姓名6'),(1708757881216,'2024-02-24 06:58:00','会计学计算','高数','file/1708757873347.png','file/1708757878999.jpg','2024-02-24 14:57:39','123','123');
/*!40000 ALTER TABLE `bijiguanli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'swiper1','file/swiperPicture1.jpg'),(2,'swiper2','file/swiperPicture2.jpg'),(3,'swiper3','file/swiperPicture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exampaper`
--

DROP TABLE IF EXISTS `exampaper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exampaper` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `name` varchar(200) NOT NULL COMMENT '试卷名称',
  `time` int(11) NOT NULL COMMENT '考试时长(分钟)',
  `status` varchar(200) DEFAULT NULL COMMENT '试卷状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1708757642709 DEFAULT CHARSET=utf8 COMMENT='试卷管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exampaper`
--

LOCK TABLES `exampaper` WRITE;
/*!40000 ALTER TABLE `exampaper` DISABLE KEYS */;
INSERT INTO `exampaper` VALUES (1,'2024-02-24 06:41:49','试卷1',120,'1'),(1708757642708,'2024-02-24 06:54:02','广告学基础',60,'1');
/*!40000 ALTER TABLE `exampaper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examquestion`
--

DROP TABLE IF EXISTS `examquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examquestion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `paperid` bigint(20) NOT NULL COMMENT '试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT NULL COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `type` bigint(20) DEFAULT NULL COMMENT '试题类型',
  `sequence` bigint(20) DEFAULT NULL COMMENT '试题排序，值越大排越前面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1708757728993 DEFAULT CHARSET=utf8 COMMENT='试题管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examquestion`
--

LOCK TABLES `examquestion` WRITE;
/*!40000 ALTER TABLE `examquestion` DISABLE KEYS */;
INSERT INTO `examquestion` VALUES (1,'2024-02-24 06:41:49',1,'试卷1','1+1等于多少?','[{\"text\":\"2\",\"code\":\"A\"},{\"text\":\"11\",\"code\":\"B\"},{\"text\":\"十\",\"code\":\"C\"},{\"text\":\"王\",\"code\":\"D\"}]',20,'A','2',0,1),(2,'2024-02-24 06:41:49',1,'试卷1','2-1等于1，对吗?','[{\"text\":\"对\",\"code\":\"A\"},{\"text\":\"错\",\"code\":\"B\"}]',20,'A','2-1等于1',2,2),(3,'2024-02-24 06:41:49',1,'试卷1','下面哪些数是质数？。','[{\"text\":\"2\",\"code\":\"A\"},{\"text\":\"3\",\"code\":\"B\"},{\"text\":\"4\",\"code\":\"C\"},{\"text\":\"5\",\"code\":\"D\"}]',30,'A,B,D','2,3,5属于质数',1,3),(4,'2024-02-24 06:41:49',1,'试卷1','最小的自然是( )。','[]',30,'0','最小的自然数是0',3,4),(1708757728992,'2024-02-24 06:55:28',1708757642708,'广告学基础','()是在营销环境分析的基础上制定的。','[{\"text\":\"营销环境分析\",\"code\":\"A\"},{\"text\":\"营销目标\",\"code\":\"B\"},{\"text\":\"市场定位\",\"code\":\"C\"},{\"text\":\"市场营销战略\",\"code\":\"D\"}]',2,'A','少吃搜啊哈葱丝啊好吃',0,1);
/*!40000 ALTER TABLE `examquestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examrecord`
--

DROP TABLE IF EXISTS `examrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examrecord` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) NOT NULL COMMENT '用户名',
  `paperid` bigint(20) NOT NULL COMMENT '试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionid` bigint(20) NOT NULL COMMENT '试题id（外键）',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT NULL COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `myscore` bigint(20) DEFAULT NULL COMMENT '试题得分',
  `myanswer` varchar(200) DEFAULT NULL COMMENT '考生答案',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1708757934935 DEFAULT CHARSET=utf8 COMMENT='考试记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examrecord`
--

LOCK TABLES `examrecord` WRITE;
/*!40000 ALTER TABLE `examrecord` DISABLE KEYS */;
INSERT INTO `examrecord` VALUES (1708757211841,'2024-02-24 06:46:51','123',1708757055065,'广告学基础',1708757136180,'()是在营销环境分析的基础上制定的。','[{\"text\":\"营销环境分析\",\"code\":\"A\",\"checked\":true},{\"text\":\"营销目标\",\"code\":\"B\",\"checked\":false},{\"text\":\"市场定位\",\"code\":\"C\",\"checked\":false},{\"text\":\"市场营销战略\",\"code\":\"D\",\"checked\":false}]',2,'A','航次哦撒好吃vi哦啊是多擦v和',2,'A',1708757195929),(1708757913989,'2024-02-24 06:58:33','123',1708757642708,'广告学基础',1708757728992,'()是在营销环境分析的基础上制定的。','[{\"text\":\"营销环境分析\",\"code\":\"A\",\"checked\":true},{\"text\":\"营销目标\",\"code\":\"B\",\"checked\":false},{\"text\":\"市场定位\",\"code\":\"C\",\"checked\":false},{\"text\":\"市场营销战略\",\"code\":\"D\",\"checked\":false}]',2,'A','少吃搜啊哈葱丝啊好吃',2,'A',1708757195929),(1708757924474,'2024-02-24 06:58:43','123',1,'试卷1',1,'1+1等于多少?','[{\"text\":\"2\",\"code\":\"A\",\"checked\":false},{\"text\":\"11\",\"code\":\"B\",\"checked\":true},{\"text\":\"十\",\"code\":\"C\",\"checked\":false},{\"text\":\"王\",\"code\":\"D\",\"checked\":false}]',20,'A','2',0,'B',1708757195929),(1708757926758,'2024-02-24 06:58:45','123',1,'试卷1',2,'2-1等于1，对吗?','[{\"text\":\"对\",\"code\":\"A\",\"checked\":true},{\"text\":\"错\",\"code\":\"B\",\"checked\":false}]',20,'A','2-1等于1',20,'A',1708757195929),(1708757928971,'2024-02-24 06:58:48','123',1,'试卷1',3,'下面哪些数是质数？。','[{\"text\":\"2\",\"code\":\"A\",\"checked\":true},{\"text\":\"3\",\"code\":\"B\",\"checked\":true},{\"text\":\"4\",\"code\":\"C\",\"checked\":true},{\"text\":\"5\",\"code\":\"D\",\"checked\":false}]',30,'A,B,D','2,3,5属于质数',0,'A,B,C',1708757195929),(1708757934934,'2024-02-24 06:58:54','123',1,'试卷1',4,'最小的自然是( )。','[]',30,'0','最小的自然数是0',0,'2',1708757195929);
/*!40000 ALTER TABLE `examrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kechengxinxi`
--

DROP TABLE IF EXISTS `kechengxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kechengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `zhouci` varchar(200) DEFAULT NULL COMMENT '周次',
  `jieshu` varchar(200) DEFAULT NULL COMMENT '节数',
  `renkejiaoshi` varchar(200) DEFAULT NULL COMMENT '任课教师',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1708757598793 DEFAULT CHARSET=utf8 COMMENT='课程信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kechengxinxi`
--

LOCK TABLES `kechengxinxi` WRITE;
/*!40000 ALTER TABLE `kechengxinxi` DISABLE KEYS */;
INSERT INTO `kechengxinxi` VALUES (81,'2024-02-24 06:41:49','课程名称1','星期一','第一二节','任课教师1','学号1','学生姓名1','班级1'),(82,'2024-02-24 06:41:49','课程名称2','星期一','第一二节','任课教师2','学号2','学生姓名2','班级2'),(83,'2024-02-24 06:41:49','课程名称3','星期一','第一二节','任课教师3','学号3','学生姓名3','班级3'),(84,'2024-02-24 06:41:49','课程名称4','星期一','第一二节','任课教师4','学号4','学生姓名4','班级4'),(85,'2024-02-24 06:41:49','课程名称5','星期一','第一二节','任课教师5','学号5','学生姓名5','班级5'),(86,'2024-02-24 06:41:49','课程名称6','星期一','第一二节','任课教师6','学号6','学生姓名6','班级6'),(1708757598792,'2024-02-24 06:53:18','会计学基础','星期一','第一二节','张三','123','123','22会计三班');
/*!40000 ALTER TABLE `kechengxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `menujson` longtext COMMENT '菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'2024-02-24 06:41:49','[{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-brand\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"管理员\",\"menuJump\":\"列表\",\"tableName\":\"users\"},{\"appFrontIcon\":\"cuIcon-album\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"学生\",\"menuJump\":\"列表\",\"tableName\":\"xuesheng\"}],\"fontClass\":\"icon-common44\",\"menu\":\"管理员管理\",\"unicode\":\"&#xef28;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-rank\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"课程信息\",\"menuJump\":\"列表\",\"tableName\":\"kechengxinxi\"}],\"fontClass\":\"icon-common33\",\"menu\":\"课程信息管理\",\"unicode\":\"&#xee6a;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-attentionfavor\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"日程信息\",\"menuJump\":\"列表\",\"tableName\":\"richengxinxi\"}],\"fontClass\":\"icon-common12\",\"menu\":\"日程信息管理\",\"unicode\":\"&#xedf4;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-qrcode\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"笔记管理\",\"menuJump\":\"列表\",\"tableName\":\"bijiguanli\"}],\"fontClass\":\"icon-common47\",\"menu\":\"笔记管理\",\"unicode\":\"&#xef63;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-taxi\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"组卷\"],\"menu\":\"试卷管理\",\"tableName\":\"exampaper\"}],\"fontClass\":\"icon-common49\",\"menu\":\"试卷管理\",\"unicode\":\"&#xef79;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"试题管理\",\"menuJump\":\"列表\",\"tableName\":\"examquestion\"}],\"fontClass\":\"icon-common7\",\"menu\":\"试题管理\",\"unicode\":\"&#xedb4;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-pic\",\"buttons\":[\"查看\"],\"menu\":\"错题本\",\"menuJump\":\"22\",\"tableName\":\"examrecord\"},{\"appFrontIcon\":\"cuIcon-taxi\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"试卷列表\",\"menuJump\":\"12\",\"tableName\":\"exampaper\"},{\"appFrontIcon\":\"cuIcon-pic\",\"buttons\":[\"查看\",\"批卷\"],\"menu\":\"考试记录\",\"tableName\":\"examrecord\"}],\"fontClass\":\"icon-common21\",\"menu\":\"考试管理\",\"unicode\":\"&#xee03;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-clothes\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"轮播图\",\"menuJump\":\"列表\",\"tableName\":\"config\"},{\"appFrontIcon\":\"cuIcon-goodsnew\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"公告信息\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"fontClass\":\"icon-common13\",\"menu\":\"系统管理\",\"unicode\":\"&#xedf7;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-newshot\",\"buttons\":[\"查看\"],\"fontClass\":\"icon-common7\",\"menu\":\"日程信息\",\"menuJump\":\"列表\",\"tableName\":\"richengxinxi\",\"unicode\":\"&#xedb4;\"}],\"fontClass\":\"icon-common7\",\"menu\":\"日程信息\",\"unicode\":\"&#xedb4;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-paint\",\"buttons\":[\"查看\"],\"fontClass\":\"icon-common18\",\"menu\":\"课程信息\",\"menuJump\":\"列表\",\"tableName\":\"kechengxinxi\",\"unicode\":\"&#xedff;\"}],\"fontClass\":\"icon-common18\",\"menu\":\"课程信息\",\"unicode\":\"&#xedff;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-flashlightopen\",\"buttons\":[\"查看\"],\"fontClass\":\"icon-common26\",\"menu\":\"试卷列表\",\"menuJump\":\"12\",\"tableName\":\"exampaper\",\"unicode\":\"&#xee2b;\"}],\"fontClass\":\"icon-common26\",\"menu\":\"考试信息\",\"unicode\":\"&#xee2b;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-skin\",\"buttons\":[\"查看\"],\"fontClass\":\"icon-common15\",\"menu\":\"笔记管理\",\"menuJump\":\"列表\",\"tableName\":\"bijiguanli\",\"unicode\":\"&#xedfc;\"}],\"fontClass\":\"icon-common15\",\"menu\":\"笔记信息\",\"unicode\":\"&#xedfc;\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"管理员\",\"tableName\":\"users\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-rank\",\"buttons\":[\"查看\"],\"menu\":\"课程信息\",\"menuJump\":\"列表\",\"tableName\":\"kechengxinxi\"}],\"fontClass\":\"icon-common33\",\"menu\":\"课程信息管理\",\"unicode\":\"&#xee6a;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-attentionfavor\",\"buttons\":[\"查看\"],\"menu\":\"日程信息\",\"menuJump\":\"列表\",\"tableName\":\"richengxinxi\"}],\"fontClass\":\"icon-common12\",\"menu\":\"日程信息管理\",\"unicode\":\"&#xedf4;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-qrcode\",\"buttons\":[\"查看\",\"新增\",\"删除\",\"修改\"],\"menu\":\"笔记管理\",\"menuJump\":\"列表\",\"tableName\":\"bijiguanli\"}],\"fontClass\":\"icon-common47\",\"menu\":\"笔记管理\",\"unicode\":\"&#xef63;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-taxi\",\"buttons\":[\"查看\"],\"menu\":\"试卷管理\",\"tableName\":\"exampaper\"}],\"fontClass\":\"icon-common49\",\"menu\":\"试卷管理\",\"unicode\":\"&#xef79;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-pic\",\"buttons\":[\"查看\"],\"menu\":\"错题本\",\"menuJump\":\"22\",\"tableName\":\"examrecord\"},{\"appFrontIcon\":\"cuIcon-taxi\",\"buttons\":[\"查看\"],\"menu\":\"试卷列表\",\"menuJump\":\"12\",\"tableName\":\"exampaper\"},{\"appFrontIcon\":\"cuIcon-pic\",\"buttons\":[\"查看\"],\"menu\":\"考试记录\",\"tableName\":\"examrecord\"}],\"fontClass\":\"icon-common21\",\"menu\":\"考试管理\",\"unicode\":\"&#xee03;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-newshot\",\"buttons\":[\"查看\"],\"fontClass\":\"icon-common7\",\"menu\":\"日程信息\",\"menuJump\":\"列表\",\"tableName\":\"richengxinxi\",\"unicode\":\"&#xedb4;\"}],\"fontClass\":\"icon-common7\",\"menu\":\"日程信息\",\"unicode\":\"&#xedb4;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-paint\",\"buttons\":[\"查看\"],\"fontClass\":\"icon-common18\",\"menu\":\"课程信息\",\"menuJump\":\"列表\",\"tableName\":\"kechengxinxi\",\"unicode\":\"&#xedff;\"}],\"fontClass\":\"icon-common18\",\"menu\":\"课程信息\",\"unicode\":\"&#xedff;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-flashlightopen\",\"buttons\":[\"查看\"],\"fontClass\":\"icon-common26\",\"menu\":\"试卷列表\",\"menuJump\":\"12\",\"tableName\":\"exampaper\",\"unicode\":\"&#xee2b;\"}],\"fontClass\":\"icon-common26\",\"menu\":\"考试信息\",\"unicode\":\"&#xee2b;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-skin\",\"buttons\":[\"查看\"],\"fontClass\":\"icon-common15\",\"menu\":\"笔记管理\",\"menuJump\":\"列表\",\"tableName\":\"bijiguanli\",\"unicode\":\"&#xedfc;\"}],\"fontClass\":\"icon-common15\",\"menu\":\"笔记信息\",\"unicode\":\"&#xedfc;\"}],\"hasBackLogin\":\"否\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"是\",\"hasFrontRegister\":\"是\",\"roleName\":\"学生\",\"tableName\":\"xuesheng\"}]');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` longtext NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1708757755371 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (101,'2024-02-24 06:41:49','青花瓷','素胚勾勒出青花笔锋浓转淡，瓶身描绘的牡丹一如你初妆，冉冉檀香透过窗心事我了然，宣上走笔至此搁一半，釉色渲染仕女图韵味被私藏，而你嫣然的一笑如含苞待放，你的美缕飘散，去到我去不了的地方，天青色等烟雨 而我在等你，炊烟袅袅升起','file/newsPicture1.jpg','素胚勾勒出青花笔锋浓转淡，瓶身描绘的牡丹一如你初妆，冉冉檀香透过窗心事我了然，宣上走笔至此搁一半，釉色渲染仕女图韵味被私藏，而你嫣然的一笑如含苞待放，你的美缕飘散，去到我去不了的地方，天青色等烟雨 而我在等你，炊烟袅袅升起， 隔江千万里，在瓶底书前朝的飘逸，就当我为遇见你伏笔，天青色等烟雨， 而我在等你，月色被打捞起， 晕开了局，如传世的青花瓷自顾自美丽，你眼带笑意，色白花青的锦鲤跃然于碗底，临摹宋体落款时却惦记着你，你隐藏在窑烧里千年的秘密，极细腻犹如绣花针落地，帘外芭蕉惹骤雨门环惹铜绿，而我路过那江南小镇惹了你，在泼墨山水画里，你从墨色深处被隐去，天青色等烟雨 ，而我在等你，炊烟袅袅升起 ，隔江千万里，在瓶底书汉隶仿前朝的飘逸，就当我为遇见你伏笔，天色等烟雨 ，而我在等你，月色被打捞起， 晕开了结局，如传世的青花瓷自顾自美丽，你眼带笑意，天青色等烟雨 ，而我在等你，炊烟袅袅升起 ，隔江千万里，在瓶底书汉隶仿前朝的飘逸，就当我为遇见你伏笔，天青色等烟雨， 而我在等你，月色被打捞起 ，晕开了结局，如传世的青花瓷自顾自美丽，你眼带笑意。'),(102,'2024-02-24 06:41:49','理想三旬','雨后有车驶来，驶过暮色苍白，旧铁皮往南开，恋人已不在，收听浓烟下的，诗歌电台，不动情的咳嗽，至少看起来，归途也还可爱，琴弦少了姿态，再不见那夜里，听歌的小孩，时光匆匆独白，将颠沛磨成卡带，已枯倦的情怀，踏碎成年代，就老去吧，孤独别醒来，你渴望的离开，只是无处停摆，就歌唱吧，眼睛眯起来，而热泪的崩坏，只是没抵达的存在','file/newsPicture2.jpg','雨后有车驶来，驶过暮色苍白，旧铁皮往南开，恋人已不在，收听浓烟下的，诗歌电台，不动情的咳嗽，至少看起来，归途也还可爱，琴弦少了姿态，再不见那夜里，听歌的小孩，时光匆匆独白，将颠沛磨成卡带，已枯倦的情怀，踏碎成年代，就老去吧，孤独别醒来，你渴望的离开，只是无处停摆，就歌唱吧，眼睛眯起来，而热泪的崩坏，只是没抵达的存在，青春又醉倒在，籍籍无名的怀，靠嬉笑来虚度，聚散得慷慨，辗转却去不到，对的站台，如果漂泊是成长，必经的路牌，你迷醒岁月中，那贫瘠的未来，像遗憾季节里，未结果的爱，弄脏了每一页诗，吻最疼痛的告白，而风声吹到这，已不需要释怀，就老去吧，孤独别醒来，渴望的离开只是无处停摆就歌唱吧，眼睛眯起来而热泪的崩坏，只是没抵达的存在，就甜蜜地忍耐，繁星润湿窗台，光影跳动着像在，困倦里说爱，再无谓的感慨，以为明白，梦倒塌的地方，今已爬满青苔。'),(103,'2024-02-24 06:41:49','七里香','窗外的麻雀在电线杆上多嘴，你说这一句很有夏天的感觉，手中的铅笔在纸上来来回回，我用几行字形容你是我的谁，秋刀鱼的滋味猫跟你都想了解，初恋的香味就这样被我们寻回，那温暖的阳光像刚摘的鲜艳草莓，你说你舍不得吃掉这一种感觉，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠','file/newsPicture3.jpg','窗外的麻雀在电线杆上多嘴，你说这一句很有夏天的感觉，手中的铅笔在纸上来来回回，我用几行字形容你是我的谁，秋刀鱼的滋味猫跟你都想了解，初恋的香味就这样被我们寻回，那温暖的阳光像刚摘的鲜艳草莓，你说你舍不得吃掉这一种感觉，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，雨下整夜我的爱溢出就像雨水，窗台蝴蝶像诗里纷飞的美丽章节，我接着写，把永远爱你写进诗的结尾，你是我唯一想要的了解，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，那饱满的稻穗幸福了这个季节，而你的脸颊像田里熟透的番茄，你突然对我说七里香的名字很美，我此刻却只想亲吻你倔强的嘴，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，整夜我的爱溢出就像雨水，窗台蝴蝶像诗里纷飞的美丽章节，我接着写，把永远爱你写进诗的结尾，是我唯一想要的了解。'),(104,'2024-02-24 06:41:49','江南','风到这里就是粘，粘住过客的思念，雨到了这里缠成线，缠着我们流连人世间，你在身边就是缘，缘分写在三生石上面，爱有万分之一甜，宁愿我就葬在这一点，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸','file/newsPicture4.jpg','风到这里就是粘，粘住过客的思念，雨到了这里缠成线，缠着我们流连人世间，你在身边就是缘，缘分写在三生石上面，爱有万分之一甜，宁愿我就葬在这一点，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸，不懂爱恨情愁煎熬的我们，都以为相爱就像风云的善变，相信爱一天抵过永远，在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛痛有多浓，当梦被埋在江南烟雨中，心碎了才懂，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸，不懂爱恨情愁煎熬的我们，都以为相爱就像风云的善变，相信爱一天 抵过永远，在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛 痛有多浓，当梦被埋在江南烟雨中，心碎了才懂，相信爱一天抵过永远。在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛 痛有多浓，当梦被埋在江南烟雨中，心碎了才懂。'),(105,'2024-02-24 06:41:49','那些你很冒险的梦','当两颗心开始震动，当你瞳孔学会闪躲，当爱慢慢被遮住只剩下黑，距离像影子被拉拖，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心多执着就加倍心痛，那些你很冒险的梦， 我陪你去疯，折纸飞机碰到雨天终究会坠落','file/newsPicture5.jpg','当两颗心开始震动，当你瞳孔学会闪躲，当爱慢慢被遮住只剩下黑，距离像影子被拉拖，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心多执着就加倍心痛，那些你很冒险的梦， 我陪你去疯，折纸飞机碰到雨天终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心有多执着就加倍心痛，那些你很冒险的梦 我陪你去疯，折纸飞机 碰到雨天 终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，我不想放手 你松开的左手，你爱的放纵 我白不回天空，我输了 累了，但你再也 不回头，那些你很冒险的梦 我陪你去疯，折纸飞机 碰到雨天 终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，你真的不懂 我的爱已降落。'),(106,'2024-02-24 06:41:49','孤勇者','都，是勇敢的，你额头的伤口 你的 不同 你犯的错，都 不必隐藏，你破旧的玩偶 你的 面具 你的自我，他们说 要带着光 驯服每一头怪兽，他们说 要缝好你的伤，没有人爱小丑 为何孤独 不可 光荣，人只有不完美 值得歌颂，谁说污泥满身的不算英雄，爱你孤身走暗巷，爱你不跪的模样，爱你对峙过绝望','file/newsPicture6.jpg','都，是勇敢的，你额头的伤口 你的 不同 你犯的错，都 不必隐藏，你破旧的玩偶 你的 面具 你的自我，他们说 要带着光 驯服每一头怪兽，他们说 要缝好你的伤，没有人爱小丑 为何孤独 不可 光荣，人只有不完美 值得歌颂，谁说污泥满身的不算英雄，爱你孤身走暗巷，爱你不跪的模样，爱你对峙过绝望，不肯哭一场，爱你破烂的衣裳，却敢堵命运的枪，爱你和我那么像，缺口都一样，去吗 配吗 这褴褛的披风，战吗 战啊 以最卑微的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄，他们说 要戒了你的狂，就像擦掉了污垢，他们说 要顺台阶而上，而代价是低头，那就让我 不可 乘风，你一样骄傲着 那种孤勇，谁说对弈平凡的不算英雄，爱你孤身走暗巷 爱你不跪的模样，爱你对峙过绝望 不肯哭一场，爱你破烂的衣裳 却敢堵命运的枪，爱你和我那么像 缺口都一样，去吗 配吗 这褴褛的披风，战吗 战啊 以最卑微的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄，你的斑驳 与众不同 与众不同，你的沉默 震耳欲聋 震耳欲聋，You Are The Hero，爱你孤身走暗巷 爱你不跪的模样，爱你对峙过绝望 不肯哭一场，爱你来自于蛮荒 一生不借谁的光，你将造你的城邦 在废墟之上，去吗 去啊 以最卑微的梦，战吗 战啊 以最孤高的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄。'),(1708757755370,'2024-02-24 06:55:55','新课程上线','审查塑化城viu','file/1708757750106.jpg','<p>撒吃饭啥v次哦DHV哦iu对哦较大覅v就</p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `richengxinxi`
--

DROP TABLE IF EXISTS `richengxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `richengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `zhouci` varchar(200) DEFAULT NULL COMMENT '周次',
  `anpaishijian` varchar(200) DEFAULT NULL COMMENT '安排时间',
  `anpaixiangqing` longtext COMMENT '安排详情',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1708757622569 DEFAULT CHARSET=utf8 COMMENT='日程信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `richengxinxi`
--

LOCK TABLES `richengxinxi` WRITE;
/*!40000 ALTER TABLE `richengxinxi` DISABLE KEYS */;
INSERT INTO `richengxinxi` VALUES (71,'2024-02-24 06:41:49','名称1','周一','上午','安排详情1','学号1','学生姓名1'),(72,'2024-02-24 06:41:49','名称2','周一','上午','安排详情2','学号2','学生姓名2'),(73,'2024-02-24 06:41:49','名称3','周一','上午','安排详情3','学号3','学生姓名3'),(74,'2024-02-24 06:41:49','名称4','周一','上午','安排详情4','学号4','学生姓名4'),(75,'2024-02-24 06:41:49','名称5','周一','上午','安排详情5','学号5','学生姓名5'),(76,'2024-02-24 06:41:49','名称6','周一','上午','安排详情6','学号6','学生姓名6'),(1708757622568,'2024-02-24 06:53:41','班会','周一','下午','<p>到教室b201快班会</p>','123','123');
/*!40000 ALTER TABLE `richengxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'admin','users','管理员','1k7buffv6py3p7s3jco0zxecb6vfbjzc','2024-02-24 06:43:41','2024-02-24 07:52:51'),(2,1708757195929,'123','xuesheng','学生','vi3qwen0madow0f9d4teco5s0f4gzbt5','2024-02-24 06:46:41','2024-02-24 07:46:42'),(3,1708758150700,'001','xuesheng','学生','rqk7aqc43ah9lzsgsizghswngugdj6yq','2024-02-24 07:02:37','2024-02-24 08:02:37');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) NOT NULL COMMENT '用户名',
  `password` varchar(200) NOT NULL COMMENT '密码',
  `role` varchar(200) DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2024-02-24 06:41:49','admin','admin','管理员');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) NOT NULL COMMENT '学生姓名',
  `touxiang` longtext COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `dianhuahaoma` varchar(200) DEFAULT NULL COMMENT '电话号码',
  `shenfenzhenghaoma` varchar(200) DEFAULT NULL COMMENT '身份证号码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=1708758150701 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (61,'2024-02-24 06:41:49','学号1','123456','学生姓名1','file/xueshengTouxiang1.jpg','男','学院1','班级1','19819881111','441622200101010001'),(62,'2024-02-24 06:41:49','学号2','123456','学生姓名2','file/xueshengTouxiang2.jpg','男','学院2','班级2','19819881112','441622200202020002'),(63,'2024-02-24 06:41:49','学号3','123456','学生姓名3','file/xueshengTouxiang3.jpg','男','学院3','班级3','19819881113','441622200303030003'),(64,'2024-02-24 06:41:49','学号4','123456','学生姓名4','file/xueshengTouxiang4.jpg','男','学院4','班级4','19819881114','441622200404040004'),(65,'2024-02-24 06:41:49','学号5','123456','学生姓名5','file/xueshengTouxiang5.jpg','男','学院5','班级5','19819881115','441622200505050005'),(66,'2024-02-24 06:41:49','学号6','123456','学生姓名6','file/xueshengTouxiang6.jpg','男','学院6','班级6','19819881116','441622200606060006'),(1708757195929,'2024-02-24 06:46:35','123','123','123','file/1708757165999.jpg','女','会计学院','22会计三班','13548235685','445236525485263523'),(1708758150700,'2024-02-24 07:02:30','001','001','001','file/1708758124515.jpeg','女','会计学院','20会计三班','13548235685','442536254823515245');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-26 10:00:07
