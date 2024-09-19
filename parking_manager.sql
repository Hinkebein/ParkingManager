/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : localhost:3306
 Source Schema         : parking_manager

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 18/07/2023 22:36:49
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for car
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car`  (
  `tid` int(0) NOT NULL AUTO_INCREMENT COMMENT '车辆编号',
  `card` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车牌号',
  `car_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车类别',
  `person` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户',
  `xtime` datetime NULL DEFAULT NULL COMMENT '录入时间',
  PRIMARY KEY (`tid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for fee
-- ----------------------------
DROP TABLE IF EXISTS `fee`;
CREATE TABLE `fee`  (
  `fid` int(0) NOT NULL AUTO_INCREMENT COMMENT '收费标准ID',
  `car_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车位类型',
  `money` double(255, 2) NULL DEFAULT NULL COMMENT '价格',
  `money_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '价格描述',
  `fee_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`fid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fee
-- ----------------------------
INSERT INTO `fee` VALUES (11, '临时车位', 10.00, '临时车位价格', '2022-04-09 08:50:53');
INSERT INTO `fee` VALUES (13, '固定车位', 3.00, '固定车位价格', '2022-04-09 08:51:23');

-- ----------------------------
-- Table structure for login_info
-- ----------------------------
DROP TABLE IF EXISTS `login_info`;
CREATE TABLE `login_info`  (
  `yid` int(0) NOT NULL AUTO_INCREMENT COMMENT '登录日志编号                                                                                      ',
  `person` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户',
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IP地址',
  `browser` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '浏览器',
  `os` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作系统',
  `login_time` datetime NULL DEFAULT NULL COMMENT '登录时间',
  PRIMARY KEY (`yid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 94 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of login_info
-- ----------------------------
INSERT INTO `login_info` VALUES (75, 'user', '127.0.0.1', 'Chrome 11', 'Windows 10', '2023-07-16 16:57:50');
INSERT INTO `login_info` VALUES (76, 'admin', '127.0.0.1', 'Chrome 11', 'Windows 10', '2023-07-16 23:14:49');
INSERT INTO `login_info` VALUES (77, 'user', '127.0.0.1', 'Chrome 11', 'Windows 10', '2023-07-16 23:15:56');
INSERT INTO `login_info` VALUES (78, 'user', '127.0.0.1', 'Chrome 11', 'Windows 10', '2023-07-16 23:17:11');
INSERT INTO `login_info` VALUES (79, 'admin', '127.0.0.1', 'Chrome 11', 'Windows 10', '2023-07-16 23:17:22');
INSERT INTO `login_info` VALUES (80, 'user', '127.0.0.1', 'Chrome 11', 'Windows 10', '2023-07-16 23:17:35');
INSERT INTO `login_info` VALUES (81, 'admin', '127.0.0.1', 'Chrome 11', 'Windows 10', '2023-07-16 23:20:20');
INSERT INTO `login_info` VALUES (82, 'admin', '127.0.0.1', 'Chrome 11', 'Windows 10', '2023-07-16 23:48:40');
INSERT INTO `login_info` VALUES (83, 'admin', '127.0.0.1', 'Chrome 11', 'Windows 10', '2023-07-16 23:57:38');
INSERT INTO `login_info` VALUES (84, 'user', '127.0.0.1', 'Chrome 11', 'Windows 10', '2023-07-16 23:58:17');
INSERT INTO `login_info` VALUES (85, 'admin', '127.0.0.1', 'Chrome 11', 'Windows 10', '2023-07-17 00:06:58');
INSERT INTO `login_info` VALUES (86, 'user', '127.0.0.1', 'Chrome 11', 'Windows 10', '2023-07-17 00:15:29');
INSERT INTO `login_info` VALUES (87, 'user', '127.0.0.1', 'Chrome 11', 'Windows 10', '2023-07-17 22:51:28');
INSERT INTO `login_info` VALUES (88, 'admin', '127.0.0.1', 'Chrome 11', 'Windows 10', '2023-07-17 22:54:09');
INSERT INTO `login_info` VALUES (89, 'user', '127.0.0.1', 'Chrome 11', 'Windows 10', '2023-07-17 22:58:21');
INSERT INTO `login_info` VALUES (90, 'admin', '127.0.0.1', 'Chrome 11', 'Windows 10', '2023-07-17 23:14:03');
INSERT INTO `login_info` VALUES (91, 'user', '127.0.0.1', 'Chrome 11', 'Windows 10', '2023-07-17 23:20:05');
INSERT INTO `login_info` VALUES (92, 'user', '127.0.0.1', 'Chrome 11', 'Windows 10', '2023-07-17 23:26:49');
INSERT INTO `login_info` VALUES (93, 'admin', '127.0.0.1', 'Chrome 11', 'Windows 10', '2023-07-17 23:28:36');
INSERT INTO `login_info` VALUES (94, 'admin', '127.0.0.1', 'Chrome 11', 'Windows 10', '2023-07-17 23:43:15');
INSERT INTO `login_info` VALUES (95, 'admin', '127.0.0.1', 'Chrome 11', 'Windows 10', '2023-07-18 19:22:28');
INSERT INTO `login_info` VALUES (96, 'user', '127.0.0.1', 'Chrome 11', 'Windows 10', '2023-07-18 19:24:45');
INSERT INTO `login_info` VALUES (97, 'admin', '127.0.0.1', 'Chrome 11', 'Windows 10', '2023-07-18 19:28:10');
INSERT INTO `login_info` VALUES (98, 'user', '127.0.0.1', 'Chrome 11', 'Windows 10', '2023-07-18 19:31:31');
INSERT INTO `login_info` VALUES (99, 'admin', '127.0.0.1', 'Chrome 11', 'Windows 10', '2023-07-18 22:25:07');
INSERT INTO `login_info` VALUES (100, 'user', '127.0.0.1', 'Chrome 11', 'Windows 10', '2023-07-18 22:25:32');
INSERT INTO `login_info` VALUES (101, 'admin', '127.0.0.1', 'Chrome 11', 'Windows 10', '2023-07-18 22:25:56');
INSERT INTO `login_info` VALUES (102, 'admin', '127.0.0.1', 'Chrome 11', 'Windows 10', '2023-07-18 22:29:02');
INSERT INTO `login_info` VALUES (103, 'user', '127.0.0.1', 'Chrome 11', 'Windows 10', '2023-07-18 22:29:23');

-- ----------------------------
-- Table structure for recharge
-- ----------------------------
DROP TABLE IF EXISTS `recharge`;
CREATE TABLE `recharge`  (
  `cid` int(0) NOT NULL AUTO_INCREMENT COMMENT '充值编号',
  `person` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户',
  `money` double(255, 2) NULL DEFAULT NULL COMMENT '充值金额',
  `ctime` datetime NULL DEFAULT NULL COMMENT '充值时间',
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of recharge
-- ----------------------------
INSERT INTO `recharge` VALUES (17, 'user', 20.00, '2023-07-17 23:22:01');
INSERT INTO `recharge` VALUES (18, 'user', 0.00, '2023-07-17 23:23:04');
INSERT INTO `recharge` VALUES (19, 'user', 130.00, '2023-07-17 23:23:06');
INSERT INTO `recharge` VALUES (20, 'user', 240.00, '2023-07-17 23:23:08');
INSERT INTO `recharge` VALUES (21, 'user', 480.00, '2023-07-17 23:23:10');
INSERT INTO `recharge` VALUES (22, 'user', 0.00, '2023-07-17 23:30:09');
INSERT INTO `recharge` VALUES (23, 'user', 31.00, '2023-07-18 22:32:51');
INSERT INTO `recharge` VALUES (24, 'user', 0.00, '2023-07-18 22:34:24');

-- ----------------------------
-- Table structure for stall
-- ----------------------------
DROP TABLE IF EXISTS `stall`;
CREATE TABLE `stall`  (
  `sid` int(0) NOT NULL AUTO_INCREMENT COMMENT '车位编号',
  `stall_num` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车位号',
  `stall_area` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车位区域',
  `stall_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车位类型',
  `stall_state` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车位状态',
  `stall_money` double(255, 0) NULL DEFAULT NULL COMMENT '车位收费',
  `stall_live` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '逻辑删除标志，1为可见，0为不可见',
  `user_id` int(0) NULL DEFAULT NULL COMMENT '用户编号',
  PRIMARY KEY (`sid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stall
-- ----------------------------
INSERT INTO `stall` VALUES (9, 'A01', '兔子小区', '临时车位', '空闲中', 10, '1', NULL);
INSERT INTO `stall` VALUES (10, 'A02', '兔子小区', '临时车位', '空闲中', 10, '1', NULL);
INSERT INTO `stall` VALUES (11, 'A03', '兔子小区', '临时车位', '空闲中', 10, '1', NULL);
INSERT INTO `stall` VALUES (12, 'B01', '兔子小区', '固定车位', '空闲中', 3, '1', NULL);
INSERT INTO `stall` VALUES (13, 'B02', '兔子小区', '固定车位', '空闲中', 3, '1', NULL);
INSERT INTO `stall` VALUES (14, 'A04', '兔子小区', '临时车位', '空闲中', 10, '1', NULL);

-- ----------------------------
-- Table structure for stall_res
-- ----------------------------
DROP TABLE IF EXISTS `stall_res`;
CREATE TABLE `stall_res`  (
  `pid` int(0) NOT NULL AUTO_INCREMENT COMMENT '停车记录ID',
  `person` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '停车用户',
  `stall_id` int(0) NULL DEFAULT NULL COMMENT '车位编码',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `over_time` datetime NULL DEFAULT NULL COMMENT '结束时间',
  `pay_money` double(255, 2) NULL DEFAULT NULL COMMENT '缴费金额',
  PRIMARY KEY (`pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stall_res
-- ----------------------------
INSERT INTO `stall_res` VALUES (18, 'user', 9, '2023-07-16 20:22:10', '2023-07-16 23:23:08', 240.00);
INSERT INTO `stall_res` VALUES (19, 'user', 10, '2023-07-15 18:22:28', '2023-07-15 23:23:10', 480.00);
INSERT INTO `stall_res` VALUES (20, 'user', 11, '2023-07-14 10:22:29', '2023-07-14 23:23:06', 130.00);
INSERT INTO `stall_res` VALUES (21, 'user', 12, '2023-07-13 19:22:31', '2023-07-13 23:23:04', 32.00);
INSERT INTO `stall_res` VALUES (22, 'user', 10, '2023-07-17 23:27:11', '2023-07-17 23:30:09', 10.00);

-- ----------------------------
-- Table structure for stall_type
-- ----------------------------
DROP TABLE IF EXISTS `stall_type`;
CREATE TABLE `stall_type`  (
  `oid` int(0) NOT NULL COMMENT '车位类型编号',
  `otype` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车位类型',
  `omoney` double(255, 0) NULL DEFAULT NULL COMMENT '车位价格',
  PRIMARY KEY (`oid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stall_type
-- ----------------------------
INSERT INTO `stall_type` VALUES (1, '临时车位', 10);
INSERT INTO `stall_type` VALUES (2, '固定车位', 3);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `uid` int(0) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `nike` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `age` int(0) NULL DEFAULT NULL COMMENT '年龄',
  `sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系方式',
  `card` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车牌号',
  `money` double(255, 2) NULL DEFAULT NULL COMMENT '余额',
  `role` int(0) NOT NULL DEFAULT 1 COMMENT '角色。0系统管理员，1车主',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', '123456', '系统管理员', 18, '男', '13574659211', NULL, NULL, 0, '2023-03-21 11:52:24');
INSERT INTO `user` VALUES (2, 'user', '123456', '张三', 24, '男', '13333333333', '粤ABC1234', 383.98, 1, '2023-07-15 23:48:56');

SET FOREIGN_KEY_CHECKS = 1;
