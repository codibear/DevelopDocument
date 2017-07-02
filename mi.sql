/*
Navicat MySQL Data Transfer

Source Server         : mydata
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : mi

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-07-02 08:23:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for mi_address
-- ----------------------------
DROP TABLE IF EXISTS `mi_address`;
CREATE TABLE `mi_address` (
  `ma_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `ma_name` varchar(10) DEFAULT NULL,
  `ma_general` varchar(255) DEFAULT NULL,
  `ma_detail` varchar(255) DEFAULT NULL,
  `ma_code` int(11) DEFAULT NULL,
  PRIMARY KEY (`ma_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mi_address
-- ----------------------------

-- ----------------------------
-- Table structure for mi_goods
-- ----------------------------
DROP TABLE IF EXISTS `mi_goods`;
CREATE TABLE `mi_goods` (
  `mg_id` int(11) NOT NULL AUTO_INCREMENT,
  `mg_name` varchar(20) NOT NULL,
  `mg_description` varchar(50) NOT NULL,
  `mg_lowprice` int(11) NOT NULL,
  PRIMARY KEY (`mg_id`),
  UNIQUE KEY `mg_name` (`mg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mi_goods
-- ----------------------------

-- ----------------------------
-- Table structure for mi_gvcolor
-- ----------------------------
DROP TABLE IF EXISTS `mi_gvcolor`;
CREATE TABLE `mi_gvcolor` (
  `mgvc_id` int(11) NOT NULL AUTO_INCREMENT,
  `mgv_id` int(11) DEFAULT NULL,
  `mgvc_name` varchar(20) DEFAULT NULL,
  `mgvc_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`mgvc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mi_gvcolor
-- ----------------------------

-- ----------------------------
-- Table structure for mi_gversion
-- ----------------------------
DROP TABLE IF EXISTS `mi_gversion`;
CREATE TABLE `mi_gversion` (
  `mgv_id` int(11) NOT NULL AUTO_INCREMENT,
  `mg_id` int(11) NOT NULL,
  `mgv_name` varchar(50) NOT NULL,
  `mgv_price` int(11) NOT NULL,
  PRIMARY KEY (`mgv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mi_gversion
-- ----------------------------

-- ----------------------------
-- Table structure for mi_order
-- ----------------------------
DROP TABLE IF EXISTS `mi_order`;
CREATE TABLE `mi_order` (
  `mo_id` int(11) NOT NULL AUTO_INCREMENT,
  `ma_id` int(11) DEFAULT NULL,
  `mo_pay` varchar(10) DEFAULT NULL,
  `mo_distribute` varchar(20) DEFAULT NULL,
  `mo_date` datetime DEFAULT NULL,
  `mo_price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`mo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mi_order
-- ----------------------------

-- ----------------------------
-- Table structure for mi_shopcar
-- ----------------------------
DROP TABLE IF EXISTS `mi_shopcar`;
CREATE TABLE `mi_shopcar` (
  `ms_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `mg_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ms_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mi_shopcar
-- ----------------------------

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(10) NOT NULL,
  `user_pwd` varchar(16) NOT NULL,
  `borndate` date NOT NULL,
  `phone` varchar(13) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name` (`user_name`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
