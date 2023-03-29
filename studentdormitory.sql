/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 50720
 Source Host           : localhost:3306
 Source Schema         : studentdormitory

 Target Server Type    : MySQL
 Target Server Version : 50720
 File Encoding         : 65001

 Date: 29/03/2023 22:37:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for banji
-- ----------------------------
DROP TABLE IF EXISTS `banji`;
CREATE TABLE `banji`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `banji` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `xyid` int(11) NOT NULL,
  `fdy` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fdytel` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of banji
-- ----------------------------
INSERT INTO `banji` VALUES (1, '光电1班', 1, '李世民', '17382456788');
INSERT INTO `banji` VALUES (2, '通信1班', 1, '小美', '17354545535');
INSERT INTO `banji` VALUES (3, '英语1班', 2, '小欧', '17489739473');
INSERT INTO `banji` VALUES (4, '临床1班', 3, '23231', '13734344111');
INSERT INTO `banji` VALUES (5, '会计1班', 4, '321', '15232111111');
INSERT INTO `banji` VALUES (6, '体操1班', 5, '111', '15323111111');
INSERT INTO `banji` VALUES (7, '美声1班', 6, '2321', '13911111111');
INSERT INTO `banji` VALUES (8, '美术1班', 7, '32121', '13733333333');
INSERT INTO `banji` VALUES (9, '车辆工程', 8, '1111', '15233333333');
INSERT INTO `banji` VALUES (10, '国际1班', 9, '111', '13711111111');

-- ----------------------------
-- Table structure for bxlb
-- ----------------------------
DROP TABLE IF EXISTS `bxlb`;
CREATE TABLE `bxlb`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `lynumber` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '宿舍楼号',
  `sushe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '宿舍号',
  `uname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '报修人姓名',
  `tel` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '联系电话',
  `bxdata` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '报修日期',
  `bxtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '报修时间',
  `bxdel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '报修理由',
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态码',
  `switchon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '开关',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bxlb
-- ----------------------------
INSERT INTO `bxlb` VALUES (1, '东区1号楼', '311', '贾玉', '13738275269', '2023-03-01', '	\r\n16:01:01', '空调坏了，不会转了', '1', '1');
INSERT INTO `bxlb` VALUES (2, '北区2号楼', '505', '111', '13738223323', '2023-03-03', '	\r\n16:01:01', '空调坏了，不会转了', '1', '1');
INSERT INTO `bxlb` VALUES (3, '南区1号楼', '203', '张天志', '15734567890', '2023-04-10', '17-30-20', '桌子坏了', '1', '1');
INSERT INTO `bxlb` VALUES (4, '南区1号楼', '105', '贾玉', '13782478900', '2023-04-10', '17-35-20', '灯泡坏了', '1', '1');
INSERT INTO `bxlb` VALUES (5, '东区1号楼', '101', '宋小宝', '13845678901', '2023-04-10', '17-37-33', '柜子坏了', '1', '1');
INSERT INTO `bxlb` VALUES (6, '北区2号楼', '102', '上官发财', '17934567890', '2023-02-10', '18-46-44', '风扇坏了', '0', '1');
INSERT INTO `bxlb` VALUES (7, '东区4号楼', '302', '123', '13745678900', '2023-05-04', '21-47-59', '床板塌了', '0', '1');
INSERT INTO `bxlb` VALUES (8, '东区2号楼', '202', '123123', '13756789000', '2023-05-14', '21-48-53', '水池漏水', '0', '0');
INSERT INTO `bxlb` VALUES (9, '东区2号楼', '312', '林林', '15738888888', '2023-03-25', '22-28-21', '书桌裂了', '1', '1');

-- ----------------------------
-- Table structure for bxtj
-- ----------------------------
DROP TABLE IF EXISTS `bxtj`;
CREATE TABLE `bxtj`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lynumber` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '楼宇号',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '宿管姓名',
  `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '联系电话',
  `bxsh` double NOT NULL COMMENT '损耗费',
  `clgm` double NOT NULL COMMENT '材料费',
  `lywh` double NOT NULL COMMENT '楼宇维护费',
  `total` double NOT NULL COMMENT '总费用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bxtj
-- ----------------------------
INSERT INTO `bxtj` VALUES (1, '东区1号楼', '楼管1', '137824567890', 3200, 2200, 1100, 6500);
INSERT INTO `bxtj` VALUES (2, '东区2号楼', '楼管2', '13782456789', 2100, 1100, 1800, 5000);
INSERT INTO `bxtj` VALUES (3, '北区3号楼', '楼管3', '13782456293', 2200, 3300, 2000, 7500);
INSERT INTO `bxtj` VALUES (4, '东区6号楼', '楼管4', '13188923842', 1100, 2100, 1000, 4200);
INSERT INTO `bxtj` VALUES (5, '东区4号楼', '楼管5', '13188923844', 430, 660, 440, 1530);

-- ----------------------------
-- Table structure for lflb
-- ----------------------------
DROP TABLE IF EXISTS `lflb`;
CREATE TABLE `lflb`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `visitor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '来访人员姓名',
  `tel` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '联系电话',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学生姓名',
  `lynumber` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '宿舍楼号',
  `sushe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '宿舍',
  `comeTime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '来访时间',
  `leaveTime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '离开时间',
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lflb
-- ----------------------------
INSERT INTO `lflb` VALUES (1, '简元厉', '13177534587', '简茸', '东区4号楼', '305', '2022-12-21 14:14', '2022-12-21 17:10', '1');
INSERT INTO `lflb` VALUES (2, '钟艳', '13177976455', '钟晓珊', '东区1号楼', '302', '2022-10-12 9:30', '2022-10-12 12:00', '1');
INSERT INTO `lflb` VALUES (3, '兰舟', '15857449798', '兰荷', '南区3号楼', '212', '2023-2-12 8:22', '2023-2-12 10:21', '1');
INSERT INTO `lflb` VALUES (4, '丁伟光', '15888889999', '丁小小', '北区3号楼', '312', '2023-3-11 9:21', '2023-3-11 13:22', '1');
INSERT INTO `lflb` VALUES (5, '林子元', '18268485888', '林林', '东区2号楼', '203', '2023-4-11 17:22', '2023-4-11 18:00', '1');

-- ----------------------------
-- Table structure for lgpf
-- ----------------------------
DROP TABLE IF EXISTS `lgpf`;
CREATE TABLE `lgpf`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `lynumber` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '宿舍楼号',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '楼管姓名',
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评分时间',
  `pgf` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '品格',
  `fwf` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '服务',
  `zrx` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '责任心',
  `total` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '总分',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lgpf
-- ----------------------------
INSERT INTO `lgpf` VALUES (1, '东区1号楼', '楼管1', '2023-2-1 08:34:34', '8', '8', '8', '24');
INSERT INTO `lgpf` VALUES (2, '东区2号楼', '楼管2', '2023-2-1 9:18:25', '9', '9', '9', '27');
INSERT INTO `lgpf` VALUES (3, '北区3号楼', '楼管3', '2023-04-1410-08-02', '9', '9', '9', '27');
INSERT INTO `lgpf` VALUES (4, '东区6号楼', '楼管4', '2023-04-14 10-08-02', '9', '9', '9', '27');
INSERT INTO `lgpf` VALUES (5, '东区4号楼', '楼管5', '2023-04-14 10-17-35', '6', '7', '8', '21');

-- ----------------------------
-- Table structure for lynumber
-- ----------------------------
DROP TABLE IF EXISTS `lynumber`;
CREATE TABLE `lynumber`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `lynumber` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '宿舍楼号',
  `leader` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '宿管',
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '性别',
  `tel` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '联系电话',
  `state` tinyint(1) NOT NULL COMMENT '状态码',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `lynumber`(`lynumber`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lynumber
-- ----------------------------
INSERT INTO `lynumber` VALUES (1, '东区1号楼', '吴姐', '男', '13892453261', 1);
INSERT INTO `lynumber` VALUES (2, '东区2号楼', '王姐', '女', '13892453261', 1);
INSERT INTO `lynumber` VALUES (3, '东区3号楼', '贾政', '男', '13892453261', 1);
INSERT INTO `lynumber` VALUES (4, '东区4号楼', '王熙凤', '女', '13892453261', 1);
INSERT INTO `lynumber` VALUES (5, '东区5号楼', '薛宝钗', '女', '13892453261', 1);
INSERT INTO `lynumber` VALUES (6, '东区6号楼', '孙悟空', '男', '13892453261', 1);
INSERT INTO `lynumber` VALUES (7, '东区7号楼', '猪八戒', '男', '13892453261', 1);
INSERT INTO `lynumber` VALUES (8, '南区1号楼', '唐三藏', '男', '13892453261', 1);
INSERT INTO `lynumber` VALUES (9, '南区2号楼', '沙和尚', '男', '13892453261', 1);
INSERT INTO `lynumber` VALUES (10, '南区3号楼', '宋江', '男', '13892453261', 1);
INSERT INTO `lynumber` VALUES (11, '南区4号楼', '武松', '男', '13892453261', 1);
INSERT INTO `lynumber` VALUES (12, '南区5号楼', '鲁智深', '男', '13892453261', 1);
INSERT INTO `lynumber` VALUES (13, '南区6号楼', '曹操', '男', '13892453261', 1);
INSERT INTO `lynumber` VALUES (14, '南区7号楼', '诸葛亮', '男', '13892453261', 1);
INSERT INTO `lynumber` VALUES (15, '南区8号楼', '刘备', '男', '13892453261', 1);
INSERT INTO `lynumber` VALUES (16, '南区9号楼', '张飞', '男', '13892453261', 1);
INSERT INTO `lynumber` VALUES (17, '南区10号楼', '赵云', '男', '13892453261', 1);
INSERT INTO `lynumber` VALUES (18, '北区1号楼', '貂蝉', '女', '13892453261', 1);
INSERT INTO `lynumber` VALUES (19, '北区2号楼', '西施', '女', '13892453261', 1);
INSERT INTO `lynumber` VALUES (20, '北区3号楼', '王思聪', '男', '13898238399', 1);
INSERT INTO `lynumber` VALUES (22, '北区4号楼', '周芷若', '女', '13782456789', 1);
INSERT INTO `lynumber` VALUES (23, '北区5号楼', '刘德华', '男', '13457864329', 1);
INSERT INTO `lynumber` VALUES (24, '北区6号楼', '王天亮', '男', '13784567890', 1);
INSERT INTO `lynumber` VALUES (25, '北区7号楼', '张无忌', '男', '13789348488', 1);
INSERT INTO `lynumber` VALUES (26, '北区8号楼', '赵敏', '女', '13578788780', 1);
INSERT INTO `lynumber` VALUES (27, '北区9号楼', '孙艺洲', '男', '13878979789', 1);
INSERT INTO `lynumber` VALUES (28, '东区1号楼', '小小', '女', '13188923842', 0);

-- ----------------------------
-- Table structure for sspf
-- ----------------------------
DROP TABLE IF EXISTS `sspf`;
CREATE TABLE `sspf`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `lynumber` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '楼宇号',
  `sushe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '宿舍号',
  `xueyuan` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '所属学院',
  `banji` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '所属班级',
  `time` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评分时间',
  `health` tinyint(4) NOT NULL COMMENT '卫生',
  `discipline` tinyint(4) NOT NULL COMMENT '纪律',
  `dormitoryculture` tinyint(4) NOT NULL COMMENT '宿舍文化',
  `total` tinyint(4) NOT NULL COMMENT '总分',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sspf
-- ----------------------------
INSERT INTO `sspf` VALUES (1, '东区1号楼', '101', '经管院', '经管1班', '2020-4-9 08:35:24', 7, 8, 8, 23);
INSERT INTO `sspf` VALUES (2, '东区2号楼', '102', '软件院', '软件11班', '2020-4-9 10:23:32', 8, 8, 8, 24);
INSERT INTO `sspf` VALUES (3, '东区2号楼', '301', '软件院', '软件2班', '2020-2-9 14:25:46', 6, 7, 8, 21);
INSERT INTO `sspf` VALUES (4, '南区2号楼', '202', '计算机院', '计算机2班', '2020-4-5 15:46:24', 9, 9, 9, 27);
INSERT INTO `sspf` VALUES (5, '南区4号楼', '103', '工院', '机械1班', '2019-11-24 09:30:34', 8, 8, 7, 23);
INSERT INTO `sspf` VALUES (6, '南区5号楼', '304', '工院', '建筑11班', '2019-8-22 17:34:26', 6, 4, 8, 18);
INSERT INTO `sspf` VALUES (7, '北区5号楼', '202', '医学院', '临床1班', '2020-4-8 11:09:25', 8, 9, 8, 25);
INSERT INTO `sspf` VALUES (8, '北区1号楼', '501', '商学院', '会计1班', '2020-2-9 10:23:35', 8, 7, 9, 24);
INSERT INTO `sspf` VALUES (9, '北区2号楼', '401', '商学院', '会计2班', '2020-3-20 09:10:30', 8, 8, 8, 24);
INSERT INTO `sspf` VALUES (10, '北区1号楼', '105', '工院', '光电3班', '2020-1-20 09:20:25', 9, 9, 9, 27);

-- ----------------------------
-- Table structure for ssxs
-- ----------------------------
DROP TABLE IF EXISTS `ssxs`;
CREATE TABLE `ssxs`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stuNumber` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学号',
  `name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '性别',
  `xueyuan` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属学院',
  `banji` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属班级',
  `tel` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '联系电话',
  `sushe` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '宿舍号',
  `lynumber` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '楼宇号',
  `fdy` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '辅导员姓名',
  `fdytel` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '辅导员联系电话',
  `state` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ssxs
-- ----------------------------
INSERT INTO `ssxs` VALUES (1, '20202039', '贾园', '女', '软件院', '软件1班', '13738275269', '101', '东区1号楼', '李式', '17382456788', '1');
INSERT INTO `ssxs` VALUES (2, '20192083', '林虞', '女', '经管院', '经管2班', '15738888888', '101', '东区1号楼', '钟元', '17382456788', '1');
INSERT INTO `ssxs` VALUES (3, '20192022', '张小玉', '女', '软件学院', '软件2班', '17318243658', '101', '东区1号楼', '王木', '17382456788', '1');
INSERT INTO `ssxs` VALUES (4, '20192023', '张小斐', '女', '经管院', '经管2班', '18738474859', '101', '东区1号楼', '王木', '13948294837', '1');
INSERT INTO `ssxs` VALUES (5, '20192001', '吴漾', '女', '软件院', '软件4班', '15859437485', '101', '东区1号楼', '钟元', '17382456788', '1');
INSERT INTO `ssxs` VALUES (6, '20182032', '厉继明', '男', '软件院', '软件1班', '13174859573', '101', '东区2号楼', '元吉', '18829374857', '1');

-- ----------------------------
-- Table structure for sushe
-- ----------------------------
DROP TABLE IF EXISTS `sushe`;
CREATE TABLE `sushe`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sushe` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '宿舍号',
  `lyid` int(11) NOT NULL COMMENT '宿舍楼id',
  `ssz` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '寝室长',
  `sex` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '性别',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sushe
-- ----------------------------
INSERT INTO `sushe` VALUES (1, '101', 1, '王鑫', '女');
INSERT INTO `sushe` VALUES (2, '102', 1, '汪浩', '男');
INSERT INTO `sushe` VALUES (3, '103', 1, '吴杰', '男');
INSERT INTO `sushe` VALUES (4, '104', 1, '李渊', '男');
INSERT INTO `sushe` VALUES (5, '105', 1, '李子木', '男');
INSERT INTO `sushe` VALUES (6, '106', 1, '木苏', '男');
INSERT INTO `sushe` VALUES (7, '101', 2, '苏苏', '女');
INSERT INTO `sushe` VALUES (8, '102', 2, '李畅', '女');
INSERT INTO `sushe` VALUES (9, '103', 2, '111', '女');
INSERT INTO `sushe` VALUES (10, '104', 2, '222', '女');
INSERT INTO `sushe` VALUES (11, '105', 2, '222', '女');
INSERT INTO `sushe` VALUES (12, '101', 2, '111', '男');
INSERT INTO `sushe` VALUES (13, '102', 2, '111', '男');
INSERT INTO `sushe` VALUES (14, '101', 3, '3寝长', '女');
INSERT INTO `sushe` VALUES (15, '102', 3, '3寝长', '男');
INSERT INTO `sushe` VALUES (16, '109', 3, '122', '女');
INSERT INTO `sushe` VALUES (17, '110', 3, '111', '男');
INSERT INTO `sushe` VALUES (18, '111', 4, '1111', '女');
INSERT INTO `sushe` VALUES (19, '105', 4, '111', '男');
INSERT INTO `sushe` VALUES (20, '113', 4, '11', '女');
INSERT INTO `sushe` VALUES (21, '112', 4, '222', '男');
INSERT INTO `sushe` VALUES (22, '101', 4, '222', '女');
INSERT INTO `sushe` VALUES (23, '105', 4, '133', '男');
INSERT INTO `sushe` VALUES (24, '109', 5, '122', '女');
INSERT INTO `sushe` VALUES (25, '102', 5, '212', '男');
INSERT INTO `sushe` VALUES (26, '203', 5, '222', '女');
INSERT INTO `sushe` VALUES (27, '205', 5, '343', '男');
INSERT INTO `sushe` VALUES (28, '209', 5, '231', '女');
INSERT INTO `sushe` VALUES (29, '111', 5, '323', '男');
INSERT INTO `sushe` VALUES (30, '108', 5, '233', '女');
INSERT INTO `sushe` VALUES (31, '110', 5, '232', '男');
INSERT INTO `sushe` VALUES (32, '207', 5, '231', '女');
INSERT INTO `sushe` VALUES (33, '209', 6, '2331', '男');
INSERT INTO `sushe` VALUES (34, '110', 6, '42', '女');
INSERT INTO `sushe` VALUES (35, '111', 6, '312', '男');
INSERT INTO `sushe` VALUES (36, '112', 6, '321', '女');
INSERT INTO `sushe` VALUES (37, '208', 6, '1221', '男');
INSERT INTO `sushe` VALUES (38, '207', 6, 'ww', '女');
INSERT INTO `sushe` VALUES (39, '206', 6, '2323', '男');
INSERT INTO `sushe` VALUES (40, '205', 6, '2323', '女');
INSERT INTO `sushe` VALUES (41, '204', 7, '322', '男');
INSERT INTO `sushe` VALUES (42, '212', 7, '233', '女');
INSERT INTO `sushe` VALUES (43, '123', 7, '321', '男');
INSERT INTO `sushe` VALUES (44, '209', 7, '311', '女');
INSERT INTO `sushe` VALUES (45, '205', 7, '231', '男');
INSERT INTO `sushe` VALUES (46, '111', 7, '3223', '女');
INSERT INTO `sushe` VALUES (47, '210', 7, '2131', '男');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '账号',
  `pass` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '性别',
  `xueyuan` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学院',
  `banji` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '班级',
  `tel` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '联系电话',
  `sushe` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '宿舍号',
  `lynumber` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '楼宇号',
  `state` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态码',
  `roler` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'student', 'student', '袁慎', '男', '工院', '光电1班', '13738275269', '102', '东区1号楼', '1', '2');
INSERT INTO `user` VALUES (2, 'user', 'user', '林夏', '女', '经管院', '', '15738888888', '103', '东区1号楼', '1', '1');
INSERT INTO `user` VALUES (3, 'admin', 'admin', '张玉', '女', '软件学院', '', '17318243658', '205', '老师公寓', '1', '0');

-- ----------------------------
-- Table structure for wglb
-- ----------------------------
DROP TABLE IF EXISTS `wglb`;
CREATE TABLE `wglb`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `lynumber` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '宿舍楼号',
  `sushe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '宿舍号',
  `xueyuan` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '所属学院',
  `banji` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '所属班级',
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '晚归时间',
  `reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '晚归原因',
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wglb
-- ----------------------------
INSERT INTO `wglb` VALUES (1, '钟晓珊', '东区1号楼', '302', '经管院', '2班', '2022-03-17 22:33:49', '没赶上车', '1');
INSERT INTO `wglb` VALUES (2, '兰荷', '南区3号楼', '212', '计算机院', '11班', '2023-02-22 23:35:17', '出去玩', '1');
INSERT INTO `wglb` VALUES (3, '简茸', '东区4号楼', '305', '软件院', '2班', '2023-03-18 23:16:04', '买东西', '1');
INSERT INTO `wglb` VALUES (4, '白白', '北区2号楼', '202', '体育院', '3班', '2023-03-24 23:22:36', '训练', '1');
INSERT INTO `wglb` VALUES (5, '丁小小', '北区3号楼', '312', '音乐学院', '2班', '2023-03-09 23:19:11', '学习', '1');
INSERT INTO `wglb` VALUES (6, '林林', '东区2号楼', '203', '经管院', '2班', '2023-3-12 22:12:23', '学习', '1');

-- ----------------------------
-- Table structure for xslb
-- ----------------------------
DROP TABLE IF EXISTS `xslb`;
CREATE TABLE `xslb`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `stuNumber` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学号',
  `sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '性别',
  `xueyuan` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属学院',
  `banji` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属班级',
  `tel` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '联系电话',
  `sushe` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '宿舍号',
  `lynumber` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '宿舍楼号',
  `fdy` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '辅导员姓名',
  `fdytel` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '辅导员联系电话',
  `family` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '紧急联系人姓名',
  `familytel` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '紧急联系人联系电话',
  `state` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xslb
-- ----------------------------
INSERT INTO `xslb` VALUES (1, '笑笑', '20202087', '女', '经管院', '经管3班', '15857889847', '312', '东区3号楼', '小苏', '13144857596', '父亲', '15857668954', '1');
INSERT INTO `xslb` VALUES (2, '妍妍', '20202017', '女', '软件院', '软英12班', '18779144775', '212', '东区2号楼', '小元', '18818279374', '母亲', '18879475863', '1');
INSERT INTO `xslb` VALUES (3, '元抒', '20192087', '男', '软件院', '大数据1班', '15867854756', '210', '东区1号楼', '小元', '15857947384', '母亲', '18839273485', '1');
INSERT INTO `xslb` VALUES (5, '时安以', '20202087', '女', '外国语院', '外语2班', '13775243893', '312', '南区3号楼', '元时', '13188923842', '时于', '15738888888', '1');

-- ----------------------------
-- Table structure for xueyuan
-- ----------------------------
DROP TABLE IF EXISTS `xueyuan`;
CREATE TABLE `xueyuan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `xueyuan` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xueyuan
-- ----------------------------
INSERT INTO `xueyuan` VALUES (1, '工院');
INSERT INTO `xueyuan` VALUES (2, '外国语学院');
INSERT INTO `xueyuan` VALUES (3, '医学院');
INSERT INTO `xueyuan` VALUES (4, '商学院');
INSERT INTO `xueyuan` VALUES (5, '体育学院');
INSERT INTO `xueyuan` VALUES (6, '音乐学院');
INSERT INTO `xueyuan` VALUES (7, '软件院');
INSERT INTO `xueyuan` VALUES (8, '计算机院');
INSERT INTO `xueyuan` VALUES (9, '经管院');

-- ----------------------------
-- Table structure for yhqx
-- ----------------------------
DROP TABLE IF EXISTS `yhqx`;
CREATE TABLE `yhqx`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '性别',
  `tel` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '联系电话',
  `roler` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色',
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yhqx
-- ----------------------------
INSERT INTO `yhqx` VALUES (1, '林诗南', '男', '13738174500', '0', '1');
INSERT INTO `yhqx` VALUES (2, '张满', '男', '13738174500', '1', '1');
INSERT INTO `yhqx` VALUES (3, '盛夏', '男', '13738174500', '1', '1');
INSERT INTO `yhqx` VALUES (4, '林安歆', '女', '13738174500', '1', '1');
INSERT INTO `yhqx` VALUES (5, '程诺', '男', '17338478585', '1', '1');
INSERT INTO `yhqx` VALUES (6, '王晓伟', '男', '13982456293', '1', '1');
INSERT INTO `yhqx` VALUES (7, '李小天', '男', '13839756493', '1', '1');
INSERT INTO `yhqx` VALUES (8, '陆小凤', '男', '13782156789', '1', '1');
INSERT INTO `yhqx` VALUES (9, '花满楼', '男', '15738174890', '1', '1');
INSERT INTO `yhqx` VALUES (10, '吴恙', '男', '13177534210', '0', '1');
INSERT INTO `yhqx` VALUES (11, '甘婧', '女', '13775243893', '0', '1');
INSERT INTO `yhqx` VALUES (12, '苏木', '男', '13188923844', '0', '1');

SET FOREIGN_KEY_CHECKS = 1;
