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

 Date: 24/01/2020 20:38:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_punchlist
-- ----------------------------
DROP TABLE IF EXISTS `tbl_punchlist`;
CREATE TABLE `tbl_punchlist`  (
  `id_punch` int(11) NOT NULL AUTO_INCREMENT,
  `punch_id` char(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `id_locations` int(11) NOT NULL,
  `id_subs` int(11) NOT NULL,
  `id_disciplines` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '',
  `id_equipments` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `punch_desc` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `punch_category` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `originator_ctr` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `originator_cpy` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `originator_date` date NULL DEFAULT NULL,
  `verified_ctr` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `verified_cpy` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `verified_date` date NULL DEFAULT NULL,
  `punch_status` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `punch_date` date NOT NULL,
  PRIMARY KEY (`id_punch`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_punchlist
-- ----------------------------
INSERT INTO `tbl_punchlist` VALUES (5, 'PL0001', 1, 1, '8', '2', 'Deskripsi', 'A', 'Bayu', 'Fazri', '2020-01-21', 'Bayu', 'Fazri', '2020-01-23', 'Done', '2020-01-23');

SET FOREIGN_KEY_CHECKS = 1;
