/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : localhost:3306
 Source Schema         : laboratory-consumable

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 04/01/2022 19:53:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for borrow-info
-- ----------------------------
DROP TABLE IF EXISTS `borrow-info`;
CREATE TABLE `borrow-info`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `sort` smallint NOT NULL DEFAULT 0 COMMENT '排序',
  `status` smallint NOT NULL DEFAULT 1 COMMENT '启用状态',
  `description` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `deletedAt` datetime(6) NULL DEFAULT NULL,
  `borrowUser` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户名称',
  `borrowUserNo` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户编号',
  `materialNo` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '耗材编号',
  `materialName` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '耗材名称',
  `borrowStatus` smallint NOT NULL DEFAULT 1 COMMENT '借出状态',
  `borrowTime` datetime NOT NULL COMMENT '借出时间',
  `returnTime` datetime NULL DEFAULT NULL COMMENT '归还时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of borrow-info
-- ----------------------------
INSERT INTO `borrow-info` VALUES (1, 0, 1, NULL, '2020-09-28 15:25:09.067261', '2020-09-28 16:27:21.000000', NULL, 'zhangsan', 'HB-000002', 'string', '测试', 2, '2020-09-28 15:25:09', NULL);
INSERT INTO `borrow-info` VALUES (2, 0, 1, NULL, '2020-09-28 16:29:37.856810', '2020-09-30 13:56:48.000000', NULL, '张三', 'HB-000002', 'string', '测试', 2, '2020-09-28 16:29:38', NULL);
INSERT INTO `borrow-info` VALUES (3, 0, 1, NULL, '2020-09-30 13:56:43.873998', '2020-09-30 13:56:49.000000', NULL, '张三', 'HB-000002', 'string2', '测试2', 2, '2020-09-30 13:56:44', NULL);
INSERT INTO `borrow-info` VALUES (4, 0, 1, NULL, '2020-09-30 13:56:58.388365', '2020-09-30 13:56:58.388365', NULL, '张三', 'HB-000002', 'string', '测试', 1, '2020-09-30 13:56:58', NULL);
INSERT INTO `borrow-info` VALUES (5, 0, 1, NULL, '2020-09-30 13:56:59.005289', '2020-09-30 13:57:10.000000', NULL, '张三', 'HB-000002', 'string2', '测试2', 2, '2020-09-30 13:56:59', NULL);

-- ----------------------------
-- Table structure for casbin_rule
-- ----------------------------
DROP TABLE IF EXISTS `casbin_rule`;
CREATE TABLE `casbin_rule`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `ptype` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `v0` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `v1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `v2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `v3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `v4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `v5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of casbin_rule
-- ----------------------------
INSERT INTO `casbin_rule` VALUES (82, 'p', 'SYS_BORROWER', '', NULL, NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES (83, 'p', 'SYS_BORROWER', '/material/borrow', NULL, NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES (84, 'p', 'SYS_BORROWER', '/material/borrow', NULL, NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES (85, 'p', '3123213', NULL, '', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES (86, 'p', '323123', NULL, '', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES (87, 'p', '323123', '/system/menu', NULL, NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES (88, 'p', '323123', '/system/menu/getTree', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES (89, 'p', '323123', '/system/user', NULL, NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES (90, 'p', '323123', '/system/role', NULL, NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES (91, 'p', '323123', '/system/dataDictionary', NULL, NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES (100, 'p', '3213', '/system', '', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES (101, 'p', '3213', '/system/menu', NULL, NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES (102, 'p', '3213', '/system/menu/getTree', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES (103, 'p', '3213', '/system/user', NULL, NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES (104, 'p', '3213', '/system/role', NULL, NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES (105, 'p', '3213', '/system/dataDictionary', NULL, NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES (106, 'p', '3213', '/material', NULL, NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES (107, 'p', '3213', '/material/manage', NULL, NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES (108, 'p', '3213', '/material/borrow', NULL, NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES (109, 'p', '3213', '/material/borrow', NULL, NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES (110, 'p', '3123', '/system', '', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES (111, 'p', '3123', '/system/menu', NULL, NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES (112, 'p', '3123', '/system/menu/getTree', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES (113, 'p', '3123', '/system/user', NULL, NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES (114, 'p', '3123', '/system/role', NULL, NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES (115, 'p', '3123', '/system/dataDictionary', NULL, NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES (283, 'p', 'SYS_ADMIN', '/system', '', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES (284, 'p', 'SYS_ADMIN', '/system/menu', NULL, NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES (285, 'p', 'SYS_ADMIN', '/system/menu/getTree', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES (286, 'p', 'SYS_ADMIN', '/system/user', NULL, NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES (287, 'p', 'SYS_ADMIN', '/system/role', NULL, NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES (288, 'p', 'SYS_ADMIN', '/system/dataDictionary', NULL, NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES (289, 'p', 'SYS_ADMIN', '/material/manage', NULL, NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES (290, 'p', 'SYS_ADMIN', '/system/menu/create', 'POST', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES (291, 'p', 'SYS_ADMIN', '/system/menu/update', 'POST', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES (292, 'p', 'SYS_ADMIN', '/system/menu/deleteBatch', 'POST', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES (293, 'p', 'SYS_ADMIN', '/system/user/create', 'POST', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES (294, 'p', 'SYS_ADMIN', '/system/user/update', 'POST', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES (295, 'p', 'SYS_ADMIN', '/system/user/deleteBatch', 'POST', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES (296, 'p', 'SYS_ADMIN', '/system/role/create', 'POST', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES (297, 'p', 'SYS_ADMIN', '/system/role/update', 'POST', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES (298, 'p', 'SYS_ADMIN', '/system/role/deleteBatch', 'POST', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES (299, 'p', 'SYS_ADMIN', '/system/dataDictionary/create', 'POST', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES (300, 'p', 'SYS_ADMIN', '/system/dataDictionary/update', 'POST', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES (301, 'p', 'SYS_ADMIN', '/system/dataDictionary/deleteBatch', 'POST', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES (302, 'p', 'SYS_ADMIN', '/laboratory/material/create', 'POST', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES (303, 'p', 'SYS_ADMIN', '/laboratory/material/update', 'POST', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES (304, 'p', 'SYS_ADMIN', '/laboratory/material/deleteBatch', 'POST', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES (305, 'p', 'SYS_ADMIN', '/employee', 'POST', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES (306, 'p', 'SYS_ADMIN', '/employeePlan', 'POST', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES (307, 'p', 'SYS_ADMIN', '/eploInfoMaintain', 'POST', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES (308, 'p', 'SYS_ADMIN', '/requestMng', 'POST', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES (309, 'p', 'SYS_ADMIN', '/ant', 'POST', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES (310, 'p', 'SYS_ADMIN', '/eploInfoMaintain/postAssign', 'POST', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES (311, 'p', 'SYS_ADMIN', '/eploInfoMaintain/infoQuery', 'POST', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES (312, 'p', 'SYS_ADMIN', '/requestMng/quit', 'POST', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES (313, 'p', 'SYS_ADMIN', '/requestMng/transpo', 'POST', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES (314, 'p', 'SYS_ADMIN', '/requestMng/internal', 'POST', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES (315, 'p', 'SYS_ADMIN', '/requestMng/transPost', 'POST', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES (316, 'p', 'SYS_ADMIN', '/employee/employeeMng', 'POST', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES (317, 'p', 'SYS_ADMIN', '/employeePlan/planAdd', 'POST', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for data-dictionary
-- ----------------------------
DROP TABLE IF EXISTS `data-dictionary`;
CREATE TABLE `data-dictionary`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `sort` smallint NOT NULL DEFAULT 0 COMMENT '排序',
  `status` smallint NOT NULL DEFAULT 1 COMMENT '启用状态',
  `description` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `deletedAt` datetime(6) NULL DEFAULT NULL,
  `dictionaryCode` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '数据字典编码',
  `dictionaryName` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '数据字典名',
  `dictionaryValue` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '数据字典名',
  `mpath` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  `parentId` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `IDX_ef46424f32f51ffc98db51c3c7`(`dictionaryName` ASC) USING BTREE,
  UNIQUE INDEX `IDX_fb0196e930b355fd62c447df3a`(`dictionaryValue` ASC) USING BTREE,
  INDEX `FK_12381dc566d50a85705f37299e2`(`parentId` ASC) USING BTREE,
  CONSTRAINT `FK_12381dc566d50a85705f37299e2` FOREIGN KEY (`parentId`) REFERENCES `data-dictionary` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of data-dictionary
-- ----------------------------
INSERT INTO `data-dictionary` VALUES (2, 0, 1, NULL, '2020-09-10 23:20:31.680843', '2020-09-10 23:20:31.000000', NULL, 'LAB', '耗材', 'MAT001', '2.', NULL);
INSERT INTO `data-dictionary` VALUES (3, 0, 1, NULL, '2020-09-10 23:23:23.500715', '2020-09-10 23:23:23.000000', NULL, 'LAB_MATERIAL', '塑料', 'MAT001001', '2.3.', 2);
INSERT INTO `data-dictionary` VALUES (4, 0, 1, NULL, '2020-09-10 23:25:28.267558', '2020-09-10 23:25:28.000000', NULL, 'LAB_MATERIAL_PLASTIC', '手套', 'MAT001001001', '2.3.4.', 3);
INSERT INTO `data-dictionary` VALUES (5, 0, 1, NULL, '2020-09-13 00:56:53.509307', '2020-09-13 00:57:16.000000', NULL, 'LAB_MATERIAL_PLASTIC', '滴管', 'MAT001001002', '2.3.5.', 3);

-- ----------------------------
-- Table structure for material
-- ----------------------------
DROP TABLE IF EXISTS `material`;
CREATE TABLE `material`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `sort` smallint NOT NULL DEFAULT 0 COMMENT '排序',
  `status` smallint NOT NULL DEFAULT 1 COMMENT '启用状态',
  `description` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `deletedAt` datetime(6) NULL DEFAULT NULL,
  `materialName` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '耗材名称',
  `materialNo` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '耗材编号',
  `materialType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '耗材类型',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `IDX_97c577247e36f27ba0725c7692`(`materialNo` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of material
-- ----------------------------
INSERT INTO `material` VALUES (1, 0, 1, NULL, '2020-09-21 17:37:04.458895', '2020-09-21 17:37:04.458895', NULL, '测试', 'string', 'MAT001001001');
INSERT INTO `material` VALUES (2, 1, 1, NULL, '2020-09-29 14:24:05.484325', '2020-09-29 14:24:05.484325', NULL, '测试2', 'string2', 'MAT001001');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `sort` smallint NOT NULL DEFAULT 0 COMMENT '排序',
  `status` smallint NOT NULL DEFAULT 1 COMMENT '启用状态',
  `description` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `deletedAt` datetime(6) NULL DEFAULT NULL,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `action` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `type` smallint NOT NULL DEFAULT 1,
  `path` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `visiable` smallint NOT NULL DEFAULT 1,
  `mpath` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  `parentId` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `IDX_51b63874cdce0d6898a0b2150f`(`name` ASC) USING BTREE,
  INDEX `FK_23ac1b81a7bfb85b14e86bd23a5`(`parentId` ASC) USING BTREE,
  CONSTRAINT `FK_23ac1b81a7bfb85b14e86bd23a5` FOREIGN KEY (`parentId`) REFERENCES `menu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, 0, 1, NULL, '2020-09-03 23:44:54.485160', '2020-09-21 16:32:16.000000', NULL, '系统', '', 'SettingOutlined', 1, '/system', 1, '1.', NULL);
INSERT INTO `menu` VALUES (2, 0, 1, NULL, '2020-09-03 23:45:28.094145', '2020-09-03 23:45:28.000000', NULL, '菜单', NULL, 'BarsOutlined', 3, '/system/menu', 1, '1.2.', 1);
INSERT INTO `menu` VALUES (3, 0, 1, NULL, '2020-09-03 23:46:16.523511', '2020-09-03 23:46:16.000000', NULL, '获取个人菜单树', 'GET', NULL, 2, '/system/menu/getTree', 1, '1.2.3.', 2);
INSERT INTO `menu` VALUES (4, 0, 1, NULL, '2020-09-04 00:00:19.253767', '2020-09-04 00:01:49.000000', NULL, '用户', NULL, 'UserOutlined', 3, '/system/user', 1, '1.4.', 1);
INSERT INTO `menu` VALUES (5, 0, 1, NULL, '2020-09-04 00:02:15.196110', '2020-09-04 00:02:15.000000', NULL, '角色', NULL, 'SkinOutlined', 3, '/system/role', 1, '1.5.', 1);
INSERT INTO `menu` VALUES (6, 0, 1, NULL, '2020-09-07 22:49:08.440715', '2020-09-07 22:49:08.000000', NULL, '数据字典', NULL, 'ReadOutlined', 3, '/system/dataDictionary', 1, '1.6.', 1);
INSERT INTO `menu` VALUES (7, 0, 1, NULL, '2020-09-20 23:38:18.301381', '2020-09-21 16:32:24.000000', NULL, '耗材', NULL, 'BankOutlined', 1, '/material', 1, '7.', NULL);
INSERT INTO `menu` VALUES (8, 0, 1, NULL, '2020-09-20 23:39:38.412216', '2020-09-20 23:41:54.000000', NULL, '耗材管理', NULL, 'ExperimentOutlined', 3, '/material/manage', 1, '7.8.', 7);
INSERT INTO `menu` VALUES (9, 0, 1, NULL, '2020-09-20 23:45:43.631813', '2020-09-20 23:45:43.000000', NULL, '耗材借用', NULL, 'SolutionOutlined', 3, '/material/borrow', 1, '7.9.', 7);
INSERT INTO `menu` VALUES (10, 0, 1, NULL, '2020-09-20 23:46:51.401981', '2020-09-23 17:32:39.000000', NULL, '借用记录', NULL, 'SolutionOutlined', 3, '/material/borrowRecord', 1, '7.10.', 7);
INSERT INTO `menu` VALUES (11, 0, 1, NULL, '2020-09-21 17:14:13.245402', '2020-09-21 17:14:18.000000', '2020-09-21 17:14:18.000000', 'actionSheetOpen', NULL, NULL, 1, '3333', 1, '11.', NULL);
INSERT INTO `menu` VALUES (12, 0, 1, NULL, '2020-10-19 10:51:22.076729', '2020-10-19 10:51:22.000000', NULL, '新增菜单', 'POST', NULL, 2, '/system/menu/create', 1, '1.2.12.', 2);
INSERT INTO `menu` VALUES (13, 0, 1, NULL, '2020-10-19 10:51:48.679992', '2020-10-19 10:51:48.000000', NULL, '修改菜单', 'POST', NULL, 2, '/system/menu/update', 1, '1.2.13.', 2);
INSERT INTO `menu` VALUES (14, 0, 1, NULL, '2020-10-19 10:52:29.871844', '2020-10-19 10:52:29.000000', NULL, '删除菜单', 'POST', NULL, 2, '/system/menu/deleteBatch', 1, '1.2.14.', 2);
INSERT INTO `menu` VALUES (15, 0, 1, NULL, '2020-10-19 10:53:14.147511', '2020-10-19 10:54:15.000000', NULL, '新增用户', 'POST', NULL, 2, '/system/user/create', 1, '1.4.15.', 4);
INSERT INTO `menu` VALUES (16, 0, 1, NULL, '2020-10-19 10:53:34.889986', '2020-10-19 10:54:21.000000', NULL, '修改用户', 'POST', NULL, 2, '/system/user/update', 1, '1.4.16.', 4);
INSERT INTO `menu` VALUES (17, 0, 1, NULL, '2020-10-19 10:54:42.113795', '2020-10-19 11:02:50.000000', NULL, '删除用户', 'POST', NULL, 2, '/system/user/deleteBatch', 1, '1.4.17.', 4);
INSERT INTO `menu` VALUES (18, 0, 1, NULL, '2020-10-19 10:56:32.489346', '2020-10-19 10:56:32.000000', NULL, '新增角色', 'POST', NULL, 2, '/system/role/create', 1, '1.5.18.', 5);
INSERT INTO `menu` VALUES (19, 0, 1, NULL, '2020-10-19 10:57:08.548920', '2020-10-19 10:57:30.000000', NULL, '修改角色', 'POST', NULL, 2, '/system/role/update', 1, '1.5.19.', 5);
INSERT INTO `menu` VALUES (20, 0, 1, NULL, '2020-10-19 10:59:53.066972', '2020-10-19 11:00:02.000000', NULL, '删除角色', 'POST', NULL, 2, '/system/role/deleteBatch', 1, '1.5.20.', 5);
INSERT INTO `menu` VALUES (21, 0, 1, NULL, '2020-10-19 11:01:34.030114', '2020-10-19 11:01:34.000000', NULL, '新增字典', 'POST', NULL, 2, '/system/dataDictionary/create', 1, '1.6.21.', 6);
INSERT INTO `menu` VALUES (22, 0, 1, NULL, '2020-10-19 11:01:59.497863', '2020-10-19 11:02:44.000000', NULL, '修改数据字典', 'POST', NULL, 2, '/system/dataDictionary/update', 1, '1.6.22.', 6);
INSERT INTO `menu` VALUES (23, 0, 1, NULL, '2020-10-19 11:02:35.830315', '2020-10-19 11:02:35.000000', NULL, '删除数据字典', 'POST', NULL, 2, '/system/dataDictionary/deleteBatch', 1, '1.6.23.', 6);
INSERT INTO `menu` VALUES (24, 0, 1, NULL, '2020-10-19 11:04:07.970287', '2020-10-19 11:05:33.000000', NULL, '创建耗材', 'POST', NULL, 2, '/laboratory/material/create', 1, '7.8.24.', 8);
INSERT INTO `menu` VALUES (25, 0, 1, NULL, '2020-10-19 11:04:29.741210', '2020-10-19 11:05:28.000000', NULL, '修改耗材', 'POST', NULL, 2, '/laboratory/material/update', 1, '7.8.25.', 8);
INSERT INTO `menu` VALUES (26, 0, 1, NULL, '2020-10-19 11:05:16.732962', '2020-10-19 11:05:16.000000', NULL, '删除耗材', 'POST', NULL, 2, '/laboratory/material/deleteBatch', 1, '7.8.26.', 8);
INSERT INTO `menu` VALUES (27, 0, 1, NULL, '2022-01-04 17:26:35.528710', '2022-01-04 19:44:23.000000', NULL, '在编人数的维护', 'POST', 'BarsOutlined', 1, '/employee', 1, '27.', NULL);
INSERT INTO `menu` VALUES (28, 0, 1, NULL, '2022-01-04 17:28:26.156150', '2022-01-04 19:44:43.000000', NULL, '新增编制计划的录入', 'POST', 'BlockOutlined', 1, '/employeePlan', 1, '28.', NULL);
INSERT INTO `menu` VALUES (29, 0, 1, NULL, '2022-01-04 17:29:39.880055', '2022-01-04 19:44:59.000000', NULL, '编制信息维护', 'POST', 'ContainerOutlined', 1, '/eploInfoMaintain', 1, '29.', NULL);
INSERT INTO `menu` VALUES (30, 0, 1, NULL, '2022-01-04 17:30:14.190157', '2022-01-04 19:45:15.000000', NULL, '编制申请管理', 'POST', 'FileAddOutlined', 1, '/requestMng', 1, '30.', NULL);
INSERT INTO `menu` VALUES (31, 0, 1, NULL, '2022-01-04 17:32:46.960301', '2022-01-04 17:32:46.000000', NULL, ' 审批管理', 'POST', 'BankOutlined', 1, '/ant', 1, '31.', NULL);
INSERT INTO `menu` VALUES (47, 0, 1, NULL, '2022-01-04 19:12:00.790257', '2022-01-04 19:12:00.000000', NULL, '招聘岗位分配', 'POST', NULL, 3, '/eploInfoMaintain/postAssign', 1, '29.47.', 29);
INSERT INTO `menu` VALUES (48, 0, 1, NULL, '2022-01-04 19:18:45.371342', '2022-01-04 19:18:45.000000', NULL, '编制信息查询/更新', 'POST', NULL, 3, '/eploInfoMaintain/infoQuery', 1, '29.48.', 29);
INSERT INTO `menu` VALUES (49, 0, 1, NULL, '2022-01-04 19:20:17.463054', '2022-01-04 19:20:30.000000', NULL, '离职补替申请', 'POST', NULL, 3, '/requestMng/quit', 1, '30.49.', 30);
INSERT INTO `menu` VALUES (50, 0, 1, NULL, '2022-01-04 19:21:29.594450', '2022-01-04 19:23:13.000000', NULL, '编制调用申请', 'POST', NULL, 3, '/requestMng/transpo', 1, '30.50.', 30);
INSERT INTO `menu` VALUES (51, 0, 1, NULL, '2022-01-04 19:22:08.246706', '2022-01-04 19:23:19.000000', NULL, '编制内转申请', 'POST', NULL, 3, '/requestMng/internal', 1, '30.51.', 30);
INSERT INTO `menu` VALUES (52, 0, 1, NULL, '2022-01-04 19:23:02.022169', '2022-01-04 19:23:25.000000', NULL, '转岗补聘申请', 'POST', NULL, 3, '/requestMng/transPost', 1, '30.52.', 30);
INSERT INTO `menu` VALUES (54, 0, 1, NULL, '2022-01-04 19:28:37.554062', '2022-01-04 19:29:37.000000', NULL, '在编人数维护', 'POST', NULL, 3, '/employee/employeeMng', 1, '27.54.', 27);
INSERT INTO `menu` VALUES (55, 0, 1, NULL, '2022-01-04 19:29:18.940910', '2022-01-04 19:29:48.000000', NULL, '新增编制计划录入', 'POST', NULL, 3, '/employeePlan/planAdd', 1, '28.55.', 28);

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `timestamp` bigint NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `sort` smallint NOT NULL DEFAULT 0 COMMENT '排序',
  `status` smallint NOT NULL DEFAULT 1 COMMENT '启用状态',
  `description` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `deletedAt` datetime(6) NULL DEFAULT NULL,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `code` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `IDX_ae4578dcaed5adff96595e6166`(`name` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, 0, 1, NULL, '2020-09-03 23:43:45.039763', '2020-09-03 23:43:45.039763', NULL, '系统管理员', 'SYS_ADMIN');
INSERT INTO `role` VALUES (2, 0, 1, NULL, '2020-09-20 23:52:46.526356', '2020-09-20 23:52:46.526356', NULL, '借用者', 'SYS_BORROWER');
INSERT INTO `role` VALUES (3, 3, 1, NULL, '2020-09-21 16:32:45.353634', '2020-09-21 16:32:50.000000', '2020-09-21 16:32:50.000000', '312', '3213');
INSERT INTO `role` VALUES (4, 3, 1, NULL, '2020-09-21 16:33:16.355872', '2020-09-21 16:34:41.000000', '2020-09-21 16:34:41.000000', 'actionSheetOpen', '3123');

-- ----------------------------
-- Table structure for role_menus_menu
-- ----------------------------
DROP TABLE IF EXISTS `role_menus_menu`;
CREATE TABLE `role_menus_menu`  (
  `roleId` int NOT NULL,
  `menuId` int NOT NULL,
  PRIMARY KEY (`roleId`, `menuId`) USING BTREE,
  INDEX `IDX_eec9c5cb17157b2294fd9f0edb`(`roleId` ASC) USING BTREE,
  INDEX `IDX_f1adc6be166630ee2476d7bbf0`(`menuId` ASC) USING BTREE,
  CONSTRAINT `FK_eec9c5cb17157b2294fd9f0edbf` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_f1adc6be166630ee2476d7bbf09` FOREIGN KEY (`menuId`) REFERENCES `menu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_menus_menu
-- ----------------------------
INSERT INTO `role_menus_menu` VALUES (1, 1);
INSERT INTO `role_menus_menu` VALUES (1, 2);
INSERT INTO `role_menus_menu` VALUES (1, 3);
INSERT INTO `role_menus_menu` VALUES (1, 4);
INSERT INTO `role_menus_menu` VALUES (1, 5);
INSERT INTO `role_menus_menu` VALUES (1, 6);
INSERT INTO `role_menus_menu` VALUES (1, 8);
INSERT INTO `role_menus_menu` VALUES (1, 12);
INSERT INTO `role_menus_menu` VALUES (1, 13);
INSERT INTO `role_menus_menu` VALUES (1, 14);
INSERT INTO `role_menus_menu` VALUES (1, 15);
INSERT INTO `role_menus_menu` VALUES (1, 16);
INSERT INTO `role_menus_menu` VALUES (1, 17);
INSERT INTO `role_menus_menu` VALUES (1, 18);
INSERT INTO `role_menus_menu` VALUES (1, 19);
INSERT INTO `role_menus_menu` VALUES (1, 20);
INSERT INTO `role_menus_menu` VALUES (1, 21);
INSERT INTO `role_menus_menu` VALUES (1, 22);
INSERT INTO `role_menus_menu` VALUES (1, 23);
INSERT INTO `role_menus_menu` VALUES (1, 24);
INSERT INTO `role_menus_menu` VALUES (1, 25);
INSERT INTO `role_menus_menu` VALUES (1, 26);
INSERT INTO `role_menus_menu` VALUES (1, 27);
INSERT INTO `role_menus_menu` VALUES (1, 28);
INSERT INTO `role_menus_menu` VALUES (1, 29);
INSERT INTO `role_menus_menu` VALUES (1, 30);
INSERT INTO `role_menus_menu` VALUES (1, 31);
INSERT INTO `role_menus_menu` VALUES (1, 47);
INSERT INTO `role_menus_menu` VALUES (1, 48);
INSERT INTO `role_menus_menu` VALUES (1, 49);
INSERT INTO `role_menus_menu` VALUES (1, 50);
INSERT INTO `role_menus_menu` VALUES (1, 51);
INSERT INTO `role_menus_menu` VALUES (1, 52);
INSERT INTO `role_menus_menu` VALUES (1, 54);
INSERT INTO `role_menus_menu` VALUES (1, 55);
INSERT INTO `role_menus_menu` VALUES (2, 7);
INSERT INTO `role_menus_menu` VALUES (2, 9);
INSERT INTO `role_menus_menu` VALUES (2, 10);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `sort` smallint NOT NULL DEFAULT 0 COMMENT '排序',
  `status` smallint NOT NULL DEFAULT 1 COMMENT '启用状态',
  `description` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `deletedAt` datetime(6) NULL DEFAULT NULL,
  `username` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户名',
  `nickname` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '昵称',
  `userNo` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户编号',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱',
  `password` char(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '密码',
  `phone` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '手机号',
  `avatar` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `IDX_78a916df40e02a9deb1c4b75ed`(`username` ASC) USING BTREE,
  UNIQUE INDEX `IDX_1d677a9fdd89ee8192065c421a`(`userNo` ASC) USING BTREE,
  UNIQUE INDEX `IDX_e12875dfb3b1d92d7d7c5377e2`(`email` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 0, 1, NULL, '2020-09-03 23:42:56.211303', '2020-09-21 00:38:44.000000', NULL, 'admin', '系统管理员', 'HB-000001', 'admin@cc.com', 'b946ccc987465afcda7e45b1715219711a13518d1f1663b8c53b848cb0143441', '15555555555', NULL);
INSERT INTO `user` VALUES (2, 0, 1, NULL, '2020-09-21 00:16:10.959690', '2020-09-21 00:38:49.000000', NULL, 'zhangsan', '张三', 'HB-000002', 'zhangsan@live.com', 'b946ccc987465afcda7e45b1715219711a13518d1f1663b8c53b848cb0143441', '13222222222', NULL);
INSERT INTO `user` VALUES (3, 0, 1, NULL, '2020-09-21 17:27:22.893222', '2020-09-21 17:27:48.000000', '2020-09-21 17:27:48.000000', '33', '333', '3213', 'eraylee@live.com', 'b946ccc987465afcda7e45b1715219711a13518d1f1663b8c53b848cb0143441', '15622222222', NULL);

-- ----------------------------
-- Table structure for user_roles_role
-- ----------------------------
DROP TABLE IF EXISTS `user_roles_role`;
CREATE TABLE `user_roles_role`  (
  `userId` int NOT NULL,
  `roleId` int NOT NULL,
  PRIMARY KEY (`userId`, `roleId`) USING BTREE,
  INDEX `IDX_5f9286e6c25594c6b88c108db7`(`userId` ASC) USING BTREE,
  INDEX `IDX_4be2f7adf862634f5f803d246b`(`roleId` ASC) USING BTREE,
  CONSTRAINT `FK_4be2f7adf862634f5f803d246b8` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_5f9286e6c25594c6b88c108db77` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_roles_role
-- ----------------------------
INSERT INTO `user_roles_role` VALUES (1, 1);
INSERT INTO `user_roles_role` VALUES (2, 2);

SET FOREIGN_KEY_CHECKS = 1;
