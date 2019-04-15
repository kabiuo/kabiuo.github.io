/*
 Navicat Premium Data Transfer

 Source Server         : 桃子的云主机
 Source Server Type    : MySQL
 Source Server Version : 80014
 Source Host           : 47.107.145.57:3306
 Source Schema         : student

 Target Server Type    : MySQL
 Target Server Version : 80014
 File Encoding         : 65001

 Date: 07/03/2019 16:28:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ss_class
-- ----------------------------
DROP TABLE IF EXISTS `ss_class`;
CREATE TABLE `ss_class`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id自增长',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '班级名字',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ss_class
-- ----------------------------
INSERT INTO `ss_class` VALUES (5, '4班');
INSERT INTO `ss_class` VALUES (7, 'fewafweafe');

-- ----------------------------
-- Table structure for ss_project
-- ----------------------------
DROP TABLE IF EXISTS `ss_project`;
CREATE TABLE `ss_project`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id自增长',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程名称',
  `teacher_id` int(11) NULL DEFAULT NULL COMMENT '老师id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ss_project
-- ----------------------------
INSERT INTO `ss_project` VALUES (1, '语文1', 5);
INSERT INTO `ss_project` VALUES (2, '数学', 2);
INSERT INTO `ss_project` VALUES (3, '英语', 2);
INSERT INTO `ss_project` VALUES (4, '体育', 2);

-- ----------------------------
-- Table structure for ss_score
-- ----------------------------
DROP TABLE IF EXISTS `ss_score`;
CREATE TABLE `ss_score`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id自增长',
  `project_id` int(11) NULL DEFAULT NULL COMMENT '课程id',
  `student_id` int(11) NOT NULL COMMENT '学生id',
  `score` float(11, 1) NOT NULL COMMENT '分数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ss_score
-- ----------------------------
INSERT INTO `ss_score` VALUES (2, 2, 2, 53.0);
INSERT INTO `ss_score` VALUES (3, 2, 3, 54.0);
INSERT INTO `ss_score` VALUES (4, 4, 2, 4.0);
INSERT INTO `ss_score` VALUES (5, 5, 2, 5.0);
INSERT INTO `ss_score` VALUES (6, 6, 2, 6.0);
INSERT INTO `ss_score` VALUES (7, 7, 2, 7.0);
INSERT INTO `ss_score` VALUES (10, 2, 10, 124.0);
INSERT INTO `ss_score` VALUES (11, 2, 11, 125.0);
INSERT INTO `ss_score` VALUES (19, 1, 3, 321.0);
INSERT INTO `ss_score` VALUES (20, 1, 2, 321.0);
INSERT INTO `ss_score` VALUES (21, 1, 3, 123.0);
INSERT INTO `ss_score` VALUES (22, 1, 2, 321.0);
INSERT INTO `ss_score` VALUES (23, 1, 3, 1111.0);
INSERT INTO `ss_score` VALUES (24, 1, 2, 12.0);
INSERT INTO `ss_score` VALUES (25, 1, 3, 2.0);
INSERT INTO `ss_score` VALUES (26, 1, 2, 11.0);
INSERT INTO `ss_score` VALUES (27, 1, 3, 22.0);
INSERT INTO `ss_score` VALUES (28, 1, 2, 55.0);
INSERT INTO `ss_score` VALUES (29, 1, 3, 55.0);
INSERT INTO `ss_score` VALUES (30, 1, 2, 6.0);
INSERT INTO `ss_score` VALUES (31, 1, 3, 6.0);
INSERT INTO `ss_score` VALUES (32, 1, 2, 25.0);
INSERT INTO `ss_score` VALUES (33, 1, 3, 55.0);
INSERT INTO `ss_score` VALUES (34, 1, 2, 2.0);
INSERT INTO `ss_score` VALUES (35, 1, 3, 3.0);
INSERT INTO `ss_score` VALUES (36, 1, 2, 77.0);
INSERT INTO `ss_score` VALUES (37, 1, 3, 87.0);
INSERT INTO `ss_score` VALUES (38, 1, 2, 77.0);
INSERT INTO `ss_score` VALUES (39, 1, 3, 87.0);
INSERT INTO `ss_score` VALUES (40, 1, 2, 2.0);
INSERT INTO `ss_score` VALUES (41, 1, 3, 2.0);

-- ----------------------------
-- Table structure for ss_user
-- ----------------------------
DROP TABLE IF EXISTS `ss_user`;
CREATE TABLE `ss_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id自增长',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录系统的用户名',
  `truename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户真实姓名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户登录系统的密码',
  `type` tinyint(1) NULL DEFAULT NULL COMMENT '用户类型 0 管理员 1 老师 2学生',
  `class_id` int(11) NULL DEFAULT NULL COMMENT '班级id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ss_user
-- ----------------------------
INSERT INTO `ss_user` VALUES (2, 'admin', 'admin', 'admin', 1, 2);
INSERT INTO `ss_user` VALUES (4, 'zhangmazi', '张麻子', 'dmin', 2, 3);
INSERT INTO `ss_user` VALUES (5, '1', '1', '1', 1, NULL);
INSERT INTO `ss_user` VALUES (9, 'shui', 'sxt', 'sxt', 2, NULL);
INSERT INTO `ss_user` VALUES (14, '体育', NULL, NULL, 0, NULL);
INSERT INTO `ss_user` VALUES (15, '前排卖瓜', '卖瓜', 'maigua', 2, 5);

SET FOREIGN_KEY_CHECKS = 1;
