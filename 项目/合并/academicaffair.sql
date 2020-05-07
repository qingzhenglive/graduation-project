/*
Navicat MySQL Data Transfer

Source Server         : zch
Source Server Version : 50506
Source Host           : localhost:3306
Source Database       : academicaffair

Target Server Type    : MYSQL
Target Server Version : 50506
File Encoding         : 65001

Date: 2020-04-03 16:41:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `administrativeclass`
-- ----------------------------
DROP TABLE IF EXISTS `administrativeclass`;
CREATE TABLE `administrativeclass` (
  `adId` int(11) NOT NULL,
  `adGrade` varchar(20) DEFAULT NULL,
  `adHeadMaster` varchar(20) DEFAULT NULL,
  `adTotalNum` int(11) DEFAULT NULL,
  `adClass` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`adId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
-- Table structure for `changecourseapplication`
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
INSERT INTO `changecourseapplication` VALUES ('3', '2020-03-15 17:14:23', '1', '2', '3', '2', '14:00-15:30', '9:45-12:05', '3', '2', '15', '申请理由:afdsasfd 放大撒旦解放立刻撒旦解放可垃圾啊收到了 ', '0');
INSERT INTO `changecourseapplication` VALUES ('4', '2020-03-15 17:17:06', '1', '4', '2', '7', '14:00-15:30', '9:45-12:05', '3', '4', '15', '申请理由:afdsafdssadfdsafadsfafdsasdf', '0');

-- ----------------------------
-- Table structure for `classroom`
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
INSERT INTO `classroom` VALUES ('1', 'C204', '软件学院2楼');
INSERT INTO `classroom` VALUES ('2', 'C206', '软件学院2楼');
INSERT INTO `classroom` VALUES ('3', 'C302', '软件学院3楼');
INSERT INTO `classroom` VALUES ('4', 'C304', '软件学院3楼');
INSERT INTO `classroom` VALUES ('5', 'C306', '软件学院3楼');
INSERT INTO `classroom` VALUES ('6', 'C402', '软件学院4楼');
INSERT INTO `classroom` VALUES ('7', 'C404', '软件学院4楼');
INSERT INTO `classroom` VALUES ('8', 'C406', '软件学院4楼');
INSERT INTO `classroom` VALUES ('9', 'C501', '软件学院5楼');
INSERT INTO `classroom` VALUES ('10', 'C503', '软件学院5楼');
INSERT INTO `classroom` VALUES ('11', 'C505', '软件学院5楼');
INSERT INTO `classroom` VALUES ('12', '公教楼A101', '公教楼A座1楼');
INSERT INTO `classroom` VALUES ('13', '公教楼A208', '公教楼A座2楼');
INSERT INTO `classroom` VALUES ('14', '公教楼B106', '公教楼B座1楼');
INSERT INTO `classroom` VALUES ('15', '公教楼B305', '公教楼B座3楼');
INSERT INTO `classroom` VALUES ('16', '公教楼C209', '公教楼C座2楼');
INSERT INTO `classroom` VALUES ('17', '公教楼C405', '公教楼C座4楼');
INSERT INTO `classroom` VALUES ('18', '公教楼D108', '公教楼D座1楼');
INSERT INTO `classroom` VALUES ('19', '公教楼D302', '公教楼D座3楼');

-- ----------------------------
-- Table structure for `comment`
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_content` varchar(255) DEFAULT NULL,
  `comment_teach_id` int(11) DEFAULT NULL,
  `comment_student_id` varchar(11) DEFAULT NULL,
  `comment_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `comment_ibfk_1` (`comment_teach_id`),
  KEY `comment_ibfk_2` (`comment_student_id`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`comment_teach_id`) REFERENCES `teaching` (`teach_id`),
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`comment_student_id`) REFERENCES `student` (`snum`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '如果让我用C++来编写，我可以保证3个小时内编写完毕，也许在一些小的方面，比如输入数字的合法性上存在问题，但毕竟程序是完整且可执行的。但换成java……那就失败一多半了，因为最关键的问题我还没学，那就是程序对文件的操作。', '1', '2016011678', '2020-10-25');
INSERT INTO `comment` VALUES ('2', '第一节java课程我觉得收获还是蛮大的，虽然并没有学到java的语句知识，但至少有了一种意识，而我认为，意识要比单纯的知识要有用的多。当然，说到最后，这个程序是一定要完成的，当然我现在还束手我策，因为还没搞定对文件操作，但1个月之内，我一定会学会对文件操作，并将这个程序编写完成的。', '1', '2016011678', '2020-10-25');
INSERT INTO `comment` VALUES ('3', '第一节java课程我觉得收获还是蛮大的，虽然并没有学到java的语句知识，但至少有了一种意识，而我认为，意识要比单纯的知识要有用的多。当然，说到最后，这个程序是一定要完成的，当然我现在还束手我策，因为还没搞定对文件操作，但1个月之内，我一定会学会对文件操作，并将这个程序编写完成的。', '1', '2016011678', '2020-10-25');
INSERT INTO `comment` VALUES ('4', '撒地方第三个', '1', '2017011626', '2020-10-25');
INSERT INTO `comment` VALUES ('5', '撒地方第三个', '1', '2016011678', '2020-10-25');
INSERT INTO `comment` VALUES ('6', '撒地方第三个', '1', '2016011678', '2020-10-25');
INSERT INTO `comment` VALUES ('7', '撒地方第三个', '1', null, '2020-10-25');
INSERT INTO `comment` VALUES ('8', '撒地方第三个', '1', null, null);
INSERT INTO `comment` VALUES ('9', '啊傻瓜s\'d\'g', '1', null, null);
INSERT INTO `comment` VALUES ('10', '啊傻瓜s\'d\'g', '1', null, null);
INSERT INTO `comment` VALUES ('11', '的疯狂的 ', '1', null, null);
INSERT INTO `comment` VALUES ('12', '好好计划紧急集合', '1', null, null);
INSERT INTO `comment` VALUES ('13', '就看看', '1', null, null);
INSERT INTO `comment` VALUES ('14', '', '1', null, null);

-- ----------------------------
-- Table structure for `company`
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `company_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) DEFAULT NULL,
  `company_site` varchar(255) DEFAULT NULL,
  `company_logo` varchar(255) DEFAULT NULL,
  `company_instruction` varchar(255) DEFAULT NULL,
  `company_type` varchar(255) DEFAULT NULL,
  `company_market` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES ('1', '猿辅导', '北京', 'image/yuanfudao.png', '截至2020年1月，猿辅导在线教育全国累计用户数突破4亿。 公司旗下拥有猿辅导、小猿搜题、猿题库、小猿口算、斑马AI课等多款在线教育产品。猿辅导提供中小学全学科的课程，全国任何地区的中小学生，都可在家上名师直播课 。\r\n2019年6月11日，猿辅导入选“2019福布斯中国最具创新力企业榜”。 2019年12月16日，猿辅导、小猿搜题、猿题库、小猿口算、斑马英语列入第一批教育App备案名单。', '教育', 'D伦');
INSERT INTO `company` VALUES ('2', '百度', '北京', 'image/intel.png', null, '搜索', 'B伦');
INSERT INTO `company` VALUES ('3', '趣头条', '上海', 'image/qutoutiao.png', '', '新闻', 'B伦');
INSERT INTO `company` VALUES ('4', '跳动字节', '山西', 'image/zijie.png', '', '新闻', 'B伦');
INSERT INTO `company` VALUES ('5', '畅游', '河南', 'image/changyou', '', '游戏', 'B伦');
INSERT INTO `company` VALUES ('6', '之江', '深圳', 'image/zhijiang.png', '', '搜索', 'B伦');
INSERT INTO `company` VALUES ('7', '搜狗', '广州', 'image/intel.png', '', '搜索', 'B伦');
INSERT INTO `company` VALUES ('8', '爱奇艺', '上海', 'image/intel.png', '', '视频', 'B伦');

-- ----------------------------
-- Table structure for `courses`
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
INSERT INTO `courses` VALUES ('1', '数据结构', '4', '2', '软件学院', '必修');
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
-- Table structure for `evaluate`
-- ----------------------------
DROP TABLE IF EXISTS `evaluate`;
CREATE TABLE `evaluate` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `snum` varchar(12) DEFAULT NULL,
  `tnum` varchar(12) DEFAULT NULL,
  `score` float(8,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of evaluate
-- ----------------------------
INSERT INTO `evaluate` VALUES ('10', '2016011678', '1', '79');
INSERT INTO `evaluate` VALUES ('11', '2016011678', '3', '79');
INSERT INTO `evaluate` VALUES ('12', '2016011678', '1', '79');
INSERT INTO `evaluate` VALUES ('13', '2016011678', '3', '79');
INSERT INTO `evaluate` VALUES ('14', '2016011678', '1', '79');
INSERT INTO `evaluate` VALUES ('15', '2016011678', '3', '79');
INSERT INTO `evaluate` VALUES ('16', '2016011678', '1', '79');
INSERT INTO `evaluate` VALUES ('17', '2016011678', '3', '79');
INSERT INTO `evaluate` VALUES ('18', '2016011678', '1', '79');
INSERT INTO `evaluate` VALUES ('19', '2016011678', '3', '79');
INSERT INTO `evaluate` VALUES ('20', '2016011678', '1', '79');
INSERT INTO `evaluate` VALUES ('21', '2016011678', '3', '79');
INSERT INTO `evaluate` VALUES ('22', '2016011678', '1', '79');
INSERT INTO `evaluate` VALUES ('23', '2016011678', '3', '79');
INSERT INTO `evaluate` VALUES ('24', '2016011678', '1', '79');
INSERT INTO `evaluate` VALUES ('25', '2016011678', '3', '79');

-- ----------------------------
-- Table structure for `grade`
-- ----------------------------
DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade` (
  `id` int(4) NOT NULL DEFAULT '0',
  `snum` varchar(12) NOT NULL DEFAULT '',
  `score` float(10,0) DEFAULT NULL,
  `midtermScore` int(10) DEFAULT NULL,
  `finalScore` int(10) DEFAULT NULL,
  `dailyScore` int(10) DEFAULT NULL,
  `expScore` int(10) DEFAULT NULL,
  `quizScore` int(10) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `point` float(6,1) DEFAULT NULL,
  `tcId` int(11) DEFAULT NULL,
  `cnum` int(4) NOT NULL DEFAULT '0',
  `tnum` varchar(12) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of grade
-- ----------------------------
INSERT INTO `grade` VALUES ('1', '2016011678', '90', '87', '90', '88', '70', '81', '合格', '4.0', '8', '3', '2');
INSERT INTO `grade` VALUES ('2', '2016011678', '83', '70', '92', '77', '74', '94', '不合格', '3.3', '10', '1', '1');
INSERT INTO `grade` VALUES ('3', '2016011678', '84', '89', '76', '86', '92', '86', '合格', '3.3', '4', '13', '3');

-- ----------------------------
-- Table structure for `job`
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
  `psw` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`job_id`),
  KEY `job_company` (`job_company`),
  KEY `job_ibfk_3` (`job_name`),
  CONSTRAINT `job_ibfk_2` FOREIGN KEY (`job_company`) REFERENCES `company` (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of job
-- ----------------------------
INSERT INTO `job` VALUES ('1', '3000', 'all开发卡洛斯了开封府s', null, '开发', '1', '王卫东', '2015', 'image/c2.jpg', '123456');
INSERT INTO `job` VALUES ('2', '5000', '和大开杀戒', null, '算法工程师', '4', '李金山', '2015', 'image/c2.jpg', '123456');
INSERT INTO `job` VALUES ('3', '5600', '和大开杀戒', '', 'Android工程师', '2', '刘克军', '2018', 'image/c2.jpg', '123456');
INSERT INTO `job` VALUES ('4', '3456', '和大开杀戒', '', '测试工程师', '4', '黄级', '2018', 'image/c2.jpg', '123456');
INSERT INTO `job` VALUES ('5', '5000', '和大开杀戒', '', '前端工程师', '2', '蒋花花', '2018', 'image/c2.jpg', '123456');
INSERT INTO `job` VALUES ('6', '5667', null, null, '数据工程师', '2', '刘欢', '2019', 'image/c2.jpg', '123456');
INSERT INTO `job` VALUES ('7', '6000', null, null, '开发', '2', '张琴', '2019', 'image/c2.jpg', '123456');
INSERT INTO `job` VALUES ('8', '5300', null, null, '数据工程师', '3', '黄凯', '2016', 'image/c2.jpg', '123456');
INSERT INTO `job` VALUES ('9', '3970', null, null, '测试工程师', '5', '黄考', '2016', 'image/c2.jpg', '123456');
INSERT INTO `job` VALUES ('10', '7000', null, null, '前端工程师', '3', '牛喆', '2017', 'image/c2.jpg', '123456');
INSERT INTO `job` VALUES ('11', '7000', '', '', '前端工程师', '2', '牛喆', '2017', 'image/c2.jpg', '123456');
INSERT INTO `job` VALUES ('12', '7000', '', '', '前端工程师', '3', '牛喆', '2017', 'image/c2.jpg', '123456');
INSERT INTO `job` VALUES ('13', '7000', '', '', '前端工程师', '2', '牛喆', '2017', 'image/c2.jpg', '123456');
INSERT INTO `job` VALUES ('14', '7000', '', '', '前端工程师', '1', '牛喆', '2017', 'image/c2.jpg', '123456');
INSERT INTO `job` VALUES ('15', '7000', '', '', '前端工程师', '4', '牛喆', '2017', 'image/c2.jpg', '123456');
INSERT INTO `job` VALUES ('16', '7000', '', '', '前端工程师', '2', '牛喆', '2019', 'image/c2.jpg', '123456');
INSERT INTO `job` VALUES ('17', '7000', '', '', '前端工程师', '4', '牛喆', '2019', 'image/c2.jpg', '123456');
INSERT INTO `job` VALUES ('18', '3456', '和大开杀戒', '', '测试工程师', '4', '黄级', '2018', 'image/c2.jpg', '123456');
INSERT INTO `job` VALUES ('19', '3456', '和大开杀戒', '', '测试工程师', '4', '黄级', '2018', 'image/c2.jpg', '123456');
INSERT INTO `job` VALUES ('20', '3456', '和大开杀戒', '', '测试工程师', '4', '黄级', '2018', 'image/c2.jpg', '123456');

-- ----------------------------
-- Table structure for `obligatorycoursearranged`
-- ----------------------------
DROP TABLE IF EXISTS `obligatorycoursearranged`;
CREATE TABLE `obligatorycoursearranged` (
  `ocaId` int(11) NOT NULL,
  `tcId` int(11) DEFAULT NULL,
  `courseId` int(11) DEFAULT NULL,
  `acId` int(11) DEFAULT NULL,
  PRIMARY KEY (`ocaId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
-- Table structure for `optioncourse`
-- ----------------------------
DROP TABLE IF EXISTS `optioncourse`;
CREATE TABLE `optioncourse` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `cnum` int(10) DEFAULT NULL,
  `tnum` varchar(50) DEFAULT NULL,
  `selectedNumber` int(4) DEFAULT NULL,
  `sum` int(4) DEFAULT NULL,
  `week` int(4) DEFAULT NULL,
  `day` int(4) DEFAULT NULL,
  `time` varchar(30) DEFAULT NULL,
  `rnum` int(4) DEFAULT NULL,
  `tcId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of optioncourse
-- ----------------------------
INSERT INTO `optioncourse` VALUES ('1', '13', '3', '98', '150', '16', '2', '15:45-18:05', '9', '3');
INSERT INTO `optioncourse` VALUES ('2', '13', '3', '98', '150', '16', '4', '15:45-18:05', '10', '4');
INSERT INTO `optioncourse` VALUES ('3', '1', '1', '98', '150', '17', '3', '14:00-15:30', '2', '1');
INSERT INTO `optioncourse` VALUES ('4', '1', '1', '98', '150', '17', '1', '8:00-9:30', '2', '1');
INSERT INTO `optioncourse` VALUES ('5', '13', '3', '98', '150', '16', '2', '15:45-18:05', '9', '3');
INSERT INTO `optioncourse` VALUES ('6', '13', '3', '98', '150', '16', '4', '15:45-18:05', '10', '4');
INSERT INTO `optioncourse` VALUES ('7', '1', '1', '98', '150', '17', '3', '14:00-15:30', '2', '1');
INSERT INTO `optioncourse` VALUES ('8', '1', '1', '98', '150', '17', '1', '8:00-9:30', '2', '1');
INSERT INTO `optioncourse` VALUES ('9', '13', '3', '98', '150', '16', '2', '15:45-18:05', '9', '3');
INSERT INTO `optioncourse` VALUES ('10', '13', '3', '98', '150', '16', '4', '15:45-18:05', '10', '4');
INSERT INTO `optioncourse` VALUES ('11', '1', '1', '98', '150', '17', '3', '14:00-15:30', '2', '1');
INSERT INTO `optioncourse` VALUES ('12', '1', '1', '98', '150', '17', '1', '8:00-9:30', '2', '1');
INSERT INTO `optioncourse` VALUES ('13', '13', '3', '98', '150', '16', '2', '15:45-18:05', '9', '3');
INSERT INTO `optioncourse` VALUES ('14', '13', '3', '98', '150', '16', '4', '15:45-18:05', '10', '4');
INSERT INTO `optioncourse` VALUES ('15', '1', '1', '98', '150', '17', '1', '8:00-9:30', '2', '1');
INSERT INTO `optioncourse` VALUES ('16', '1', '1', '98', '150', '17', '3', '14:00-15:30', '2', '1');
INSERT INTO `optioncourse` VALUES ('17', '13', '3', '98', '150', '16', '2', '15:45-18:05', '9', '3');
INSERT INTO `optioncourse` VALUES ('18', '13', '3', '98', '150', '16', '4', '15:45-18:05', '10', '4');
INSERT INTO `optioncourse` VALUES ('19', '1', '1', '98', '150', '17', '3', '14:00-15:30', '2', '1');
INSERT INTO `optioncourse` VALUES ('20', '1', '1', '98', '150', '17', '1', '8:00-9:30', '2', '1');
INSERT INTO `optioncourse` VALUES ('21', '13', '3', '98', '150', '16', '2', '15:45-18:05', '9', '3');
INSERT INTO `optioncourse` VALUES ('22', '13', '3', '98', '150', '16', '4', '15:45-18:05', '10', '4');
INSERT INTO `optioncourse` VALUES ('23', '1', '1', '98', '150', '17', '1', '8:00-9:30', '2', '1');
INSERT INTO `optioncourse` VALUES ('24', '1', '1', '98', '150', '17', '3', '14:00-15:30', '2', '1');
INSERT INTO `optioncourse` VALUES ('25', '13', '3', '98', '150', '16', '2', '15:45-18:05', '9', '3');
INSERT INTO `optioncourse` VALUES ('26', '13', '3', '98', '150', '16', '4', '15:45-18:05', '10', '4');
INSERT INTO `optioncourse` VALUES ('27', '1', '1', '98', '150', '17', '3', '14:00-15:30', '2', '1');
INSERT INTO `optioncourse` VALUES ('28', '1', '1', '98', '150', '17', '1', '8:00-9:30', '2', '1');
INSERT INTO `optioncourse` VALUES ('29', '13', '3', '98', '150', '16', '2', '15:45-18:05', '9', '3');
INSERT INTO `optioncourse` VALUES ('30', '13', '3', '98', '150', '16', '4', '15:45-18:05', '10', '4');
INSERT INTO `optioncourse` VALUES ('31', '1', '1', '98', '150', '17', '1', '8:00-9:30', '2', '1');
INSERT INTO `optioncourse` VALUES ('32', '1', '1', '98', '150', '17', '3', '14:00-15:30', '2', '1');
INSERT INTO `optioncourse` VALUES ('33', '13', '3', '98', '150', '16', '2', '15:45-18:05', '9', '3');
INSERT INTO `optioncourse` VALUES ('34', '13', '3', '98', '150', '16', '4', '15:45-18:05', '10', '4');
INSERT INTO `optioncourse` VALUES ('35', '1', '1', '98', '150', '17', '3', '14:00-15:30', '2', '1');
INSERT INTO `optioncourse` VALUES ('36', '1', '1', '98', '150', '17', '1', '8:00-9:30', '2', '1');
INSERT INTO `optioncourse` VALUES ('37', '13', '3', '98', '150', '16', '2', '15:45-18:05', '9', '3');
INSERT INTO `optioncourse` VALUES ('38', '13', '3', '98', '150', '16', '4', '15:45-18:05', '10', '4');
INSERT INTO `optioncourse` VALUES ('39', '1', '1', '98', '150', '17', '1', '8:00-9:30', '2', '1');
INSERT INTO `optioncourse` VALUES ('40', '1', '1', '98', '150', '17', '3', '14:00-15:30', '2', '1');
INSERT INTO `optioncourse` VALUES ('41', '13', '3', '98', '150', '16', '2', '15:45-18:05', '9', '3');
INSERT INTO `optioncourse` VALUES ('42', '13', '3', '98', '150', '16', '4', '15:45-18:05', '10', '4');
INSERT INTO `optioncourse` VALUES ('43', '1', '1', '98', '150', '17', '3', '14:00-15:30', '2', '1');
INSERT INTO `optioncourse` VALUES ('44', '1', '1', '98', '150', '17', '1', '8:00-9:30', '2', '1');
INSERT INTO `optioncourse` VALUES ('45', '13', '3', '98', '150', '16', '2', '15:45-18:05', '9', '3');
INSERT INTO `optioncourse` VALUES ('46', '13', '3', '98', '150', '16', '4', '15:45-18:05', '10', '4');
INSERT INTO `optioncourse` VALUES ('47', '1', '1', '98', '150', '17', '1', '8:00-9:30', '2', '1');
INSERT INTO `optioncourse` VALUES ('48', '1', '1', '98', '150', '17', '3', '14:00-15:30', '2', '1');
INSERT INTO `optioncourse` VALUES ('49', '13', '3', '98', '150', '16', '2', '15:45-18:05', '9', '3');
INSERT INTO `optioncourse` VALUES ('50', '13', '3', '98', '150', '16', '4', '15:45-18:05', '10', '4');
INSERT INTO `optioncourse` VALUES ('51', '1', '1', '98', '150', '17', '1', '8:00-9:30', '2', '1');
INSERT INTO `optioncourse` VALUES ('52', '1', '1', '98', '150', '17', '3', '14:00-15:30', '2', '1');
INSERT INTO `optioncourse` VALUES ('53', '13', '3', '98', '150', '16', '2', '15:45-18:05', '9', '3');
INSERT INTO `optioncourse` VALUES ('54', '13', '3', '98', '150', '16', '4', '15:45-18:05', '10', '4');
INSERT INTO `optioncourse` VALUES ('55', '1', '1', '98', '150', '17', '1', '8:00-9:30', '2', '1');
INSERT INTO `optioncourse` VALUES ('56', '1', '1', '98', '150', '17', '3', '14:00-15:30', '2', '1');
INSERT INTO `optioncourse` VALUES ('57', '13', '3', '98', '150', '16', '2', '15:45-18:05', '9', '3');
INSERT INTO `optioncourse` VALUES ('58', '13', '3', '98', '150', '16', '4', '15:45-18:05', '10', '4');
INSERT INTO `optioncourse` VALUES ('59', '1', '1', '98', '150', '17', '1', '8:00-9:30', '2', '1');
INSERT INTO `optioncourse` VALUES ('60', '1', '1', '98', '150', '17', '3', '14:00-15:30', '2', '1');
INSERT INTO `optioncourse` VALUES ('61', '13', '3', '98', '150', '16', '2', '15:45-18:05', '9', '3');
INSERT INTO `optioncourse` VALUES ('62', '13', '3', '98', '150', '16', '4', '15:45-18:05', '10', '4');
INSERT INTO `optioncourse` VALUES ('63', '1', '1', '98', '150', '17', '1', '8:00-9:30', '2', '1');
INSERT INTO `optioncourse` VALUES ('64', '1', '1', '98', '150', '17', '3', '14:00-15:30', '2', '1');
INSERT INTO `optioncourse` VALUES ('65', '13', '3', '98', '150', '16', '2', '15:45-18:05', '9', '3');
INSERT INTO `optioncourse` VALUES ('66', '13', '3', '98', '150', '16', '4', '15:45-18:05', '10', '4');
INSERT INTO `optioncourse` VALUES ('67', '1', '1', '98', '150', '17', '3', '14:00-15:30', '2', '1');
INSERT INTO `optioncourse` VALUES ('68', '1', '1', '98', '150', '17', '1', '8:00-9:30', '2', '1');
INSERT INTO `optioncourse` VALUES ('69', '13', '3', '98', '150', '16', '2', '15:45-18:05', '9', '3');
INSERT INTO `optioncourse` VALUES ('70', '13', '3', '98', '150', '16', '4', '15:45-18:05', '10', '4');
INSERT INTO `optioncourse` VALUES ('71', '1', '1', '98', '150', '17', '1', '8:00-9:30', '2', '1');
INSERT INTO `optioncourse` VALUES ('72', '1', '1', '98', '150', '17', '3', '14:00-15:30', '2', '1');
INSERT INTO `optioncourse` VALUES ('73', '13', '3', '98', '150', '16', '2', '15:45-18:05', '9', '3');
INSERT INTO `optioncourse` VALUES ('74', '13', '3', '98', '150', '16', '4', '15:45-18:05', '10', '4');
INSERT INTO `optioncourse` VALUES ('75', '1', '1', '98', '150', '17', '3', '14:00-15:30', '2', '1');
INSERT INTO `optioncourse` VALUES ('76', '1', '1', '98', '150', '17', '1', '8:00-9:30', '2', '1');
INSERT INTO `optioncourse` VALUES ('77', '13', '3', '98', '150', '16', '2', '15:45-18:05', '9', '3');
INSERT INTO `optioncourse` VALUES ('78', '13', '3', '98', '150', '16', '4', '15:45-18:05', '10', '4');
INSERT INTO `optioncourse` VALUES ('79', '1', '1', '98', '150', '17', '1', '8:00-9:30', '2', '1');
INSERT INTO `optioncourse` VALUES ('80', '1', '1', '98', '150', '17', '3', '14:00-15:30', '2', '1');
INSERT INTO `optioncourse` VALUES ('81', '13', '3', '98', '150', '16', '2', '15:45-18:05', '9', '3');
INSERT INTO `optioncourse` VALUES ('82', '13', '3', '98', '150', '16', '4', '15:45-18:05', '10', '4');
INSERT INTO `optioncourse` VALUES ('83', '1', '1', '98', '150', '17', '1', '8:00-9:30', '2', '1');
INSERT INTO `optioncourse` VALUES ('84', '1', '1', '98', '150', '17', '3', '14:00-15:30', '2', '1');
INSERT INTO `optioncourse` VALUES ('85', '13', '3', '98', '150', '16', '2', '15:45-18:05', '9', '3');
INSERT INTO `optioncourse` VALUES ('86', '13', '3', '98', '150', '16', '4', '15:45-18:05', '10', '4');
INSERT INTO `optioncourse` VALUES ('87', '1', '1', '98', '150', '17', '3', '14:00-15:30', '2', '1');
INSERT INTO `optioncourse` VALUES ('88', '1', '1', '98', '150', '17', '1', '8:00-9:30', '2', '1');
INSERT INTO `optioncourse` VALUES ('89', '13', '3', '98', '150', '16', '2', '15:45-18:05', '9', '3');
INSERT INTO `optioncourse` VALUES ('90', '13', '3', '98', '150', '16', '4', '15:45-18:05', '10', '4');
INSERT INTO `optioncourse` VALUES ('91', '1', '1', '98', '150', '17', '1', '8:00-9:30', '2', '1');
INSERT INTO `optioncourse` VALUES ('92', '1', '1', '98', '150', '17', '3', '14:00-15:30', '2', '1');
INSERT INTO `optioncourse` VALUES ('93', '13', '3', '98', '150', '16', '2', '15:45-18:05', '9', '3');
INSERT INTO `optioncourse` VALUES ('94', '13', '3', '98', '150', '16', '4', '15:45-18:05', '10', '4');
INSERT INTO `optioncourse` VALUES ('95', '1', '1', '98', '150', '17', '1', '8:00-9:30', '2', '1');
INSERT INTO `optioncourse` VALUES ('96', '1', '1', '98', '150', '17', '3', '14:00-15:30', '2', '1');
INSERT INTO `optioncourse` VALUES ('97', '13', '3', '98', '150', '16', '2', '15:45-18:05', '9', '3');
INSERT INTO `optioncourse` VALUES ('98', '13', '3', '98', '150', '16', '4', '15:45-18:05', '10', '4');
INSERT INTO `optioncourse` VALUES ('99', '1', '1', '98', '150', '17', '3', '14:00-15:30', '2', '1');
INSERT INTO `optioncourse` VALUES ('100', '1', '1', '98', '150', '17', '1', '8:00-9:30', '2', '1');
INSERT INTO `optioncourse` VALUES ('101', '13', '3', '98', '150', '16', '2', '15:45-18:05', '9', '3');
INSERT INTO `optioncourse` VALUES ('102', '13', '3', '98', '150', '16', '4', '15:45-18:05', '10', '4');
INSERT INTO `optioncourse` VALUES ('103', '1', '1', '98', '150', '17', '1', '8:00-9:30', '2', '1');
INSERT INTO `optioncourse` VALUES ('104', '1', '1', '98', '150', '17', '3', '14:00-15:30', '2', '1');
INSERT INTO `optioncourse` VALUES ('105', '13', '3', '98', '150', '16', '2', '15:45-18:05', '9', '3');
INSERT INTO `optioncourse` VALUES ('106', '13', '3', '98', '150', '16', '4', '15:45-18:05', '10', '4');
INSERT INTO `optioncourse` VALUES ('107', '1', '1', '98', '150', '17', '1', '8:00-9:30', '2', '1');
INSERT INTO `optioncourse` VALUES ('108', '1', '1', '98', '150', '17', '3', '14:00-15:30', '2', '1');

-- ----------------------------
-- Table structure for `recruit`
-- ----------------------------
DROP TABLE IF EXISTS `recruit`;
CREATE TABLE `recruit` (
  `recruit_id` int(11) NOT NULL AUTO_INCREMENT,
  `recruit_name` varchar(255) DEFAULT NULL,
  `recruit_site` varchar(255) DEFAULT NULL,
  `recruit_salary` varchar(10) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recruit
-- ----------------------------
INSERT INTO `recruit` VALUES ('1', '测试工程师', '北京', '3000-5000', '1', '2020-1-23', '我们希望你本科以上，并符合以下两条或以上描述：\r\n\r\n1、计算机软件/测试相关专业，热爱游戏，游戏经验丰富，乐于往游戏测试方向发展；\r\n\r\n2、具备一定的编程/测试基础知识，有相关软件测试/游戏测试经验是加分项哦；\r\n\r\n3、良好的逻辑思维和学习能力，能快速理解新知识；\r\n\r\n4、性格开朗，良好的沟通能力与团队协作能力；\r\n\r\n5、踏实细心，对自己的工作认真负责。', '实习三个月', '测试', '1', '是', '质量把关小能手，为给玩家提供最完美的用户体验做好质量保障工作；\r\n\r\n火眼金睛，所有的bug在你眼下都无处遁形；\r\n\r\n沟通小桥梁，跟技术、策划小伙伴一起，定位并高效解决问题，也为游戏的更新改进提出自己的独到建议。');
INSERT INTO `recruit` VALUES ('2', 'Android工程师', '上海', '3000-4000', '2', '2020-1-23', '1、计算机相关专业，本科及以上学历；\r\n\r\n2、能熟悉以下一门或几门语言优先：C/C++/JAVA；linux/shell；\r\n\r\n3、热爱软件测试工作，工作细致认真，有耐心；\r\n\r\n4、沟通表达能力强，快速理解工程和产品的细节；\r\n\r\n5、有大规模系统测试开发经验者优先，熟悉计算广告，或者有相关测试开发经验者优先。', '实习三个月', 'Android', '7', '是', '1、头条广告团队是公司核心团队，负责商业变现，为公司年度的收入目标而奋斗；\r\n\r\n2、负责web/server端产品的业务相关测试；\r\n\r\n3、对测试过程中发现的问题进行跟踪分析和报告；负责跟进BUG迭代进程，积极主动与产品、技术沟通，及时合理的解决测试中发现的问题；\r\n\r\n4、完成产品的集成测试、系统测试，以及必要的自动化测试、性能测试；\r\n\r\n5、推动并监控整个项目流程的实施，评估项目风险，推动问题的解决，保障产品质量；\r\n\r\n6、接受应届生，表现优秀有转正机会。');
INSERT INTO `recruit` VALUES ('3', '前端工程师', '山西', '2000-4000', '4', '2020-1-23', '1，仅限计算机相关专业；\r\n\r\n2，有良好的沟通和表达能力，学习能力强，能积极主动地推进问题解决；\r\n\r\n3，有andriod，ios产品测试，app软件测试等工作经验者优先；\r\n\r\n4，能够独立编写测试用例，测试报告等相关文档优先；\r\n\r\n5，有数据库基础，开发语言基础，能看懂代码优先；\r\n\r\n6，熟悉牛客网系统和业务知识优先。', '实习三个月', '前端', '3', '是', '1，负责pc端，移动端产品测试工作；\r\n\r\n2，按照编辑好的测试用例执行测试；\r\n\r\n3，根据产品需求文档，设计相关的测试场景及测试用例；\r\n\r\n4，可以准确，详实的描述bug产生的过程以及bug的现象，准确的定位并跟踪问题；\r\n\r\n5，公司安排的测试相关工作。');
INSERT INTO `recruit` VALUES ('4', '数据工程师', '山东', '3500左右', '2', '2020-1-23', '1、大学本科以上学历，有人力资源行业实习经验，对人力资源行业感兴趣；\r\n\r\n2、对工作认真，细心专注，善于做会议纪要。有良好的沟通能力，较强的学习能力，工作心态好，具备良好的职业素养和道德品质，诚实守信，善于思考；\r\n\r\n3、熟练运用office办公软件；\r\n\r\n4、良好的人际沟通能力和团队协作意识。有强烈的责任感，对工作具有严谨的态度，乐于挑战。', '实习三个月', '数据', '2', '是', '1、负责web/app端产品的业务相关测试；\r\n\r\n2、对测试过程中发现的问题进行跟踪分析和报告；负责跟进BUG迭代进程，积极主动与产品、技术沟通，及时合理的解决测试中发现的问题；\r\n\r\n3、完成产品的集成测试、系统测试，以及必要的自动化测试、性能测试；\r\n\r\n4、推动并监控整个项目流程的实施，评估项目风险，推动问题的解决，保障产品质量；');
INSERT INTO `recruit` VALUES ('5', '算法工程师', '西安', '4400左右', '3', '2020-1-23', '岗位描述\r\n\r\n挖掘用户行为数据，帮助提高游戏质量，提升玩家体验及价值\r\n\r\n研究用户画像、开发预测模型、分析渠道作弊，提升投放精准', '实习三个月', '算法', '2', '是', '1、负责部门内的行政事务工作，提供各类办公支持保障；\r\n\r\n2、负责部门数据收集汇总统计，负责合同制作留档，以及报销管理；\r\n\r\n3、协助部门负责人完善部门管理制度、开展人员管理工作；\r\n\r\n4、组织开展部门团队建设相关活动，提高部门凝聚力和战斗力；\r\n\r\n5、上级交代的其它工作。');
INSERT INTO `recruit` VALUES ('6', '研发工程师', '深圳', '6000', '1', '2020-1-23', '1. 负责SLAM，VIO等AR核心算法的Android应用设计开发，及维护工作\r\n\r\n2. 针对组内AR相关的新算法，设计并开发相应的演示demo及测试程序等', '实习三个月', '研发', '4', '是', '1. 计算机/体系结构/软件工程/电子工程等相关专业，有比较强的编程能力\r\n\r\n2. 熟练掌握Java语言，熟悉语言特性，熟悉常用的数据结构，设计模式等\r\n\r\n3. 熟悉Android端开发，熟练掌握常用的组件及UI规范\r\n\r\n4. 熟悉C++及JNI，能独立基于C接口库进行Android应用开发者优先\r\n\r\n5. 熟悉Android端渲染，AR/VR，SLAM, VIO算法优先\r\n\r\n6. 思维敏捷，具备良好的学习能力, 对SLAM相关工作有强烈兴趣');
INSERT INTO `recruit` VALUES ('7', '产品工程师', '北京', '3600', '2', '2020-1-23', '我们希望你本科以上，并符合以下两条或以上描述：\r\n\r\n1、计算机软件/测试相关专业，热爱游戏，游戏经验丰富，乐于往游戏测试方向发展；\r\n\r\n2、具备一定的编程/测试基础知识，有相关软件测试/游戏测试经验是加分项哦；\r\n\r\n3、良好的逻辑思维和学习能力，能快速理解新知识；\r\n\r\n4、性格开朗，良好的沟通能力与团队协作能力；\r\n\r\n5、踏实细心，对自己的工作认真负责。', '实习三个月', '产品', '5', '是', '1、抗压能力强，适应创业公司节奏，希望博取未来；\r\n\r\n2、熟悉Javascript、HTML、CSS、Vue等常用前端语言，有Vue实际项目者优先考虑；\r\n\r\n3、具有创新力和批判性思维；\r\n\r\n4、良好的沟通能力；\r\n\r\n5、负责任、有激情、认真以及结果导向；\r\n\r\n6、有工程、技术相关的学位；');
INSERT INTO `recruit` VALUES ('8', '运营工程师', '深圳', '3600', '2', '2020-1-23', '我们希望你本科以上，并符合以下两条或以上描述：\r\n\r\n1、计算机软件/测试相关专业，热爱游戏，游戏经验丰富，乐于往游戏测试方向发展；\r\n\r\n2、具备一定的编程/测试基础知识，有相关软件测试/游戏测试经验是加分项哦；\r\n\r\n3、良好的逻辑思维和学习能力，能快速理解新知识；\r\n\r\n4、性格开朗，良好的沟通能力与团队协作能力；\r\n\r\n5、踏实细心，对自己的工作认真负责。', '实习三个月', '产品', '3', '是', '1. 喜欢前端，热爱前端，有较强的学习能力，有强烈的求知欲、好奇心和进取心 ，能及时关注和学习业界最新的前端技术；\r\n\r\n2. 计算机相关专业本科及以上学历；\r\n\r\n3. 前端学龄超过半年；\r\n\r\n4. 难以忍受糟糕的没有注释的代码。\r\n\r\n1. 喜欢前端，热爱前端，有较强的学习能力，有强烈的求知欲、好奇心和进取心 ，能及时关注和学习业界最新的前端技术；\r\n\r\n2. 计算机相关专业本科及以上学历；\r\n\r\n3. 前端学龄超过半年；\r\n\r\n4. 难以忍受糟糕的没有注释的代码。\r\n\r\n');

-- ----------------------------
-- Table structure for `resultproportion`
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
-- Table structure for `student`
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
INSERT INTO `student` VALUES ('2016011678', '123456cs', '张庭', '女', '2016', '7', '1998-04-17', '党员', '2016', '河北省石家庄市', '15562789668', '机器学习');
INSERT INTO `student` VALUES ('2017011626', '123456', '高露璐', '女', '2017', '7', '1999-05-26', '预备党员', '2017', '山东省青岛市', '15102565298', '测试');

-- ----------------------------
-- Table structure for `teacher`
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
  `password` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`tId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', '张海云', '男', '汉', '1980-03-01', '团员', '13888888888', '123456789@qq.com', '本科', '学士', '高级工程师', '河北师范大学', '计算机科学与技术', '软件学院', '12345');
INSERT INTO `teacher` VALUES ('2', '李四', '男', '汉', '1983-04-14', '党员', '15423685468', '456512852@qq.com', '硕士研究生', '硕士', '副教授', '河北师范大学', '软件工程', '软件学院', '12345');
INSERT INTO `teacher` VALUES ('3', '王晓', '女', '汉', '1990-01-02', '党员', '15648792549', '1258634855@qq.com', '博士研究生', '博士', '教授', '河北师范大学', '计算机科学与技术', '软件学院', '12345');

-- ----------------------------
-- Table structure for `teachertimetable`
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
INSERT INTO `teachertimetable` VALUES ('2', '1', '2', '3', '14:00-15:30', '数据结构-1-a');
INSERT INTO `teachertimetable` VALUES ('3', '2', '3', '4', '8:00-9:30', '数据结构-2');
INSERT INTO `teachertimetable` VALUES ('4', '2', '4', '2', '14:00-15:30', '数据结构-2-a');
INSERT INTO `teachertimetable` VALUES ('5', '9', '8', '5', '8:00-9:30', '数据结构-3');
INSERT INTO `teachertimetable` VALUES ('6', '9', '8', '1', '14:00-15:30', '数据结构-3-a');
INSERT INTO `teachertimetable` VALUES ('7', '10', '11', '3', '8:00-9:30', '数据结构-4');
INSERT INTO `teachertimetable` VALUES ('8', '10', '11', '3', '14:00-15:30', '数据结构-4-a');
INSERT INTO `teachertimetable` VALUES ('9', '5', '1', '1', '8:00-9:30', '计算机导论-1');
INSERT INTO `teachertimetable` VALUES ('10', '5', '3', '3', '14:00-15:30', '计算机导论-1-a');
INSERT INTO `teachertimetable` VALUES ('11', '6', '4', '2', '8:00-9:30', '计算机导论-2');
INSERT INTO `teachertimetable` VALUES ('12', '6', '1', '4', '14:00-15:30', '计算机导论-2-a');
INSERT INTO `teachertimetable` VALUES ('13', '7', '6', '2', '8:00-9:30', '计算机导论-3');
INSERT INTO `teachertimetable` VALUES ('14', '7', '6', '5', '8:00-9:30', '计算机导论-3-a');
INSERT INTO `teachertimetable` VALUES ('15', '8', '7', '2', '14:00-15:30', '计算机导论-4');
INSERT INTO `teachertimetable` VALUES ('16', '8', '7', '1', '14:00-15:30', '计算机导论-4-a');
INSERT INTO `teachertimetable` VALUES ('17', '3', '9', '2', '15:45-18:05', 'linux-1');
INSERT INTO `teachertimetable` VALUES ('18', '4', '10', '4', '15:45-18:05', 'linux-2');

-- ----------------------------
-- Table structure for `teaching`
-- ----------------------------
DROP TABLE IF EXISTS `teaching`;
CREATE TABLE `teaching` (
  `teach_id` int(11) NOT NULL AUTO_INCREMENT,
  `teach_name` varchar(255) DEFAULT NULL,
  `teach_video` varchar(255) DEFAULT NULL,
  `teach_summary` varchar(255) DEFAULT NULL,
  `teach_lecturer` int(255) DEFAULT NULL,
  `teach_watcher` int(255) DEFAULT NULL,
  `teach_images` varchar(255) DEFAULT NULL,
  `teach_describe` varchar(255) DEFAULT NULL,
  `teach_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`teach_id`),
  KEY `teaching_ibfk_1` (`teach_lecturer`),
  CONSTRAINT `teaching_ibfk_1` FOREIGN KEY (`teach_lecturer`) REFERENCES `undergraduate` (`undergraduate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teaching
-- ----------------------------
INSERT INTO `teaching` VALUES ('1', 'java进阶', 'video/c1.jpg', '为什么要学Java？\r\n\r\n因为Java是全球排名第一的编程语言，Java工程师也是市场需求最大的软件工程师，选择Java，就是选择了高薪。虽然是零基础Java教程，但是覆盖了从基础到高级的Java核心编程，从小白成长到架构师，实现硬实力高薪就业！\r\n\r\n还可以边学边练，而且可以在线练习！\r\n\r\n并且，时刻更新至最新版Java！目前教程版本是：Java 13!\r\n最重要的是：java！', '2', '200', 'imag/c2.jpg', '大数据（Big data）也吸引了越来越多的关注。分析师团队认为，大数据（Big data）通常用来形容一个公司创造的大量非结构化数据和半结构化数据，这些数据在下载到关系型数据库用于分析时会花费过多时间和金钱', '考研');
INSERT INTO `teaching` VALUES ('2', 'Android初阶', 'video/c1.jpg', 'android开发是指android平台上应用的制作，Android早期由“Android之父”之称的Andy Rubin创办，Google于2005年并购了成立仅22个月的高科技企业Android，展开了短信、手机检索、定位等业务，基于Linux的通用平台进入了开发。', '3', '100', 'imag/c2.jpg', '大数据（Big data）也吸引了越来越多的关注。分析师团队认为，大数据（Big data）通常用来形容一个公司创造的大量非结构化数据和半结构化数据，这些数据在下载到关系型数据库用于分析时会花费过多时间和金钱', '工作');
INSERT INTO `teaching` VALUES ('3', 'Android进阶', null, 'ndroid教程,安卓视频教程,专业教辅,效果显著,由浅入深讲解知识点,帮你扫清入门障碍,专业学习过程从这里开始,全面提升学习能力,独立开发,应用功能 , 检验你的学习效果...', '4', '12', 'imag/c2.jpg', '大数据（Big data）也吸引了越来越多的关注。分析师团队认为，大数据（Big data）通常用来形容一个公司创造的大量非结构化数据和半结构化数据，这些数据在下载到关系型数据库用于分析时会花费过多时间和金钱', '工作');
INSERT INTO `teaching` VALUES ('4', 'H5页面简介', null, ' H5页面介绍与制作,H5页面是现在比较流行的一种宣传方式和渠道,我们可以在微信朋友圈等社交媒体APP中经常看到这类H5页面作品,那么H5到底是什么又该如何进行制作呢?...', '6', '15', 'imag/c2.jpg', '大数据（Big data）也吸引了越来越多的关注。分析师团队认为，大数据（Big data）通常用来形容一个公司创造的大量非结构化数据和半结构化数据，这些数据在下载到关系型数据库用于分析时会花费过多时间和金钱', '工作');
INSERT INTO `teaching` VALUES ('5', 'Ajax介绍', null, 'Ajax 即“Asynchronous Javascript And XML”（异步 JavaScript 和 XML），是指一种创建交互式网页应用的网页开发技术。　　Ajax = 异步 JavaScript 和 XML 或者是 HTML。　　Ajax 是一种用于创建快速动态网页的技术。　　Ajax 是一种在无需重新加载整个网页的情况下，能够更新部分网页的技术。　', '1', '16', 'imag/c2.jpg', '感觉android还简单的，感觉学到了很多，希望以后多多这样的课，Broadcast 是一种广泛运用的在应用程序之间传输信息的机制。而BroadcastReceiver 是对发送出来的Broadcast进行过滤接受并响应的一类组件', '考研');
INSERT INTO `teaching` VALUES ('6', '大数据', null, '使用Ajax的最大优点，就是能在不更新整个页面的前提下维护数据。这使得Web应用程序更为迅捷地回应用户动作，并避免了在网络上发送那些没有改变的信息。　　Ajax不需要任何浏览器插件，但需要用户允许JavaScript在浏览器上执行。', '1', '228', 'imag/c2.jpg', '感觉android还简单的，感觉学到了很多，希望以后多多这样的课，Broadcast 是一种广泛运用的在应用程序之间传输信息的机制。而BroadcastReceiver 是对发送出来的Broadcast进行过滤接受并响应的一类组件', '考研');
INSERT INTO `teaching` VALUES ('7', '云时代', null, '随着云时代的来临，大数据（Big data）也吸引了越来越多的关注。分析师团队认为，大数据（Big data）通常用来形容一个公司创造的大量非结构化数据和半结构化数据，这些数据在下载到关系型数据库用于分析时会花费过多时间和金钱。大数据分析常和云计算联系到一起，因为实时的大型数据集分析需要像MapReduce一样的框架来向数十、数百或甚至数千的电脑分配工作。', '5', '220', 'imag/c2.jpg', '感觉android还简单的，感觉学到了很多，希望以后多多这样的课，Broadcast 是一种广泛运用的在应用程序之间传输信息的机制。而BroadcastReceiver 是对发送出来的Broadcast进行过滤接受并响应的一类组件', '工作');
INSERT INTO `teaching` VALUES ('8', '大数据处理', null, '大数据需要特殊的技术，以有效地处理大量的容忍经过时间内的数据。适用于大数据的技术，包括大规模并行处理（MPP）数据库、数据挖掘、分布式文件系统、分布式数据库、云计算平台、互联网和可扩展的存储系统。', '4', '150', 'imag/c2.jpg', '感觉android还简单的，感觉学到了很多，希望以后多多这样的课，Broadcast 是一种广泛运用的在应用程序之间传输信息的机制。而BroadcastReceiver 是对发送出来的Broadcast进行过滤接受并响应的一类组件', '考研');

-- ----------------------------
-- Table structure for `teachingclass`
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
INSERT INTO `teachingclass` VALUES ('1', '数据结构-1', '1', '98', '1班,2班', '1', '1', '1', '1', '150');
INSERT INTO `teachingclass` VALUES ('2', '数据结构-2', '1', '98', '3班,4班', '1', '1', '1', '0', '150');
INSERT INTO `teachingclass` VALUES ('3', 'linux-1', '13', '98', '非行政班', '3', '3', '0', '0', '150');
INSERT INTO `teachingclass` VALUES ('4', 'linux-2', '13', '98', '非行政班', '3', '3', '0', '0', '150');
INSERT INTO `teachingclass` VALUES ('5', '计算机导论-1', '3', '98', '1班,2班', '1', '2', '0', '1', '150');
INSERT INTO `teachingclass` VALUES ('6', '计算机导论-2', '3', '98', '3班,4班', '1', '2', '0', '0', '150');
INSERT INTO `teachingclass` VALUES ('7', '计算机导论-3', '3', '97', '5班,6班', '2', '2', '0', '0', '150');
INSERT INTO `teachingclass` VALUES ('8', '计算机导论-4', '3', '97', '7班,8班', '2', '2', '1', '0', '150');
INSERT INTO `teachingclass` VALUES ('9', '数据结构-3', '1', '97', '5班,6班', '2', '1', '1', '0', '150');
INSERT INTO `teachingclass` VALUES ('10', '数据结构-4', '1', '97', '7班,8班', '1', '1', '1', '0', '150');

-- ----------------------------
-- Table structure for `teachingschedule`
-- ----------------------------
DROP TABLE IF EXISTS `teachingschedule`;
CREATE TABLE `teachingschedule` (
  `tsId` int(11) NOT NULL,
  `courseId` int(11) DEFAULT NULL,
  `tYear` varchar(50) DEFAULT NULL,
  `duration` int(40) DEFAULT NULL,
  `totalHours` int(11) DEFAULT NULL,
  `totalTcNum` int(11) DEFAULT NULL,
  PRIMARY KEY (`tsId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��һ�ſγ�';

-- ----------------------------
-- Records of teachingschedule
-- ----------------------------
INSERT INTO `teachingschedule` VALUES ('1', '1', '2019-2020', '17', '48', '4');
INSERT INTO `teachingschedule` VALUES ('2', '3', '2019-2020', '17', '51', '4');
INSERT INTO `teachingschedule` VALUES ('3', '13', '2019-2020', '16', '51', '2');

-- ----------------------------
-- Table structure for `timetable`
-- ----------------------------
DROP TABLE IF EXISTS `timetable`;
CREATE TABLE `timetable` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of timetable
-- ----------------------------
INSERT INTO `timetable` VALUES ('1', '2016011678', '3', '2', '2019-2020', '16', '2', '14:00-15:30', '7', '8');
INSERT INTO `timetable` VALUES ('2', '2016011678', '1', '1', '2019-2020', '17', '3', '8:00-9:30', '11', '10');
INSERT INTO `timetable` VALUES ('31', '2016011678', '13', '3', '2019-2020', '16', '2', '15:45-18:05', '9', '3');
INSERT INTO `timetable` VALUES ('32', '2016011678', '1', '1', '2019-2020', '17', '3', '14:00-15:30', '2', '1');

-- ----------------------------
-- Table structure for `undergraduate`
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of undergraduate
-- ----------------------------
INSERT INTO `undergraduate` VALUES ('1', '南开大学', '张海军', '2019', 'image/c2.jpg', '123456');
INSERT INTO `undergraduate` VALUES ('2', '北京大学', '关哈德', '2019', 'image/c2.jpg', '123456');
INSERT INTO `undergraduate` VALUES ('3', '河北师范大学', '任杰', '2019', 'image/c2.jpg', '123456');
INSERT INTO `undergraduate` VALUES ('4', '安徽大学', '高管', '2019', 'image/c2.jpg', '123456');
INSERT INTO `undergraduate` VALUES ('5', '东北大学', '景江', '2019', 'image/c2.jpg', '123456');
INSERT INTO `undergraduate` VALUES ('6', '东北师范大学', '楚玉德', '2019', 'image/c2.jpg', '123456');
INSERT INTO `undergraduate` VALUES ('7', '江南大学', '张记特', '2019', 'image/c2.jpg', '123456');
INSERT INTO `undergraduate` VALUES ('8', '太原理工', '刘护盾', '2018', 'image/c2.jpg', '123456');
INSERT INTO `undergraduate` VALUES ('9', '河北大学', '牛华士', '2018', 'image/c2.jpg', '123456');
INSERT INTO `undergraduate` VALUES ('10', '河北经贸大学', '张爽对', '2018', 'image/c2.jpg', '123456');
INSERT INTO `undergraduate` VALUES ('11', '河北医科大学', '张彪', '2018', 'image/c2.jpg', '123456');
INSERT INTO `undergraduate` VALUES ('12', '山东大学', '钟鼎文', '2018', 'image/c2.jpg', '123456');
INSERT INTO `undergraduate` VALUES ('13', '山东财经大学', '严冬赛', '2018', 'image/c2.jpg', '123456');
INSERT INTO `undergraduate` VALUES ('14', '山西大学', '张大伟', '2017', 'image/c2.jpg', '123456');
INSERT INTO `undergraduate` VALUES ('15', '山西财经大学', '闫鼎文', '2017', 'image/c2.jpg', '123456');
INSERT INTO `undergraduate` VALUES ('16', '北京师范大学', '杨丹', '2017', 'image/c2.jpg', '123456');
INSERT INTO `undergraduate` VALUES ('17', '北京体育大学', '段额看', '2017', 'image/c2.jpg', '123456');
INSERT INTO `undergraduate` VALUES ('18', '安徽财经大圩', '佘顺', '2016', 'image/c2.jpg', '123456');
INSERT INTO `undergraduate` VALUES ('19', '湖北大学', '黄航空', '2016', 'image/c2.jpg', '123456');
INSERT INTO `undergraduate` VALUES ('20', '湖南大学', '黄大伟', '2016', 'image/c2.jpg', '123456');
INSERT INTO `undergraduate` VALUES ('21', '山西大学', '藏少华', '2016', 'image/c2.jpg', '123456');
INSERT INTO `undergraduate` VALUES ('22', '山西大学', '藏少华', '2016', 'image/c2.jpg', '123456');
INSERT INTO `undergraduate` VALUES ('23', '山西大学', '藏少华', '2015', 'image/c2.jpg', '123456');
INSERT INTO `undergraduate` VALUES ('24', '山西大学', '藏少华', '2015', 'image/c2.jpg', '123456');
