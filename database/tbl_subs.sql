/*
 Navicat Premium Data Transfer

 Source Server         : Mysql
 Source Server Type    : MySQL
 Source Server Version : 100119
 Source Host           : localhost:3306
 Source Schema         : commisoft_modif

 Target Server Type    : MySQL
 Target Server Version : 100119
 File Encoding         : 65001

 Date: 22/01/2020 18:16:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_subs
-- ----------------------------
DROP TABLE IF EXISTS `tbl_subs`;
CREATE TABLE `tbl_subs`  (
  `id_sub` int(11) NOT NULL AUTO_INCREMENT,
  `id_projects` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_systems` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sub_id` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sub_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sub_status` int(11) NOT NULL,
  PRIMARY KEY (`id_sub`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_subs
-- ----------------------------
INSERT INTO `tbl_subs` VALUES (1, '16', '1', 'FG-01', 'Off Gas to Burner', 0);

SET FOREIGN_KEY_CHECKS = 1;
