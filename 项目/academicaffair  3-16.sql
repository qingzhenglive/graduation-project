/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50642
Source Host           : localhost:3306
Source Database       : academicaffair

Target Server Type    : MYSQL
Target Server Version : 50642
File Encoding         : 65001

Date: 2020-03-16 15:43:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for administrativeclass
-- ----------------------------
DROP TABLE IF EXISTS `administrativeclass`;
CREATE TABLE `administrativeclass` (
  `adId` int(11) NOT NULL,
  `adGrade` varchar(20) DEFAULT NULL,
  `adHeadMaster` varchar(20) DEFAULT NULL,
  `adTotalNum` int(11) DEFAULT NULL,
  `adClass` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`adId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='���޿� �� ���������༶����ѡ���';

-- ----------------------------
-- Records of administrativeclass
-- ----------------------------
INSERT INTO `administrativeclass` VALUES ('1', '2016', '', '50', '1班');
INSERT INTO `administrativeclass` VALUES ('2', '2016', null, '48', '2班');
INSERT INTO `administrativeclass` VALUES ('3', '2016', null, '47', '3班');
INSERT INTO `administrativeclass` VALUES ('4', '2016', null, '51', '4班');
INSERT INTO `administrativeclass` VALUES ('5', '2016', null, '50', '5班');
INSERT INTO `administrativeclass` VALUES ('6', '2016', null, '47', '6班');
INSERT INTO `administrativeclass` VALUES ('7', '2016', null, '48', '7班');
INSERT INTO `administrativeclass` VALUES ('8', '2016', null, '49', '8班');

-- ----------------------------
-- Table structure for changecourseapplication
-- ----------------------------
DROP TABLE IF EXISTS `changecourseapplication`;
CREATE TABLE `changecourseapplication` (
  `ccaId` int(11) NOT NULL AUTO_INCREMENT,
  `appTime` varchar(50) DEFAULT NULL,
  `originalTId` varchar(50) DEFAULT NULL,
  `ttId` int(11) DEFAULT NULL,
  `originalWeek` int(11) DEFAULT NULL,
  `newWeek` int(11) DEFAULT NULL,
  `originalTime` varchar(50) DEFAULT NULL,
  `newTime` varchar(50) DEFAULT NULL,
  `newTId` varchar(50) DEFAULT NULL,
  `originalRnum` int(11) DEFAULT NULL,
  `newRnum` int(11) DEFAULT NULL,
  `reason` text,
  `isApproved` int(11) DEFAULT NULL,
  PRIMARY KEY (`ccaId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of changecourseapplication
-- ----------------------------
INSERT INTO `changecourseapplication` VALUES ('1', '2020-03-15 17:07:17', '1', '1', '1', '2', '8:00-9:30', '9:45-11:15', '2', '2', '3', '生病了', '0');
INSERT INTO `changecourseapplication` VALUES ('2', '2020-03-15 17:10:03', '1', '1', '1', '4', '8:00-9:30', '9:45-11:15', '3', '2', '8', '吐了', '0');
INSERT INTO `changecourseapplication` VALUES ('3', '2020-03-15 17:14:23', '1', '2', '3', '2', '2:00-3:30', '9:45-12:05', '3', '2', '15', '申请理由:afdsasfd 放大撒旦解放立刻撒旦解放可垃圾啊收到了 ', '0');
INSERT INTO `changecourseapplication` VALUES ('4', '2020-03-15 17:17:06', '1', '4', '2', '7', '2:00-3:30', '9:45-12:05', '3', '4', '15', '申请理由:afdsafdssadfdsafadsfafdsasdf', '0');

-- ----------------------------
-- Table structure for classroom
-- ----------------------------
DROP TABLE IF EXISTS `classroom`;
CREATE TABLE `classroom` (
  `rnum` int(4) NOT NULL DEFAULT '0',
  `rname` varchar(10) DEFAULT NULL,
  `place` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`rnum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of classroom
-- ----------------------------
INSERT INTO `classroom` VALUES ('1', 'C204', '软件学院');
INSERT INTO `classroom` VALUES ('2', 'C206', '软件学院');
INSERT INTO `classroom` VALUES ('3', 'C302', '软件学院');
INSERT INTO `classroom` VALUES ('4', 'C304', '软件学院');
INSERT INTO `classroom` VALUES ('5', 'C306', '软件学院');
INSERT INTO `classroom` VALUES ('6', 'C402', '软件学院');
INSERT INTO `classroom` VALUES ('7', 'C404', '软件学院');
INSERT INTO `classroom` VALUES ('8', 'C406', '软件学院');
INSERT INTO `classroom` VALUES ('10', 'C503', '软件学院');
INSERT INTO `classroom` VALUES ('11', 'C505', '软件学院');
INSERT INTO `classroom` VALUES ('12', 'A101', '公教楼');
INSERT INTO `classroom` VALUES ('13', 'A208', '公教楼');
INSERT INTO `classroom` VALUES ('14', 'B106', '公教楼');
INSERT INTO `classroom` VALUES ('15', 'B305', '公教楼');
INSERT INTO `classroom` VALUES ('16', 'C209', '公教楼');
INSERT INTO `classroom` VALUES ('17', 'C405', '公教楼');
INSERT INTO `classroom` VALUES ('18', 'D108', '公教楼');
INSERT INTO `classroom` VALUES ('19', 'D302', '公教楼');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `comment_content` varchar(255) DEFAULT NULL,
  `comment_teach_id` int(11) DEFAULT NULL,
  `comment_personal_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `comment_ibfk_1` (`comment_teach_id`),
  KEY `comment_ibfk_2` (`comment_personal_id`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`comment_teach_id`) REFERENCES `teaching` (`teach_id`),
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`comment_personal_id`) REFERENCES `job` (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `company_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) DEFAULT NULL,
  `company_site` varchar(255) DEFAULT NULL,
  `company_logo` varchar(255) DEFAULT NULL,
  `company_instruction` varchar(255) DEFAULT NULL,
  `company_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company
-- ----------------------------

-- ----------------------------
-- Table structure for courses
-- ----------------------------
DROP TABLE IF EXISTS `courses`;
CREATE TABLE `courses` (
  `cnum` int(10) NOT NULL DEFAULT '0',
  `cname` varchar(20) DEFAULT NULL,
  `credit` float(4,0) DEFAULT NULL,
  `cterm` int(4) DEFAULT NULL,
  `college` varchar(20) DEFAULT NULL,
  `type` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`cnum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courses
-- ----------------------------
INSERT INTO `courses` VALUES ('1', '数据结构', '4', '1', '软件学院', '必修');
INSERT INTO `courses` VALUES ('2', '操作系统', '4', '2', '软件学院', '必修');
INSERT INTO `courses` VALUES ('3', '计算机导论', '3', '1', '软件学院', '必修');
INSERT INTO `courses` VALUES ('4', '信息素养', '2', '1', '软件学院', '选修');
INSERT INTO `courses` VALUES ('5', 'c语言', '3', '2', '软件学院', '必修');
INSERT INTO `courses` VALUES ('6', 'c++', '3', '1', '软件学院', '必修');
INSERT INTO `courses` VALUES ('7', 'web开发一', '3', '2', '软件学院', '必修');
INSERT INTO `courses` VALUES ('8', 'web开发二', '3', '1', '软件学院', '必修');
INSERT INTO `courses` VALUES ('9', '数据库', '3', '2', '软件学院', '必修');
INSERT INTO `courses` VALUES ('10', '软件测试', '3', '2', '软件学院', '必修');
INSERT INTO `courses` VALUES ('11', '软件工程', '3', '1', '软件学院', '必修');
INSERT INTO `courses` VALUES ('12', '项目管理', '4', '2', '软件学院', '必修');
INSERT INTO `courses` VALUES ('13', 'linux', '3', '2', '软件学院', '选修');
INSERT INTO `courses` VALUES ('14', 'javaEE', '3', '1', '软件学院', '选修');
INSERT INTO `courses` VALUES ('15', 'JavaSE', '4', '2', '软件学院', '必修');
INSERT INTO `courses` VALUES ('16', 'Java企业级开发', '4', '1', '软件学院', '选修');
INSERT INTO `courses` VALUES ('17', '分布式系统管理', '4', '1', '软件学院', '选修');
INSERT INTO `courses` VALUES ('18', '英语一', '4', '1', '外国语学院', '必修');
INSERT INTO `courses` VALUES ('19', '英语二', '4', '2', '外国语学院', '必修');
INSERT INTO `courses` VALUES ('20', '英语三', '4', '1', '外国语学院', '选修');
INSERT INTO `courses` VALUES ('21', '英语四', '4', '2', '外国语学院', '选修');
INSERT INTO `courses` VALUES ('22', '高等数学一', '4', '1', '数信学院', '必修');
INSERT INTO `courses` VALUES ('23', '离散数学', '3', '1', '数信学院', '必修');
INSERT INTO `courses` VALUES ('24', '概率论', '6', '2', '数信学院', '选修');
INSERT INTO `courses` VALUES ('25', '线性代数', '4', '2', '数信学院', '必修');
INSERT INTO `courses` VALUES ('26', '思想道德修养', '3', '1', '马克思主义学院', '必修');
INSERT INTO `courses` VALUES ('27', '马克思主义理论', '3', '1', '马克思主义学院', '必修');
INSERT INTO `courses` VALUES ('28', '毛泽东思想', '6', '2', '马克思主义学院', '必修');
INSERT INTO `courses` VALUES ('29', '近现代史', '4', '2', '马克思主义学院', '必修');
INSERT INTO `courses` VALUES ('30', '高等数学二', '4', '2', '数信学院', '选修');
INSERT INTO `courses` VALUES ('31', '计算机组成原理', '4', '1', '软件学院', '选修');
INSERT INTO `courses` VALUES ('32', '网络原理', '3', '2', '软件学院', '必修');
INSERT INTO `courses` VALUES ('33', '自动化测试', '4', '1', '软件学院', '选修');
INSERT INTO `courses` VALUES ('34', 'spark框架', '4', '2', '软件学院', '选修');
INSERT INTO `courses` VALUES ('35', '数据挖掘基础', '3', '1', '软件学院', '选修');
INSERT INTO `courses` VALUES ('36', 'python与数据挖掘', '4', '2', '软件学院', '选修');
INSERT INTO `courses` VALUES ('37', '游戏开发', '4', '2', '软件学院', '选修');
INSERT INTO `courses` VALUES ('38', '安卓高级编程', '4', '1', '软件学院', '选修');

-- ----------------------------
-- Table structure for evaluate
-- ----------------------------
DROP TABLE IF EXISTS `evaluate`;
CREATE TABLE `evaluate` (
  `id` int(12) NOT NULL DEFAULT '0',
  `snum` varchar(12) DEFAULT NULL,
  `tnum` varchar(12) DEFAULT NULL,
  `score` float(8,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of evaluate
-- ----------------------------

-- ----------------------------
-- Table structure for grade
-- ----------------------------
DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `snum` varchar(12) NOT NULL DEFAULT '',
  `score` float(10,0) DEFAULT NULL,
  `midtermScore` int(10) DEFAULT NULL,
  `finalScore` int(10) DEFAULT NULL,
  `dailyScore` int(10) DEFAULT NULL,
  `expScore` int(255) DEFAULT NULL,
  `quizScore` int(10) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `point` float(6,1) DEFAULT NULL,
  `tcId` int(11) DEFAULT NULL,
  `cnum` int(11) DEFAULT NULL,
  `tnum` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of grade
-- ----------------------------
INSERT INTO `grade` VALUES ('1', '2016011678', '84', '87', '90', '88', '70', '81', '正常考试', '4.0', '7', '3', '2');
INSERT INTO `grade` VALUES ('2', '2016011678', '87', '71', '95', '93', '90', '74', '正常考试', '4.0', '0', '4', '0');
INSERT INTO `grade` VALUES ('3', '2016011678', '78', '74', '78', '86', '73', '90', '正常考试', '3.7', '0', '5', '0');
INSERT INTO `grade` VALUES ('4', '2016011678', '83', '70', '88', '86', '84', '80', '正常考试', '3.7', '0', '6', '0');
INSERT INTO `grade` VALUES ('5', '2016011678', '83', '76', '94', '74', '70', '93', '正常考试', '3.3', '0', '7', '0');
INSERT INTO `grade` VALUES ('6', '2016011678', '89', '93', '92', '77', '84', '89', '正常考试', '3.7', '0', '18', '0');
INSERT INTO `grade` VALUES ('7', '2016011678', '80', '93', '74', '82', '75', '88', '正常考试', '3.7', '0', '22', '0');
INSERT INTO `grade` VALUES ('8', '2016011678', '84', '76', '95', '76', '76', '84', '正常考试', '3.7', '0', '26', '0');
INSERT INTO `grade` VALUES ('9', '2016011678', '80', '70', '82', '81', '80', '95', '正常考试', '4.0', '0', '29', '0');
INSERT INTO `grade` VALUES ('10', '2016011678', '80', '87', '80', '91', '70', '72', '正常考试', '4.0', '0', '25', '0');
INSERT INTO `grade` VALUES ('11', '2016011678', '83', '70', '92', '77', '74', '94', '正常考试', '4.0', '1', '1', '1');
INSERT INTO `grade` VALUES ('12', '2016011678', '85', '92', '81', '83', '84', '95', '正常考试', '4.0', '0', '2', '0');
INSERT INTO `grade` VALUES ('13', '2016011678', '86', '79', '90', '80', '95', '74', '正常考试', '4.0', '0', '8', '0');
INSERT INTO `grade` VALUES ('14', '2016011678', '84', '85', '82', '83', '85', '92', '正常考试', '4.0', '0', '9', '0');
INSERT INTO `grade` VALUES ('15', '2016011678', '91', '88', '95', '95', '90', '82', '正常考试', '4.0', '0', '10', '0');
INSERT INTO `grade` VALUES ('16', '2016011678', '86', '81', '91', '83', '90', '75', '正常考试', '3.7', '0', '19', '0');
INSERT INTO `grade` VALUES ('17', '2016011678', '83', '81', '84', '95', '83', '75', '正常考试', '3.7', '0', '30', '0');
INSERT INTO `grade` VALUES ('18', '2016011678', '80', '75', '81', '72', '82', '95', '正常考试', '3.7', '0', '25', '0');
INSERT INTO `grade` VALUES ('19', '2016011678', '82', '86', '78', '82', '88', '77', '正常考试', '4.0', '0', '27', '0');
INSERT INTO `grade` VALUES ('20', '2016011678', '79', '70', '74', '86', '91', '89', '正常考试', '3.0', '0', '15', '0');
INSERT INTO `grade` VALUES ('21', '2016011678', '83', '89', '83', '83', '81', '79', '正常考试', '3.7', '0', '11', '0');
INSERT INTO `grade` VALUES ('22', '2016011678', '79', '77', '77', '89', '83', '75', '正常考试', '4.0', '0', '12', '0');
INSERT INTO `grade` VALUES ('23', '2016011678', '84', '89', '76', '86', '92', '86', '正常考试', '4.0', '0', '13', '0');
INSERT INTO `grade` VALUES ('24', '2016011678', '81', '76', '78', '75', '91', '85', '正常考试', '3.3', '0', '16', '0');
INSERT INTO `grade` VALUES ('25', '2016011678', '76', '79', '70', '95', '70', '92', '正常考试', '3.7', '0', '23', '0');
INSERT INTO `grade` VALUES ('26', '2016011678', '81', '80', '79', '90', '84', '76', '正常考试', '2.7', '0', '24', '0');
INSERT INTO `grade` VALUES ('27', '2016011678', '79', '95', '70', '90', '74', '82', '正常考试', '4.0', '0', '28', '0');
INSERT INTO `grade` VALUES ('28', '2016011678', '85', '70', '85', '88', '93', '92', '正常考试', '4.0', '0', '17', '0');
INSERT INTO `grade` VALUES ('29', '2016011678', '78', '75', '80', '86', '79', '70', '正常考试', '4.0', '0', '14', '0');
INSERT INTO `grade` VALUES ('30', '2016011678', '76', '75', '71', '76', '88', '76', '正常考试', '2.7', '0', '32', '0');
INSERT INTO `grade` VALUES ('31', '2017011626', '26', '26', '26', '26', '26', '26', '正常考试', '4.0', '1', '1', '1');
INSERT INTO `grade` VALUES ('32', '2016011679', '79', '79', '79', '79', '79', '79', '正常考试', '4.0', '1', '1', '1');
INSERT INTO `grade` VALUES ('33', '2016011680', '80', '80', '80', '80', '80', '80', '正常考试', '4.0', '1', '1', '1');
INSERT INTO `grade` VALUES ('34', '2016011681', '81', '81', '81', '81', '81', '81', '正常考试', '4.0', '1', '1', '1');
INSERT INTO `grade` VALUES ('35', '2016011682', '82', '82', '82', '82', '82', '82', '正常考试', '4.0', '1', '1', '1');

-- ----------------------------
-- Table structure for job
-- ----------------------------
DROP TABLE IF EXISTS `job`;
CREATE TABLE `job` (
  `job_id` int(11) NOT NULL AUTO_INCREMENT,
  `job_salary` varchar(255) DEFAULT NULL,
  `job_exprience` varchar(255) DEFAULT NULL,
  `job_motto` varchar(255) DEFAULT NULL,
  `job_post` varchar(255) DEFAULT NULL,
  `job_company` int(255) DEFAULT NULL,
  `job_name` varchar(255) DEFAULT NULL,
  `job_sclass` varchar(255) DEFAULT NULL,
  `job_photo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`job_id`),
  KEY `job_company` (`job_company`),
  KEY `job_ibfk_3` (`job_name`),
  CONSTRAINT `job_ibfk_2` FOREIGN KEY (`job_company`) REFERENCES `company` (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of job
-- ----------------------------

-- ----------------------------
-- Table structure for obligatorycoursearranged
-- ----------------------------
DROP TABLE IF EXISTS `obligatorycoursearranged`;
CREATE TABLE `obligatorycoursearranged` (
  `ocaId` int(11) NOT NULL,
  `tcId` int(11) DEFAULT NULL,
  `courseId` int(11) DEFAULT NULL,
  `acId` int(11) DEFAULT NULL,
  PRIMARY KEY (`ocaId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='���޿� ���Ѿ����źõģ��������༶Ϊ��λ����ѡ��';

-- ----------------------------
-- Records of obligatorycoursearranged
-- ----------------------------
INSERT INTO `obligatorycoursearranged` VALUES ('1', '1', '1', '1');
INSERT INTO `obligatorycoursearranged` VALUES ('2', '1', '1', '2');
INSERT INTO `obligatorycoursearranged` VALUES ('3', '2', '1', '3');
INSERT INTO `obligatorycoursearranged` VALUES ('4', '2', '1', '4');
INSERT INTO `obligatorycoursearranged` VALUES ('5', '9', '1', '5');
INSERT INTO `obligatorycoursearranged` VALUES ('6', '9', '1', '6');
INSERT INTO `obligatorycoursearranged` VALUES ('7', '10', '1', '7');
INSERT INTO `obligatorycoursearranged` VALUES ('8', '10', '1', '8');
INSERT INTO `obligatorycoursearranged` VALUES ('9', '5', '3', '1');
INSERT INTO `obligatorycoursearranged` VALUES ('10', '5', '3', '2');
INSERT INTO `obligatorycoursearranged` VALUES ('11', '6', '3', '3');
INSERT INTO `obligatorycoursearranged` VALUES ('12', '6', '3', '4');
INSERT INTO `obligatorycoursearranged` VALUES ('13', '7', '3', '5');
INSERT INTO `obligatorycoursearranged` VALUES ('14', '7', '3', '6');
INSERT INTO `obligatorycoursearranged` VALUES ('15', '8', '3', '7');
INSERT INTO `obligatorycoursearranged` VALUES ('16', '8', '3', '8');

-- ----------------------------
-- Table structure for recruit
-- ----------------------------
DROP TABLE IF EXISTS `recruit`;
CREATE TABLE `recruit` (
  `recruit_id` int(11) NOT NULL AUTO_INCREMENT,
  `recruit_name` varchar(255) DEFAULT NULL,
  `recruit_site` varchar(255) DEFAULT NULL,
  `recruit_salary` decimal(10,2) DEFAULT NULL,
  `recruit_company` int(255) DEFAULT NULL,
  `recruit_time` varchar(255) DEFAULT NULL,
  `recruit_responsibility` varchar(255) DEFAULT NULL,
  `recruit_require` varchar(255) DEFAULT NULL,
  `recruit_classify` varchar(255) DEFAULT NULL,
  `recruit_personal` int(255) DEFAULT NULL,
  `recruit_change` varchar(255) DEFAULT NULL,
  `recruit_demand` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`recruit_id`),
  KEY `recruit_ibfk_1` (`recruit_company`),
  KEY `recruit_ibfk_2` (`recruit_personal`),
  CONSTRAINT `recruit_ibfk_1` FOREIGN KEY (`recruit_company`) REFERENCES `company` (`company_id`),
  CONSTRAINT `recruit_ibfk_2` FOREIGN KEY (`recruit_personal`) REFERENCES `job` (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recruit
-- ----------------------------

-- ----------------------------
-- Table structure for resultproportion
-- ----------------------------
DROP TABLE IF EXISTS `resultproportion`;
CREATE TABLE `resultproportion` (
  `courseId` int(11) NOT NULL,
  `midtermProportion` int(11) NOT NULL,
  `finalProportion` int(11) NOT NULL,
  `dailyProportion` int(11) NOT NULL,
  `expProportion` int(11) NOT NULL,
  `quizProportion` int(11) NOT NULL,
  `rpId` int(11) NOT NULL,
  PRIMARY KEY (`rpId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of resultproportion
-- ----------------------------
INSERT INTO `resultproportion` VALUES ('88', '0', '0', '0', '0', '0', '0');
INSERT INTO `resultproportion` VALUES ('1', '0', '50', '20', '20', '10', '1');
INSERT INTO `resultproportion` VALUES ('3', '20', '40', '20', '10', '10', '2');
INSERT INTO `resultproportion` VALUES ('13', '20', '40', '20', '10', '10', '3');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `snum` varchar(12) NOT NULL DEFAULT '',
  `psw` varchar(12) DEFAULT NULL,
  `sname` varchar(12) DEFAULT NULL,
  `sex` varchar(4) DEFAULT NULL,
  `grade` varchar(12) DEFAULT NULL,
  `classes` varchar(12) DEFAULT NULL,
  `birthday` varchar(12) DEFAULT NULL,
  `political` varchar(10) DEFAULT NULL,
  `admission` varchar(12) DEFAULT NULL,
  `hometown` varchar(12) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `major` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`snum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('2016011678', '123456ch', '张庭', '女', '2016', '7', '1998-04-17', '党员', '2016', '河北省石家庄市', '15562789256', '机器学习');
INSERT INTO `student` VALUES ('2016011679', '123456', '张三', '男', '2016', '7', '1997-01-12', '团员', '2016', '河北省唐山市', '15215485326', '大数据');
INSERT INTO `student` VALUES ('2016011680', '123456', '李四', '男', '2016', '7', '1997-03-10', '团员', '2016', '河北省唐山市', '15224487894', '大数据');
INSERT INTO `student` VALUES ('2016011681', '123456', '王五', '男', '2016', '8', '1997-05-11', '团员', '2016', '河北省唐山市', '1522657895', '大数据');
INSERT INTO `student` VALUES ('2016011682', '123456', '学生2', '男', '2016', '5', '1997-05-11', '团员', '2016', '河北省唐山市', '15631546724', '安卓');
INSERT INTO `student` VALUES ('2016011683', '123456', '学生3', '女', '2016', '5', '1997-05-11', '团员', '2016', '河北省唐山市', '12346158975', '安卓');
INSERT INTO `student` VALUES ('2016011684', '123456', '学生4', '女', '2016', '5', '1997-05-11', '团员', '2016', '河北省唐山市', '2154371825', '安卓');
INSERT INTO `student` VALUES ('2016011685', '123456', '学生5', '女', '2016', '5', '1997-05-11', '团员', '2016', '河北省唐山市', '123578496', '安卓');
INSERT INTO `student` VALUES ('2016011686', '123456', '学生6', '男', '2016', '5', '1997-05-11', '团员', '2016', '河北省唐山市', '23157352132', '安卓');
INSERT INTO `student` VALUES ('2016011687', '123456', '学生7', '女', '2016', '5', '1997-05-11', '团员', '2016', '河北省唐山市', '16546468', '安卓');
INSERT INTO `student` VALUES ('2016011688', '123456', '学生8', '女', '2016', '5', '1997-05-11', '团员', '2016', '河北省唐山市', '231564848', '安卓');
INSERT INTO `student` VALUES ('2016011689', '123456', '学生9', '男', '2016', '5', '1997-05-11', '团员', '2016', '河北省唐山市', '132464894', '安卓');
INSERT INTO `student` VALUES ('2016011690', '123456', '学生10', '男', '2016', '1', '1999-05-26', '预备党员', '2017', '山东省青岛市', '15102565291', '测试');
INSERT INTO `student` VALUES ('2016011691', '123456', '学生11', '男', '2017', '3', '1999-05-26', '预备党员', '2017', '山东省青岛市', '13165448464', '测试');
INSERT INTO `student` VALUES ('2016011692', '123456', '学生12', '男', '2017', '3', '1999-05-26', '预备党员', '2017', '山东省青岛市', '1321315564', '测试');
INSERT INTO `student` VALUES ('2016011693', '123456', '学生13', '男', '2017', '3', '1999-05-26', '预备党员', '2017', '山东省青岛市', '321564512', '测试');
INSERT INTO `student` VALUES ('2016011694', '123456', '学生14', '男', '2017', '3', '1999-05-26', '预备党员', '2017', '山东省青岛市', '132145641', '测试');
INSERT INTO `student` VALUES ('2016011695', '123456', '学生15', '男', '2017', '7', '1999-05-26', '预备党员', '2017', '山东省青岛市', '15102565298', '测试');
INSERT INTO `student` VALUES ('2016011696', '123456', '学生16', '男', '2017', '7', '1999-05-26', '预备党员', '2017', '山东省青岛市', '15102565298', '测试');
INSERT INTO `student` VALUES ('2016011697', '123456', '学生17', '男', '2017', '7', '1999-05-26', '预备党员', '2017', '山东省青岛市', '15102565298', '测试');
INSERT INTO `student` VALUES ('2016011698', '123456', '学生18', '男', '2017', '7', '1999-05-26', '预备党员', '2017', '山东省青岛市', '15102565298', '测试');
INSERT INTO `student` VALUES ('2016011699', '123456', '学生19', '男', '2017', '7', '1999-05-26', '预备党员', '2017', '山东省青岛市', '15102565298', '测试');
INSERT INTO `student` VALUES ('2016011700', '123456', '学生20', '男', '2017', '7', '1999-05-26', '预备党员', '2017', '山东省青岛市', '15102565298', '测试');
INSERT INTO `student` VALUES ('2016011701', '123456', '学生21', '男', '2017', '7', '1999-05-26', '预备党员', '2017', '山东省青岛市', '15102565298', '测试');
INSERT INTO `student` VALUES ('2016011702', '123456', '学生22', '男', '2017', '7', '1999-05-26', '预备党员', '2017', '山东省青岛市', '15102565298', '测试');
INSERT INTO `student` VALUES ('2016011703', '123456', '学生23', '男', '2017', '7', '1999-05-26', '预备党员', '2017', '山东省青岛市', '15102565298', '测试');
INSERT INTO `student` VALUES ('2016011704', '123456', '学生24', '男', '2017', '7', '1999-05-26', '预备党员', '2017', '山东省青岛市', '15102565298', '测试');
INSERT INTO `student` VALUES ('2016011705', '123456', '学生25', '男', '2017', '7', '1999-05-26', '预备党员', '2017', '山东省青岛市', '15102565298', '测试');
INSERT INTO `student` VALUES ('2016011706', '123456', '学生26', '男', '2017', '7', '1999-05-26', '预备党员', '2017', '山东省青岛市', '15102565298', '测试');
INSERT INTO `student` VALUES ('2016011707', '123456', '学生27', '男', '2017', '7', '1999-05-26', '预备党员', '2017', '山东省青岛市', '15102565298', '测试');
INSERT INTO `student` VALUES ('2016011708', '123456', '学生28', '男', '2017', '7', '1999-05-26', '预备党员', '2017', '山东省青岛市', '15102565298', '测试');
INSERT INTO `student` VALUES ('2016011709', '123456', '学生29', '男', '2017', '7', '1999-05-26', '预备党员', '2017', '山东省青岛市', '15102565298', '测试');
INSERT INTO `student` VALUES ('2017011626', '123456', '高露璐', '男', '2017', '7', '1999-05-26', '预备党员', '2017', '山东省青岛市', '15102565298', '测试');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `tId` varchar(50) NOT NULL,
  `tname` varchar(50) DEFAULT NULL,
  `gender` varchar(30) DEFAULT NULL,
  `tnation` varchar(30) DEFAULT NULL,
  `tbirthday` varchar(50) DEFAULT NULL,
  `tpolitical` varchar(50) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `qualification` varchar(50) DEFAULT NULL,
  `degree` varchar(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `fschool` varchar(100) DEFAULT NULL,
  `tmajor` varchar(100) DEFAULT NULL,
  `teachingInstitute` varchar(50) DEFAULT NULL,
  `psw` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`tId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', '张三', '男', '汉', '1980-03-01g', '团员', '13888888888', '123456789@qq.com', '本科', '学士', '高级工程师', '河北师范大学', '计算机科学与技术', '软件学院', '11111');
INSERT INTO `teacher` VALUES ('2', '李四', '男', '汉', '1983-04-14', '党员', '15423685468', '456512852@qq.com', '硕士研究生', '硕士', '副教授', '河北师范大学', '软件工程', '软件学院', '12345');
INSERT INTO `teacher` VALUES ('3', '王五', '女', '汉', '1990-01-02', '党员', '15648792549', '1258634855@qq.com', '博士研究生', '博士', '教授', '河北师范大学', '计算机科学与技术', '软件学院', '12345');

-- ----------------------------
-- Table structure for teachertimetable
-- ----------------------------
DROP TABLE IF EXISTS `teachertimetable`;
CREATE TABLE `teachertimetable` (
  `ttId` int(11) NOT NULL,
  `tcId` int(11) DEFAULT NULL,
  `crId` int(11) DEFAULT NULL,
  `ttWeek` int(30) DEFAULT NULL,
  `ttTime` varchar(30) DEFAULT NULL,
  `ttName` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ttId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��ʦ�α�';

-- ----------------------------
-- Records of teachertimetable
-- ----------------------------
INSERT INTO `teachertimetable` VALUES ('1', '1', '2', '1', '8:00-9:30', '数据结构-1');
INSERT INTO `teachertimetable` VALUES ('2', '1', '2', '3', '2:00-3:30', '数据结构-1-a');
INSERT INTO `teachertimetable` VALUES ('3', '2', '3', '4', '8:00-9:30', '数据结构-2');
INSERT INTO `teachertimetable` VALUES ('4', '2', '4', '2', '2:00-3:30', '数据结构-2-a');
INSERT INTO `teachertimetable` VALUES ('5', '9', '8', '5', '8:00-9:30', '数据结构-3');
INSERT INTO `teachertimetable` VALUES ('6', '9', '8', '1', '2:00-3:30', '数据结构-3-a');
INSERT INTO `teachertimetable` VALUES ('7', '10', '11', '3', '8:00-9:30', '数据结构-4');
INSERT INTO `teachertimetable` VALUES ('8', '10', '11', '3', '2:00-3:30', '数据结构-4-a');
INSERT INTO `teachertimetable` VALUES ('9', '5', '1', '5', '8:00-9:30', '计算机导论-1');
INSERT INTO `teachertimetable` VALUES ('10', '5', '3', '3', '2:00-3:30', '计算机导论-1-a');
INSERT INTO `teachertimetable` VALUES ('11', '6', '4', '2', '8:00-9:30', '计算机导论-2');
INSERT INTO `teachertimetable` VALUES ('12', '6', '1', '4', '2:00-3:30', '计算机导论-2-a');
INSERT INTO `teachertimetable` VALUES ('13', '7', '6', '2', '8:00-9:30', '计算机导论-3');
INSERT INTO `teachertimetable` VALUES ('14', '7', '6', '5', '8:00-9:30', '计算机导论-3-a');
INSERT INTO `teachertimetable` VALUES ('15', '8', '7', '2', '2:00-3:30', '计算机导论-4');
INSERT INTO `teachertimetable` VALUES ('16', '8', '7', '1', '2:00-3:30', '计算机导论-4-a');
INSERT INTO `teachertimetable` VALUES ('17', '3', '9', '2', '3:45-6:05', 'linux-1');
INSERT INTO `teachertimetable` VALUES ('18', '4', '10', '4', '3:45-6:05', 'linux-2');

-- ----------------------------
-- Table structure for teaching
-- ----------------------------
DROP TABLE IF EXISTS `teaching`;
CREATE TABLE `teaching` (
  `teach_id` int(11) NOT NULL AUTO_INCREMENT,
  `teach_name` varchar(255) DEFAULT NULL,
  `teach_video` varchar(255) DEFAULT NULL,
  `teach_summary` varchar(255) DEFAULT NULL,
  `teach_lecturer` int(255) DEFAULT NULL,
  `teach_watcher` int(255) DEFAULT NULL,
  PRIMARY KEY (`teach_id`),
  KEY `teaching_ibfk_1` (`teach_lecturer`),
  CONSTRAINT `teaching_ibfk_1` FOREIGN KEY (`teach_lecturer`) REFERENCES `undergraduate` (`undergraduate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teaching
-- ----------------------------

-- ----------------------------
-- Table structure for teachingclass
-- ----------------------------
DROP TABLE IF EXISTS `teachingclass`;
CREATE TABLE `teachingclass` (
  `tcId` int(11) NOT NULL,
  `tcName` varchar(30) DEFAULT NULL,
  `courseId` int(11) DEFAULT NULL,
  `tcpNum` int(30) DEFAULT NULL,
  `tcComponent` varchar(30) DEFAULT NULL,
  `tId` varchar(50) DEFAULT NULL,
  `tsId` int(11) DEFAULT NULL,
  `inputted` int(11) DEFAULT NULL,
  `containRetake` int(11) DEFAULT NULL,
  `tcCapacity` int(11) DEFAULT NULL,
  PRIMARY KEY (`tcId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��ѧ������ǰ���źõġ�\r\n��ѧ����ɣ������ѡ�޿ξ��Ƿ������༶������Ǳ��޿ξʹӱ��޿�ѡ�α��������������\r\n';

-- ----------------------------
-- Records of teachingclass
-- ----------------------------
INSERT INTO `teachingclass` VALUES ('1', '数据结构-1', '1', '98', '1班,2班', '1', '1', '0', '1', '150');
INSERT INTO `teachingclass` VALUES ('2', '数据结构-2', '1', '98', '3班,4班', '1', '1', '1', '0', '150');
INSERT INTO `teachingclass` VALUES ('3', 'linux-1', '13', '150', '非行政班', '3', '3', '0', '0', '150');
INSERT INTO `teachingclass` VALUES ('4', 'linux-2', '13', '150', '非行政班', '3', '3', '0', '0', '150');
INSERT INTO `teachingclass` VALUES ('5', '计算机导论-1', '3', '98', '1班,2班', '1', '2', '1', '1', '150');
INSERT INTO `teachingclass` VALUES ('6', '计算机导论-2', '3', '98', '3班,4班', '1', '2', '0', '0', '150');
INSERT INTO `teachingclass` VALUES ('7', '计算机导论-3', '3', '97', '5班,6班', '2', '2', '0', '0', '150');
INSERT INTO `teachingclass` VALUES ('8', '计算机导论-4', '3', '97', '7班,8班', '2', '2', '1', '0', '150');
INSERT INTO `teachingclass` VALUES ('9', '数据结构-3', '1', '97', '5班,6班', '2', '1', '1', '0', '150');
INSERT INTO `teachingclass` VALUES ('10', '数据结构-4', '1', '97', '7班,8班', '3', '1', '1', '0', '150');

-- ----------------------------
-- Table structure for teachingschedule
-- ----------------------------
DROP TABLE IF EXISTS `teachingschedule`;
CREATE TABLE `teachingschedule` (
  `tsId` int(11) NOT NULL,
  `courseId` int(11) DEFAULT NULL,
  `tYear` varchar(50) DEFAULT NULL,
  `duration` int(40) DEFAULT NULL,
  `totalHours` int(11) DEFAULT NULL,
  `totalTcNum` int(11) DEFAULT NULL,
  `groupLeader` int(11) DEFAULT NULL,
  PRIMARY KEY (`tsId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��һ�ſγ�';

-- ----------------------------
-- Records of teachingschedule
-- ----------------------------
INSERT INTO `teachingschedule` VALUES ('1', '1', '2016-2017', '0', '48', '4', '1');
INSERT INTO `teachingschedule` VALUES ('2', '3', '2016-2017', '0', '51', '4', '2');
INSERT INTO `teachingschedule` VALUES ('3', '13', '2016-2017', '0', '51', '2', '3');

-- ----------------------------
-- Table structure for timetable
-- ----------------------------
DROP TABLE IF EXISTS `timetable`;
CREATE TABLE `timetable` (
  `id` int(4) NOT NULL DEFAULT '0',
  `snum` varchar(12) NOT NULL DEFAULT '',
  `cnum` int(4) NOT NULL DEFAULT '0',
  `tnum` varchar(12) NOT NULL DEFAULT '',
  `year` varchar(12) DEFAULT NULL,
  `week` int(4) DEFAULT NULL,
  `day` int(4) NOT NULL DEFAULT '0',
  `time` varchar(12) NOT NULL DEFAULT '',
  `rnum` int(4) DEFAULT NULL,
  `tcId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of timetable
-- ----------------------------
INSERT INTO `timetable` VALUES ('1', '2016011678', '3', '', '2016-2017', '16', '1', '8:00-9:30', '1', '7');
INSERT INTO `timetable` VALUES ('2', '2016011678', '4', '', '2016-2017', '17', '2', '9:45-12:05', '2', null);
INSERT INTO `timetable` VALUES ('3', '2016011678', '5', '', '2016-2017', '16', '1', '2:00-3:30', '3', null);
INSERT INTO `timetable` VALUES ('4', '2016011678', '6', '', '2016-2017', '17', '3', '2:00-4:20', '5', null);
INSERT INTO `timetable` VALUES ('5', '2016011678', '7', '', '2016-2017', '16', '4', '9:45-11:15', '6', null);
INSERT INTO `timetable` VALUES ('6', '2016011678', '18', '', '2016-2017', '17', '5', '3:45-:5:15', '12', null);
INSERT INTO `timetable` VALUES ('7', '2016011678', '22', '', '2016-2017', '12', '1', '3:45-6:05', '12', null);
INSERT INTO `timetable` VALUES ('8', '2016011678', '26', '', '2016-2017', '12', '2', '8:00-9:30', '15', null);
INSERT INTO `timetable` VALUES ('9', '2016011678', '29', '', '2016-2017', '13', '4', '2:00-4:20', '15', null);
INSERT INTO `timetable` VALUES ('10', '2016011678', '25', '', '2016-2017', '16', '3', '9:45-11:15', '13', null);
INSERT INTO `timetable` VALUES ('11', '2016011678', '1', '', '2016-2017', '17', '1', '8:00-9:30', '2', '1');
INSERT INTO `timetable` VALUES ('12', '2016011678', '2', '', '2017-2018', '15', '5', '9:45-11:15', '5', null);
INSERT INTO `timetable` VALUES ('13', '2016011678', '8', '', '2017-2018', '17', '4', '3:45-:5:15', '8', null);
INSERT INTO `timetable` VALUES ('14', '2016011678', '9', '', '2017-2018', '12', '3', '8:00-9:30', '9', null);
INSERT INTO `timetable` VALUES ('15', '2016011678', '10', '', '2017-2018', '13', '3', '2:00-3:30', '10', null);
INSERT INTO `timetable` VALUES ('16', '2016011678', '19', '', '2017-2018', '12', '4', '9:45-11:15', '19', null);
INSERT INTO `timetable` VALUES ('17', '2016011678', '30', '', '2017-2018', '13', '5', '8:00-9:30', '16', null);
INSERT INTO `timetable` VALUES ('18', '2016011678', '25', '', '2017-2018', '12', '1', '2:00-3:30', '11', null);
INSERT INTO `timetable` VALUES ('19', '2016011678', '27', '', '2017-2018', '11', '2', '3:45-6:05', '16', null);
INSERT INTO `timetable` VALUES ('20', '2016011678', '15', '', '2017-2018', '15', '2', '2:00-3:30', '1', null);
INSERT INTO `timetable` VALUES ('21', '2016011678', '11', '', '2018-2019', '17', '1', '2:00-3:30', '5', null);
INSERT INTO `timetable` VALUES ('22', '2016011678', '12', '', '2018-2019', '16', '2', '8:00-9:30', '8', null);
INSERT INTO `timetable` VALUES ('23', '2016011678', '13', '', '2018-2019', '17', '2', '3:45-6:05', '9', null);
INSERT INTO `timetable` VALUES ('24', '2016011678', '16', '', '2018-2019', '18', '3', '9:45-11:15', '7', null);
INSERT INTO `timetable` VALUES ('25', '2016011678', '23', '', '2018-2019', '17', '1', '9:45-11:15', '17', null);
INSERT INTO `timetable` VALUES ('26', '2016011678', '24', '', '2018-2019', '13', '5', '8:00-9:30', '18', null);
INSERT INTO `timetable` VALUES ('27', '2016011678', '28', '', '2018-2019', '12', '4', '9:45-11:15', '13', null);
INSERT INTO `timetable` VALUES ('28', '2016011678', '17', '', '2018-2019', '15', '3', '2:00-3:30', '6', null);
INSERT INTO `timetable` VALUES ('29', '2016011678', '14', '', '2018-2019', '16', '2', '2:00-3:30', '11', null);
INSERT INTO `timetable` VALUES ('30', '2016011678', '32', '', '2018-2019', '16', '1', '3:45-6:05', '2', null);
INSERT INTO `timetable` VALUES ('31', '2016011678', '1', '', '2016-2017', '17', '3', '8:00-9:30', '2', '1');
INSERT INTO `timetable` VALUES ('32', '2016011678', '3', '', '2016-2017', '16', '5', '8:00-9:30', '6', '7');
INSERT INTO `timetable` VALUES ('33', '2017011626', '1', '', '2016-2017', '17', '1', '8:00-9:30', '2', '1');
INSERT INTO `timetable` VALUES ('34', '2016011679', '1', '', '2016-2017', '17', '1', '8:00-9:30', '2', '1');
INSERT INTO `timetable` VALUES ('35', '2016011680', '1', '', '2016-2017', '17', '1', '8:00-9:30', '2', '1');
INSERT INTO `timetable` VALUES ('36', '2016011681', '1', '', '2016-2017', '17', '1', '8:00-9:30', '2', '1');
INSERT INTO `timetable` VALUES ('37', '2016011682', '1', '', '2016-2017', '17', '1', '8:00-9:30', '2', '1');
INSERT INTO `timetable` VALUES ('38', '2016011683', '1', '', '2016-2017', '17', '1', '8:00-9:30', '2', '1');
INSERT INTO `timetable` VALUES ('39', '2016011684', '1', '', '2016-2017', '17', '1', '8:00-9:30', '2', '1');
INSERT INTO `timetable` VALUES ('40', '2016011685', '1', '', '2016-2017', '17', '1', '8:00-9:30', '2', '1');
INSERT INTO `timetable` VALUES ('41', '2016011686', '1', '', '2016-2017', '17', '1', '8:00-9:30', '2', '1');
INSERT INTO `timetable` VALUES ('42', '2016011687', '1', '', '2016-2017', '17', '1', '8:00-9:30', '2', '1');
INSERT INTO `timetable` VALUES ('43', '2016011688', '1', '', '2016-2017', '17', '1', '8:00-9:30', '2', '1');
INSERT INTO `timetable` VALUES ('44', '2016011689', '1', '', '2016-2017', '17', '1', '8:00-9:30', '2', '1');
INSERT INTO `timetable` VALUES ('45', '2016011690', '1', '', '2016-2017', '17', '1', '8:00-9:30', '2', '1');
INSERT INTO `timetable` VALUES ('46', '2016011691', '1', '', '2016-2017', '17', '1', '8:00-9:30', '2', '1');
INSERT INTO `timetable` VALUES ('47', '2016011692', '1', '', '2016-2017', '17', '1', '8:00-9:30', '2', '1');
INSERT INTO `timetable` VALUES ('48', '2016011693', '1', '', '2016-2017', '17', '1', '8:00-9:30', '2', '1');
INSERT INTO `timetable` VALUES ('49', '2016011694', '1', '', '2016-2017', '17', '1', '8:00-9:30', '2', '1');
INSERT INTO `timetable` VALUES ('50', '2017011626', '3', '', '2016-2017', '16', '1', '8:00-9:30', '1', '7');
INSERT INTO `timetable` VALUES ('51', '2017011626', '3', '', '2016-2017', '16', '5', '8:00-9:30', '6', '7');
INSERT INTO `timetable` VALUES ('52', '2016011695', '1', '', '2016-2017', '17', '1', '8:00-9:30', '2', '1');
INSERT INTO `timetable` VALUES ('53', '2016011696', '1', '', '2016-2017', '17', '1', '8:00-9:30', '2', '1');
INSERT INTO `timetable` VALUES ('54', '2016011697', '1', '', '2016-2017', '17', '1', '8:00-9:30', '2', '1');
INSERT INTO `timetable` VALUES ('55', '2016011698', '1', '', '2016-2017', '17', '1', '8:00-9:30', '2', '1');
INSERT INTO `timetable` VALUES ('56', '2016011699', '1', '', '2016-2017', '17', '1', '8:00-9:30', '2', '1');
INSERT INTO `timetable` VALUES ('57', '2016011700', '1', '', '2016-2017', '17', '1', '8:00-9:30', '2', '1');
INSERT INTO `timetable` VALUES ('58', '2016011701', '1', '', '2016-2017', '17', '1', '8:00-9:30', '2', '1');
INSERT INTO `timetable` VALUES ('59', '2016011702', '1', '', '2016-2017', '17', '1', '8:00-9:30', '2', '1');
INSERT INTO `timetable` VALUES ('60', '2016011703', '1', '', '2016-2017', '17', '1', '8:00-9:30', '2', '1');
INSERT INTO `timetable` VALUES ('61', '2016011704', '1', '', '2016-2017', '17', '1', '8:00-9:30', '2', '1');
INSERT INTO `timetable` VALUES ('62', '2016011705', '1', '', '2016-2017', '17', '1', '8:00-9:30', '2', '1');
INSERT INTO `timetable` VALUES ('63', '2016011706', '1', '', '2016-2017', '17', '1', '8:00-9:30', '2', '1');
INSERT INTO `timetable` VALUES ('64', '2016011707', '1', '', '2016-2017', '17', '1', '8:00-9:30', '2', '1');
INSERT INTO `timetable` VALUES ('65', '2016011708', '1', '', '2016-2017', '17', '1', '8:00-9:30', '2', '1');
INSERT INTO `timetable` VALUES ('66', '2016011709', '1', '', '2016-2017', '17', '0', '8:00-9:30', '2', '1');

-- ----------------------------
-- Table structure for undergraduate
-- ----------------------------
DROP TABLE IF EXISTS `undergraduate`;
CREATE TABLE `undergraduate` (
  `undergraduate_id` int(11) NOT NULL AUTO_INCREMENT,
  `undergraduate_shool` varchar(255) DEFAULT NULL,
  `undergraduate_name` varchar(255) DEFAULT NULL,
  `undergraduate_sclass` varchar(255) DEFAULT NULL,
  `undergraduate_photo` varchar(255) DEFAULT NULL,
  `psw` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`undergraduate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of undergraduate
-- ----------------------------
