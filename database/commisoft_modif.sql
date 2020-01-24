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

 Date: 23/01/2020 10:47:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_csv
-- ----------------------------
DROP TABLE IF EXISTS `tbl_csv`;
CREATE TABLE `tbl_csv`  (
  `id_csv` int(11) NOT NULL,
  `csv_code` tinyint(1) NOT NULL,
  `csv_file` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_csv
-- ----------------------------
INSERT INTO `tbl_csv` VALUES (1, 1, 'project.csv');
INSERT INTO `tbl_csv` VALUES (2, 1, 'project.csv');
INSERT INTO `tbl_csv` VALUES (3, 1, 'project.csv');
INSERT INTO `tbl_csv` VALUES (4, 1, 'project.csv');
INSERT INTO `tbl_csv` VALUES (5, 1, 'project.csv');
INSERT INTO `tbl_csv` VALUES (6, 1, 'project.csv');
INSERT INTO `tbl_csv` VALUES (7, 1, 'project.csv');
INSERT INTO `tbl_csv` VALUES (8, 2, 'system.csv');
INSERT INTO `tbl_csv` VALUES (9, 8, 'itemno.csv');
INSERT INTO `tbl_csv` VALUES (10, 8, 'itemno.csv');
INSERT INTO `tbl_csv` VALUES (11, 8, 'itemno.csv');
INSERT INTO `tbl_csv` VALUES (12, 6, 'form.csv');
INSERT INTO `tbl_csv` VALUES (13, 6, 'form.csv');
INSERT INTO `tbl_csv` VALUES (14, 6, 'form.csv');
INSERT INTO `tbl_csv` VALUES (15, 8, 'itemno.csv');
INSERT INTO `tbl_csv` VALUES (48, 6, 'itemtype.csv');
INSERT INTO `tbl_csv` VALUES (47, 4, 'discipline.csv');
INSERT INTO `tbl_csv` VALUES (46, 4, 'discipline.csv');
INSERT INTO `tbl_csv` VALUES (45, 3, 'subsystem.csv');
INSERT INTO `tbl_csv` VALUES (44, 2, 'system.csv');
INSERT INTO `tbl_csv` VALUES (43, 1, 'project.csv');
INSERT INTO `tbl_csv` VALUES (42, 3, 'subsystem.csv');
INSERT INTO `tbl_csv` VALUES (41, 2, 'system.csv');
INSERT INTO `tbl_csv` VALUES (40, 3, 'subsystem.csv');
INSERT INTO `tbl_csv` VALUES (39, 2, 'system.csv');
INSERT INTO `tbl_csv` VALUES (38, 3, 'subsystem.csv');
INSERT INTO `tbl_csv` VALUES (37, 2, 'system.csv');
INSERT INTO `tbl_csv` VALUES (36, 1, 'project.csv');
INSERT INTO `tbl_csv` VALUES (61, 2, 'system.csv');
INSERT INTO `tbl_csv` VALUES (32, 0, 'system.csv');
INSERT INTO `tbl_csv` VALUES (33, 2, 'system.csv');
INSERT INTO `tbl_csv` VALUES (34, 2, 'system.csv');
INSERT INTO `tbl_csv` VALUES (35, 1, 'project.csv');
INSERT INTO `tbl_csv` VALUES (49, 6, 'itemtype.csv');
INSERT INTO `tbl_csv` VALUES (50, 6, 'itemtype.csv');
INSERT INTO `tbl_csv` VALUES (51, 6, 'itemtype.csv');
INSERT INTO `tbl_csv` VALUES (52, 1, 'project.csv');
INSERT INTO `tbl_csv` VALUES (53, 2, 'system.csv');
INSERT INTO `tbl_csv` VALUES (54, 2, 'system.csv');
INSERT INTO `tbl_csv` VALUES (55, 2, 'system.csv');
INSERT INTO `tbl_csv` VALUES (56, 2, 'system.csv');
INSERT INTO `tbl_csv` VALUES (57, 2, 'system.csv');
INSERT INTO `tbl_csv` VALUES (58, 2, 'system.csv');
INSERT INTO `tbl_csv` VALUES (59, 2, 'system.csv');
INSERT INTO `tbl_csv` VALUES (60, 2, 'system.csv');
INSERT INTO `tbl_csv` VALUES (62, 2, 'system.csv');
INSERT INTO `tbl_csv` VALUES (63, 2, 'system.csv');
INSERT INTO `tbl_csv` VALUES (64, 2, 'system.csv');
INSERT INTO `tbl_csv` VALUES (65, 2, 'system.csv');
INSERT INTO `tbl_csv` VALUES (66, 2, 'system.csv');
INSERT INTO `tbl_csv` VALUES (67, 2, 'system.csv');
INSERT INTO `tbl_csv` VALUES (68, 2, 'system.csv');
INSERT INTO `tbl_csv` VALUES (69, 2, 'system.csv');
INSERT INTO `tbl_csv` VALUES (70, 2, 'system.csv');
INSERT INTO `tbl_csv` VALUES (71, 2, 'system.csv');
INSERT INTO `tbl_csv` VALUES (72, 2, 'system.csv');
INSERT INTO `tbl_csv` VALUES (73, 2, 'system.csv');
INSERT INTO `tbl_csv` VALUES (74, 2, 'system.csv');
INSERT INTO `tbl_csv` VALUES (75, 2, 'system.csv');
INSERT INTO `tbl_csv` VALUES (76, 2, 'system.csv');
INSERT INTO `tbl_csv` VALUES (77, 2, 'system.csv');
INSERT INTO `tbl_csv` VALUES (78, 2, 'system.csv');
INSERT INTO `tbl_csv` VALUES (79, 2, 'system.csv');
INSERT INTO `tbl_csv` VALUES (80, 2, 'system.csv');
INSERT INTO `tbl_csv` VALUES (81, 2, 'system.csv');
INSERT INTO `tbl_csv` VALUES (82, 3, 'subsystem.csv');
INSERT INTO `tbl_csv` VALUES (83, 8, 'item.csv');
INSERT INTO `tbl_csv` VALUES (84, 8, 'item.csv');
INSERT INTO `tbl_csv` VALUES (85, 8, 'item.csv');
INSERT INTO `tbl_csv` VALUES (86, 8, 'item.csv');
INSERT INTO `tbl_csv` VALUES (87, 8, 'item.csv');
INSERT INTO `tbl_csv` VALUES (88, 8, 'item.csv');
INSERT INTO `tbl_csv` VALUES (89, 8, 'item.csv');
INSERT INTO `tbl_csv` VALUES (90, 8, 'item.csv');
INSERT INTO `tbl_csv` VALUES (91, 8, 'item.csv');
INSERT INTO `tbl_csv` VALUES (92, 8, 'item.csv');
INSERT INTO `tbl_csv` VALUES (93, 8, 'item.csv');
INSERT INTO `tbl_csv` VALUES (94, 8, 'item.csv');
INSERT INTO `tbl_csv` VALUES (95, 8, 'item.csv');
INSERT INTO `tbl_csv` VALUES (96, 8, 'item.csv');
INSERT INTO `tbl_csv` VALUES (97, 8, 'item.csv');
INSERT INTO `tbl_csv` VALUES (98, 8, 'item.csv');
INSERT INTO `tbl_csv` VALUES (99, 8, 'item.csv');
INSERT INTO `tbl_csv` VALUES (100, 8, 'item.csv');
INSERT INTO `tbl_csv` VALUES (101, 8, 'item.csv');

-- ----------------------------
-- Table structure for tbl_disciplines
-- ----------------------------
DROP TABLE IF EXISTS `tbl_disciplines`;
CREATE TABLE `tbl_disciplines`  (
  `id_discipline` int(11) NOT NULL AUTO_INCREMENT,
  `id_projects` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `discipline_id` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `discipline_name` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `discipline_status` int(11) NOT NULL,
  PRIMARY KEY (`id_discipline`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_disciplines
-- ----------------------------
INSERT INTO `tbl_disciplines` VALUES (1, '16', 'MEC', 'MECHANICAL', 0);
INSERT INTO `tbl_disciplines` VALUES (2, '16', 'INST', 'INSTRUMENT', 0);
INSERT INTO `tbl_disciplines` VALUES (3, '16', 'ELE', 'ELECTRIC', 0);
INSERT INTO `tbl_disciplines` VALUES (4, '16', 'PIP', 'PIPING', 0);
INSERT INTO `tbl_disciplines` VALUES (5, '16', 'CIV', 'CIVIL', 0);
INSERT INTO `tbl_disciplines` VALUES (6, '16', 'STR', 'STRUCTURE', 0);
INSERT INTO `tbl_disciplines` VALUES (7, '16', 'TEL', 'TELCOMS', 0);
INSERT INTO `tbl_disciplines` VALUES (8, '16', 'SAF', 'SAFETY', 0);

-- ----------------------------
-- Table structure for tbl_disciplines_log
-- ----------------------------
DROP TABLE IF EXISTS `tbl_disciplines_log`;
CREATE TABLE `tbl_disciplines_log`  (
  `id_discipline_log` int(11) NOT NULL AUTO_INCREMENT,
  `id_disciplines` int(11) NOT NULL,
  `discipline_id` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `discipline_name` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_users` int(11) NOT NULL,
  `note` enum('add','update','delete','restore') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `datetime` datetime(0) NOT NULL,
  PRIMARY KEY (`id_discipline_log`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_disciplines_log
-- ----------------------------
INSERT INTO `tbl_disciplines_log` VALUES (1, 1, 'MEC', 'MECHANICAL', 13, 'add', '2020-01-17 08:30:33');
INSERT INTO `tbl_disciplines_log` VALUES (2, 2, 'INST', 'INSTRUMENT', 13, 'add', '2020-01-17 08:30:33');
INSERT INTO `tbl_disciplines_log` VALUES (3, 3, 'ELE', 'ELECTRIC', 13, 'add', '2020-01-17 08:30:33');
INSERT INTO `tbl_disciplines_log` VALUES (4, 4, 'PIP', 'PIPING', 13, 'add', '2020-01-17 08:30:33');
INSERT INTO `tbl_disciplines_log` VALUES (5, 5, 'CIV', 'CIVIL', 13, 'add', '2020-01-17 08:30:33');
INSERT INTO `tbl_disciplines_log` VALUES (6, 6, 'STR', 'STRUCTURE', 13, 'add', '2020-01-17 08:30:33');
INSERT INTO `tbl_disciplines_log` VALUES (7, 7, 'TEL', 'TELCOMS', 13, 'add', '2020-01-17 08:30:33');
INSERT INTO `tbl_disciplines_log` VALUES (8, 8, 'SAF', 'SAFETY', 13, 'add', '2020-01-17 08:30:33');

-- ----------------------------
-- Table structure for tbl_equipments
-- ----------------------------
DROP TABLE IF EXISTS `tbl_equipments`;
CREATE TABLE `tbl_equipments`  (
  `id_equipment` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_projects` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_systems` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_subs` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_items` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `equipment_no` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `equipment_desc` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_equipment`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_equipments
-- ----------------------------
INSERT INTO `tbl_equipments` VALUES (1, '16', '1', '1', '1', 'P01-VSD-M-B6412.01', 'from SS3-MDP-302 to VSD-M-B6412.01');
INSERT INTO `tbl_equipments` VALUES (2, '16', '1', '1', '1', 'P01-VSD-M-B6412.02', 'from SS3-MDP-302 to VSD-M-B6412.02');

-- ----------------------------
-- Table structure for tbl_files
-- ----------------------------
DROP TABLE IF EXISTS `tbl_files`;
CREATE TABLE `tbl_files`  (
  `file_id` tinyint(1) NOT NULL,
  `file_type` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`file_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_files
-- ----------------------------
INSERT INTO `tbl_files` VALUES (1, 'Import Project');
INSERT INTO `tbl_files` VALUES (2, 'Import System');
INSERT INTO `tbl_files` VALUES (3, 'Import Sub System');
INSERT INTO `tbl_files` VALUES (4, 'Import Discipline');
INSERT INTO `tbl_files` VALUES (5, 'Import Location');
INSERT INTO `tbl_files` VALUES (6, 'Import Item Type');
INSERT INTO `tbl_files` VALUES (7, 'Import Form No');
INSERT INTO `tbl_files` VALUES (8, 'Import Item No');

-- ----------------------------
-- Table structure for tbl_form_progress
-- ----------------------------
DROP TABLE IF EXISTS `tbl_form_progress`;
CREATE TABLE `tbl_form_progress`  (
  `pro_id` bigint(20) NOT NULL,
  `pro_index_id` int(11) NOT NULL,
  `pro_form_no` int(11) NOT NULL,
  `pro_progress` int(11) NOT NULL DEFAULT 0,
  `pro_date` date NOT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_form_progress
-- ----------------------------
INSERT INTO `tbl_form_progress` VALUES (1842, 31, 36, 100, '2018-02-09');
INSERT INTO `tbl_form_progress` VALUES (2285, 92, 93, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2282, 83, 93, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (1542, 1, 19, 100, '2018-02-23');
INSERT INTO `tbl_form_progress` VALUES (1543, 1, 36, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (1544, 2, 19, 100, '2018-03-13');
INSERT INTO `tbl_form_progress` VALUES (1545, 2, 36, 100, '2018-02-23');
INSERT INTO `tbl_form_progress` VALUES (1546, 3, 19, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (1547, 3, 36, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (1548, 4, 19, 100, '2018-03-01');
INSERT INTO `tbl_form_progress` VALUES (1549, 4, 36, 100, '2018-03-01');
INSERT INTO `tbl_form_progress` VALUES (1550, 5, 19, 100, '2018-03-01');
INSERT INTO `tbl_form_progress` VALUES (1551, 5, 36, 100, '2018-03-01');
INSERT INTO `tbl_form_progress` VALUES (1552, 6, 19, 100, '2018-03-01');
INSERT INTO `tbl_form_progress` VALUES (1553, 6, 36, 100, '2018-03-01');
INSERT INTO `tbl_form_progress` VALUES (1554, 7, 19, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (1555, 7, 36, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (1560, 10, 19, 100, '2018-03-01');
INSERT INTO `tbl_form_progress` VALUES (1561, 10, 36, 100, '2018-03-01');
INSERT INTO `tbl_form_progress` VALUES (1562, 11, 19, 100, '2018-03-01');
INSERT INTO `tbl_form_progress` VALUES (1563, 11, 36, 100, '2018-03-01');
INSERT INTO `tbl_form_progress` VALUES (1564, 12, 19, 100, '2018-03-01');
INSERT INTO `tbl_form_progress` VALUES (1565, 12, 36, 100, '2018-03-01');
INSERT INTO `tbl_form_progress` VALUES (1566, 13, 19, 100, '2018-03-01');
INSERT INTO `tbl_form_progress` VALUES (1567, 13, 36, 100, '2018-03-01');
INSERT INTO `tbl_form_progress` VALUES (1568, 14, 19, 100, '2018-03-01');
INSERT INTO `tbl_form_progress` VALUES (1569, 14, 36, 100, '2018-03-01');
INSERT INTO `tbl_form_progress` VALUES (1570, 15, 19, 100, '2018-03-01');
INSERT INTO `tbl_form_progress` VALUES (1571, 15, 36, 100, '2018-03-01');
INSERT INTO `tbl_form_progress` VALUES (1572, 16, 19, 100, '2018-03-01');
INSERT INTO `tbl_form_progress` VALUES (1573, 16, 36, 100, '2018-03-01');
INSERT INTO `tbl_form_progress` VALUES (1574, 17, 19, 100, '2018-03-01');
INSERT INTO `tbl_form_progress` VALUES (1575, 17, 36, 100, '2018-03-01');
INSERT INTO `tbl_form_progress` VALUES (1576, 18, 19, 100, '2018-03-01');
INSERT INTO `tbl_form_progress` VALUES (1577, 18, 36, 100, '2018-03-01');
INSERT INTO `tbl_form_progress` VALUES (1844, 19, 53, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (1843, 19, 52, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (1846, 20, 53, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (1845, 20, 52, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (1582, 21, 19, 100, '2018-03-01');
INSERT INTO `tbl_form_progress` VALUES (1583, 21, 36, 100, '2018-03-01');
INSERT INTO `tbl_form_progress` VALUES (1836, 22, 36, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (1835, 22, 19, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (1848, 23, 53, 100, '2018-02-23');
INSERT INTO `tbl_form_progress` VALUES (1847, 23, 52, 100, '2018-02-23');
INSERT INTO `tbl_form_progress` VALUES (1850, 24, 53, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (1849, 24, 52, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (1590, 25, 19, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (1591, 25, 36, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (1839, 26, 19, 100, '2018-02-09');
INSERT INTO `tbl_form_progress` VALUES (1852, 27, 53, 100, '2018-02-23');
INSERT INTO `tbl_form_progress` VALUES (1851, 27, 52, 100, '2018-02-23');
INSERT INTO `tbl_form_progress` VALUES (1854, 28, 53, 100, '2018-02-23');
INSERT INTO `tbl_form_progress` VALUES (1853, 28, 52, 100, '2018-02-23');
INSERT INTO `tbl_form_progress` VALUES (1598, 29, 19, 100, '2018-02-09');
INSERT INTO `tbl_form_progress` VALUES (1599, 29, 36, 100, '2018-02-09');
INSERT INTO `tbl_form_progress` VALUES (1856, 30, 53, 100, '2018-02-23');
INSERT INTO `tbl_form_progress` VALUES (1855, 30, 52, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (1840, 26, 36, 100, '2018-02-09');
INSERT INTO `tbl_form_progress` VALUES (1841, 31, 19, 100, '2018-02-09');
INSERT INTO `tbl_form_progress` VALUES (1858, 32, 53, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (1857, 32, 52, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (1606, 33, 19, 100, '2018-02-09');
INSERT INTO `tbl_form_progress` VALUES (1607, 33, 36, 100, '2018-02-09');
INSERT INTO `tbl_form_progress` VALUES (1860, 34, 53, 100, '2018-02-15');
INSERT INTO `tbl_form_progress` VALUES (1859, 34, 52, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (1610, 35, 19, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (1611, 35, 36, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (1862, 36, 53, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (1861, 36, 52, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (1614, 37, 19, 100, '2018-02-09');
INSERT INTO `tbl_form_progress` VALUES (1615, 37, 36, 100, '2018-02-09');
INSERT INTO `tbl_form_progress` VALUES (1864, 38, 53, 100, '2018-02-23');
INSERT INTO `tbl_form_progress` VALUES (1863, 38, 52, 100, '2018-02-23');
INSERT INTO `tbl_form_progress` VALUES (1618, 39, 19, 100, '2018-02-09');
INSERT INTO `tbl_form_progress` VALUES (1619, 39, 36, 100, '2018-02-09');
INSERT INTO `tbl_form_progress` VALUES (1866, 40, 53, 100, '2018-02-23');
INSERT INTO `tbl_form_progress` VALUES (1865, 40, 52, 100, '2018-02-23');
INSERT INTO `tbl_form_progress` VALUES (1622, 41, 19, 100, '2018-02-09');
INSERT INTO `tbl_form_progress` VALUES (1623, 41, 36, 100, '2018-02-09');
INSERT INTO `tbl_form_progress` VALUES (1624, 42, 19, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (1625, 42, 36, 100, '2018-02-09');
INSERT INTO `tbl_form_progress` VALUES (1868, 43, 53, 100, '2018-02-23');
INSERT INTO `tbl_form_progress` VALUES (1867, 43, 52, 100, '2018-02-23');
INSERT INTO `tbl_form_progress` VALUES (1628, 44, 19, 100, '2018-02-09');
INSERT INTO `tbl_form_progress` VALUES (1629, 44, 36, 100, '2018-02-09');
INSERT INTO `tbl_form_progress` VALUES (1870, 45, 53, 100, '2018-02-23');
INSERT INTO `tbl_form_progress` VALUES (1869, 45, 52, 100, '2018-02-23');
INSERT INTO `tbl_form_progress` VALUES (1872, 46, 53, 100, '2018-02-23');
INSERT INTO `tbl_form_progress` VALUES (1871, 46, 52, 100, '2018-02-23');
INSERT INTO `tbl_form_progress` VALUES (1634, 47, 19, 100, '2018-02-09');
INSERT INTO `tbl_form_progress` VALUES (1635, 47, 36, 100, '2018-02-09');
INSERT INTO `tbl_form_progress` VALUES (2159, 239, 25, 100, '2018-01-25');
INSERT INTO `tbl_form_progress` VALUES (2158, 239, 24, 100, '2018-02-25');
INSERT INTO `tbl_form_progress` VALUES (2157, 238, 25, 100, '2018-01-25');
INSERT INTO `tbl_form_progress` VALUES (2293, 241, 94, 0, '2018-03-01');
INSERT INTO `tbl_form_progress` VALUES (2292, 241, 10, 100, '2018-02-23');
INSERT INTO `tbl_form_progress` VALUES (2156, 238, 24, 100, '2018-02-25');
INSERT INTO `tbl_form_progress` VALUES (2155, 237, 25, 100, '2018-01-25');
INSERT INTO `tbl_form_progress` VALUES (2154, 237, 24, 100, '2018-02-25');
INSERT INTO `tbl_form_progress` VALUES (2153, 236, 49, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2291, 64, 93, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2288, 57, 93, 100, '2018-02-21');
INSERT INTO `tbl_form_progress` VALUES (2287, 57, 16, 0, '0000-00-00');
INSERT INTO `tbl_form_progress` VALUES (2286, 57, 15, 100, '2018-01-16');
INSERT INTO `tbl_form_progress` VALUES (2150, 233, 49, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2149, 232, 49, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2148, 231, 49, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2147, 230, 49, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2272, 240, 54, 100, '2018-02-23');
INSERT INTO `tbl_form_progress` VALUES (2290, 64, 16, 0, '0000-00-00');
INSERT INTO `tbl_form_progress` VALUES (2289, 64, 15, 100, '2018-01-16');
INSERT INTO `tbl_form_progress` VALUES (2275, 76, 93, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (1914, 68, 90, 100, '2018-02-23');
INSERT INTO `tbl_form_progress` VALUES (1932, 69, 80, 100, '2018-02-24');
INSERT INTO `tbl_form_progress` VALUES (1930, 70, 54, 100, '2018-02-23');
INSERT INTO `tbl_form_progress` VALUES (1931, 71, 54, 0, '0000-00-00');
INSERT INTO `tbl_form_progress` VALUES (1933, 72, 80, 100, '2018-02-23');
INSERT INTO `tbl_form_progress` VALUES (1934, 74, 3, 100, '2018-02-23');
INSERT INTO `tbl_form_progress` VALUES (2274, 76, 16, 100, '2018-03-03');
INSERT INTO `tbl_form_progress` VALUES (2273, 76, 15, 100, '2018-02-16');
INSERT INTO `tbl_form_progress` VALUES (2281, 83, 16, 100, '2018-03-03');
INSERT INTO `tbl_form_progress` VALUES (2280, 83, 15, 100, '2018-02-16');
INSERT INTO `tbl_form_progress` VALUES (2284, 92, 16, 100, '2018-03-03');
INSERT INTO `tbl_form_progress` VALUES (2283, 92, 15, 100, '2018-02-16');
INSERT INTO `tbl_form_progress` VALUES (2229, 114, 92, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2228, 114, 91, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2227, 114, 87, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2226, 114, 85, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2223, 113, 92, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2222, 113, 91, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2221, 113, 87, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2220, 113, 85, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2217, 112, 92, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2216, 112, 91, 100, '2018-02-20');
INSERT INTO `tbl_form_progress` VALUES (2215, 112, 87, 100, '2018-02-15');
INSERT INTO `tbl_form_progress` VALUES (2214, 112, 85, 100, '2018-02-15');
INSERT INTO `tbl_form_progress` VALUES (2181, 108, 92, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2180, 108, 91, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2179, 108, 87, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2178, 108, 85, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2211, 111, 92, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2210, 111, 91, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2209, 111, 87, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2208, 111, 85, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2205, 110, 92, 100, '2018-02-23');
INSERT INTO `tbl_form_progress` VALUES (2204, 110, 91, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2203, 110, 87, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2202, 110, 85, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2199, 109, 92, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2198, 109, 91, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2197, 109, 87, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2196, 109, 85, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (1820, 122, 88, 0, '0000-00-00');
INSERT INTO `tbl_form_progress` VALUES (1819, 122, 89, 0, '0000-00-00');
INSERT INTO `tbl_form_progress` VALUES (1824, 123, 88, 0, '0000-00-00');
INSERT INTO `tbl_form_progress` VALUES (1823, 123, 89, 0, '0000-00-00');
INSERT INTO `tbl_form_progress` VALUES (2177, 108, 88, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2176, 108, 89, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2201, 110, 88, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2200, 110, 89, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2207, 111, 88, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2206, 111, 89, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2195, 109, 88, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2194, 109, 89, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2213, 112, 88, 100, '2018-02-03');
INSERT INTO `tbl_form_progress` VALUES (2212, 112, 89, 100, '2018-02-20');
INSERT INTO `tbl_form_progress` VALUES (2219, 113, 88, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2218, 113, 89, 100, '2018-02-15');
INSERT INTO `tbl_form_progress` VALUES (2237, 116, 88, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2236, 116, 89, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2243, 117, 88, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2242, 117, 89, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2249, 118, 88, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2248, 118, 89, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2255, 119, 88, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2254, 119, 89, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2261, 120, 88, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2260, 120, 89, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2267, 121, 88, 100, '2018-02-23');
INSERT INTO `tbl_form_progress` VALUES (2266, 121, 89, 100, '2018-03-02');
INSERT INTO `tbl_form_progress` VALUES (1821, 122, 85, 0, '0000-00-00');
INSERT INTO `tbl_form_progress` VALUES (1822, 122, 87, 0, '0000-00-00');
INSERT INTO `tbl_form_progress` VALUES (1825, 123, 85, 0, '0000-00-00');
INSERT INTO `tbl_form_progress` VALUES (1826, 123, 87, 0, '0000-00-00');
INSERT INTO `tbl_form_progress` VALUES (2225, 114, 88, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2224, 114, 89, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2231, 115, 88, 100, '2018-02-03');
INSERT INTO `tbl_form_progress` VALUES (2230, 115, 89, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2232, 115, 85, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2233, 115, 87, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2234, 115, 91, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2235, 115, 92, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2238, 116, 85, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2239, 116, 87, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2240, 116, 91, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2241, 116, 92, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2244, 117, 85, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2245, 117, 87, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2246, 117, 91, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2247, 117, 92, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2250, 118, 85, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2251, 118, 87, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2252, 118, 91, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2253, 118, 92, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2256, 119, 85, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2257, 119, 87, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2258, 119, 91, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2259, 119, 92, 100, '2018-02-23');
INSERT INTO `tbl_form_progress` VALUES (2262, 120, 85, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2263, 120, 87, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2264, 120, 91, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2265, 120, 92, 100, '2018-02-23');
INSERT INTO `tbl_form_progress` VALUES (2268, 121, 85, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2269, 121, 87, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2270, 121, 91, 100, '2018-02-22');
INSERT INTO `tbl_form_progress` VALUES (2271, 121, 92, 100, '2018-02-23');

-- ----------------------------
-- Table structure for tbl_forms
-- ----------------------------
DROP TABLE IF EXISTS `tbl_forms`;
CREATE TABLE `tbl_forms`  (
  `id_form` bigint(11) NOT NULL AUTO_INCREMENT,
  `id_projects` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_disciplines` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_items` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_templates` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `template_type` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_form`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_forms
-- ----------------------------
INSERT INTO `tbl_forms` VALUES (1, '16', '1', '1', '1', '1');
INSERT INTO `tbl_forms` VALUES (2, '16', '8', '1', '1', 'Test Sheet');
INSERT INTO `tbl_forms` VALUES (3, '16', '8', '1', '3', 'Test Sheet');

-- ----------------------------
-- Table structure for tbl_hak_akses
-- ----------------------------
DROP TABLE IF EXISTS `tbl_hak_akses`;
CREATE TABLE `tbl_hak_akses`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user_level` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 134 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_hak_akses
-- ----------------------------
INSERT INTO `tbl_hak_akses` VALUES (1, 1, 3);
INSERT INTO `tbl_hak_akses` VALUES (2, 1, 1);
INSERT INTO `tbl_hak_akses` VALUES (3, 1, 2);
INSERT INTO `tbl_hak_akses` VALUES (4, 1, 23);
INSERT INTO `tbl_hak_akses` VALUES (5, 1, 27);
INSERT INTO `tbl_hak_akses` VALUES (6, 1, 32);
INSERT INTO `tbl_hak_akses` VALUES (7, 1, 40);
INSERT INTO `tbl_hak_akses` VALUES (8, 1, 64);
INSERT INTO `tbl_hak_akses` VALUES (9, 1, 66);
INSERT INTO `tbl_hak_akses` VALUES (10, 1, 65);
INSERT INTO `tbl_hak_akses` VALUES (11, 1, 68);
INSERT INTO `tbl_hak_akses` VALUES (12, 1, 67);
INSERT INTO `tbl_hak_akses` VALUES (13, 1, 69);
INSERT INTO `tbl_hak_akses` VALUES (14, 1, 70);
INSERT INTO `tbl_hak_akses` VALUES (15, 1, 71);
INSERT INTO `tbl_hak_akses` VALUES (16, 1, 72);
INSERT INTO `tbl_hak_akses` VALUES (17, 1, 73);
INSERT INTO `tbl_hak_akses` VALUES (18, 1, 74);
INSERT INTO `tbl_hak_akses` VALUES (19, 1, 75);
INSERT INTO `tbl_hak_akses` VALUES (21, 1, 77);
INSERT INTO `tbl_hak_akses` VALUES (22, 1, 78);
INSERT INTO `tbl_hak_akses` VALUES (23, 1, 79);
INSERT INTO `tbl_hak_akses` VALUES (24, 1, 80);
INSERT INTO `tbl_hak_akses` VALUES (25, 1, 81);
INSERT INTO `tbl_hak_akses` VALUES (26, 1, 82);
INSERT INTO `tbl_hak_akses` VALUES (27, 1, 83);
INSERT INTO `tbl_hak_akses` VALUES (28, 1, 84);
INSERT INTO `tbl_hak_akses` VALUES (29, 1, 76);
INSERT INTO `tbl_hak_akses` VALUES (30, 1, 85);
INSERT INTO `tbl_hak_akses` VALUES (31, 1, 86);
INSERT INTO `tbl_hak_akses` VALUES (32, 1, 87);
INSERT INTO `tbl_hak_akses` VALUES (33, 1, 88);
INSERT INTO `tbl_hak_akses` VALUES (34, 1, 89);
INSERT INTO `tbl_hak_akses` VALUES (35, 1, 90);
INSERT INTO `tbl_hak_akses` VALUES (36, 1, 91);
INSERT INTO `tbl_hak_akses` VALUES (37, 1, 92);
INSERT INTO `tbl_hak_akses` VALUES (38, 1, 93);
INSERT INTO `tbl_hak_akses` VALUES (39, 1, 94);
INSERT INTO `tbl_hak_akses` VALUES (40, 1, 95);
INSERT INTO `tbl_hak_akses` VALUES (41, 1, 96);
INSERT INTO `tbl_hak_akses` VALUES (42, 1, 97);
INSERT INTO `tbl_hak_akses` VALUES (43, 1, 98);
INSERT INTO `tbl_hak_akses` VALUES (44, 1, 99);
INSERT INTO `tbl_hak_akses` VALUES (45, 1, 100);
INSERT INTO `tbl_hak_akses` VALUES (46, 1, 101);
INSERT INTO `tbl_hak_akses` VALUES (47, 1, 102);
INSERT INTO `tbl_hak_akses` VALUES (48, 1, 103);
INSERT INTO `tbl_hak_akses` VALUES (49, 1, 104);
INSERT INTO `tbl_hak_akses` VALUES (50, 1, 105);
INSERT INTO `tbl_hak_akses` VALUES (51, 1, 107);
INSERT INTO `tbl_hak_akses` VALUES (54, 1, 134);
INSERT INTO `tbl_hak_akses` VALUES (55, 1, 116);
INSERT INTO `tbl_hak_akses` VALUES (56, 1, 117);
INSERT INTO `tbl_hak_akses` VALUES (59, 1, 111);
INSERT INTO `tbl_hak_akses` VALUES (60, 1, 112);
INSERT INTO `tbl_hak_akses` VALUES (61, 1, 114);
INSERT INTO `tbl_hak_akses` VALUES (78, 1, 110);
INSERT INTO `tbl_hak_akses` VALUES (79, 1, 109);
INSERT INTO `tbl_hak_akses` VALUES (81, 1, 115);
INSERT INTO `tbl_hak_akses` VALUES (82, 1, 113);
INSERT INTO `tbl_hak_akses` VALUES (83, 1, 120);
INSERT INTO `tbl_hak_akses` VALUES (84, 1, 118);
INSERT INTO `tbl_hak_akses` VALUES (85, 1, 121);
INSERT INTO `tbl_hak_akses` VALUES (86, 1, 122);
INSERT INTO `tbl_hak_akses` VALUES (87, 1, 123);
INSERT INTO `tbl_hak_akses` VALUES (88, 1, 124);
INSERT INTO `tbl_hak_akses` VALUES (89, 1, 126);
INSERT INTO `tbl_hak_akses` VALUES (90, 1, 125);
INSERT INTO `tbl_hak_akses` VALUES (91, 1, 127);
INSERT INTO `tbl_hak_akses` VALUES (92, 1, 128);
INSERT INTO `tbl_hak_akses` VALUES (93, 1, 129);
INSERT INTO `tbl_hak_akses` VALUES (94, 1, 130);
INSERT INTO `tbl_hak_akses` VALUES (95, 1, 131);
INSERT INTO `tbl_hak_akses` VALUES (97, 1, 133);
INSERT INTO `tbl_hak_akses` VALUES (98, 1, 132);
INSERT INTO `tbl_hak_akses` VALUES (100, 1, 108);
INSERT INTO `tbl_hak_akses` VALUES (102, 2, 3);
INSERT INTO `tbl_hak_akses` VALUES (103, 2, 23);
INSERT INTO `tbl_hak_akses` VALUES (104, 2, 27);
INSERT INTO `tbl_hak_akses` VALUES (105, 2, 32);
INSERT INTO `tbl_hak_akses` VALUES (106, 2, 40);
INSERT INTO `tbl_hak_akses` VALUES (107, 2, 107);
INSERT INTO `tbl_hak_akses` VALUES (109, 2, 110);
INSERT INTO `tbl_hak_akses` VALUES (111, 2, 111);
INSERT INTO `tbl_hak_akses` VALUES (112, 2, 112);
INSERT INTO `tbl_hak_akses` VALUES (113, 2, 113);
INSERT INTO `tbl_hak_akses` VALUES (114, 2, 114);
INSERT INTO `tbl_hak_akses` VALUES (115, 2, 115);
INSERT INTO `tbl_hak_akses` VALUES (116, 2, 116);
INSERT INTO `tbl_hak_akses` VALUES (117, 2, 117);
INSERT INTO `tbl_hak_akses` VALUES (118, 2, 118);
INSERT INTO `tbl_hak_akses` VALUES (119, 2, 120);
INSERT INTO `tbl_hak_akses` VALUES (120, 2, 121);
INSERT INTO `tbl_hak_akses` VALUES (121, 2, 122);
INSERT INTO `tbl_hak_akses` VALUES (122, 2, 123);
INSERT INTO `tbl_hak_akses` VALUES (123, 2, 124);
INSERT INTO `tbl_hak_akses` VALUES (124, 2, 127);
INSERT INTO `tbl_hak_akses` VALUES (125, 2, 126);
INSERT INTO `tbl_hak_akses` VALUES (126, 2, 125);
INSERT INTO `tbl_hak_akses` VALUES (127, 2, 128);
INSERT INTO `tbl_hak_akses` VALUES (128, 2, 129);
INSERT INTO `tbl_hak_akses` VALUES (129, 2, 130);
INSERT INTO `tbl_hak_akses` VALUES (130, 2, 131);
INSERT INTO `tbl_hak_akses` VALUES (131, 2, 132);
INSERT INTO `tbl_hak_akses` VALUES (132, 2, 133);
INSERT INTO `tbl_hak_akses` VALUES (133, 2, 1);

-- ----------------------------
-- Table structure for tbl_indexes
-- ----------------------------
DROP TABLE IF EXISTS `tbl_indexes`;
CREATE TABLE `tbl_indexes`  (
  `index_id` int(11) NOT NULL,
  `index_location_no` int(11) NOT NULL,
  `index_item_no` int(11) NOT NULL,
  `index_sub_no` int(11) NOT NULL,
  `index_itemNo` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `index_desc` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `index_status` enum('0','1') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_indexes
-- ----------------------------
INSERT INTO `tbl_indexes` VALUES (1, 1, 14, 11, 'P01-VSD-M-B6412.01', 'from SS3-MDP-302 to VSD-M-B6412.01', '');
INSERT INTO `tbl_indexes` VALUES (2, 1, 14, 11, 'P02-VSD-M-B6412.01', 'From SS3-MDP-302 To VSD-M-B6412.01', '');
INSERT INTO `tbl_indexes` VALUES (3, 1, 14, 11, 'P01-3-B6412.01', 'from VSD-M-B6412.01 to M-B6412.01', '');
INSERT INTO `tbl_indexes` VALUES (4, 1, 14, 11, 'P02-M-B6412.01', 'from VSD-M-B6412.01 to M-B6412.01', '');
INSERT INTO `tbl_indexes` VALUES (5, 1, 14, 11, 'P-VSD-M-B6412.02', 'from SS3-MDP-302 to VSD-M-B6412.02', '');
INSERT INTO `tbl_indexes` VALUES (6, 1, 14, 11, 'P-M-B6412.02', 'from VSD-M-B6412.02 to M-B6412.02', '');
INSERT INTO `tbl_indexes` VALUES (7, 1, 14, 11, 'P-01-CC-B6412.01', 'from SS3-PDP-401 to CC-B6412.01', '');
INSERT INTO `tbl_indexes` VALUES (10, 1, 14, 11, 'C01-CC-B6412.01', 'from VSD-M-B6412.01 to CC-B6412.01', '');
INSERT INTO `tbl_indexes` VALUES (11, 1, 14, 11, 'C02-CC-B6412.01', 'from VSD-M-B6412.01 to CC-B6412.01', '');
INSERT INTO `tbl_indexes` VALUES (12, 1, 14, 11, 'C03-CC-B6412.01', 'from VSD-M-B6412.01 to CC-B6412.01', '');
INSERT INTO `tbl_indexes` VALUES (13, 1, 14, 11, 'C01-M-B6412.01', 'from VSD-M-B6412.01 to M-B6412.01', '');
INSERT INTO `tbl_indexes` VALUES (14, 1, 14, 11, 'C04-CC-B6412.01', 'from VSD-M-B6412.02 to CC-B6412.01', '');
INSERT INTO `tbl_indexes` VALUES (15, 1, 14, 11, 'C05-CC-B6412.02', 'from VSD-M-6412.02 to CC-B6412.01', '');
INSERT INTO `tbl_indexes` VALUES (16, 1, 14, 11, 'C06-CC-B6412.01', 'from VSD-M-B6412.02 to CC-B6412.01', '');
INSERT INTO `tbl_indexes` VALUES (17, 1, 14, 11, 'C01-M-B6412.02', 'from VSD-M-B6412.02 to M-B6412.02', '');
INSERT INTO `tbl_indexes` VALUES (18, 1, 14, 11, 'P02-CC-B6412.01', 'from SS3-PDP-401 to CC-B6412.01', '');
INSERT INTO `tbl_indexes` VALUES (19, 1, 2, 3, 'ZSC/ZSO1-V6412-01-01', 'from ZSC/ZSO1-V6412-01 to P3-JBD-DI-013', '');
INSERT INTO `tbl_indexes` VALUES (20, 1, 2, 2, 'ZSC/ZS02-V6412-01-01', 'from ZSC/ZSC02-V6412-01 to P3-JBD-DI-013', '');
INSERT INTO `tbl_indexes` VALUES (21, 1, 14, 11, 'P03-CC-B614.01', 'from SS3-PDP-401 to CC-B6412.01', '');
INSERT INTO `tbl_indexes` VALUES (22, 1, 14, 17, 'L-P4LPE401-5-JB01', 'From P4-LPE-401 to P4LPE401-5-JB001', '');
INSERT INTO `tbl_indexes` VALUES (23, 1, 2, 3, 'XZY1-V6412-01-01', 'from XZY1-V6412-01 to P3-JBD-S-004', '');
INSERT INTO `tbl_indexes` VALUES (24, 1, 2, 2, 'XZY2-V6412-01-01', 'from XZY2-V6412-01 to P3-JBD-S004', '');
INSERT INTO `tbl_indexes` VALUES (25, 1, 14, 17, 'L-FBL--10-01', 'From P4LPE401-5-JB01 to FBL-10-01', '');
INSERT INTO `tbl_indexes` VALUES (26, 1, 14, 17, 'L-P4LPE401-5-JB02', 'From P4LPE401-5-JB01 to P4LPE401-5JB02', '');
INSERT INTO `tbl_indexes` VALUES (27, 1, 2, 13, 'ZSC/ZSO1-U6412-01-01', 'from ZSC/ZSO-6412-DM-0001 to P4-JBD-D-001', '');
INSERT INTO `tbl_indexes` VALUES (28, 1, 2, 13, 'ZSC/ZSO2-U6412-01-01', 'from ZSC/ZSO-6412-DM-0002 to P4-JBD-D-002', '');
INSERT INTO `tbl_indexes` VALUES (29, 1, 14, 17, 'L-FSL-10-01', 'From P4LPE401-5JB02 to P4LPE401-5-JB03', '');
INSERT INTO `tbl_indexes` VALUES (30, 1, 2, 13, 'ZSC/ZSO3-U6412-01-01', 'from ZSC/ZSO-6412-DM-0003 to P4-JBD-D-005', '');
INSERT INTO `tbl_indexes` VALUES (31, 1, 14, 17, 'L-P4LPE401-5-JB-03', 'From P4LPE401-5-JB-02 to P4LPE401-5-JB03', '');
INSERT INTO `tbl_indexes` VALUES (32, 1, 2, 13, 'XZY1-U6412-01-01', 'from XY-6412-DMY-0001 to P4-JBD-S-002', '');
INSERT INTO `tbl_indexes` VALUES (33, 1, 14, 17, 'L-FSL-10-02', 'From P4PLE401-5-JB03 to FSL-10-02', '');
INSERT INTO `tbl_indexes` VALUES (34, 1, 2, 13, 'XZY2-U6412-01-01', 'from XY-6412-DMY-0002 to P4-JBD-S-003', '');
INSERT INTO `tbl_indexes` VALUES (35, 1, 14, 18, 'L-P4LPN401-12-JB01', 'From P4-LPN-401 to P4LPN401-12-JB01', '');
INSERT INTO `tbl_indexes` VALUES (36, 1, 2, 13, 'XZY2-U6412-01-01', 'from XY-6412-DMY-0003 to P4-JBD-S-006', '');
INSERT INTO `tbl_indexes` VALUES (37, 1, 14, 18, 'L-P4LPN401-12-JB03', 'From P4LPN401-12-JB01 to P4LPN401-12-JB03', '');
INSERT INTO `tbl_indexes` VALUES (38, 1, 2, 19, 'AT11-PA6412-01-01', 'from AT11-PA6412-01 to P4-JBG-A-001', '');
INSERT INTO `tbl_indexes` VALUES (39, 1, 14, 18, 'L-FLL-10-01', 'From P4LPN401-12-JB03 to FLL-10-01', '');
INSERT INTO `tbl_indexes` VALUES (40, 1, 2, 19, 'AT12-PA6412-01-01', 'from AT12-PA6412-01 to P4-JBG-A-001', '');
INSERT INTO `tbl_indexes` VALUES (41, 1, 14, 18, 'L-P4LPN401-12-JB02', 'From P4LPN401-12-JB03 to P4LPN401-12-JB02', '');
INSERT INTO `tbl_indexes` VALUES (42, 1, 14, 18, 'L-FLL-10-02', 'From 4PLN401-12-JB02 to FLL-10-02', '');
INSERT INTO `tbl_indexes` VALUES (43, 1, 2, 19, '6412-FM-0001-01', 'from 6412-FM-0001 to P3-JBF-0002', '');
INSERT INTO `tbl_indexes` VALUES (44, 1, 14, 18, 'L-P4LPN401-12-JB04', 'From P4LPN401-12-JB-02 to P4LPN01-12-JB04', '');
INSERT INTO `tbl_indexes` VALUES (45, 1, 2, 19, 'UA11-PA6412-01-01', 'from UA11-PA6412-01 to P4-JBG-SP-001', '');
INSERT INTO `tbl_indexes` VALUES (46, 1, 2, 19, 'UA12-PA6412-01-01', 'from UA12-PA6412-01 to P4-JBG-SP-001', '');
INSERT INTO `tbl_indexes` VALUES (47, 1, 14, 18, 'L-FLL-10-03', 'From P4LPN401-12-JB04 to FLL-10-03', '');
INSERT INTO `tbl_indexes` VALUES (239, 1, 19, 20, '6412-LTN-101', 'Grounding Pit', '');
INSERT INTO `tbl_indexes` VALUES (238, 1, 19, 20, '6412-EW-102', 'Grounding Pit', '');
INSERT INTO `tbl_indexes` VALUES (237, 1, 19, 20, '6412-EW-101', 'Grounding Pit', '');
INSERT INTO `tbl_indexes` VALUES (236, 1, 22, 18, 'P4LPE401-12-JB04', 'Junction Box Lighting', '');
INSERT INTO `tbl_indexes` VALUES (235, 0, 22, 18, 'P4LPE401-12-JB03', 'Junction Box Lighting', '');
INSERT INTO `tbl_indexes` VALUES (241, 1, 8, 1, 'PSV4-V6412-01', 'Safety Relief Valve', '');
INSERT INTO `tbl_indexes` VALUES (234, 0, 22, 18, 'P4LPE401-12-JB02', 'Junction Box Lighting', '');
INSERT INTO `tbl_indexes` VALUES (233, 1, 22, 18, 'P4LPE401-12-JB01', 'Junction Box Lighting', '');
INSERT INTO `tbl_indexes` VALUES (232, 1, 22, 17, 'P4LPE401-5-JB03', 'Junchtion Box Lighting', '');
INSERT INTO `tbl_indexes` VALUES (57, 1, 9, 3, 'XZV1-V6412-01', 'On/Off Valve (Butterfly)', '');
INSERT INTO `tbl_indexes` VALUES (231, 1, 22, 17, 'P4LPE401-5-JB02', 'Junchtion Box Lighting', '');
INSERT INTO `tbl_indexes` VALUES (230, 1, 22, 17, 'P4LPE401-5-JB01', 'Junction Box Lighting', '');
INSERT INTO `tbl_indexes` VALUES (240, 1, 5, 19, 'AT12-PA612-01', 'Gas Detector', '');
INSERT INTO `tbl_indexes` VALUES (108, 1, 73, 1, 'TP-10-01-01', 'RTO Rich Off Gas Vent Header', '');
INSERT INTO `tbl_indexes` VALUES (64, 1, 9, 2, 'XZV2-V6412-01', 'On/Off Valve (Butterfly)', '');
INSERT INTO `tbl_indexes` VALUES (68, 1, 75, 3, 'PG4-U6412-01', 'Pressure Gauge', '');
INSERT INTO `tbl_indexes` VALUES (69, 1, 59, 19, '6412-FM-0001', 'Manual Alarm Call Points (Break Glass)', '');
INSERT INTO `tbl_indexes` VALUES (70, 1, 5, 19, 'AT11PA6412-01', 'Hydrocarbon Gas Detector', '');
INSERT INTO `tbl_indexes` VALUES (71, 1, 5, 5, 'AT12-PA6412-01', 'Hydrocarbon Gas Detector', '');
INSERT INTO `tbl_indexes` VALUES (72, 1, 59, 19, 'UA11-PA6412-01', 'Audible Alarm Horn (EX)', '');
INSERT INTO `tbl_indexes` VALUES (74, 1, 3, 19, 'UA12-PA6412-01', 'Flashing Light Flammable (EX)', '');
INSERT INTO `tbl_indexes` VALUES (76, 1, 9, 13, 'XZV1-U6412-01', '3-Way Damper', '');
INSERT INTO `tbl_indexes` VALUES (83, 1, 9, 13, 'XZV2-U6412-01', '3-Way Daper', '');
INSERT INTO `tbl_indexes` VALUES (92, 1, 9, 13, 'XZV3-U6412-01', '3-Way Damper', '');
INSERT INTO `tbl_indexes` VALUES (109, 1, 73, 2, 'TP-10-02-01', 'Flare Vent Header', '');
INSERT INTO `tbl_indexes` VALUES (110, 1, 73, 2, 'TP-10-02-02', 'Flare Vent Header', '');
INSERT INTO `tbl_indexes` VALUES (111, 1, 73, 3, 'TP-10-03-01', 'Off Gas to Burner', '');
INSERT INTO `tbl_indexes` VALUES (112, 1, 73, 4, 'TP-15-01-01', 'Instrument Air for RTO KO Drum', '');
INSERT INTO `tbl_indexes` VALUES (113, 1, 73, 4, 'TP-15-01-02', 'Instrument Air for RTO Package ', '');
INSERT INTO `tbl_indexes` VALUES (114, 1, 73, 4, 'TP-15-01-03', 'Instrument Air line to XVZ2', '');
INSERT INTO `tbl_indexes` VALUES (115, 1, 73, 4, 'TP-15-01-04', 'Instrumen Air Line to XVZ3', '');
INSERT INTO `tbl_indexes` VALUES (116, 1, 73, 4, 'TP-15-01-05', 'Instrument Air Line to XVZ3', '');
INSERT INTO `tbl_indexes` VALUES (117, 1, 73, 8, 'TP-20-01-01', 'Natural Gas for RTO Package', '');
INSERT INTO `tbl_indexes` VALUES (118, 1, 73, 9, 'TP-20-02-01', 'Cold Water Supply for RTO Package', '');
INSERT INTO `tbl_indexes` VALUES (119, 1, 73, 10, 'TP-20-03-01', 'Cold Water Return for RTO Package', '');
INSERT INTO `tbl_indexes` VALUES (120, 1, 73, 12, 'TP-20-04-01', 'Low Pressure N2 for RTO Package', '');
INSERT INTO `tbl_indexes` VALUES (121, 1, 73, 13, 'TP-25-01-01', 'RTO waste air vent header', '');
INSERT INTO `tbl_indexes` VALUES (122, 1, 73, 23, 'TP-25-02-01', 'RTO waste air vent header-2', '');
INSERT INTO `tbl_indexes` VALUES (123, 1, 73, 16, 'TP-25-04-01', 'Waste air to RTO Package', '');
INSERT INTO `tbl_indexes` VALUES (242, 1, 14, 1, 'P-M-Test', 'from VSD-M-Test', '0');

-- ----------------------------
-- Table structure for tbl_items
-- ----------------------------
DROP TABLE IF EXISTS `tbl_items`;
CREATE TABLE `tbl_items`  (
  `id_item` int(11) NOT NULL AUTO_INCREMENT,
  `id_projects` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_disciplines` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `item_type_id` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `item_type_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_item`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_items
-- ----------------------------
INSERT INTO `tbl_items` VALUES (1, '16', '5', 'PA_CENTRAL', 'PA/GA CENTRAL SYSTEM & MARSHALLING CABINET');

-- ----------------------------
-- Table structure for tbl_locations
-- ----------------------------
DROP TABLE IF EXISTS `tbl_locations`;
CREATE TABLE `tbl_locations`  (
  `id_location` int(11) NOT NULL AUTO_INCREMENT,
  `id_projects` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `location_id` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `location_name` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `location_status` int(11) NOT NULL,
  PRIMARY KEY (`id_location`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_locations
-- ----------------------------
INSERT INTO `tbl_locations` VALUES (1, '1', 'RTO-Package', '	RTO Package Area', 0);

-- ----------------------------
-- Table structure for tbl_locations_log
-- ----------------------------
DROP TABLE IF EXISTS `tbl_locations_log`;
CREATE TABLE `tbl_locations_log`  (
  `id_locations_log` int(11) NOT NULL AUTO_INCREMENT,
  `id_locations` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_projects` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `location_id` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `location_name` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_users` int(11) NOT NULL,
  `note` enum('add','update','delete','restore') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `datetime` datetime(0) NOT NULL,
  PRIMARY KEY (`id_locations_log`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_locations_log
-- ----------------------------
INSERT INTO `tbl_locations_log` VALUES (1, '1', '1', 'RTO-Package', '	RTO Package Area', 13, 'add', '2020-01-17 14:59:45');

-- ----------------------------
-- Table structure for tbl_macros
-- ----------------------------
DROP TABLE IF EXISTS `tbl_macros`;
CREATE TABLE `tbl_macros`  (
  `macro_id` bigint(20) NOT NULL,
  `macro_form_no` int(11) NOT NULL,
  `macro_x` int(11) NOT NULL,
  `macro_y` int(11) NOT NULL,
  `macro_cell` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_macros
-- ----------------------------
INSERT INTO `tbl_macros` VALUES (1, 6, 1, 1, 'MECHANICAL');
INSERT INTO `tbl_macros` VALUES (2, 6, 2, 1, 'PRECOMMISSIONING CHECK LIST');
INSERT INTO `tbl_macros` VALUES (3, 6, 4, 1, 'CENTRIFUGAL COMPRESSOR');
INSERT INTO `tbl_macros` VALUES (4, 6, 7, 1, 'FORM                  :');
INSERT INTO `tbl_macros` VALUES (5, 6, 7, 5, 'C-MX-36');
INSERT INTO `tbl_macros` VALUES (6, 6, 7, 13, 'TUG NUMBER');
INSERT INTO `tbl_macros` VALUES (7, 6, 8, 1, 'LOCATION          :');
INSERT INTO `tbl_macros` VALUES (8, 6, 9, 1, 'SUB-SYSTEM    :');
INSERT INTO `tbl_macros` VALUES (9, 6, 10, 1, 'EQUIPMENT     Nº   :');
INSERT INTO `tbl_macros` VALUES (10, 6, 12, 1, 'ITEM');
INSERT INTO `tbl_macros` VALUES (11, 6, 12, 2, 'CHECK LIST ');
INSERT INTO `tbl_macros` VALUES (12, 6, 13, 1, '1');
INSERT INTO `tbl_macros` VALUES (13, 6, 13, 2, 'Check that the nameplate details are complete and correct.\n');
INSERT INTO `tbl_macros` VALUES (14, 6, 14, 1, '2');
INSERT INTO `tbl_macros` VALUES (15, 6, 14, 2, 'Check the location, elevation, orientation and that the compressor is level.\n');
INSERT INTO `tbl_macros` VALUES (16, 6, 15, 1, '3');
INSERT INTO `tbl_macros` VALUES (17, 6, 15, 2, 'Check that the compressor holding down arrangements are correct.\nenergized.');
INSERT INTO `tbl_macros` VALUES (18, 6, 16, 1, '4');
INSERT INTO `tbl_macros` VALUES (19, 6, 16, 2, 'Check for any installation damage.\ncorrect bolting,');
INSERT INTO `tbl_macros` VALUES (20, 6, 17, 1, '5');
INSERT INTO `tbl_macros` VALUES (21, 6, 17, 2, 'Check the compressor and the auxillaries for cleanliness.\n');
INSERT INTO `tbl_macros` VALUES (22, 6, 18, 1, '6');
INSERT INTO `tbl_macros` VALUES (23, 6, 18, 2, 'Check all the platforming and ladders are installed as per approved drawings.\n');
INSERT INTO `tbl_macros` VALUES (24, 6, 19, 1, '7');
INSERT INTO `tbl_macros` VALUES (25, 6, 19, 2, 'Check all of the auxillary items are supplied and they have been correctly installed.\n');
INSERT INTO `tbl_macros` VALUES (26, 6, 20, 1, '8');
INSERT INTO `tbl_macros` VALUES (27, 6, 20, 2, 'Check that the suction strainers have been installed.\nto specifications.');
INSERT INTO `tbl_macros` VALUES (28, 6, 21, 1, '9');
INSERT INTO `tbl_macros` VALUES (29, 6, 21, 2, 'Check the painting visually for damage.\n');
INSERT INTO `tbl_macros` VALUES (30, 6, 22, 1, '10');
INSERT INTO `tbl_macros` VALUES (31, 6, 22, 2, 'Check the equipment is bonded as per drawings and specifications.\n');
INSERT INTO `tbl_macros` VALUES (32, 6, 23, 1, '11');
INSERT INTO `tbl_macros` VALUES (33, 6, 23, 2, 'Check that with unbolted flanges on the suction and discharge piping, that the corresponding pipe flanges on the package align with them correctly. \n');
INSERT INTO `tbl_macros` VALUES (34, 6, 24, 1, '12');
INSERT INTO `tbl_macros` VALUES (35, 6, 24, 2, 'Check that the suction, discharge and utility pipe-supports are in accordance with the design drawings.\n');
INSERT INTO `tbl_macros` VALUES (36, 6, 25, 1, '13');
INSERT INTO `tbl_macros` VALUES (37, 6, 25, 2, 'Check that there is adequate space available to be able to withdraw the internals using suitable lifting gear.\n');
INSERT INTO `tbl_macros` VALUES (38, 6, 26, 1, '14');
INSERT INTO `tbl_macros` VALUES (39, 6, 26, 2, 'Check that both the coupling and coupling guards have been installed.\nprotection diagram.');
INSERT INTO `tbl_macros` VALUES (40, 6, 27, 1, '15');
INSERT INTO `tbl_macros` VALUES (41, 6, 27, 2, 'Check preservation is carried out as per approved procedure.\n');
INSERT INTO `tbl_macros` VALUES (42, 6, 28, 1, '16');
INSERT INTO `tbl_macros` VALUES (43, 6, 28, 2, 'Produce a set of marked-up drawings which are as per installation.\n');
INSERT INTO `tbl_macros` VALUES (44, 6, 29, 1, '17');
INSERT INTO `tbl_macros` VALUES (45, 6, 29, 2, 'Produce a defects list to be issued in the Punch List.\n');
INSERT INTO `tbl_macros` VALUES (46, 6, 30, 1, 'REMARKS:');
INSERT INTO `tbl_macros` VALUES (47, 6, 32, 1, 'DESCRIPTION');
INSERT INTO `tbl_macros` VALUES (48, 6, 32, 5, 'TEST/INSPECTION PERFORMED BY');
INSERT INTO `tbl_macros` VALUES (49, 6, 32, 9, 'TEST/INSPECTION                       CHECKED BY                  CONTRACTOR');
INSERT INTO `tbl_macros` VALUES (50, 6, 32, 14, 'TEST/INSPECTION                       APPROVED BY                  COMPANY');
INSERT INTO `tbl_macros` VALUES (51, 6, 33, 1, 'Signature');
INSERT INTO `tbl_macros` VALUES (52, 6, 34, 1, 'Print name');
INSERT INTO `tbl_macros` VALUES (53, 6, 35, 1, 'Date');
INSERT INTO `tbl_macros` VALUES (54, 1, 1, 1, 'MECHANICAL');
INSERT INTO `tbl_macros` VALUES (55, 1, 2, 1, 'PRECOMMISSIONING CHECK LIST');
INSERT INTO `tbl_macros` VALUES (56, 1, 4, 1, 'CENTRIFUGAL COMPRESSOR');
INSERT INTO `tbl_macros` VALUES (57, 1, 7, 1, 'FORM                  :');
INSERT INTO `tbl_macros` VALUES (58, 1, 7, 5, 'C-MX-36');
INSERT INTO `tbl_macros` VALUES (59, 1, 7, 13, 'TUG NUMBER');
INSERT INTO `tbl_macros` VALUES (60, 1, 8, 1, 'LOCATION          :');
INSERT INTO `tbl_macros` VALUES (61, 1, 9, 1, 'SUB-SYSTEM    :');
INSERT INTO `tbl_macros` VALUES (62, 1, 10, 1, 'EQUIPMENT     Nº   :');
INSERT INTO `tbl_macros` VALUES (63, 1, 12, 1, 'ITEM');
INSERT INTO `tbl_macros` VALUES (64, 1, 12, 2, 'CHECK LIST ');
INSERT INTO `tbl_macros` VALUES (65, 1, 13, 1, '1');
INSERT INTO `tbl_macros` VALUES (66, 1, 13, 2, 'Check that the nameplate details are complete and correct.\n');
INSERT INTO `tbl_macros` VALUES (67, 1, 14, 1, '2');
INSERT INTO `tbl_macros` VALUES (68, 1, 14, 2, 'Check the location, elevation, orientation and that the compressor is level.\n');
INSERT INTO `tbl_macros` VALUES (69, 1, 15, 1, '3');
INSERT INTO `tbl_macros` VALUES (70, 1, 15, 2, 'Check that the compressor holding down arrangements are correct.\nenergized.');
INSERT INTO `tbl_macros` VALUES (71, 1, 16, 1, '4');
INSERT INTO `tbl_macros` VALUES (72, 1, 16, 2, 'Check for any installation damage.\ncorrect bolting,');
INSERT INTO `tbl_macros` VALUES (73, 1, 17, 1, '5');
INSERT INTO `tbl_macros` VALUES (74, 1, 17, 2, 'Check the compressor and the auxillaries for cleanliness.\n');
INSERT INTO `tbl_macros` VALUES (75, 1, 18, 1, '6');
INSERT INTO `tbl_macros` VALUES (76, 1, 18, 2, 'Check all the platforming and ladders are installed as per approved drawings.\n');
INSERT INTO `tbl_macros` VALUES (77, 1, 19, 1, '7');
INSERT INTO `tbl_macros` VALUES (78, 1, 19, 2, 'Check all of the auxillary items are supplied and they have been correctly installed.\n');
INSERT INTO `tbl_macros` VALUES (79, 1, 20, 1, '8');
INSERT INTO `tbl_macros` VALUES (80, 1, 20, 2, 'Check that the suction strainers have been installed.\nto specifications.');
INSERT INTO `tbl_macros` VALUES (81, 1, 21, 1, '9');
INSERT INTO `tbl_macros` VALUES (82, 1, 21, 2, 'Check the painting visually for damage.\n');
INSERT INTO `tbl_macros` VALUES (83, 1, 22, 1, '10');
INSERT INTO `tbl_macros` VALUES (84, 1, 22, 2, 'Check the equipment is bonded as per drawings and specifications.\n');
INSERT INTO `tbl_macros` VALUES (85, 1, 23, 1, '11');
INSERT INTO `tbl_macros` VALUES (86, 1, 23, 2, 'Check that with unbolted flanges on the suction and discharge piping, that the corresponding pipe flanges on the package align with them correctly. \n');
INSERT INTO `tbl_macros` VALUES (87, 1, 24, 1, '12');
INSERT INTO `tbl_macros` VALUES (88, 1, 24, 2, 'Check that the suction, discharge and utility pipe-supports are in accordance with the design drawings.\n');
INSERT INTO `tbl_macros` VALUES (89, 1, 25, 1, '13');
INSERT INTO `tbl_macros` VALUES (90, 1, 25, 2, 'Check that there is adequate space available to be able to withdraw the internals using suitable lifting gear.\n');
INSERT INTO `tbl_macros` VALUES (91, 1, 26, 1, '14');
INSERT INTO `tbl_macros` VALUES (92, 1, 26, 2, 'Check that both the coupling and coupling guards have been installed.\nprotection diagram.');
INSERT INTO `tbl_macros` VALUES (93, 1, 27, 1, '15');
INSERT INTO `tbl_macros` VALUES (94, 1, 27, 2, 'Check preservation is carried out as per approved procedure.\n');
INSERT INTO `tbl_macros` VALUES (95, 1, 28, 1, '16');
INSERT INTO `tbl_macros` VALUES (96, 1, 28, 2, 'Produce a set of marked-up drawings which are as per installation.\n');
INSERT INTO `tbl_macros` VALUES (97, 1, 29, 1, '17');
INSERT INTO `tbl_macros` VALUES (98, 1, 29, 2, 'Produce a defects list to be issued in the Punch List.\n');
INSERT INTO `tbl_macros` VALUES (99, 1, 30, 1, '   REMARKS:');
INSERT INTO `tbl_macros` VALUES (100, 1, 32, 1, 'DESCRIPTION');
INSERT INTO `tbl_macros` VALUES (101, 1, 32, 5, 'TEST/INSPECTION PERFORMED BY');
INSERT INTO `tbl_macros` VALUES (102, 1, 32, 9, 'TEST/INSPECTION                       CHECKED BY                  CONTRACTOR');
INSERT INTO `tbl_macros` VALUES (103, 1, 32, 14, 'TEST/INSPECTION                       APPROVED BY                  COMPANY');
INSERT INTO `tbl_macros` VALUES (104, 1, 33, 1, 'Signature');
INSERT INTO `tbl_macros` VALUES (105, 1, 34, 1, 'Print name');
INSERT INTO `tbl_macros` VALUES (106, 1, 35, 1, 'Date');

-- ----------------------------
-- Table structure for tbl_menu
-- ----------------------------
DROP TABLE IF EXISTS `tbl_menu`;
CREATE TABLE `tbl_menu`  (
  `id_menu` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `url` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `icon` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `is_main_menu` int(11) NOT NULL,
  `is_aktif` enum('y','n') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT 'y=yes,n=no',
  PRIMARY KEY (`id_menu`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 134 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_menu
-- ----------------------------
INSERT INTO `tbl_menu` VALUES (1, 'setting', '#', 'icon-cog', 0, 'y');
INSERT INTO `tbl_menu` VALUES (3, 'user level setup', 'userlevel', 'icon-smile', 1, 'y');
INSERT INTO `tbl_menu` VALUES (23, 'CRUD Generator', '../denzoe/index.php', 'icon-qrcode', 1, 'y');
INSERT INTO `tbl_menu` VALUES (27, 'phpmyadmin', '../../phpmyadmin/index.php', 'icon-sitemap', 1, 'y');
INSERT INTO `tbl_menu` VALUES (32, 'menu setup', 'kelolamenu', 'icon-laptop', 1, 'y');
INSERT INTO `tbl_menu` VALUES (40, 'user setup', 'user', 'icon-github-alt', 1, 'y');
INSERT INTO `tbl_menu` VALUES (107, 'company setup', 'perusahaan', 'icon-building', 1, 'y');
INSERT INTO `tbl_menu` VALUES (108, 'Home', 'home', 'icon-home', 0, 'y');
INSERT INTO `tbl_menu` VALUES (109, 'projek setup', 'projek', 'icon-puzzle-piece', 0, 'y');
INSERT INTO `tbl_menu` VALUES (110, 'type', 'TYPE', 'icon-coffee', 0, 'y');
INSERT INTO `tbl_menu` VALUES (111, 'module', 'module', 'icon-align-justify', 0, 'y');
INSERT INTO `tbl_menu` VALUES (112, 'reporting', 'reporting', 'icon-beaker', 0, 'y');
INSERT INTO `tbl_menu` VALUES (113, 'projects', 'projects', 'icon-gamepad', 109, 'y');
INSERT INTO `tbl_menu` VALUES (114, 'systems', 'systems', 'icon-puzzle-piece', 109, 'y');
INSERT INTO `tbl_menu` VALUES (115, 'subsystems', 'subs', 'icon-asterisk', 109, 'y');
INSERT INTO `tbl_menu` VALUES (116, 'disciplines', 'disciplines', 'icon-user-md', 109, 'y');
INSERT INTO `tbl_menu` VALUES (117, 'locations', 'locations', 'icon-flag-alt', 109, 'y');
INSERT INTO `tbl_menu` VALUES (118, 'import data', 'import', 'icon-unlink', 109, 'y');
INSERT INTO `tbl_menu` VALUES (120, 'item type', 'items', 'icon-eye-open', 110, 'y');
INSERT INTO `tbl_menu` VALUES (121, 'form template', 'templates_', 'icon-file-alt', 110, 'y');
INSERT INTO `tbl_menu` VALUES (122, 'assosiate', 'Associates', 'icon-lightbulb', 110, 'y');
INSERT INTO `tbl_menu` VALUES (123, 'equipment item', 'Equipments', 'icon-folder-open-alt', 111, 'y');
INSERT INTO `tbl_menu` VALUES (124, 'task sheet', 'tasksheet', 'icon-folder-close-alt', 111, 'y');
INSERT INTO `tbl_menu` VALUES (125, 'punch list', 'Punchlist', 'icon-hdd', 111, 'y');
INSERT INTO `tbl_menu` VALUES (126, 'precom report', 'precom_report', 'icon-star', 112, 'y');
INSERT INTO `tbl_menu` VALUES (127, 'comm report', 'comm_report', 'icon-star-half-empty', 112, 'y');
INSERT INTO `tbl_menu` VALUES (128, 'status index', 'status_index', 'icon-star-half-full (alias)', 112, 'y');
INSERT INTO `tbl_menu` VALUES (129, 'punch list reg', 'punch_list_reg', 'icon-location-arrow', 112, 'y');
INSERT INTO `tbl_menu` VALUES (130, 'system/subsystem list (future)', 'system/subsystem_list_(future)', 'icon-code-fork', 112, 'y');
INSERT INTO `tbl_menu` VALUES (131, 'test package(future)', 'test_package(future)', 'icon-edit-sign', 112, 'y');
INSERT INTO `tbl_menu` VALUES (132, 'dossier precom(future)', 'dossier_precom(future)', 'icon-check-minus', 112, 'y');
INSERT INTO `tbl_menu` VALUES (133, 'dossier com(future)', 'dossier_com(future)', 'icon-ellipsis-horizontal', 112, 'y');

-- ----------------------------
-- Table structure for tbl_perusahaan
-- ----------------------------
DROP TABLE IF EXISTS `tbl_perusahaan`;
CREATE TABLE `tbl_perusahaan`  (
  `id_perusahaan` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_perusahaan` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `biodata` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `no_izin` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `no_hp` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `no_pajak` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `alamat` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password_email` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tgl_berdiri` date NOT NULL,
  `images` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_perusahaan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_perusahaan
-- ----------------------------
INSERT INTO `tbl_perusahaan` VALUES (1, 'PR0001', 'COMMISOF', 'Cilamaya PLTUG', '909897f7f8nmdhg7', '09087765674', '88494769', 'Jln. Raya Cilamaya', 'dedenalsaian@gmail.com', 'dedenalsaianok', '2019-10-03', 'avatar1.png');

-- ----------------------------
-- Table structure for tbl_progress2
-- ----------------------------
DROP TABLE IF EXISTS `tbl_progress2`;
CREATE TABLE `tbl_progress2`  (
  `Id` int(11) NOT NULL,
  `table_id` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `keterangan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `table` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_progress2
-- ----------------------------
INSERT INTO `tbl_progress2` VALUES (1, 'system_id', 'System', 'system');
INSERT INTO `tbl_progress2` VALUES (2, 'sub_id', 'Sub-System', 'sub');
INSERT INTO `tbl_progress2` VALUES (3, 'discipline_id', 'Discipline', 'discipline');

-- ----------------------------
-- Table structure for tbl_projects
-- ----------------------------
DROP TABLE IF EXISTS `tbl_projects`;
CREATE TABLE `tbl_projects`  (
  `id_project` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `project_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `project_desc` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `project_status` int(11) NOT NULL,
  PRIMARY KEY (`id_project`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_projects
-- ----------------------------
INSERT INTO `tbl_projects` VALUES (16, 'RTO', 'RTO - U3 PROJECT', 'Systhetic Rubber Indonesia (SRI) U3 Project', 0);

-- ----------------------------
-- Table structure for tbl_projects_log
-- ----------------------------
DROP TABLE IF EXISTS `tbl_projects_log`;
CREATE TABLE `tbl_projects_log`  (
  `id_project_log` int(11) NOT NULL AUTO_INCREMENT,
  `id_projects` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `project_id` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `project_name` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `project_desc` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_users` int(11) NOT NULL,
  `note` enum('add','update','delete','restore') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `datetime` datetime(0) NOT NULL,
  PRIMARY KEY (`id_project_log`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_projects_log
-- ----------------------------
INSERT INTO `tbl_projects_log` VALUES (21, '16', 'RTO', 'RTO - U3 PROJECT', 'Systhetic Rubber Indonesia (SRI) U3 Project', 13, 'add', '2020-01-17 14:47:43');

-- ----------------------------
-- Table structure for tbl_punchlist
-- ----------------------------
DROP TABLE IF EXISTS `tbl_punchlist`;
CREATE TABLE `tbl_punchlist`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `punch_id` char(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `punch_location_no` int(11) NOT NULL,
  `punch_sub_no` int(11) NOT NULL,
  `punch_discipline_no` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '',
  `punch_itemNo` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_punchlist
-- ----------------------------
INSERT INTO `tbl_punchlist` VALUES (1, 'PL000001', 1, 4, '2', 'Test 4', 'Test 4', 'C', 'TEST 4', 'TEST 4', '2019-06-12', 'TEST 4', '', '2019-06-29', 'Done', '0000-00-00');
INSERT INTO `tbl_punchlist` VALUES (2, 'PL000003', 1, 12, '13', 'Test 3', 'Test punch list 3', 'B', 'test 3', 'test 3', '2019-06-27', 'test 3', '', '0000-00-00', 'Done', '0000-00-00');
INSERT INTO `tbl_punchlist` VALUES (3, 'PL000002', 1, 4, '12', 'Line 2', 'Spade to be installed ', 'B', 'Andi', 'Andre', '2019-05-09', 'Budi', 'Andre', '2019-07-01', 'Done', '2019-07-02');

-- ----------------------------
-- Table structure for tbl_setting
-- ----------------------------
DROP TABLE IF EXISTS `tbl_setting`;
CREATE TABLE `tbl_setting`  (
  `id_setting` int(11) NOT NULL AUTO_INCREMENT,
  `nama_setting` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `value` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_setting`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_setting
-- ----------------------------
INSERT INTO `tbl_setting` VALUES (1, 'Tampil Menu', 'tidak');

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

-- ----------------------------
-- Table structure for tbl_subs_log
-- ----------------------------
DROP TABLE IF EXISTS `tbl_subs_log`;
CREATE TABLE `tbl_subs_log`  (
  `id_sub_log` int(11) NOT NULL AUTO_INCREMENT,
  `id_projects` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_subs` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_systems` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sub_id` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sub_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_users` int(11) NOT NULL,
  `note` enum('add','update','delete','restore') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `datetime` datetime(0) NOT NULL,
  PRIMARY KEY (`id_sub_log`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_subs_log
-- ----------------------------
INSERT INTO `tbl_subs_log` VALUES (1, '16', '1', '1', 'FG-01', 'Off Gas to Burner', 13, 'add', '2020-01-17 14:54:42');

-- ----------------------------
-- Table structure for tbl_systems
-- ----------------------------
DROP TABLE IF EXISTS `tbl_systems`;
CREATE TABLE `tbl_systems`  (
  `id_system` int(11) NOT NULL AUTO_INCREMENT,
  `id_projects` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `system_id` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `system_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `system_status` int(11) NOT NULL,
  PRIMARY KEY (`id_system`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_systems
-- ----------------------------
INSERT INTO `tbl_systems` VALUES (1, '16', 'FG', 'Fire & Gas System', 0);

-- ----------------------------
-- Table structure for tbl_systems_log
-- ----------------------------
DROP TABLE IF EXISTS `tbl_systems_log`;
CREATE TABLE `tbl_systems_log`  (
  `id_system_log` int(11) NOT NULL AUTO_INCREMENT,
  `id_systems` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_projects` varbinary(50) NOT NULL,
  `system_id` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `system_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_users` int(11) NOT NULL,
  `note` enum('add','update','delete','restore') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `datetime` datetime(0) NOT NULL,
  PRIMARY KEY (`id_system_log`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_systems_log
-- ----------------------------
INSERT INTO `tbl_systems_log` VALUES (1, '1', 0x3136, 'FG', 'Fire & Gas System', 13, 'add', '2020-01-17 14:50:31');

-- ----------------------------
-- Table structure for tbl_template_details
-- ----------------------------
DROP TABLE IF EXISTS `tbl_template_details`;
CREATE TABLE `tbl_template_details`  (
  `id_template_detail` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_templates` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `template_no` int(11) NOT NULL,
  `template_item` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_template_detail`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_template_details
-- ----------------------------
INSERT INTO `tbl_template_details` VALUES (4, '2', 1, 'Tes 1');
INSERT INTO `tbl_template_details` VALUES (5, '2', 2, 'Tes 2');
INSERT INTO `tbl_template_details` VALUES (6, '2', 3, 'Tes 3');
INSERT INTO `tbl_template_details` VALUES (7, '2', 4, 'Tes 4');
INSERT INTO `tbl_template_details` VALUES (8, '2', 5, 'Tes 5');
INSERT INTO `tbl_template_details` VALUES (26, '3', 1, 'tes 1');
INSERT INTO `tbl_template_details` VALUES (28, '3', 2, 'Tes 2');
INSERT INTO `tbl_template_details` VALUES (29, '3', 3, 'Tes 3');

-- ----------------------------
-- Table structure for tbl_template_details_temp
-- ----------------------------
DROP TABLE IF EXISTS `tbl_template_details_temp`;
CREATE TABLE `tbl_template_details_temp`  (
  `id_template_detail_temp` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_templates` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `template_no` int(11) NOT NULL,
  `template_item` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_template_detail_temp`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tbl_templates
-- ----------------------------
DROP TABLE IF EXISTS `tbl_templates`;
CREATE TABLE `tbl_templates`  (
  `id_template` int(11) NOT NULL AUTO_INCREMENT,
  `template_id` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `template_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `template_type` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_disciplines` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `template_title_1` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `template_title_2` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `template_title_3` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_template`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_templates
-- ----------------------------
INSERT INTO `tbl_templates` VALUES (2, '02', 'CX-002', 'Test Sheet', '4', 'INSTRUMENT', 'PRECOMMISSIONING CHECK LIST', 'TEMPERATURE ELEMENT');
INSERT INTO `tbl_templates` VALUES (3, '01', 'CX-001', 'Test Sheet', '3', 'Title 1', 'Title 2', 'Title 3');

-- ----------------------------
-- Table structure for tbl_user
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user`  (
  `id_users` int(11) NOT NULL AUTO_INCREMENT,
  `nama_user` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `images` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_user_level` int(11) NOT NULL,
  `is_aktif` enum('y','n') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_users`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES (12, 'denzoe', 'denzoe', '$2y$04$ymhuqJQF9zAu5M31oegFxudHzVncBgdjtT9rPdmdfWF5nr/XuOFPK', '', 1, 'y');
INSERT INTO `tbl_user` VALUES (13, 'admin', 'admin', '$2y$04$HxjI/c7pC2KkiTm98Hz9uuNUUhrCIvRk6EVB.KKRUi98V1p2rsyEC', '', 1, 'y');

-- ----------------------------
-- Table structure for tbl_user_level
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user_level`;
CREATE TABLE `tbl_user_level`  (
  `id_user_level` int(11) NOT NULL AUTO_INCREMENT,
  `nama_level` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `bagian` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_user_level`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_user_level
-- ----------------------------
INSERT INTO `tbl_user_level` VALUES (1, 'Super Admin', 'manager');
INSERT INTO `tbl_user_level` VALUES (2, 'admin', 'manager');

SET FOREIGN_KEY_CHECKS = 1;
