/*
 Navicat Premium Data Transfer

 Source Server         : mtianyan_mac_local
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : book_shop

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 09/10/2020 23:05:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of auth_group
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`) USING BTREE,
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
BEGIN;
INSERT INTO `auth_permission` VALUES (1, 'Can view 首页轮播', 35, 'view_banner');
INSERT INTO `auth_permission` VALUES (2, 'Can view 商品信息', 33, 'view_goods');
INSERT INTO `auth_permission` VALUES (3, 'Can view 商品类别', 34, 'view_goodscategory');
INSERT INTO `auth_permission` VALUES (4, 'Can view 宣传品牌', 36, 'view_goodscategorybrand');
INSERT INTO `auth_permission` VALUES (5, 'Can view 热搜排行', 37, 'view_hotsearchwords');
INSERT INTO `auth_permission` VALUES (6, 'Can view 首页广告', 38, 'view_indexad');
INSERT INTO `auth_permission` VALUES (7, 'Can view 版本信息', 39, 'view_versioncontrol');
INSERT INTO `auth_permission` VALUES (8, 'Can view 订单信息', 32, 'view_orderinfo');
INSERT INTO `auth_permission` VALUES (9, 'Can view 购物车喵', 31, 'view_shoppingcart');
INSERT INTO `auth_permission` VALUES (10, 'Can add log entry', 40, 'add_logentry');
INSERT INTO `auth_permission` VALUES (11, 'Can change log entry', 40, 'change_logentry');
INSERT INTO `auth_permission` VALUES (12, 'Can delete log entry', 40, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (13, 'Can view log entry', 40, 'view_logentry');
INSERT INTO `auth_permission` VALUES (14, 'Can add permission', 41, 'add_permission');
INSERT INTO `auth_permission` VALUES (15, 'Can change permission', 41, 'change_permission');
INSERT INTO `auth_permission` VALUES (16, 'Can delete permission', 41, 'delete_permission');
INSERT INTO `auth_permission` VALUES (17, 'Can view permission', 41, 'view_permission');
INSERT INTO `auth_permission` VALUES (18, 'Can add group', 42, 'add_group');
INSERT INTO `auth_permission` VALUES (19, 'Can change group', 42, 'change_group');
INSERT INTO `auth_permission` VALUES (20, 'Can delete group', 42, 'delete_group');
INSERT INTO `auth_permission` VALUES (21, 'Can view group', 42, 'view_group');
INSERT INTO `auth_permission` VALUES (22, 'Can add content type', 43, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (23, 'Can change content type', 43, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (24, 'Can delete content type', 43, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (25, 'Can view content type', 43, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (26, 'Can add session', 44, 'add_session');
INSERT INTO `auth_permission` VALUES (27, 'Can change session', 44, 'change_session');
INSERT INTO `auth_permission` VALUES (28, 'Can delete session', 44, 'delete_session');
INSERT INTO `auth_permission` VALUES (29, 'Can view session', 44, 'view_session');
INSERT INTO `auth_permission` VALUES (30, 'Can add 用户信息', 45, 'add_userprofile');
INSERT INTO `auth_permission` VALUES (31, 'Can change 用户信息', 45, 'change_userprofile');
INSERT INTO `auth_permission` VALUES (32, 'Can delete 用户信息', 45, 'delete_userprofile');
INSERT INTO `auth_permission` VALUES (33, 'Can view 用户信息', 45, 'view_userprofile');
INSERT INTO `auth_permission` VALUES (34, 'Can add 短信验证', 46, 'add_verifycode');
INSERT INTO `auth_permission` VALUES (35, 'Can change 短信验证', 46, 'change_verifycode');
INSERT INTO `auth_permission` VALUES (36, 'Can delete 短信验证', 46, 'delete_verifycode');
INSERT INTO `auth_permission` VALUES (37, 'Can view 短信验证', 46, 'view_verifycode');
INSERT INTO `auth_permission` VALUES (38, 'Can add 首页轮播', 35, 'add_banner');
INSERT INTO `auth_permission` VALUES (39, 'Can change 首页轮播', 35, 'change_banner');
INSERT INTO `auth_permission` VALUES (40, 'Can delete 首页轮播', 35, 'delete_banner');
INSERT INTO `auth_permission` VALUES (41, 'Can add 商品信息', 33, 'add_goods');
INSERT INTO `auth_permission` VALUES (42, 'Can change 商品信息', 33, 'change_goods');
INSERT INTO `auth_permission` VALUES (43, 'Can delete 商品信息', 33, 'delete_goods');
INSERT INTO `auth_permission` VALUES (44, 'Can add 商品类别', 34, 'add_goodscategory');
INSERT INTO `auth_permission` VALUES (45, 'Can change 商品类别', 34, 'change_goodscategory');
INSERT INTO `auth_permission` VALUES (46, 'Can delete 商品类别', 34, 'delete_goodscategory');
INSERT INTO `auth_permission` VALUES (47, 'Can add 宣传品牌', 36, 'add_goodscategorybrand');
INSERT INTO `auth_permission` VALUES (48, 'Can change 宣传品牌', 36, 'change_goodscategorybrand');
INSERT INTO `auth_permission` VALUES (49, 'Can delete 宣传品牌', 36, 'delete_goodscategorybrand');
INSERT INTO `auth_permission` VALUES (50, 'Can add 商品轮播', 47, 'add_goodsimage');
INSERT INTO `auth_permission` VALUES (51, 'Can change 商品轮播', 47, 'change_goodsimage');
INSERT INTO `auth_permission` VALUES (52, 'Can delete 商品轮播', 47, 'delete_goodsimage');
INSERT INTO `auth_permission` VALUES (53, 'Can view 商品轮播', 47, 'view_goodsimage');
INSERT INTO `auth_permission` VALUES (54, 'Can add 热搜排行', 37, 'add_hotsearchwords');
INSERT INTO `auth_permission` VALUES (55, 'Can change 热搜排行', 37, 'change_hotsearchwords');
INSERT INTO `auth_permission` VALUES (56, 'Can delete 热搜排行', 37, 'delete_hotsearchwords');
INSERT INTO `auth_permission` VALUES (57, 'Can add 首页广告', 38, 'add_indexad');
INSERT INTO `auth_permission` VALUES (58, 'Can change 首页广告', 38, 'change_indexad');
INSERT INTO `auth_permission` VALUES (59, 'Can delete 首页广告', 38, 'delete_indexad');
INSERT INTO `auth_permission` VALUES (60, 'Can add 订单商品', 48, 'add_ordergoods');
INSERT INTO `auth_permission` VALUES (61, 'Can change 订单商品', 48, 'change_ordergoods');
INSERT INTO `auth_permission` VALUES (62, 'Can delete 订单商品', 48, 'delete_ordergoods');
INSERT INTO `auth_permission` VALUES (63, 'Can view 订单商品', 48, 'view_ordergoods');
INSERT INTO `auth_permission` VALUES (64, 'Can add 订单信息', 32, 'add_orderinfo');
INSERT INTO `auth_permission` VALUES (65, 'Can change 订单信息', 32, 'change_orderinfo');
INSERT INTO `auth_permission` VALUES (66, 'Can delete 订单信息', 32, 'delete_orderinfo');
INSERT INTO `auth_permission` VALUES (67, 'Can add 购物车喵', 31, 'add_shoppingcart');
INSERT INTO `auth_permission` VALUES (68, 'Can change 购物车喵', 31, 'change_shoppingcart');
INSERT INTO `auth_permission` VALUES (69, 'Can delete 购物车喵', 31, 'delete_shoppingcart');
INSERT INTO `auth_permission` VALUES (70, 'Can add 收货地址', 49, 'add_useraddress');
INSERT INTO `auth_permission` VALUES (71, 'Can change 收货地址', 49, 'change_useraddress');
INSERT INTO `auth_permission` VALUES (72, 'Can delete 收货地址', 49, 'delete_useraddress');
INSERT INTO `auth_permission` VALUES (73, 'Can view 收货地址', 49, 'view_useraddress');
INSERT INTO `auth_permission` VALUES (74, 'Can add 用户收藏', 50, 'add_userfav');
INSERT INTO `auth_permission` VALUES (75, 'Can change 用户收藏', 50, 'change_userfav');
INSERT INTO `auth_permission` VALUES (76, 'Can delete 用户收藏', 50, 'delete_userfav');
INSERT INTO `auth_permission` VALUES (77, 'Can view 用户收藏', 50, 'view_userfav');
INSERT INTO `auth_permission` VALUES (78, 'Can add 用户留言', 51, 'add_userleavingmessage');
INSERT INTO `auth_permission` VALUES (79, 'Can change 用户留言', 51, 'change_userleavingmessage');
INSERT INTO `auth_permission` VALUES (80, 'Can delete 用户留言', 51, 'delete_userleavingmessage');
INSERT INTO `auth_permission` VALUES (81, 'Can view 用户留言', 51, 'view_userleavingmessage');
INSERT INTO `auth_permission` VALUES (82, 'Can add Bookmark', 52, 'add_bookmark');
INSERT INTO `auth_permission` VALUES (83, 'Can change Bookmark', 52, 'change_bookmark');
INSERT INTO `auth_permission` VALUES (84, 'Can delete Bookmark', 52, 'delete_bookmark');
INSERT INTO `auth_permission` VALUES (85, 'Can view Bookmark', 52, 'view_bookmark');
INSERT INTO `auth_permission` VALUES (86, 'Can add User Setting', 53, 'add_usersettings');
INSERT INTO `auth_permission` VALUES (87, 'Can change User Setting', 53, 'change_usersettings');
INSERT INTO `auth_permission` VALUES (88, 'Can delete User Setting', 53, 'delete_usersettings');
INSERT INTO `auth_permission` VALUES (89, 'Can view User Setting', 53, 'view_usersettings');
INSERT INTO `auth_permission` VALUES (90, 'Can add User Widget', 54, 'add_userwidget');
INSERT INTO `auth_permission` VALUES (91, 'Can change User Widget', 54, 'change_userwidget');
INSERT INTO `auth_permission` VALUES (92, 'Can delete User Widget', 54, 'delete_userwidget');
INSERT INTO `auth_permission` VALUES (93, 'Can view User Widget', 54, 'view_userwidget');
INSERT INTO `auth_permission` VALUES (94, 'Can add log entry', 55, 'add_log');
INSERT INTO `auth_permission` VALUES (95, 'Can change log entry', 55, 'change_log');
INSERT INTO `auth_permission` VALUES (96, 'Can delete log entry', 55, 'delete_log');
INSERT INTO `auth_permission` VALUES (97, 'Can view log entry', 55, 'view_log');
INSERT INTO `auth_permission` VALUES (98, 'Can add Token', 56, 'add_token');
INSERT INTO `auth_permission` VALUES (99, 'Can change Token', 56, 'change_token');
INSERT INTO `auth_permission` VALUES (100, 'Can delete Token', 56, 'delete_token');
INSERT INTO `auth_permission` VALUES (101, 'Can view Token', 56, 'view_token');
INSERT INTO `auth_permission` VALUES (102, 'Can add association', 57, 'add_association');
INSERT INTO `auth_permission` VALUES (103, 'Can change association', 57, 'change_association');
INSERT INTO `auth_permission` VALUES (104, 'Can delete association', 57, 'delete_association');
INSERT INTO `auth_permission` VALUES (105, 'Can view association', 57, 'view_association');
INSERT INTO `auth_permission` VALUES (106, 'Can add code', 58, 'add_code');
INSERT INTO `auth_permission` VALUES (107, 'Can change code', 58, 'change_code');
INSERT INTO `auth_permission` VALUES (108, 'Can delete code', 58, 'delete_code');
INSERT INTO `auth_permission` VALUES (109, 'Can view code', 58, 'view_code');
INSERT INTO `auth_permission` VALUES (110, 'Can add nonce', 59, 'add_nonce');
INSERT INTO `auth_permission` VALUES (111, 'Can change nonce', 59, 'change_nonce');
INSERT INTO `auth_permission` VALUES (112, 'Can delete nonce', 59, 'delete_nonce');
INSERT INTO `auth_permission` VALUES (113, 'Can view nonce', 59, 'view_nonce');
INSERT INTO `auth_permission` VALUES (114, 'Can add user social auth', 60, 'add_usersocialauth');
INSERT INTO `auth_permission` VALUES (115, 'Can change user social auth', 60, 'change_usersocialauth');
INSERT INTO `auth_permission` VALUES (116, 'Can delete user social auth', 60, 'delete_usersocialauth');
INSERT INTO `auth_permission` VALUES (117, 'Can view user social auth', 60, 'view_usersocialauth');
INSERT INTO `auth_permission` VALUES (118, 'Can add partial', 61, 'add_partial');
INSERT INTO `auth_permission` VALUES (119, 'Can change partial', 61, 'change_partial');
INSERT INTO `auth_permission` VALUES (120, 'Can delete partial', 61, 'delete_partial');
INSERT INTO `auth_permission` VALUES (121, 'Can view partial', 61, 'view_partial');
INSERT INTO `auth_permission` VALUES (122, 'Can add 版本信息', 39, 'add_versioncontrol');
INSERT INTO `auth_permission` VALUES (123, 'Can change 版本信息', 39, 'change_versioncontrol');
INSERT INTO `auth_permission` VALUES (124, 'Can delete 版本信息', 39, 'delete_versioncontrol');
INSERT INTO `auth_permission` VALUES (125, 'Can add TyAdmin邮箱验证码', 62, 'add_tyadminemailverifyrecord');
INSERT INTO `auth_permission` VALUES (126, 'Can change TyAdmin邮箱验证码', 62, 'change_tyadminemailverifyrecord');
INSERT INTO `auth_permission` VALUES (127, 'Can delete TyAdmin邮箱验证码', 62, 'delete_tyadminemailverifyrecord');
INSERT INTO `auth_permission` VALUES (128, 'Can view TyAdmin邮箱验证码', 62, 'view_tyadminemailverifyrecord');
INSERT INTO `auth_permission` VALUES (129, 'Can add 系统日志', 63, 'add_tyadminsyslog');
INSERT INTO `auth_permission` VALUES (130, 'Can change 系统日志', 63, 'change_tyadminsyslog');
INSERT INTO `auth_permission` VALUES (131, 'Can delete 系统日志', 63, 'delete_tyadminsyslog');
INSERT INTO `auth_permission` VALUES (132, 'Can view 系统日志', 63, 'view_tyadminsyslog');
INSERT INTO `auth_permission` VALUES (133, 'Can add captcha store', 64, 'add_captchastore');
INSERT INTO `auth_permission` VALUES (134, 'Can change captcha store', 64, 'change_captchastore');
INSERT INTO `auth_permission` VALUES (135, 'Can delete captcha store', 64, 'delete_captchastore');
INSERT INTO `auth_permission` VALUES (136, 'Can view captcha store', 64, 'view_captchastore');
COMMIT;

-- ----------------------------
-- Table structure for authtoken_token
-- ----------------------------
DROP TABLE IF EXISTS `authtoken_token`;
CREATE TABLE `authtoken_token` (
  `key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created` datetime(6) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`key`) USING BTREE,
  UNIQUE KEY `user_id` (`user_id`) USING BTREE,
  CONSTRAINT `authtoken_token_user_id_35299eff_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of authtoken_token
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for captcha_captchastore
-- ----------------------------
DROP TABLE IF EXISTS `captcha_captchastore`;
CREATE TABLE `captcha_captchastore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `response` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `hashkey` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `expiration` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hashkey` (`hashkey`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of captcha_captchastore
-- ----------------------------
BEGIN;
INSERT INTO `captcha_captchastore` VALUES (2, 'LXUZ', 'lxuz', '12680d9df74798bb792926a6edd6d89ff2e4d79d', '2020-08-26 21:58:09.720978');
INSERT INTO `captcha_captchastore` VALUES (3, 'DXQO', 'dxqo', 'c72668da5b761c6d18dc7a00b3fb824ac1c32d3e', '2020-08-26 21:58:14.455469');
INSERT INTO `captcha_captchastore` VALUES (4, 'FTOF', 'ftof', '6c0b6f4d078cac15bf9498ba2cb9924310a75261', '2020-08-26 21:58:17.649910');
INSERT INTO `captcha_captchastore` VALUES (6, 'LSLH', 'lslh', '78d65eff5bd9eabfe0c3925a8881ce162b30e19b', '2020-08-26 21:58:24.752030');
INSERT INTO `captcha_captchastore` VALUES (7, 'EFFW', 'effw', '702f80079ddcb44bd015961f53db0ba12b9921d9', '2020-08-26 22:02:40.899207');
INSERT INTO `captcha_captchastore` VALUES (8, 'OIHF', 'oihf', '00be70f11f72d7a0cfec210922b22c48d1c5a3e6', '2020-10-09 22:59:57.515126');
INSERT INTO `captcha_captchastore` VALUES (10, 'JKKH', 'jkkh', 'ca8ca74705e6e24d4c54f520b9d10795cf0ddd61', '2020-10-09 23:00:09.527776');
COMMIT;

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) DEFAULT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`) USING BTREE,
  KEY `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` (`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
BEGIN;
INSERT INTO `django_content_type` VALUES (40, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (42, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (41, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (56, 'authtoken', 'token');
INSERT INTO `django_content_type` VALUES (64, 'captcha', 'captchastore');
INSERT INTO `django_content_type` VALUES (43, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (35, 'goods', 'banner');
INSERT INTO `django_content_type` VALUES (33, 'goods', 'goods');
INSERT INTO `django_content_type` VALUES (34, 'goods', 'goodscategory');
INSERT INTO `django_content_type` VALUES (36, 'goods', 'goodscategorybrand');
INSERT INTO `django_content_type` VALUES (47, 'goods', 'goodsimage');
INSERT INTO `django_content_type` VALUES (37, 'goods', 'hotsearchwords');
INSERT INTO `django_content_type` VALUES (38, 'goods', 'indexad');
INSERT INTO `django_content_type` VALUES (39, 'replace', 'versioncontrol');
INSERT INTO `django_content_type` VALUES (44, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (57, 'social_django', 'association');
INSERT INTO `django_content_type` VALUES (58, 'social_django', 'code');
INSERT INTO `django_content_type` VALUES (59, 'social_django', 'nonce');
INSERT INTO `django_content_type` VALUES (61, 'social_django', 'partial');
INSERT INTO `django_content_type` VALUES (60, 'social_django', 'usersocialauth');
INSERT INTO `django_content_type` VALUES (48, 'trade', 'ordergoods');
INSERT INTO `django_content_type` VALUES (32, 'trade', 'orderinfo');
INSERT INTO `django_content_type` VALUES (31, 'trade', 'shoppingcart');
INSERT INTO `django_content_type` VALUES (45, 'users', 'userprofile');
INSERT INTO `django_content_type` VALUES (46, 'users', 'verifycode');
INSERT INTO `django_content_type` VALUES (49, 'user_operation', 'useraddress');
INSERT INTO `django_content_type` VALUES (50, 'user_operation', 'userfav');
INSERT INTO `django_content_type` VALUES (51, 'user_operation', 'userleavingmessage');
INSERT INTO `django_content_type` VALUES (52, 'xadmin', 'bookmark');
INSERT INTO `django_content_type` VALUES (55, 'xadmin', 'log');
INSERT INTO `django_content_type` VALUES (53, 'xadmin', 'usersettings');
INSERT INTO `django_content_type` VALUES (54, 'xadmin', 'userwidget');
INSERT INTO `django_content_type` VALUES (62, 'xadmin_api', 'tyadminemailverifyrecord');
INSERT INTO `django_content_type` VALUES (63, 'xadmin_api', 'tyadminsyslog');
COMMIT;

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
BEGIN;
INSERT INTO `django_migrations` VALUES (50, 'contenttypes', '0001_initial', '2020-10-09 22:46:14.481126');
INSERT INTO `django_migrations` VALUES (51, 'contenttypes', '0002_remove_content_type_name', '2020-10-09 22:46:14.483782');
INSERT INTO `django_migrations` VALUES (52, 'auth', '0001_initial', '2020-10-09 22:46:14.485749');
INSERT INTO `django_migrations` VALUES (53, 'auth', '0002_alter_permission_name_max_length', '2020-10-09 22:46:14.487388');
INSERT INTO `django_migrations` VALUES (54, 'auth', '0003_alter_user_email_max_length', '2020-10-09 22:46:14.489053');
INSERT INTO `django_migrations` VALUES (55, 'auth', '0004_alter_user_username_opts', '2020-10-09 22:46:14.490880');
INSERT INTO `django_migrations` VALUES (56, 'auth', '0005_alter_user_last_login_null', '2020-10-09 22:46:14.492479');
INSERT INTO `django_migrations` VALUES (57, 'auth', '0006_require_contenttypes_0002', '2020-10-09 22:46:14.494003');
INSERT INTO `django_migrations` VALUES (58, 'auth', '0007_alter_validators_add_error_messages', '2020-10-09 22:46:14.495475');
INSERT INTO `django_migrations` VALUES (59, 'auth', '0008_alter_user_username_max_length', '2020-10-09 22:46:14.496971');
INSERT INTO `django_migrations` VALUES (60, 'auth', '0009_alter_user_last_name_max_length', '2020-10-09 22:46:14.498449');
INSERT INTO `django_migrations` VALUES (61, 'auth', '0010_alter_group_name_max_length', '2020-10-09 22:46:14.499910');
INSERT INTO `django_migrations` VALUES (62, 'auth', '0011_update_proxy_permissions', '2020-10-09 22:46:14.501425');
INSERT INTO `django_migrations` VALUES (63, 'auth', '0012_alter_user_first_name_max_length', '2020-10-09 22:46:14.502950');
INSERT INTO `django_migrations` VALUES (64, 'users', '0001_initial', '2020-10-09 22:46:14.504386');
INSERT INTO `django_migrations` VALUES (65, 'admin', '0001_initial', '2020-10-09 22:46:14.505922');
INSERT INTO `django_migrations` VALUES (66, 'admin', '0002_logentry_remove_auto_add', '2020-10-09 22:46:14.507360');
INSERT INTO `django_migrations` VALUES (67, 'admin', '0003_logentry_add_action_flag_choices', '2020-10-09 22:46:14.508865');
INSERT INTO `django_migrations` VALUES (68, 'authtoken', '0001_initial', '2020-10-09 22:46:14.510308');
INSERT INTO `django_migrations` VALUES (69, 'authtoken', '0002_auto_20160226_1747', '2020-10-09 22:46:14.511673');
INSERT INTO `django_migrations` VALUES (70, 'captcha', '0001_initial', '2020-10-09 22:46:14.513058');
INSERT INTO `django_migrations` VALUES (71, 'goods', '0001_initial', '2020-10-09 22:46:14.514600');
INSERT INTO `django_migrations` VALUES (72, 'replace', '0001_initial', '2020-10-09 22:46:14.515876');
INSERT INTO `django_migrations` VALUES (73, 'sessions', '0001_initial', '2020-10-09 22:46:14.517269');
INSERT INTO `django_migrations` VALUES (74, 'default', '0001_initial', '2020-10-09 22:46:14.518608');
INSERT INTO `django_migrations` VALUES (75, 'social_auth', '0001_initial', '2020-10-09 22:46:14.519893');
INSERT INTO `django_migrations` VALUES (76, 'default', '0002_add_related_name', '2020-10-09 22:46:14.521165');
INSERT INTO `django_migrations` VALUES (77, 'social_auth', '0002_add_related_name', '2020-10-09 22:46:14.522362');
INSERT INTO `django_migrations` VALUES (78, 'default', '0003_alter_email_max_length', '2020-10-09 22:46:14.523618');
INSERT INTO `django_migrations` VALUES (79, 'social_auth', '0003_alter_email_max_length', '2020-10-09 22:46:14.524955');
INSERT INTO `django_migrations` VALUES (80, 'default', '0004_auto_20160423_0400', '2020-10-09 22:46:14.526235');
INSERT INTO `django_migrations` VALUES (81, 'social_auth', '0004_auto_20160423_0400', '2020-10-09 22:46:14.527391');
INSERT INTO `django_migrations` VALUES (82, 'social_auth', '0005_auto_20160727_2333', '2020-10-09 22:46:14.528566');
INSERT INTO `django_migrations` VALUES (83, 'social_django', '0006_partial', '2020-10-09 22:46:14.529670');
INSERT INTO `django_migrations` VALUES (84, 'social_django', '0007_code_timestamp', '2020-10-09 22:46:14.530888');
INSERT INTO `django_migrations` VALUES (85, 'social_django', '0008_partial_timestamp', '2020-10-09 22:46:14.532198');
INSERT INTO `django_migrations` VALUES (86, 'trade', '0001_initial', '2020-10-09 22:46:14.533459');
INSERT INTO `django_migrations` VALUES (87, 'trade', '0002_auto_20201009_2245', '2020-10-09 22:46:14.534558');
INSERT INTO `django_migrations` VALUES (88, 'user_operation', '0001_initial', '2020-10-09 22:46:14.535772');
INSERT INTO `django_migrations` VALUES (89, 'user_operation', '0002_auto_20201009_2245', '2020-10-09 22:46:14.536819');
INSERT INTO `django_migrations` VALUES (90, 'xadmin_api', '0001_initial', '2020-10-09 22:46:14.538196');
INSERT INTO `django_migrations` VALUES (91, 'social_django', '0003_alter_email_max_length', '2020-10-09 22:46:14.540571');
INSERT INTO `django_migrations` VALUES (92, 'social_django', '0005_auto_20160727_2333', '2020-10-09 22:46:14.541733');
INSERT INTO `django_migrations` VALUES (93, 'social_django', '0004_auto_20160423_0400', '2020-10-09 22:46:14.543313');
INSERT INTO `django_migrations` VALUES (94, 'social_django', '0002_add_related_name', '2020-10-09 22:46:14.544755');
INSERT INTO `django_migrations` VALUES (95, 'social_django', '0001_initial', '2020-10-09 22:46:14.545956');
COMMIT;

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  KEY `django_session_expire_date_a5c62663` (`expire_date`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of django_session
-- ----------------------------
BEGIN;
INSERT INTO `django_session` VALUES ('08vd1qoojje8epttja2hu3rw108t55fi', 'NDk0ODMxMDU4NjM5ZTIwYTZhYTQxNjJmMzVmYjBmYzJlMGEzZGViMTp7InFxX3N0YXRlIjoiaU1aa3BKVHNqbHV6UjliTUFPM3ZWR1M3RGFzQVVKcUYiLCJfYXV0aF91c2VyX2lkIjoiMTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJzb2NpYWxfY29yZS5iYWNrZW5kcy5xcS5RUU9BdXRoMiIsIl9hdXRoX3VzZXJfaGFzaCI6IjRiOGQ3NjExZTU2M2FmMmQ4MmQ2ZGE0OTE0Nzg3ZDExODg4ZmQ2NWUiLCJzb2NpYWxfYXV0aF9sYXN0X2xvZ2luX2JhY2tlbmQiOiJxcSIsIndlaWJvX3N0YXRlIjoiVlF0VjM1QWtka0VKb0d5UHRwRW42dksxbFYwcXpRYmgifQ==', '2018-05-18 23:42:11.000000');
INSERT INTO `django_session` VALUES ('10d163b9o1xaob1ek5fxds0i6ra4wfbr', 'NzU3NGE1NTkxNjU0ODEyZjRhNGFkM2IxZjlmZTU4MDhhOTdiMTBlZjp7InFxX3N0YXRlIjoid0ljdm90YjBnYTRZZ0pUWlBlS2hPckVTeHEwbFJ3OHQiLCJ3ZWl4aW5fc3RhdGUiOiJVRU5pbzBYeUZRQk80ZWVNUXZmblVTSnlHdGViWk1COCIsIndlaWJvX3N0YXRlIjoienNGOUJGU21mTVhCR3hMUnRMbEdNOWt4V2xKcUhqRXEifQ==', '2018-05-18 23:32:51.000000');
INSERT INTO `django_session` VALUES ('14o9i16227rff6iq8us7ewuqywd2bjdi', 'ZTAxMTY1Y2FkOTU2ZjI0ZWM1NzM0NzU0ZjBjODk3ZmExMThmZDEzYzp7InFxX3N0YXRlIjoiRHFmT3lFYlF1SVNBRjE0SkJHVTJtZGxzZ0tQdUZDdHMiLCJfYXV0aF91c2VyX2lkIjoiMjQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJzb2NpYWxfY29yZS5iYWNrZW5kcy5xcS5RUU9BdXRoMiIsIl9hdXRoX3VzZXJfaGFzaCI6ImNiODZiZDQxMzJjMmFiY2Q2ZWM4YjQ4MjViZjlhMTk0Yjc2YjFmNGYiLCJzb2NpYWxfYXV0aF9sYXN0X2xvZ2luX2JhY2tlbmQiOiJxcSJ9', '2018-05-18 20:11:48.000000');
INSERT INTO `django_session` VALUES ('1ewcehk4o9jiy3fvubjdy70ckx2zri4m', 'YmExNzMzYzY4YzQ2YTZmNmM5NWFhMGFhYTliODExYmIxNGNkMGQ4MTp7InFxX3N0YXRlIjoidUFuZ3dMTFZ3TXRBcWpiem9LR2Npa3hWYmwzM2JpbzIiLCJfYXV0aF91c2VyX2lkIjoiMjUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJzb2NpYWxfY29yZS5iYWNrZW5kcy5xcS5RUU9BdXRoMiIsIl9hdXRoX3VzZXJfaGFzaCI6ImYyYjJlM2MxNmNjMDNhNzY2Yjc0ZTc0ZWNiN2QxMDU1MjZjNTNhMzQiLCJzb2NpYWxfYXV0aF9sYXN0X2xvZ2luX2JhY2tlbmQiOiJxcSJ9', '2018-05-18 20:18:20.000000');
INSERT INTO `django_session` VALUES ('43do01tgzy7f2qb9n0s01b338ifdsj6q', 'YjcwYThmMDA4Njg5Y2Y3YWFmNzVkNTllNTZjYTFjNTQ2ZjVmMTc1MDp7InFxX3N0YXRlIjoiZzMya1l1d2R6RkF3SDZOWkRGclhPbGVCWHp0NXRoY1QifQ==', '2018-05-19 17:10:11.000000');
INSERT INTO `django_session` VALUES ('4kpq79tu6unldac8vk1aucv0qfpq6aqn', 'MGFiMjQyMGFjODhjYzFkMjBkM2Y0ODg2MTNiNTM3NzliYzA5ZjNiODp7IndlaWJvX3N0YXRlIjoiVVdnQkZBbDh0a0xsUVlqU1hKU2YwNzZhN3lTRTZQMHUiLCJxcV9zdGF0ZSI6Ik82ZTRiRDRKaE5nd1VmMGl1dnZhWnJrYzZZZU40c3JrIiwiX2F1dGhfdXNlcl9pZCI6IjIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoic29jaWFsX2NvcmUuYmFja2VuZHMucXEuUVFPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiI0ZWRlZWNiZWNiN2FhNThmNTNiMGYyNmRhMTg3NWY5ZDBmNThmNTUxIiwic29jaWFsX2F1dGhfbGFzdF9sb2dpbl9iYWNrZW5kIjoicXEifQ==', '2018-05-18 19:03:07.000000');
INSERT INTO `django_session` VALUES ('556ucwjy1taxrt1rpwol53mrpcw9ftfd', 'ZDE5YjNmNGYxYzg3YmU0Yzg4ODZlZjg5ZWY1ZmNlYTJlNWI3NzU0MTp7InFxX3N0YXRlIjoiY3A0RWUwSEtpV2h4NnJkVktXYmliMEdqNWVLUTduUlUiLCJfYXV0aF91c2VyX2lkIjoiMTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJzb2NpYWxfY29yZS5iYWNrZW5kcy5xcS5RUU9BdXRoMiIsIl9hdXRoX3VzZXJfaGFzaCI6IjRiOGQ3NjExZTU2M2FmMmQ4MmQ2ZGE0OTE0Nzg3ZDExODg4ZmQ2NWUiLCJzb2NpYWxfYXV0aF9sYXN0X2xvZ2luX2JhY2tlbmQiOiJxcSIsIndlaWJvX3N0YXRlIjoiemVVV3dxdm1sRDBjd3Z6NmNLZ3NLZ01mS0tZaFhCbVAifQ==', '2018-05-18 23:19:59.000000');
INSERT INTO `django_session` VALUES ('61udvdx2uh1spaczzmpjn2f8rl6p7j7t', 'ZTczZmE3ZjI4NTM2ZjAxZTA2MmFhN2ZmMDRjMTE2M2YxYWRlZWFlZjp7InFxX3N0YXRlIjoiSU9oaHZBbzc4Uk9xZ0Z4ckRBUmVwWXQ2MHRJNkZHdkwiLCJfYXV0aF91c2VyX2lkIjoiMTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJzb2NpYWxfY29yZS5iYWNrZW5kcy5xcS5RUU9BdXRoMiIsIl9hdXRoX3VzZXJfaGFzaCI6IjRiOGQ3NjExZTU2M2FmMmQ4MmQ2ZGE0OTE0Nzg3ZDExODg4ZmQ2NWUiLCJzb2NpYWxfYXV0aF9sYXN0X2xvZ2luX2JhY2tlbmQiOiJxcSIsIndlaWJvX3N0YXRlIjoiU2UwUGhQckplQ3ZUUVhqbUNsZkZZdnNrUzdJUks4ZnEifQ==', '2018-05-18 22:16:42.000000');
INSERT INTO `django_session` VALUES ('6gjifaq1krw9xfosjms7dqhpadqwaizb', '.eJxVjEEOwiAQRe_C2pDAQFtcuvcMZJgZpGogKe3KeHdt0oVu_3vvv1TEbS1x67LEmdVZGadOv2NCekjdCd-x3pqmVtdlTnpX9EG7vjaW5-Vw_w4K9vKt0crAAyeDOFIYvWRLaWJL3jEEwgReJhHMLqAFMCQuG5AA3liLDOr9AT_UORk:1kQtnZ:86wO4KePgik0uHdwrYcCtgn22qmYx77PKvkiZRPdMIE', '2020-10-23 22:55:09.782691');
INSERT INTO `django_session` VALUES ('6mx2brg8wq6kkwg3xdsplpro2dt1kqvi', 'Y2ExNTBlZDNkODcyM2VlZjFlMGM5MDM1ZGU5MmRkMjg2YmU4YzY5NTp7Il9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzYTEyMmIzOWZlNTczODA1ZGMxMGEyODEwYWE3NmUxNmVkM2RhYTI5IiwibmF2X21lbnUiOiJbe1widGl0bGVcIjogXCJcdTRlYTRcdTY2MTNcdTdiYTFcdTc0MDZcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdThkMmRcdTcyNjlcdThmNjZcdTU1YjVcIiwgXCJ1cmxcIjogXCIveGFkbWluL3RyYWRlL3Nob3BwaW5nY2FydC9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTJ9LCB7XCJ0aXRsZVwiOiBcIlx1OGJhMlx1NTM1NVx1NGZlMVx1NjA2ZlwiLCBcInVybFwiOiBcIi94YWRtaW4vdHJhZGUvb3JkZXJpbmZvL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxM31dLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vdHJhZGUvc2hvcHBpbmdjYXJ0L1wifSwge1widGl0bGVcIjogXCJcdTU1NDZcdTU0YzFcdTdiYTFcdTc0MDZcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTU1NDZcdTU0YzFcdTRmZTFcdTYwNmZcIiwgXCJ1cmxcIjogXCIveGFkbWluL2dvb2RzL2dvb2RzL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiA2fSwge1widGl0bGVcIjogXCJcdTU1NDZcdTU0YzFcdTdjN2JcdTUyMmJcIiwgXCJ1cmxcIjogXCIveGFkbWluL2dvb2RzL2dvb2RzY2F0ZWdvcnkvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDd9LCB7XCJ0aXRsZVwiOiBcIlx1OTk5Nlx1OTg3NVx1OGY2ZVx1NjRhZFwiLCBcInVybFwiOiBcIi94YWRtaW4vZ29vZHMvYmFubmVyL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiA4fSwge1widGl0bGVcIjogXCJcdTViYTNcdTRmMjBcdTU0YzFcdTcyNGNcIiwgXCJ1cmxcIjogXCIveGFkbWluL2dvb2RzL2dvb2RzY2F0ZWdvcnlicmFuZC9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogOX0sIHtcInRpdGxlXCI6IFwiXHU3MGVkXHU2NDFjXHU2MzkyXHU4ODRjXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9nb29kcy9ob3RzZWFyY2h3b3Jkcy9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTB9LCB7XCJ0aXRsZVwiOiBcIlx1OTk5Nlx1OTg3NVx1NWU3Zlx1NTQ0YVwiLCBcInVybFwiOiBcIi94YWRtaW4vZ29vZHMvaW5kZXhhZC9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTF9XSwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2dvb2RzL2dvb2RzL1wifSwge1widGl0bGVcIjogXCJcdTY0Y2RcdTRmNWNcdTdiYTFcdTc0MDZcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTY1MzZcdTg1Y2ZcIiwgXCJ1cmxcIjogXCIveGFkbWluL3VzZXJfb3BlcmF0aW9uL3VzZXJmYXYvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDE0fSwge1widGl0bGVcIjogXCJcdTY1MzZcdThkMjdcdTU3MzBcdTU3NDBcIiwgXCJ1cmxcIjogXCIveGFkbWluL3VzZXJfb3BlcmF0aW9uL3VzZXJhZGRyZXNzL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxNX0sIHtcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XHU3NTU5XHU4YTAwXCIsIFwidXJsXCI6IFwiL3hhZG1pbi91c2VyX29wZXJhdGlvbi91c2VybGVhdmluZ21lc3NhZ2UvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDE2fV0sIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi91c2VyX29wZXJhdGlvbi91c2VyZmF2L1wifSwge1widGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTdiYTFcdTc0MDZcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTRmZTFcdTYwNmZcIiwgXCJ1cmxcIjogXCIveGFkbWluL3VzZXJzL3VzZXJwcm9maWxlL1wiLCBcImljb25cIjogXCJmYSBmYS11c2VyXCIsIFwib3JkZXJcIjogM30sIHtcInRpdGxlXCI6IFwiXHU3N2VkXHU0ZmUxXHU5YThjXHU4YmMxXCIsIFwidXJsXCI6IFwiL3hhZG1pbi91c2Vycy92ZXJpZnljb2RlL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiA1fV0sIFwiZmlyc3RfaWNvblwiOiBcImZhIGZhLXVzZXJcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL3VzZXJzL3VzZXJwcm9maWxlL1wifSwge1widGl0bGVcIjogXCJcdTdiYTFcdTc0MDZcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTY1ZTVcdTVmZDdcdThiYjBcdTVmNTVcIiwgXCJ1cmxcIjogXCIveGFkbWluL3hhZG1pbi9sb2cvXCIsIFwiaWNvblwiOiBcImZhIGZhLWNvZ1wiLCBcIm9yZGVyXCI6IDE4fV0sIFwiZmlyc3RfaWNvblwiOiBcImZhIGZhLWNvZ1wiLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4veGFkbWluL2xvZy9cIn0sIHtcInRpdGxlXCI6IFwiXHU4YmE0XHU4YmMxXHU1NDhjXHU2Mzg4XHU2NzQzXCIsIFwibWVudXNcIjogW3tcInRpdGxlXCI6IFwiXHU3ZWM0XCIsIFwidXJsXCI6IFwiL3hhZG1pbi9hdXRoL2dyb3VwL1wiLCBcImljb25cIjogXCJmYSBmYS1ncm91cFwiLCBcIm9yZGVyXCI6IDJ9LCB7XCJ0aXRsZVwiOiBcIlx1Njc0M1x1OTY1MFwiLCBcInVybFwiOiBcIi94YWRtaW4vYXV0aC9wZXJtaXNzaW9uL1wiLCBcImljb25cIjogXCJmYSBmYS1sb2NrXCIsIFwib3JkZXJcIjogNH1dLCBcImZpcnN0X2ljb25cIjogXCJmYSBmYS1ncm91cFwiLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vYXV0aC9ncm91cC9cIn1dIiwiTElTVF9RVUVSWSI6W1siZ29vZHMiLCJnb29kcyJdLCIiXX0=', '2018-05-18 03:51:34.000000');
INSERT INTO `django_session` VALUES ('77g02ouwxmffr2tt2qi4dk7zjr2curku', 'OWYyYWVlOWJiZDc4MDFjYWNiMzBiNzcxMjhhY2VmMDE2MGM1OTE1Njp7InFxX3N0YXRlIjoiblJmOFRYb1h0Vms4U1NJN21DYmxmeVR0VDdJY09kQ2IifQ==', '2018-05-18 03:59:12.000000');
INSERT INTO `django_session` VALUES ('7qsnndgnpzlr31ssnebales3721jg1ba', 'ZGYyN2ZlYzJkNjNhODg0Y2ZjOTMzNzc3ZjIyNmYzM2E0OGQ5ZTI1NDp7InFxX3N0YXRlIjoiWVlYNWJ4V1RBa1pVUkUyYlRQMGVqcndzbDYzd21wYzcifQ==', '2018-05-18 15:28:57.000000');
INSERT INTO `django_session` VALUES ('8r407qv2apzl2ev078h8tkrftmoplf7r', 'ZjQ3MDNiYTE2OThhOTVhNDllM2Q1YzQyOWJkNTIyN2M2YTQ1YmM5YTp7IndlaWJvX3N0YXRlIjoiOFJhbnZET1k3VWpHUWVRNndSZ2RlUjRHaW1ScllSWFAifQ==', '2018-05-19 17:10:14.000000');
INSERT INTO `django_session` VALUES ('a419529y2dhqcnsp3gprd6ts14xk122w', 'NWRhZmQzNzEwZTdjOWU2ZTIzZjVjNDUzNzNhOTk4YjgzYmU2ZDcyMjp7IndlaWJvX3N0YXRlIjoieEs1clBhT2pNVnpCclpzZ1ZBTDhJaVJpWmtUWk9MSW8iLCJfYXV0aF91c2VyX2lkIjoiMjMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJzb2NpYWxfY29yZS5iYWNrZW5kcy53ZWliby5XZWlib09BdXRoMiIsIl9hdXRoX3VzZXJfaGFzaCI6IjEyYjBkY2M4NzFjYjc3NDk2MjU5NDEyZWVlNDhhOTZhYjI5NzJjMmQiLCJzb2NpYWxfYXV0aF9sYXN0X2xvZ2luX2JhY2tlbmQiOiJ3ZWlibyJ9', '2018-05-18 20:01:41.000000');
INSERT INTO `django_session` VALUES ('bkv6d6rj08zt387kqv1fowqjyo9n3u9d', 'YTA3Y2E2MWIyMTE5ZjU5MjhmYzlkYWQ1ZDZiNDBhNTViMWEyNzc4Nzp7InFxX3N0YXRlIjoiZkpCWWVuWGJSemd5bDBHZEVhTkQ1czdWakVoM01tRjQiLCJ3ZWlib19zdGF0ZSI6IkxRVEh2NGlienpiVllsYTNjdjdGU282OWtPcHFLeXhIIiwiX2F1dGhfdXNlcl9pZCI6IjIwIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoic29jaWFsX2NvcmUuYmFja2VuZHMucXEuUVFPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiI4YmUyZGNjYjg0ODY5NzM2MDEyMTNkZDI0NDE2Mjg0YjAwODIzOGJlIiwic29jaWFsX2F1dGhfbGFzdF9sb2dpbl9iYWNrZW5kIjoicXEifQ==', '2018-05-18 18:37:37.000000');
INSERT INTO `django_session` VALUES ('cier9lo6chrg3tccu0m674a9jraucola', 'ZmRmN2U3Y2VmOWRlMWNhNzNkMTVmYzI5NWE0MmFiN2RhM2NlZmQwOTp7InFxX3N0YXRlIjoiWVBXZnhJN1VOOW5tbFM4bHhVTDVHZGIyWUpROTRrUksiLCJfYXV0aF91c2VyX2lkIjoiMjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJzb2NpYWxfY29yZS5iYWNrZW5kcy5xcS5RUU9BdXRoMiIsIl9hdXRoX3VzZXJfaGFzaCI6IjkwMjQ3ZTM3NWQzZTZmZDVkZDVkN2IyMDFjYWI3YzA4NDQ0MWRlMzQiLCJzb2NpYWxfYXV0aF9sYXN0X2xvZ2luX2JhY2tlbmQiOiJxcSJ9', '2018-05-18 18:50:50.000000');
INSERT INTO `django_session` VALUES ('iev42yh8dvcq0cz8z91alcmgzzpb6vwa', 'YzdiZWJjMzQ3OTZmMTAzYmJjMTI2ZWViYjYzODE2OGRhYmM4NDQ0Mjp7IndlaWJvX3N0YXRlIjoiMXZITGF3Sk5HeUY4cTRQZGVVUjdSVTZnUnNPdDNpbFIiLCJfYXV0aF91c2VyX2lkIjoiMTYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJzb2NpYWxfY29yZS5iYWNrZW5kcy53ZWliby5XZWlib09BdXRoMiIsIl9hdXRoX3VzZXJfaGFzaCI6IjBhNDU1YTIzNTBhMzNhNWE3YzRmYTg4YWMwYWNmYmZmYmExY2I4ZGYiLCJzb2NpYWxfYXV0aF9sYXN0X2xvZ2luX2JhY2tlbmQiOiJ3ZWlibyIsIndlaXhpbl9zdGF0ZSI6Im8xbGNqd1VLUUVhR0NOU3lHb3RmNzJoa1p1ZkpDQ25XIiwicXFfc3RhdGUiOiJQTEt4ZFRHMmk5TGNvWTBiMVh0VTNqamVQZlIzRG9OayJ9', '2018-05-18 18:53:36.000000');
INSERT INTO `django_session` VALUES ('jbyh8jjem5w2b16n0bl2lcbzi87488g5', 'ZjAxODE2Y2VlYWZhMGRkZDI0ZDBkOTBjOGJmNDYzZjIyZThkMTA0ODp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZmEyMmI3YmZiZTZiNDBiNDE2ZWE5ZDlmZWRlYTlmNmM1YzM3NjdjYiIsIkxJU1RfUVVFUlkiOltbImdvb2RzIiwiZ29vZHNjYXRlZ29yeSJdLCIiXX0=', '2020-09-09 21:35:31.505565');
INSERT INTO `django_session` VALUES ('khemfe1anmuawvgrabwd6u1swjgkdpka', 'MjRiOGY1NjNmMTQ2ZGI3YTUzNzc0NWRkZDkxNWM4MDgyZjY5NTk5ZDp7IndlaXhpbl9zdGF0ZSI6Im8wN25qaWMxT1Y1eGVaSHIybVJGSkJMSkRKOGU3MzZKIiwicXFfc3RhdGUiOiI3Nmh1Q2pSTWdKZkR2RFNCQlFPcVVuQWZUUUNScG5MRiJ9', '2018-05-18 21:19:22.000000');
INSERT INTO `django_session` VALUES ('km01p1fcqdumaui2lzp3a59xuh4hg6hl', 'M2RmMmVhNGQ5YWU1ZjQyZWYwNzI0ZGJkMTE3YTExNTNlMDQxMWU4Nzp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZmEyMmI3YmZiZTZiNDBiNDE2ZWE5ZDlmZWRlYTlmNmM1YzM3NjdjYiIsIm5hdl9tZW51IjoiW3tcInRpdGxlXCI6IFwiXHU0ZWE0XHU2NjEzXHU3YmExXHU3NDA2XCIsIFwibWVudXNcIjogW3tcInRpdGxlXCI6IFwiXHU4ZDJkXHU3MjY5XHU4ZjY2XHU1NWI1XCIsIFwidXJsXCI6IFwiL3hhZG1pbi90cmFkZS9zaG9wcGluZ2NhcnQvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDEyfSwge1widGl0bGVcIjogXCJcdThiYTJcdTUzNTVcdTRmZTFcdTYwNmZcIiwgXCJ1cmxcIjogXCIveGFkbWluL3RyYWRlL29yZGVyaW5mby9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTN9XSwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL3RyYWRlL3Nob3BwaW5nY2FydC9cIn0sIHtcInRpdGxlXCI6IFwiXHU1NTQ2XHU1NGMxXHU3YmExXHU3NDA2XCIsIFwibWVudXNcIjogW3tcInRpdGxlXCI6IFwiXHU1NTQ2XHU1NGMxXHU0ZmUxXHU2MDZmXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9nb29kcy9nb29kcy9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogNn0sIHtcInRpdGxlXCI6IFwiXHU1NTQ2XHU1NGMxXHU3YzdiXHU1MjJiXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9nb29kcy9nb29kc2NhdGVnb3J5L1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiA3fSwge1widGl0bGVcIjogXCJcdTk5OTZcdTk4NzVcdThmNmVcdTY0YWRcIiwgXCJ1cmxcIjogXCIveGFkbWluL2dvb2RzL2Jhbm5lci9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogOH0sIHtcInRpdGxlXCI6IFwiXHU1YmEzXHU0ZjIwXHU1NGMxXHU3MjRjXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9nb29kcy9nb29kc2NhdGVnb3J5YnJhbmQvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDl9LCB7XCJ0aXRsZVwiOiBcIlx1NzBlZFx1NjQxY1x1NjM5Mlx1ODg0Y1wiLCBcInVybFwiOiBcIi94YWRtaW4vZ29vZHMvaG90c2VhcmNod29yZHMvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDEwfSwge1widGl0bGVcIjogXCJcdTk5OTZcdTk4NzVcdTVlN2ZcdTU0NGFcIiwgXCJ1cmxcIjogXCIveGFkbWluL2dvb2RzL2luZGV4YWQvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDExfV0sIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi9nb29kcy9nb29kcy9cIn0sIHtcInRpdGxlXCI6IFwiXHU1ZjM5XHU2MDI3XHU5MTRkXHU3ZjZlXCIsIFwibWVudXNcIjogW3tcInRpdGxlXCI6IFwiXHU3MjQ4XHU2NzJjXHU0ZmUxXHU2MDZmXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9yZXBsYWNlL3ZlcnNpb25jb250cm9sL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxOX1dLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vcmVwbGFjZS92ZXJzaW9uY29udHJvbC9cIn0sIHtcInRpdGxlXCI6IFwiXHU2NGNkXHU0ZjVjXHU3YmExXHU3NDA2XCIsIFwibWVudXNcIjogW3tcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XHU2NTM2XHU4NWNmXCIsIFwidXJsXCI6IFwiL3hhZG1pbi91c2VyX29wZXJhdGlvbi91c2VyZmF2L1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxNH0sIHtcInRpdGxlXCI6IFwiXHU2NTM2XHU4ZDI3XHU1NzMwXHU1NzQwXCIsIFwidXJsXCI6IFwiL3hhZG1pbi91c2VyX29wZXJhdGlvbi91c2VyYWRkcmVzcy9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTV9LCB7XCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1x1NzU1OVx1OGEwMFwiLCBcInVybFwiOiBcIi94YWRtaW4vdXNlcl9vcGVyYXRpb24vdXNlcmxlYXZpbmdtZXNzYWdlL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxNn1dLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vdXNlcl9vcGVyYXRpb24vdXNlcmZhdi9cIn0sIHtcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XHU3YmExXHU3NDA2XCIsIFwibWVudXNcIjogW3tcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XHU0ZmUxXHU2MDZmXCIsIFwidXJsXCI6IFwiL3hhZG1pbi91c2Vycy91c2VycHJvZmlsZS9cIiwgXCJpY29uXCI6IFwiZmEgZmEtdXNlclwiLCBcIm9yZGVyXCI6IDN9LCB7XCJ0aXRsZVwiOiBcIlx1NzdlZFx1NGZlMVx1OWE4Y1x1OGJjMVwiLCBcInVybFwiOiBcIi94YWRtaW4vdXNlcnMvdmVyaWZ5Y29kZS9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogNX1dLCBcImZpcnN0X2ljb25cIjogXCJmYSBmYS11c2VyXCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi91c2Vycy91c2VycHJvZmlsZS9cIn0sIHtcInRpdGxlXCI6IFwiXHU3YmExXHU3NDA2XCIsIFwibWVudXNcIjogW3tcInRpdGxlXCI6IFwiXHU2NWU1XHU1ZmQ3XHU4YmIwXHU1ZjU1XCIsIFwidXJsXCI6IFwiL3hhZG1pbi94YWRtaW4vbG9nL1wiLCBcImljb25cIjogXCJmYSBmYS1jb2dcIiwgXCJvcmRlclwiOiAxOH1dLCBcImZpcnN0X2ljb25cIjogXCJmYSBmYS1jb2dcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL3hhZG1pbi9sb2cvXCJ9LCB7XCJ0aXRsZVwiOiBcIlx1OGJhNFx1OGJjMVx1NTQ4Y1x1NjM4OFx1Njc0M1wiLCBcIm1lbnVzXCI6IFt7XCJ0aXRsZVwiOiBcIlx1N2VjNFwiLCBcInVybFwiOiBcIi94YWRtaW4vYXV0aC9ncm91cC9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZ3JvdXBcIiwgXCJvcmRlclwiOiAyfSwge1widGl0bGVcIjogXCJcdTY3NDNcdTk2NTBcIiwgXCJ1cmxcIjogXCIveGFkbWluL2F1dGgvcGVybWlzc2lvbi9cIiwgXCJpY29uXCI6IFwiZmEgZmEtbG9ja1wiLCBcIm9yZGVyXCI6IDR9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtZ3JvdXBcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCJ9XSIsIkxJU1RfUVVFUlkiOltbInRyYWRlIiwic2hvcHBpbmdjYXJ0Il0sIiJdfQ==', '2020-08-26 19:59:50.324413');
INSERT INTO `django_session` VALUES ('l4txgbp0f30zxcefq7ykuprk7qp8c4ei', 'NGI4YjMwZWEwYmVhZjkyNWJkNDJkMzU4NjA0ZTQ3MTdkMTdlOTFiYjp7InFxX3N0YXRlIjoiejRvRVdwSzFlY2tGejg1V2cyRUlZNnR2Ym5QWlF4TW8iLCJfYXV0aF91c2VyX2lkIjoiMTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJzb2NpYWxfY29yZS5iYWNrZW5kcy5xcS5RUU9BdXRoMiIsIl9hdXRoX3VzZXJfaGFzaCI6IjRiOGQ3NjExZTU2M2FmMmQ4MmQ2ZGE0OTE0Nzg3ZDExODg4ZmQ2NWUiLCJzb2NpYWxfYXV0aF9sYXN0X2xvZ2luX2JhY2tlbmQiOiJxcSIsIndlaWJvX3N0YXRlIjoiOEtOYVp2NWtuemVJMWhLSnBmV2lqN1JQZVI4RzlUMHQifQ==', '2018-05-18 18:41:33.000000');
INSERT INTO `django_session` VALUES ('l9rvjczj5srorm1j16usvrprknmw6wl2', 'Y2E3NzFlMjMyOWRlYWYyNGRlZTE1NjY4MzFkMTgwNGE1NTllYjhmYjp7IndlaXhpbl9zdGF0ZSI6ImVjUmxjNTlYTzg4UnNTSkpGNHN6ZHZKaTdOazhoYXJMIiwicXFfc3RhdGUiOiJvb0F6NXFkQ2g0OHE4WHpnNXBVT0xUYmZqWWY1VTJFYiJ9', '2018-05-18 20:15:54.000000');
INSERT INTO `django_session` VALUES ('lqa17j2k7ityl8u3vwd8uql8aoqcpcl5', 'OTVjMWIzMGM2N2VkZjU4YzRkMTU5OTUzZTZlNjUzMjk0YzA0MGQ3Mzp7InFxX3N0YXRlIjoiaVpWMWhabU9LR29Ga01vTW9Sa3RFY25DMkViWldOaTAifQ==', '2018-05-18 18:36:19.000000');
INSERT INTO `django_session` VALUES ('lwx2ymjz1qeirzalkr22cq7bxfxlexmp', 'MzNhMDcxYWQ4OGYyZDZmMWU2ZjliNDY2NGQ2MjE4NjgyMWFhMDlmYjp7InFxX3N0YXRlIjoiVGw3VEtMZG1XWjlzd3V2WVBZM0JJZWlPM2V2M09mc1oifQ==', '2018-05-19 17:10:07.000000');
INSERT INTO `django_session` VALUES ('n306qqdhoj5ug9rkc1j8ox6e765dfkz1', 'NTE1MzViMTU5MWE0N2YzNzEwZDJhMWExNTUxODhlZjQ4MTc0MGVhNDp7Il9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzYTEyMmIzOWZlNTczODA1ZGMxMGEyODEwYWE3NmUxNmVkM2RhYTI5IiwibmF2X21lbnUiOiJbe1widGl0bGVcIjogXCJcdTRlYTRcdTY2MTNcdTdiYTFcdTc0MDZcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdThkMmRcdTcyNjlcdThmNjZcdTU1YjVcIiwgXCJ1cmxcIjogXCIveGFkbWluL3RyYWRlL3Nob3BwaW5nY2FydC9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTJ9LCB7XCJ0aXRsZVwiOiBcIlx1OGJhMlx1NTM1NVx1NGZlMVx1NjA2ZlwiLCBcInVybFwiOiBcIi94YWRtaW4vdHJhZGUvb3JkZXJpbmZvL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxM31dLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vdHJhZGUvc2hvcHBpbmdjYXJ0L1wifSwge1widGl0bGVcIjogXCJcdTU1NDZcdTU0YzFcdTdiYTFcdTc0MDZcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTU1NDZcdTU0YzFcdTRmZTFcdTYwNmZcIiwgXCJ1cmxcIjogXCIveGFkbWluL2dvb2RzL2dvb2RzL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiA2fSwge1widGl0bGVcIjogXCJcdTU1NDZcdTU0YzFcdTdjN2JcdTUyMmJcIiwgXCJ1cmxcIjogXCIveGFkbWluL2dvb2RzL2dvb2RzY2F0ZWdvcnkvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDd9LCB7XCJ0aXRsZVwiOiBcIlx1OTk5Nlx1OTg3NVx1OGY2ZVx1NjRhZFwiLCBcInVybFwiOiBcIi94YWRtaW4vZ29vZHMvYmFubmVyL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiA4fSwge1widGl0bGVcIjogXCJcdTViYTNcdTRmMjBcdTU0YzFcdTcyNGNcIiwgXCJ1cmxcIjogXCIveGFkbWluL2dvb2RzL2dvb2RzY2F0ZWdvcnlicmFuZC9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogOX0sIHtcInRpdGxlXCI6IFwiXHU3MGVkXHU2NDFjXHU2MzkyXHU4ODRjXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9nb29kcy9ob3RzZWFyY2h3b3Jkcy9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTB9LCB7XCJ0aXRsZVwiOiBcIlx1OTk5Nlx1OTg3NVx1NWU3Zlx1NTQ0YVwiLCBcInVybFwiOiBcIi94YWRtaW4vZ29vZHMvaW5kZXhhZC9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTF9XSwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2dvb2RzL2dvb2RzL1wifSwge1widGl0bGVcIjogXCJcdTY0Y2RcdTRmNWNcdTdiYTFcdTc0MDZcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTY1MzZcdTg1Y2ZcIiwgXCJ1cmxcIjogXCIveGFkbWluL3VzZXJfb3BlcmF0aW9uL3VzZXJmYXYvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDE0fSwge1widGl0bGVcIjogXCJcdTY1MzZcdThkMjdcdTU3MzBcdTU3NDBcIiwgXCJ1cmxcIjogXCIveGFkbWluL3VzZXJfb3BlcmF0aW9uL3VzZXJhZGRyZXNzL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxNX0sIHtcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XHU3NTU5XHU4YTAwXCIsIFwidXJsXCI6IFwiL3hhZG1pbi91c2VyX29wZXJhdGlvbi91c2VybGVhdmluZ21lc3NhZ2UvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDE2fV0sIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi91c2VyX29wZXJhdGlvbi91c2VyZmF2L1wifSwge1widGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTdiYTFcdTc0MDZcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTRmZTFcdTYwNmZcIiwgXCJ1cmxcIjogXCIveGFkbWluL3VzZXJzL3VzZXJwcm9maWxlL1wiLCBcImljb25cIjogXCJmYSBmYS11c2VyXCIsIFwib3JkZXJcIjogM30sIHtcInRpdGxlXCI6IFwiXHU3N2VkXHU0ZmUxXHU5YThjXHU4YmMxXCIsIFwidXJsXCI6IFwiL3hhZG1pbi91c2Vycy92ZXJpZnljb2RlL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiA1fV0sIFwiZmlyc3RfaWNvblwiOiBcImZhIGZhLXVzZXJcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL3VzZXJzL3VzZXJwcm9maWxlL1wifSwge1widGl0bGVcIjogXCJcdTdiYTFcdTc0MDZcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTY1ZTVcdTVmZDdcdThiYjBcdTVmNTVcIiwgXCJ1cmxcIjogXCIveGFkbWluL3hhZG1pbi9sb2cvXCIsIFwiaWNvblwiOiBcImZhIGZhLWNvZ1wiLCBcIm9yZGVyXCI6IDE4fV0sIFwiZmlyc3RfaWNvblwiOiBcImZhIGZhLWNvZ1wiLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4veGFkbWluL2xvZy9cIn0sIHtcInRpdGxlXCI6IFwiXHU4YmE0XHU4YmMxXHU1NDhjXHU2Mzg4XHU2NzQzXCIsIFwibWVudXNcIjogW3tcInRpdGxlXCI6IFwiXHU3ZWM0XCIsIFwidXJsXCI6IFwiL3hhZG1pbi9hdXRoL2dyb3VwL1wiLCBcImljb25cIjogXCJmYSBmYS1ncm91cFwiLCBcIm9yZGVyXCI6IDJ9LCB7XCJ0aXRsZVwiOiBcIlx1Njc0M1x1OTY1MFwiLCBcInVybFwiOiBcIi94YWRtaW4vYXV0aC9wZXJtaXNzaW9uL1wiLCBcImljb25cIjogXCJmYSBmYS1sb2NrXCIsIFwib3JkZXJcIjogNH1dLCBcImZpcnN0X2ljb25cIjogXCJmYSBmYS1ncm91cFwiLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vYXV0aC9ncm91cC9cIn1dIiwiTElTVF9RVUVSWSI6W1siZ29vZHMiLCJnb29kcyJdLCIiXSwid2VpYm9fc3RhdGUiOiJUMURKZWMxZm8ySE1DUzNXUXZFdTgydjA3UGdwbXdIYiIsInFxX3N0YXRlIjoieGp2Z2RDeHVZdmcwM21oV1lEaE1nRVVzOGFiSEZtUUciLCJ3ZWl4aW5fc3RhdGUiOiJCdDVNTmlocndGRXllMkVacGNYN1V3NjNIVUtoUnd5aCJ9', '2018-05-18 03:58:21.000000');
INSERT INTO `django_session` VALUES ('n4gyxzf2ry48ft8asjuszh1v2o5iczfh', 'ZmNmYjE2NTRiNjBhZGRhNTEyZjIwN2Q3ZDc4OWRiM2ZmODE3NmIxZDp7InFxX3N0YXRlIjoiSURacFRVdTY4TXpqYzJQcWEyZE9WN2pqODdCSjIzTzAifQ==', '2018-05-18 17:08:22.000000');
INSERT INTO `django_session` VALUES ('oge6yh6bot7mllsok604em36fq8dkpay', 'MWZiYzE1MzcwMmUzYzZlNWIyOThiOWJmNTFhMzExNDU0ZDY1NDk3Njp7IndlaXhpbl9zdGF0ZSI6IkJHdHhYa2JjRngzdVhQbUgwaUxiZWZ3VGlZTkRac21CIn0=', '2018-05-18 11:33:31.000000');
INSERT INTO `django_session` VALUES ('r811v0nk53tsy9ragfv66urh3s6bywv0', 'MTlmMTY0NDQzM2E5OGUxNWQ2OTcwZTcyYjE1NDI4N2ExYzMwMzQ0ZTp7InFxX3N0YXRlIjoic0F5d1BrTmw2ZmJ0dUFmV3A1aXV0MXFVVmlFbmRMNU0iLCJfYXV0aF91c2VyX2lkIjoiMjYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJzb2NpYWxfY29yZS5iYWNrZW5kcy5xcS5RUU9BdXRoMiIsIl9hdXRoX3VzZXJfaGFzaCI6ImVmNzJkYmIzYWZkYjk1ZmY2ZmZjZWNiMjY2NDU5N2NjYWVjOTJlOTkiLCJzb2NpYWxfYXV0aF9sYXN0X2xvZ2luX2JhY2tlbmQiOiJxcSJ9', '2018-05-19 08:46:36.000000');
INSERT INTO `django_session` VALUES ('tb6exn2eckzdv3pzrp7cwdwywywa59po', 'YTAyMDVlMjliYTJiNzljZThkNjJkOTU4NjdiNmIwMzUwNjIwMTc2Mjp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMDM2NjkyNzdmYzliNWQxYmE4NDVmM2EwM2U0OTYxODU3NWM2MWZjZiIsIkxJU1RfUVVFUlkiOltbInJlcGxhY2UiLCJ2ZXJzaW9uY29udHJvbCJdLCIiXX0=', '2019-06-02 16:55:21.680026');
INSERT INTO `django_session` VALUES ('tnqo8cmgz94cyln9j7rqoeydt9t9kwhb', 'Y2ExNTBlZDNkODcyM2VlZjFlMGM5MDM1ZGU5MmRkMjg2YmU4YzY5NTp7Il9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzYTEyMmIzOWZlNTczODA1ZGMxMGEyODEwYWE3NmUxNmVkM2RhYTI5IiwibmF2X21lbnUiOiJbe1widGl0bGVcIjogXCJcdTRlYTRcdTY2MTNcdTdiYTFcdTc0MDZcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdThkMmRcdTcyNjlcdThmNjZcdTU1YjVcIiwgXCJ1cmxcIjogXCIveGFkbWluL3RyYWRlL3Nob3BwaW5nY2FydC9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTJ9LCB7XCJ0aXRsZVwiOiBcIlx1OGJhMlx1NTM1NVx1NGZlMVx1NjA2ZlwiLCBcInVybFwiOiBcIi94YWRtaW4vdHJhZGUvb3JkZXJpbmZvL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxM31dLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vdHJhZGUvc2hvcHBpbmdjYXJ0L1wifSwge1widGl0bGVcIjogXCJcdTU1NDZcdTU0YzFcdTdiYTFcdTc0MDZcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTU1NDZcdTU0YzFcdTRmZTFcdTYwNmZcIiwgXCJ1cmxcIjogXCIveGFkbWluL2dvb2RzL2dvb2RzL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiA2fSwge1widGl0bGVcIjogXCJcdTU1NDZcdTU0YzFcdTdjN2JcdTUyMmJcIiwgXCJ1cmxcIjogXCIveGFkbWluL2dvb2RzL2dvb2RzY2F0ZWdvcnkvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDd9LCB7XCJ0aXRsZVwiOiBcIlx1OTk5Nlx1OTg3NVx1OGY2ZVx1NjRhZFwiLCBcInVybFwiOiBcIi94YWRtaW4vZ29vZHMvYmFubmVyL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiA4fSwge1widGl0bGVcIjogXCJcdTViYTNcdTRmMjBcdTU0YzFcdTcyNGNcIiwgXCJ1cmxcIjogXCIveGFkbWluL2dvb2RzL2dvb2RzY2F0ZWdvcnlicmFuZC9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogOX0sIHtcInRpdGxlXCI6IFwiXHU3MGVkXHU2NDFjXHU2MzkyXHU4ODRjXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9nb29kcy9ob3RzZWFyY2h3b3Jkcy9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTB9LCB7XCJ0aXRsZVwiOiBcIlx1OTk5Nlx1OTg3NVx1NWU3Zlx1NTQ0YVwiLCBcInVybFwiOiBcIi94YWRtaW4vZ29vZHMvaW5kZXhhZC9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTF9XSwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2dvb2RzL2dvb2RzL1wifSwge1widGl0bGVcIjogXCJcdTY0Y2RcdTRmNWNcdTdiYTFcdTc0MDZcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTY1MzZcdTg1Y2ZcIiwgXCJ1cmxcIjogXCIveGFkbWluL3VzZXJfb3BlcmF0aW9uL3VzZXJmYXYvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDE0fSwge1widGl0bGVcIjogXCJcdTY1MzZcdThkMjdcdTU3MzBcdTU3NDBcIiwgXCJ1cmxcIjogXCIveGFkbWluL3VzZXJfb3BlcmF0aW9uL3VzZXJhZGRyZXNzL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxNX0sIHtcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XHU3NTU5XHU4YTAwXCIsIFwidXJsXCI6IFwiL3hhZG1pbi91c2VyX29wZXJhdGlvbi91c2VybGVhdmluZ21lc3NhZ2UvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDE2fV0sIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi91c2VyX29wZXJhdGlvbi91c2VyZmF2L1wifSwge1widGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTdiYTFcdTc0MDZcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTRmZTFcdTYwNmZcIiwgXCJ1cmxcIjogXCIveGFkbWluL3VzZXJzL3VzZXJwcm9maWxlL1wiLCBcImljb25cIjogXCJmYSBmYS11c2VyXCIsIFwib3JkZXJcIjogM30sIHtcInRpdGxlXCI6IFwiXHU3N2VkXHU0ZmUxXHU5YThjXHU4YmMxXCIsIFwidXJsXCI6IFwiL3hhZG1pbi91c2Vycy92ZXJpZnljb2RlL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiA1fV0sIFwiZmlyc3RfaWNvblwiOiBcImZhIGZhLXVzZXJcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL3VzZXJzL3VzZXJwcm9maWxlL1wifSwge1widGl0bGVcIjogXCJcdTdiYTFcdTc0MDZcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTY1ZTVcdTVmZDdcdThiYjBcdTVmNTVcIiwgXCJ1cmxcIjogXCIveGFkbWluL3hhZG1pbi9sb2cvXCIsIFwiaWNvblwiOiBcImZhIGZhLWNvZ1wiLCBcIm9yZGVyXCI6IDE4fV0sIFwiZmlyc3RfaWNvblwiOiBcImZhIGZhLWNvZ1wiLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4veGFkbWluL2xvZy9cIn0sIHtcInRpdGxlXCI6IFwiXHU4YmE0XHU4YmMxXHU1NDhjXHU2Mzg4XHU2NzQzXCIsIFwibWVudXNcIjogW3tcInRpdGxlXCI6IFwiXHU3ZWM0XCIsIFwidXJsXCI6IFwiL3hhZG1pbi9hdXRoL2dyb3VwL1wiLCBcImljb25cIjogXCJmYSBmYS1ncm91cFwiLCBcIm9yZGVyXCI6IDJ9LCB7XCJ0aXRsZVwiOiBcIlx1Njc0M1x1OTY1MFwiLCBcInVybFwiOiBcIi94YWRtaW4vYXV0aC9wZXJtaXNzaW9uL1wiLCBcImljb25cIjogXCJmYSBmYS1sb2NrXCIsIFwib3JkZXJcIjogNH1dLCBcImZpcnN0X2ljb25cIjogXCJmYSBmYS1ncm91cFwiLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vYXV0aC9ncm91cC9cIn1dIiwiTElTVF9RVUVSWSI6W1siZ29vZHMiLCJnb29kcyJdLCIiXX0=', '2018-05-18 01:50:41.000000');
INSERT INTO `django_session` VALUES ('u0ztj9n87o64bkmwg1hg4vwrx6bsatsu', 'MWFmM2Y5MjU5NGVhYzJkOGM0MjM0ZWY2NWI1NzE1ODk0YjRmMDExZjp7IndlaWJvX3N0YXRlIjoidFBNdmxTcHNWOUVXRTU0OGttUlAydnB1bGVUWW9hOWIifQ==', '2018-05-18 10:56:06.000000');
INSERT INTO `django_session` VALUES ('upkux7igwttmzinr7klxmp5a2snpts9i', 'OWYzNTAwMDlkNzAzNjZjM2NiZDAxYTc2MGY3YTViZjA3YjMwOWY4Zjp7IndlaWJvX3N0YXRlIjoicHhGTVB3N1J4NzRtclZZWTRneVlpMWxSNnluTzU1d1AifQ==', '2018-05-17 23:30:04.000000');
INSERT INTO `django_session` VALUES ('yqj4jc2clpahwkxb3bxng980r2pqpuaf', 'OGNiYzg1NmE2M2RmNWQwZTRmNjdmZmQ0MGEwMjE2Mjg2MzRlZDY5NTp7InFxX3N0YXRlIjoiYVhmUHdTeHVQZDAzRURPZURvSFY3bE1LTXpiUXZFek8ifQ==', '2018-05-19 02:38:48.000000');
INSERT INTO `django_session` VALUES ('z9ix1bll95jmhlmss5yjntmczb48v0jh', 'NjhhNjc0NmY2NGNmYjljZjhmMGIxMWExNGE4NDdhMDA3MDA5ZDQ2ODp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZmEyMmI3YmZiZTZiNDBiNDE2ZWE5ZDlmZWRlYTlmNmM1YzM3NjdjYiJ9', '2020-09-09 21:53:24.850194');
COMMIT;

-- ----------------------------
-- Table structure for goods_banner
-- ----------------------------
DROP TABLE IF EXISTS `goods_banner`;
CREATE TABLE `goods_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `index` int(11) NOT NULL,
  `add_time` datetime(6) DEFAULT NULL,
  `goods_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `goods_banner_goods_id_99e23129_fk_goods_goods_id` (`goods_id`) USING BTREE,
  CONSTRAINT `goods_banner_goods_id_99e23129_fk_goods_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods_goods` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of goods_banner
-- ----------------------------
BEGIN;
INSERT INTO `goods_banner` VALUES (4, 'banner/l2.jpg', 0, '2018-05-03 23:35:00.000000', 117);
INSERT INTO `goods_banner` VALUES (5, 'banner/l1_QNqheAX.jpg', 0, '2018-05-03 23:37:00.000000', 17);
COMMIT;

-- ----------------------------
-- Table structure for goods_goods
-- ----------------------------
DROP TABLE IF EXISTS `goods_goods`;
CREATE TABLE `goods_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_sn` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `click_num` int(11) NOT NULL,
  `sold_num` int(11) NOT NULL,
  `fav_num` int(11) NOT NULL,
  `goods_num` int(11) NOT NULL,
  `market_price` double NOT NULL,
  `shop_price` double NOT NULL,
  `goods_brief` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `goods_desc` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ship_free` tinyint(1) NOT NULL,
  `goods_front_image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `is_new` tinyint(1) NOT NULL,
  `is_hot` tinyint(1) NOT NULL,
  `add_time` datetime(6) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `goods_goods_category_id_da3507dd_fk_goods_goodscategory_id` (`category_id`) USING BTREE,
  CONSTRAINT `goods_goods_category_id_da3507dd_fk_goods_goodscategory_id` FOREIGN KEY (`category_id`) REFERENCES `goods_goodscategory` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of goods_goods
-- ----------------------------
BEGIN;
INSERT INTO `goods_goods` VALUES (1, 'sn2011', '刘墉散文精选', 120, 24, 27, 29, 28, 15, '长江文艺出版社', '<p>&nbsp; &nbsp; 第二大类：社会科学、文化艺术</p>', 0, 'goods/images/liuyong_wzq8kXx.png', 0, 0, '2018-01-15 00:00:00.000000', 126);
INSERT INTO `goods_goods` VALUES (2, 'sn2013', '爱是人间的奢华(精装美绘版)(精)/名家散文经典', 138, 29, 30, 23, 32, 9.9, '长江文艺出版社', '<p>&nbsp; &nbsp; 第二大类：社会科学、文化艺术</p>', 0, 'goods/images/ai_fRXMMzv.png', 1, 1, '2018-01-17 00:00:00.000000', 126);
INSERT INTO `goods_goods` VALUES (3, 'sn2006', '白露为霜(盛世蔷薇姊妹篇)', 114, 19, 22, 24, 24.8, 15, '北方文艺出版社', '<p>&nbsp; &nbsp; 第二大类：社会科学、文化艺术</p>', 0, 'goods/images/bailu_8o49ioh.png', 1, 1, '2018-01-10 00:00:00.000000', 126);
INSERT INTO `goods_goods` VALUES (5, 'sn1999', '解忧杂货店(精)', 105, 12, 15, 17, 39.5, 15, '南海出版公司', '<p>&nbsp; &nbsp; 第二大类：社会科学、文化艺术</p>', 0, 'goods/images/jieyou_JDRanhI.png', 0, 0, '2018-01-03 00:00:00.000000', 126);
INSERT INTO `goods_goods` VALUES (6, 'sn2005', '一见阳光就灿烂(原名求你正经点)', 108, 18, 21, 23, 28, 15, '江苏凤凰文艺出版社', '<p>&nbsp; &nbsp; 第二大类：社会科学、文化艺术</p>', 0, 'goods/images/yijian_Tu956p4.png', 0, 0, '2018-01-09 00:00:00.000000', 126);
INSERT INTO `goods_goods` VALUES (17, 'sn2045', '同学别将就', 170, 58, 61, 63, 26.8, 15, '中国文联出版社', '<p><img src=\"http://vueshopstatic.mtianyan.cn/goods/images/4I5aaJH64j_20180504035113_842.png\" title=\"\" alt=\"4I5aaJH64j.png\" width=\"328\" height=\"281\" style=\"width: 328px; height: 281px;\"/>&nbsp; &nbsp; 同学别将就。</p>', 0, 'goods/images/4I5aaJH64j.png', 0, 0, '2018-02-18 00:00:00.000000', 126);
INSERT INTO `goods_goods` VALUES (106, 'sn1997', '大学物理', 106, 10, 13, 14, 30, 15, '大学物理', '大学学物理', 0, '空着', 0, 0, '2018-01-01 00:00:00.000000', 126);
INSERT INTO `goods_goods` VALUES (107, 'sn1998', '解忧杂货店(精)', 104, 11, 14, 15, 39.5, 15, '南海出版公司', '第二大类：社会科学、文化艺术', 0, '空着', 0, 0, '2018-01-02 00:00:00.000000', 126);
INSERT INTO `goods_goods` VALUES (109, 'sn2000', '武动乾坤(17返截杀戮)', 103, 13, 16, 18, 28, 15, '长江少年儿童出版社', '第二大类：社会科学、文化艺术', 0, '空着', 0, 0, '2018-01-04 00:00:00.000000', 126);
INSERT INTO `goods_goods` VALUES (110, 'sn2001', '逆命', 104, 14, 17, 19, 25, 15, '九州出版社', '第二大类：社会科学、文化艺术', 0, '空着', 0, 0, '2018-01-05 00:00:00.000000', 126);
INSERT INTO `goods_goods` VALUES (111, 'sn2002', '逆命', 105, 15, 18, 20, 25, 15, '九州出版社', '第二大类：社会科学、文化艺术', 0, '空着', 0, 0, '2018-01-06 00:00:00.000000', 126);
INSERT INTO `goods_goods` VALUES (112, 'sn2003', '祈祷落幕时(精)', 106, 16, 19, 21, 39.5, 15, '南海出版公司', '第二大类：社会科学、文化艺术', 0, '空着', 0, 0, '2018-01-07 00:00:00.000000', 126);
INSERT INTO `goods_goods` VALUES (113, 'sn2004', '祈祷落幕时(精)', 107, 17, 20, 22, 39.5, 15, '南海出版公司', '第二大类：社会科学、文化艺术', 0, '空着', 0, 0, '2018-01-08 00:00:00.000000', 126);
INSERT INTO `goods_goods` VALUES (116, 'sn2007', '你若精彩天自安排(愿再次与你重逢盛开)', 110, 20, 23, 25, 29.8, 15, '湖北教育出版社', '第二大类：社会科学、文化艺术', 0, '空着', 0, 0, '2018-01-11 00:00:00.000000', 126);
INSERT INTO `goods_goods` VALUES (117, 'sn2008', '总裁缺钱', 113, 21, 24, 26, 24.8, 15, '江苏凤凰文艺出版社', '第二大类：社会科学、文化艺术', 0, '空着', 0, 0, '2018-01-12 00:00:00.000000', 126);
INSERT INTO `goods_goods` VALUES (118, 'sn2009', '武动乾坤(13强者之心)', 112, 22, 25, 27, 28, 15, '长江少年儿童出版社', '第二大类：社会科学、文化艺术', 0, '空着', 0, 0, '2018-01-13 00:00:00.000000', 126);
INSERT INTO `goods_goods` VALUES (119, 'sn2010', '公主很忙(3逍遥与君歌)', 113, 23, 26, 28, 25, 15, '北京燕山出版社', '第二大类：社会科学、文化艺术', 0, '空着', 0, 0, '2018-01-14 00:00:00.000000', 126);
INSERT INTO `goods_goods` VALUES (121, 'sn2012', '一醉千金', 115, 25, 28, 30, 24.8, 15, '中国言实出版社', '第二大类：社会科学、文化艺术', 0, '空着', 0, 0, '2018-01-16 00:00:00.000000', 126);
INSERT INTO `goods_goods` VALUES (123, 'sn2014', '莽荒纪(3千剑问道)', 117, 27, 30, 32, 25, 15, '江苏文艺出版社', '第二大类：社会科学、文化艺术', 0, '空着', 0, 0, '2018-01-18 00:00:00.000000', 126);
INSERT INTO `goods_goods` VALUES (124, 'sn2015', '莽荒纪(3千剑问道)', 118, 28, 31, 33, 25, 15, '江苏文艺出版社', '第二大类：社会科学、文化艺术', 0, '空着', 0, 0, '2018-01-19 00:00:00.000000', 126);
INSERT INTO `goods_goods` VALUES (125, 'sn2016', '邪神传说(1)', 119, 29, 32, 34, 26, 15, '湖南少年儿童出版社', '第二大类：社会科学、文化艺术', 0, 'http://vueshopstatic.mtianyan.cn/root/projects/VueDjangoFrameWorkShop/media/%E7%A9%BA%E7%9D%80', 0, 0, '2018-01-20 00:00:00.000000', 126);
INSERT INTO `goods_goods` VALUES (126, 'sn2017', '高门有喜', 120, 30, 33, 35, 22, 15, '江苏文艺出版社', '第二大类：社会科学、文化艺术', 0, '空着', 0, 0, '2018-01-21 00:00:00.000000', 126);
INSERT INTO `goods_goods` VALUES (127, 'sn2018', '医手遮香(步月篇上下)', 121, 31, 34, 36, 27.5, 15, '江苏凤凰文艺出版社', '第二大类：社会科学、文化艺术', 0, '空着', 0, 0, '2018-01-22 00:00:00.000000', 126);
INSERT INTO `goods_goods` VALUES (128, 'sn2019', '天秤座--优雅走过下雨天/淑女文学馆浪漫星语系列', 122, 32, 35, 37, 20.9, 15, '北方妇女儿童出版社', '第二大类：社会科学、文化艺术', 0, '空着', 0, 0, '2018-01-23 00:00:00.000000', 126);
INSERT INTO `goods_goods` VALUES (129, 'sn2020', '疏影江楼月', 123, 33, 36, 38, 26.8, 15, '江苏文艺出版社', '第二大类：社会科学、文化艺术', 0, '空着', 0, 0, '2018-01-24 00:00:00.000000', 126);
INSERT INTO `goods_goods` VALUES (130, 'sn2021', '武动乾坤(6百朝大会)', 124, 34, 37, 39, 28, 15, '长江少年儿童出版社', '第二大类：社会科学、文化艺术', 0, '空着', 0, 0, '2018-01-25 00:00:00.000000', 126);
INSERT INTO `goods_goods` VALUES (131, 'sn2022', '武动乾坤(6百朝大会)', 125, 35, 38, 40, 28, 15, '长江少年儿童出版社', '第二大类：社会科学、文化艺术', 0, '空着', 0, 0, '2018-01-26 00:00:00.000000', 126);
INSERT INTO `goods_goods` VALUES (132, 'sn2023', '一只学霸两只呆萌', 126, 36, 39, 41, 24.8, 15, '中国言实出版社', '第二大类：社会科学、文化艺术', 0, '空着', 0, 0, '2018-01-27 00:00:00.000000', 126);
INSERT INTO `goods_goods` VALUES (133, 'sn2024', '江山依旧', 127, 37, 40, 42, 29.8, 15, '二十一世纪出版社', '第二大类：社会科学、文化艺术', 0, '空着', 0, 0, '2018-01-28 00:00:00.000000', 126);
INSERT INTO `goods_goods` VALUES (134, 'sn2025', '狂神(1)', 128, 38, 41, 43, 26, 15, '湖北少年儿童出版社', '第二大类：社会科学、文化艺术', 0, '空着', 0, 0, '2018-01-29 00:00:00.000000', 126);
INSERT INTO `goods_goods` VALUES (135, 'sn2026', '斗罗大陆(第2部绝世唐门9)', 129, 39, 42, 44, 26, 15, '湖南少年儿童出版社', '第二大类：社会科学、文化艺术', 0, '空着', 0, 0, '2018-01-30 00:00:00.000000', 126);
INSERT INTO `goods_goods` VALUES (136, 'sn2027', '莽荒纪(15剑指天下)', 130, 40, 43, 45, 25, 15, '团结出版社', '第二大类：社会科学、文化艺术', 0, '空着', 0, 0, '2018-01-31 00:00:00.000000', 126);
INSERT INTO `goods_goods` VALUES (137, 'sn2028', '如果那时知道我此时所知道的', 131, 41, 44, 46, 22.8, 15, '江苏凤凰文艺出版社', '第二大类：社会科学、文化艺术', 0, '空着', 0, 0, '2018-02-01 00:00:00.000000', 126);
INSERT INTO `goods_goods` VALUES (138, 'sn2029', '所有遇见终将遗忘', 132, 42, 45, 47, 22, 15, '江苏凤凰文艺出版社', '第二大类：社会科学、文化艺术', 0, '空着', 0, 0, '2018-02-02 00:00:00.000000', 126);
INSERT INTO `goods_goods` VALUES (139, 'sn2030', '情书时光纪', 133, 43, 46, 48, 22.8, 15, '中国文联出版社', '第二大类：社会科学、文化艺术', 0, '空着', 0, 0, '2018-02-03 00:00:00.000000', 126);
INSERT INTO `goods_goods` VALUES (140, 'sn2031', '情书时光纪', 134, 44, 47, 49, 22.8, 15, '中国文联出版社', '第二大类：社会科学、文化艺术', 0, '空着', 0, 0, '2018-02-04 00:00:00.000000', 126);
INSERT INTO `goods_goods` VALUES (141, 'sn2032', '九品芝麻仙', 135, 45, 48, 50, 25, 15, '吉林文史出版社', '第二大类：社会科学、文化艺术', 0, '空着', 0, 0, '2018-02-05 00:00:00.000000', 126);
INSERT INTO `goods_goods` VALUES (142, 'sn2033', '你才缺爱', 136, 46, 49, 51, 24.8, 15, '江苏凤凰文艺出版社', '第二大类：社会科学、文化艺术', 0, '空着', 0, 0, '2018-02-06 00:00:00.000000', 126);
INSERT INTO `goods_goods` VALUES (143, 'sn2034', '好一个国舅爷', 137, 47, 50, 52, 22, 15, '北京时代华文书局', '第二大类：社会科学、文化艺术', 0, '空着', 0, 0, '2018-02-07 00:00:00.000000', 126);
INSERT INTO `goods_goods` VALUES (144, 'sn2035', '锦绣未央(共3册)', 138, 48, 51, 53, 25, 15, '江苏文艺出版社', '第二大类：社会科学、文化艺术', 0, '空着', 0, 0, '2018-02-08 00:00:00.000000', 126);
INSERT INTO `goods_goods` VALUES (145, 'sn2036', '恐龙传奇(恐龙化石探索家必备)', 139, 49, 52, 54, 29.8, 15, '湖南少年儿童出版社', '第三大类：自然科学技术', 0, '空着', 0, 0, '2018-02-09 00:00:00.000000', 126);
INSERT INTO `goods_goods` VALUES (146, 'sn2037', '可惜不是你(完美纪念版)', 140, 50, 53, 55, 26.8, 15, '江苏凤凰文艺出版社', '第二大类：社会科学、文化艺术', 0, '空着', 0, 0, '2018-02-10 00:00:00.000000', 126);
INSERT INTO `goods_goods` VALUES (147, 'sn2038', '如果你嫁了他', 141, 51, 54, 56, 22, 15, '2014.0', '第二大类：社会科学、文化艺术', 0, '空着', 0, 0, '2018-02-11 00:00:00.000000', 126);
INSERT INTO `goods_goods` VALUES (148, 'sn2039', '吃货为后', 142, 52, 55, 57, 25, 15, '江苏凤凰文艺出版社', '第二大类：社会科学、文化艺术', 0, '空着', 0, 0, '2018-02-12 00:00:00.000000', 126);
INSERT INTO `goods_goods` VALUES (149, 'sn2040', '完美替身恋人', 143, 53, 56, 58, 25, 15, '中国言实出版社', '第二大类：社会科学、文化艺术', 0, '空着', 0, 0, '2018-02-13 00:00:00.000000', 126);
INSERT INTO `goods_goods` VALUES (150, 'sn2041', '浮珑(浮生物语前传)', 144, 54, 57, 59, 26.8, 15, '长江出版社', '第二大类：社会科学、文化艺术', 0, '空着', 0, 0, '2018-02-14 00:00:00.000000', 126);
INSERT INTO `goods_goods` VALUES (151, 'sn2042', '也说李白与杜甫', 145, 55, 58, 60, 32, 15, '中华书局', '第二大类：社会科学、文化艺术', 0, '空着', 0, 0, '2018-02-15 00:00:00.000000', 126);
INSERT INTO `goods_goods` VALUES (152, 'sn2043', '陪伴是最长情的告白', 146, 56, 59, 61, 25, 15, '江苏文艺出版社', '第二大类：社会科学、文化艺术', 0, '空着', 0, 0, '2018-02-16 00:00:00.000000', 126);
INSERT INTO `goods_goods` VALUES (153, 'sn2044', '陪伴是最长情的告白', 147, 57, 60, 62, 25, 15, '江苏文艺出版社', '第二大类：社会科学、文化艺术', 0, '空着', 0, 0, '2018-02-17 00:00:00.000000', 126);
INSERT INTO `goods_goods` VALUES (155, 'sn2046', '南风有归期', 149, 59, 62, 64, 24.8, 15, '江苏凤凰文艺出版社', '<p><img src=\"http://vueshopstatic.mtianyan.cn/goods/images/wechatpay_20180504035036_757.png\" title=\"\" alt=\"wechatpay.png\"/>&nbsp; &nbsp; 第二大类：社会科学、文化艺术</p>', 0, 'goods/images/avatar.jpg', 0, 0, '2018-02-19 00:00:00.000000', 126);
COMMIT;

-- ----------------------------
-- Table structure for goods_goodsbrand
-- ----------------------------
DROP TABLE IF EXISTS `goods_goodsbrand`;
CREATE TABLE `goods_goodsbrand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `goods_goodsbrand_category_id_6fc84a73_fk_goods_goodscategory_id` (`category_id`) USING BTREE,
  CONSTRAINT `goods_goodsbrand_category_id_6fc84a73_fk_goods_goodscategory_id` FOREIGN KEY (`category_id`) REFERENCES `goods_goodscategory` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of goods_goodsbrand
-- ----------------------------
BEGIN;
INSERT INTO `goods_goodsbrand` VALUES (1, '北大', '出版社', 'brands/LYVDK2BTH_PX02NKA_aAsn1ip.png', '2018-05-03 23:39:00.000000', 126);
INSERT INTO `goods_goodsbrand` VALUES (2, '北理工', '出版社', 'brands/1_tasj8s3.png', '2018-05-03 23:41:00.000000', 126);
INSERT INTO `goods_goodsbrand` VALUES (3, '方志', '出版社', 'brands/R_MBW1D29W6Z0567CV_ilVJSSS.png', '2018-05-03 23:41:00.000000', 126);
COMMIT;

-- ----------------------------
-- Table structure for goods_goodscategory
-- ----------------------------
DROP TABLE IF EXISTS `goods_goodscategory`;
CREATE TABLE `goods_goodscategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `category_type` int(11) NOT NULL,
  `is_tab` tinyint(1) NOT NULL,
  `add_time` datetime(6) DEFAULT NULL,
  `parent_category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `goods_goodscategory_parent_category_id_ccec2509_fk_goods_goo` (`parent_category_id`) USING BTREE,
  CONSTRAINT `goods_goodscategory_parent_category_id_ccec2509_fk_goods_goo` FOREIGN KEY (`parent_category_id`) REFERENCES `goods_goodscategory` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of goods_goodscategory
-- ----------------------------
BEGIN;
INSERT INTO `goods_goodscategory` VALUES (121, '理学类', '001', '001', 1, 1, '2018-05-03 22:56:00.000000', NULL);
INSERT INTO `goods_goodscategory` VALUES (122, '工学类', '002', '002', 1, 1, '2018-05-03 22:56:00.000000', NULL);
INSERT INTO `goods_goodscategory` VALUES (123, '医学类', '003', '003', 1, 1, '2018-05-03 22:57:00.000000', NULL);
INSERT INTO `goods_goodscategory` VALUES (124, '经济学类', '004', '004', 1, 1, '2018-05-03 22:57:00.000000', NULL);
INSERT INTO `goods_goodscategory` VALUES (125, '管理学类', '005', '005', 1, 1, '2018-05-03 22:58:00.000000', NULL);
INSERT INTO `goods_goodscategory` VALUES (126, '文学类', '006', '006', 1, 1, '2018-05-03 22:59:00.000000', NULL);
INSERT INTO `goods_goodscategory` VALUES (127, '测试分类', 'test_code', '测试分类描述', 1, 0, '2020-08-26 22:05:14.493577', NULL);
COMMIT;

-- ----------------------------
-- Table structure for goods_goodsimage
-- ----------------------------
DROP TABLE IF EXISTS `goods_goodsimage`;
CREATE TABLE `goods_goodsimage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `add_time` datetime(6) DEFAULT NULL,
  `goods_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `goods_goodsimage_goods_id_08cb23b1_fk_goods_goods_id` (`goods_id`) USING BTREE,
  CONSTRAINT `goods_goodsimage_goods_id_08cb23b1_fk_goods_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods_goods` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of goods_goodsimage
-- ----------------------------
BEGIN;
INSERT INTO `goods_goodsimage` VALUES (183, '4I5aaJH64j.png', '2018-05-03 23:45:05.000000', 17);
INSERT INTO `goods_goodsimage` VALUES (184, 'liuyong_NAHgZGX.png', '2018-05-03 23:47:36.000000', 1);
INSERT INTO `goods_goodsimage` VALUES (185, 'ai_D0gyzWy.png', '2018-05-03 23:48:19.000000', 2);
INSERT INTO `goods_goodsimage` VALUES (186, 'bailu_zT6UFyl.png', '2018-05-03 23:48:54.000000', 3);
INSERT INTO `goods_goodsimage` VALUES (187, 'jieyou_6gpnPrm.png', '2018-05-03 23:54:58.000000', 5);
INSERT INTO `goods_goodsimage` VALUES (188, 'yijian_Xs422Ty.png', '2018-05-03 23:56:44.000000', 6);
COMMIT;

-- ----------------------------
-- Table structure for goods_hotsearchwords
-- ----------------------------
DROP TABLE IF EXISTS `goods_hotsearchwords`;
CREATE TABLE `goods_hotsearchwords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keywords` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `index` int(11) NOT NULL,
  `add_time` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of goods_hotsearchwords
-- ----------------------------
BEGIN;
INSERT INTO `goods_hotsearchwords` VALUES (1, '同学别将就', 0, '2018-05-03 23:34:00.000000');
INSERT INTO `goods_hotsearchwords` VALUES (2, '解忧杂货店', 0, '2018-05-03 23:34:00.000000');
INSERT INTO `goods_hotsearchwords` VALUES (3, '刘墉', 0, '2018-05-03 23:39:00.000000');
COMMIT;

-- ----------------------------
-- Table structure for goods_indexad
-- ----------------------------
DROP TABLE IF EXISTS `goods_indexad`;
CREATE TABLE `goods_indexad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `goods_indexad_category_id_cf834e34_fk_goods_goodscategory_id` (`category_id`) USING BTREE,
  KEY `goods_indexad_goods_id_e1361e4f_fk_goods_goods_id` (`goods_id`) USING BTREE,
  CONSTRAINT `goods_indexad_category_id_cf834e34_fk_goods_goodscategory_id` FOREIGN KEY (`category_id`) REFERENCES `goods_goodscategory` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `goods_indexad_goods_id_e1361e4f_fk_goods_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods_goods` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of goods_indexad
-- ----------------------------
BEGIN;
INSERT INTO `goods_indexad` VALUES (3, 126, 1);
INSERT INTO `goods_indexad` VALUES (4, 121, 1);
COMMIT;

-- ----------------------------
-- Table structure for replace_version
-- ----------------------------
DROP TABLE IF EXISTS `replace_version`;
CREATE TABLE `replace_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of replace_version
-- ----------------------------
BEGIN;
INSERT INTO `replace_version` VALUES (1, '0.0.1', 'message/images/index.entry_MMh97kS.js', '2019-05-19 16:10:00.000000');
INSERT INTO `replace_version` VALUES (2, '1.0.0', 'message/images/index.entry_IMNOfJH.js', '2019-05-19 16:55:00.000000');
COMMIT;

-- ----------------------------
-- Table structure for social_auth_association
-- ----------------------------
DROP TABLE IF EXISTS `social_auth_association`;
CREATE TABLE `social_auth_association` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `handle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `secret` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `issued` int(11) NOT NULL,
  `lifetime` int(11) NOT NULL,
  `assoc_type` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `social_auth_association_server_url_handle_078befa2_uniq` (`server_url`,`handle`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of social_auth_association
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for social_auth_code
-- ----------------------------
DROP TABLE IF EXISTS `social_auth_code`;
CREATE TABLE `social_auth_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `timestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `social_auth_code_email_code_801b2d02_uniq` (`email`,`code`) USING BTREE,
  KEY `social_auth_code_code_a2393167` (`code`) USING BTREE,
  KEY `social_auth_code_timestamp_176b341f` (`timestamp`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of social_auth_code
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for social_auth_nonce
-- ----------------------------
DROP TABLE IF EXISTS `social_auth_nonce`;
CREATE TABLE `social_auth_nonce` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `timestamp` int(11) NOT NULL,
  `salt` varchar(65) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `social_auth_nonce_server_url_timestamp_salt_f6284463_uniq` (`server_url`,`timestamp`,`salt`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of social_auth_nonce
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for social_auth_partial
-- ----------------------------
DROP TABLE IF EXISTS `social_auth_partial`;
CREATE TABLE `social_auth_partial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `next_step` smallint(5) unsigned NOT NULL,
  `backend` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `timestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `social_auth_partial_token_3017fea3` (`token`) USING BTREE,
  KEY `social_auth_partial_timestamp_50f2119f` (`timestamp`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of social_auth_partial
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for social_auth_usersocialauth
-- ----------------------------
DROP TABLE IF EXISTS `social_auth_usersocialauth`;
CREATE TABLE `social_auth_usersocialauth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provider` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `extra_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `social_auth_usersocialauth_provider_uid_e6b5e668_uniq` (`provider`,`uid`) USING BTREE,
  KEY `social_auth_usersoci_user_id_17d28448_fk_users_use` (`user_id`) USING BTREE,
  CONSTRAINT `social_auth_usersoci_user_id_17d28448_fk_users_use` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of social_auth_usersocialauth
-- ----------------------------
BEGIN;
INSERT INTO `social_auth_usersocialauth` VALUES (2, 'weibo', '2891750194', '{\"auth_time\": 1525431332, \"id\": 2891750194, \"username\": \"\\u5929\\u6daf\\u660e\\u6708\\u7b19\", \"profile_image_url\": \"http://tvax3.sinaimg.cn/crop.0.0.996.996.50/ac5c9b32ly8fm3wlv3ljdj20ro0rowff.jpg\", \"gender\": \"m\", \"access_token\": \"2.00K1UhJDnIudUEb2f6abe202qqzEQC\", \"token_type\": null}', 16);
INSERT INTO `social_auth_usersocialauth` VALUES (3, 'weibo', '2536959855', '{\"auth_time\": 1525370310, \"id\": 2536959855, \"username\": \"\\u7530\\u540c\\u5b66\\u7684\\u5c0f\\u8ff7\\u59b9\\u513f\", \"profile_image_url\": \"http://tva3.sinaimg.cn/crop.0.0.720.720.50/9736ef6fjw8euzp3kfjukj20k00k0wfg.jpg\", \"gender\": \"f\", \"access_token\": \"2.002JpglCnIudUE14de5e536025dmXC\", \"token_type\": null}', 15);
INSERT INTO `social_auth_usersocialauth` VALUES (4, 'qq', 'B9AC56EBD37DAE8AC96989B1E88590D8', '{\"auth_time\": 1525511362, \"username\": \"\\u5929\\u6daf\\u660e\\u6708\\u7b19\", \"profile_image_url\": \"http://thirdqq.qlogo.cn/qqapp/101467908/B9AC56EBD37DAE8AC96989B1E88590D8/40\", \"gender\": \"\\u7537\", \"access_token\": \"65B49EB56AAC66B7FBAC0ED92C1634E3\", \"token_type\": null}', 19);
INSERT INTO `social_auth_usersocialauth` VALUES (5, 'qq', '7846BA38AFB760BFFD53E3FD215FF72A', '{\"auth_time\": 1525430256, \"username\": \"\\u5929\\u5929\\u5411\\u4e0a\", \"profile_image_url\": \"http://thirdqq.qlogo.cn/qqapp/101467908/7846BA38AFB760BFFD53E3FD215FF72A/40\", \"gender\": \"\\u5973\", \"access_token\": \"BA55D9AC7A4474ABE11617093723AE4F\", \"token_type\": null}', 20);
INSERT INTO `social_auth_usersocialauth` VALUES (6, 'qq', '714BD62644817454461BA8E258A5E329', '{\"auth_time\": 1525431050, \"username\": \"\\u3000\\u3000\\u3000\\u3000\\u3000\\u3000\\u3000\\u3000\\u3000\\u3000\\u3000\", \"profile_image_url\": \"http://thirdqq.qlogo.cn/qqapp/101467908/714BD62644817454461BA8E258A5E329/40\", \"gender\": \"\\u7537\", \"access_token\": \"60898D4BCCF576A38D42D3245CC56AE1\", \"token_type\": null}', 21);
INSERT INTO `social_auth_usersocialauth` VALUES (7, 'qq', '3A664617D9BE63375FB236230CDE509B', '{\"auth_time\": 1525431799, \"username\": \"\\u5929\\u6daf\\u660e\\u6708\\u7b19\", \"profile_image_url\": \"http://thirdqq.qlogo.cn/qqapp/101467908/3A664617D9BE63375FB236230CDE509B/40\", \"gender\": \"\\u7537\", \"access_token\": \"C357B1344E87B6A2A37F53BA2AD5439A\", \"token_type\": null}', 22);
INSERT INTO `social_auth_usersocialauth` VALUES (8, 'weibo', '5303950394', '{\"auth_time\": 1525435301, \"id\": 5303950394, \"username\": \"\\u584c\\u65b9Kuma\", \"profile_image_url\": \"http://tvax4.sinaimg.cn/crop.0.6.499.499.50/005MWPN0ly8ficazl90hij30dv0e80tm.jpg\", \"gender\": \"m\", \"access_token\": \"2.00AnpwmFnIudUE012daa44e2GiIrPD\", \"token_type\": null}', 23);
INSERT INTO `social_auth_usersocialauth` VALUES (9, 'qq', '287B72F25636C51AA2AF6C0C20029138', '{\"auth_time\": 1525435908, \"username\": \"\\u6b72\\u6708\\u6ec4\\u6851\\u4e86\\u8ab0\\u7684\\u5bb9\\u9854\", \"profile_image_url\": \"http://thirdqq.qlogo.cn/qqapp/101467908/287B72F25636C51AA2AF6C0C20029138/40\", \"gender\": \"\\u7537\", \"access_token\": \"FC924F5C0D82D71F3DF102331AFBFC44\", \"token_type\": null}', 24);
INSERT INTO `social_auth_usersocialauth` VALUES (10, 'qq', '9A0C1361495C1F909533FEDA9403B86F', '{\"auth_time\": 1525436300, \"username\": \"\\u7edd\", \"profile_image_url\": \"http://thirdqq.qlogo.cn/qqapp/101467908/9A0C1361495C1F909533FEDA9403B86F/40\", \"gender\": \"\\u7537\", \"access_token\": \"EF0DD5D39B4A2E7B400CB450A26383C0\", \"token_type\": null}', 25);
INSERT INTO `social_auth_usersocialauth` VALUES (11, 'qq', '043A667DD75FC98F6B70E25BC7CBC5FC', '{\"auth_time\": 1525482136, \"username\": \"\\ufe36Fighting\\u250a\", \"profile_image_url\": \"http://thirdqq.qlogo.cn/qqapp/101467908/043A667DD75FC98F6B70E25BC7CBC5FC/40\", \"gender\": \"\\u7537\", \"access_token\": \"16647683F32F059D08BB075679E9D801\", \"token_type\": null}', 26);
COMMIT;

-- ----------------------------
-- Table structure for trade_ordergoods
-- ----------------------------
DROP TABLE IF EXISTS `trade_ordergoods`;
CREATE TABLE `trade_ordergoods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_num` int(11) NOT NULL,
  `add_time` datetime(6) DEFAULT NULL,
  `goods_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `trade_ordergoods_goods_id_e77dc520_fk_goods_goods_id` (`goods_id`) USING BTREE,
  KEY `trade_ordergoods_order_id_e046f633_fk_trade_orderinfo_id` (`order_id`) USING BTREE,
  CONSTRAINT `trade_ordergoods_goods_id_e77dc520_fk_goods_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods_goods` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `trade_ordergoods_order_id_e046f633_fk_trade_orderinfo_id` FOREIGN KEY (`order_id`) REFERENCES `trade_orderinfo` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of trade_ordergoods
-- ----------------------------
BEGIN;
INSERT INTO `trade_ordergoods` VALUES (24, 1, '2018-05-03 23:40:44.000000', 106, 23);
INSERT INTO `trade_ordergoods` VALUES (25, 1, '2018-05-03 23:41:26.000000', 107, 32);
INSERT INTO `trade_ordergoods` VALUES (26, 1, '2018-05-04 00:01:31.000000', 2, 34);
INSERT INTO `trade_ordergoods` VALUES (27, 1, '2018-05-04 00:03:34.000000', 2, 38);
INSERT INTO `trade_ordergoods` VALUES (28, 1, '2018-05-04 00:14:30.000000', 2, 40);
INSERT INTO `trade_ordergoods` VALUES (29, 1, '2018-05-04 22:17:24.000000', 2, 42);
INSERT INTO `trade_ordergoods` VALUES (30, 1, '2018-05-04 23:50:59.000000', 2, 43);
INSERT INTO `trade_ordergoods` VALUES (31, 1, '2018-05-05 17:09:47.000000', 2, 44);
COMMIT;

-- ----------------------------
-- Table structure for trade_orderinfo
-- ----------------------------
DROP TABLE IF EXISTS `trade_orderinfo`;
CREATE TABLE `trade_orderinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `nonce_str` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `trade_no` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `pay_status` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pay_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `post_script` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `order_mount` double NOT NULL,
  `pay_time` datetime(6) DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `signer_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `singer_mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `order_sn` (`order_sn`) USING BTREE,
  UNIQUE KEY `nonce_str` (`nonce_str`) USING BTREE,
  UNIQUE KEY `trade_no` (`trade_no`) USING BTREE,
  KEY `trade_orderinfo_user_id_08ffa22c_fk_users_userprofile_id` (`user_id`) USING BTREE,
  CONSTRAINT `trade_orderinfo_user_id_08ffa22c_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of trade_orderinfo
-- ----------------------------
BEGIN;
INSERT INTO `trade_orderinfo` VALUES (23, '201805032340441716', NULL, NULL, 'paying', 'alipay', '111', 15, NULL, '北京市北京城区东城区1', '1', '1', '2018-05-03 23:40:44.000000', 17);
INSERT INTO `trade_orderinfo` VALUES (24, '201805032340491738', NULL, NULL, 'paying', 'alipay', '111', 15, NULL, '北京市北京城区东城区1', '1', '1', '2018-05-03 23:40:49.000000', 17);
INSERT INTO `trade_orderinfo` VALUES (25, '201805032340491751', NULL, NULL, 'paying', 'alipay', '111', 15, NULL, '北京市北京城区东城区1', '1', '1', '2018-05-03 23:40:49.000000', 17);
INSERT INTO `trade_orderinfo` VALUES (26, '201805032340501763', NULL, NULL, 'paying', 'alipay', '111', 15, NULL, '北京市北京城区东城区1', '1', '1', '2018-05-03 23:40:50.000000', 17);
INSERT INTO `trade_orderinfo` VALUES (27, '201805032340501768', NULL, NULL, 'paying', 'alipay', '111', 15, NULL, '北京市北京城区东城区1', '1', '1', '2018-05-03 23:40:50.000000', 17);
INSERT INTO `trade_orderinfo` VALUES (28, '201805032340501771', NULL, NULL, 'paying', 'alipay', '111', 15, NULL, '北京市北京城区东城区1', '1', '1', '2018-05-03 23:40:50.000000', 17);
INSERT INTO `trade_orderinfo` VALUES (29, '201805032340501770', NULL, NULL, 'paying', 'alipay', '111', 15, NULL, '北京市北京城区东城区1', '1', '1', '2018-05-03 23:40:50.000000', 17);
INSERT INTO `trade_orderinfo` VALUES (30, '201805032340521762', NULL, NULL, 'paying', 'alipay', '111', 15, NULL, '北京市北京城区东城区1', '1', '1', '2018-05-03 23:40:52.000000', 17);
INSERT INTO `trade_orderinfo` VALUES (31, '201805032341101756', NULL, NULL, 'paying', 'alipay', '111', 0, NULL, '北京市北京城区东城区1', '1', '1', '2018-05-03 23:41:10.000000', 17);
INSERT INTO `trade_orderinfo` VALUES (32, '201805032341261783', NULL, NULL, 'paying', 'alipay', '111', 15, NULL, '北京市北京城区东城区1', '1', '1', '2018-05-03 23:41:26.000000', 17);
INSERT INTO `trade_orderinfo` VALUES (33, '201805032341291713', NULL, NULL, 'paying', 'alipay', '111', 15, NULL, '北京市北京城区东城区1', '1', '1', '2018-05-03 23:41:29.000000', 17);
INSERT INTO `trade_orderinfo` VALUES (34, '201805040001311689', NULL, NULL, 'paying', 'alipay', '哈哈', 9.9, NULL, '陕西省西安市长安区天涯', '天涯', '18092671458', '2018-05-04 00:01:31.000000', 16);
INSERT INTO `trade_orderinfo` VALUES (35, '201805040001351691', NULL, NULL, 'paying', 'alipay', '哈哈', 9.9, NULL, '陕西省西安市长安区天涯', '天涯', '18092671458', '2018-05-04 00:01:35.000000', 16);
INSERT INTO `trade_orderinfo` VALUES (36, '201805040002001696', NULL, NULL, 'paying', 'alipay', '哈哈', 9.9, NULL, '陕西省西安市长安区天涯', '天涯', '18092671458', '2018-05-04 00:02:00.000000', 16);
INSERT INTO `trade_orderinfo` VALUES (37, '201805040002401696', NULL, NULL, 'paying', 'alipay', '哈哈', 9.9, NULL, '陕西省西安市长安区天涯', '天涯', '18092671458', '2018-05-04 00:02:40.000000', 16);
INSERT INTO `trade_orderinfo` VALUES (38, '201805040003341539', NULL, NULL, 'paying', 'alipay', '哈哈', 9.9, NULL, '江西省景德镇市昌江区11', '嗷嗷', '18092671458', '2018-05-04 00:03:34.000000', 15);
INSERT INTO `trade_orderinfo` VALUES (39, '201805040003361544', NULL, NULL, 'paying', 'alipay', '哈哈', 9.9, NULL, '江西省景德镇市昌江区11', '嗷嗷', '18092671458', '2018-05-04 00:03:36.000000', 15);
INSERT INTO `trade_orderinfo` VALUES (40, '201805040014301883', NULL, NULL, 'paying', 'alipay', '哈哈', 9.9, NULL, '云南省昆明市呈贡区云南大学', 'tudou', '18725065955', '2018-05-04 00:14:30.000000', 18);
INSERT INTO `trade_orderinfo` VALUES (41, '201805041005001773', NULL, NULL, 'paying', 'alipay', '11', 0, NULL, '北京市北京城区东城区1', '1', '1', '2018-05-04 10:05:00.000000', 17);
INSERT INTO `trade_orderinfo` VALUES (42, '201805042217241963', NULL, NULL, 'paying', 'alipay', '啊哈哈', 9.9, NULL, '陕西省西安市长安区123', '天涯', '18092671458', '2018-05-04 22:17:24.000000', 19);
INSERT INTO `trade_orderinfo` VALUES (43, '201805042350591919', NULL, NULL, 'paying', 'alipay', '哈哈', 9.9, NULL, '陕西省西安市长安区123', '天涯', '18092671458', '2018-05-04 23:50:59.000000', 19);
INSERT INTO `trade_orderinfo` VALUES (44, '201805051709471972', NULL, '2018050521001004670200636883', 'TRADE_SUCCESS', 'alipay', '哈哈', 9.9, '2018-05-05 17:14:28.000000', '陕西省西安市长安区123', '天涯', '18092671458', '2018-05-05 17:09:47.000000', 19);
COMMIT;

-- ----------------------------
-- Table structure for trade_shoppingcart
-- ----------------------------
DROP TABLE IF EXISTS `trade_shoppingcart`;
CREATE TABLE `trade_shoppingcart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nums` int(11) NOT NULL,
  `add_time` datetime(6) DEFAULT NULL,
  `goods_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `trade_shoppingcart_user_id_goods_id_92225e66_uniq` (`user_id`,`goods_id`) USING BTREE,
  KEY `trade_shoppingcart_goods_id_8b0f3cb4_fk_goods_goods_id` (`goods_id`) USING BTREE,
  CONSTRAINT `trade_shoppingcart_goods_id_8b0f3cb4_fk_goods_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods_goods` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `trade_shoppingcart_user_id_da423c9c_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of trade_shoppingcart
-- ----------------------------
BEGIN;
INSERT INTO `trade_shoppingcart` VALUES (34, 1, '2018-05-04 20:02:09.000000', 2, 23);
INSERT INTO `trade_shoppingcart` VALUES (35, 1, '2018-05-04 20:12:05.000000', 2, 24);
COMMIT;

-- ----------------------------
-- Table structure for user_operation_useraddress
-- ----------------------------
DROP TABLE IF EXISTS `user_operation_useraddress`;
CREATE TABLE `user_operation_useraddress` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `province` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `city` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `district` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `signer_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `signer_mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `user_operation_usera_user_id_fe128593_fk_users_use` (`user_id`) USING BTREE,
  CONSTRAINT `user_operation_usera_user_id_fe128593_fk_users_use` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of user_operation_useraddress
-- ----------------------------
BEGIN;
INSERT INTO `user_operation_useraddress` VALUES (13, '北京市', '北京城区', '东城区', '1', '1', '1', '2018-05-03 23:34:21.000000', 17);
COMMIT;

-- ----------------------------
-- Table structure for user_operation_userfav
-- ----------------------------
DROP TABLE IF EXISTS `user_operation_userfav`;
CREATE TABLE `user_operation_userfav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) DEFAULT NULL,
  `goods_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `user_operation_userfav_user_id_goods_id_2dbadda7_uniq` (`user_id`,`goods_id`) USING BTREE,
  KEY `user_operation_userfav_goods_id_57fc554f_fk_goods_goods_id` (`goods_id`) USING BTREE,
  CONSTRAINT `user_operation_userfav_goods_id_57fc554f_fk_goods_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods_goods` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user_operation_userfav_user_id_4e4de070_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of user_operation_userfav
-- ----------------------------
BEGIN;
INSERT INTO `user_operation_userfav` VALUES (15, '2018-05-04 20:12:02.000000', 2, 24);
COMMIT;

-- ----------------------------
-- Table structure for user_operation_userleavingmessage
-- ----------------------------
DROP TABLE IF EXISTS `user_operation_userleavingmessage`;
CREATE TABLE `user_operation_userleavingmessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_type` int(11) NOT NULL,
  `subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `file` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `user_operation_userl_user_id_70d909d6_fk_users_use` (`user_id`) USING BTREE,
  CONSTRAINT `user_operation_userl_user_id_70d909d6_fk_users_use` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of user_operation_userleavingmessage
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for users_userprofile
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile`;
CREATE TABLE `users_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) DEFAULT NULL,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of users_userprofile
-- ----------------------------
BEGIN;
INSERT INTO `users_userprofile` VALUES (14, 'pbkdf2_sha256$216000$UefYeKbM2O8P$/9tD7hU4n/Zu9/RZsJDjUDXXO49SCGMqdic7roSEw1s=', '2020-10-09 22:55:09.781239', 1, 'mtianyan', '', '', 1, 1, '2018-05-03 22:52:27.000000', NULL, NULL, 'female', NULL, '1147727180@qq.com');
INSERT INTO `users_userprofile` VALUES (15, 'pbkdf2_sha256$100000$wTDZNmGTnlRB$Q+jkWWkV2PPtkeFcudZY41OxrEpSuk3aUGwxn7bCUR8=', '2018-05-04 01:50:23.000000', 1, 'mtianyan666', '田同学的小迷妹儿', '田', 1, 1, '2018-05-03 22:55:10.000000', '11', '2020-08-26', 'female', '18092671323', 'mtianyan@qq.com');
INSERT INTO `users_userprofile` VALUES (16, '!TdkFQyUTY6L70P3FrkQYGwrDeYakUwdShSgAGb7M', '2018-05-04 18:53:17.000000', 0, 'dc631af9ae654c71', '天涯明月笙', '', 0, 1, '2018-05-03 23:29:06.000000', NULL, NULL, 'female', NULL, '');
INSERT INTO `users_userprofile` VALUES (17, 'pbkdf2_sha256$100000$bZHYf3dfTKaT$QHBGZOOUCJBC2LE2cKD1gx0cfIAjZVpvQp7epvyWKLk=', NULL, 0, '13987655934', '', '', 0, 1, '2018-05-03 23:33:50.000000', NULL, NULL, 'female', '13987655934', NULL);
INSERT INTO `users_userprofile` VALUES (18, 'pbkdf2_sha256$100000$yYtK6fpV1FSA$DUiiG+thQfg9nGkjV8dmxX+hLGfIr+iXK6YzlZaz3Ro=', NULL, 0, '18725065955', '', '', 0, 1, '2018-05-04 00:13:31.000000', NULL, NULL, 'female', '18725065955', NULL);
INSERT INTO `users_userprofile` VALUES (19, '!piK4VFaYCIssgoWr6FwPBUCl9pwhRP1Sydv7soaF', '2018-05-04 23:41:52.000000', 0, '452bae95b1da44b5', '天涯明月笙', '', 0, 1, '2018-05-04 18:36:35.000000', NULL, NULL, 'female', NULL, '');
INSERT INTO `users_userprofile` VALUES (20, '!O3MvKsjMEOg0AkteNaXPlxBxg4DacEvq3F6tcpcV', '2018-05-04 18:37:37.000000', 0, '9a4a2eb6115f4e1c', '天天向上', '', 0, 1, '2018-05-04 18:37:36.000000', NULL, NULL, 'female', NULL, '');
INSERT INTO `users_userprofile` VALUES (21, '!uTsJnoXyaKU6Tjqs2ypEbfO5svMqy7Yj09MJ5GNn', '2018-05-04 18:50:50.000000', 0, '441d1b67d8404866', '', '', 0, 1, '2018-05-04 18:50:50.000000', NULL, NULL, 'female', NULL, '');
INSERT INTO `users_userprofile` VALUES (22, '!mSLOM1WUjIm3UMh4FqFx1rx4U03NVVcAwx37ZeJv', '2018-05-04 19:03:07.000000', 0, 'b0bbe7375dc94aaf', '天涯明月笙', '', 0, 1, '2018-05-04 19:03:07.000000', NULL, NULL, 'female', NULL, '');
INSERT INTO `users_userprofile` VALUES (23, '!graApu2xQwF08lWpgZEo1JY2Im4mXhK3wBsLWX4l', '2018-05-04 20:01:41.000000', 0, 'Kuma', '塌方Kuma', '', 0, 1, '2018-05-04 20:01:41.000000', NULL, NULL, 'female', NULL, '');
INSERT INTO `users_userprofile` VALUES (24, '!ama9YgirSt3NLDAQviPkMJzqnPF9K2CQGIW48f59', '2018-05-04 20:11:48.000000', 0, 'b9e7574d242042a7', '歲月滄桑了誰的容顔', '', 0, 1, '2018-05-04 20:11:48.000000', NULL, NULL, 'female', NULL, '');
INSERT INTO `users_userprofile` VALUES (25, '!918pQzRv5rZhs7d4a5EHIikhw4qQZzrHA1pAYOfl', '2018-05-04 20:18:20.000000', 0, '8678670b95bf4705', '绝', '', 0, 1, '2018-05-04 20:18:20.000000', NULL, NULL, 'female', NULL, '');
INSERT INTO `users_userprofile` VALUES (26, '!ySl8GBf5zszhnInY8uSNYYJrFtePP55CjNw9fN1E', '2018-05-05 08:46:36.000000', 0, 'Fighting', '︶Fighting┊', '', 0, 1, '2018-05-05 08:46:36.000000', NULL, NULL, 'female', NULL, '');
COMMIT;

-- ----------------------------
-- Table structure for users_userprofile_groups
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_groups`;
CREATE TABLE `users_userprofile_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `users_userprofile_groups_userprofile_id_group_id_823cf2fc_uniq` (`userprofile_id`,`group_id`) USING BTREE,
  KEY `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` (`group_id`) USING BTREE,
  CONSTRAINT `users_userprofile_gr_userprofile_id_a4496a80_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of users_userprofile_groups
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for users_userprofile_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_user_permissions`;
CREATE TABLE `users_userprofile_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `users_userprofile_user_p_userprofile_id_permissio_d0215190_uniq` (`userprofile_id`,`permission_id`) USING BTREE,
  KEY `users_userprofile_us_permission_id_393136b6_fk_auth_perm` (`permission_id`) USING BTREE,
  CONSTRAINT `users_userprofile_us_permission_id_393136b6_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `users_userprofile_us_userprofile_id_34544737_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of users_userprofile_user_permissions
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for users_verifycode
-- ----------------------------
DROP TABLE IF EXISTS `users_verifycode`;
CREATE TABLE `users_verifycode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of users_verifycode
-- ----------------------------
BEGIN;
INSERT INTO `users_verifycode` VALUES (7, '4809', '13987655934', '2018-05-03 23:28:56.000000');
INSERT INTO `users_verifycode` VALUES (8, '0906', '13987655934', '2018-05-03 23:33:37.000000');
INSERT INTO `users_verifycode` VALUES (9, '3131', '18725065955', '2018-05-04 00:13:08.000000');
INSERT INTO `users_verifycode` VALUES (10, '4462', '13222056083', '2018-05-04 23:20:34.000000');
INSERT INTO `users_verifycode` VALUES (11, 'xxxx', '18092671467', '2020-08-26 22:04:43.705582');
COMMIT;

-- ----------------------------
-- Table structure for xadmin_api_tyadminemailverifyrecord
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_api_tyadminemailverifyrecord`;
CREATE TABLE `xadmin_api_tyadminemailverifyrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `send_type` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `send_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of xadmin_api_tyadminemailverifyrecord
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for xadmin_api_tyadminsyslog
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_api_tyadminsyslog`;
CREATE TABLE `xadmin_api_tyadminsyslog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` varchar(39) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `action_flag` varchar(32) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `log_type` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `user_name` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS `tyadmin_api_tyadminsyslog`;
CREATE TABLE `tyadmin_api_tyadminsyslog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` varchar(39) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `action_flag` varchar(32) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `log_type` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `user_name` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- ----------------------------
-- Records of xadmin_api_tyadminsyslog
-- ----------------------------
BEGIN;
INSERT INTO `xadmin_api_tyadminsyslog` VALUES (1, '2020-08-26 21:53:09.852166', '127.0.0.1', '登录', '登录成功', 'login', '');
INSERT INTO `xadmin_api_tyadminsyslog` VALUES (2, '2020-08-26 21:53:24.845121', '127.0.0.1', '登录', '登录成功', 'login', '');
INSERT INTO `xadmin_api_tyadminsyslog` VALUES (3, '2020-08-26 21:53:44.582157', '127.0.0.1', '更新', '商品类别: {\'id\': 121, \'parent_category_text\': \'理学类\', \'name\': \'理学类\', \'code\': \'001\', \'desc\': \'001\', \'category_type\': 1, \'is_tab\': False, \'add_time\': \'2018-05-03T22:56:00\', \'parent_category\': 121}被更新', 'goodscategory', 'mtianyan');
INSERT INTO `xadmin_api_tyadminsyslog` VALUES (4, '2020-08-26 21:54:01.646204', '127.0.0.1', '更新', '商品类别: {\'id\': 121, \'parent_category_text\': \'理学类\', \'name\': \'理学类\', \'code\': \'001\', \'desc\': \'001\', \'category_type\': 1, \'is_tab\': True, \'add_time\': \'2018-05-03T22:56:00\', \'parent_category\': 121}被更新', 'goodscategory', 'mtianyan');
INSERT INTO `xadmin_api_tyadminsyslog` VALUES (5, '2020-08-26 22:03:05.587420', '127.0.0.1', '删除', '收货地址: 天涯11云南大学123被删除', 'useraddress', 'mtianyan');
INSERT INTO `xadmin_api_tyadminsyslog` VALUES (6, '2020-08-26 22:04:28.383225', '127.0.0.1', '更新', '用户信息: {\'id\': 15, \'password\': \'pbkdf2_sha256$100000$wTDZNmGTnlRB$Q+jkWWkV2PPtkeFcudZY41OxrEpSuk3aUGwxn7bCUR8=\', \'last_login\': \'2018-05-04 01:50:23\', \'is_superuser\': True, \'username\': \'mtianyan666\', \'first_name\': \'田同学的小迷妹儿\', \'last_name\': \'田\', \'is_staff\': True, \'is_active\': True, \'date_joined\': \'2018-05-03 22:55:10\', \'name\': \'11\', \'birthday\': \'2020-08-26\', \'gender\': \'female\', \'mobile\': \'18092671323\', \'email\': \'mtianyan@qq.com\', \'groups\': [], \'user_permissions\': []}被更新', 'userprofile', 'mtianyan');
INSERT INTO `xadmin_api_tyadminsyslog` VALUES (7, '2020-08-26 22:04:43.707048', '127.0.0.1', '新增', '短信验证: {\'id\': 11, \'code\': \'xxxx\', \'mobile\': \'18092671467\', \'add_time\': \'2020-08-26 22:04:43\'}被新增', 'verifycode', 'mtianyan');
INSERT INTO `xadmin_api_tyadminsyslog` VALUES (8, '2020-08-26 22:05:14.495716', '127.0.0.1', '新增', '商品类别: {\'id\': 127, \'parent_category_text\': \'理学类\', \'name\': \'测试分类\', \'code\': \'test_code\', \'desc\': \'测试分类描述\', \'category_type\': 1, \'is_tab\': False, \'add_time\': \'2020-08-26 22:05:14\', \'parent_category\': 121}被新增', 'goodscategory', 'mtianyan');
INSERT INTO `xadmin_api_tyadminsyslog` VALUES (9, '2020-10-09 22:55:09.775042', '127.0.0.1', '登录', '登录成功', 'login', '');
COMMIT;


BEGIN;
INSERT INTO `tyadmin_api_tyadminsyslog` VALUES (1, '2020-08-26 21:53:09.852166', '127.0.0.1', '登录', '登录成功', 'login', '');
INSERT INTO `tyadmin_api_tyadminsyslog` VALUES (2, '2020-08-26 21:53:24.845121', '127.0.0.1', '登录', '登录成功', 'login', '');
INSERT INTO `tyadmin_api_tyadminsyslog` VALUES (3, '2020-08-26 21:53:44.582157', '127.0.0.1', '更新', '商品类别: {\'id\': 121, \'parent_category_text\': \'理学类\', \'name\': \'理学类\', \'code\': \'001\', \'desc\': \'001\', \'category_type\': 1, \'is_tab\': False, \'add_time\': \'2018-05-03T22:56:00\', \'parent_category\': 121}被更新', 'goodscategory', 'mtianyan');
INSERT INTO `tyadmin_api_tyadminsyslog` VALUES (4, '2020-08-26 21:54:01.646204', '127.0.0.1', '更新', '商品类别: {\'id\': 121, \'parent_category_text\': \'理学类\', \'name\': \'理学类\', \'code\': \'001\', \'desc\': \'001\', \'category_type\': 1, \'is_tab\': True, \'add_time\': \'2018-05-03T22:56:00\', \'parent_category\': 121}被更新', 'goodscategory', 'mtianyan');
INSERT INTO `tyadmin_api_tyadminsyslog` VALUES (5, '2020-08-26 22:03:05.587420', '127.0.0.1', '删除', '收货地址: 天涯11云南大学123被删除', 'useraddress', 'mtianyan');
INSERT INTO `tyadmin_api_tyadminsyslog` VALUES (6, '2020-08-26 22:04:28.383225', '127.0.0.1', '更新', '用户信息: {\'id\': 15, \'password\': \'pbkdf2_sha256$100000$wTDZNmGTnlRB$Q+jkWWkV2PPtkeFcudZY41OxrEpSuk3aUGwxn7bCUR8=\', \'last_login\': \'2018-05-04 01:50:23\', \'is_superuser\': True, \'username\': \'mtianyan666\', \'first_name\': \'田同学的小迷妹儿\', \'last_name\': \'田\', \'is_staff\': True, \'is_active\': True, \'date_joined\': \'2018-05-03 22:55:10\', \'name\': \'11\', \'birthday\': \'2020-08-26\', \'gender\': \'female\', \'mobile\': \'18092671323\', \'email\': \'mtianyan@qq.com\', \'groups\': [], \'user_permissions\': []}被更新', 'userprofile', 'mtianyan');
INSERT INTO `tyadmin_api_tyadminsyslog` VALUES (7, '2020-08-26 22:04:43.707048', '127.0.0.1', '新增', '短信验证: {\'id\': 11, \'code\': \'xxxx\', \'mobile\': \'18092671467\', \'add_time\': \'2020-08-26 22:04:43\'}被新增', 'verifycode', 'mtianyan');
INSERT INTO `tyadmin_api_tyadminsyslog` VALUES (8, '2020-08-26 22:05:14.495716', '127.0.0.1', '新增', '商品类别: {\'id\': 127, \'parent_category_text\': \'理学类\', \'name\': \'测试分类\', \'code\': \'test_code\', \'desc\': \'测试分类描述\', \'category_type\': 1, \'is_tab\': False, \'add_time\': \'2020-08-26 22:05:14\', \'parent_category\': 121}被新增', 'goodscategory', 'mtianyan');
INSERT INTO `tyadmin_api_tyadminsyslog` VALUES (9, '2020-10-09 22:55:09.775042', '127.0.0.1', '登录', '登录成功', 'login', '');
COMMIT;

-- ----------------------------
-- Table structure for xadmin_bookmark
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_bookmark`;
CREATE TABLE `xadmin_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `query` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `xadmin_bookmark_content_type_id_60941679_fk_django_co` (`content_type_id`) USING BTREE,
  KEY `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` (`user_id`) USING BTREE,
  CONSTRAINT `xadmin_bookmark_content_type_id_60941679_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of xadmin_bookmark
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for xadmin_log
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_log`;
CREATE TABLE `xadmin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) DEFAULT NULL,
  `ip_addr` char(39) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` (`content_type_id`) USING BTREE,
  KEY `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` (`user_id`) USING BTREE,
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of xadmin_log
-- ----------------------------
BEGIN;
INSERT INTO `xadmin_log` VALUES (34, '2018-05-03 22:56:45.000000', '112.117.194.234', '121', '理学类', 'create', '已添加。', 34, 15);
INSERT INTO `xadmin_log` VALUES (35, '2018-05-03 22:57:10.000000', '112.117.194.234', '122', '工学类', 'create', '已添加。', 34, 15);
INSERT INTO `xadmin_log` VALUES (36, '2018-05-03 22:57:27.000000', '112.117.194.234', '123', '医学类', 'create', '已添加。', 34, 15);
INSERT INTO `xadmin_log` VALUES (37, '2018-05-03 22:58:15.000000', '112.117.194.234', '124', '经济学类', 'create', '已添加。', 34, 15);
INSERT INTO `xadmin_log` VALUES (38, '2018-05-03 22:58:59.000000', '112.117.194.234', '125', '管理学类', 'create', '已添加。', 34, 15);
INSERT INTO `xadmin_log` VALUES (39, '2018-05-03 22:59:22.000000', '112.117.194.234', '126', '文学类', 'create', '已添加。', 34, 15);
INSERT INTO `xadmin_log` VALUES (40, '2018-05-03 23:34:43.000000', '117.136.72.75', '1', '同学别将就', 'create', '已添加。', 37, 15);
INSERT INTO `xadmin_log` VALUES (41, '2018-05-03 23:35:00.000000', '117.136.72.75', '2', '解忧杂货店', 'create', '已添加。', 37, 15);
INSERT INTO `xadmin_log` VALUES (42, '2018-05-03 23:37:06.000000', '117.136.72.75', '4', '刘墉散文精选', 'create', '已添加。', 35, 15);
INSERT INTO `xadmin_log` VALUES (43, '2018-05-03 23:37:25.000000', '117.136.72.75', '5', '同学别将就', 'create', '已添加。', 35, 15);
INSERT INTO `xadmin_log` VALUES (44, '2018-05-03 23:38:09.000000', '117.136.72.75', '4', '刘墉散文精选', 'change', '修改 image', 35, 15);
INSERT INTO `xadmin_log` VALUES (45, '2018-05-03 23:39:24.000000', '117.136.72.75', '3', '刘墉', 'create', '已添加。', 37, 15);
INSERT INTO `xadmin_log` VALUES (46, '2018-05-03 23:41:32.000000', '117.136.72.75', '7', '北大', 'create', '已添加。', 36, 15);
INSERT INTO `xadmin_log` VALUES (47, '2018-05-03 23:41:51.000000', '117.136.72.75', '8', '北理工', 'create', '已添加。', 36, 15);
INSERT INTO `xadmin_log` VALUES (48, '2018-05-03 23:42:13.000000', '117.136.72.75', '9', '方志', 'create', '已添加。', 36, 15);
INSERT INTO `xadmin_log` VALUES (49, '2018-05-03 23:45:06.000000', '117.136.72.75', '17', '同学别将就', 'change', '修改 goods_desc 和 goods_front_image', 33, 15);
INSERT INTO `xadmin_log` VALUES (50, '2018-05-03 23:47:36.000000', '117.136.72.75', '1', '刘墉散文精选', 'change', '修改 goods_desc 和 goods_front_image', 33, 15);
INSERT INTO `xadmin_log` VALUES (51, '2018-05-03 23:48:20.000000', '117.136.72.75', '2', '爱是人间的奢华(精装美绘版)(精)/名家散文经典', 'change', '修改 goods_desc 和 goods_front_image', 33, 15);
INSERT INTO `xadmin_log` VALUES (52, '2018-05-03 23:48:54.000000', '117.136.72.75', '3', '白露为霜(盛世蔷薇姊妹篇)', 'change', '修改 goods_desc，goods_front_image，is_new 和 is_hot', 33, 15);
INSERT INTO `xadmin_log` VALUES (53, '2018-05-03 23:49:39.000000', '117.136.72.75', '3', '刘墉散文精选', 'create', '已添加。', 38, 15);
INSERT INTO `xadmin_log` VALUES (54, '2018-05-03 23:54:59.000000', '117.136.72.75', '5', '解忧杂货店(精)', 'change', '修改 goods_desc，goods_front_image，is_new 和 is_hot', 33, 15);
INSERT INTO `xadmin_log` VALUES (55, '2018-05-03 23:56:45.000000', '117.136.72.75', '6', '一见阳光就灿烂(原名求你正经点)', 'change', '修改 goods_desc，goods_front_image，is_new 和 is_hot', 33, 15);
INSERT INTO `xadmin_log` VALUES (56, '2018-05-03 23:58:16.000000', '117.136.72.75', '5', '解忧杂货店(精)', 'change', '修改 is_new 和 is_hot', 33, 15);
INSERT INTO `xadmin_log` VALUES (57, '2018-05-03 23:58:27.000000', '117.136.72.75', '6', '一见阳光就灿烂(原名求你正经点)', 'change', '修改 is_new 和 is_hot', 33, 15);
INSERT INTO `xadmin_log` VALUES (58, '2018-05-03 23:58:40.000000', '117.136.72.75', '2', '爱是人间的奢华(精装美绘版)(精)/名家散文经典', 'change', '修改 shop_price', 33, 15);
INSERT INTO `xadmin_log` VALUES (59, '2018-05-04 00:00:30.000000', '117.136.72.75', '2', '爱是人间的奢华(精装美绘版)(精)/名家散文经典', 'change', '修改 is_new 和 is_hot', 33, 15);
INSERT INTO `xadmin_log` VALUES (60, '2018-05-04 03:47:49.000000', '117.136.72.75', '155', '南风有归期', 'change', '修改 goods_desc 和 goods_front_image', 33, 15);
INSERT INTO `xadmin_log` VALUES (61, '2018-05-04 03:50:41.000000', '117.136.72.75', '155', '南风有归期', 'change', '修改 goods_desc', 33, 15);
INSERT INTO `xadmin_log` VALUES (62, '2018-05-04 03:51:33.000000', '117.136.72.75', '17', '同学别将就', 'change', '修改 goods_desc', 33, 15);
INSERT INTO `xadmin_log` VALUES (63, '2019-05-19 16:25:02.667586', '127.0.0.1', '1', '版本0.0.1已更新', 'create', '已添加。', 39, 14);
INSERT INTO `xadmin_log` VALUES (64, '2019-05-19 16:55:21.597705', '127.0.0.1', '2', '版本1.0.0已更新', 'create', '已添加。', 39, 14);
COMMIT;

-- ----------------------------
-- Table structure for xadmin_usersettings
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_usersettings`;
CREATE TABLE `xadmin_usersettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` (`user_id`) USING BTREE,
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of xadmin_usersettings
-- ----------------------------
BEGIN;
INSERT INTO `xadmin_usersettings` VALUES (3, 'dashboard:home:pos', '', 15);
INSERT INTO `xadmin_usersettings` VALUES (4, 'dashboard:home:pos', '', 14);
COMMIT;

-- ----------------------------
-- Table structure for xadmin_userwidget
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_userwidget`;
CREATE TABLE `xadmin_userwidget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `widget_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` (`user_id`) USING BTREE,
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of xadmin_userwidget
-- ----------------------------
BEGIN;
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
