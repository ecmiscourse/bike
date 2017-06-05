/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50712
Source Host           : localhost:3306
Source Database       : bike

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2017-06-05 17:29:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for person
-- ----------------------------
DROP TABLE IF EXISTS `person`;
CREATE TABLE `person` (
  `id` int(11) NOT NULL,
  `person_name` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of person
-- ----------------------------

-- ----------------------------
-- Table structure for person_role
-- ----------------------------
DROP TABLE IF EXISTS `person_role`;
CREATE TABLE `person_role` (
  `role_sn` varchar(45) NOT NULL,
  `person_id` int(11) NOT NULL,
  PRIMARY KEY (`role_sn`,`person_id`),
  KEY `fk_person_role[union_id]` (`person_id`),
  CONSTRAINT `fk_person_role[role_sn]` FOREIGN KEY (`role_sn`) REFERENCES `role` (`role_sn`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_person_role[union_id]` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of person_role
-- ----------------------------

-- ----------------------------
-- Table structure for resource
-- ----------------------------
DROP TABLE IF EXISTS `resource`;
CREATE TABLE `resource` (
  `id` int(11) NOT NULL,
  `resource_sn` varchar(10) NOT NULL,
  `resource_name` varchar(45) NOT NULL,
  `resource_type` varchar(6) NOT NULL,
  `url` varchar(100) DEFAULT NULL,
  `show_sequence` int(11) NOT NULL,
  `parent_resource_sn` varchar(10) DEFAULT NULL,
  `deleted` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `resource_sn` (`resource_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of resource
-- ----------------------------
INSERT INTO `resource` VALUES ('1', '01', '借车', 'menu', 'borrowBike', '1', null, '\0');
INSERT INTO `resource` VALUES ('2', '02', '还车', 'menu', 'returnBike', '2', null, '\0');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role_sn` varchar(45) NOT NULL,
  `role_name` varchar(45) NOT NULL,
  `role_type` int(11) DEFAULT NULL,
  `deleted` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `role_sn` (`role_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------

-- ----------------------------
-- Table structure for role_resource
-- ----------------------------
DROP TABLE IF EXISTS `role_resource`;
CREATE TABLE `role_resource` (
  `role_sn` varchar(45) NOT NULL,
  `resource_sn` varchar(45) NOT NULL,
  PRIMARY KEY (`role_sn`,`resource_sn`),
  KEY `role_resource_ibfk_254` (`resource_sn`),
  CONSTRAINT `role_resource_ibfk_134` FOREIGN KEY (`role_sn`) REFERENCES `role` (`role_sn`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role_resource_ibfk_254` FOREIGN KEY (`resource_sn`) REFERENCES `resource` (`resource_sn`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_resource
-- ----------------------------
