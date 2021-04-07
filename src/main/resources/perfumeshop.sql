/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : localhost:3306
 Source Schema         : perfumeshop

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 07/04/2021 18:57:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for activity
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity`  (
  `activityId` int(12) NOT NULL AUTO_INCREMENT,
  `activityName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `activityDes` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `discount` float NULL DEFAULT 1,
  `fullPrice` int(12) NULL DEFAULT NULL,
  `reducePrice` int(12) NULL DEFAULT NULL,
  `fullNum` int(12) NULL DEFAULT NULL,
  `reduceNum` int(12) NULL DEFAULT NULL,
  PRIMARY KEY (`activityId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of activity
-- ----------------------------
INSERT INTO `activity` VALUES (1, '原价', '默认活动无优惠', 1, NULL, NULL, NULL, NULL);
INSERT INTO `activity` VALUES (2, '开业大酬宾', '开业大酬宾，全场9折。', 0.9, 100, 8, 200, 20);
INSERT INTO `activity` VALUES (3, '十周年', '十周年活动', 1, 1000, 100, 20, 1);

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `addressID` int(12) NOT NULL AUTO_INCREMENT,
  `userId` int(12) NOT NULL,
  `province` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `city` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `county` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `detailAddr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `conName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `conTel` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`addressID`) USING BTREE,
  INDEX `addressID`(`addressID`) USING BTREE,
  INDEX `userId`(`userId`) USING BTREE,
  CONSTRAINT `address_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES (7, 1, '北京市', '北京市市辖区', '东城区', '12312', '123123', '2131231321');
INSERT INTO `address` VALUES (8, 3, '湖南省', '长沙市', '雨花区', '长沙理工大学', '小明', '182289406');
INSERT INTO `address` VALUES (9, 4, '湖南省', '株洲市', '石峰区', '湖南汽车工程职业学院', '小红', '123213213');
INSERT INTO `address` VALUES (10, 4, '北京市', '北京市市辖区', '东城区', '786号', '小明', '123123213123');
INSERT INTO `address` VALUES (17, 4, '北京市', '北京市市辖区', '东城区', '升龙路湖南汽车工程职业学院', '小明', '13767894356');

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `adminId` int(12) NOT NULL AUTO_INCREMENT,
  `adminName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`adminId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', '000000');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `cateId` int(12) NOT NULL AUTO_INCREMENT,
  `cateName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`cateId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, '香奈儿');
INSERT INTO `category` VALUES (2, '迪奥');
INSERT INTO `category` VALUES (3, '纪梵希');
INSERT INTO `category` VALUES (4, '爱马仕');
INSERT INTO `category` VALUES (6, '古驰');
INSERT INTO `category` VALUES (7, '宝格丽');
INSERT INTO `category` VALUES (8, '其他');

-- ----------------------------
-- Table structure for collection
-- ----------------------------
DROP TABLE IF EXISTS `collection`;
CREATE TABLE `collection`  (
  `userId` int(12) NOT NULL,
  `goodsId` int(12) NOT NULL,
  `collectTime` datetime(0) NOT NULL,
  PRIMARY KEY (`userId`, `goodsId`) USING BTREE,
  INDEX `collection_ibfk_2`(`goodsId`) USING BTREE,
  CONSTRAINT `collection_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `collection_ibfk_2` FOREIGN KEY (`goodsId`) REFERENCES `goods` (`goodsId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of collection
-- ----------------------------
INSERT INTO `collection` VALUES (3, 97, '2019-05-13 10:23:11');
INSERT INTO `collection` VALUES (4, 98, '2021-04-01 20:46:57');
INSERT INTO `collection` VALUES (4, 103, '2021-04-01 21:40:51');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `commentId` int(12) NOT NULL AUTO_INCREMENT,
  `userId` int(12) NOT NULL,
  `goodsId` int(12) NOT NULL,
  `point` int(8) NOT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `commentTime` datetime(0) NOT NULL,
  PRIMARY KEY (`commentId`) USING BTREE,
  INDEX `userId`(`userId`) USING BTREE,
  INDEX `goodsId`(`goodsId`) USING BTREE,
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`goodsId`) REFERENCES `goods` (`goodsId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (1, 4, 103, 5, '很好用', '2021-04-06 16:41:58');

-- ----------------------------
-- Table structure for deliver
-- ----------------------------
DROP TABLE IF EXISTS `deliver`;
CREATE TABLE `deliver`  (
  `deliverId` int(12) NOT NULL AUTO_INCREMENT,
  `orderId` int(12) NOT NULL,
  `sendId` int(12) NOT NULL,
  PRIMARY KEY (`deliverId`) USING BTREE,
  INDEX `orderId`(`orderId`) USING BTREE,
  CONSTRAINT `deliver_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `indent` (`orderId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `goodsId` int(12) NOT NULL AUTO_INCREMENT,
  `goodsName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` double(12, 2) NOT NULL,
  `num` int(12) NOT NULL,
  `upTime` datetime(0) NOT NULL,
  `category` int(12) NOT NULL,
  `detailCate` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `activityId` int(12) NOT NULL DEFAULT 1,
  PRIMARY KEY (`goodsId`) USING BTREE,
  INDEX `activityId`(`activityId`) USING BTREE,
  INDEX `category`(`category`) USING BTREE,
  CONSTRAINT `goods_ibfk_1` FOREIGN KEY (`activityId`) REFERENCES `activity` (`activityId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `goods_ibfk_2` FOREIGN KEY (`category`) REFERENCES `category` (`cateId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 135 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (96, '加布里埃尔·香奈儿（GABRIELLE CHANEL） 精华喷雾', 999.00, 222, '2019-05-11 11:42:00', 1, '香奈儿', '加布里埃尔·香奈儿', 2);
INSERT INTO `goods` VALUES (97, '香奈儿可可小姐馥郁香水 COCO MADEMOISELLE ', 860.00, 212, '2019-05-13 10:22:58', 1, '香奈儿', '香奈儿可可小姐馥郁香水', 1);
INSERT INTO `goods` VALUES (98, ' 香奈儿可可小姐清新之水 COCO MADEMOISELLE', 880.00, 100, '2021-03-30 20:50:08', 1, '香奈儿', ' 香奈儿可可小姐清新之水', 1);
INSERT INTO `goods` VALUES (99, '香奈儿可可小姐香水 COCO MADEMOISELLE （手袋装 ）', 1110.00, 100, '2021-03-30 20:53:16', 1, '香奈儿', '香奈儿可可小姐香水', 1);
INSERT INTO `goods` VALUES (100, '香奈儿可可小姐淡香水 COCO MADEMOISELLE (瓶装)', 880.00, 100, '2021-03-30 20:53:16', 1, '香奈儿', '香奈儿可可小姐淡香水', 1);
INSERT INTO `goods` VALUES (101, '香奈儿可可小姐香精 COCO MADEMOISELLE ', 1810.00, 100, '2021-03-30 20:56:32', 1, '香奈儿', '香奈儿可可小姐香精', 1);
INSERT INTO `goods` VALUES (102, '香奈儿东方屏风香水', 1650.00, 100, '2021-03-30 21:22:41', 1, '香奈儿', '香奈儿东方屏风香水', 1);
INSERT INTO `goods` VALUES (103, '香奈儿邂逅柔情香水 CHANCE EAU TENDRE ', 1580.00, 200, '2021-03-31 19:08:21', 1, '香奈儿', '香奈儿邂逅柔情香水', 3);
INSERT INTO `goods` VALUES (104, '香奈儿五号之水 N°5 L\'EAU ', 1580.00, 600, '2021-03-31 19:11:43', 1, '香奈儿', '香奈儿五号之水', 1);
INSERT INTO `goods` VALUES (105, '香奈儿嘉柏丽尔天性香水GABRIELLE CHANEL ', 1650.00, 100, '2021-03-31 19:14:00', 1, '香奈儿', '香奈儿嘉柏丽尔天性香水', 1);
INSERT INTO `goods` VALUES (106, '真我\r\n缪斯香水', 1150.00, 100, '2021-03-31 19:41:24', 2, '迪奥', '真我\r\n缪斯香水', 1);
INSERT INTO `goods` VALUES (108, 'DIOR迪奥芭伊颂\r\n赤焰香氛', 1240.00, 500, '2021-03-31 20:12:42', 2, '迪奥', 'DIOR迪奥芭伊颂\r\n赤焰香氛', 1);
INSERT INTO `goods` VALUES (109, '旷野男士\r\n香精', 1250.00, 600, '2021-03-31 20:05:01', 2, '迪奥', '旷野男士\r\n香精', 1);
INSERT INTO `goods` VALUES (110, '真我\r\n真我心悦香水', 1240.00, 500, '2021-03-31 19:53:25', 2, '迪奥', '真我\r\n真我心悦香水', 1);
INSERT INTO `goods` VALUES (111, 'DIOR迪奥旷野男士\r\n香水', 1095.00, 300, '2021-03-31 20:11:19', 2, '迪奥', 'DIOR迪奥旷野男士\r\n香水', 1);
INSERT INTO `goods` VALUES (114, 'dior迪奥芭伊颂纵情淡香氛(毒药女孩)', 850.00, 300, '2021-03-31 20:14:47', 2, '迪奥', 'dior迪奥芭伊颂纵情淡香氛', 1);
INSERT INTO `goods` VALUES (115, '迪奥小姐\r\n花漾淡香氛', 1240.00, 600, '2021-03-31 20:00:49', 2, '迪奥', '迪奥小姐\r\n花漾淡香氛', 1);
INSERT INTO `goods` VALUES (116, '迪奥小姐花漾淡香氛\r\n新春限量版', 1360.00, 100, '2021-03-31 20:02:12', 2, '迪奥', '迪奥小姐花漾淡香氛\r\n新春限量版', 1);
INSERT INTO `goods` VALUES (117, '真我\r\n纯香香水', 1520.00, 500, '2021-03-31 19:48:21', 2, '迪奥', '真我\r\n纯香香水', 1);
INSERT INTO `goods` VALUES (118, '真我\r\n倾世之金香氛', 1520.00, 600, '2021-03-31 19:55:23', 2, '迪奥', '真我\r\n倾世之金香氛', 1);
INSERT INTO `goods` VALUES (119, '真我\r\n随行淡香氛', 390.00, 600, '2021-03-31 19:45:16', 2, '迪奥', '真我\r\n随行淡香氛', 1);
INSERT INTO `goods` VALUES (121, 'DIOR迪奥冰火奇葩\r\n香水', 1520.00, 500, '2021-03-31 20:22:10', 2, '迪奥', 'DIOR迪奥冰火奇葩\r\n香水', 1);
INSERT INTO `goods` VALUES (122, 'DIOR迪奥魅惑\r\n清新淡香水', 1240.00, 300, '2021-03-31 20:24:56', 2, '迪奥', 'DIOR迪奥魅惑\r\n清新淡香水', 1);
INSERT INTO `goods` VALUES (123, 'DIOR迪奥魅惑\r\n淡香水', 1240.00, 500, '2021-03-31 20:26:08', 2, '迪奥', 'DIOR迪奥魅惑\r\n淡香水', 1);
INSERT INTO `goods` VALUES (124, 'DIOR迪奥永恒的爱\r\n淡香水', 1240.00, 99, '2021-03-31 20:28:09', 2, '迪奥', 'DIOR迪奥永恒的爱\r\n淡香水', 1);
INSERT INTO `goods` VALUES (125, '古驰炼金士花园系列启蒙诗珍藏版香水', 3000.00, 600, '2021-03-31 20:32:21', 6, '古驰', '古驰炼金士花园系列启蒙诗珍藏版香水', 1);
INSERT INTO `goods` VALUES (126, 'Gucci Bloom花悦馥意100毫升女士香水', 1450.00, 300, '2021-03-31 20:35:34', 6, '古驰', 'Gucci Bloom花悦馥意100毫升女士香水', 1);

-- ----------------------------
-- Table structure for imagepath
-- ----------------------------
DROP TABLE IF EXISTS `imagepath`;
CREATE TABLE `imagepath`  (
  `pathId` int(12) NOT NULL AUTO_INCREMENT,
  `goodId` int(12) NOT NULL,
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`pathId`) USING BTREE,
  INDEX `goodid`(`goodId`) USING BTREE,
  CONSTRAINT `imagepath_ibfk_1` FOREIGN KEY (`goodId`) REFERENCES `goods` (`goodsId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 168 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of imagepath
-- ----------------------------
INSERT INTO `imagepath` VALUES (114, 96, 'Gabrielle.jpg');
INSERT INTO `imagepath` VALUES (130, 97, 'coco-mademoiselle3145891166606.jpg');
INSERT INTO `imagepath` VALUES (131, 98, 'coco-mademoiselle3145891162608.jpg');
INSERT INTO `imagepath` VALUES (132, 99, '3145891164008.jpg');
INSERT INTO `imagepath` VALUES (133, 100, 'coco-mademoiselle3145891164602.jpg');
INSERT INTO `imagepath` VALUES (134, 101, 'coco-mademoiselle3145891160505.jpg');
INSERT INTO `imagepath` VALUES (135, 102, 'les-exclusifs-de-chanel3145891220902.jpg');
INSERT INTO `imagepath` VALUES (136, 103, 'chance-eau-tendrel3145891262605.jpg');
INSERT INTO `imagepath` VALUES (137, 104, 'n_5-l_eau3145891055306.jpg');
INSERT INTO `imagepath` VALUES (138, 105, 'gabrielle-chanel3145891206302.jpg');
INSERT INTO `imagepath` VALUES (139, 106, 'FY0996116_C099600555_E01_ZHC.jpg');
INSERT INTO `imagepath` VALUES (140, 119, 'FY0996038_C099600482_E01_ZHC.jpg');
INSERT INTO `imagepath` VALUES (141, 119, 'FY0615246_F361524609_E01_ZHC.jpg');
INSERT INTO `imagepath` VALUES (142, 117, 'FY0996083_C099600084_E01_ZHC.jpg');
INSERT INTO `imagepath` VALUES (143, 110, 'FY0713220_F071324009_E01_ZHC.jpg');
INSERT INTO `imagepath` VALUES (144, 118, 'FY0415427_F041542789_E01_ZHC.jpg');
INSERT INTO `imagepath` VALUES (147, 115, 'FY0326210_F032624889_E01_ZHC.jpg');
INSERT INTO `imagepath` VALUES (148, 116, 'FY0996244_C400163008_E01_ZHC.jpg');
INSERT INTO `imagepath` VALUES (150, 114, 'FY0263210_F026322009_E01_ZHC.jpg');
INSERT INTO `imagepath` VALUES (151, 108, 'FY0063401_F006344009_E01_GHC.jpg');
INSERT INTO `imagepath` VALUES (152, 111, 'FY0785220_F078524009_E01_GHC.jpg');
INSERT INTO `imagepath` VALUES (153, 121, 'FY0083201_F008324609_E01_ZHC.jpg');
INSERT INTO `imagepath` VALUES (154, 122, 'FY0062848_F006284849_E01_ZHC.jpg');
INSERT INTO `imagepath` VALUES (155, 123, 'FY0628720_F062874009_E01_ZHC.jpg');
INSERT INTO `imagepath` VALUES (156, 124, 'FY0030726_F003074609_E01_ZHC.jpg');
INSERT INTO `imagepath` VALUES (157, 125, '16067305560749187_g_800X800.jpg');
INSERT INTO `imagepath` VALUES (158, 126, '15742146479899117_g_800X800.jpg');
INSERT INTO `imagepath` VALUES (159, 109, 'FY0998004_C099600455_E01_ZHC.jpg');

-- ----------------------------
-- Table structure for indent
-- ----------------------------
DROP TABLE IF EXISTS `indent`;
CREATE TABLE `indent`  (
  `orderId` int(12) NOT NULL AUTO_INCREMENT,
  `userId` int(12) NOT NULL,
  `orderTime` datetime(0) NOT NULL,
  `oldPrice` float NOT NULL,
  `newPrice` float NOT NULL,
  `isPay` tinyint(1) NOT NULL,
  `isSend` tinyint(1) NOT NULL,
  `isReceive` tinyint(1) NOT NULL,
  `isComplete` tinyint(1) NOT NULL,
  `addressId` int(12) NOT NULL,
  PRIMARY KEY (`orderId`) USING BTREE,
  INDEX `userId`(`userId`) USING BTREE,
  INDEX `orderGoods`(`orderTime`) USING BTREE,
  INDEX `addressId`(`addressId`) USING BTREE,
  CONSTRAINT `indent_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `indent_ibfk_2` FOREIGN KEY (`addressId`) REFERENCES `address` (`addressID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of indent
-- ----------------------------
INSERT INTO `indent` VALUES (35, 4, '2021-04-01 20:52:48', 2600, 2600, 0, 1, 1, 1, 9);
INSERT INTO `indent` VALUES (37, 4, '2021-04-01 21:38:14', 1580, 1580, 1, 1, 1, 1, 9);
INSERT INTO `indent` VALUES (38, 4, '2021-04-06 20:08:58', 4159, 4159, 1, 1, 0, 0, 10);
INSERT INTO `indent` VALUES (39, 4, '2021-04-06 22:10:09', 1580, 1580, 1, 0, 0, 0, 10);

-- ----------------------------
-- Table structure for orderitem
-- ----------------------------
DROP TABLE IF EXISTS `orderitem`;
CREATE TABLE `orderitem`  (
  `itemId` int(12) NOT NULL AUTO_INCREMENT,
  `orderId` int(12) NOT NULL,
  `goodsId` int(12) NOT NULL,
  `num` int(12) NOT NULL,
  PRIMARY KEY (`itemId`) USING BTREE,
  INDEX `orderId`(`orderId`) USING BTREE,
  INDEX `goodsId`(`goodsId`) USING BTREE,
  CONSTRAINT `orderitem_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `indent` (`orderId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `orderitem_ibfk_2` FOREIGN KEY (`goodsId`) REFERENCES `goods` (`goodsId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orderitem
-- ----------------------------
INSERT INTO `orderitem` VALUES (23, 35, 97, 2);
INSERT INTO `orderitem` VALUES (24, 35, 100, 1);
INSERT INTO `orderitem` VALUES (26, 37, 103, 1);
INSERT INTO `orderitem` VALUES (27, 38, 96, 1);
INSERT INTO `orderitem` VALUES (28, 38, 103, 2);
INSERT INTO `orderitem` VALUES (29, 39, 103, 1);

-- ----------------------------
-- Table structure for shopcart
-- ----------------------------
DROP TABLE IF EXISTS `shopcart`;
CREATE TABLE `shopcart`  (
  `userId` int(12) NOT NULL,
  `goodsid` int(12) NOT NULL,
  `cateDate` datetime(0) NOT NULL,
  `goodsNum` int(12) NOT NULL,
  PRIMARY KEY (`userId`, `goodsid`) USING BTREE,
  INDEX `userId`(`userId`) USING BTREE,
  INDEX `goodsid`(`goodsid`) USING BTREE,
  CONSTRAINT `shopcart_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shopcart_ibfk_2` FOREIGN KEY (`goodsid`) REFERENCES `goods` (`goodsId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shopcart
-- ----------------------------
INSERT INTO `shopcart` VALUES (4, 103, '2021-04-07 17:33:56', 3);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `userId` int(12) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `regTime` datetime(0) NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `telephone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`userId`) USING BTREE,
  INDEX `userId`(`userId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'root', '000000', '2019-04-18 17:16:34', '12312312@qq.com', '12323206');
INSERT INTO `user` VALUES (2, 'zhangxin', '19402600297a305197962a5633e7711e', '2019-04-22 15:29:12', '12312312@qq.com', '12323206');
INSERT INTO `user` VALUES (3, 'admin', '000000', '2019-05-16 10:46:46', '12312312@qq.com', '12323206');
INSERT INTO `user` VALUES (4, '小红', '00000000', '2021-04-01 20:21:20', '12312312@qq.com', '123123123213');

SET FOREIGN_KEY_CHECKS = 1;
