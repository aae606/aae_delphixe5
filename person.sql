/*
Navicat MySQL Data Transfer

Source Server         : MySQL57
Source Server Version : 50716
Source Host           : 127.0.0.1:3306
Source Database       : person

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2018-09-11 07:59:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for leave_tb
-- ----------------------------
DROP TABLE IF EXISTS `leave_tb`;
CREATE TABLE `leave_tb` (
  `leave_id` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `p_id` int(11) DEFAULT NULL,
  `leave_date` date DEFAULT NULL,
  `leave_type` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`leave_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for leave_type
-- ----------------------------
DROP TABLE IF EXISTS `leave_type`;
CREATE TABLE `leave_type` (
  `id` int(3) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `leave_type_code` varchar(5) DEFAULT NULL,
  `leave_type_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for occupation
-- ----------------------------
DROP TABLE IF EXISTS `occupation`;
CREATE TABLE `occupation` (
  `oc_id` int(3) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `occup_code` varchar(3) DEFAULT NULL,
  `ocup_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`oc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for person
-- ----------------------------
DROP TABLE IF EXISTS `person`;
CREATE TABLE `person` (
  `p_id` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `pre_name` varchar(10) DEFAULT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `occup` varchar(50) DEFAULT NULL,
  `date_sav` date DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pre_name
-- ----------------------------
DROP TABLE IF EXISTS `pre_name`;
CREATE TABLE `pre_name` (
  `id` int(3) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `pre_code` varchar(5) DEFAULT NULL,
  `pre_name` varchar(50) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
