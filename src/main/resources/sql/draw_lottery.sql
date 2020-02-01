/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50711
 Source Host           : localhost:3306
 Source Schema         : draw_lottery

 Target Server Type    : MySQL
 Target Server Version : 50711
 File Encoding         : 65001

 Date: 01/02/2020 03:10:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_food
-- ----------------------------
DROP TABLE IF EXISTS `tb_food`;
CREATE TABLE `tb_food`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  `weight` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_menu
-- ----------------------------
DROP TABLE IF EXISTS `tb_menu`;
CREATE TABLE `tb_menu`  (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `menu_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `pid` int(11) NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_menu
-- ----------------------------
INSERT INTO `tb_menu` VALUES (1, 'el-icon-user', '用户管理', NULL, '/user', 'MU');
INSERT INTO `tb_menu` VALUES (2, 'el-icon-help', '权限管理', NULL, '/right', 'MU');
INSERT INTO `tb_menu` VALUES (3, 'el-icon-setting', '食物管理', NULL, '/food', 'MU');
INSERT INTO `tb_menu` VALUES (4, 'el-icon-notebook-2', '数据统计', NULL, '/data', 'MU');
INSERT INTO `tb_menu` VALUES (5, 'el-icon-menu', '用户列表', 1, '/userlist', 'MU');
INSERT INTO `tb_menu` VALUES (6, 'el-icon-menu', '角色列表', 2, '/rolelist', 'MU');
INSERT INTO `tb_menu` VALUES (7, 'el-icon-menu', '权限列表', 2, '/rightlist', 'MU');
INSERT INTO `tb_menu` VALUES (8, 'el-icon-menu', '食物列表', 3, '/foodlist', 'MU');
INSERT INTO `tb_menu` VALUES (9, 'el-icon-menu', '分类参数', 3, '/foodsplitparam', 'MU');
INSERT INTO `tb_menu` VALUES (10, 'el-icon-menu', '食物分类', 3, '/foodsplit', 'MU');
INSERT INTO `tb_menu` VALUES (11, 'el-icon-menu', '数据报表', 4, '/datareport', 'MU');
INSERT INTO `tb_menu` VALUES (12, NULL, '添加用户', 5, '/useradd', 'BT');
INSERT INTO `tb_menu` VALUES (13, NULL, '编辑用户', 5, '/userupdate', 'BT');
INSERT INTO `tb_menu` VALUES (14, NULL, '删除用户', 5, '/userdel', 'BT');
INSERT INTO `tb_menu` VALUES (15, NULL, '分配角色', 5, '/userupdaterole', 'BT');
INSERT INTO `tb_menu` VALUES (16, NULL, '搜索用户', 5, '/usersearch', 'BT');
INSERT INTO `tb_menu` VALUES (17, NULL, '添加角色', 6, '/roleadd', 'BT');
INSERT INTO `tb_menu` VALUES (18, NULL, '编辑角色', 6, '/roleupdate', 'BT');
INSERT INTO `tb_menu` VALUES (19, NULL, '删除角色', 6, '/roledel', 'BT');
INSERT INTO `tb_menu` VALUES (20, NULL, '分配权限', 6, '/roleupdateright', 'BT');
INSERT INTO `tb_menu` VALUES (21, NULL, '查看角色列表', 7, '/roleselect', 'BT');

-- ----------------------------
-- Table structure for tb_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_role`;
CREATE TABLE `tb_role`  (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `role_desc` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `stat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`rid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_role
-- ----------------------------
INSERT INTO `tb_role` VALUES (1, '超级管理员', '网站最高管理者', 'Y');
INSERT INTO `tb_role` VALUES (2, '食物管理员', '食品部分负责人', 'Y');
INSERT INTO `tb_role` VALUES (3, '网站管理员', '网站运维负责人', 'Y');
INSERT INTO `tb_role` VALUES (4, '会员', '仅供浏览', 'Y');

-- ----------------------------
-- Table structure for tb_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `tb_role_menu`;
CREATE TABLE `tb_role_menu`  (
  `rid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  INDEX `FKtpp6u6rlmxvrju882mqbladgm`(`mid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of tb_role_menu
-- ----------------------------
INSERT INTO `tb_role_menu` VALUES (1, 1);
INSERT INTO `tb_role_menu` VALUES (1, 2);
INSERT INTO `tb_role_menu` VALUES (1, 3);
INSERT INTO `tb_role_menu` VALUES (1, 4);
INSERT INTO `tb_role_menu` VALUES (1, 5);
INSERT INTO `tb_role_menu` VALUES (1, 6);
INSERT INTO `tb_role_menu` VALUES (1, 7);
INSERT INTO `tb_role_menu` VALUES (1, 8);
INSERT INTO `tb_role_menu` VALUES (1, 9);
INSERT INTO `tb_role_menu` VALUES (1, 10);
INSERT INTO `tb_role_menu` VALUES (1, 11);
INSERT INTO `tb_role_menu` VALUES (2, 3);
INSERT INTO `tb_role_menu` VALUES (2, 8);
INSERT INTO `tb_role_menu` VALUES (2, 9);
INSERT INTO `tb_role_menu` VALUES (2, 10);
INSERT INTO `tb_role_menu` VALUES (3, 1);
INSERT INTO `tb_role_menu` VALUES (3, 2);
INSERT INTO `tb_role_menu` VALUES (3, 4);
INSERT INTO `tb_role_menu` VALUES (3, 5);
INSERT INTO `tb_role_menu` VALUES (3, 6);
INSERT INTO `tb_role_menu` VALUES (3, 7);
INSERT INTO `tb_role_menu` VALUES (3, 11);
INSERT INTO `tb_role_menu` VALUES (4, 11);
INSERT INTO `tb_role_menu` VALUES (4, 4);
INSERT INTO `tb_role_menu` VALUES (1, 12);
INSERT INTO `tb_role_menu` VALUES (1, 13);
INSERT INTO `tb_role_menu` VALUES (1, 14);
INSERT INTO `tb_role_menu` VALUES (1, 15);
INSERT INTO `tb_role_menu` VALUES (1, 16);
INSERT INTO `tb_role_menu` VALUES (1, 17);
INSERT INTO `tb_role_menu` VALUES (1, 18);
INSERT INTO `tb_role_menu` VALUES (1, 19);
INSERT INTO `tb_role_menu` VALUES (1, 21);
INSERT INTO `tb_role_menu` VALUES (1, 20);

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pwd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `rid` int(11) NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `stat` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKsfnxrfo9rl6sp85q1ja8qboj4`(`rid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES (19, 'suben', 'suben', 1, '826935261@qq.com', '13823684568', 'Y');
INSERT INTO `tb_user` VALUES (4, 'test', 'test', 3, 'cbvb@444.top', '13288888888', 'Y');
INSERT INTO `tb_user` VALUES (10, 'password', 'zhangsan', 4, 'ahssnsd@qq.coms', '13222222222', 'Y');
INSERT INTO `tb_user` VALUES (11, 'password', 'itsu', 1, 'itsu@itsu.com', '13823685668', 'Y');
INSERT INTO `tb_user` VALUES (12, 'password', 'itsusususu', 4, 'is@issss.com', '13222222222', 'Y');
INSERT INTO `tb_user` VALUES (15, 'password', 'sfsafs', 4, '8484@ss.cn', '13205648754', 'Y');

SET FOREIGN_KEY_CHECKS = 1;
