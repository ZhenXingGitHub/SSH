/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50635
Source Host           : 127.0.0.1:3306
Source Database       : manageevent

Target Server Type    : MYSQL
Target Server Version : 50635
File Encoding         : 65001

Date: 2017-10-14 19:30:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_event
-- ----------------------------
DROP TABLE IF EXISTS `t_event`;
CREATE TABLE `t_event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '事件编号',
  `event_title` varchar(50) DEFAULT NULL COMMENT '事件标题',
  `event_content` text COMMENT '事件内容',
  `event_starttime` date DEFAULT NULL COMMENT '事件发布时间',
  `event_url` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '事件图片地址',
  `event_commit_id` int(11) DEFAULT NULL COMMENT '提交用户的id',
  `event_status` int(11) DEFAULT NULL COMMENT '事件状态 01未处理02已经处理',
  `kefu_id` int(11) DEFAULT NULL COMMENT '客服id',
  `lead_id` int(11) DEFAULT NULL COMMENT '组长id',
  PRIMARY KEY (`event_id`),
  KEY `user_id` (`event_commit_id`),
  KEY `kefu_id` (`kefu_id`),
  KEY `lead_id` (`lead_id`),
  CONSTRAINT `kefu_id` FOREIGN KEY (`kefu_id`) REFERENCES `t_user` (`user_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `lead_id` FOREIGN KEY (`lead_id`) REFERENCES `t_user` (`user_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `user_id` FOREIGN KEY (`event_commit_id`) REFERENCES `t_user` (`user_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='事件表';

-- ----------------------------
-- Records of t_event
-- ----------------------------
INSERT INTO `t_event` VALUES ('2', '事件1', '事件内容', '2017-10-10', '2', '3', '2', '2', '0');
INSERT INTO `t_event` VALUES ('7', '事件2', '事件内容', '2017-10-11', null, '3', '0', '2', '0');
INSERT INTO `t_event` VALUES ('8', '事件3', '事件内容', '2017-10-10', null, '3', '1', '2', '0');
INSERT INTO `t_event` VALUES ('9', '事件4', '事件内容', '2017-10-09', null, '3', '0', '2', '0');
INSERT INTO `t_event` VALUES ('10', '事件4', '事件内容', '2017-10-09', null, '3', '1', '2', '0');
INSERT INTO `t_event` VALUES ('11', '事件5', '事件内容', '2017-10-03', null, '5', '0', '2', '1');

-- ----------------------------
-- Table structure for t_placard
-- ----------------------------
DROP TABLE IF EXISTS `t_placard`;
CREATE TABLE `t_placard` (
  `placard_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一标识',
  `placard_title` varchar(50) DEFAULT NULL COMMENT '公告的标题',
  `placard_content` varchar(10000) DEFAULT NULL COMMENT '公告的内容',
  `placard_url` varchar(50) DEFAULT NULL COMMENT '公告logo的地址',
  `user_name` varchar(11) DEFAULT NULL COMMENT '登陆人的id',
  `placard_time` datetime DEFAULT NULL,
  PRIMARY KEY (`placard_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='公告表,发布信息';

-- ----------------------------
-- Records of t_placard
-- ----------------------------
INSERT INTO `t_placard` VALUES ('3', '33', null, '', '5', '2017-09-24 17:51:13');
INSERT INTO `t_placard` VALUES ('4', '的', null, '', '4', '2017-09-25 19:05:18');
INSERT INTO `t_placard` VALUES ('28', '阿达', '131231232', null, 'admin', '2017-09-28 20:31:03');
INSERT INTO `t_placard` VALUES ('29', '啊大苏打', 'sdascsdas四大神兽所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所是大啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊阿啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', '14466453.jpg', 'admin', '2017-09-28 20:36:54');
INSERT INTO `t_placard` VALUES ('30', '321', '3211111111', '97612699.jpg', 'admin', '2017-09-29 08:24:57');
INSERT INTO `t_placard` VALUES ('31', '', '', null, 'admin', '2017-09-29 14:41:09');
INSERT INTO `t_placard` VALUES ('32', '', '', null, 'admin', '2017-09-29 14:41:21');
INSERT INTO `t_placard` VALUES ('33', '', '', null, 'admin', '2017-09-29 14:41:29');
INSERT INTO `t_placard` VALUES ('34', '', '', null, 'admin', '2017-09-29 14:41:39');

-- ----------------------------
-- Table structure for t_record
-- ----------------------------
DROP TABLE IF EXISTS `t_record`;
CREATE TABLE `t_record` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `talk_id` int(11) DEFAULT NULL,
  `record_form` varchar(255) DEFAULT NULL,
  `record_content` varchar(255) DEFAULT NULL,
  `record_time` datetime DEFAULT NULL,
  PRIMARY KEY (`record_id`),
  KEY `FK7BBEBE7CAA96DA84` (`talk_id`),
  CONSTRAINT `FK7BBEBE7CAA96DA84` FOREIGN KEY (`talk_id`) REFERENCES `t_user` (`user_id`),
  CONSTRAINT `talkid` FOREIGN KEY (`talk_id`) REFERENCES `t_event` (`event_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_record
-- ----------------------------
INSERT INTO `t_record` VALUES ('1', '2', '客服', '1123123word-wrap: break-word; word-break: normal;word-wrap: break-word; word-break: normal;word-wrap: break-word; word-break: normal;word-wrap: break-word; word-break: normal;word-wrap: break-word; word-break: normal;', '2017-10-04 00:00:00');
INSERT INTO `t_record` VALUES ('3', '2', '客服', '23123123', '2017-10-09 17:21:40');
INSERT INTO `t_record` VALUES ('4', '2', '客服', '23231231213', '2017-10-09 17:21:45');
INSERT INTO `t_record` VALUES ('5', '2', '客服', '23123123', '2017-10-09 17:21:49');
INSERT INTO `t_record` VALUES ('6', '2', '客服', '3123123123123', '2017-10-09 17:22:03');
INSERT INTO `t_record` VALUES ('7', '2', '客服', '1111', '2017-10-04 18:26:15');
INSERT INTO `t_record` VALUES ('9', '2', '客服', '313321', '2017-10-09 18:59:09');
INSERT INTO `t_record` VALUES ('10', '2', '客服', '231312231', '2017-10-09 18:59:14');
INSERT INTO `t_record` VALUES ('11', '2', '客服', '312123', '2017-10-09 19:03:14');
INSERT INTO `t_record` VALUES ('12', '2', '客服', '23123123', '2017-10-09 19:07:28');
INSERT INTO `t_record` VALUES ('13', '2', '客服', '23123123', '2017-10-09 19:09:00');
INSERT INTO `t_record` VALUES ('14', '2', '客服', 'eqweqwe', '2017-10-09 19:11:25');
INSERT INTO `t_record` VALUES ('15', '2', '客服', 'qwqwewqe', '2017-10-09 19:11:28');
INSERT INTO `t_record` VALUES ('16', '2', '客服', '123321321231', '2017-10-09 19:19:44');
INSERT INTO `t_record` VALUES ('17', '2', '客服', '3123123123123', '2017-10-09 19:19:49');
INSERT INTO `t_record` VALUES ('18', '2', '客服', '213123123', '2017-10-09 19:20:11');
INSERT INTO `t_record` VALUES ('19', '2', '客服', '23123', '2017-10-09 19:22:09');
INSERT INTO `t_record` VALUES ('20', '2', '客服', '213211', '2017-10-09 19:22:31');
INSERT INTO `t_record` VALUES ('21', '2', '客服', '大苏打似的', '2017-10-09 19:23:03');
INSERT INTO `t_record` VALUES ('22', '2', '客服', '达到', '2017-10-09 19:23:10');
INSERT INTO `t_record` VALUES ('23', '2', '客服', '额额 ', '2017-10-09 19:23:59');
INSERT INTO `t_record` VALUES ('24', '2', '客服', '3123213123 ', '2017-10-09 19:25:27');
INSERT INTO `t_record` VALUES ('25', '2', '客服', '问请问请问', '2017-10-09 19:25:58');
INSERT INTO `t_record` VALUES ('26', '2', '客服', '恶气额为', '2017-10-09 19:26:05');
INSERT INTO `t_record` VALUES ('27', '2', '用户', '13123123', '2017-10-09 19:32:45');
INSERT INTO `t_record` VALUES ('28', '2', '用户', '123123123', '2017-10-09 19:33:04');
INSERT INTO `t_record` VALUES ('29', '2', '用户', '3123123231231', '2017-10-09 19:34:38');
INSERT INTO `t_record` VALUES ('30', '2', '用户', '实打实的', '2017-10-09 19:48:46');
INSERT INTO `t_record` VALUES ('31', '2', '用户', '啊倒萨', '2017-10-09 19:48:48');
INSERT INTO `t_record` VALUES ('32', '2', '用户', '大苏打', '2017-10-09 19:51:38');
INSERT INTO `t_record` VALUES ('33', '2', '客服', '12312123123123', '2017-10-09 20:19:49');
INSERT INTO `t_record` VALUES ('34', '2', '客服', '123123123', '2017-10-09 20:26:16');
INSERT INTO `t_record` VALUES ('35', '2', '客服', '2123123123', '2017-10-09 21:57:05');
INSERT INTO `t_record` VALUES ('36', '2', '用户', '3123123123', '2017-10-11 16:43:59');
INSERT INTO `t_record` VALUES ('37', '2', '用户', '312312312', '2017-10-11 16:44:05');

-- ----------------------------
-- Table structure for t_talk
-- ----------------------------
DROP TABLE IF EXISTS `t_talk`;
CREATE TABLE `t_talk` (
  `talk_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一标识',
  `kehu_id` int(11) DEFAULT NULL COMMENT '客户id',
  `kefu_id` int(11) DEFAULT NULL COMMENT '客服id',
  PRIMARY KEY (`talk_id`),
  KEY `kehu` (`kehu_id`),
  KEY `kefu` (`kefu_id`),
  CONSTRAINT `kefu` FOREIGN KEY (`kefu_id`) REFERENCES `t_user` (`user_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `kehu` FOREIGN KEY (`kehu_id`) REFERENCES `t_user` (`user_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会话标识';

-- ----------------------------
-- Records of t_talk
-- ----------------------------

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `user_realname` varchar(20) DEFAULT NULL COMMENT '用户真实姓名',
  `user_password` varchar(20) DEFAULT NULL COMMENT '用户密码',
  `user_priviliage` int(11) DEFAULT NULL,
  `user_name` varchar(20) DEFAULT NULL COMMENT '用户登录名',
  `user_phone` varchar(50) DEFAULT NULL COMMENT '用户电话',
  `user_email` varchar(100) DEFAULT NULL COMMENT '用户邮箱',
  `user_member` int(11) DEFAULT NULL,
  `user_max` int(11) DEFAULT NULL COMMENT '客服最大接单数',
  `user_complete` int(11) DEFAULT NULL COMMENT '客服完成的数',
  `user_departfb` int(11) DEFAULT NULL COMMENT '待部门反馈',
  `user_userfb` int(11) DEFAULT NULL COMMENT '待用户反馈',
  `user_zt` varchar(20) DEFAULT NULL COMMENT 'ÓÃ»§ÃÜÂë',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表，管理员，组长，客服，客户';

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('0', '管理员', 'admin', '3', 'admin', '17855555555', '15151515@sina.com', null, null, null, null, null, '上班');
INSERT INTO `t_user` VALUES ('1', '组长', '1', '2', '1', '17856666666', '15555555@sin.com', null, null, null, null, null, '请假');
INSERT INTO `t_user` VALUES ('2', '客服', '2', '1', '2', '21323123123', '15555555@sin.com', null, null, null, null, null, '上班');
INSERT INTO `t_user` VALUES ('3', '用户', '3', '0', '3', '21323123123', '15555555@sin.com', null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('4', '用户1', '4', '0', '4', '21323123123', '15555555@sin.com', null, null, null, null, null, '上班');
INSERT INTO `t_user` VALUES ('5', '用户2', '5', '0', '5', '21323123123', '15555555@sin.com', null, null, null, null, null, '上班');
INSERT INTO `t_user` VALUES ('6', '客服2', '6', '1', '6', '21323123123', '15555555@sin.com', null, null, null, null, null, '上班');
INSERT INTO `t_user` VALUES ('7', '客服3', '7', '1', '7', '21323123123', '15555555@sin.com', null, null, null, null, null, '上班');
