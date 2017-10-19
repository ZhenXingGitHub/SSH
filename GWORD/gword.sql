/*
Navicat MySQL Data Transfer

Source Server         : Word
Source Server Version : 50635
Source Host           : localhost:3306
Source Database       : gword

Target Server Type    : MYSQL
Target Server Version : 50635
File Encoding         : 65001

Date: 2017-06-16 20:44:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for g_activity
-- ----------------------------
DROP TABLE IF EXISTS `g_activity`;
CREATE TABLE `g_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `describes` varchar(255) DEFAULT NULL,
  `smallimg` varchar(255) DEFAULT NULL,
  `bigimg` varchar(255) DEFAULT NULL,
  `declaration` varchar(255) DEFAULT NULL,
  `zhuangtai` int(11) DEFAULT NULL,
  `shijian` varchar(255) DEFAULT NULL,
  `fwflow` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_activity
-- ----------------------------
INSERT INTO `g_activity` VALUES ('1', '绿色地球1', '绿色地球是一个', null, null, '保护爱护地球', '0', '231', '1212');
INSERT INTO `g_activity` VALUES ('7', '绿色地球', '33333333333333333333333333', '33333333333333333333333333', '3333333333333333333333', '33333333333333333333333333', '0', '132', '211212');
INSERT INTO `g_activity` VALUES ('11', '绿色地球2', '222222222222222222222222222222222222222222222222222222222222', '22222222222222222222222', '222222222222222222222222222', '22222222222222222222222', '1', '321', '2121');
INSERT INTO `g_activity` VALUES ('12', '舒服舒服', '222222222222222222222222222222222222222222222222222222222222', '22222222222222222222222', '222222222222222222222222222', '22222222222222222222222', '0', '312', '1212');
INSERT INTO `g_activity` VALUES ('16', '312222222', '222222222222222222222222222222222222222222222222222222222222', '22222222222222222222222', '222222222222222222222222222', '22222222222222222222222', '0', '312', '1');
INSERT INTO `g_activity` VALUES ('17', '312222222', '222222222222222222222222222222222222222222222222222222222222', '22222222222222222222222', '222222222222222222222222222', '22222222222222222222222', '0', '312', '1');
INSERT INTO `g_activity` VALUES ('19', '312222222', '222222222222222222222222222222222222222222222222222222222222', '22222222222222222222222', '222222222222222222222222222', '22222222222222222222222', '0', '312', '1');
INSERT INTO `g_activity` VALUES ('20', '312222222', '222222222222222222222222222222222222222222222222222222222222', '22222222222222222222222', '222222222222222222222222222', '22222222222222222222222', '1', '312', null);
INSERT INTO `g_activity` VALUES ('21', '312222222', '222222222222222222222222222222222222222222222222222222222222', '22222222222222222222222', '222222222222222222222222222', '22222222222222222222222', '0', null, null);
INSERT INTO `g_activity` VALUES ('22', '312222222', '222222222222222222222222222222222222222222222222222222222222', '22222222222222222222222', '222222222222222222222222222', '22222222222222222222222', '1', '2017/06/12 00:46:18', null);
INSERT INTO `g_activity` VALUES ('23', '312222222', '222222222222222222222222222222222222222222222222222222222222', '22222222222222222222222', '222222222222222222222222222', '22222222222222222222222', '1', null, null);
INSERT INTO `g_activity` VALUES ('24', '312222222', '222222222222222222222222222222222222222222222222222222222222', '22222222222222222222222', '222222222222222222222222222', '22222222222222222222222', '1', null, null);
INSERT INTO `g_activity` VALUES ('25', '23111111111', '1111111111111111111111111111', '1111111111111111111111', '11111111111111111111111', '111111111111111111111', '1', null, null);
INSERT INTO `g_activity` VALUES ('26', '3211111', '3333333333333333333333333333333', '11111111111111111111111111111111111111111111', '111111111111111111111111111111111', '11111111111111111111111111111111', '1', '2017/06/12 00:46:14', null);
INSERT INTO `g_activity` VALUES ('27', '3211', '1111111111111111111111111111111', '1111111111111111111', '111111111111111111', '111111111111111111111111', '1', '2017/06/12 00:46:12', null);

-- ----------------------------
-- Table structure for g_admin
-- ----------------------------
DROP TABLE IF EXISTS `g_admin`;
CREATE TABLE `g_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_admin
-- ----------------------------
INSERT INTO `g_admin` VALUES ('1', 'admin', 'admin');

-- ----------------------------
-- Table structure for g_nows
-- ----------------------------
DROP TABLE IF EXISTS `g_nows`;
CREATE TABLE `g_nows` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bigtitle` varchar(255) DEFAULT NULL,
  `smalltitle` varchar(255) DEFAULT NULL,
  `describes` varchar(255) DEFAULT NULL,
  `zhuangtai` int(11) DEFAULT NULL,
  `fwflow` int(11) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `imgs` varchar(255) DEFAULT NULL,
  `shijian` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_nows
-- ----------------------------
INSERT INTO `g_nows` VALUES ('1', 'dasd', '123233232', '国不少地区把阴霾天气现象并入雾一起作为灾害性天气预警预报。统称为“雾霾天气[1]”。3211111111111111111', '0', '321', '223131231.png', null, '2017/06/12 14:15:55');
INSERT INTO `g_nows` VALUES ('3', 'adsasd dasd', '123123123', '国不少地区把阴霾天气现象并入雾一起作为灾害性天气预警预报。统称为“雾霾天气[1]”。', '0', '123', 'D:\\JAVA-文档\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\GWORD2\\Back\\assete\\img/213312.bmp', null, '2017/06/13 23:11:40');
INSERT INTO `g_nows` VALUES ('4', 'adsasd ', '11111111111111111111111', '国不少地区把阴霾天气现象并入雾一起作为灾害性天气预警预报。统称为“雾霾天气[1]”。', '0', '321', '321111111111.bmp', null, '2017/06/12 14:08:22');
INSERT INTO `g_nows` VALUES ('6', 'dasd', '`231', '国不少地区把阴霾天气现象并入雾一起作为灾害性天气预警预报。统称为“雾霾天气[1]”。', '0', '2322', '23', null, '2');
INSERT INTO `g_nows` VALUES ('8', '312312323123asd', '1231111111111111111111', '国不少地区把阴霾天气现象并入雾一起作为灾害性天气预警预报。统称为“雾霾天气[1]”。', '0', '32', 'D:\\JAVA-文档\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\GWORD2\\Back\\assete\\img/312312323123.bmp', null, '2017/06/13 21:25:05');
INSERT INTO `g_nows` VALUES ('9', '请问去翁adsdasdsa', '请问 而且我', '国不少地区把阴霾天气现象并入雾一起作为灾害性天气预警预报。统称为“雾霾天气[1]”。', '0', '321', '请问去翁.bmp', null, '2017/06/13 22:45:51');
INSERT INTO `g_nows` VALUES ('10', 'asd', 'das', '国不少地区把阴霾天气现象并入雾一起作为灾害性天气预警预报。统称为“雾霾天气[1]”。', '0', '2231', '32', '321', '32');
INSERT INTO `g_nows` VALUES ('11', '`23', '234', '国不少地区把阴霾天气现象并入雾一起作为灾害性天气预警预报。统称为“雾霾天气[1]”。', '0', '32', '132', '13', '2');

-- ----------------------------
-- Table structure for g_us
-- ----------------------------
DROP TABLE IF EXISTS `g_us`;
CREATE TABLE `g_us` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `qq` varchar(255) DEFAULT NULL,
  `weixin` varchar(255) DEFAULT NULL,
  `weibo` varchar(255) DEFAULT NULL,
  `dizhi` varchar(255) DEFAULT NULL,
  `miaoshu` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_us
-- ----------------------------
INSERT INTO `g_us` VALUES ('1', 'GWORLD', '3123123123', '123123123123', 'asddasd', 'adsdsa1', 'asdasdas', '1233333333333333333333333213123123');

-- ----------------------------
-- Table structure for g_user
-- ----------------------------
DROP TABLE IF EXISTS `g_user`;
CREATE TABLE `g_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `describes` varchar(255) DEFAULT NULL,
  `activity` varchar(255) DEFAULT NULL,
  `shijian` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_user
-- ----------------------------
INSERT INTO `g_user` VALUES ('1', '23321', '321', '321', '绿色地球', '321');
INSERT INTO `g_user` VALUES ('2', '234', '234', '432', '绿色地球', '123');
INSERT INTO `g_user` VALUES ('3', '32', '23', '23', '绿色地球', '321');
INSERT INTO `g_user` VALUES ('4', '23', '23', '23', '绿色地', '32');
INSERT INTO `g_user` VALUES ('7', '', '', '', '选择活动', null);
INSERT INTO `g_user` VALUES ('8', '', '', '', '选择活动', null);
INSERT INTO `g_user` VALUES ('9', '请问恶趣味群翁', '请问ee阿打算的', ' 请问鹅鹅鹅鹅鹅鹅阿达大大多多多多多多多多多多多多', '绿色地球', '2017/06/14 18:09:26');
INSERT INTO `g_user` VALUES ('10', '请问恶趣味群翁', '请问ee阿打算的', ' 请问鹅鹅鹅鹅鹅鹅阿达大大多多多多多多多多多多多多', '绿色地球', '2017/06/14 18:10:35');
INSERT INTO `g_user` VALUES ('11', '请问恶趣味群翁', '请问ee阿打算的', ' 请问鹅鹅鹅鹅鹅鹅阿达大大多多多多多多多多多多多多', '绿色地球', '2017/06/14 18:11:04');
INSERT INTO `g_user` VALUES ('12', '21333333', '3333333333333333333', '333333333333333333333333333333333333333333', '绿色地球1', '2017/06/14 18:12:11');
INSERT INTO `g_user` VALUES ('13', '阿打算打算大所大', '阿打算所所所所所所所所所所所所所所', '阿达大大多多阿达大大多多多多多多多多多多多多多多多多多多多多多多', '绿色地球1', '2017/06/14 18:12:42');
INSERT INTO `g_user` VALUES ('14', '阿打算打算大所大', '阿打算所所所所所所所所所所所所所所', '阿达大大多多阿达大大多多多多多多多多多多多多多多多多多多多多多多', '绿色地球1', '2017/06/14 18:14:20');
INSERT INTO `g_user` VALUES ('15', '阿打算打算大所大', '阿打算所所所所所所所所所所所所所所', '阿达大大多多阿达大大多多多多多多多多多多多多多多多多多多多多多多', '绿色地球1', '2017/06/14 18:15:08');
INSERT INTO `g_user` VALUES ('16', '12321111', '321111111111', '11111111111111111111111111111111111111111111111111111111111111', '绿色地球', '2017/06/14 18:22:47');
INSERT INTO `g_user` VALUES ('17', '12321111', '321111111111', '11111111111111111111111111111111111111111111111111111111111111', '绿色地球', '2017/06/14 18:23:56');
INSERT INTO `g_user` VALUES ('18', '阿达大大多多多多', '阿达大大多多多多多多多多多', '阿萨德的多多多多多阿打算多多多adsssssss', '绿色地球', '2017/06/14 18:24:45');
INSERT INTO `g_user` VALUES ('19', '爱迪生啊飒飒大大', '31111111111', '11111111111111111111111111111111111111111111111111111111111111111111111', '绿色地球', '2017/06/14 18:25:22');
INSERT INTO `g_user` VALUES ('20', '爱迪生啊飒飒大大', '31111111111', '11111111111111111111111111111111111111111111111111111111111111111111111', '绿色地球', '2017/06/14 18:25:54');
INSERT INTO `g_user` VALUES ('21', '爱迪生啊飒飒大大', '31111111111', '11111111111111111111111111111111111111111111111111111111111111111111111', '绿色地球', '2017/06/14 18:26:14');
INSERT INTO `g_user` VALUES ('22', '3211111', '111111111111111111111', '1111111111111111111111111111111111111111111111111111111111111111111', '绿色地球', '2017/06/14 18:26:23');
