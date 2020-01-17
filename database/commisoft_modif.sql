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

 Date: 17/01/2020 14:42:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_csv
-- ----------------------------
DROP TABLE IF EXISTS `tbl_csv`;
CREATE TABLE `tbl_csv`  (
  `id_csvs` int(11) NOT NULL,
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
  `id_disciplines` int(11) NOT NULL AUTO_INCREMENT,
  `id_projects` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `discipline_id` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `discipline_name` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `discipline_status` int(11) NOT NULL,
  PRIMARY KEY (`id_disciplines`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_disciplines
-- ----------------------------
INSERT INTO `tbl_disciplines` VALUES (1, '', 'MEC', 'MECHANICAL', 0);
INSERT INTO `tbl_disciplines` VALUES (2, '', 'INST', 'INSTRUMENT', 0);
INSERT INTO `tbl_disciplines` VALUES (3, '', 'ELE', 'ELECTRIC', 0);
INSERT INTO `tbl_disciplines` VALUES (4, '', 'PIP', 'PIPING', 0);
INSERT INTO `tbl_disciplines` VALUES (5, '', 'CIV', 'CIVIL', 0);
INSERT INTO `tbl_disciplines` VALUES (6, '', 'STR', 'STRUCTURE', 0);
INSERT INTO `tbl_disciplines` VALUES (7, '', 'TEL', 'TELCOMS', 0);
INSERT INTO `tbl_disciplines` VALUES (8, '', 'SAF', 'SAFETY', 0);
INSERT INTO `tbl_disciplines` VALUES (10, '', 'dsd', 'dsd', 0);
INSERT INTO `tbl_disciplines` VALUES (11, '', 'dsd', 'sds', 0);
INSERT INTO `tbl_disciplines` VALUES (12, '', 'ds', 'ds', 0);
INSERT INTO `tbl_disciplines` VALUES (13, '', '2', 'fsfsf sfsf', 0);
INSERT INTO `tbl_disciplines` VALUES (14, '', '33', '33', 1);
INSERT INTO `tbl_disciplines` VALUES (15, '', '44', '44', 1);
INSERT INTO `tbl_disciplines` VALUES (16, '', '2', 'CIVIL', 0);
INSERT INTO `tbl_disciplines` VALUES (17, '', 'hg', 'jhjg', 0);
INSERT INTO `tbl_disciplines` VALUES (18, '', 'gfgfgf', 'hghghg', 0);
INSERT INTO `tbl_disciplines` VALUES (19, '', '1', '1', 0);

-- ----------------------------
-- Table structure for tbl_disciplines_log
-- ----------------------------
DROP TABLE IF EXISTS `tbl_disciplines_log`;
CREATE TABLE `tbl_disciplines_log`  (
  `id_discipline_logs` int(11) NOT NULL AUTO_INCREMENT,
  `id_disciplines` int(11) NOT NULL,
  `discipline_id` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `discipline_name` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_users` int(11) NOT NULL,
  `note` enum('add','update','delete','restore') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `datetime` datetime(0) NOT NULL,
  PRIMARY KEY (`id_discipline_logs`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_disciplines_log
-- ----------------------------
INSERT INTO `tbl_disciplines_log` VALUES (1, 12, 'ds', 'ds', 12, 'add', '2019-12-28 08:30:33');
INSERT INTO `tbl_disciplines_log` VALUES (2, 13, '2', 'fsfsf sfsf', 12, 'add', '2019-12-28 08:47:06');
INSERT INTO `tbl_disciplines_log` VALUES (3, 14, '33', '33', 12, 'add', '2019-12-28 09:29:34');
INSERT INTO `tbl_disciplines_log` VALUES (4, 15, '44', '44', 12, 'add', '2019-12-28 09:29:39');
INSERT INTO `tbl_disciplines_log` VALUES (5, 15, '44', '44', 12, 'delete', '2019-12-28 09:30:07');
INSERT INTO `tbl_disciplines_log` VALUES (6, 14, '33', '33', 12, 'delete', '2019-12-28 09:30:07');
INSERT INTO `tbl_disciplines_log` VALUES (7, 13, '2', 'fsfsf sfsf', 12, 'update', '2019-12-28 12:07:53');
INSERT INTO `tbl_disciplines_log` VALUES (8, 16, '2', 'CIVIL', 12, 'add', '2019-12-28 13:48:37');
INSERT INTO `tbl_disciplines_log` VALUES (9, 17, 'hg', 'jhjg', 12, 'add', '2020-01-06 08:52:19');
INSERT INTO `tbl_disciplines_log` VALUES (10, 18, 'gfgfgf', 'hghghg', 12, 'add', '2020-01-06 09:26:43');
INSERT INTO `tbl_disciplines_log` VALUES (11, 19, '1', '1', 12, 'add', '2020-01-06 16:26:24');

-- ----------------------------
-- Table structure for tbl_equipments
-- ----------------------------
DROP TABLE IF EXISTS `tbl_equipments`;
CREATE TABLE `tbl_equipments`  (
  `id_equipments` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_projects` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_systems` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_subs` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_items` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `equipment_no` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `equipment_desc` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_equipments`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

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
  `id_forms` bigint(11) NOT NULL AUTO_INCREMENT,
  `id_projects` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_disciplines` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_items` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_templates` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `template_type` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_forms`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

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
  `id_items` int(11) NOT NULL AUTO_INCREMENT,
  `id_projects` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_disciplines` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `item_type_id` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `item_type_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_items`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 66 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_items
-- ----------------------------
INSERT INTO `tbl_items` VALUES (1, '', '', '14', '11');
INSERT INTO `tbl_items` VALUES (2, '', '', '2', '2');
INSERT INTO `tbl_items` VALUES (3, '', '', '3', '2');
INSERT INTO `tbl_items` VALUES (4, '', '', '4', '2');
INSERT INTO `tbl_items` VALUES (5, '', '', '5', '2');
INSERT INTO `tbl_items` VALUES (6, '', '', '6', '2');
INSERT INTO `tbl_items` VALUES (7, '', '', '7', '2');
INSERT INTO `tbl_items` VALUES (8, '', '', '8', '2');
INSERT INTO `tbl_items` VALUES (9, '', '', '9', '2');
INSERT INTO `tbl_items` VALUES (10, '', '', '10', '2');
INSERT INTO `tbl_items` VALUES (11, '', '', '11', '2');
INSERT INTO `tbl_items` VALUES (12, '', '', '12', '2');
INSERT INTO `tbl_items` VALUES (13, '', '', '60', '18');
INSERT INTO `tbl_items` VALUES (14, '', '', '16', '11');
INSERT INTO `tbl_items` VALUES (15, '', '', '17', '11');
INSERT INTO `tbl_items` VALUES (16, '', '', '19', '11');
INSERT INTO `tbl_items` VALUES (17, '', '', '20', '11');
INSERT INTO `tbl_items` VALUES (18, '', '', '22', '11');
INSERT INTO `tbl_items` VALUES (19, '', '', '23', '11');
INSERT INTO `tbl_items` VALUES (20, '', '', '24', '11');
INSERT INTO `tbl_items` VALUES (21, '', '', '25', '11');
INSERT INTO `tbl_items` VALUES (22, '', '', '59', '2');
INSERT INTO `tbl_items` VALUES (23, '', '', '27', '11');
INSERT INTO `tbl_items` VALUES (24, '', '', '29', '12');
INSERT INTO `tbl_items` VALUES (25, '', '', '74', '12');
INSERT INTO `tbl_items` VALUES (26, '', '', '31', '12');
INSERT INTO `tbl_items` VALUES (27, '', '', '36', '2');
INSERT INTO `tbl_items` VALUES (28, '', '', '35', '2');
INSERT INTO `tbl_items` VALUES (29, '', '', '34', '12');
INSERT INTO `tbl_items` VALUES (30, '', '', '37', '2');
INSERT INTO `tbl_items` VALUES (31, '', '', '38', '12');
INSERT INTO `tbl_items` VALUES (32, '', '', '39', '1');
INSERT INTO `tbl_items` VALUES (33, '', '', '40', '1');
INSERT INTO `tbl_items` VALUES (34, '', '', '41', '1');
INSERT INTO `tbl_items` VALUES (35, '', '', '42', '1');
INSERT INTO `tbl_items` VALUES (36, '', '', '43', '1');
INSERT INTO `tbl_items` VALUES (37, '', '', '44', '1');
INSERT INTO `tbl_items` VALUES (38, '', '', '45', '1');
INSERT INTO `tbl_items` VALUES (39, '', '', '46', '1');
INSERT INTO `tbl_items` VALUES (40, '', '', '47', '1');
INSERT INTO `tbl_items` VALUES (41, '', '', '48', '1');
INSERT INTO `tbl_items` VALUES (42, '', '', '49', '1');
INSERT INTO `tbl_items` VALUES (43, '', '', '50', '1');
INSERT INTO `tbl_items` VALUES (44, '', '', '51', '1');
INSERT INTO `tbl_items` VALUES (45, '', '', '52', '1');
INSERT INTO `tbl_items` VALUES (46, '', '', '53', '1');
INSERT INTO `tbl_items` VALUES (47, '', '', '54', '1');
INSERT INTO `tbl_items` VALUES (48, '', '', '55', '1');
INSERT INTO `tbl_items` VALUES (49, '', '', '56', '1');
INSERT INTO `tbl_items` VALUES (50, '', '', '57', '1');
INSERT INTO `tbl_items` VALUES (51, '', '', '58', '1');
INSERT INTO `tbl_items` VALUES (52, '', '', '61', '2');
INSERT INTO `tbl_items` VALUES (53, '', '', '62', '17');
INSERT INTO `tbl_items` VALUES (54, '', '', '63', '17');
INSERT INTO `tbl_items` VALUES (55, '', '', '64', '17');
INSERT INTO `tbl_items` VALUES (56, '', '', '65', '17');
INSERT INTO `tbl_items` VALUES (57, '', '', '66', '17');
INSERT INTO `tbl_items` VALUES (58, '', '', '67', '17');
INSERT INTO `tbl_items` VALUES (59, '', '', '68', '17');
INSERT INTO `tbl_items` VALUES (60, '', '', '69', '15');
INSERT INTO `tbl_items` VALUES (61, '', '', '70', '17');
INSERT INTO `tbl_items` VALUES (62, '', '', '71', '17');
INSERT INTO `tbl_items` VALUES (63, '', '', '72', '11');
INSERT INTO `tbl_items` VALUES (64, '', '', '73', '12');
INSERT INTO `tbl_items` VALUES (65, '', '', '75', '2');

-- ----------------------------
-- Table structure for tbl_locations
-- ----------------------------
DROP TABLE IF EXISTS `tbl_locations`;
CREATE TABLE `tbl_locations`  (
  `id_locations` int(11) NOT NULL AUTO_INCREMENT,
  `id_projects` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `location_id` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `location_name` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `location_status` int(11) NOT NULL,
  PRIMARY KEY (`id_locations`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_locations
-- ----------------------------
INSERT INTO `tbl_locations` VALUES (3, '1', 's', 's', 1);
INSERT INTO `tbl_locations` VALUES (4, '1', 's', 's', 1);
INSERT INTO `tbl_locations` VALUES (5, '1', '23', 'ffs', 1);
INSERT INTO `tbl_locations` VALUES (6, '1', '12', 'asa', 0);

-- ----------------------------
-- Table structure for tbl_locations_log
-- ----------------------------
DROP TABLE IF EXISTS `tbl_locations_log`;
CREATE TABLE `tbl_locations_log`  (
  `id_location_logs` int(11) NOT NULL AUTO_INCREMENT,
  `id_locations` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_projects` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `location_id` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `location_name` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_users` int(11) NOT NULL,
  `note` enum('add','update','delete','restore') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `datetime` datetime(0) NOT NULL,
  PRIMARY KEY (`id_location_logs`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_locations_log
-- ----------------------------
INSERT INTO `tbl_locations_log` VALUES (10, '5', '1', '23', 'ffs', 12, 'delete', '2019-12-28 09:14:23');
INSERT INTO `tbl_locations_log` VALUES (11, '4', '1', 's', 's', 12, 'delete', '2019-12-28 09:14:23');
INSERT INTO `tbl_locations_log` VALUES (12, '3', '1', 's', 's', 12, 'delete', '2019-12-28 09:14:23');
INSERT INTO `tbl_locations_log` VALUES (13, '6', '1', '12', 'asa', 12, 'add', '2019-12-28 09:17:16');

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
INSERT INTO `tbl_menu` VALUES (121, 'form template', 'templates', 'icon-file-alt', 110, 'y');
INSERT INTO `tbl_menu` VALUES (122, 'assosiate', 'assosiate', 'icon-lightbulb', 110, 'y');
INSERT INTO `tbl_menu` VALUES (123, 'equipment item', 'equipment_item', 'icon-folder-open-alt', 111, 'y');
INSERT INTO `tbl_menu` VALUES (124, 'task sheet', 'tasksheet', 'icon-folder-close-alt', 111, 'y');
INSERT INTO `tbl_menu` VALUES (125, 'punch list', 'punchlists', 'icon-hdd', 111, 'y');
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
  `id_projects` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `project_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `project_desc` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `project_status` int(11) NOT NULL,
  PRIMARY KEY (`id_projects`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_projects
-- ----------------------------
INSERT INTO `tbl_projects` VALUES (1, 'RTO', 'RTO - U3 PROJECT', 'Systhetic Rubber Indonesia (SRI) U3 Project', 0);
INSERT INTO `tbl_projects` VALUES (15, 'RTO-02', 'RTO - U4 PROJECT', 'Systhetic Rubber Indonesia (SRI) U4 Project', 1);

-- ----------------------------
-- Table structure for tbl_projects_log
-- ----------------------------
DROP TABLE IF EXISTS `tbl_projects_log`;
CREATE TABLE `tbl_projects_log`  (
  `id_project_logs` int(11) NOT NULL AUTO_INCREMENT,
  `id_projects` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `project_id` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `project_name` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `project_desc` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_users` int(11) NOT NULL,
  `note` enum('add','update','delete','restore') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `datetime` datetime(0) NOT NULL,
  PRIMARY KEY (`id_project_logs`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_projects_log
-- ----------------------------
INSERT INTO `tbl_projects_log` VALUES (1, '6', 'RT2', 'RTT', 'kdjfkd dfsjdjf', 12, 'add', '2019-12-27 10:29:18');
INSERT INTO `tbl_projects_log` VALUES (2, '6', 'RT2-2', 'RTT OK', 'nnnnn kdjfkd dfsjdjf', 12, 'update', '2019-12-27 10:32:00');
INSERT INTO `tbl_projects_log` VALUES (3, '6', 'RT2', 'RTT', 'nnnnn kdjfkd dfsjdjf', 12, 'update', '2019-12-27 16:34:43');
INSERT INTO `tbl_projects_log` VALUES (4, '6', 'RT2', 'RTT', 'nnnnn kdjfkd dfsjdjf', 12, 'delete', '2019-12-27 16:42:38');
INSERT INTO `tbl_projects_log` VALUES (5, '2', 'JW1', 'Jawa 1 Power', 'Pertamina CGPP Jawa 1 Power', 12, 'delete', '2019-12-28 03:18:44');
INSERT INTO `tbl_projects_log` VALUES (6, '7', '1', '1', '1', 12, 'add', '2019-12-28 09:21:13');
INSERT INTO `tbl_projects_log` VALUES (7, '8', '2', '2', '2', 12, 'add', '2019-12-28 09:21:20');
INSERT INTO `tbl_projects_log` VALUES (8, '8', '2', '2', '2', 12, 'delete', '2019-12-28 09:21:47');
INSERT INTO `tbl_projects_log` VALUES (9, '7', '1', '1', '1', 12, 'delete', '2019-12-28 09:21:47');
INSERT INTO `tbl_projects_log` VALUES (10, '9', '1', '1', '1\r\n\r\n1', 12, 'add', '2019-12-28 11:16:28');
INSERT INTO `tbl_projects_log` VALUES (11, '9', '1', '1', '1\r\n\r\n1', 12, 'delete', '2019-12-28 11:16:40');
INSERT INTO `tbl_projects_log` VALUES (12, '10', '2', 'Project 2', 'dhsdsj djshdjhs dsdjsh', 12, 'add', '2019-12-28 13:47:19');
INSERT INTO `tbl_projects_log` VALUES (13, '11', '1', 'pembuatan software', 'ddssg sgsdf', 12, 'add', '2019-12-30 09:12:19');
INSERT INTO `tbl_projects_log` VALUES (14, '12', 'rt2', 'dsds', 'dsds', 12, 'add', '2019-12-30 09:14:18');
INSERT INTO `tbl_projects_log` VALUES (15, '13', '21', 'dsd', 'fgfggsd', 12, 'add', '2019-12-30 10:08:37');
INSERT INTO `tbl_projects_log` VALUES (16, '14', 'k', 'k', 'k', 12, 'add', '2020-01-04 21:34:34');
INSERT INTO `tbl_projects_log` VALUES (17, '14', 'k', 'k', 'k', 12, 'delete', '2020-01-04 21:35:25');
INSERT INTO `tbl_projects_log` VALUES (18, '13', '21', 'dsd', 'fgfggsd', 12, 'update', '2020-01-04 22:38:04');
INSERT INTO `tbl_projects_log` VALUES (19, '15', 'RTO-02', 'RTO - U4 PROJECT', 'Systhetic Rubber Indonesia (SRI) U4 Project', 13, 'add', '2020-01-17 14:40:43');
INSERT INTO `tbl_projects_log` VALUES (20, '15', 'RTO-02', 'RTO - U4 PROJECT', 'Systhetic Rubber Indonesia (SRI) U4 Project', 13, 'delete', '2020-01-17 14:40:57');

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
  `id_subs` int(11) NOT NULL AUTO_INCREMENT,
  `id_systems` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sub_id` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sub_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sub_status` int(11) NOT NULL,
  PRIMARY KEY (`id_subs`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_subs
-- ----------------------------
INSERT INTO `tbl_subs` VALUES (1, '1', '10-01', 'RTO Rich Off Gas Vent Header', 0);
INSERT INTO `tbl_subs` VALUES (2, '1', '10-02', 'Flare Vent Header', 0);
INSERT INTO `tbl_subs` VALUES (3, '1', '10-03', 'Off Gas to Burner', 0);
INSERT INTO `tbl_subs` VALUES (4, '2', '15-01', 'Instrument Air', 0);
INSERT INTO `tbl_subs` VALUES (5, '3', '20-01', 'Natural Gas for RTO Package', 0);
INSERT INTO `tbl_subs` VALUES (6, '3', '20-02', 'Cold Water Supply for RTO', 0);
INSERT INTO `tbl_subs` VALUES (7, '3', '20-03', 'Cold Water Return for RTO Package', 0);
INSERT INTO `tbl_subs` VALUES (8, '3', '20-05', 'RTO Package', 0);
INSERT INTO `tbl_subs` VALUES (9, '3', '20-04', 'Low Pressure N2 for RTO Package', 0);
INSERT INTO `tbl_subs` VALUES (10, '4', '25-01', 'Waste Air to RTO package', 0);
INSERT INTO `tbl_subs` VALUES (11, '5', '30-01', 'Emergency Lighting System', 0);
INSERT INTO `tbl_subs` VALUES (12, '5', '30-02', 'Normal Lighting System', 0);
INSERT INTO `tbl_subs` VALUES (13, '6', '35-01', 'Installation and Testing Instrument at RTO Package', 0);
INSERT INTO `tbl_subs` VALUES (14, '5', '30-03', 'Lightening and Earting system', 0);
INSERT INTO `tbl_subs` VALUES (15, '5', '30-4', 'test sub 30-4', 0);
INSERT INTO `tbl_subs` VALUES (17, '1', '9', 'fghyy', 1);
INSERT INTO `tbl_subs` VALUES (18, '12', '1', '1', 0);
INSERT INTO `tbl_subs` VALUES (19, '13', '1', 'fsfs', 0);
INSERT INTO `tbl_subs` VALUES (20, '13', 'f', 'fd', 0);
INSERT INTO `tbl_subs` VALUES (21, '13', 'f', 'fd', 0);
INSERT INTO `tbl_subs` VALUES (22, '1', '1', '1', 1);
INSERT INTO `tbl_subs` VALUES (23, '1', '1', '1', 1);
INSERT INTO `tbl_subs` VALUES (24, '1', '1', '1', 1);
INSERT INTO `tbl_subs` VALUES (25, '1', '1', '1', 1);
INSERT INTO `tbl_subs` VALUES (26, '1', '2', '2', 1);
INSERT INTO `tbl_subs` VALUES (27, '1', '2', '2', 1);
INSERT INTO `tbl_subs` VALUES (28, '2', '12', 'ddsds', 0);

-- ----------------------------
-- Table structure for tbl_subs_log
-- ----------------------------
DROP TABLE IF EXISTS `tbl_subs_log`;
CREATE TABLE `tbl_subs_log`  (
  `id_sub_logs` int(11) NOT NULL AUTO_INCREMENT,
  `id_subs` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_systems` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sub_id` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sub_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_users` int(11) NOT NULL,
  `note` enum('add','update','delete','restore') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `datetime` datetime(0) NOT NULL,
  PRIMARY KEY (`id_sub_logs`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_subs_log
-- ----------------------------
INSERT INTO `tbl_subs_log` VALUES (1, '18', '12', '1', '1', 12, 'add', '2019-12-28 03:12:29');
INSERT INTO `tbl_subs_log` VALUES (2, '19', '13', '1', 'fsfs', 12, 'add', '2019-12-28 03:17:49');
INSERT INTO `tbl_subs_log` VALUES (3, '20', '13', 'f', 'fd', 12, 'add', '2019-12-28 03:18:01');
INSERT INTO `tbl_subs_log` VALUES (4, '21', '13', 'f', 'fd', 12, 'add', '2019-12-28 03:18:11');
INSERT INTO `tbl_subs_log` VALUES (5, '22', '1', '1', '1', 12, 'add', '2019-12-28 09:26:20');
INSERT INTO `tbl_subs_log` VALUES (6, '23', '1', '1', '1', 12, 'add', '2019-12-28 09:26:27');
INSERT INTO `tbl_subs_log` VALUES (7, '24', '1', '1', '1', 12, 'add', '2019-12-28 09:27:02');
INSERT INTO `tbl_subs_log` VALUES (8, '25', '1', '1', '1', 12, 'add', '2019-12-28 09:27:09');
INSERT INTO `tbl_subs_log` VALUES (9, '25', '1', '1', '1', 12, 'delete', '2019-12-28 09:27:12');
INSERT INTO `tbl_subs_log` VALUES (10, '24', '1', '1', '1', 12, 'delete', '2019-12-28 09:27:12');
INSERT INTO `tbl_subs_log` VALUES (11, '22', '1', '1', '1', 12, 'delete', '2019-12-28 09:27:16');
INSERT INTO `tbl_subs_log` VALUES (12, '26', '1', '2', '2', 12, 'add', '2019-12-28 09:27:25');
INSERT INTO `tbl_subs_log` VALUES (13, '27', '1', '2', '2', 12, 'add', '2019-12-28 09:27:31');
INSERT INTO `tbl_subs_log` VALUES (14, '27', '1', '2', '2', 12, 'delete', '2019-12-28 09:27:34');
INSERT INTO `tbl_subs_log` VALUES (15, '26', '1', '2', '2', 12, 'delete', '2019-12-28 09:27:34');
INSERT INTO `tbl_subs_log` VALUES (16, '28', '2', '12', 'ddsds', 12, 'add', '2019-12-28 13:35:31');

-- ----------------------------
-- Table structure for tbl_systems
-- ----------------------------
DROP TABLE IF EXISTS `tbl_systems`;
CREATE TABLE `tbl_systems`  (
  `id_systems` int(11) NOT NULL AUTO_INCREMENT,
  `id_projects` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `system_id` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `system_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `system_status` int(11) NOT NULL,
  PRIMARY KEY (`id_systems`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_systems
-- ----------------------------
INSERT INTO `tbl_systems` VALUES (1, '1', '10', 'Off Gas KO Drum', 0);
INSERT INTO `tbl_systems` VALUES (2, '1', '15', 'Instrument Air System', 0);
INSERT INTO `tbl_systems` VALUES (3, '1', '20', 'Off Gas and Waste Air Treatment', 0);
INSERT INTO `tbl_systems` VALUES (4, '1', '25', 'RTO Waste Header', 0);
INSERT INTO `tbl_systems` VALUES (5, '1', '30', 'Lighting System', 0);
INSERT INTO `tbl_systems` VALUES (6, '1', '35', 'Fire & Gas System', 0);
INSERT INTO `tbl_systems` VALUES (7, '1', '50', 'test 2', 1);
INSERT INTO `tbl_systems` VALUES (8, '1', '40', 'test', 1);
INSERT INTO `tbl_systems` VALUES (11, '1', '20', 'komputer 1', 1);
INSERT INTO `tbl_systems` VALUES (12, '1', '1', 'nnn', 1);
INSERT INTO `tbl_systems` VALUES (13, '2', '1', 'dsds', 0);
INSERT INTO `tbl_systems` VALUES (14, '2', '222', 'fdfd', 0);
INSERT INTO `tbl_systems` VALUES (15, '1', '1', '1', 1);
INSERT INTO `tbl_systems` VALUES (16, '1', '1', '1', 1);
INSERT INTO `tbl_systems` VALUES (17, '10', '1', 'sada', 0);
INSERT INTO `tbl_systems` VALUES (18, '10', '2', '2', 0);
INSERT INTO `tbl_systems` VALUES (19, '1', 'dg', 'fg', 0);
INSERT INTO `tbl_systems` VALUES (20, '11', 'dsds', 'dsd', 0);
INSERT INTO `tbl_systems` VALUES (21, '1', '1', '1', 0);
INSERT INTO `tbl_systems` VALUES (22, '1', '1', '1', 0);
INSERT INTO `tbl_systems` VALUES (23, '1', '222', '2', 0);

-- ----------------------------
-- Table structure for tbl_systems_log
-- ----------------------------
DROP TABLE IF EXISTS `tbl_systems_log`;
CREATE TABLE `tbl_systems_log`  (
  `id_system_logs` int(11) NOT NULL AUTO_INCREMENT,
  `id_systems` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_projects` varbinary(50) NOT NULL,
  `system_id` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `system_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_users` int(11) NOT NULL,
  `note` enum('add','update','delete','restore') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `datetime` datetime(0) NOT NULL,
  PRIMARY KEY (`id_system_logs`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_systems_log
-- ----------------------------
INSERT INTO `tbl_systems_log` VALUES (1, '11', 0x31, '20', 'komputer', 12, 'add', '2019-12-27 17:51:38');
INSERT INTO `tbl_systems_log` VALUES (2, '11', 0x31, '20', 'komputer 1', 12, 'update', '2019-12-27 17:53:10');
INSERT INTO `tbl_systems_log` VALUES (3, '11', 0x31, '20', 'komputer 1', 12, 'delete', '2019-12-27 18:00:58');
INSERT INTO `tbl_systems_log` VALUES (4, '12', 0x31, '1', 'nnn', 12, 'add', '2019-12-28 03:11:39');
INSERT INTO `tbl_systems_log` VALUES (5, '12', 0x31, '1', 'nnn', 12, 'delete', '2019-12-28 03:12:57');
INSERT INTO `tbl_systems_log` VALUES (6, '13', 0x32, '1', 'dsds', 12, 'add', '2019-12-28 03:17:22');
INSERT INTO `tbl_systems_log` VALUES (7, '14', 0x32, '222', 'fdfd', 12, 'add', '2019-12-28 03:17:31');
INSERT INTO `tbl_systems_log` VALUES (8, '15', 0x31, '1', '1', 12, 'add', '2019-12-28 09:24:15');
INSERT INTO `tbl_systems_log` VALUES (9, '16', 0x31, '1', '1', 12, 'add', '2019-12-28 09:24:19');
INSERT INTO `tbl_systems_log` VALUES (10, '16', 0x31, '1', '1', 12, 'delete', '2019-12-28 09:24:23');
INSERT INTO `tbl_systems_log` VALUES (11, '15', 0x31, '1', '1', 12, 'delete', '2019-12-28 09:24:23');
INSERT INTO `tbl_systems_log` VALUES (12, '8', 0x31, '40', 'test', 12, 'delete', '2019-12-28 09:31:05');
INSERT INTO `tbl_systems_log` VALUES (13, '7', 0x31, '50', 'test 2', 12, 'delete', '2019-12-28 09:31:05');
INSERT INTO `tbl_systems_log` VALUES (14, '17', 0x3130, '1', 'sada', 12, 'add', '2020-01-04 22:44:58');
INSERT INTO `tbl_systems_log` VALUES (15, '18', 0x3130, '2', '2', 12, 'add', '2020-01-04 22:46:26');
INSERT INTO `tbl_systems_log` VALUES (16, '19', 0x31, 'dg', 'fg', 12, 'add', '2020-01-04 22:46:51');
INSERT INTO `tbl_systems_log` VALUES (17, '20', 0x3131, 'dsds', 'dsd', 12, 'add', '2020-01-05 08:44:37');
INSERT INTO `tbl_systems_log` VALUES (18, '18', 0x3130, '2', '2', 12, 'update', '2020-01-05 09:08:23');
INSERT INTO `tbl_systems_log` VALUES (19, '21', 0x31, '1', '1', 12, 'add', '2020-01-06 16:30:02');
INSERT INTO `tbl_systems_log` VALUES (20, '22', 0x31, '1', '1', 12, 'add', '2020-01-06 16:31:12');
INSERT INTO `tbl_systems_log` VALUES (21, '23', 0x31, '222', '2', 12, 'add', '2020-01-06 16:33:05');

-- ----------------------------
-- Table structure for tbl_template_details
-- ----------------------------
DROP TABLE IF EXISTS `tbl_template_details`;
CREATE TABLE `tbl_template_details`  (
  `id_template_details` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_templates` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `template_no` int(11) NOT NULL,
  `template_item` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_template_details`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 903 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_template_details
-- ----------------------------
INSERT INTO `tbl_template_details` VALUES (1, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (2, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (3, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (4, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (5, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (6, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (7, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (8, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (9, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (10, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (11, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (12, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (13, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (14, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (15, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (16, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (17, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (18, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (19, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (20, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (21, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (22, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (23, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (24, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (25, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (26, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (27, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (28, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (29, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (30, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (31, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (32, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (33, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (34, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (35, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (36, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (37, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (38, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (39, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (40, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (41, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (42, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (43, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (44, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (45, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (46, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (47, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (48, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (49, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (50, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (51, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (52, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (53, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (54, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (55, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (56, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (57, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (58, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (59, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (60, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (61, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (62, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (63, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (64, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (65, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (66, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (67, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (68, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (69, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (70, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (71, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (72, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (73, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (74, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (75, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (76, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (77, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (78, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (79, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (80, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (81, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (82, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (83, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (84, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (85, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (86, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (87, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (88, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (89, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (90, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (91, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (92, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (93, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (94, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (95, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (96, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (97, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (98, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (99, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (100, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (101, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (102, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (103, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (104, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (105, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (106, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (107, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (108, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (109, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (110, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (111, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (112, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (113, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (114, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (115, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (116, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (117, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (118, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (119, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (120, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (121, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (122, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (123, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (124, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (125, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (126, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (127, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (128, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (129, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (130, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (131, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (132, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (133, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (134, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (135, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (136, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (137, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (138, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (139, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (140, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (141, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (142, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (143, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (144, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (145, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (146, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (147, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (148, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (149, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (150, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (151, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (152, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (153, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (154, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (155, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (156, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (157, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (158, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (159, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (160, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (161, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (162, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (163, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (164, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (165, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (166, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (167, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (168, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (169, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (170, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (171, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (172, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (173, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (174, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (175, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (176, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (177, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (178, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (179, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (180, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (181, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (182, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (183, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (184, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (185, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (186, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (187, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (188, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (189, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (190, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (191, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (192, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (193, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (194, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (195, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (196, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (197, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (198, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (199, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (200, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (201, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (202, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (203, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (204, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (205, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (206, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (207, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (208, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (209, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (210, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (211, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (212, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (213, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (214, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (215, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (216, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (217, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (218, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (219, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (220, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (221, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (222, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (223, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (224, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (225, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (226, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (227, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (228, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (229, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (230, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (231, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (232, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (233, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (234, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (235, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (236, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (237, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (238, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (239, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (240, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (241, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (242, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (243, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (244, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (245, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (246, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (247, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (248, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (249, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (250, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (251, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (252, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (253, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (254, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (255, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (256, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (257, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (258, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (259, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (260, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (261, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (262, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (263, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (264, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (265, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (266, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (267, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (268, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (269, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (270, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (271, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (272, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (273, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (274, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (275, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (276, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (277, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (278, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (279, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (280, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (281, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (282, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (283, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (284, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (285, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (286, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (287, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (288, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (289, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (290, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (291, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (292, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (293, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (294, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (295, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (296, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (297, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (298, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (299, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (300, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (301, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (302, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (303, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (304, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (305, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (306, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (307, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (308, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (309, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (310, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (311, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (312, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (313, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (314, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (315, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (316, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (317, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (318, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (319, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (320, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (321, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (322, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (323, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (324, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (325, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (326, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (327, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (328, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (329, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (330, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (331, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (332, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (333, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (334, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (335, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (336, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (337, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (338, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (339, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (340, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (341, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (342, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (343, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (344, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (345, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (346, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (347, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (348, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (349, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (350, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (351, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (352, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (353, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (354, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (355, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (356, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (357, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (358, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (359, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (360, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (361, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (362, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (363, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (364, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (365, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (366, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (367, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (368, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (369, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (370, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (371, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (372, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (373, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (374, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (375, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (376, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (377, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (378, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (379, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (380, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (381, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (382, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (383, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (384, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (385, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (386, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (387, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (388, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (389, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (390, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (391, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (392, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (393, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (394, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (395, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (396, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (397, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (398, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (399, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (400, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (401, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (402, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (403, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (404, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (405, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (406, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (407, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (408, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (409, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (410, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (411, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (412, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (413, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (414, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (415, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (416, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (417, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (418, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (419, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (420, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (421, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (422, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (423, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (424, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (425, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (426, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (427, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (428, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (429, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (430, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (431, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (432, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (433, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (434, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (435, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (436, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (437, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (438, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (439, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (440, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (441, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (442, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (443, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (444, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (445, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (446, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (447, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (448, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (449, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (450, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (451, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (452, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (453, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (454, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (455, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (456, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (457, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (458, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (459, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (460, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (461, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (462, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (463, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (464, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (465, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (466, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (467, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (468, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (469, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (470, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (471, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (472, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (473, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (474, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (475, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (476, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (477, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (478, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (479, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (480, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (481, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (482, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (483, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (484, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (485, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (486, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (487, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (488, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (489, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (490, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (491, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (492, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (493, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (494, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (495, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (496, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (497, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (498, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (499, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (500, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (501, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (502, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (503, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (504, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (505, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (506, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (507, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (508, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (509, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (510, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (511, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (512, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (513, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (514, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (515, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (516, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (517, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (518, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (519, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (520, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (521, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (522, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (523, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (524, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (525, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (526, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (527, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (528, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (529, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (530, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (531, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (532, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (533, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (534, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (535, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (536, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (537, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (538, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (539, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (540, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (541, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (542, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (543, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (544, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (545, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (546, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (547, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (548, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (549, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (550, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (551, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (552, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (553, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (554, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (555, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (556, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (557, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (558, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (559, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (560, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (561, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (562, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (563, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (564, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (565, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (566, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (567, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (568, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (569, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (570, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (571, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (572, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (573, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (574, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (575, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (576, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (577, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (578, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (579, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (580, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (581, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (582, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (583, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (584, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (585, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (586, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (587, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (588, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (589, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (590, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (591, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (592, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (593, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (594, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (595, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (596, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (597, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (598, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (599, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (600, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (601, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (602, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (603, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (604, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (605, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (606, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (607, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (608, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (609, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (610, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (611, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (612, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (613, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (614, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (615, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (616, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (617, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (618, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (619, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (620, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (621, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (622, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (623, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (624, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (625, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (626, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (627, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (628, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (629, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (630, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (631, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (632, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (633, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (634, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (635, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (636, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (637, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (638, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (639, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (640, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (641, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (642, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (643, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (644, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (645, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (646, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (647, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (648, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (649, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (650, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (651, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (652, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (653, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (654, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (655, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (656, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (657, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (658, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (659, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (660, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (661, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (662, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (663, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (664, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (665, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (666, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (667, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (668, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (669, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (670, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (671, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (672, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (673, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (674, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (675, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (676, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (677, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (678, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (679, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (680, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (681, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (682, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (683, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (684, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (685, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (686, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (687, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (688, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (689, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (690, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (691, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (692, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (693, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (694, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (695, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (696, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (697, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (698, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (699, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (700, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (701, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (702, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (703, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (704, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (705, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (706, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (707, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (708, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (709, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (710, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (711, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (712, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (713, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (714, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (715, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (716, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (717, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (718, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (719, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (720, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (721, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (722, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (723, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (724, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (725, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (726, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (727, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (728, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (729, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (730, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (731, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (732, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (733, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (734, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (735, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (736, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (737, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (738, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (739, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (740, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (741, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (742, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (743, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (744, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (745, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (746, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (747, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (748, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (749, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (750, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (751, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (752, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (753, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (754, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (755, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (756, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (757, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (758, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (759, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (760, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (761, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (762, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (763, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (764, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (765, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (766, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (767, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (768, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (769, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (770, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (771, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (772, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (773, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (774, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (775, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (776, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (777, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (778, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (779, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (780, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (781, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (782, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (783, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (784, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (785, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (786, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (787, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (788, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (789, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (790, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (791, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (792, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (793, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (794, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (795, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (796, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (797, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (798, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (799, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (800, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (801, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (802, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (803, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (804, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (805, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (806, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (807, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (808, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (809, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (810, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (811, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (812, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (813, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (814, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (815, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (816, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (817, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (818, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (819, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (820, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (821, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (822, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (823, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (824, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (825, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (826, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (827, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (828, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (829, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (830, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (831, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (832, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (833, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (834, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (835, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (836, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (837, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (838, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (839, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (840, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (841, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (842, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (843, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (844, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (845, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (846, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (847, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (848, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (849, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (850, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (851, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (852, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (853, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (854, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (855, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (856, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (857, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (858, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (859, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (860, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (861, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (862, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (863, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (864, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (865, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (866, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (867, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (868, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (869, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (870, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (871, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (872, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (873, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (874, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (875, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (876, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (877, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (878, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (879, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (880, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (881, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (882, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (883, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (884, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (885, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (886, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (887, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (888, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (889, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (890, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (891, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (892, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (893, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (894, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (895, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (896, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (897, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (898, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (899, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (900, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (901, NULL, 0, '');
INSERT INTO `tbl_template_details` VALUES (902, NULL, 0, '');

-- ----------------------------
-- Table structure for tbl_template_details_temp
-- ----------------------------
DROP TABLE IF EXISTS `tbl_template_details_temp`;
CREATE TABLE `tbl_template_details_temp`  (
  `id_template_details` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_templates` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `template_no` int(11) NOT NULL,
  `template_item` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_template_details`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 903 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_template_details_temp
-- ----------------------------
INSERT INTO `tbl_template_details_temp` VALUES (1, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (2, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (3, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (4, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (5, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (6, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (7, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (8, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (9, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (10, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (11, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (12, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (13, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (14, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (15, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (16, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (17, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (18, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (19, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (20, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (21, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (22, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (23, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (24, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (25, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (26, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (27, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (28, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (29, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (30, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (31, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (32, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (33, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (34, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (35, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (36, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (37, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (38, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (39, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (40, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (41, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (42, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (43, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (44, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (45, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (46, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (47, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (48, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (49, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (50, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (51, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (52, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (53, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (54, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (55, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (56, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (57, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (58, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (59, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (60, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (61, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (62, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (63, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (64, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (65, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (66, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (67, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (68, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (69, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (70, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (71, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (72, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (73, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (74, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (75, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (76, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (77, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (78, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (79, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (80, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (81, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (82, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (83, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (84, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (85, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (86, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (87, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (88, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (89, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (90, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (91, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (92, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (93, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (94, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (95, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (96, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (97, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (98, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (99, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (100, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (101, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (102, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (103, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (104, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (105, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (106, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (107, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (108, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (109, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (110, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (111, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (112, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (113, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (114, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (115, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (116, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (117, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (118, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (119, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (120, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (121, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (122, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (123, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (124, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (125, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (126, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (127, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (128, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (129, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (130, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (131, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (132, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (133, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (134, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (135, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (136, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (137, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (138, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (139, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (140, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (141, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (142, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (143, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (144, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (145, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (146, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (147, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (148, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (149, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (150, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (151, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (152, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (153, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (154, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (155, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (156, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (157, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (158, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (159, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (160, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (161, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (162, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (163, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (164, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (165, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (166, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (167, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (168, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (169, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (170, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (171, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (172, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (173, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (174, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (175, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (176, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (177, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (178, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (179, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (180, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (181, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (182, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (183, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (184, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (185, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (186, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (187, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (188, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (189, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (190, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (191, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (192, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (193, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (194, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (195, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (196, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (197, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (198, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (199, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (200, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (201, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (202, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (203, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (204, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (205, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (206, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (207, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (208, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (209, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (210, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (211, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (212, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (213, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (214, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (215, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (216, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (217, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (218, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (219, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (220, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (221, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (222, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (223, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (224, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (225, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (226, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (227, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (228, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (229, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (230, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (231, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (232, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (233, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (234, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (235, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (236, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (237, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (238, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (239, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (240, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (241, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (242, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (243, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (244, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (245, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (246, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (247, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (248, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (249, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (250, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (251, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (252, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (253, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (254, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (255, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (256, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (257, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (258, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (259, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (260, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (261, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (262, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (263, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (264, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (265, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (266, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (267, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (268, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (269, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (270, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (271, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (272, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (273, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (274, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (275, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (276, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (277, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (278, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (279, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (280, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (281, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (282, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (283, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (284, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (285, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (286, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (287, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (288, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (289, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (290, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (291, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (292, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (293, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (294, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (295, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (296, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (297, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (298, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (299, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (300, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (301, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (302, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (303, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (304, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (305, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (306, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (307, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (308, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (309, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (310, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (311, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (312, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (313, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (314, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (315, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (316, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (317, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (318, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (319, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (320, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (321, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (322, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (323, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (324, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (325, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (326, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (327, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (328, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (329, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (330, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (331, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (332, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (333, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (334, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (335, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (336, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (337, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (338, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (339, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (340, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (341, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (342, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (343, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (344, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (345, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (346, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (347, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (348, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (349, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (350, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (351, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (352, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (353, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (354, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (355, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (356, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (357, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (358, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (359, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (360, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (361, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (362, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (363, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (364, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (365, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (366, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (367, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (368, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (369, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (370, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (371, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (372, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (373, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (374, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (375, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (376, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (377, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (378, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (379, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (380, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (381, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (382, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (383, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (384, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (385, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (386, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (387, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (388, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (389, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (390, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (391, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (392, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (393, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (394, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (395, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (396, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (397, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (398, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (399, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (400, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (401, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (402, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (403, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (404, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (405, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (406, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (407, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (408, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (409, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (410, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (411, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (412, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (413, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (414, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (415, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (416, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (417, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (418, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (419, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (420, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (421, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (422, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (423, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (424, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (425, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (426, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (427, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (428, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (429, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (430, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (431, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (432, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (433, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (434, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (435, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (436, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (437, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (438, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (439, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (440, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (441, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (442, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (443, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (444, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (445, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (446, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (447, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (448, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (449, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (450, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (451, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (452, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (453, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (454, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (455, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (456, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (457, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (458, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (459, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (460, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (461, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (462, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (463, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (464, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (465, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (466, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (467, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (468, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (469, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (470, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (471, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (472, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (473, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (474, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (475, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (476, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (477, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (478, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (479, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (480, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (481, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (482, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (483, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (484, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (485, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (486, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (487, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (488, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (489, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (490, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (491, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (492, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (493, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (494, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (495, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (496, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (497, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (498, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (499, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (500, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (501, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (502, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (503, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (504, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (505, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (506, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (507, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (508, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (509, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (510, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (511, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (512, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (513, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (514, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (515, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (516, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (517, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (518, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (519, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (520, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (521, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (522, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (523, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (524, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (525, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (526, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (527, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (528, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (529, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (530, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (531, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (532, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (533, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (534, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (535, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (536, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (537, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (538, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (539, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (540, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (541, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (542, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (543, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (544, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (545, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (546, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (547, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (548, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (549, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (550, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (551, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (552, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (553, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (554, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (555, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (556, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (557, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (558, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (559, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (560, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (561, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (562, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (563, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (564, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (565, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (566, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (567, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (568, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (569, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (570, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (571, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (572, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (573, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (574, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (575, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (576, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (577, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (578, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (579, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (580, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (581, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (582, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (583, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (584, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (585, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (586, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (587, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (588, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (589, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (590, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (591, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (592, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (593, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (594, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (595, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (596, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (597, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (598, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (599, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (600, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (601, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (602, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (603, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (604, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (605, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (606, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (607, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (608, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (609, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (610, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (611, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (612, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (613, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (614, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (615, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (616, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (617, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (618, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (619, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (620, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (621, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (622, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (623, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (624, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (625, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (626, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (627, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (628, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (629, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (630, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (631, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (632, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (633, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (634, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (635, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (636, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (637, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (638, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (639, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (640, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (641, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (642, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (643, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (644, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (645, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (646, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (647, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (648, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (649, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (650, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (651, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (652, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (653, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (654, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (655, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (656, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (657, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (658, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (659, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (660, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (661, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (662, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (663, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (664, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (665, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (666, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (667, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (668, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (669, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (670, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (671, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (672, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (673, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (674, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (675, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (676, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (677, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (678, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (679, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (680, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (681, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (682, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (683, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (684, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (685, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (686, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (687, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (688, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (689, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (690, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (691, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (692, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (693, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (694, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (695, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (696, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (697, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (698, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (699, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (700, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (701, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (702, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (703, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (704, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (705, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (706, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (707, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (708, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (709, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (710, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (711, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (712, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (713, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (714, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (715, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (716, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (717, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (718, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (719, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (720, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (721, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (722, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (723, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (724, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (725, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (726, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (727, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (728, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (729, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (730, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (731, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (732, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (733, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (734, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (735, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (736, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (737, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (738, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (739, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (740, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (741, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (742, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (743, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (744, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (745, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (746, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (747, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (748, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (749, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (750, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (751, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (752, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (753, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (754, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (755, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (756, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (757, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (758, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (759, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (760, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (761, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (762, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (763, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (764, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (765, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (766, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (767, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (768, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (769, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (770, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (771, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (772, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (773, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (774, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (775, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (776, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (777, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (778, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (779, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (780, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (781, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (782, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (783, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (784, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (785, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (786, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (787, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (788, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (789, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (790, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (791, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (792, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (793, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (794, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (795, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (796, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (797, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (798, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (799, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (800, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (801, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (802, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (803, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (804, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (805, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (806, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (807, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (808, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (809, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (810, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (811, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (812, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (813, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (814, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (815, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (816, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (817, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (818, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (819, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (820, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (821, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (822, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (823, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (824, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (825, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (826, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (827, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (828, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (829, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (830, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (831, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (832, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (833, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (834, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (835, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (836, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (837, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (838, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (839, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (840, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (841, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (842, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (843, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (844, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (845, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (846, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (847, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (848, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (849, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (850, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (851, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (852, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (853, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (854, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (855, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (856, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (857, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (858, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (859, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (860, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (861, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (862, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (863, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (864, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (865, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (866, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (867, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (868, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (869, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (870, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (871, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (872, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (873, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (874, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (875, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (876, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (877, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (878, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (879, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (880, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (881, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (882, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (883, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (884, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (885, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (886, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (887, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (888, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (889, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (890, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (891, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (892, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (893, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (894, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (895, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (896, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (897, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (898, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (899, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (900, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (901, NULL, 0, '');
INSERT INTO `tbl_template_details_temp` VALUES (902, NULL, 0, '');

-- ----------------------------
-- Table structure for tbl_templates
-- ----------------------------
DROP TABLE IF EXISTS `tbl_templates`;
CREATE TABLE `tbl_templates`  (
  `id_templates` int(11) NOT NULL AUTO_INCREMENT,
  `template_id` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `template_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `template_type` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_disciplines` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `template_title_1` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `template_title_2` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `template_title_3` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_templates`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 85 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_templates
-- ----------------------------
INSERT INTO `tbl_templates` VALUES (1, '1', '1', '19', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (2, '2', '1', '33', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (3, '3', '3', '16', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (4, '4', '4', '4', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (5, '5', '4', '12', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (6, '6', '6', '4', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (7, '7', '6', '13', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (8, '17', '13', '19', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (9, '11', '10', '4', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (10, '10', '8', '6', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (11, '13', '11', '5', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (12, '14', '11', '15', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (13, '15', '9', '11', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (14, '16', '9', '14', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (15, '18', '13', '33', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (16, '19', '14', '20', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (17, '20', '17', '28', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (18, '21', '17', '42', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (19, '22', '18', '24', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (20, '84', '23', '38', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (21, '24', '19', '29', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (22, '25', '19', '43', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (23, '26', '20', '25', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (24, '27', '20', '39', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (25, '28', '23', '22', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (26, '29', '23', '36', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (27, '30', '24', '23', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (28, '31', '24', '37', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (29, '32', '25', '26', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (30, '33', '25', '40', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (31, '34', '26', '18', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (32, '35', '26', '32', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (33, '36', '14', '34', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (34, '89', '73', '79', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (35, '38', '31', '30', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (36, '39', '12', '4', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (37, '40', '12', '13', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (38, '41', '36', '1', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (39, '42', '37', '4', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (40, '43', '37', '13', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (41, '44', '31', '44', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (42, '45', '31', '45', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (43, '46', '31', '46', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (44, '47', '15', '65', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (45, '48', '16', '67', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (46, '49', '22', '66', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (47, '50', '27', '64', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (48, '51', '27', '73', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (49, '52', '2', '68', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (50, '53', '2', '77', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (51, '54', '5', '71', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (52, '55', '7', '70', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (53, '59', '28', '72', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (54, '60', '39', '52', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (55, '61', '43', '47', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (56, '62', '41', '48', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (57, '63', '40', '47', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (58, '64', '42', '47', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (59, '65', '45', '49', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (60, '66', '47', '47', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (61, '67', '46', '51', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (62, '68', '48', '50', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (63, '69', '49', '50', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (64, '70', '53', '50', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (65, '71', '54', '48', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (66, '72', '55', '52', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (67, '73', '56', '47', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (68, '74', '57', '54', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (69, '75', '58', '51', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (70, '76', '34', '78', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (71, '77', '34', '80', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (72, '78', '38', '78', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (73, '79', '0', '0', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (74, '80', '59', '16', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (75, '81', '61', '10', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (76, '88', '73', '44', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (77, '83', '0', '0', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (78, '85', '73', '46', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (79, '86', '0', '44', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (80, '87', '73', '45', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (81, '90', '75', '3', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (82, '91', '73', '78', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (83, '92', '73', '74', '', NULL, NULL, NULL);
INSERT INTO `tbl_templates` VALUES (84, '93', '9', '6', '', NULL, NULL, NULL);

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
