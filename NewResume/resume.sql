/*
Navicat MySQL Data Transfer

Source Server         : Word
Source Server Version : 50635
Source Host           : localhost:3306
Source Database       : resume

Target Server Type    : MYSQL
Target Server Version : 50635
File Encoding         : 65001

Date: 2017-06-16 21:17:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `a_id` int(255) NOT NULL AUTO_INCREMENT,
  `a_username` varchar(20) NOT NULL,
  `a_password` varchar(20) NOT NULL,
  `a_proview` varchar(10) NOT NULL,
  `a_tel` varchar(255) DEFAULT NULL,
  `a_email` varchar(255) DEFAULT NULL,
  `a_name` varchar(255) NOT NULL,
  `a_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('2', 'admin', 'admin', '经理', '13123123', '12312@wqe', '弗莱基米尔', '/NewResume/imgage/111.bmp');
INSERT INTO `admin` VALUES ('6', 'root', 'root', '管理组长', '2222', '2222', '德莱克斯', null);
INSERT INTO `admin` VALUES ('15', 'Kebi', '12345', '管理员', '21321·', '21332321', '克莱克斯顿', null);
INSERT INTO `admin` VALUES ('16', '12332132', '12345', '管理员', 'asdqdasd', 'asdasd@sada', '啦啦啦啦啦', 'D:\\JAVA-文档\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\NewResume\\images/imgage/111.bmp');
INSERT INTO `admin` VALUES ('17', 'adad', '23123123', '管理员', '21332132', '12312@wqe', 'admin', null);

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(60) NOT NULL,
  `c_place` varchar(60) NOT NULL,
  `c_description` varchar(60) NOT NULL,
  `c_imageurl` varchar(60) NOT NULL,
  `c_username` varchar(60) NOT NULL,
  `c_password` varchar(60) NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company
-- ----------------------------

-- ----------------------------
-- Table structure for invate_company
-- ----------------------------
DROP TABLE IF EXISTS `invate_company`;
CREATE TABLE `invate_company` (
  `i_id` int(11) NOT NULL AUTO_INCREMENT,
  `i_companyid` int(11) NOT NULL,
  `i_time` varchar(255) NOT NULL,
  `i_description` varchar(255) NOT NULL,
  `i_userid` int(11) NOT NULL,
  `i_resumeid` int(11) NOT NULL,
  PRIMARY KEY (`i_id`),
  KEY `company_invate` (`i_companyid`),
  KEY `resume_invate` (`i_resumeid`),
  KEY `user_invate` (`i_userid`),
  CONSTRAINT `company_invate` FOREIGN KEY (`i_companyid`) REFERENCES `company` (`c_id`) ON DELETE CASCADE,
  CONSTRAINT `resume_invate` FOREIGN KEY (`i_resumeid`) REFERENCES `resume` (`r_id`) ON DELETE CASCADE,
  CONSTRAINT `user_invate` FOREIGN KEY (`i_userid`) REFERENCES `user` (`u_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of invate_company
-- ----------------------------

-- ----------------------------
-- Table structure for resume
-- ----------------------------
DROP TABLE IF EXISTS `resume`;
CREATE TABLE `resume` (
  `r_id` int(11) NOT NULL,
  `r_uid` int(11) NOT NULL,
  `r_name` varchar(255) NOT NULL,
  `r_school` varchar(255) NOT NULL,
  `r_age` varchar(255) NOT NULL,
  `r_phone` varchar(255) NOT NULL,
  `r_description` varchar(255) NOT NULL,
  `r_profesional` varchar(255) NOT NULL,
  `r_place` varchar(255) NOT NULL,
  `r_sex` varchar(5) NOT NULL,
  `r_hopepay` varchar(255) NOT NULL,
  `r_experience` varchar(255) NOT NULL,
  `r_certificate` varchar(255) NOT NULL,
  `r_educationstatus` varchar(255) NOT NULL,
  PRIMARY KEY (`r_id`),
  KEY `user_resume` (`r_uid`),
  CONSTRAINT `user_resume` FOREIGN KEY (`r_uid`) REFERENCES `user` (`u_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of resume
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `u_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_name` varchar(255) NOT NULL,
  `u_password` varchar(255) NOT NULL,
  `u_tel` varchar(255) NOT NULL,
  `u_email` varchar(255) NOT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '诺克萨斯', '1234', '111', '111');
INSERT INTO `user` VALUES ('2', '阿卡丽', '2312', '21', '232');
INSERT INTO `user` VALUES ('3', '德莱文', '22323', '23213', '234');
INSERT INTO `user` VALUES ('4', '老鼠', '2323', '234', '23');
INSERT INTO `user` VALUES ('5', '卡牌', '233223', '23243', '3423');
INSERT INTO `user` VALUES ('6', '狼人', '23', '23', '43');
