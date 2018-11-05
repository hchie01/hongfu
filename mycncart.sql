/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : mycncart

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

<<<<<<< HEAD
Date: 2018-10-12 14:51:56
=======
Date: 2018-09-22 17:23:39
>>>>>>> 790b49e13c12789410af78d35dc87d3d392cacc9
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for oc_address
-- ----------------------------
DROP TABLE IF EXISTS `oc_address`;
CREATE TABLE `oc_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `fullname` varchar(64) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `company` varchar(60) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `city_id` int(11) NOT NULL DEFAULT '0',
  `county_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_address
-- ----------------------------
INSERT INTO `oc_address` VALUES ('1', '1', 'wyx', '13681147568', 'www', 'wwww', '', '', '', '44', '710', '', '2538', '2539');

-- ----------------------------
-- Table structure for oc_api
-- ----------------------------
DROP TABLE IF EXISTS `oc_api`;
CREATE TABLE `oc_api` (
  `api_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_api
-- ----------------------------
INSERT INTO `oc_api` VALUES ('1', 'Default', '4a842fd713c3dd2ea88993f8a99fd6c384bad658f7b86fcd43b8e8b2b654424170ad071231849aaa39b46fc3a4e43c6dfd62e662662a4202a4a77441e53aa5535e494c1fc6c80f20209af1b44930f236d6077cd5c6de96c48034d0ca9c511480a16500560fac17b62e00b297393b687d8b19e32e591aa59dde4fa81c7c021d31', '1', '2018-06-26 09:26:10', '2018-06-26 09:26:10');

-- ----------------------------
-- Table structure for oc_api_ip
-- ----------------------------
DROP TABLE IF EXISTS `oc_api_ip`;
CREATE TABLE `oc_api_ip` (
  `api_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  PRIMARY KEY (`api_ip_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_api_ip
-- ----------------------------
INSERT INTO `oc_api_ip` VALUES ('1', '1', '127.0.0.1');

-- ----------------------------
-- Table structure for oc_api_session
-- ----------------------------
DROP TABLE IF EXISTS `oc_api_session`;
CREATE TABLE `oc_api_session` (
  `api_session_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_session_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_api_session
-- ----------------------------
INSERT INTO `oc_api_session` VALUES ('1', '1', '19e4dc7b2ed9201c24407d6820', '127.0.0.1', '2018-06-26 15:27:46', '2018-06-26 15:27:46');
INSERT INTO `oc_api_session` VALUES ('2', '1', '0b0f3e0cea66ec180e37b6a60b', '127.0.0.1', '2018-06-26 15:27:53', '2018-06-26 15:27:53');
INSERT INTO `oc_api_session` VALUES ('3', '1', 'c9388f9b7f217b3a860047b9e3', '127.0.0.1', '2018-06-26 15:27:55', '2018-06-26 15:27:55');
INSERT INTO `oc_api_session` VALUES ('4', '1', '40c290f38a464718107f2871bb', '127.0.0.1', '2018-06-26 15:29:36', '2018-06-26 15:29:36');
INSERT INTO `oc_api_session` VALUES ('5', '1', 'b90cf8074636326ed2fe04dfb9', '127.0.0.1', '2018-06-27 17:34:35', '2018-06-27 17:34:35');
INSERT INTO `oc_api_session` VALUES ('6', '1', 'b926c2641e57565c3cf512fc8a', '127.0.0.1', '2018-06-27 17:34:37', '2018-06-27 17:34:37');
INSERT INTO `oc_api_session` VALUES ('7', '1', 'bac3348eb9d5daea75f0e16d30', '127.0.0.1', '2018-06-27 17:35:10', '2018-06-27 17:35:10');
INSERT INTO `oc_api_session` VALUES ('8', '1', 'dcc36b19153a6b57b762163970', '127.0.0.1', '2018-06-27 17:35:13', '2018-06-27 17:35:13');
INSERT INTO `oc_api_session` VALUES ('9', '1', 'fa18e409ed61dc7d98b64c46a3', '127.0.0.1', '2018-07-11 17:26:54', '2018-07-11 17:26:54');
INSERT INTO `oc_api_session` VALUES ('10', '1', 'fc4bc7c2c06cfe2ac46a2c784d', '127.0.0.1', '2018-07-11 17:26:58', '2018-07-11 17:26:58');
INSERT INTO `oc_api_session` VALUES ('11', '1', 'c418bae6610e6b2d1805005ccb', '127.0.0.1', '2018-08-17 17:35:37', '2018-08-17 17:35:37');
INSERT INTO `oc_api_session` VALUES ('12', '1', 'f05787808a7d04c4839a3a4f79', '127.0.0.1', '2018-09-17 16:50:04', '2018-09-17 16:50:04');
INSERT INTO `oc_api_session` VALUES ('13', '1', '21d6069f8678cca2b9876f7874', '127.0.0.1', '2018-09-19 17:34:50', '2018-09-19 17:34:50');
INSERT INTO `oc_api_session` VALUES ('14', '1', '0c75a66f5ea9d4d113bbc0ed0a', '127.0.0.1', '2018-09-21 17:21:01', '2018-09-21 17:21:01');
INSERT INTO `oc_api_session` VALUES ('15', '1', '67a6f99922cc49de9926fe353e', '127.0.0.1', '2018-09-21 17:21:07', '2018-09-21 17:21:07');

-- ----------------------------
-- Table structure for oc_attribute
-- ----------------------------
DROP TABLE IF EXISTS `oc_attribute`;
CREATE TABLE `oc_attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_attribute
-- ----------------------------
INSERT INTO `oc_attribute` VALUES ('1', '6', '1');
INSERT INTO `oc_attribute` VALUES ('2', '6', '5');
INSERT INTO `oc_attribute` VALUES ('3', '6', '3');
INSERT INTO `oc_attribute` VALUES ('4', '3', '1');
INSERT INTO `oc_attribute` VALUES ('5', '3', '2');
INSERT INTO `oc_attribute` VALUES ('6', '3', '3');
INSERT INTO `oc_attribute` VALUES ('7', '3', '4');
INSERT INTO `oc_attribute` VALUES ('8', '3', '5');
INSERT INTO `oc_attribute` VALUES ('9', '3', '6');
INSERT INTO `oc_attribute` VALUES ('10', '3', '7');
INSERT INTO `oc_attribute` VALUES ('11', '3', '8');

-- ----------------------------
-- Table structure for oc_attribute_description
-- ----------------------------
DROP TABLE IF EXISTS `oc_attribute_description`;
CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_attribute_description
-- ----------------------------
INSERT INTO `oc_attribute_description` VALUES ('1', '1', 'Description');
INSERT INTO `oc_attribute_description` VALUES ('2', '1', 'No. of Cores');
INSERT INTO `oc_attribute_description` VALUES ('4', '1', 'test 1');
INSERT INTO `oc_attribute_description` VALUES ('5', '1', 'test 2');
INSERT INTO `oc_attribute_description` VALUES ('6', '1', 'test 3');
INSERT INTO `oc_attribute_description` VALUES ('7', '1', 'test 4');
INSERT INTO `oc_attribute_description` VALUES ('8', '1', 'test 5');
INSERT INTO `oc_attribute_description` VALUES ('9', '1', 'test 6');
INSERT INTO `oc_attribute_description` VALUES ('10', '1', 'test 7');
INSERT INTO `oc_attribute_description` VALUES ('11', '1', 'test 8');
INSERT INTO `oc_attribute_description` VALUES ('3', '1', 'Clockspeed');
INSERT INTO `oc_attribute_description` VALUES ('1', '2', '描述');
INSERT INTO `oc_attribute_description` VALUES ('2', '2', '核数');
INSERT INTO `oc_attribute_description` VALUES ('4', '2', 'test 1');
INSERT INTO `oc_attribute_description` VALUES ('5', '2', 'test 2');
INSERT INTO `oc_attribute_description` VALUES ('6', '2', 'test 3');
INSERT INTO `oc_attribute_description` VALUES ('7', '2', 'test 4');
INSERT INTO `oc_attribute_description` VALUES ('8', '2', 'test 5');
INSERT INTO `oc_attribute_description` VALUES ('9', '2', 'test 6');
INSERT INTO `oc_attribute_description` VALUES ('10', '2', 'test 7');
INSERT INTO `oc_attribute_description` VALUES ('11', '2', 'test 8');
INSERT INTO `oc_attribute_description` VALUES ('3', '2', '主频');

-- ----------------------------
-- Table structure for oc_attribute_group
-- ----------------------------
DROP TABLE IF EXISTS `oc_attribute_group`;
CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_attribute_group
-- ----------------------------
INSERT INTO `oc_attribute_group` VALUES ('3', '2');
INSERT INTO `oc_attribute_group` VALUES ('4', '1');
INSERT INTO `oc_attribute_group` VALUES ('5', '3');
INSERT INTO `oc_attribute_group` VALUES ('6', '4');

-- ----------------------------
-- Table structure for oc_attribute_group_description
-- ----------------------------
DROP TABLE IF EXISTS `oc_attribute_group_description`;
CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_attribute_group_description
-- ----------------------------
INSERT INTO `oc_attribute_group_description` VALUES ('3', '1', 'Memory');
INSERT INTO `oc_attribute_group_description` VALUES ('4', '1', 'Technical');
INSERT INTO `oc_attribute_group_description` VALUES ('5', '1', 'Motherboard');
INSERT INTO `oc_attribute_group_description` VALUES ('6', '1', 'Processor');
INSERT INTO `oc_attribute_group_description` VALUES ('3', '2', '内存');
INSERT INTO `oc_attribute_group_description` VALUES ('4', '2', '其它');
INSERT INTO `oc_attribute_group_description` VALUES ('5', '2', '主板');
INSERT INTO `oc_attribute_group_description` VALUES ('6', '2', '处理器');

-- ----------------------------
-- Table structure for oc_banner
-- ----------------------------
DROP TABLE IF EXISTS `oc_banner`;
CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_banner
-- ----------------------------
INSERT INTO `oc_banner` VALUES ('6', 'HP Products', '1');
INSERT INTO `oc_banner` VALUES ('7', 'Home Page Slideshow', '1');
INSERT INTO `oc_banner` VALUES ('8', 'Manufacturers', '1');
INSERT INTO `oc_banner` VALUES ('9', '首页 - 横幅', '1');

-- ----------------------------
-- Table structure for oc_banner_image
-- ----------------------------
DROP TABLE IF EXISTS `oc_banner_image`;
CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=147 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_banner_image
-- ----------------------------
INSERT INTO `oc_banner_image` VALUES ('87', '6', '1', 'HP Banner', 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', '0');
INSERT INTO `oc_banner_image` VALUES ('129', '8', '1', 'Nintendo', '', 'catalog/demo/manufacturer/nintendo.png', '0');
INSERT INTO `oc_banner_image` VALUES ('128', '8', '1', 'Starbucks', '', 'catalog/demo/manufacturer/starbucks.png', '0');
INSERT INTO `oc_banner_image` VALUES ('127', '8', '1', 'Disney', '', 'catalog/demo/manufacturer/disney.png', '0');
INSERT INTO `oc_banner_image` VALUES ('126', '8', '1', 'Dell', '', 'catalog/demo/manufacturer/dell.png', '0');
INSERT INTO `oc_banner_image` VALUES ('125', '8', '1', 'Harley Davidson', '', 'catalog/demo/manufacturer/harley.png', '0');
INSERT INTO `oc_banner_image` VALUES ('124', '8', '1', 'Canon', '', 'catalog/demo/manufacturer/canon.png', '0');
INSERT INTO `oc_banner_image` VALUES ('123', '8', '1', 'Burger King', '', 'catalog/demo/manufacturer/burgerking.png', '0');
INSERT INTO `oc_banner_image` VALUES ('122', '8', '1', 'Coca Cola', '', 'catalog/demo/manufacturer/cocacola.png', '0');
INSERT INTO `oc_banner_image` VALUES ('145', '7', '1', 'Home Page Slideshow', 'index.php?route=product/product&amp;path=57&amp;product_id=49', 'catalog/demo/slideshow/slideshow-1.png', '2');
INSERT INTO `oc_banner_image` VALUES ('100', '6', '2', 'HP Banner', 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', '0');
INSERT INTO `oc_banner_image` VALUES ('121', '8', '1', 'Sony', '', 'catalog/demo/manufacturer/sony.png', '0');
INSERT INTO `oc_banner_image` VALUES ('120', '8', '1', 'RedBull', '', 'catalog/demo/manufacturer/redbull.png', '0');
INSERT INTO `oc_banner_image` VALUES ('119', '8', '1', 'NFL', '', 'catalog/demo/manufacturer/nfl.png', '0');
INSERT INTO `oc_banner_image` VALUES ('118', '8', '2', 'Harley Davidson', '', 'catalog/demo/manufacturer/manuf-6.png', '0');
INSERT INTO `oc_banner_image` VALUES ('117', '8', '2', 'Burger King', '', 'catalog/demo/manufacturer/manuf-5.png', '0');
INSERT INTO `oc_banner_image` VALUES ('116', '8', '2', 'Coca Cola', '', 'catalog/demo/manufacturer/manuf-4.png', '0');
INSERT INTO `oc_banner_image` VALUES ('115', '8', '2', 'Sony', '', 'catalog/demo/manufacturer/manuf-3.png', '0');
INSERT INTO `oc_banner_image` VALUES ('146', '7', '1', 'Home Page Slideshow', 'index.php?route=product/product&amp;path=57&amp;product_id=49', 'catalog/demo/slideshow/slideshow-3.png', '3');
INSERT INTO `oc_banner_image` VALUES ('114', '8', '2', 'RedBull', '', 'catalog/demo/manufacturer/manuf-2.png', '0');
INSERT INTO `oc_banner_image` VALUES ('113', '8', '2', 'NFL', '', 'catalog/demo/manufacturer/manuf-1.png', '0');
INSERT INTO `oc_banner_image` VALUES ('141', '9', '1', '首页 - 横幅', 'index.php?route=product/product&amp;product_id=43', '', '0');
INSERT INTO `oc_banner_image` VALUES ('140', '9', '2', '首页 - 横幅', 'index.php?route=product/product&amp;product_id=43', 'catalog/demo/slideshow/slideshow-3.png', '0');
INSERT INTO `oc_banner_image` VALUES ('144', '7', '1', 'Home Page Slideshow', 'index.php?route=product/product&amp;path=57&amp;product_id=49', 'catalog/demo/slideshow/slideshow-2.png', '1');
INSERT INTO `oc_banner_image` VALUES ('143', '7', '2', 'Home Page Slideshow', 'index.php?route=product/product&amp;path=57&amp;product_id=49', 'catalog/demo/slideshow/slideshow-1.png', '2');
INSERT INTO `oc_banner_image` VALUES ('142', '7', '2', 'Home Page Slideshow', 'index.php?route=product/product&amp;path=57&amp;product_id=49', 'catalog/demo/slideshow/slideshow-2.png', '1');

-- ----------------------------
-- Table structure for oc_cart
-- ----------------------------
DROP TABLE IF EXISTS `oc_cart`;
CREATE TABLE `oc_cart` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `cart_id` (`api_id`,`customer_id`,`session_id`,`product_id`,`recurring_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_cart
-- ----------------------------
INSERT INTO `oc_cart` VALUES ('2', '0', '1', '12efdb9d9096462d2a031fe1c1', '49', '0', '[]', '1', '2018-07-11 17:34:02');
INSERT INTO `oc_cart` VALUES ('4', '0', '1', '12efdb9d9096462d2a031fe1c1', '33', '0', '[]', '2', '2018-07-25 11:37:49');
INSERT INTO `oc_cart` VALUES ('6', '0', '1', '12efdb9d9096462d2a031fe1c1', '29', '0', '[]', '1', '2018-07-27 16:15:33');

-- ----------------------------
-- Table structure for oc_category
-- ----------------------------
DROP TABLE IF EXISTS `oc_category`;
CREATE TABLE `oc_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`category_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_category
-- ----------------------------
INSERT INTO `oc_category` VALUES ('25', 'catalog/demo/product/product-7.png', '0', '1', '1', '3', '1', '2009-01-31 01:04:25', '2011-05-30 12:14:55');
INSERT INTO `oc_category` VALUES ('27', 'catalog/demo/product/product-8.png', '20', '0', '0', '2', '1', '2009-01-31 01:55:34', '2017-12-06 14:51:41');
INSERT INTO `oc_category` VALUES ('20', 'catalog/demo/product/product-8.png', '0', '1', '1', '1', '1', '2009-01-05 21:49:43', '2017-12-04 12:03:14');
INSERT INTO `oc_category` VALUES ('24', 'catalog/demo/product/product-5.png', '0', '1', '1', '5', '1', '2009-01-20 02:36:26', '2011-05-30 12:15:18');
INSERT INTO `oc_category` VALUES ('18', 'catalog/demo/product/product-1.png', '0', '1', '0', '2', '1', '2009-01-05 21:49:15', '2011-05-30 12:13:55');
INSERT INTO `oc_category` VALUES ('17', 'catalog/demo/product/product-8.png', '0', '1', '1', '4', '1', '2009-01-03 21:08:57', '2011-05-30 12:15:11');
INSERT INTO `oc_category` VALUES ('28', 'catalog/demo/product/product-6.png', '25', '0', '0', '1', '1', '2009-02-02 13:11:12', '2010-08-22 06:32:46');
INSERT INTO `oc_category` VALUES ('26', 'catalog/demo/product/product-7.png', '20', '0', '0', '1', '1', '2009-01-31 01:55:14', '2017-12-06 14:51:07');
INSERT INTO `oc_category` VALUES ('29', 'catalog/demo/product/product-1.png', '25', '0', '0', '1', '1', '2009-02-02 13:11:37', '2010-08-22 06:32:39');
INSERT INTO `oc_category` VALUES ('30', 'catalog/demo/product/product-8.png', '25', '0', '0', '1', '1', '2009-02-02 13:11:59', '2010-08-22 06:33:00');
INSERT INTO `oc_category` VALUES ('31', 'catalog/demo/product/product-2.png', '25', '0', '0', '1', '1', '2009-02-03 14:17:24', '2010-08-22 06:33:06');
INSERT INTO `oc_category` VALUES ('32', 'catalog/demo/product/product-5.png', '25', '0', '0', '1', '1', '2009-02-03 14:17:34', '2010-08-22 06:33:12');
INSERT INTO `oc_category` VALUES ('33', 'catalog/demo/product/product-10.png', '0', '1', '1', '6', '0', '2009-02-03 14:17:55', '2017-12-01 11:16:03');
INSERT INTO `oc_category` VALUES ('34', 'catalog/demo/product/product-2.png', '0', '1', '4', '7', '1', '2009-02-03 14:18:11', '2011-05-30 12:15:31');
INSERT INTO `oc_category` VALUES ('35', 'catalog/demo/product/product-10.png', '28', '0', '0', '0', '1', '2010-09-17 10:06:48', '2010-09-18 14:02:42');
INSERT INTO `oc_category` VALUES ('36', 'catalog/demo/product/product-3.png', '28', '0', '0', '0', '1', '2010-09-17 10:07:13', '2010-09-18 14:02:55');
INSERT INTO `oc_category` VALUES ('39', 'catalog/demo/product/product-5.png', '34', '0', '0', '0', '1', '2010-09-18 14:04:17', '2011-04-22 01:55:20');
INSERT INTO `oc_category` VALUES ('45', 'catalog/demo/product/product-7.png', '18', '0', '0', '0', '1', '2010-09-24 18:29:16', '2011-04-26 08:52:11');
INSERT INTO `oc_category` VALUES ('46', 'catalog/demo/product/product-6.png', '18', '0', '0', '0', '1', '2010-09-24 18:29:31', '2011-04-26 08:52:23');
INSERT INTO `oc_category` VALUES ('57', 'catalog/demo/product/product-8.png', '0', '1', '1', '3', '1', '2011-04-26 08:53:16', '2011-05-30 12:15:05');
<<<<<<< HEAD
INSERT INTO `oc_category` VALUES ('59', 'catalog/demo/product/product-7.png', '0', '1', '1', '0', '1', '2018-09-18 10:45:50', '2018-09-18 10:45:50');
INSERT INTO `oc_category` VALUES ('60', 'catalog/demo/product/product-6.png', '59', '1', '1', '1', '1', '2018-09-18 12:13:27', '2018-09-18 12:13:27');
INSERT INTO `oc_category` VALUES ('61', 'catalog/demo/product/product-8.png', '60', '0', '1', '1', '1', '2018-09-18 12:15:12', '2018-09-18 12:15:12');
=======
INSERT INTO `oc_category` VALUES ('59', '', '0', '1', '1', '0', '1', '2018-09-18 10:45:50', '2018-09-18 10:45:50');
INSERT INTO `oc_category` VALUES ('60', '', '59', '1', '1', '1', '1', '2018-09-18 12:13:27', '2018-09-18 12:13:27');
INSERT INTO `oc_category` VALUES ('61', '', '60', '0', '1', '1', '1', '2018-09-18 12:15:12', '2018-09-18 12:15:12');
>>>>>>> 790b49e13c12789410af78d35dc87d3d392cacc9

-- ----------------------------
-- Table structure for oc_category_description
-- ----------------------------
DROP TABLE IF EXISTS `oc_category_description`;
CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_category_description
-- ----------------------------
INSERT INTO `oc_category_description` VALUES ('28', '1', 'T-shirt &amp; Shirt', '', 'T-shirt &amp; Shirt', '', '');
INSERT INTO `oc_category_description` VALUES ('33', '1', 'Men &amp; Women', '', 'Men &amp; Women', '', '');
INSERT INTO `oc_category_description` VALUES ('32', '1', 'Sports &amp; Outdoors', '', 'Sports &amp; Outdoors', '', '');
INSERT INTO `oc_category_description` VALUES ('31', '1', 'Beauty &amp; Health', '', 'Beauty &amp; Health', '', '');
INSERT INTO `oc_category_description` VALUES ('30', '1', 'Toys, Kids &amp; Baby', '', 'Toys, Kids &amp; Baby', '', '');
INSERT INTO `oc_category_description` VALUES ('29', '1', 'Movies &amp; Music', '', 'Movies &amp; Music', '', '');
INSERT INTO `oc_category_description` VALUES ('27', '1', 'Books &amp; eBooks', '', 'Books &amp; eBooks', '', '');
INSERT INTO `oc_category_description` VALUES ('26', '1', 'Gifts &amp; Sports', '', 'Gifts &amp; Sports', '', '');
INSERT INTO `oc_category_description` VALUES ('17', '1', 'Office &amp; Work', '', 'Office &amp; Work', '', '');
INSERT INTO `oc_category_description` VALUES ('25', '1', 'Bags &amp; Shoes', '', 'Bags &amp; Shoes', '', '');
INSERT INTO `oc_category_description` VALUES ('24', '1', 'Jewelry &amp; Watches', '', 'Jewelry &amp; Watches', '', '');
INSERT INTO `oc_category_description` VALUES ('20', '1', 'Fashion Accessories', '', 'Fashion Accessories', '', '');
INSERT INTO `oc_category_description` VALUES ('35', '1', 'Luxury Beauty', '', 'Luxury Beauty', '', '');
INSERT INTO `oc_category_description` VALUES ('36', '1', 'Digital Music', '', 'Digital Music', '', '');
INSERT INTO `oc_category_description` VALUES ('39', '1', 'Bags &amp; Shoes', '', 'Bags &amp; Shoes', '', '');
INSERT INTO `oc_category_description` VALUES ('34', '1', 'Gifts &amp; Sports', '', 'Gifts &amp; Sports', '', '');
INSERT INTO `oc_category_description` VALUES ('18', '1', 'Digital Music', '', 'Digital Music', '', '');
INSERT INTO `oc_category_description` VALUES ('45', '1', 'Bags &amp; Shoes', '', 'Bags &amp; Shoes', '', '');
INSERT INTO `oc_category_description` VALUES ('46', '1', 'Beauty &amp; Health', '', 'Beauty &amp; Health', '', '');
INSERT INTO `oc_category_description` VALUES ('57', '1', 'Men &amp; Women', '', 'Men &amp; Women', '', '');
INSERT INTO `oc_category_description` VALUES ('28', '2', '毛呢大衣', '', '毛呢大衣', '', '');
INSERT INTO `oc_category_description` VALUES ('33', '2', '羽绒棉衣', '', '羽绒棉衣', '', '');
INSERT INTO `oc_category_description` VALUES ('32', '2', '毛衣针织', '', '毛衣针织', '', '');
INSERT INTO `oc_category_description` VALUES ('31', '2', '裙装裤装', '', '裙装裤装', '', '');
INSERT INTO `oc_category_description` VALUES ('30', '2', '气场外套', '', '气场外套', '', '');
INSERT INTO `oc_category_description` VALUES ('29', '2', '羊毛大衣', '', '羊毛大衣', '', '');
INSERT INTO `oc_category_description` VALUES ('27', '2', '毛呢外套', '', '毛呢外套', '', '');
INSERT INTO `oc_category_description` VALUES ('26', '2', '羊绒大衣', '', '羊绒大衣', '', '');
INSERT INTO `oc_category_description` VALUES ('17', '2', '轻薄羽绒', '', '轻薄羽绒', '', '');
INSERT INTO `oc_category_description` VALUES ('25', '2', '长款羽绒', '', '长款羽绒', '', '');
INSERT INTO `oc_category_description` VALUES ('24', '2', '时尚女装', '', '时尚女装', '', '');
INSERT INTO `oc_category_description` VALUES ('20', '2', '当季流行', '', '当季流行', '', '');
INSERT INTO `oc_category_description` VALUES ('35', '2', '羊绒衫', '', '羊绒衫', '', '');
INSERT INTO `oc_category_description` VALUES ('36', '2', '针织衫', '', '针织衫', '', '');
INSERT INTO `oc_category_description` VALUES ('39', '2', '打底衫', '', '打底衫', '', '');
INSERT INTO `oc_category_description` VALUES ('34', '2', '潮流服饰', '', '潮流服饰', '', '');
INSERT INTO `oc_category_description` VALUES ('18', '2', '加厚棉衣', '', '加厚棉衣', '', '');
INSERT INTO `oc_category_description` VALUES ('45', '2', '牛仔外套', '', '牛仔外套', '', '');
INSERT INTO `oc_category_description` VALUES ('46', '2', '韩版', '', '韩版', '', '');
INSERT INTO `oc_category_description` VALUES ('57', '2', '秋季套装', '', '秋季套装', '', '');
INSERT INTO `oc_category_description` VALUES ('59', '2', '拍卖商品', '', '拍卖 商品', '', '');
INSERT INTO `oc_category_description` VALUES ('60', '2', '拍卖2类', '', '2类', '', '');
INSERT INTO `oc_category_description` VALUES ('60', '1', 'ebaypro', '', 'ebaypro', '', '');
INSERT INTO `oc_category_description` VALUES ('61', '2', '拍卖2333类', '', '2333类', '', '');
INSERT INTO `oc_category_description` VALUES ('61', '1', 'ebaypro', '', '2333类', '', '');
INSERT INTO `oc_category_description` VALUES ('59', '1', 'ebaypro', '', 'ebaypro', '', '');

-- ----------------------------
-- Table structure for oc_category_ebay
-- ----------------------------
DROP TABLE IF EXISTS `oc_category_ebay`;
CREATE TABLE `oc_category_ebay` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`category_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_category_ebay
-- ----------------------------
INSERT INTO `oc_category_ebay` VALUES ('59', '', '0', '1', '1', '0', '1', '2018-09-18 10:45:50', '2018-09-18 10:45:50');
INSERT INTO `oc_category_ebay` VALUES ('60', '', '59', '1', '1', '1', '1', '2018-09-18 12:13:27', '2018-09-18 12:13:27');
INSERT INTO `oc_category_ebay` VALUES ('61', '', '60', '0', '1', '1', '1', '2018-09-18 12:15:12', '2018-09-18 12:15:12');

-- ----------------------------
-- Table structure for oc_category_filter
-- ----------------------------
DROP TABLE IF EXISTS `oc_category_filter`;
CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_category_filter
-- ----------------------------

-- ----------------------------
-- Table structure for oc_category_path
-- ----------------------------
DROP TABLE IF EXISTS `oc_category_path`;
CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_category_path
-- ----------------------------
INSERT INTO `oc_category_path` VALUES ('25', '25', '0');
INSERT INTO `oc_category_path` VALUES ('28', '28', '1');
INSERT INTO `oc_category_path` VALUES ('28', '25', '0');
INSERT INTO `oc_category_path` VALUES ('35', '35', '2');
INSERT INTO `oc_category_path` VALUES ('35', '28', '1');
INSERT INTO `oc_category_path` VALUES ('35', '25', '0');
INSERT INTO `oc_category_path` VALUES ('36', '36', '2');
INSERT INTO `oc_category_path` VALUES ('36', '28', '1');
INSERT INTO `oc_category_path` VALUES ('36', '25', '0');
INSERT INTO `oc_category_path` VALUES ('29', '29', '1');
INSERT INTO `oc_category_path` VALUES ('29', '25', '0');
INSERT INTO `oc_category_path` VALUES ('30', '30', '1');
INSERT INTO `oc_category_path` VALUES ('30', '25', '0');
INSERT INTO `oc_category_path` VALUES ('31', '31', '1');
INSERT INTO `oc_category_path` VALUES ('31', '25', '0');
INSERT INTO `oc_category_path` VALUES ('32', '32', '1');
INSERT INTO `oc_category_path` VALUES ('32', '25', '0');
INSERT INTO `oc_category_path` VALUES ('20', '20', '0');
INSERT INTO `oc_category_path` VALUES ('27', '27', '1');
INSERT INTO `oc_category_path` VALUES ('27', '20', '0');
INSERT INTO `oc_category_path` VALUES ('26', '26', '1');
INSERT INTO `oc_category_path` VALUES ('26', '20', '0');
INSERT INTO `oc_category_path` VALUES ('24', '24', '0');
INSERT INTO `oc_category_path` VALUES ('18', '18', '0');
INSERT INTO `oc_category_path` VALUES ('45', '45', '1');
INSERT INTO `oc_category_path` VALUES ('45', '18', '0');
INSERT INTO `oc_category_path` VALUES ('46', '46', '1');
INSERT INTO `oc_category_path` VALUES ('46', '18', '0');
INSERT INTO `oc_category_path` VALUES ('17', '17', '0');
INSERT INTO `oc_category_path` VALUES ('33', '33', '0');
INSERT INTO `oc_category_path` VALUES ('34', '34', '0');
INSERT INTO `oc_category_path` VALUES ('39', '39', '1');
INSERT INTO `oc_category_path` VALUES ('39', '34', '0');
INSERT INTO `oc_category_path` VALUES ('57', '57', '0');
INSERT INTO `oc_category_path` VALUES ('59', '59', '0');
INSERT INTO `oc_category_path` VALUES ('60', '59', '0');
INSERT INTO `oc_category_path` VALUES ('60', '60', '1');
INSERT INTO `oc_category_path` VALUES ('61', '59', '0');
INSERT INTO `oc_category_path` VALUES ('61', '60', '1');
INSERT INTO `oc_category_path` VALUES ('61', '61', '2');
INSERT INTO `oc_category_path` VALUES ('58', '58', '0');

-- ----------------------------
-- Table structure for oc_category_to_layout
-- ----------------------------
DROP TABLE IF EXISTS `oc_category_to_layout`;
CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_category_to_layout
-- ----------------------------
INSERT INTO `oc_category_to_layout` VALUES ('59', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('60', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('61', '0', '0');

-- ----------------------------
-- Table structure for oc_category_to_store
-- ----------------------------
DROP TABLE IF EXISTS `oc_category_to_store`;
CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_category_to_store
-- ----------------------------
INSERT INTO `oc_category_to_store` VALUES ('17', '0');
INSERT INTO `oc_category_to_store` VALUES ('18', '0');
INSERT INTO `oc_category_to_store` VALUES ('20', '0');
INSERT INTO `oc_category_to_store` VALUES ('24', '0');
INSERT INTO `oc_category_to_store` VALUES ('25', '0');
INSERT INTO `oc_category_to_store` VALUES ('26', '0');
INSERT INTO `oc_category_to_store` VALUES ('27', '0');
INSERT INTO `oc_category_to_store` VALUES ('28', '0');
INSERT INTO `oc_category_to_store` VALUES ('29', '0');
INSERT INTO `oc_category_to_store` VALUES ('30', '0');
INSERT INTO `oc_category_to_store` VALUES ('31', '0');
INSERT INTO `oc_category_to_store` VALUES ('32', '0');
INSERT INTO `oc_category_to_store` VALUES ('33', '0');
INSERT INTO `oc_category_to_store` VALUES ('34', '0');
INSERT INTO `oc_category_to_store` VALUES ('35', '0');
INSERT INTO `oc_category_to_store` VALUES ('36', '0');
INSERT INTO `oc_category_to_store` VALUES ('39', '0');
INSERT INTO `oc_category_to_store` VALUES ('45', '0');
INSERT INTO `oc_category_to_store` VALUES ('46', '0');
INSERT INTO `oc_category_to_store` VALUES ('57', '0');
INSERT INTO `oc_category_to_store` VALUES ('59', '0');
INSERT INTO `oc_category_to_store` VALUES ('60', '0');
INSERT INTO `oc_category_to_store` VALUES ('61', '0');

-- ----------------------------
-- Table structure for oc_city
-- ----------------------------
DROP TABLE IF EXISTS `oc_city`;
CREATE TABLE `oc_city` (
  `city_id` int(11) NOT NULL AUTO_INCREMENT,
  `zone_id` int(11) NOT NULL,
  `up_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`city_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3405 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_city
-- ----------------------------
INSERT INTO `oc_city` VALUES ('1', '684', '0', '合肥市', '1', '0');
INSERT INTO `oc_city` VALUES ('2', '684', '1', '包河区', '1', '0');
INSERT INTO `oc_city` VALUES ('3', '684', '1', '庐阳区', '1', '0');
INSERT INTO `oc_city` VALUES ('4', '684', '1', '瑶海区', '1', '0');
INSERT INTO `oc_city` VALUES ('5', '684', '1', '肥东县', '1', '0');
INSERT INTO `oc_city` VALUES ('6', '684', '1', '肥西县', '1', '0');
INSERT INTO `oc_city` VALUES ('7', '684', '1', '蜀山区', '1', '0');
INSERT INTO `oc_city` VALUES ('8', '684', '1', '长丰县', '1', '0');
INSERT INTO `oc_city` VALUES ('9', '684', '0', '芜湖市', '1', '0');
INSERT INTO `oc_city` VALUES ('10', '684', '9', '三山区', '1', '0');
INSERT INTO `oc_city` VALUES ('11', '684', '9', '南陵县', '1', '0');
INSERT INTO `oc_city` VALUES ('12', '684', '9', '弋江区', '1', '0');
INSERT INTO `oc_city` VALUES ('13', '684', '9', '繁昌县', '1', '0');
INSERT INTO `oc_city` VALUES ('14', '684', '9', '芜湖县', '1', '0');
INSERT INTO `oc_city` VALUES ('15', '684', '9', '镜湖区', '1', '0');
INSERT INTO `oc_city` VALUES ('16', '684', '9', '鸠江区', '1', '0');
INSERT INTO `oc_city` VALUES ('17', '684', '0', '蚌埠市', '1', '0');
INSERT INTO `oc_city` VALUES ('18', '684', '17', '五河县', '1', '0');
INSERT INTO `oc_city` VALUES ('19', '684', '17', '固镇县', '1', '0');
INSERT INTO `oc_city` VALUES ('20', '684', '17', '怀远县', '1', '0');
INSERT INTO `oc_city` VALUES ('21', '684', '17', '淮上区', '1', '0');
INSERT INTO `oc_city` VALUES ('22', '684', '17', '禹会区', '1', '0');
INSERT INTO `oc_city` VALUES ('23', '684', '17', '蚌山区', '1', '0');
INSERT INTO `oc_city` VALUES ('24', '684', '17', '龙子湖区', '1', '0');
INSERT INTO `oc_city` VALUES ('25', '684', '0', '淮南市', '1', '0');
INSERT INTO `oc_city` VALUES ('26', '684', '25', '八公山区', '1', '0');
INSERT INTO `oc_city` VALUES ('27', '684', '25', '凤台县', '1', '0');
INSERT INTO `oc_city` VALUES ('28', '684', '25', '大通区', '1', '0');
INSERT INTO `oc_city` VALUES ('29', '684', '25', '潘集区', '1', '0');
INSERT INTO `oc_city` VALUES ('30', '684', '25', '田家庵区', '1', '0');
INSERT INTO `oc_city` VALUES ('31', '684', '25', '谢家集区', '1', '0');
INSERT INTO `oc_city` VALUES ('32', '684', '0', '马鞍山市', '1', '0');
INSERT INTO `oc_city` VALUES ('33', '684', '32', '当涂县', '1', '0');
INSERT INTO `oc_city` VALUES ('34', '684', '32', '花山区', '1', '0');
INSERT INTO `oc_city` VALUES ('35', '684', '32', '金家庄区', '1', '0');
INSERT INTO `oc_city` VALUES ('36', '684', '32', '雨山区', '1', '0');
INSERT INTO `oc_city` VALUES ('37', '684', '0', '淮北市', '1', '0');
INSERT INTO `oc_city` VALUES ('38', '684', '37', '杜集区', '1', '0');
INSERT INTO `oc_city` VALUES ('39', '684', '37', '濉溪县', '1', '0');
INSERT INTO `oc_city` VALUES ('40', '684', '37', '烈山区', '1', '0');
INSERT INTO `oc_city` VALUES ('41', '684', '37', '相山区', '1', '0');
INSERT INTO `oc_city` VALUES ('42', '684', '0', '铜陵市', '1', '0');
INSERT INTO `oc_city` VALUES ('43', '684', '42', '狮子山区', '1', '0');
INSERT INTO `oc_city` VALUES ('44', '684', '42', '郊区', '1', '0');
INSERT INTO `oc_city` VALUES ('45', '684', '42', '铜官山区', '1', '0');
INSERT INTO `oc_city` VALUES ('46', '684', '42', '铜陵县', '1', '0');
INSERT INTO `oc_city` VALUES ('47', '684', '0', '安庆市', '1', '0');
INSERT INTO `oc_city` VALUES ('48', '684', '47', '大观区', '1', '0');
INSERT INTO `oc_city` VALUES ('49', '684', '47', '太湖县', '1', '0');
INSERT INTO `oc_city` VALUES ('50', '684', '47', '宜秀区', '1', '0');
INSERT INTO `oc_city` VALUES ('51', '684', '47', '宿松县', '1', '0');
INSERT INTO `oc_city` VALUES ('52', '684', '47', '岳西县', '1', '0');
INSERT INTO `oc_city` VALUES ('53', '684', '47', '怀宁县', '1', '0');
INSERT INTO `oc_city` VALUES ('54', '684', '47', '望江县', '1', '0');
INSERT INTO `oc_city` VALUES ('55', '684', '47', '枞阳县', '1', '0');
INSERT INTO `oc_city` VALUES ('56', '684', '47', '桐城市', '1', '0');
INSERT INTO `oc_city` VALUES ('57', '684', '47', '潜山县', '1', '0');
INSERT INTO `oc_city` VALUES ('58', '684', '47', '迎江区', '1', '0');
INSERT INTO `oc_city` VALUES ('59', '684', '0', '黄山市', '1', '0');
INSERT INTO `oc_city` VALUES ('60', '684', '59', '休宁县', '1', '0');
INSERT INTO `oc_city` VALUES ('61', '684', '59', '屯溪区', '1', '0');
INSERT INTO `oc_city` VALUES ('62', '684', '59', '徽州区', '1', '0');
INSERT INTO `oc_city` VALUES ('63', '684', '59', '歙县', '1', '0');
INSERT INTO `oc_city` VALUES ('64', '684', '59', '祁门县', '1', '0');
INSERT INTO `oc_city` VALUES ('65', '684', '59', '黄山区', '1', '0');
INSERT INTO `oc_city` VALUES ('66', '684', '59', '黟县', '1', '0');
INSERT INTO `oc_city` VALUES ('67', '684', '0', '滁州市', '1', '0');
INSERT INTO `oc_city` VALUES ('68', '684', '67', '全椒县', '1', '0');
INSERT INTO `oc_city` VALUES ('69', '684', '67', '凤阳县', '1', '0');
INSERT INTO `oc_city` VALUES ('70', '684', '67', '南谯区', '1', '0');
INSERT INTO `oc_city` VALUES ('71', '684', '67', '天长市', '1', '0');
INSERT INTO `oc_city` VALUES ('72', '684', '67', '定远县', '1', '0');
INSERT INTO `oc_city` VALUES ('73', '684', '67', '明光市', '1', '0');
INSERT INTO `oc_city` VALUES ('74', '684', '67', '来安县', '1', '0');
INSERT INTO `oc_city` VALUES ('75', '684', '67', '琅玡区', '1', '0');
INSERT INTO `oc_city` VALUES ('76', '684', '0', '阜阳市', '1', '0');
INSERT INTO `oc_city` VALUES ('77', '684', '76', '临泉县', '1', '0');
INSERT INTO `oc_city` VALUES ('78', '684', '76', '太和县', '1', '0');
INSERT INTO `oc_city` VALUES ('79', '684', '76', '界首市', '1', '0');
INSERT INTO `oc_city` VALUES ('80', '684', '76', '阜南县', '1', '0');
INSERT INTO `oc_city` VALUES ('81', '684', '76', '颍东区', '1', '0');
INSERT INTO `oc_city` VALUES ('82', '684', '76', '颍州区', '1', '0');
INSERT INTO `oc_city` VALUES ('83', '684', '76', '颍泉区', '1', '0');
INSERT INTO `oc_city` VALUES ('84', '684', '76', '颖上县', '1', '0');
INSERT INTO `oc_city` VALUES ('85', '684', '0', '宿州市', '1', '0');
INSERT INTO `oc_city` VALUES ('86', '684', '85', '埇桥区', '1', '0');
INSERT INTO `oc_city` VALUES ('87', '684', '85', '泗县辖', '1', '0');
INSERT INTO `oc_city` VALUES ('88', '684', '85', '灵璧县', '1', '0');
INSERT INTO `oc_city` VALUES ('89', '684', '85', '砀山县', '1', '0');
INSERT INTO `oc_city` VALUES ('90', '684', '85', '萧县', '1', '0');
INSERT INTO `oc_city` VALUES ('91', '684', '0', '巢湖市', '1', '0');
INSERT INTO `oc_city` VALUES ('92', '684', '91', '含山县', '1', '0');
INSERT INTO `oc_city` VALUES ('93', '684', '91', '和县', '1', '0');
INSERT INTO `oc_city` VALUES ('94', '684', '91', '居巢区', '1', '0');
INSERT INTO `oc_city` VALUES ('95', '684', '91', '庐江县', '1', '0');
INSERT INTO `oc_city` VALUES ('96', '684', '91', '无为县', '1', '0');
INSERT INTO `oc_city` VALUES ('97', '684', '0', '六安市', '1', '0');
INSERT INTO `oc_city` VALUES ('98', '684', '97', '寿县', '1', '0');
INSERT INTO `oc_city` VALUES ('99', '684', '97', '舒城县', '1', '0');
INSERT INTO `oc_city` VALUES ('100', '684', '97', '裕安区', '1', '0');
INSERT INTO `oc_city` VALUES ('101', '684', '97', '金安区', '1', '0');
INSERT INTO `oc_city` VALUES ('102', '684', '97', '金寨县', '1', '0');
INSERT INTO `oc_city` VALUES ('103', '684', '97', '霍山县', '1', '0');
INSERT INTO `oc_city` VALUES ('104', '684', '97', '霍邱县', '1', '0');
INSERT INTO `oc_city` VALUES ('105', '684', '0', '亳州市', '1', '0');
INSERT INTO `oc_city` VALUES ('106', '684', '105', '利辛县', '1', '0');
INSERT INTO `oc_city` VALUES ('107', '684', '105', '涡阳县', '1', '0');
INSERT INTO `oc_city` VALUES ('108', '684', '105', '蒙城县', '1', '0');
INSERT INTO `oc_city` VALUES ('109', '684', '105', '谯城区', '1', '0');
INSERT INTO `oc_city` VALUES ('110', '684', '0', '池州市', '1', '0');
INSERT INTO `oc_city` VALUES ('111', '684', '110', '东至县', '1', '0');
INSERT INTO `oc_city` VALUES ('112', '684', '110', '石台县', '1', '0');
INSERT INTO `oc_city` VALUES ('113', '684', '110', '贵池区', '1', '0');
INSERT INTO `oc_city` VALUES ('114', '684', '110', '青阳县', '1', '0');
INSERT INTO `oc_city` VALUES ('115', '684', '0', '宣城市', '1', '0');
INSERT INTO `oc_city` VALUES ('116', '684', '115', '宁国市', '1', '0');
INSERT INTO `oc_city` VALUES ('117', '684', '115', '宣州区', '1', '0');
INSERT INTO `oc_city` VALUES ('118', '684', '115', '广德县', '1', '0');
INSERT INTO `oc_city` VALUES ('119', '684', '115', '旌德县', '1', '0');
INSERT INTO `oc_city` VALUES ('120', '684', '115', '泾县', '1', '0');
INSERT INTO `oc_city` VALUES ('121', '684', '115', '绩溪县', '1', '0');
INSERT INTO `oc_city` VALUES ('122', '684', '115', '郎溪县', '1', '0');
INSERT INTO `oc_city` VALUES ('123', '685', '0', '东城区', '1', '0');
INSERT INTO `oc_city` VALUES ('124', '685', '0', '西城区', '1', '0');
INSERT INTO `oc_city` VALUES ('125', '685', '0', '崇文区', '1', '0');
INSERT INTO `oc_city` VALUES ('126', '685', '0', '宣武区', '1', '0');
INSERT INTO `oc_city` VALUES ('127', '685', '0', '朝阳区', '1', '0');
INSERT INTO `oc_city` VALUES ('128', '685', '0', '丰台区', '1', '0');
INSERT INTO `oc_city` VALUES ('129', '685', '0', '石景山区', '1', '0');
INSERT INTO `oc_city` VALUES ('130', '685', '0', '海淀区', '1', '0');
INSERT INTO `oc_city` VALUES ('131', '685', '0', '门头沟区', '1', '0');
INSERT INTO `oc_city` VALUES ('132', '685', '0', '房山区', '1', '0');
INSERT INTO `oc_city` VALUES ('133', '685', '0', '通州区', '1', '0');
INSERT INTO `oc_city` VALUES ('134', '685', '0', '顺义区', '1', '0');
INSERT INTO `oc_city` VALUES ('135', '685', '0', '昌平区', '1', '0');
INSERT INTO `oc_city` VALUES ('136', '685', '0', '大兴区', '1', '0');
INSERT INTO `oc_city` VALUES ('137', '685', '0', '怀柔区', '1', '0');
INSERT INTO `oc_city` VALUES ('138', '685', '0', '平谷区', '1', '0');
INSERT INTO `oc_city` VALUES ('139', '685', '0', '密云县', '1', '0');
INSERT INTO `oc_city` VALUES ('140', '685', '0', '延庆县', '1', '0');
INSERT INTO `oc_city` VALUES ('141', '686', '0', '万州区', '1', '0');
INSERT INTO `oc_city` VALUES ('142', '686', '0', '涪陵区', '1', '0');
INSERT INTO `oc_city` VALUES ('143', '686', '0', '渝中区', '1', '0');
INSERT INTO `oc_city` VALUES ('144', '686', '0', '大渡口区', '1', '0');
INSERT INTO `oc_city` VALUES ('145', '686', '0', '江北区', '1', '0');
INSERT INTO `oc_city` VALUES ('146', '686', '0', '沙坪坝区', '1', '0');
INSERT INTO `oc_city` VALUES ('147', '686', '0', '九龙坡区', '1', '0');
INSERT INTO `oc_city` VALUES ('148', '686', '0', '南岸区', '1', '0');
INSERT INTO `oc_city` VALUES ('149', '686', '0', '北碚区', '1', '0');
INSERT INTO `oc_city` VALUES ('150', '686', '0', '双桥区', '1', '0');
INSERT INTO `oc_city` VALUES ('151', '686', '0', '万盛区', '1', '0');
INSERT INTO `oc_city` VALUES ('152', '686', '0', '渝北区', '1', '0');
INSERT INTO `oc_city` VALUES ('153', '686', '0', '巴南区', '1', '0');
INSERT INTO `oc_city` VALUES ('154', '686', '0', '黔江区', '1', '0');
INSERT INTO `oc_city` VALUES ('155', '686', '0', '长寿区', '1', '0');
INSERT INTO `oc_city` VALUES ('156', '686', '0', '綦江县', '1', '0');
INSERT INTO `oc_city` VALUES ('157', '686', '0', '潼南县', '1', '0');
INSERT INTO `oc_city` VALUES ('158', '686', '0', '铜梁县', '1', '0');
INSERT INTO `oc_city` VALUES ('159', '686', '0', '大足县', '1', '0');
INSERT INTO `oc_city` VALUES ('160', '686', '0', '荣昌县', '1', '0');
INSERT INTO `oc_city` VALUES ('161', '686', '0', '璧山县', '1', '0');
INSERT INTO `oc_city` VALUES ('162', '686', '0', '梁平县', '1', '0');
INSERT INTO `oc_city` VALUES ('163', '686', '0', '城口县', '1', '0');
INSERT INTO `oc_city` VALUES ('164', '686', '0', '丰都县', '1', '0');
INSERT INTO `oc_city` VALUES ('165', '686', '0', '垫江县', '1', '0');
INSERT INTO `oc_city` VALUES ('166', '686', '0', '武隆县', '1', '0');
INSERT INTO `oc_city` VALUES ('167', '686', '0', '忠县', '1', '0');
INSERT INTO `oc_city` VALUES ('168', '686', '0', '开县', '1', '0');
INSERT INTO `oc_city` VALUES ('169', '686', '0', '云阳县', '1', '0');
INSERT INTO `oc_city` VALUES ('170', '686', '0', '奉节县', '1', '0');
INSERT INTO `oc_city` VALUES ('171', '686', '0', '巫山县', '1', '0');
INSERT INTO `oc_city` VALUES ('172', '686', '0', '巫溪县', '1', '0');
INSERT INTO `oc_city` VALUES ('173', '686', '0', '石柱土家族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('174', '686', '0', '秀山土家族苗族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('175', '686', '0', '酉阳土家族苗族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('176', '686', '0', '彭水苗族土家族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('177', '686', '0', '江津市', '1', '0');
INSERT INTO `oc_city` VALUES ('178', '686', '0', '合川市', '1', '0');
INSERT INTO `oc_city` VALUES ('179', '686', '0', '永川市', '1', '0');
INSERT INTO `oc_city` VALUES ('180', '686', '0', '南川市', '1', '0');
INSERT INTO `oc_city` VALUES ('181', '687', '0', '福州市', '1', '0');
INSERT INTO `oc_city` VALUES ('182', '687', '181', '仓山区', '1', '0');
INSERT INTO `oc_city` VALUES ('183', '687', '181', '台江区', '1', '0');
INSERT INTO `oc_city` VALUES ('184', '687', '181', '平潭县', '1', '0');
INSERT INTO `oc_city` VALUES ('185', '687', '181', '晋安区', '1', '0');
INSERT INTO `oc_city` VALUES ('186', '687', '181', '永泰县', '1', '0');
INSERT INTO `oc_city` VALUES ('187', '687', '181', '福清市', '1', '0');
INSERT INTO `oc_city` VALUES ('188', '687', '181', '罗源县', '1', '0');
INSERT INTO `oc_city` VALUES ('189', '687', '181', '连江县', '1', '0');
INSERT INTO `oc_city` VALUES ('190', '687', '181', '长乐市', '1', '0');
INSERT INTO `oc_city` VALUES ('191', '687', '181', '闽侯县', '1', '0');
INSERT INTO `oc_city` VALUES ('192', '687', '181', '闽清县', '1', '0');
INSERT INTO `oc_city` VALUES ('193', '687', '181', '马尾区', '1', '0');
INSERT INTO `oc_city` VALUES ('194', '687', '181', '鼓楼区', '1', '0');
INSERT INTO `oc_city` VALUES ('195', '687', '0', '厦门市', '1', '0');
INSERT INTO `oc_city` VALUES ('196', '687', '195', '同安区', '1', '0');
INSERT INTO `oc_city` VALUES ('197', '687', '195', '思明区', '1', '0');
INSERT INTO `oc_city` VALUES ('198', '687', '195', '海沧区', '1', '0');
INSERT INTO `oc_city` VALUES ('199', '687', '195', '湖里区', '1', '0');
INSERT INTO `oc_city` VALUES ('200', '687', '195', '翔安区', '1', '0');
INSERT INTO `oc_city` VALUES ('201', '687', '195', '集美区', '1', '0');
INSERT INTO `oc_city` VALUES ('202', '687', '0', '莆田市', '1', '0');
INSERT INTO `oc_city` VALUES ('203', '687', '202', '仙游县', '1', '0');
INSERT INTO `oc_city` VALUES ('204', '687', '202', '城厢区', '1', '0');
INSERT INTO `oc_city` VALUES ('205', '687', '202', '涵江区', '1', '0');
INSERT INTO `oc_city` VALUES ('206', '687', '202', '秀屿区', '1', '0');
INSERT INTO `oc_city` VALUES ('207', '687', '202', '荔城区', '1', '0');
INSERT INTO `oc_city` VALUES ('208', '687', '0', '三明市', '1', '0');
INSERT INTO `oc_city` VALUES ('209', '687', '208', '三元区', '1', '0');
INSERT INTO `oc_city` VALUES ('210', '687', '208', '大田县', '1', '0');
INSERT INTO `oc_city` VALUES ('211', '687', '208', '宁化县', '1', '0');
INSERT INTO `oc_city` VALUES ('212', '687', '208', '将乐县', '1', '0');
INSERT INTO `oc_city` VALUES ('213', '687', '208', '尤溪县', '1', '0');
INSERT INTO `oc_city` VALUES ('214', '687', '208', '建宁县', '1', '0');
INSERT INTO `oc_city` VALUES ('215', '687', '208', '明溪县', '1', '0');
INSERT INTO `oc_city` VALUES ('216', '687', '208', '梅列区', '1', '0');
INSERT INTO `oc_city` VALUES ('217', '687', '208', '永安市', '1', '0');
INSERT INTO `oc_city` VALUES ('218', '687', '208', '沙县', '1', '0');
INSERT INTO `oc_city` VALUES ('219', '687', '208', '泰宁县', '1', '0');
INSERT INTO `oc_city` VALUES ('220', '687', '208', '清流县', '1', '0');
INSERT INTO `oc_city` VALUES ('221', '687', '0', '泉州市', '1', '0');
INSERT INTO `oc_city` VALUES ('222', '687', '221', '丰泽区', '1', '0');
INSERT INTO `oc_city` VALUES ('223', '687', '221', '南安市', '1', '0');
INSERT INTO `oc_city` VALUES ('224', '687', '221', '安溪县', '1', '0');
INSERT INTO `oc_city` VALUES ('225', '687', '221', '德化县', '1', '0');
INSERT INTO `oc_city` VALUES ('226', '687', '221', '惠安县', '1', '0');
INSERT INTO `oc_city` VALUES ('227', '687', '221', '晋江市', '1', '0');
INSERT INTO `oc_city` VALUES ('228', '687', '221', '永春县', '1', '0');
INSERT INTO `oc_city` VALUES ('229', '687', '221', '泉港区', '1', '0');
INSERT INTO `oc_city` VALUES ('230', '687', '221', '洛江区', '1', '0');
INSERT INTO `oc_city` VALUES ('231', '687', '221', '石狮市', '1', '0');
INSERT INTO `oc_city` VALUES ('232', '687', '221', '金门县', '1', '0');
INSERT INTO `oc_city` VALUES ('233', '687', '221', '鲤城区', '1', '0');
INSERT INTO `oc_city` VALUES ('234', '687', '0', '漳州市', '1', '0');
INSERT INTO `oc_city` VALUES ('235', '687', '234', '东山县', '1', '0');
INSERT INTO `oc_city` VALUES ('236', '687', '234', '云霄县', '1', '0');
INSERT INTO `oc_city` VALUES ('237', '687', '234', '华安县', '1', '0');
INSERT INTO `oc_city` VALUES ('238', '687', '234', '南靖县', '1', '0');
INSERT INTO `oc_city` VALUES ('239', '687', '234', '平和县', '1', '0');
INSERT INTO `oc_city` VALUES ('240', '687', '234', '漳浦县', '1', '0');
INSERT INTO `oc_city` VALUES ('241', '687', '234', '芗城区', '1', '0');
INSERT INTO `oc_city` VALUES ('242', '687', '234', '诏安县', '1', '0');
INSERT INTO `oc_city` VALUES ('243', '687', '234', '长泰县', '1', '0');
INSERT INTO `oc_city` VALUES ('244', '687', '234', '龙文区', '1', '0');
INSERT INTO `oc_city` VALUES ('245', '687', '234', '龙海市', '1', '0');
INSERT INTO `oc_city` VALUES ('246', '687', '0', '南平市', '1', '0');
INSERT INTO `oc_city` VALUES ('247', '687', '246', '光泽县', '1', '0');
INSERT INTO `oc_city` VALUES ('248', '687', '246', '延平区', '1', '0');
INSERT INTO `oc_city` VALUES ('249', '687', '246', '建瓯市', '1', '0');
INSERT INTO `oc_city` VALUES ('250', '687', '246', '建阳市', '1', '0');
INSERT INTO `oc_city` VALUES ('251', '687', '246', '政和县', '1', '0');
INSERT INTO `oc_city` VALUES ('252', '687', '246', '松溪县', '1', '0');
INSERT INTO `oc_city` VALUES ('253', '687', '246', '武夷山市', '1', '0');
INSERT INTO `oc_city` VALUES ('254', '687', '246', '浦城县', '1', '0');
INSERT INTO `oc_city` VALUES ('255', '687', '246', '邵武市', '1', '0');
INSERT INTO `oc_city` VALUES ('256', '687', '246', '顺昌县', '1', '0');
INSERT INTO `oc_city` VALUES ('257', '687', '0', '龙岩市', '1', '0');
INSERT INTO `oc_city` VALUES ('258', '687', '257', '上杭县', '1', '0');
INSERT INTO `oc_city` VALUES ('259', '687', '257', '新罗区', '1', '0');
INSERT INTO `oc_city` VALUES ('260', '687', '257', '武平县', '1', '0');
INSERT INTO `oc_city` VALUES ('261', '687', '257', '永定县', '1', '0');
INSERT INTO `oc_city` VALUES ('262', '687', '257', '漳平市', '1', '0');
INSERT INTO `oc_city` VALUES ('263', '687', '257', '连城县', '1', '0');
INSERT INTO `oc_city` VALUES ('264', '687', '257', '长汀县', '1', '0');
INSERT INTO `oc_city` VALUES ('265', '687', '0', '宁德市', '1', '0');
INSERT INTO `oc_city` VALUES ('266', '687', '265', '古田县', '1', '0');
INSERT INTO `oc_city` VALUES ('267', '687', '265', '周宁县', '1', '0');
INSERT INTO `oc_city` VALUES ('268', '687', '265', '寿宁县', '1', '0');
INSERT INTO `oc_city` VALUES ('269', '687', '265', '屏南县', '1', '0');
INSERT INTO `oc_city` VALUES ('270', '687', '265', '柘荣县', '1', '0');
INSERT INTO `oc_city` VALUES ('271', '687', '265', '福安市', '1', '0');
INSERT INTO `oc_city` VALUES ('272', '687', '265', '福鼎市', '1', '0');
INSERT INTO `oc_city` VALUES ('273', '687', '265', '蕉城区', '1', '0');
INSERT INTO `oc_city` VALUES ('274', '687', '265', '霞浦县', '1', '0');
INSERT INTO `oc_city` VALUES ('275', '688', '0', '兰州市', '1', '0');
INSERT INTO `oc_city` VALUES ('276', '688', '275', '七里河区', '1', '0');
INSERT INTO `oc_city` VALUES ('277', '688', '275', '城关区', '1', '0');
INSERT INTO `oc_city` VALUES ('278', '688', '275', '安宁区', '1', '0');
INSERT INTO `oc_city` VALUES ('279', '688', '275', '榆中县', '1', '0');
INSERT INTO `oc_city` VALUES ('280', '688', '275', '永登县', '1', '0');
INSERT INTO `oc_city` VALUES ('281', '688', '275', '皋兰县', '1', '0');
INSERT INTO `oc_city` VALUES ('282', '688', '275', '红古区', '1', '0');
INSERT INTO `oc_city` VALUES ('283', '688', '275', '西固区', '1', '0');
INSERT INTO `oc_city` VALUES ('284', '688', '0', '嘉峪关市', '1', '0');
INSERT INTO `oc_city` VALUES ('285', '688', '284', '嘉峪关市', '1', '0');
INSERT INTO `oc_city` VALUES ('286', '688', '0', '金昌市', '1', '0');
INSERT INTO `oc_city` VALUES ('287', '688', '286', '永昌县', '1', '0');
INSERT INTO `oc_city` VALUES ('288', '688', '286', '金川区', '1', '0');
INSERT INTO `oc_city` VALUES ('289', '688', '0', '白银市', '1', '0');
INSERT INTO `oc_city` VALUES ('290', '688', '289', '会宁县', '1', '0');
INSERT INTO `oc_city` VALUES ('291', '688', '289', '平川区', '1', '0');
INSERT INTO `oc_city` VALUES ('292', '688', '289', '景泰县', '1', '0');
INSERT INTO `oc_city` VALUES ('293', '688', '289', '白银区', '1', '0');
INSERT INTO `oc_city` VALUES ('294', '688', '289', '靖远县', '1', '0');
INSERT INTO `oc_city` VALUES ('295', '688', '0', '天水市', '1', '0');
INSERT INTO `oc_city` VALUES ('296', '688', '295', '张家川回族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('297', '688', '295', '武山县', '1', '0');
INSERT INTO `oc_city` VALUES ('298', '688', '295', '清水县', '1', '0');
INSERT INTO `oc_city` VALUES ('299', '688', '295', '甘谷县', '1', '0');
INSERT INTO `oc_city` VALUES ('300', '688', '295', '秦安县', '1', '0');
INSERT INTO `oc_city` VALUES ('301', '688', '295', '秦州区', '1', '0');
INSERT INTO `oc_city` VALUES ('302', '688', '295', '麦积区', '1', '0');
INSERT INTO `oc_city` VALUES ('303', '688', '0', '武威市', '1', '0');
INSERT INTO `oc_city` VALUES ('304', '688', '303', '凉州区', '1', '0');
INSERT INTO `oc_city` VALUES ('305', '688', '303', '古浪县', '1', '0');
INSERT INTO `oc_city` VALUES ('306', '688', '303', '天祝藏族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('307', '688', '303', '民勤县', '1', '0');
INSERT INTO `oc_city` VALUES ('308', '688', '0', '张掖市', '1', '0');
INSERT INTO `oc_city` VALUES ('309', '688', '308', '临泽县', '1', '0');
INSERT INTO `oc_city` VALUES ('310', '688', '308', '山丹县', '1', '0');
INSERT INTO `oc_city` VALUES ('311', '688', '308', '民乐县', '1', '0');
INSERT INTO `oc_city` VALUES ('312', '688', '308', '甘州区', '1', '0');
INSERT INTO `oc_city` VALUES ('313', '688', '308', '肃南裕固族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('314', '688', '308', '高台县', '1', '0');
INSERT INTO `oc_city` VALUES ('315', '688', '0', '平凉市', '1', '0');
INSERT INTO `oc_city` VALUES ('316', '688', '315', '华亭县', '1', '0');
INSERT INTO `oc_city` VALUES ('317', '688', '315', '崆峒区', '1', '0');
INSERT INTO `oc_city` VALUES ('318', '688', '315', '崇信县', '1', '0');
INSERT INTO `oc_city` VALUES ('319', '688', '315', '庄浪县', '1', '0');
INSERT INTO `oc_city` VALUES ('320', '688', '315', '泾川县', '1', '0');
INSERT INTO `oc_city` VALUES ('321', '688', '315', '灵台县', '1', '0');
INSERT INTO `oc_city` VALUES ('322', '688', '315', '静宁县', '1', '0');
INSERT INTO `oc_city` VALUES ('323', '688', '0', '酒泉市', '1', '0');
INSERT INTO `oc_city` VALUES ('324', '688', '323', '敦煌市', '1', '0');
INSERT INTO `oc_city` VALUES ('325', '688', '323', '玉门市', '1', '0');
INSERT INTO `oc_city` VALUES ('326', '688', '323', '瓜州县（原安西县）', '1', '0');
INSERT INTO `oc_city` VALUES ('327', '688', '323', '肃北蒙古族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('328', '688', '323', '肃州区', '1', '0');
INSERT INTO `oc_city` VALUES ('329', '688', '323', '金塔县', '1', '0');
INSERT INTO `oc_city` VALUES ('330', '688', '323', '阿克塞哈萨克族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('331', '688', '0', '庆阳市', '1', '0');
INSERT INTO `oc_city` VALUES ('332', '688', '331', '华池县', '1', '0');
INSERT INTO `oc_city` VALUES ('333', '688', '331', '合水县', '1', '0');
INSERT INTO `oc_city` VALUES ('334', '688', '331', '宁县', '1', '0');
INSERT INTO `oc_city` VALUES ('335', '688', '331', '庆城县', '1', '0');
INSERT INTO `oc_city` VALUES ('336', '688', '331', '正宁县', '1', '0');
INSERT INTO `oc_city` VALUES ('337', '688', '331', '环县', '1', '0');
INSERT INTO `oc_city` VALUES ('338', '688', '331', '西峰区', '1', '0');
INSERT INTO `oc_city` VALUES ('339', '688', '331', '镇原县', '1', '0');
INSERT INTO `oc_city` VALUES ('340', '688', '0', '定西市', '1', '0');
INSERT INTO `oc_city` VALUES ('341', '688', '340', '临洮县', '1', '0');
INSERT INTO `oc_city` VALUES ('342', '688', '340', '安定区', '1', '0');
INSERT INTO `oc_city` VALUES ('343', '688', '340', '岷县', '1', '0');
INSERT INTO `oc_city` VALUES ('344', '688', '340', '渭源县', '1', '0');
INSERT INTO `oc_city` VALUES ('345', '688', '340', '漳县', '1', '0');
INSERT INTO `oc_city` VALUES ('346', '688', '340', '通渭县', '1', '0');
INSERT INTO `oc_city` VALUES ('347', '688', '340', '陇西县', '1', '0');
INSERT INTO `oc_city` VALUES ('348', '688', '0', '陇南市', '1', '0');
INSERT INTO `oc_city` VALUES ('349', '688', '348', '两当县', '1', '0');
INSERT INTO `oc_city` VALUES ('350', '688', '348', '宕昌县', '1', '0');
INSERT INTO `oc_city` VALUES ('351', '688', '348', '康县', '1', '0');
INSERT INTO `oc_city` VALUES ('352', '688', '348', '徽县', '1', '0');
INSERT INTO `oc_city` VALUES ('353', '688', '348', '成县', '1', '0');
INSERT INTO `oc_city` VALUES ('354', '688', '348', '文县', '1', '0');
INSERT INTO `oc_city` VALUES ('355', '688', '348', '武都区', '1', '0');
INSERT INTO `oc_city` VALUES ('356', '688', '348', '礼县', '1', '0');
INSERT INTO `oc_city` VALUES ('357', '688', '348', '西和县', '1', '0');
INSERT INTO `oc_city` VALUES ('358', '688', '0', '临夏回族自治州', '1', '0');
INSERT INTO `oc_city` VALUES ('359', '688', '358', '东乡族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('360', '688', '358', '临夏县', '1', '0');
INSERT INTO `oc_city` VALUES ('361', '688', '358', '临夏市', '1', '0');
INSERT INTO `oc_city` VALUES ('362', '688', '358', '和政县', '1', '0');
INSERT INTO `oc_city` VALUES ('363', '688', '358', '广河县', '1', '0');
INSERT INTO `oc_city` VALUES ('364', '688', '358', '康乐县', '1', '0');
INSERT INTO `oc_city` VALUES ('365', '688', '358', '永靖县', '1', '0');
INSERT INTO `oc_city` VALUES ('366', '688', '358', '积石山保安族东乡族撒拉族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('367', '688', '0', '甘南藏族自治州', '1', '0');
INSERT INTO `oc_city` VALUES ('368', '688', '367', '临潭县', '1', '0');
INSERT INTO `oc_city` VALUES ('369', '688', '367', '卓尼县', '1', '0');
INSERT INTO `oc_city` VALUES ('370', '688', '367', '合作市', '1', '0');
INSERT INTO `oc_city` VALUES ('371', '688', '367', '夏河县', '1', '0');
INSERT INTO `oc_city` VALUES ('372', '688', '367', '玛曲县', '1', '0');
INSERT INTO `oc_city` VALUES ('373', '688', '367', '碌曲县', '1', '0');
INSERT INTO `oc_city` VALUES ('374', '688', '367', '舟曲县', '1', '0');
INSERT INTO `oc_city` VALUES ('375', '688', '367', '迭部县', '1', '0');
INSERT INTO `oc_city` VALUES ('376', '689', '0', '广州市', '1', '0');
INSERT INTO `oc_city` VALUES ('377', '689', '376', '萝岗区', '1', '0');
INSERT INTO `oc_city` VALUES ('378', '689', '376', '南沙区', '1', '0');
INSERT INTO `oc_city` VALUES ('379', '689', '376', '从化市', '1', '0');
INSERT INTO `oc_city` VALUES ('380', '689', '376', '增城市', '1', '0');
INSERT INTO `oc_city` VALUES ('381', '689', '376', '天河区', '1', '0');
INSERT INTO `oc_city` VALUES ('382', '689', '376', '海珠区', '1', '0');
INSERT INTO `oc_city` VALUES ('383', '689', '376', '番禺区', '1', '0');
INSERT INTO `oc_city` VALUES ('384', '689', '376', '白云区', '1', '0');
INSERT INTO `oc_city` VALUES ('385', '689', '376', '花都区', '1', '0');
INSERT INTO `oc_city` VALUES ('386', '689', '376', '荔湾区', '1', '0');
INSERT INTO `oc_city` VALUES ('387', '689', '376', '越秀区', '1', '0');
INSERT INTO `oc_city` VALUES ('388', '689', '376', '黄埔区', '1', '0');
INSERT INTO `oc_city` VALUES ('389', '689', '0', '韶关市', '1', '0');
INSERT INTO `oc_city` VALUES ('390', '689', '389', '乐昌市', '1', '0');
INSERT INTO `oc_city` VALUES ('391', '689', '389', '乳源瑶族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('392', '689', '389', '仁化县', '1', '0');
INSERT INTO `oc_city` VALUES ('393', '689', '389', '南雄市', '1', '0');
INSERT INTO `oc_city` VALUES ('394', '689', '389', '始兴县', '1', '0');
INSERT INTO `oc_city` VALUES ('395', '689', '389', '新丰县', '1', '0');
INSERT INTO `oc_city` VALUES ('396', '689', '389', '曲江区', '1', '0');
INSERT INTO `oc_city` VALUES ('397', '689', '389', '武江区', '1', '0');
INSERT INTO `oc_city` VALUES ('398', '689', '389', '浈江区', '1', '0');
INSERT INTO `oc_city` VALUES ('399', '689', '389', '翁源县', '1', '0');
INSERT INTO `oc_city` VALUES ('400', '689', '0', '深圳市', '1', '0');
INSERT INTO `oc_city` VALUES ('401', '689', '400', '南山区', '1', '0');
INSERT INTO `oc_city` VALUES ('402', '689', '400', '宝安区', '1', '0');
INSERT INTO `oc_city` VALUES ('403', '689', '400', '盐田区', '1', '0');
INSERT INTO `oc_city` VALUES ('404', '689', '400', '福田区', '1', '0');
INSERT INTO `oc_city` VALUES ('405', '689', '400', '罗湖区', '1', '0');
INSERT INTO `oc_city` VALUES ('406', '689', '400', '龙岗区', '1', '0');
INSERT INTO `oc_city` VALUES ('407', '689', '0', '珠海市', '1', '0');
INSERT INTO `oc_city` VALUES ('408', '689', '407', '斗门区', '1', '0');
INSERT INTO `oc_city` VALUES ('409', '689', '407', '金湾区', '1', '0');
INSERT INTO `oc_city` VALUES ('410', '689', '407', '香洲区', '1', '0');
INSERT INTO `oc_city` VALUES ('411', '689', '0', '汕头市', '1', '0');
INSERT INTO `oc_city` VALUES ('412', '689', '411', '南澳县', '1', '0');
INSERT INTO `oc_city` VALUES ('413', '689', '411', '潮南区', '1', '0');
INSERT INTO `oc_city` VALUES ('414', '689', '411', '潮阳区', '1', '0');
INSERT INTO `oc_city` VALUES ('415', '689', '411', '澄海区', '1', '0');
INSERT INTO `oc_city` VALUES ('416', '689', '411', '濠江区', '1', '0');
INSERT INTO `oc_city` VALUES ('417', '689', '411', '金平区', '1', '0');
INSERT INTO `oc_city` VALUES ('418', '689', '411', '龙湖区', '1', '0');
INSERT INTO `oc_city` VALUES ('419', '689', '0', '佛山市', '1', '0');
INSERT INTO `oc_city` VALUES ('420', '689', '419', '三水区', '1', '0');
INSERT INTO `oc_city` VALUES ('421', '689', '419', '南海区', '1', '0');
INSERT INTO `oc_city` VALUES ('422', '689', '419', '禅城区', '1', '0');
INSERT INTO `oc_city` VALUES ('423', '689', '419', '顺德区', '1', '0');
INSERT INTO `oc_city` VALUES ('424', '689', '419', '高明区', '1', '0');
INSERT INTO `oc_city` VALUES ('425', '689', '0', '江门市', '1', '0');
INSERT INTO `oc_city` VALUES ('426', '689', '425', '台山市', '1', '0');
INSERT INTO `oc_city` VALUES ('427', '689', '425', '开平市', '1', '0');
INSERT INTO `oc_city` VALUES ('428', '689', '425', '恩平市', '1', '0');
INSERT INTO `oc_city` VALUES ('429', '689', '425', '新会区', '1', '0');
INSERT INTO `oc_city` VALUES ('430', '689', '425', '江海区', '1', '0');
INSERT INTO `oc_city` VALUES ('431', '689', '425', '蓬江区', '1', '0');
INSERT INTO `oc_city` VALUES ('432', '689', '425', '鹤山市', '1', '0');
INSERT INTO `oc_city` VALUES ('433', '689', '0', '湛江市', '1', '0');
INSERT INTO `oc_city` VALUES ('434', '689', '433', '吴川市', '1', '0');
INSERT INTO `oc_city` VALUES ('435', '689', '433', '坡头区', '1', '0');
INSERT INTO `oc_city` VALUES ('436', '689', '433', '廉江市', '1', '0');
INSERT INTO `oc_city` VALUES ('437', '689', '433', '徐闻县', '1', '0');
INSERT INTO `oc_city` VALUES ('438', '689', '433', '赤坎区', '1', '0');
INSERT INTO `oc_city` VALUES ('439', '689', '433', '遂溪县', '1', '0');
INSERT INTO `oc_city` VALUES ('440', '689', '433', '雷州市', '1', '0');
INSERT INTO `oc_city` VALUES ('441', '689', '433', '霞山区', '1', '0');
INSERT INTO `oc_city` VALUES ('442', '689', '433', '麻章区', '1', '0');
INSERT INTO `oc_city` VALUES ('443', '689', '0', '茂名市', '1', '0');
INSERT INTO `oc_city` VALUES ('444', '689', '443', '信宜市', '1', '0');
INSERT INTO `oc_city` VALUES ('445', '689', '443', '化州市', '1', '0');
INSERT INTO `oc_city` VALUES ('446', '689', '443', '电白县', '1', '0');
INSERT INTO `oc_city` VALUES ('447', '689', '443', '茂南区', '1', '0');
INSERT INTO `oc_city` VALUES ('448', '689', '443', '茂港区', '1', '0');
INSERT INTO `oc_city` VALUES ('449', '689', '443', '高州市', '1', '0');
INSERT INTO `oc_city` VALUES ('450', '689', '0', '肇庆市', '1', '0');
INSERT INTO `oc_city` VALUES ('451', '689', '450', '四会市', '1', '0');
INSERT INTO `oc_city` VALUES ('452', '689', '450', '封开县', '1', '0');
INSERT INTO `oc_city` VALUES ('453', '689', '450', '广宁县', '1', '0');
INSERT INTO `oc_city` VALUES ('454', '689', '450', '德庆县', '1', '0');
INSERT INTO `oc_city` VALUES ('455', '689', '450', '怀集县', '1', '0');
INSERT INTO `oc_city` VALUES ('456', '689', '450', '端州区', '1', '0');
INSERT INTO `oc_city` VALUES ('457', '689', '450', '高要市', '1', '0');
INSERT INTO `oc_city` VALUES ('458', '689', '450', '鼎湖区', '1', '0');
INSERT INTO `oc_city` VALUES ('459', '689', '0', '惠州市', '1', '0');
INSERT INTO `oc_city` VALUES ('460', '689', '459', '博罗县', '1', '0');
INSERT INTO `oc_city` VALUES ('461', '689', '459', '惠东县', '1', '0');
INSERT INTO `oc_city` VALUES ('462', '689', '459', '惠城区', '1', '0');
INSERT INTO `oc_city` VALUES ('463', '689', '459', '惠阳区', '1', '0');
INSERT INTO `oc_city` VALUES ('464', '689', '459', '龙门县', '1', '0');
INSERT INTO `oc_city` VALUES ('465', '689', '0', '梅州市', '1', '0');
INSERT INTO `oc_city` VALUES ('466', '689', '465', '丰顺县', '1', '0');
INSERT INTO `oc_city` VALUES ('467', '689', '465', '五华县', '1', '0');
INSERT INTO `oc_city` VALUES ('468', '689', '465', '兴宁市', '1', '0');
INSERT INTO `oc_city` VALUES ('469', '689', '465', '大埔县', '1', '0');
INSERT INTO `oc_city` VALUES ('470', '689', '465', '平远县', '1', '0');
INSERT INTO `oc_city` VALUES ('471', '689', '465', '梅县', '1', '0');
INSERT INTO `oc_city` VALUES ('472', '689', '465', '梅江区', '1', '0');
INSERT INTO `oc_city` VALUES ('473', '689', '465', '蕉岭县', '1', '0');
INSERT INTO `oc_city` VALUES ('474', '689', '0', '汕尾市', '1', '0');
INSERT INTO `oc_city` VALUES ('475', '689', '474', '城区', '1', '0');
INSERT INTO `oc_city` VALUES ('476', '689', '474', '海丰县', '1', '0');
INSERT INTO `oc_city` VALUES ('477', '689', '474', '陆丰市', '1', '0');
INSERT INTO `oc_city` VALUES ('478', '689', '474', '陆河县', '1', '0');
INSERT INTO `oc_city` VALUES ('479', '689', '0', '河源市', '1', '0');
INSERT INTO `oc_city` VALUES ('480', '689', '479', '东源县', '1', '0');
INSERT INTO `oc_city` VALUES ('481', '689', '479', '和平县', '1', '0');
INSERT INTO `oc_city` VALUES ('482', '689', '479', '源城区', '1', '0');
INSERT INTO `oc_city` VALUES ('483', '689', '479', '紫金县', '1', '0');
INSERT INTO `oc_city` VALUES ('484', '689', '479', '连平县', '1', '0');
INSERT INTO `oc_city` VALUES ('485', '689', '479', '龙川县', '1', '0');
INSERT INTO `oc_city` VALUES ('486', '689', '0', '阳江市', '1', '0');
INSERT INTO `oc_city` VALUES ('487', '689', '486', '江城区', '1', '0');
INSERT INTO `oc_city` VALUES ('488', '689', '486', '阳东县', '1', '0');
INSERT INTO `oc_city` VALUES ('489', '689', '486', '阳春市', '1', '0');
INSERT INTO `oc_city` VALUES ('490', '689', '486', '阳西县', '1', '0');
INSERT INTO `oc_city` VALUES ('491', '689', '0', '清远市', '1', '0');
INSERT INTO `oc_city` VALUES ('492', '689', '491', '佛冈县', '1', '0');
INSERT INTO `oc_city` VALUES ('493', '689', '491', '清城区', '1', '0');
INSERT INTO `oc_city` VALUES ('494', '689', '491', '清新县', '1', '0');
INSERT INTO `oc_city` VALUES ('495', '689', '491', '英德市', '1', '0');
INSERT INTO `oc_city` VALUES ('496', '689', '491', '连南瑶族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('497', '689', '491', '连山壮族瑶族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('498', '689', '491', '连州市', '1', '0');
INSERT INTO `oc_city` VALUES ('499', '689', '491', '阳山县', '1', '0');
INSERT INTO `oc_city` VALUES ('500', '689', '0', '东莞市', '1', '0');
INSERT INTO `oc_city` VALUES ('501', '689', '500', '东莞市', '1', '0');
INSERT INTO `oc_city` VALUES ('502', '689', '0', '中山市', '1', '0');
INSERT INTO `oc_city` VALUES ('503', '689', '502', '中山市', '1', '0');
INSERT INTO `oc_city` VALUES ('504', '689', '0', '潮州市', '1', '0');
INSERT INTO `oc_city` VALUES ('505', '689', '504', '湘桥区', '1', '0');
INSERT INTO `oc_city` VALUES ('506', '689', '504', '潮安县', '1', '0');
INSERT INTO `oc_city` VALUES ('507', '689', '504', '饶平县', '1', '0');
INSERT INTO `oc_city` VALUES ('508', '689', '0', '揭阳市', '1', '0');
INSERT INTO `oc_city` VALUES ('509', '689', '508', '惠来县', '1', '0');
INSERT INTO `oc_city` VALUES ('510', '689', '508', '揭东县', '1', '0');
INSERT INTO `oc_city` VALUES ('511', '689', '508', '揭西县', '1', '0');
INSERT INTO `oc_city` VALUES ('512', '689', '508', '普宁市', '1', '0');
INSERT INTO `oc_city` VALUES ('513', '689', '508', '榕城区', '1', '0');
INSERT INTO `oc_city` VALUES ('514', '689', '0', '云浮市', '1', '0');
INSERT INTO `oc_city` VALUES ('515', '689', '514', '云城区', '1', '0');
INSERT INTO `oc_city` VALUES ('516', '689', '514', '云安县', '1', '0');
INSERT INTO `oc_city` VALUES ('517', '689', '514', '新兴县', '1', '0');
INSERT INTO `oc_city` VALUES ('518', '689', '514', '罗定市', '1', '0');
INSERT INTO `oc_city` VALUES ('519', '689', '514', '郁南县', '1', '0');
INSERT INTO `oc_city` VALUES ('520', '690', '0', '南宁市', '1', '0');
INSERT INTO `oc_city` VALUES ('521', '690', '520', '上林县', '1', '0');
INSERT INTO `oc_city` VALUES ('522', '690', '520', '兴宁区', '1', '0');
INSERT INTO `oc_city` VALUES ('523', '690', '520', '宾阳县', '1', '0');
INSERT INTO `oc_city` VALUES ('524', '690', '520', '横县', '1', '0');
INSERT INTO `oc_city` VALUES ('525', '690', '520', '武鸣县', '1', '0');
INSERT INTO `oc_city` VALUES ('526', '690', '520', '江南区', '1', '0');
INSERT INTO `oc_city` VALUES ('527', '690', '520', '良庆区', '1', '0');
INSERT INTO `oc_city` VALUES ('528', '690', '520', '西乡塘区', '1', '0');
INSERT INTO `oc_city` VALUES ('529', '690', '520', '邕宁区', '1', '0');
INSERT INTO `oc_city` VALUES ('530', '690', '520', '隆安县', '1', '0');
INSERT INTO `oc_city` VALUES ('531', '690', '520', '青秀区', '1', '0');
INSERT INTO `oc_city` VALUES ('532', '690', '520', '马山县', '1', '0');
INSERT INTO `oc_city` VALUES ('533', '690', '0', '柳州市', '1', '0');
INSERT INTO `oc_city` VALUES ('534', '690', '533', '三江侗族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('535', '690', '533', '城中区', '1', '0');
INSERT INTO `oc_city` VALUES ('536', '690', '533', '柳北区', '1', '0');
INSERT INTO `oc_city` VALUES ('537', '690', '533', '柳南区', '1', '0');
INSERT INTO `oc_city` VALUES ('538', '690', '533', '柳城县', '1', '0');
INSERT INTO `oc_city` VALUES ('539', '690', '533', '柳江县', '1', '0');
INSERT INTO `oc_city` VALUES ('540', '690', '533', '融安县', '1', '0');
INSERT INTO `oc_city` VALUES ('541', '690', '533', '融水苗族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('542', '690', '533', '鱼峰区', '1', '0');
INSERT INTO `oc_city` VALUES ('543', '690', '533', '鹿寨县', '1', '0');
INSERT INTO `oc_city` VALUES ('544', '690', '0', '桂林市', '1', '0');
INSERT INTO `oc_city` VALUES ('545', '690', '544', '七星区', '1', '0');
INSERT INTO `oc_city` VALUES ('546', '690', '544', '临桂县', '1', '0');
INSERT INTO `oc_city` VALUES ('547', '690', '544', '全州县', '1', '0');
INSERT INTO `oc_city` VALUES ('548', '690', '544', '兴安县', '1', '0');
INSERT INTO `oc_city` VALUES ('549', '690', '544', '叠彩区', '1', '0');
INSERT INTO `oc_city` VALUES ('550', '690', '544', '平乐县', '1', '0');
INSERT INTO `oc_city` VALUES ('551', '690', '544', '恭城瑶族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('552', '690', '544', '永福县', '1', '0');
INSERT INTO `oc_city` VALUES ('553', '690', '544', '灌阳县', '1', '0');
INSERT INTO `oc_city` VALUES ('554', '690', '544', '灵川县', '1', '0');
INSERT INTO `oc_city` VALUES ('555', '690', '544', '秀峰区', '1', '0');
INSERT INTO `oc_city` VALUES ('556', '690', '544', '荔浦县', '1', '0');
INSERT INTO `oc_city` VALUES ('557', '690', '544', '象山区', '1', '0');
INSERT INTO `oc_city` VALUES ('558', '690', '544', '资源县', '1', '0');
INSERT INTO `oc_city` VALUES ('559', '690', '544', '阳朔县', '1', '0');
INSERT INTO `oc_city` VALUES ('560', '690', '544', '雁山区', '1', '0');
INSERT INTO `oc_city` VALUES ('561', '690', '544', '龙胜各族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('562', '690', '0', '梧州市', '1', '0');
INSERT INTO `oc_city` VALUES ('563', '690', '562', '万秀区', '1', '0');
INSERT INTO `oc_city` VALUES ('564', '690', '562', '岑溪市', '1', '0');
INSERT INTO `oc_city` VALUES ('565', '690', '562', '苍梧县', '1', '0');
INSERT INTO `oc_city` VALUES ('566', '690', '562', '蒙山县', '1', '0');
INSERT INTO `oc_city` VALUES ('567', '690', '562', '藤县', '1', '0');
INSERT INTO `oc_city` VALUES ('568', '690', '562', '蝶山区', '1', '0');
INSERT INTO `oc_city` VALUES ('569', '690', '562', '长洲区', '1', '0');
INSERT INTO `oc_city` VALUES ('570', '690', '0', '北海市', '1', '0');
INSERT INTO `oc_city` VALUES ('571', '690', '570', '合浦县', '1', '0');
INSERT INTO `oc_city` VALUES ('572', '690', '570', '海城区', '1', '0');
INSERT INTO `oc_city` VALUES ('573', '690', '570', '铁山港区', '1', '0');
INSERT INTO `oc_city` VALUES ('574', '690', '570', '银海区', '1', '0');
INSERT INTO `oc_city` VALUES ('575', '690', '0', '防城港市', '1', '0');
INSERT INTO `oc_city` VALUES ('576', '690', '575', '上思县', '1', '0');
INSERT INTO `oc_city` VALUES ('577', '690', '575', '东兴市', '1', '0');
INSERT INTO `oc_city` VALUES ('578', '690', '575', '港口区', '1', '0');
INSERT INTO `oc_city` VALUES ('579', '690', '575', '防城区', '1', '0');
INSERT INTO `oc_city` VALUES ('580', '690', '0', '钦州市', '1', '0');
INSERT INTO `oc_city` VALUES ('581', '690', '580', '浦北县', '1', '0');
INSERT INTO `oc_city` VALUES ('582', '690', '580', '灵山县', '1', '0');
INSERT INTO `oc_city` VALUES ('583', '690', '580', '钦北区', '1', '0');
INSERT INTO `oc_city` VALUES ('584', '690', '580', '钦南区', '1', '0');
INSERT INTO `oc_city` VALUES ('585', '690', '0', '贵港市', '1', '0');
INSERT INTO `oc_city` VALUES ('586', '690', '585', '平南县', '1', '0');
INSERT INTO `oc_city` VALUES ('587', '690', '585', '桂平市', '1', '0');
INSERT INTO `oc_city` VALUES ('588', '690', '585', '港北区', '1', '0');
INSERT INTO `oc_city` VALUES ('589', '690', '585', '港南区', '1', '0');
INSERT INTO `oc_city` VALUES ('590', '690', '585', '覃塘区', '1', '0');
INSERT INTO `oc_city` VALUES ('591', '690', '0', '玉林市', '1', '0');
INSERT INTO `oc_city` VALUES ('592', '690', '591', '兴业县', '1', '0');
INSERT INTO `oc_city` VALUES ('593', '690', '591', '北流市', '1', '0');
INSERT INTO `oc_city` VALUES ('594', '690', '591', '博白县', '1', '0');
INSERT INTO `oc_city` VALUES ('595', '690', '591', '容县', '1', '0');
INSERT INTO `oc_city` VALUES ('596', '690', '591', '玉州区', '1', '0');
INSERT INTO `oc_city` VALUES ('597', '690', '591', '陆川县', '1', '0');
INSERT INTO `oc_city` VALUES ('598', '690', '0', '百色市', '1', '0');
INSERT INTO `oc_city` VALUES ('599', '690', '598', '乐业县', '1', '0');
INSERT INTO `oc_city` VALUES ('600', '690', '598', '凌云县', '1', '0');
INSERT INTO `oc_city` VALUES ('601', '690', '598', '右江区', '1', '0');
INSERT INTO `oc_city` VALUES ('602', '690', '598', '平果县', '1', '0');
INSERT INTO `oc_city` VALUES ('603', '690', '598', '德保县', '1', '0');
INSERT INTO `oc_city` VALUES ('604', '690', '598', '田东县', '1', '0');
INSERT INTO `oc_city` VALUES ('605', '690', '598', '田林县', '1', '0');
INSERT INTO `oc_city` VALUES ('606', '690', '598', '田阳县', '1', '0');
INSERT INTO `oc_city` VALUES ('607', '690', '598', '西林县', '1', '0');
INSERT INTO `oc_city` VALUES ('608', '690', '598', '那坡县', '1', '0');
INSERT INTO `oc_city` VALUES ('609', '690', '598', '隆林各族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('610', '690', '598', '靖西县', '1', '0');
INSERT INTO `oc_city` VALUES ('611', '690', '0', '贺州市', '1', '0');
INSERT INTO `oc_city` VALUES ('612', '690', '611', '八步区', '1', '0');
INSERT INTO `oc_city` VALUES ('613', '690', '611', '富川瑶族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('614', '690', '611', '昭平县', '1', '0');
INSERT INTO `oc_city` VALUES ('615', '690', '611', '钟山县', '1', '0');
INSERT INTO `oc_city` VALUES ('616', '690', '0', '河池市', '1', '0');
INSERT INTO `oc_city` VALUES ('617', '690', '616', '东兰县', '1', '0');
INSERT INTO `oc_city` VALUES ('618', '690', '616', '凤山县', '1', '0');
INSERT INTO `oc_city` VALUES ('619', '690', '616', '南丹县', '1', '0');
INSERT INTO `oc_city` VALUES ('620', '690', '616', '大化瑶族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('621', '690', '616', '天峨县', '1', '0');
INSERT INTO `oc_city` VALUES ('622', '690', '616', '宜州市', '1', '0');
INSERT INTO `oc_city` VALUES ('623', '690', '616', '巴马瑶族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('624', '690', '616', '环江毛南族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('625', '690', '616', '罗城仫佬族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('626', '690', '616', '都安瑶族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('627', '690', '616', '金城江区', '1', '0');
INSERT INTO `oc_city` VALUES ('628', '690', '0', '来宾市', '1', '0');
INSERT INTO `oc_city` VALUES ('629', '690', '628', '兴宾区', '1', '0');
INSERT INTO `oc_city` VALUES ('630', '690', '628', '合山市', '1', '0');
INSERT INTO `oc_city` VALUES ('631', '690', '628', '忻城县', '1', '0');
INSERT INTO `oc_city` VALUES ('632', '690', '628', '武宣县', '1', '0');
INSERT INTO `oc_city` VALUES ('633', '690', '628', '象州县', '1', '0');
INSERT INTO `oc_city` VALUES ('634', '690', '628', '金秀瑶族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('635', '690', '0', '崇左市', '1', '0');
INSERT INTO `oc_city` VALUES ('636', '690', '635', '凭祥市', '1', '0');
INSERT INTO `oc_city` VALUES ('637', '690', '635', '大新县', '1', '0');
INSERT INTO `oc_city` VALUES ('638', '690', '635', '天等县', '1', '0');
INSERT INTO `oc_city` VALUES ('639', '690', '635', '宁明县', '1', '0');
INSERT INTO `oc_city` VALUES ('640', '690', '635', '扶绥县', '1', '0');
INSERT INTO `oc_city` VALUES ('641', '690', '635', '江州区', '1', '0');
INSERT INTO `oc_city` VALUES ('642', '690', '635', '龙州县', '1', '0');
INSERT INTO `oc_city` VALUES ('643', '691', '0', '贵阳市', '1', '0');
INSERT INTO `oc_city` VALUES ('644', '691', '643', '乌当区', '1', '0');
INSERT INTO `oc_city` VALUES ('645', '691', '643', '云岩区', '1', '0');
INSERT INTO `oc_city` VALUES ('646', '691', '643', '修文县', '1', '0');
INSERT INTO `oc_city` VALUES ('647', '691', '643', '南明区', '1', '0');
INSERT INTO `oc_city` VALUES ('648', '691', '643', '小河区', '1', '0');
INSERT INTO `oc_city` VALUES ('649', '691', '643', '开阳县', '1', '0');
INSERT INTO `oc_city` VALUES ('650', '691', '643', '息烽县', '1', '0');
INSERT INTO `oc_city` VALUES ('651', '691', '643', '清镇市', '1', '0');
INSERT INTO `oc_city` VALUES ('652', '691', '643', '白云区', '1', '0');
INSERT INTO `oc_city` VALUES ('653', '691', '643', '花溪区', '1', '0');
INSERT INTO `oc_city` VALUES ('654', '691', '0', '六盘水市', '1', '0');
INSERT INTO `oc_city` VALUES ('655', '691', '654', '六枝特区', '1', '0');
INSERT INTO `oc_city` VALUES ('656', '691', '654', '水城县', '1', '0');
INSERT INTO `oc_city` VALUES ('657', '691', '654', '盘县', '1', '0');
INSERT INTO `oc_city` VALUES ('658', '691', '654', '钟山区', '1', '0');
INSERT INTO `oc_city` VALUES ('659', '691', '0', '遵义市', '1', '0');
INSERT INTO `oc_city` VALUES ('660', '691', '659', '习水县', '1', '0');
INSERT INTO `oc_city` VALUES ('661', '691', '659', '仁怀市', '1', '0');
INSERT INTO `oc_city` VALUES ('662', '691', '659', '余庆县', '1', '0');
INSERT INTO `oc_city` VALUES ('663', '691', '659', '凤冈县', '1', '0');
INSERT INTO `oc_city` VALUES ('664', '691', '659', '务川仡佬族苗族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('665', '691', '659', '桐梓县', '1', '0');
INSERT INTO `oc_city` VALUES ('666', '691', '659', '正安县', '1', '0');
INSERT INTO `oc_city` VALUES ('667', '691', '659', '汇川区', '1', '0');
INSERT INTO `oc_city` VALUES ('668', '691', '659', '湄潭县', '1', '0');
INSERT INTO `oc_city` VALUES ('669', '691', '659', '红花岗区', '1', '0');
INSERT INTO `oc_city` VALUES ('670', '691', '659', '绥阳县', '1', '0');
INSERT INTO `oc_city` VALUES ('671', '691', '659', '赤水市', '1', '0');
INSERT INTO `oc_city` VALUES ('672', '691', '659', '道真仡佬族苗族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('673', '691', '659', '遵义县', '1', '0');
INSERT INTO `oc_city` VALUES ('674', '691', '0', '安顺市', '1', '0');
INSERT INTO `oc_city` VALUES ('675', '691', '674', '关岭布依族苗族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('676', '691', '674', '平坝县', '1', '0');
INSERT INTO `oc_city` VALUES ('677', '691', '674', '普定县', '1', '0');
INSERT INTO `oc_city` VALUES ('678', '691', '674', '紫云苗族布依族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('679', '691', '674', '西秀区', '1', '0');
INSERT INTO `oc_city` VALUES ('680', '691', '674', '镇宁布依族苗族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('681', '691', '0', '铜仁地区', '1', '0');
INSERT INTO `oc_city` VALUES ('682', '691', '681', '万山特区', '1', '0');
INSERT INTO `oc_city` VALUES ('683', '691', '681', '印江土家族苗族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('684', '691', '681', '德江县', '1', '0');
INSERT INTO `oc_city` VALUES ('685', '691', '681', '思南县', '1', '0');
INSERT INTO `oc_city` VALUES ('686', '691', '681', '松桃苗族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('687', '691', '681', '江口县', '1', '0');
INSERT INTO `oc_city` VALUES ('688', '691', '681', '沿河土家族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('689', '691', '681', '玉屏侗族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('690', '691', '681', '石阡县', '1', '0');
INSERT INTO `oc_city` VALUES ('691', '691', '681', '铜仁市', '1', '0');
INSERT INTO `oc_city` VALUES ('692', '691', '0', '黔西南布依族苗族自治州', '1', '0');
INSERT INTO `oc_city` VALUES ('693', '691', '692', '兴义市', '1', '0');
INSERT INTO `oc_city` VALUES ('694', '691', '692', '兴仁县', '1', '0');
INSERT INTO `oc_city` VALUES ('695', '691', '692', '册亨县', '1', '0');
INSERT INTO `oc_city` VALUES ('696', '691', '692', '安龙县', '1', '0');
INSERT INTO `oc_city` VALUES ('697', '691', '692', '普安县', '1', '0');
INSERT INTO `oc_city` VALUES ('698', '691', '692', '晴隆县', '1', '0');
INSERT INTO `oc_city` VALUES ('699', '691', '692', '望谟县', '1', '0');
INSERT INTO `oc_city` VALUES ('700', '691', '692', '贞丰县', '1', '0');
INSERT INTO `oc_city` VALUES ('701', '691', '0', '毕节地区', '1', '0');
INSERT INTO `oc_city` VALUES ('702', '691', '701', '大方县', '1', '0');
INSERT INTO `oc_city` VALUES ('703', '691', '701', '威宁彝族回族苗族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('704', '691', '701', '毕节市', '1', '0');
INSERT INTO `oc_city` VALUES ('705', '691', '701', '纳雍县', '1', '0');
INSERT INTO `oc_city` VALUES ('706', '691', '701', '织金县', '1', '0');
INSERT INTO `oc_city` VALUES ('707', '691', '701', '赫章县', '1', '0');
INSERT INTO `oc_city` VALUES ('708', '691', '701', '金沙县', '1', '0');
INSERT INTO `oc_city` VALUES ('709', '691', '701', '黔西县', '1', '0');
INSERT INTO `oc_city` VALUES ('710', '691', '0', '黔东南苗族侗族自治州', '1', '0');
INSERT INTO `oc_city` VALUES ('711', '691', '710', '三穗县', '1', '0');
INSERT INTO `oc_city` VALUES ('712', '691', '710', '丹寨县', '1', '0');
INSERT INTO `oc_city` VALUES ('713', '691', '710', '从江县', '1', '0');
INSERT INTO `oc_city` VALUES ('714', '691', '710', '凯里市', '1', '0');
INSERT INTO `oc_city` VALUES ('715', '691', '710', '剑河县', '1', '0');
INSERT INTO `oc_city` VALUES ('716', '691', '710', '台江县', '1', '0');
INSERT INTO `oc_city` VALUES ('717', '691', '710', '天柱县', '1', '0');
INSERT INTO `oc_city` VALUES ('718', '691', '710', '岑巩县', '1', '0');
INSERT INTO `oc_city` VALUES ('719', '691', '710', '施秉县', '1', '0');
INSERT INTO `oc_city` VALUES ('720', '691', '710', '榕江县', '1', '0');
INSERT INTO `oc_city` VALUES ('721', '691', '710', '锦屏县', '1', '0');
INSERT INTO `oc_city` VALUES ('722', '691', '710', '镇远县', '1', '0');
INSERT INTO `oc_city` VALUES ('723', '691', '710', '雷山县', '1', '0');
INSERT INTO `oc_city` VALUES ('724', '691', '710', '麻江县', '1', '0');
INSERT INTO `oc_city` VALUES ('725', '691', '710', '黄平县', '1', '0');
INSERT INTO `oc_city` VALUES ('726', '691', '710', '黎平县', '1', '0');
INSERT INTO `oc_city` VALUES ('727', '691', '0', '黔南布依族苗族自治州', '1', '0');
INSERT INTO `oc_city` VALUES ('728', '691', '727', '三都水族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('729', '691', '727', '平塘县', '1', '0');
INSERT INTO `oc_city` VALUES ('730', '691', '727', '惠水县', '1', '0');
INSERT INTO `oc_city` VALUES ('731', '691', '727', '独山县', '1', '0');
INSERT INTO `oc_city` VALUES ('732', '691', '727', '瓮安县', '1', '0');
INSERT INTO `oc_city` VALUES ('733', '691', '727', '福泉市', '1', '0');
INSERT INTO `oc_city` VALUES ('734', '691', '727', '罗甸县', '1', '0');
INSERT INTO `oc_city` VALUES ('735', '691', '727', '荔波县', '1', '0');
INSERT INTO `oc_city` VALUES ('736', '691', '727', '贵定县', '1', '0');
INSERT INTO `oc_city` VALUES ('737', '691', '727', '都匀市', '1', '0');
INSERT INTO `oc_city` VALUES ('738', '691', '727', '长顺县', '1', '0');
INSERT INTO `oc_city` VALUES ('739', '691', '727', '龙里县', '1', '0');
INSERT INTO `oc_city` VALUES ('740', '692', '0', '海口市', '1', '0');
INSERT INTO `oc_city` VALUES ('741', '692', '740', '琼山区', '1', '0');
INSERT INTO `oc_city` VALUES ('742', '692', '740', '秀英区', '1', '0');
INSERT INTO `oc_city` VALUES ('743', '692', '740', '美兰区', '1', '0');
INSERT INTO `oc_city` VALUES ('744', '692', '740', '龙华区', '1', '0');
INSERT INTO `oc_city` VALUES ('745', '692', '0', '三亚市', '1', '0');
INSERT INTO `oc_city` VALUES ('746', '692', '745', '三亚市', '1', '0');
INSERT INTO `oc_city` VALUES ('747', '692', '0', '五指山市', '1', '0');
INSERT INTO `oc_city` VALUES ('748', '692', '747', '五指山市', '1', '0');
INSERT INTO `oc_city` VALUES ('749', '692', '0', '琼海市', '1', '0');
INSERT INTO `oc_city` VALUES ('750', '692', '749', '琼海市', '1', '0');
INSERT INTO `oc_city` VALUES ('751', '692', '0', '儋州市', '1', '0');
INSERT INTO `oc_city` VALUES ('752', '692', '751', '儋州市', '1', '0');
INSERT INTO `oc_city` VALUES ('753', '692', '0', '文昌市', '1', '0');
INSERT INTO `oc_city` VALUES ('754', '692', '753', '文昌市', '1', '0');
INSERT INTO `oc_city` VALUES ('755', '692', '0', '万宁市', '1', '0');
INSERT INTO `oc_city` VALUES ('756', '692', '755', '万宁市', '1', '0');
INSERT INTO `oc_city` VALUES ('757', '692', '0', '东方市', '1', '0');
INSERT INTO `oc_city` VALUES ('758', '692', '757', '东方市', '1', '0');
INSERT INTO `oc_city` VALUES ('759', '692', '0', '定安县', '1', '0');
INSERT INTO `oc_city` VALUES ('760', '692', '759', '定安县', '1', '0');
INSERT INTO `oc_city` VALUES ('761', '692', '0', '屯昌县', '1', '0');
INSERT INTO `oc_city` VALUES ('762', '692', '761', '屯昌县', '1', '0');
INSERT INTO `oc_city` VALUES ('763', '692', '0', '澄迈县', '1', '0');
INSERT INTO `oc_city` VALUES ('764', '692', '763', '澄迈县', '1', '0');
INSERT INTO `oc_city` VALUES ('765', '692', '0', '临高县', '1', '0');
INSERT INTO `oc_city` VALUES ('766', '692', '765', '临高县', '1', '0');
INSERT INTO `oc_city` VALUES ('767', '692', '0', '白沙黎族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('768', '692', '767', '白沙黎族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('769', '692', '0', '昌江黎族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('770', '692', '769', '昌江黎族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('771', '692', '0', '乐东黎族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('772', '692', '771', '乐东黎族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('773', '692', '0', '陵水黎族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('774', '692', '773', '陵水黎族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('775', '692', '0', '保亭黎族苗族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('776', '692', '775', '保亭黎族苗族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('777', '692', '0', '琼中黎族苗族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('778', '692', '777', '琼中黎族苗族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('779', '692', '0', '西沙群岛', '1', '0');
INSERT INTO `oc_city` VALUES ('780', '692', '0', '南沙群岛', '1', '0');
INSERT INTO `oc_city` VALUES ('781', '692', '0', '中沙群岛的岛礁及其海域', '1', '0');
INSERT INTO `oc_city` VALUES ('782', '693', '0', '石家庄市', '1', '0');
INSERT INTO `oc_city` VALUES ('783', '693', '782', '井陉县', '1', '0');
INSERT INTO `oc_city` VALUES ('784', '693', '782', '井陉矿区', '1', '0');
INSERT INTO `oc_city` VALUES ('785', '693', '782', '元氏县', '1', '0');
INSERT INTO `oc_city` VALUES ('786', '693', '782', '平山县', '1', '0');
INSERT INTO `oc_city` VALUES ('787', '693', '782', '新乐市', '1', '0');
INSERT INTO `oc_city` VALUES ('788', '693', '782', '新华区', '1', '0');
INSERT INTO `oc_city` VALUES ('789', '693', '782', '无极县', '1', '0');
INSERT INTO `oc_city` VALUES ('790', '693', '782', '晋州市', '1', '0');
INSERT INTO `oc_city` VALUES ('791', '693', '782', '栾城县', '1', '0');
INSERT INTO `oc_city` VALUES ('792', '693', '782', '桥东区', '1', '0');
INSERT INTO `oc_city` VALUES ('793', '693', '782', '桥西区', '1', '0');
INSERT INTO `oc_city` VALUES ('794', '693', '782', '正定县', '1', '0');
INSERT INTO `oc_city` VALUES ('795', '693', '782', '深泽县', '1', '0');
INSERT INTO `oc_city` VALUES ('796', '693', '782', '灵寿县', '1', '0');
INSERT INTO `oc_city` VALUES ('797', '693', '782', '藁城市', '1', '0');
INSERT INTO `oc_city` VALUES ('798', '693', '782', '行唐县', '1', '0');
INSERT INTO `oc_city` VALUES ('799', '693', '782', '裕华区', '1', '0');
INSERT INTO `oc_city` VALUES ('800', '693', '782', '赞皇县', '1', '0');
INSERT INTO `oc_city` VALUES ('801', '693', '782', '赵县', '1', '0');
INSERT INTO `oc_city` VALUES ('802', '693', '782', '辛集市', '1', '0');
INSERT INTO `oc_city` VALUES ('803', '693', '782', '长安区', '1', '0');
INSERT INTO `oc_city` VALUES ('804', '693', '782', '高邑县', '1', '0');
INSERT INTO `oc_city` VALUES ('805', '693', '782', '鹿泉市', '1', '0');
INSERT INTO `oc_city` VALUES ('806', '693', '0', '唐山市', '1', '0');
INSERT INTO `oc_city` VALUES ('807', '693', '806', '丰南区', '1', '0');
INSERT INTO `oc_city` VALUES ('808', '693', '806', '丰润区', '1', '0');
INSERT INTO `oc_city` VALUES ('809', '693', '806', '乐亭县', '1', '0');
INSERT INTO `oc_city` VALUES ('810', '693', '806', '古冶区', '1', '0');
INSERT INTO `oc_city` VALUES ('811', '693', '806', '唐海县', '1', '0');
INSERT INTO `oc_city` VALUES ('812', '693', '806', '开平区', '1', '0');
INSERT INTO `oc_city` VALUES ('813', '693', '806', '滦南县', '1', '0');
INSERT INTO `oc_city` VALUES ('814', '693', '806', '滦县', '1', '0');
INSERT INTO `oc_city` VALUES ('815', '693', '806', '玉田县', '1', '0');
INSERT INTO `oc_city` VALUES ('816', '693', '806', '路北区', '1', '0');
INSERT INTO `oc_city` VALUES ('817', '693', '806', '路南区', '1', '0');
INSERT INTO `oc_city` VALUES ('818', '693', '806', '迁安市', '1', '0');
INSERT INTO `oc_city` VALUES ('819', '693', '806', '迁西县', '1', '0');
INSERT INTO `oc_city` VALUES ('820', '693', '806', '遵化市', '1', '0');
INSERT INTO `oc_city` VALUES ('821', '693', '0', '秦皇岛市', '1', '0');
INSERT INTO `oc_city` VALUES ('822', '693', '821', '北戴河区', '1', '0');
INSERT INTO `oc_city` VALUES ('823', '693', '821', '卢龙县', '1', '0');
INSERT INTO `oc_city` VALUES ('824', '693', '821', '山海关区', '1', '0');
INSERT INTO `oc_city` VALUES ('825', '693', '821', '抚宁县', '1', '0');
INSERT INTO `oc_city` VALUES ('826', '693', '821', '昌黎县', '1', '0');
INSERT INTO `oc_city` VALUES ('827', '693', '821', '海港区', '1', '0');
INSERT INTO `oc_city` VALUES ('828', '693', '821', '青龙满族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('829', '693', '0', '邯郸市', '1', '0');
INSERT INTO `oc_city` VALUES ('830', '693', '829', '丛台区', '1', '0');
INSERT INTO `oc_city` VALUES ('831', '693', '829', '临漳县', '1', '0');
INSERT INTO `oc_city` VALUES ('832', '693', '829', '复兴区', '1', '0');
INSERT INTO `oc_city` VALUES ('833', '693', '829', '大名县', '1', '0');
INSERT INTO `oc_city` VALUES ('834', '693', '829', '峰峰矿区', '1', '0');
INSERT INTO `oc_city` VALUES ('835', '693', '829', '广平县', '1', '0');
INSERT INTO `oc_city` VALUES ('836', '693', '829', '成安县', '1', '0');
INSERT INTO `oc_city` VALUES ('837', '693', '829', '曲周县', '1', '0');
INSERT INTO `oc_city` VALUES ('838', '693', '829', '武安市', '1', '0');
INSERT INTO `oc_city` VALUES ('839', '693', '829', '永年县', '1', '0');
INSERT INTO `oc_city` VALUES ('840', '693', '829', '涉县', '1', '0');
INSERT INTO `oc_city` VALUES ('841', '693', '829', '磁县', '1', '0');
INSERT INTO `oc_city` VALUES ('842', '693', '829', '肥乡县', '1', '0');
INSERT INTO `oc_city` VALUES ('843', '693', '829', '邯山区', '1', '0');
INSERT INTO `oc_city` VALUES ('844', '693', '829', '邯郸县', '1', '0');
INSERT INTO `oc_city` VALUES ('845', '693', '829', '邱县', '1', '0');
INSERT INTO `oc_city` VALUES ('846', '693', '829', '馆陶县', '1', '0');
INSERT INTO `oc_city` VALUES ('847', '693', '829', '魏县', '1', '0');
INSERT INTO `oc_city` VALUES ('848', '693', '829', '鸡泽县', '1', '0');
INSERT INTO `oc_city` VALUES ('849', '693', '0', '邢台市', '1', '0');
INSERT INTO `oc_city` VALUES ('850', '693', '849', '临城县', '1', '0');
INSERT INTO `oc_city` VALUES ('851', '693', '849', '临西县', '1', '0');
INSERT INTO `oc_city` VALUES ('852', '693', '849', '任县', '1', '0');
INSERT INTO `oc_city` VALUES ('853', '693', '849', '内丘县', '1', '0');
INSERT INTO `oc_city` VALUES ('854', '693', '849', '南和县', '1', '0');
INSERT INTO `oc_city` VALUES ('855', '693', '849', '南宫市', '1', '0');
INSERT INTO `oc_city` VALUES ('856', '693', '849', '威县', '1', '0');
INSERT INTO `oc_city` VALUES ('857', '693', '849', '宁晋县', '1', '0');
INSERT INTO `oc_city` VALUES ('858', '693', '849', '巨鹿县', '1', '0');
INSERT INTO `oc_city` VALUES ('859', '693', '849', '平乡县', '1', '0');
INSERT INTO `oc_city` VALUES ('860', '693', '849', '广宗县', '1', '0');
INSERT INTO `oc_city` VALUES ('861', '693', '849', '新河县', '1', '0');
INSERT INTO `oc_city` VALUES ('862', '693', '849', '柏乡县', '1', '0');
INSERT INTO `oc_city` VALUES ('863', '693', '849', '桥东区', '1', '0');
INSERT INTO `oc_city` VALUES ('864', '693', '849', '桥西区', '1', '0');
INSERT INTO `oc_city` VALUES ('865', '693', '849', '沙河市', '1', '0');
INSERT INTO `oc_city` VALUES ('866', '693', '849', '清河县', '1', '0');
INSERT INTO `oc_city` VALUES ('867', '693', '849', '邢台县', '1', '0');
INSERT INTO `oc_city` VALUES ('868', '693', '849', '隆尧县', '1', '0');
INSERT INTO `oc_city` VALUES ('869', '693', '0', '保定市', '1', '0');
INSERT INTO `oc_city` VALUES ('870', '693', '869', '北市区', '1', '0');
INSERT INTO `oc_city` VALUES ('871', '693', '869', '南市区', '1', '0');
INSERT INTO `oc_city` VALUES ('872', '693', '869', '博野县', '1', '0');
INSERT INTO `oc_city` VALUES ('873', '693', '869', '唐县', '1', '0');
INSERT INTO `oc_city` VALUES ('874', '693', '869', '安国市', '1', '0');
INSERT INTO `oc_city` VALUES ('875', '693', '869', '安新县', '1', '0');
INSERT INTO `oc_city` VALUES ('876', '693', '869', '定兴县', '1', '0');
INSERT INTO `oc_city` VALUES ('877', '693', '869', '定州市', '1', '0');
INSERT INTO `oc_city` VALUES ('878', '693', '869', '容城县', '1', '0');
INSERT INTO `oc_city` VALUES ('879', '693', '869', '徐水县', '1', '0');
INSERT INTO `oc_city` VALUES ('880', '693', '869', '新市区', '1', '0');
INSERT INTO `oc_city` VALUES ('881', '693', '869', '易县', '1', '0');
INSERT INTO `oc_city` VALUES ('882', '693', '869', '曲阳县', '1', '0');
INSERT INTO `oc_city` VALUES ('883', '693', '869', '望都县', '1', '0');
INSERT INTO `oc_city` VALUES ('884', '693', '869', '涞水县', '1', '0');
INSERT INTO `oc_city` VALUES ('885', '693', '869', '涞源县', '1', '0');
INSERT INTO `oc_city` VALUES ('886', '693', '869', '涿州市', '1', '0');
INSERT INTO `oc_city` VALUES ('887', '693', '869', '清苑县', '1', '0');
INSERT INTO `oc_city` VALUES ('888', '693', '869', '满城县', '1', '0');
INSERT INTO `oc_city` VALUES ('889', '693', '869', '蠡县', '1', '0');
INSERT INTO `oc_city` VALUES ('890', '693', '869', '阜平县', '1', '0');
INSERT INTO `oc_city` VALUES ('891', '693', '869', '雄县', '1', '0');
INSERT INTO `oc_city` VALUES ('892', '693', '869', '顺平县', '1', '0');
INSERT INTO `oc_city` VALUES ('893', '693', '869', '高碑店市', '1', '0');
INSERT INTO `oc_city` VALUES ('894', '693', '869', '高阳县', '1', '0');
INSERT INTO `oc_city` VALUES ('895', '693', '0', '张家口市', '1', '0');
INSERT INTO `oc_city` VALUES ('896', '693', '895', '万全县', '1', '0');
INSERT INTO `oc_city` VALUES ('897', '693', '895', '下花园区', '1', '0');
INSERT INTO `oc_city` VALUES ('898', '693', '895', '宣化区', '1', '0');
INSERT INTO `oc_city` VALUES ('899', '693', '895', '宣化县', '1', '0');
INSERT INTO `oc_city` VALUES ('900', '693', '895', '尚义县', '1', '0');
INSERT INTO `oc_city` VALUES ('901', '693', '895', '崇礼县', '1', '0');
INSERT INTO `oc_city` VALUES ('902', '693', '895', '康保县', '1', '0');
INSERT INTO `oc_city` VALUES ('903', '693', '895', '张北县', '1', '0');
INSERT INTO `oc_city` VALUES ('904', '693', '895', '怀安县', '1', '0');
INSERT INTO `oc_city` VALUES ('905', '693', '895', '怀来县', '1', '0');
INSERT INTO `oc_city` VALUES ('906', '693', '895', '桥东区', '1', '0');
INSERT INTO `oc_city` VALUES ('907', '693', '895', '桥西区', '1', '0');
INSERT INTO `oc_city` VALUES ('908', '693', '895', '沽源县', '1', '0');
INSERT INTO `oc_city` VALUES ('909', '693', '895', '涿鹿县', '1', '0');
INSERT INTO `oc_city` VALUES ('910', '693', '895', '蔚县', '1', '0');
INSERT INTO `oc_city` VALUES ('911', '693', '895', '赤城县', '1', '0');
INSERT INTO `oc_city` VALUES ('912', '693', '895', '阳原县', '1', '0');
INSERT INTO `oc_city` VALUES ('913', '693', '0', '承德市', '1', '0');
INSERT INTO `oc_city` VALUES ('914', '693', '913', '丰宁满族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('915', '693', '913', '兴隆县', '1', '0');
INSERT INTO `oc_city` VALUES ('916', '693', '913', '双桥区', '1', '0');
INSERT INTO `oc_city` VALUES ('917', '693', '913', '双滦区', '1', '0');
INSERT INTO `oc_city` VALUES ('918', '693', '913', '围场满族蒙古族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('919', '693', '913', '宽城满族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('920', '693', '913', '平泉县', '1', '0');
INSERT INTO `oc_city` VALUES ('921', '693', '913', '承德县', '1', '0');
INSERT INTO `oc_city` VALUES ('922', '693', '913', '滦平县', '1', '0');
INSERT INTO `oc_city` VALUES ('923', '693', '913', '隆化县', '1', '0');
INSERT INTO `oc_city` VALUES ('924', '693', '913', '鹰手营子矿区', '1', '0');
INSERT INTO `oc_city` VALUES ('925', '693', '0', '衡水市', '1', '0');
INSERT INTO `oc_city` VALUES ('926', '693', '925', '冀州市', '1', '0');
INSERT INTO `oc_city` VALUES ('927', '693', '925', '安平县', '1', '0');
INSERT INTO `oc_city` VALUES ('928', '693', '925', '故城县', '1', '0');
INSERT INTO `oc_city` VALUES ('929', '693', '925', '景县', '1', '0');
INSERT INTO `oc_city` VALUES ('930', '693', '925', '枣强县', '1', '0');
INSERT INTO `oc_city` VALUES ('931', '693', '925', '桃城区', '1', '0');
INSERT INTO `oc_city` VALUES ('932', '693', '925', '武强县', '1', '0');
INSERT INTO `oc_city` VALUES ('933', '693', '925', '武邑县', '1', '0');
INSERT INTO `oc_city` VALUES ('934', '693', '925', '深州市', '1', '0');
INSERT INTO `oc_city` VALUES ('935', '693', '925', '阜城县', '1', '0');
INSERT INTO `oc_city` VALUES ('936', '693', '925', '饶阳县', '1', '0');
INSERT INTO `oc_city` VALUES ('937', '693', '0', '廊坊市', '1', '0');
INSERT INTO `oc_city` VALUES ('938', '693', '937', '三河市', '1', '0');
INSERT INTO `oc_city` VALUES ('939', '693', '937', '固安县', '1', '0');
INSERT INTO `oc_city` VALUES ('940', '693', '937', '大厂回族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('941', '693', '937', '大城县', '1', '0');
INSERT INTO `oc_city` VALUES ('942', '693', '937', '安次区', '1', '0');
INSERT INTO `oc_city` VALUES ('943', '693', '937', '广阳区', '1', '0');
INSERT INTO `oc_city` VALUES ('944', '693', '937', '文安县', '1', '0');
INSERT INTO `oc_city` VALUES ('945', '693', '937', '永清县', '1', '0');
INSERT INTO `oc_city` VALUES ('946', '693', '937', '霸州市', '1', '0');
INSERT INTO `oc_city` VALUES ('947', '693', '937', '香河县', '1', '0');
INSERT INTO `oc_city` VALUES ('948', '693', '0', '沧州市', '1', '0');
INSERT INTO `oc_city` VALUES ('949', '693', '948', '东光县', '1', '0');
INSERT INTO `oc_city` VALUES ('950', '693', '948', '任丘市', '1', '0');
INSERT INTO `oc_city` VALUES ('951', '693', '948', '南皮县', '1', '0');
INSERT INTO `oc_city` VALUES ('952', '693', '948', '吴桥县', '1', '0');
INSERT INTO `oc_city` VALUES ('953', '693', '948', '孟村回族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('954', '693', '948', '新华区', '1', '0');
INSERT INTO `oc_city` VALUES ('955', '693', '948', '沧县', '1', '0');
INSERT INTO `oc_city` VALUES ('956', '693', '948', '河间市', '1', '0');
INSERT INTO `oc_city` VALUES ('957', '693', '948', '泊头市', '1', '0');
INSERT INTO `oc_city` VALUES ('958', '693', '948', '海兴县', '1', '0');
INSERT INTO `oc_city` VALUES ('959', '693', '948', '献县', '1', '0');
INSERT INTO `oc_city` VALUES ('960', '693', '948', '盐山县', '1', '0');
INSERT INTO `oc_city` VALUES ('961', '693', '948', '肃宁县', '1', '0');
INSERT INTO `oc_city` VALUES ('962', '693', '948', '运河区', '1', '0');
INSERT INTO `oc_city` VALUES ('963', '693', '948', '青县', '1', '0');
INSERT INTO `oc_city` VALUES ('964', '693', '948', '黄骅市', '1', '0');
INSERT INTO `oc_city` VALUES ('965', '694', '0', '哈尔滨市', '1', '0');
INSERT INTO `oc_city` VALUES ('966', '694', '965', '五常市', '1', '0');
INSERT INTO `oc_city` VALUES ('967', '694', '965', '依兰县', '1', '0');
INSERT INTO `oc_city` VALUES ('968', '694', '965', '南岗区', '1', '0');
INSERT INTO `oc_city` VALUES ('969', '694', '965', '双城市', '1', '0');
INSERT INTO `oc_city` VALUES ('970', '694', '965', '呼兰区', '1', '0');
INSERT INTO `oc_city` VALUES ('971', '694', '965', '哈尔滨市道里区', '1', '0');
INSERT INTO `oc_city` VALUES ('972', '694', '965', '宾县', '1', '0');
INSERT INTO `oc_city` VALUES ('973', '694', '965', '尚志市', '1', '0');
INSERT INTO `oc_city` VALUES ('974', '694', '965', '巴彦县', '1', '0');
INSERT INTO `oc_city` VALUES ('975', '694', '965', '平房区', '1', '0');
INSERT INTO `oc_city` VALUES ('976', '694', '965', '延寿县', '1', '0');
INSERT INTO `oc_city` VALUES ('977', '694', '965', '方正县', '1', '0');
INSERT INTO `oc_city` VALUES ('978', '694', '965', '木兰县', '1', '0');
INSERT INTO `oc_city` VALUES ('979', '694', '965', '松北区', '1', '0');
INSERT INTO `oc_city` VALUES ('980', '694', '965', '通河县', '1', '0');
INSERT INTO `oc_city` VALUES ('981', '694', '965', '道外区', '1', '0');
INSERT INTO `oc_city` VALUES ('982', '694', '965', '阿城区', '1', '0');
INSERT INTO `oc_city` VALUES ('983', '694', '965', '香坊区', '1', '0');
INSERT INTO `oc_city` VALUES ('984', '694', '0', '齐齐哈尔市', '1', '0');
INSERT INTO `oc_city` VALUES ('985', '694', '984', '依安县', '1', '0');
INSERT INTO `oc_city` VALUES ('986', '694', '984', '克东县', '1', '0');
INSERT INTO `oc_city` VALUES ('987', '694', '984', '克山县', '1', '0');
INSERT INTO `oc_city` VALUES ('988', '694', '984', '富拉尔基区', '1', '0');
INSERT INTO `oc_city` VALUES ('989', '694', '984', '富裕县', '1', '0');
INSERT INTO `oc_city` VALUES ('990', '694', '984', '建华区', '1', '0');
INSERT INTO `oc_city` VALUES ('991', '694', '984', '拜泉县', '1', '0');
INSERT INTO `oc_city` VALUES ('992', '694', '984', '昂昂溪区', '1', '0');
INSERT INTO `oc_city` VALUES ('993', '694', '984', '梅里斯达斡尔族区', '1', '0');
INSERT INTO `oc_city` VALUES ('994', '694', '984', '泰来县', '1', '0');
INSERT INTO `oc_city` VALUES ('995', '694', '984', '甘南县', '1', '0');
INSERT INTO `oc_city` VALUES ('996', '694', '984', '碾子山区', '1', '0');
INSERT INTO `oc_city` VALUES ('997', '694', '984', '讷河市', '1', '0');
INSERT INTO `oc_city` VALUES ('998', '694', '984', '铁锋区', '1', '0');
INSERT INTO `oc_city` VALUES ('999', '694', '984', '龙江县', '1', '0');
INSERT INTO `oc_city` VALUES ('1000', '694', '984', '龙沙区', '1', '0');
INSERT INTO `oc_city` VALUES ('1001', '694', '0', '鸡西市', '1', '0');
INSERT INTO `oc_city` VALUES ('1002', '694', '1001', '城子河区', '1', '0');
INSERT INTO `oc_city` VALUES ('1003', '694', '1001', '密山市', '1', '0');
INSERT INTO `oc_city` VALUES ('1004', '694', '1001', '恒山区', '1', '0');
INSERT INTO `oc_city` VALUES ('1005', '694', '1001', '梨树区', '1', '0');
INSERT INTO `oc_city` VALUES ('1006', '694', '1001', '滴道区', '1', '0');
INSERT INTO `oc_city` VALUES ('1007', '694', '1001', '虎林市', '1', '0');
INSERT INTO `oc_city` VALUES ('1008', '694', '1001', '鸡东县', '1', '0');
INSERT INTO `oc_city` VALUES ('1009', '694', '1001', '鸡冠区', '1', '0');
INSERT INTO `oc_city` VALUES ('1010', '694', '1001', '麻山区', '1', '0');
INSERT INTO `oc_city` VALUES ('1011', '694', '0', '鹤岗市', '1', '0');
INSERT INTO `oc_city` VALUES ('1012', '694', '1011', '东山区', '1', '0');
INSERT INTO `oc_city` VALUES ('1013', '694', '1011', '兴安区', '1', '0');
INSERT INTO `oc_city` VALUES ('1014', '694', '1011', '兴山区', '1', '0');
INSERT INTO `oc_city` VALUES ('1015', '694', '1011', '南山区', '1', '0');
INSERT INTO `oc_city` VALUES ('1016', '694', '1011', '向阳区', '1', '0');
INSERT INTO `oc_city` VALUES ('1017', '694', '1011', '工农区', '1', '0');
INSERT INTO `oc_city` VALUES ('1018', '694', '1011', '绥滨县', '1', '0');
INSERT INTO `oc_city` VALUES ('1019', '694', '1011', '萝北县', '1', '0');
INSERT INTO `oc_city` VALUES ('1020', '694', '0', '双鸭山市', '1', '0');
INSERT INTO `oc_city` VALUES ('1021', '694', '1020', '友谊县', '1', '0');
INSERT INTO `oc_city` VALUES ('1022', '694', '1020', '四方台区', '1', '0');
INSERT INTO `oc_city` VALUES ('1023', '694', '1020', '宝山区', '1', '0');
INSERT INTO `oc_city` VALUES ('1024', '694', '1020', '宝清县', '1', '0');
INSERT INTO `oc_city` VALUES ('1025', '694', '1020', '尖山区', '1', '0');
INSERT INTO `oc_city` VALUES ('1026', '694', '1020', '岭东区', '1', '0');
INSERT INTO `oc_city` VALUES ('1027', '694', '1020', '集贤县', '1', '0');
INSERT INTO `oc_city` VALUES ('1028', '694', '1020', '饶河县', '1', '0');
INSERT INTO `oc_city` VALUES ('1029', '694', '0', '大庆市', '1', '0');
INSERT INTO `oc_city` VALUES ('1030', '694', '1029', '大同区', '1', '0');
INSERT INTO `oc_city` VALUES ('1031', '694', '1029', '杜尔伯特蒙古族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('1032', '694', '1029', '林甸县', '1', '0');
INSERT INTO `oc_city` VALUES ('1033', '694', '1029', '红岗区', '1', '0');
INSERT INTO `oc_city` VALUES ('1034', '694', '1029', '肇州县', '1', '0');
INSERT INTO `oc_city` VALUES ('1035', '694', '1029', '肇源县', '1', '0');
INSERT INTO `oc_city` VALUES ('1036', '694', '1029', '胡路区', '1', '0');
INSERT INTO `oc_city` VALUES ('1037', '694', '1029', '萨尔图区', '1', '0');
INSERT INTO `oc_city` VALUES ('1038', '694', '1029', '龙凤区', '1', '0');
INSERT INTO `oc_city` VALUES ('1039', '694', '0', '伊春市', '1', '0');
INSERT INTO `oc_city` VALUES ('1040', '694', '1039', '上甘岭区', '1', '0');
INSERT INTO `oc_city` VALUES ('1041', '694', '1039', '乌伊岭区', '1', '0');
INSERT INTO `oc_city` VALUES ('1042', '694', '1039', '乌马河区', '1', '0');
INSERT INTO `oc_city` VALUES ('1043', '694', '1039', '五营区', '1', '0');
INSERT INTO `oc_city` VALUES ('1044', '694', '1039', '伊春区', '1', '0');
INSERT INTO `oc_city` VALUES ('1045', '694', '1039', '南岔区', '1', '0');
INSERT INTO `oc_city` VALUES ('1046', '694', '1039', '友好区', '1', '0');
INSERT INTO `oc_city` VALUES ('1047', '694', '1039', '嘉荫县', '1', '0');
INSERT INTO `oc_city` VALUES ('1048', '694', '1039', '带岭区', '1', '0');
INSERT INTO `oc_city` VALUES ('1049', '694', '1039', '新青区', '1', '0');
INSERT INTO `oc_city` VALUES ('1050', '694', '1039', '汤旺河区', '1', '0');
INSERT INTO `oc_city` VALUES ('1051', '694', '1039', '红星区', '1', '0');
INSERT INTO `oc_city` VALUES ('1052', '694', '1039', '美溪区', '1', '0');
INSERT INTO `oc_city` VALUES ('1053', '694', '1039', '翠峦区', '1', '0');
INSERT INTO `oc_city` VALUES ('1054', '694', '1039', '西林区', '1', '0');
INSERT INTO `oc_city` VALUES ('1055', '694', '1039', '金山屯区', '1', '0');
INSERT INTO `oc_city` VALUES ('1056', '694', '1039', '铁力市', '1', '0');
INSERT INTO `oc_city` VALUES ('1057', '694', '0', '佳木斯市', '1', '0');
INSERT INTO `oc_city` VALUES ('1058', '694', '1057', '东风区', '1', '0');
INSERT INTO `oc_city` VALUES ('1059', '694', '1057', '前进区', '1', '0');
INSERT INTO `oc_city` VALUES ('1060', '694', '1057', '同江市', '1', '0');
INSERT INTO `oc_city` VALUES ('1061', '694', '1057', '向阳区', '1', '0');
INSERT INTO `oc_city` VALUES ('1062', '694', '1057', '富锦市', '1', '0');
INSERT INTO `oc_city` VALUES ('1063', '694', '1057', '抚远县', '1', '0');
INSERT INTO `oc_city` VALUES ('1064', '694', '1057', '桦南县', '1', '0');
INSERT INTO `oc_city` VALUES ('1065', '694', '1057', '桦川县', '1', '0');
INSERT INTO `oc_city` VALUES ('1066', '694', '1057', '汤原县', '1', '0');
INSERT INTO `oc_city` VALUES ('1067', '694', '1057', '郊区', '1', '0');
INSERT INTO `oc_city` VALUES ('1068', '694', '0', '七台河市', '1', '0');
INSERT INTO `oc_city` VALUES ('1069', '694', '1068', '勃利县', '1', '0');
INSERT INTO `oc_city` VALUES ('1070', '694', '1068', '新兴区', '1', '0');
INSERT INTO `oc_city` VALUES ('1071', '694', '1068', '桃山区', '1', '0');
INSERT INTO `oc_city` VALUES ('1072', '694', '1068', '茄子河区', '1', '0');
INSERT INTO `oc_city` VALUES ('1073', '694', '0', '牡丹江市', '1', '0');
INSERT INTO `oc_city` VALUES ('1074', '694', '1073', '东宁县', '1', '0');
INSERT INTO `oc_city` VALUES ('1075', '694', '1073', '东安区', '1', '0');
INSERT INTO `oc_city` VALUES ('1076', '694', '1073', '宁安市', '1', '0');
INSERT INTO `oc_city` VALUES ('1077', '694', '1073', '林口县', '1', '0');
INSERT INTO `oc_city` VALUES ('1078', '694', '1073', '海林市', '1', '0');
INSERT INTO `oc_city` VALUES ('1079', '694', '1073', '爱民区', '1', '0');
INSERT INTO `oc_city` VALUES ('1080', '694', '1073', '穆棱市', '1', '0');
INSERT INTO `oc_city` VALUES ('1081', '694', '1073', '绥芬河市', '1', '0');
INSERT INTO `oc_city` VALUES ('1082', '694', '1073', '西安区', '1', '0');
INSERT INTO `oc_city` VALUES ('1083', '694', '1073', '阳明区', '1', '0');
INSERT INTO `oc_city` VALUES ('1084', '694', '0', '黑河市', '1', '0');
INSERT INTO `oc_city` VALUES ('1085', '694', '1084', '五大连池市', '1', '0');
INSERT INTO `oc_city` VALUES ('1086', '694', '1084', '北安市', '1', '0');
INSERT INTO `oc_city` VALUES ('1087', '694', '1084', '嫩江县', '1', '0');
INSERT INTO `oc_city` VALUES ('1088', '694', '1084', '孙吴县', '1', '0');
INSERT INTO `oc_city` VALUES ('1089', '694', '1084', '爱辉区', '1', '0');
INSERT INTO `oc_city` VALUES ('1090', '694', '1084', '车逊克县', '1', '0');
INSERT INTO `oc_city` VALUES ('1091', '694', '1084', '逊克县', '1', '0');
INSERT INTO `oc_city` VALUES ('1092', '694', '0', '绥化市', '1', '0');
INSERT INTO `oc_city` VALUES ('1093', '694', '1092', '兰西县', '1', '0');
INSERT INTO `oc_city` VALUES ('1094', '694', '1092', '安达市', '1', '0');
INSERT INTO `oc_city` VALUES ('1095', '694', '1092', '庆安县', '1', '0');
INSERT INTO `oc_city` VALUES ('1096', '694', '1092', '明水县', '1', '0');
INSERT INTO `oc_city` VALUES ('1097', '694', '1092', '望奎县', '1', '0');
INSERT INTO `oc_city` VALUES ('1098', '694', '1092', '海伦市', '1', '0');
INSERT INTO `oc_city` VALUES ('1099', '694', '1092', '绥化市北林区', '1', '0');
INSERT INTO `oc_city` VALUES ('1100', '694', '1092', '绥棱县', '1', '0');
INSERT INTO `oc_city` VALUES ('1101', '694', '1092', '肇东市', '1', '0');
INSERT INTO `oc_city` VALUES ('1102', '694', '1092', '青冈县', '1', '0');
INSERT INTO `oc_city` VALUES ('1103', '694', '0', '大兴安岭地区', '1', '0');
INSERT INTO `oc_city` VALUES ('1104', '694', '1103', '呼玛县', '1', '0');
INSERT INTO `oc_city` VALUES ('1105', '694', '1103', '塔河县', '1', '0');
INSERT INTO `oc_city` VALUES ('1106', '694', '1103', '大兴安岭地区加格达奇区', '1', '0');
INSERT INTO `oc_city` VALUES ('1107', '694', '1103', '大兴安岭地区呼中区', '1', '0');
INSERT INTO `oc_city` VALUES ('1108', '694', '1103', '大兴安岭地区新林区', '1', '0');
INSERT INTO `oc_city` VALUES ('1109', '694', '1103', '大兴安岭地区松岭区', '1', '0');
INSERT INTO `oc_city` VALUES ('1110', '694', '1103', '漠河县', '1', '0');
INSERT INTO `oc_city` VALUES ('1111', '695', '0', '郑州市', '1', '0');
INSERT INTO `oc_city` VALUES ('1112', '695', '1111', '上街区', '1', '0');
INSERT INTO `oc_city` VALUES ('1113', '695', '1111', '中原区', '1', '0');
INSERT INTO `oc_city` VALUES ('1114', '695', '1111', '中牟县', '1', '0');
INSERT INTO `oc_city` VALUES ('1115', '695', '1111', '二七区', '1', '0');
INSERT INTO `oc_city` VALUES ('1116', '695', '1111', '巩义市', '1', '0');
INSERT INTO `oc_city` VALUES ('1117', '695', '1111', '惠济区', '1', '0');
INSERT INTO `oc_city` VALUES ('1118', '695', '1111', '新密市', '1', '0');
INSERT INTO `oc_city` VALUES ('1119', '695', '1111', '新郑市', '1', '0');
INSERT INTO `oc_city` VALUES ('1120', '695', '1111', '登封市', '1', '0');
INSERT INTO `oc_city` VALUES ('1121', '695', '1111', '管城回族区', '1', '0');
INSERT INTO `oc_city` VALUES ('1122', '695', '1111', '荥阳市', '1', '0');
INSERT INTO `oc_city` VALUES ('1123', '695', '1111', '金水区', '1', '0');
INSERT INTO `oc_city` VALUES ('1124', '695', '0', '开封市', '1', '0');
INSERT INTO `oc_city` VALUES ('1125', '695', '1124', '兰考县', '1', '0');
INSERT INTO `oc_city` VALUES ('1126', '695', '1124', '尉氏县', '1', '0');
INSERT INTO `oc_city` VALUES ('1127', '695', '1124', '开封县', '1', '0');
INSERT INTO `oc_city` VALUES ('1128', '695', '1124', '杞县', '1', '0');
INSERT INTO `oc_city` VALUES ('1129', '695', '1124', '禹王台区', '1', '0');
INSERT INTO `oc_city` VALUES ('1130', '695', '1124', '通许县', '1', '0');
INSERT INTO `oc_city` VALUES ('1131', '695', '1124', '金明区', '1', '0');
INSERT INTO `oc_city` VALUES ('1132', '695', '1124', '顺河回族区', '1', '0');
INSERT INTO `oc_city` VALUES ('1133', '695', '1124', '鼓楼区', '1', '0');
INSERT INTO `oc_city` VALUES ('1134', '695', '1124', '龙亭区', '1', '0');
INSERT INTO `oc_city` VALUES ('1135', '695', '0', '洛阳市', '1', '0');
INSERT INTO `oc_city` VALUES ('1136', '695', '1135', '伊川县', '1', '0');
INSERT INTO `oc_city` VALUES ('1137', '695', '1135', '偃师市', '1', '0');
INSERT INTO `oc_city` VALUES ('1138', '695', '1135', '吉利区', '1', '0');
INSERT INTO `oc_city` VALUES ('1139', '695', '1135', '孟津县', '1', '0');
INSERT INTO `oc_city` VALUES ('1140', '695', '1135', '宜阳县', '1', '0');
INSERT INTO `oc_city` VALUES ('1141', '695', '1135', '嵩县', '1', '0');
INSERT INTO `oc_city` VALUES ('1142', '695', '1135', '新安县', '1', '0');
INSERT INTO `oc_city` VALUES ('1143', '695', '1135', '栾川县', '1', '0');
INSERT INTO `oc_city` VALUES ('1144', '695', '1135', '汝阳县', '1', '0');
INSERT INTO `oc_city` VALUES ('1145', '695', '1135', '洛宁县', '1', '0');
INSERT INTO `oc_city` VALUES ('1146', '695', '1135', '洛龙区', '1', '0');
INSERT INTO `oc_city` VALUES ('1147', '695', '1135', '涧西区', '1', '0');
INSERT INTO `oc_city` VALUES ('1148', '695', '1135', '瀍河回族区', '1', '0');
INSERT INTO `oc_city` VALUES ('1149', '695', '1135', '老城区', '1', '0');
INSERT INTO `oc_city` VALUES ('1150', '695', '1135', '西工区', '1', '0');
INSERT INTO `oc_city` VALUES ('1151', '695', '0', '平顶山市', '1', '0');
INSERT INTO `oc_city` VALUES ('1152', '695', '1151', '卫东区', '1', '0');
INSERT INTO `oc_city` VALUES ('1153', '695', '1151', '叶县', '1', '0');
INSERT INTO `oc_city` VALUES ('1154', '695', '1151', '宝丰县', '1', '0');
INSERT INTO `oc_city` VALUES ('1155', '695', '1151', '新华区', '1', '0');
INSERT INTO `oc_city` VALUES ('1156', '695', '1151', '汝州市', '1', '0');
INSERT INTO `oc_city` VALUES ('1157', '695', '1151', '湛河区', '1', '0');
INSERT INTO `oc_city` VALUES ('1158', '695', '1151', '石龙区', '1', '0');
INSERT INTO `oc_city` VALUES ('1159', '695', '1151', '舞钢市', '1', '0');
INSERT INTO `oc_city` VALUES ('1160', '695', '1151', '郏县', '1', '0');
INSERT INTO `oc_city` VALUES ('1161', '695', '1151', '鲁山县', '1', '0');
INSERT INTO `oc_city` VALUES ('1162', '695', '0', '安阳市', '1', '0');
INSERT INTO `oc_city` VALUES ('1163', '695', '1162', '内黄县', '1', '0');
INSERT INTO `oc_city` VALUES ('1164', '695', '1162', '北关区', '1', '0');
INSERT INTO `oc_city` VALUES ('1165', '695', '1162', '安阳县', '1', '0');
INSERT INTO `oc_city` VALUES ('1166', '695', '1162', '文峰区', '1', '0');
INSERT INTO `oc_city` VALUES ('1167', '695', '1162', '林州市', '1', '0');
INSERT INTO `oc_city` VALUES ('1168', '695', '1162', '殷都区', '1', '0');
INSERT INTO `oc_city` VALUES ('1169', '695', '1162', '汤阴县', '1', '0');
INSERT INTO `oc_city` VALUES ('1170', '695', '1162', '滑县', '1', '0');
INSERT INTO `oc_city` VALUES ('1171', '695', '1162', '龙安区', '1', '0');
INSERT INTO `oc_city` VALUES ('1172', '695', '0', '鹤壁市', '1', '0');
INSERT INTO `oc_city` VALUES ('1173', '695', '1172', '山城区', '1', '0');
INSERT INTO `oc_city` VALUES ('1174', '695', '1172', '浚县', '1', '0');
INSERT INTO `oc_city` VALUES ('1175', '695', '1172', '淇县', '1', '0');
INSERT INTO `oc_city` VALUES ('1176', '695', '1172', '淇滨区', '1', '0');
INSERT INTO `oc_city` VALUES ('1177', '695', '1172', '鹤山区', '1', '0');
INSERT INTO `oc_city` VALUES ('1178', '695', '0', '新乡市', '1', '0');
INSERT INTO `oc_city` VALUES ('1179', '695', '1178', '凤泉区', '1', '0');
INSERT INTO `oc_city` VALUES ('1180', '695', '1178', '卫滨区', '1', '0');
INSERT INTO `oc_city` VALUES ('1181', '695', '1178', '卫辉市', '1', '0');
INSERT INTO `oc_city` VALUES ('1182', '695', '1178', '原阳县', '1', '0');
INSERT INTO `oc_city` VALUES ('1183', '695', '1178', '封丘县', '1', '0');
INSERT INTO `oc_city` VALUES ('1184', '695', '1178', '延津县', '1', '0');
INSERT INTO `oc_city` VALUES ('1185', '695', '1178', '新乡县', '1', '0');
INSERT INTO `oc_city` VALUES ('1186', '695', '1178', '牧野区', '1', '0');
INSERT INTO `oc_city` VALUES ('1187', '695', '1178', '红旗区', '1', '0');
INSERT INTO `oc_city` VALUES ('1188', '695', '1178', '获嘉县', '1', '0');
INSERT INTO `oc_city` VALUES ('1189', '695', '1178', '辉县市', '1', '0');
INSERT INTO `oc_city` VALUES ('1190', '695', '1178', '长垣县', '1', '0');
INSERT INTO `oc_city` VALUES ('1191', '695', '0', '焦作市', '1', '0');
INSERT INTO `oc_city` VALUES ('1192', '695', '1191', '中站区', '1', '0');
INSERT INTO `oc_city` VALUES ('1193', '695', '1191', '修武县', '1', '0');
INSERT INTO `oc_city` VALUES ('1194', '695', '1191', '博爱县', '1', '0');
INSERT INTO `oc_city` VALUES ('1195', '695', '1191', '孟州市', '1', '0');
INSERT INTO `oc_city` VALUES ('1196', '695', '1191', '山阳区', '1', '0');
INSERT INTO `oc_city` VALUES ('1197', '695', '1191', '武陟县', '1', '0');
INSERT INTO `oc_city` VALUES ('1198', '695', '1191', '沁阳市', '1', '0');
INSERT INTO `oc_city` VALUES ('1199', '695', '1191', '温县', '1', '0');
INSERT INTO `oc_city` VALUES ('1200', '695', '1191', '解放区', '1', '0');
INSERT INTO `oc_city` VALUES ('1201', '695', '1191', '马村区', '1', '0');
INSERT INTO `oc_city` VALUES ('1202', '695', '0', '濮阳市', '1', '0');
INSERT INTO `oc_city` VALUES ('1203', '695', '1202', '华龙区', '1', '0');
INSERT INTO `oc_city` VALUES ('1204', '695', '1202', '南乐县', '1', '0');
INSERT INTO `oc_city` VALUES ('1205', '695', '1202', '台前县', '1', '0');
INSERT INTO `oc_city` VALUES ('1206', '695', '1202', '清丰县', '1', '0');
INSERT INTO `oc_city` VALUES ('1207', '695', '1202', '濮阳县', '1', '0');
INSERT INTO `oc_city` VALUES ('1208', '695', '1202', '范县', '1', '0');
INSERT INTO `oc_city` VALUES ('1209', '695', '0', '许昌市', '1', '0');
INSERT INTO `oc_city` VALUES ('1210', '695', '1209', '禹州市', '1', '0');
INSERT INTO `oc_city` VALUES ('1211', '695', '1209', '襄城县', '1', '0');
INSERT INTO `oc_city` VALUES ('1212', '695', '1209', '许昌县', '1', '0');
INSERT INTO `oc_city` VALUES ('1213', '695', '1209', '鄢陵县', '1', '0');
INSERT INTO `oc_city` VALUES ('1214', '695', '1209', '长葛市', '1', '0');
INSERT INTO `oc_city` VALUES ('1215', '695', '1209', '魏都区', '1', '0');
INSERT INTO `oc_city` VALUES ('1216', '695', '0', '漯河市', '1', '0');
INSERT INTO `oc_city` VALUES ('1217', '695', '1216', '临颍县', '1', '0');
INSERT INTO `oc_city` VALUES ('1218', '695', '1216', '召陵区', '1', '0');
INSERT INTO `oc_city` VALUES ('1219', '695', '1216', '源汇区', '1', '0');
INSERT INTO `oc_city` VALUES ('1220', '695', '1216', '舞阳县', '1', '0');
INSERT INTO `oc_city` VALUES ('1221', '695', '1216', '郾城区', '1', '0');
INSERT INTO `oc_city` VALUES ('1222', '695', '0', '三门峡市', '1', '0');
INSERT INTO `oc_city` VALUES ('1223', '695', '1222', '义马市', '1', '0');
INSERT INTO `oc_city` VALUES ('1224', '695', '1222', '卢氏县', '1', '0');
INSERT INTO `oc_city` VALUES ('1225', '695', '1222', '渑池县', '1', '0');
INSERT INTO `oc_city` VALUES ('1226', '695', '1222', '湖滨区', '1', '0');
INSERT INTO `oc_city` VALUES ('1227', '695', '1222', '灵宝市', '1', '0');
INSERT INTO `oc_city` VALUES ('1228', '695', '1222', '陕县', '1', '0');
INSERT INTO `oc_city` VALUES ('1229', '695', '0', '南阳市', '1', '0');
INSERT INTO `oc_city` VALUES ('1230', '695', '1229', '内乡县', '1', '0');
INSERT INTO `oc_city` VALUES ('1231', '695', '1229', '南召县', '1', '0');
INSERT INTO `oc_city` VALUES ('1232', '695', '1229', '卧龙区', '1', '0');
INSERT INTO `oc_city` VALUES ('1233', '695', '1229', '唐河县', '1', '0');
INSERT INTO `oc_city` VALUES ('1234', '695', '1229', '宛城区', '1', '0');
INSERT INTO `oc_city` VALUES ('1235', '695', '1229', '新野县', '1', '0');
INSERT INTO `oc_city` VALUES ('1236', '695', '1229', '方城县', '1', '0');
INSERT INTO `oc_city` VALUES ('1237', '695', '1229', '桐柏县', '1', '0');
INSERT INTO `oc_city` VALUES ('1238', '695', '1229', '淅川县', '1', '0');
INSERT INTO `oc_city` VALUES ('1239', '695', '1229', '社旗县', '1', '0');
INSERT INTO `oc_city` VALUES ('1240', '695', '1229', '西峡县', '1', '0');
INSERT INTO `oc_city` VALUES ('1241', '695', '1229', '邓州市', '1', '0');
INSERT INTO `oc_city` VALUES ('1242', '695', '1229', '镇平县', '1', '0');
INSERT INTO `oc_city` VALUES ('1243', '695', '0', '商丘市', '1', '0');
INSERT INTO `oc_city` VALUES ('1244', '695', '1243', '夏邑县', '1', '0');
INSERT INTO `oc_city` VALUES ('1245', '695', '1243', '宁陵县', '1', '0');
INSERT INTO `oc_city` VALUES ('1246', '695', '1243', '柘城县', '1', '0');
INSERT INTO `oc_city` VALUES ('1247', '695', '1243', '民权县', '1', '0');
INSERT INTO `oc_city` VALUES ('1248', '695', '1243', '永城市', '1', '0');
INSERT INTO `oc_city` VALUES ('1249', '695', '1243', '睢县', '1', '0');
INSERT INTO `oc_city` VALUES ('1250', '695', '1243', '睢阳区', '1', '0');
INSERT INTO `oc_city` VALUES ('1251', '695', '1243', '粱园区', '1', '0');
INSERT INTO `oc_city` VALUES ('1252', '695', '1243', '虞城县', '1', '0');
INSERT INTO `oc_city` VALUES ('1253', '695', '0', '信阳市', '1', '0');
INSERT INTO `oc_city` VALUES ('1254', '695', '1253', '光山县', '1', '0');
INSERT INTO `oc_city` VALUES ('1255', '695', '1253', '商城县', '1', '0');
INSERT INTO `oc_city` VALUES ('1256', '695', '1253', '固始县', '1', '0');
INSERT INTO `oc_city` VALUES ('1257', '695', '1253', '平桥区', '1', '0');
INSERT INTO `oc_city` VALUES ('1258', '695', '1253', '息县', '1', '0');
INSERT INTO `oc_city` VALUES ('1259', '695', '1253', '新县', '1', '0');
INSERT INTO `oc_city` VALUES ('1260', '695', '1253', '浉河区', '1', '0');
INSERT INTO `oc_city` VALUES ('1261', '695', '1253', '淮滨县', '1', '0');
INSERT INTO `oc_city` VALUES ('1262', '695', '1253', '潢川县', '1', '0');
INSERT INTO `oc_city` VALUES ('1263', '695', '1253', '罗山县', '1', '0');
INSERT INTO `oc_city` VALUES ('1264', '695', '0', '周口市', '1', '0');
INSERT INTO `oc_city` VALUES ('1265', '695', '1264', '商水县', '1', '0');
INSERT INTO `oc_city` VALUES ('1266', '695', '1264', '太康县', '1', '0');
INSERT INTO `oc_city` VALUES ('1267', '695', '1264', '川汇区', '1', '0');
INSERT INTO `oc_city` VALUES ('1268', '695', '1264', '扶沟县', '1', '0');
INSERT INTO `oc_city` VALUES ('1269', '695', '1264', '沈丘县', '1', '0');
INSERT INTO `oc_city` VALUES ('1270', '695', '1264', '淮阳县', '1', '0');
INSERT INTO `oc_city` VALUES ('1271', '695', '1264', '西华县', '1', '0');
INSERT INTO `oc_city` VALUES ('1272', '695', '1264', '郸城县', '1', '0');
INSERT INTO `oc_city` VALUES ('1273', '695', '1264', '项城市', '1', '0');
INSERT INTO `oc_city` VALUES ('1274', '695', '1264', '鹿邑县', '1', '0');
INSERT INTO `oc_city` VALUES ('1275', '695', '0', '驻马店市', '1', '0');
INSERT INTO `oc_city` VALUES ('1276', '695', '1275', '上蔡县', '1', '0');
INSERT INTO `oc_city` VALUES ('1277', '695', '1275', '平舆县', '1', '0');
INSERT INTO `oc_city` VALUES ('1278', '695', '1275', '新蔡县', '1', '0');
INSERT INTO `oc_city` VALUES ('1279', '695', '1275', '正阳县', '1', '0');
INSERT INTO `oc_city` VALUES ('1280', '695', '1275', '汝南县', '1', '0');
INSERT INTO `oc_city` VALUES ('1281', '695', '1275', '泌阳县', '1', '0');
INSERT INTO `oc_city` VALUES ('1282', '695', '1275', '确山县', '1', '0');
INSERT INTO `oc_city` VALUES ('1283', '695', '1275', '西平县', '1', '0');
INSERT INTO `oc_city` VALUES ('1284', '695', '1275', '遂平县', '1', '0');
INSERT INTO `oc_city` VALUES ('1285', '695', '1275', '驿城区', '1', '0');
INSERT INTO `oc_city` VALUES ('1286', '695', '0', '济源市', '1', '0');
INSERT INTO `oc_city` VALUES ('1287', '695', '1286', '济源市', '1', '0');
INSERT INTO `oc_city` VALUES ('1288', '696', '0', '中西区', '1', '0');
INSERT INTO `oc_city` VALUES ('1289', '696', '0', '东区', '1', '0');
INSERT INTO `oc_city` VALUES ('1290', '696', '0', '九龙城区', '1', '0');
INSERT INTO `oc_city` VALUES ('1291', '696', '0', '观塘区', '1', '0');
INSERT INTO `oc_city` VALUES ('1292', '696', '0', '南区', '1', '0');
INSERT INTO `oc_city` VALUES ('1293', '696', '0', '深水埗区', '1', '0');
INSERT INTO `oc_city` VALUES ('1294', '696', '0', '黄大仙区', '1', '0');
INSERT INTO `oc_city` VALUES ('1295', '696', '0', '湾仔区', '1', '0');
INSERT INTO `oc_city` VALUES ('1296', '696', '0', '油尖旺区', '1', '0');
INSERT INTO `oc_city` VALUES ('1297', '696', '0', '离岛区', '1', '0');
INSERT INTO `oc_city` VALUES ('1298', '696', '0', '葵青区', '1', '0');
INSERT INTO `oc_city` VALUES ('1299', '696', '0', '北区', '1', '0');
INSERT INTO `oc_city` VALUES ('1300', '696', '0', '西贡区', '1', '0');
INSERT INTO `oc_city` VALUES ('1301', '696', '0', '沙田区', '1', '0');
INSERT INTO `oc_city` VALUES ('1302', '696', '0', '屯门区', '1', '0');
INSERT INTO `oc_city` VALUES ('1303', '696', '0', '大埔区', '1', '0');
INSERT INTO `oc_city` VALUES ('1304', '696', '0', '荃湾区', '1', '0');
INSERT INTO `oc_city` VALUES ('1305', '696', '0', '元朗区', '1', '0');
INSERT INTO `oc_city` VALUES ('1306', '697', '0', '武汉市', '1', '0');
INSERT INTO `oc_city` VALUES ('1307', '697', '1306', '东西湖区', '1', '0');
INSERT INTO `oc_city` VALUES ('1308', '697', '1306', '新洲区', '1', '0');
INSERT INTO `oc_city` VALUES ('1309', '697', '1306', '武昌区', '1', '0');
INSERT INTO `oc_city` VALUES ('1310', '697', '1306', '汉南区', '1', '0');
INSERT INTO `oc_city` VALUES ('1311', '697', '1306', '汉阳区', '1', '0');
INSERT INTO `oc_city` VALUES ('1312', '697', '1306', '江夏区', '1', '0');
INSERT INTO `oc_city` VALUES ('1313', '697', '1306', '江岸区', '1', '0');
INSERT INTO `oc_city` VALUES ('1314', '697', '1306', '江汉区', '1', '0');
INSERT INTO `oc_city` VALUES ('1315', '697', '1306', '洪山区', '1', '0');
INSERT INTO `oc_city` VALUES ('1316', '697', '1306', '硚口区', '1', '0');
INSERT INTO `oc_city` VALUES ('1317', '697', '1306', '蔡甸区', '1', '0');
INSERT INTO `oc_city` VALUES ('1318', '697', '1306', '青山区', '1', '0');
INSERT INTO `oc_city` VALUES ('1319', '697', '1306', '黄陂区', '1', '0');
INSERT INTO `oc_city` VALUES ('1320', '697', '0', '黄石市', '1', '0');
INSERT INTO `oc_city` VALUES ('1321', '697', '1320', '下陆区', '1', '0');
INSERT INTO `oc_city` VALUES ('1322', '697', '1320', '大冶市', '1', '0');
INSERT INTO `oc_city` VALUES ('1323', '697', '1320', '西塞山区', '1', '0');
INSERT INTO `oc_city` VALUES ('1324', '697', '1320', '铁山区', '1', '0');
INSERT INTO `oc_city` VALUES ('1325', '697', '1320', '阳新县', '1', '0');
INSERT INTO `oc_city` VALUES ('1326', '697', '1320', '黄石港区', '1', '0');
INSERT INTO `oc_city` VALUES ('1327', '697', '0', '十堰市', '1', '0');
INSERT INTO `oc_city` VALUES ('1328', '697', '1327', '丹江口市', '1', '0');
INSERT INTO `oc_city` VALUES ('1329', '697', '1327', '张湾区', '1', '0');
INSERT INTO `oc_city` VALUES ('1330', '697', '1327', '房县', '1', '0');
INSERT INTO `oc_city` VALUES ('1331', '697', '1327', '竹山县', '1', '0');
INSERT INTO `oc_city` VALUES ('1332', '697', '1327', '竹溪县', '1', '0');
INSERT INTO `oc_city` VALUES ('1333', '697', '1327', '茅箭区', '1', '0');
INSERT INTO `oc_city` VALUES ('1334', '697', '1327', '郧县', '1', '0');
INSERT INTO `oc_city` VALUES ('1335', '697', '1327', '郧西县', '1', '0');
INSERT INTO `oc_city` VALUES ('1336', '697', '0', '宜昌市', '1', '0');
INSERT INTO `oc_city` VALUES ('1337', '697', '1336', '五峰土家族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('1338', '697', '1336', '伍家岗区', '1', '0');
INSERT INTO `oc_city` VALUES ('1339', '697', '1336', '兴山县', '1', '0');
INSERT INTO `oc_city` VALUES ('1340', '697', '1336', '夷陵区', '1', '0');
INSERT INTO `oc_city` VALUES ('1341', '697', '1336', '宜都市', '1', '0');
INSERT INTO `oc_city` VALUES ('1342', '697', '1336', '当阳市', '1', '0');
INSERT INTO `oc_city` VALUES ('1343', '697', '1336', '枝江市', '1', '0');
INSERT INTO `oc_city` VALUES ('1344', '697', '1336', '点军区', '1', '0');
INSERT INTO `oc_city` VALUES ('1345', '697', '1336', '秭归县', '1', '0');
INSERT INTO `oc_city` VALUES ('1346', '697', '1336', '虢亭区', '1', '0');
INSERT INTO `oc_city` VALUES ('1347', '697', '1336', '西陵区', '1', '0');
INSERT INTO `oc_city` VALUES ('1348', '697', '1336', '远安县', '1', '0');
INSERT INTO `oc_city` VALUES ('1349', '697', '1336', '长阳土家族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('1350', '697', '0', '襄樊市', '1', '0');
INSERT INTO `oc_city` VALUES ('1351', '697', '1350', '保康县', '1', '0');
INSERT INTO `oc_city` VALUES ('1352', '697', '1350', '南漳县', '1', '0');
INSERT INTO `oc_city` VALUES ('1353', '697', '1350', '宜城市', '1', '0');
INSERT INTO `oc_city` VALUES ('1354', '697', '1350', '枣阳市', '1', '0');
INSERT INTO `oc_city` VALUES ('1355', '697', '1350', '樊城区', '1', '0');
INSERT INTO `oc_city` VALUES ('1356', '697', '1350', '老河口市', '1', '0');
INSERT INTO `oc_city` VALUES ('1357', '697', '1350', '襄城区', '1', '0');
INSERT INTO `oc_city` VALUES ('1358', '697', '1350', '襄阳区', '1', '0');
INSERT INTO `oc_city` VALUES ('1359', '697', '1350', '谷城县', '1', '0');
INSERT INTO `oc_city` VALUES ('1360', '697', '0', '鄂州市', '1', '0');
INSERT INTO `oc_city` VALUES ('1361', '697', '1360', '华容区', '1', '0');
INSERT INTO `oc_city` VALUES ('1362', '697', '1360', '粱子湖', '1', '0');
INSERT INTO `oc_city` VALUES ('1363', '697', '1360', '鄂城区', '1', '0');
INSERT INTO `oc_city` VALUES ('1364', '697', '0', '荆门市', '1', '0');
INSERT INTO `oc_city` VALUES ('1365', '697', '1364', '东宝区', '1', '0');
INSERT INTO `oc_city` VALUES ('1366', '697', '1364', '京山县', '1', '0');
INSERT INTO `oc_city` VALUES ('1367', '697', '1364', '掇刀区', '1', '0');
INSERT INTO `oc_city` VALUES ('1368', '697', '1364', '沙洋县', '1', '0');
INSERT INTO `oc_city` VALUES ('1369', '697', '1364', '钟祥市', '1', '0');
INSERT INTO `oc_city` VALUES ('1370', '697', '0', '孝感市', '1', '0');
INSERT INTO `oc_city` VALUES ('1371', '697', '1370', '云梦县', '1', '0');
INSERT INTO `oc_city` VALUES ('1372', '697', '1370', '大悟县', '1', '0');
INSERT INTO `oc_city` VALUES ('1373', '697', '1370', '孝南区', '1', '0');
INSERT INTO `oc_city` VALUES ('1374', '697', '1370', '孝昌县', '1', '0');
INSERT INTO `oc_city` VALUES ('1375', '697', '1370', '安陆市', '1', '0');
INSERT INTO `oc_city` VALUES ('1376', '697', '1370', '应城市', '1', '0');
INSERT INTO `oc_city` VALUES ('1377', '697', '1370', '汉川市', '1', '0');
INSERT INTO `oc_city` VALUES ('1378', '697', '0', '荆州市', '1', '0');
INSERT INTO `oc_city` VALUES ('1379', '697', '1378', '公安县', '1', '0');
INSERT INTO `oc_city` VALUES ('1380', '697', '1378', '松滋市', '1', '0');
INSERT INTO `oc_city` VALUES ('1381', '697', '1378', '江陵县', '1', '0');
INSERT INTO `oc_city` VALUES ('1382', '697', '1378', '沙市区', '1', '0');
INSERT INTO `oc_city` VALUES ('1383', '697', '1378', '洪湖市', '1', '0');
INSERT INTO `oc_city` VALUES ('1384', '697', '1378', '监利县', '1', '0');
INSERT INTO `oc_city` VALUES ('1385', '697', '1378', '石首市', '1', '0');
INSERT INTO `oc_city` VALUES ('1386', '697', '1378', '荆州区', '1', '0');
INSERT INTO `oc_city` VALUES ('1387', '697', '0', '黄冈市', '1', '0');
INSERT INTO `oc_city` VALUES ('1388', '697', '1387', '团风县', '1', '0');
INSERT INTO `oc_city` VALUES ('1389', '697', '1387', '武穴市', '1', '0');
INSERT INTO `oc_city` VALUES ('1390', '697', '1387', '浠水县', '1', '0');
INSERT INTO `oc_city` VALUES ('1391', '697', '1387', '红安县', '1', '0');
INSERT INTO `oc_city` VALUES ('1392', '697', '1387', '罗田县', '1', '0');
INSERT INTO `oc_city` VALUES ('1393', '697', '1387', '英山县', '1', '0');
INSERT INTO `oc_city` VALUES ('1394', '697', '1387', '蕲春县', '1', '0');
INSERT INTO `oc_city` VALUES ('1395', '697', '1387', '麻城市', '1', '0');
INSERT INTO `oc_city` VALUES ('1396', '697', '1387', '黄州区', '1', '0');
INSERT INTO `oc_city` VALUES ('1397', '697', '1387', '黄梅县', '1', '0');
INSERT INTO `oc_city` VALUES ('1398', '697', '0', '咸宁市', '1', '0');
INSERT INTO `oc_city` VALUES ('1399', '697', '1398', '咸安区', '1', '0');
INSERT INTO `oc_city` VALUES ('1400', '697', '1398', '嘉鱼县', '1', '0');
INSERT INTO `oc_city` VALUES ('1401', '697', '1398', '崇阳县', '1', '0');
INSERT INTO `oc_city` VALUES ('1402', '697', '1398', '赤壁市', '1', '0');
INSERT INTO `oc_city` VALUES ('1403', '697', '1398', '通城县', '1', '0');
INSERT INTO `oc_city` VALUES ('1404', '697', '1398', '通山县', '1', '0');
INSERT INTO `oc_city` VALUES ('1405', '697', '0', '随州市', '1', '0');
INSERT INTO `oc_city` VALUES ('1406', '697', '1405', '广水市', '1', '0');
INSERT INTO `oc_city` VALUES ('1407', '697', '1405', '曾都区', '1', '0');
INSERT INTO `oc_city` VALUES ('1408', '697', '0', '恩施土家族苗族自治州', '1', '0');
INSERT INTO `oc_city` VALUES ('1409', '697', '1408', '利川市', '1', '0');
INSERT INTO `oc_city` VALUES ('1410', '697', '1408', '咸丰县', '1', '0');
INSERT INTO `oc_city` VALUES ('1411', '697', '1408', '宣恩县', '1', '0');
INSERT INTO `oc_city` VALUES ('1412', '697', '1408', '巴东县', '1', '0');
INSERT INTO `oc_city` VALUES ('1413', '697', '1408', '建始县', '1', '0');
INSERT INTO `oc_city` VALUES ('1414', '697', '1408', '恩施市', '1', '0');
INSERT INTO `oc_city` VALUES ('1415', '697', '1408', '来凤县', '1', '0');
INSERT INTO `oc_city` VALUES ('1416', '697', '1408', '鹤峰县', '1', '0');
INSERT INTO `oc_city` VALUES ('1417', '697', '0', '仙桃市', '1', '0');
INSERT INTO `oc_city` VALUES ('1418', '697', '1417', '仙桃市', '1', '0');
INSERT INTO `oc_city` VALUES ('1419', '697', '0', '潜江市', '1', '0');
INSERT INTO `oc_city` VALUES ('1420', '697', '1419', '潜江市', '1', '0');
INSERT INTO `oc_city` VALUES ('1421', '697', '0', '天门市', '1', '0');
INSERT INTO `oc_city` VALUES ('1422', '697', '1421', '天门市', '1', '0');
INSERT INTO `oc_city` VALUES ('1423', '697', '0', '神农架林区', '1', '0');
INSERT INTO `oc_city` VALUES ('1424', '697', '1423', '神农架林区', '1', '0');
INSERT INTO `oc_city` VALUES ('1425', '698', '0', '长沙市', '1', '0');
INSERT INTO `oc_city` VALUES ('1426', '698', '1425', '天心区', '1', '0');
INSERT INTO `oc_city` VALUES ('1427', '698', '1425', '宁乡县', '1', '0');
INSERT INTO `oc_city` VALUES ('1428', '698', '1425', '岳麓区', '1', '0');
INSERT INTO `oc_city` VALUES ('1429', '698', '1425', '开福区', '1', '0');
INSERT INTO `oc_city` VALUES ('1430', '698', '1425', '望城县', '1', '0');
INSERT INTO `oc_city` VALUES ('1431', '698', '1425', '浏阳市', '1', '0');
INSERT INTO `oc_city` VALUES ('1432', '698', '1425', '芙蓉区', '1', '0');
INSERT INTO `oc_city` VALUES ('1433', '698', '1425', '长沙县', '1', '0');
INSERT INTO `oc_city` VALUES ('1434', '698', '1425', '雨花区', '1', '0');
INSERT INTO `oc_city` VALUES ('1435', '698', '0', '株洲市', '1', '0');
INSERT INTO `oc_city` VALUES ('1436', '698', '1435', '天元区', '1', '0');
INSERT INTO `oc_city` VALUES ('1437', '698', '1435', '攸县', '1', '0');
INSERT INTO `oc_city` VALUES ('1438', '698', '1435', '株洲县', '1', '0');
INSERT INTO `oc_city` VALUES ('1439', '698', '1435', '炎陵县', '1', '0');
INSERT INTO `oc_city` VALUES ('1440', '698', '1435', '石峰区', '1', '0');
INSERT INTO `oc_city` VALUES ('1441', '698', '1435', '芦淞区', '1', '0');
INSERT INTO `oc_city` VALUES ('1442', '698', '1435', '茶陵县', '1', '0');
INSERT INTO `oc_city` VALUES ('1443', '698', '1435', '荷塘区', '1', '0');
INSERT INTO `oc_city` VALUES ('1444', '698', '1435', '醴陵市', '1', '0');
INSERT INTO `oc_city` VALUES ('1445', '698', '0', '湘潭市', '1', '0');
INSERT INTO `oc_city` VALUES ('1446', '698', '1445', '岳塘区', '1', '0');
INSERT INTO `oc_city` VALUES ('1447', '698', '1445', '湘乡市', '1', '0');
INSERT INTO `oc_city` VALUES ('1448', '698', '1445', '湘潭县', '1', '0');
INSERT INTO `oc_city` VALUES ('1449', '698', '1445', '雨湖区', '1', '0');
INSERT INTO `oc_city` VALUES ('1450', '698', '1445', '韶山市', '1', '0');
INSERT INTO `oc_city` VALUES ('1451', '698', '0', '衡阳市', '1', '0');
INSERT INTO `oc_city` VALUES ('1452', '698', '1451', '南岳区', '1', '0');
INSERT INTO `oc_city` VALUES ('1453', '698', '1451', '常宁市', '1', '0');
INSERT INTO `oc_city` VALUES ('1454', '698', '1451', '珠晖区', '1', '0');
INSERT INTO `oc_city` VALUES ('1455', '698', '1451', '石鼓区', '1', '0');
INSERT INTO `oc_city` VALUES ('1456', '698', '1451', '祁东县', '1', '0');
INSERT INTO `oc_city` VALUES ('1457', '698', '1451', '耒阳市', '1', '0');
INSERT INTO `oc_city` VALUES ('1458', '698', '1451', '蒸湘区', '1', '0');
INSERT INTO `oc_city` VALUES ('1459', '698', '1451', '衡东县', '1', '0');
INSERT INTO `oc_city` VALUES ('1460', '698', '1451', '衡南县', '1', '0');
INSERT INTO `oc_city` VALUES ('1461', '698', '1451', '衡山县', '1', '0');
INSERT INTO `oc_city` VALUES ('1462', '698', '1451', '衡阳县', '1', '0');
INSERT INTO `oc_city` VALUES ('1463', '698', '1451', '雁峰区', '1', '0');
INSERT INTO `oc_city` VALUES ('1464', '698', '0', '邵阳市', '1', '0');
INSERT INTO `oc_city` VALUES ('1465', '698', '1464', '北塔区', '1', '0');
INSERT INTO `oc_city` VALUES ('1466', '698', '1464', '双清区', '1', '0');
INSERT INTO `oc_city` VALUES ('1467', '698', '1464', '城步苗族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('1468', '698', '1464', '大祥区', '1', '0');
INSERT INTO `oc_city` VALUES ('1469', '698', '1464', '新宁县', '1', '0');
INSERT INTO `oc_city` VALUES ('1470', '698', '1464', '新邵县', '1', '0');
INSERT INTO `oc_city` VALUES ('1471', '698', '1464', '武冈市', '1', '0');
INSERT INTO `oc_city` VALUES ('1472', '698', '1464', '洞口县', '1', '0');
INSERT INTO `oc_city` VALUES ('1473', '698', '1464', '绥宁县', '1', '0');
INSERT INTO `oc_city` VALUES ('1474', '698', '1464', '邵东县', '1', '0');
INSERT INTO `oc_city` VALUES ('1475', '698', '1464', '邵阳县', '1', '0');
INSERT INTO `oc_city` VALUES ('1476', '698', '1464', '隆回县', '1', '0');
INSERT INTO `oc_city` VALUES ('1477', '698', '0', '岳阳市', '1', '0');
INSERT INTO `oc_city` VALUES ('1478', '698', '1477', '临湘市', '1', '0');
INSERT INTO `oc_city` VALUES ('1479', '698', '1477', '云溪区', '1', '0');
INSERT INTO `oc_city` VALUES ('1480', '698', '1477', '华容县', '1', '0');
INSERT INTO `oc_city` VALUES ('1481', '698', '1477', '君山区', '1', '0');
INSERT INTO `oc_city` VALUES ('1482', '698', '1477', '岳阳县', '1', '0');
INSERT INTO `oc_city` VALUES ('1483', '698', '1477', '岳阳楼区', '1', '0');
INSERT INTO `oc_city` VALUES ('1484', '698', '1477', '平江县', '1', '0');
INSERT INTO `oc_city` VALUES ('1485', '698', '1477', '汨罗市', '1', '0');
INSERT INTO `oc_city` VALUES ('1486', '698', '1477', '湘阴县', '1', '0');
INSERT INTO `oc_city` VALUES ('1487', '698', '0', '常德市', '1', '0');
INSERT INTO `oc_city` VALUES ('1488', '698', '1487', '临澧县', '1', '0');
INSERT INTO `oc_city` VALUES ('1489', '698', '1487', '安乡县', '1', '0');
INSERT INTO `oc_city` VALUES ('1490', '698', '1487', '桃源县', '1', '0');
INSERT INTO `oc_city` VALUES ('1491', '698', '1487', '武陵区', '1', '0');
INSERT INTO `oc_city` VALUES ('1492', '698', '1487', '汉寿县', '1', '0');
INSERT INTO `oc_city` VALUES ('1493', '698', '1487', '津市市', '1', '0');
INSERT INTO `oc_city` VALUES ('1494', '698', '1487', '澧县', '1', '0');
INSERT INTO `oc_city` VALUES ('1495', '698', '1487', '石门县', '1', '0');
INSERT INTO `oc_city` VALUES ('1496', '698', '1487', '鼎城区', '1', '0');
INSERT INTO `oc_city` VALUES ('1497', '698', '0', '张家界市', '1', '0');
INSERT INTO `oc_city` VALUES ('1498', '698', '1497', '慈利县', '1', '0');
INSERT INTO `oc_city` VALUES ('1499', '698', '1497', '桑植县', '1', '0');
INSERT INTO `oc_city` VALUES ('1500', '698', '1497', '武陵源区', '1', '0');
INSERT INTO `oc_city` VALUES ('1501', '698', '1497', '永定区', '1', '0');
INSERT INTO `oc_city` VALUES ('1502', '698', '0', '益阳市', '1', '0');
INSERT INTO `oc_city` VALUES ('1503', '698', '1502', '南县', '1', '0');
INSERT INTO `oc_city` VALUES ('1504', '698', '1502', '安化县', '1', '0');
INSERT INTO `oc_city` VALUES ('1505', '698', '1502', '桃江县', '1', '0');
INSERT INTO `oc_city` VALUES ('1506', '698', '1502', '沅江市', '1', '0');
INSERT INTO `oc_city` VALUES ('1507', '698', '1502', '资阳区', '1', '0');
INSERT INTO `oc_city` VALUES ('1508', '698', '1502', '赫山区', '1', '0');
INSERT INTO `oc_city` VALUES ('1509', '698', '0', '郴州市', '1', '0');
INSERT INTO `oc_city` VALUES ('1510', '698', '1509', '临武县', '1', '0');
INSERT INTO `oc_city` VALUES ('1511', '698', '1509', '北湖区', '1', '0');
INSERT INTO `oc_city` VALUES ('1512', '698', '1509', '嘉禾县', '1', '0');
INSERT INTO `oc_city` VALUES ('1513', '698', '1509', '安仁县', '1', '0');
INSERT INTO `oc_city` VALUES ('1514', '698', '1509', '宜章县', '1', '0');
INSERT INTO `oc_city` VALUES ('1515', '698', '1509', '桂东县', '1', '0');
INSERT INTO `oc_city` VALUES ('1516', '698', '1509', '桂阳县', '1', '0');
INSERT INTO `oc_city` VALUES ('1517', '698', '1509', '永兴县', '1', '0');
INSERT INTO `oc_city` VALUES ('1518', '698', '1509', '汝城县', '1', '0');
INSERT INTO `oc_city` VALUES ('1519', '698', '1509', '苏仙区', '1', '0');
INSERT INTO `oc_city` VALUES ('1520', '698', '1509', '资兴市', '1', '0');
INSERT INTO `oc_city` VALUES ('1521', '698', '0', '永州市', '1', '0');
INSERT INTO `oc_city` VALUES ('1522', '698', '1521', '东安县', '1', '0');
INSERT INTO `oc_city` VALUES ('1523', '698', '1521', '冷水滩区', '1', '0');
INSERT INTO `oc_city` VALUES ('1524', '698', '1521', '双牌县', '1', '0');
INSERT INTO `oc_city` VALUES ('1525', '698', '1521', '宁远县', '1', '0');
INSERT INTO `oc_city` VALUES ('1526', '698', '1521', '新田县', '1', '0');
INSERT INTO `oc_city` VALUES ('1527', '698', '1521', '江华瑶族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('1528', '698', '1521', '江永县', '1', '0');
INSERT INTO `oc_city` VALUES ('1529', '698', '1521', '祁阳县', '1', '0');
INSERT INTO `oc_city` VALUES ('1530', '698', '1521', '蓝山县', '1', '0');
INSERT INTO `oc_city` VALUES ('1531', '698', '1521', '道县', '1', '0');
INSERT INTO `oc_city` VALUES ('1532', '698', '1521', '零陵区', '1', '0');
INSERT INTO `oc_city` VALUES ('1533', '698', '0', '怀化市', '1', '0');
INSERT INTO `oc_city` VALUES ('1534', '698', '1533', '中方县', '1', '0');
INSERT INTO `oc_city` VALUES ('1535', '698', '1533', '会同县', '1', '0');
INSERT INTO `oc_city` VALUES ('1536', '698', '1533', '新晃侗族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('1537', '698', '1533', '沅陵县', '1', '0');
INSERT INTO `oc_city` VALUES ('1538', '698', '1533', '洪江市/洪江区', '1', '0');
INSERT INTO `oc_city` VALUES ('1539', '698', '1533', '溆浦县', '1', '0');
INSERT INTO `oc_city` VALUES ('1540', '698', '1533', '芷江侗族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('1541', '698', '1533', '辰溪县', '1', '0');
INSERT INTO `oc_city` VALUES ('1542', '698', '1533', '通道侗族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('1543', '698', '1533', '靖州苗族侗族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('1544', '698', '1533', '鹤城区', '1', '0');
INSERT INTO `oc_city` VALUES ('1545', '698', '1533', '麻阳苗族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('1546', '698', '0', '娄底市', '1', '0');
INSERT INTO `oc_city` VALUES ('1547', '698', '1546', '冷水江市', '1', '0');
INSERT INTO `oc_city` VALUES ('1548', '698', '1546', '双峰县', '1', '0');
INSERT INTO `oc_city` VALUES ('1549', '698', '1546', '娄星区', '1', '0');
INSERT INTO `oc_city` VALUES ('1550', '698', '1546', '新化县', '1', '0');
INSERT INTO `oc_city` VALUES ('1551', '698', '1546', '涟源市', '1', '0');
INSERT INTO `oc_city` VALUES ('1552', '698', '0', '湘西土家族苗族自治州', '1', '0');
INSERT INTO `oc_city` VALUES ('1553', '698', '1552', '保靖县', '1', '0');
INSERT INTO `oc_city` VALUES ('1554', '698', '1552', '凤凰县', '1', '0');
INSERT INTO `oc_city` VALUES ('1555', '698', '1552', '古丈县', '1', '0');
INSERT INTO `oc_city` VALUES ('1556', '698', '1552', '吉首市', '1', '0');
INSERT INTO `oc_city` VALUES ('1557', '698', '1552', '永顺县', '1', '0');
INSERT INTO `oc_city` VALUES ('1558', '698', '1552', '泸溪县', '1', '0');
INSERT INTO `oc_city` VALUES ('1559', '698', '1552', '花垣县', '1', '0');
INSERT INTO `oc_city` VALUES ('1560', '698', '1552', '龙山县', '1', '0');
INSERT INTO `oc_city` VALUES ('1561', '699', '0', '呼和浩特市', '1', '0');
INSERT INTO `oc_city` VALUES ('1562', '699', '1561', '和林格尔县', '1', '0');
INSERT INTO `oc_city` VALUES ('1563', '699', '1561', '回民区', '1', '0');
INSERT INTO `oc_city` VALUES ('1564', '699', '1561', '土默特左旗', '1', '0');
INSERT INTO `oc_city` VALUES ('1565', '699', '1561', '托克托县', '1', '0');
INSERT INTO `oc_city` VALUES ('1566', '699', '1561', '新城区', '1', '0');
INSERT INTO `oc_city` VALUES ('1567', '699', '1561', '武川县', '1', '0');
INSERT INTO `oc_city` VALUES ('1568', '699', '1561', '清水河县', '1', '0');
INSERT INTO `oc_city` VALUES ('1569', '699', '1561', '玉泉区', '1', '0');
INSERT INTO `oc_city` VALUES ('1570', '699', '1561', '赛罕区', '1', '0');
INSERT INTO `oc_city` VALUES ('1571', '699', '0', '包头市', '1', '0');
INSERT INTO `oc_city` VALUES ('1572', '699', '1571', '东河区', '1', '0');
INSERT INTO `oc_city` VALUES ('1573', '699', '1571', '九原区', '1', '0');
INSERT INTO `oc_city` VALUES ('1574', '699', '1571', '固阳县', '1', '0');
INSERT INTO `oc_city` VALUES ('1575', '699', '1571', '土默特右旗', '1', '0');
INSERT INTO `oc_city` VALUES ('1576', '699', '1571', '昆都仑区', '1', '0');
INSERT INTO `oc_city` VALUES ('1577', '699', '1571', '白云矿区', '1', '0');
INSERT INTO `oc_city` VALUES ('1578', '699', '1571', '石拐区', '1', '0');
INSERT INTO `oc_city` VALUES ('1579', '699', '1571', '达尔罕茂明安联合旗', '1', '0');
INSERT INTO `oc_city` VALUES ('1580', '699', '1571', '青山区', '1', '0');
INSERT INTO `oc_city` VALUES ('1581', '699', '0', '乌海市', '1', '0');
INSERT INTO `oc_city` VALUES ('1582', '699', '1581', '乌达区', '1', '0');
INSERT INTO `oc_city` VALUES ('1583', '699', '1581', '海勃湾区', '1', '0');
INSERT INTO `oc_city` VALUES ('1584', '699', '1581', '海南区', '1', '0');
INSERT INTO `oc_city` VALUES ('1585', '699', '0', '赤峰市', '1', '0');
INSERT INTO `oc_city` VALUES ('1586', '699', '1585', '元宝山区', '1', '0');
INSERT INTO `oc_city` VALUES ('1587', '699', '1585', '克什克腾旗', '1', '0');
INSERT INTO `oc_city` VALUES ('1588', '699', '1585', '喀喇沁旗', '1', '0');
INSERT INTO `oc_city` VALUES ('1589', '699', '1585', '宁城县', '1', '0');
INSERT INTO `oc_city` VALUES ('1590', '699', '1585', '巴林右旗', '1', '0');
INSERT INTO `oc_city` VALUES ('1591', '699', '1585', '巴林左旗', '1', '0');
INSERT INTO `oc_city` VALUES ('1592', '699', '1585', '敖汉旗', '1', '0');
INSERT INTO `oc_city` VALUES ('1593', '699', '1585', '松山区', '1', '0');
INSERT INTO `oc_city` VALUES ('1594', '699', '1585', '林西县', '1', '0');
INSERT INTO `oc_city` VALUES ('1595', '699', '1585', '红山区', '1', '0');
INSERT INTO `oc_city` VALUES ('1596', '699', '1585', '翁牛特旗', '1', '0');
INSERT INTO `oc_city` VALUES ('1597', '699', '1585', '阿鲁科尔沁旗', '1', '0');
INSERT INTO `oc_city` VALUES ('1598', '699', '0', '通辽市', '1', '0');
INSERT INTO `oc_city` VALUES ('1599', '699', '1598', '奈曼旗', '1', '0');
INSERT INTO `oc_city` VALUES ('1600', '699', '1598', '库伦旗', '1', '0');
INSERT INTO `oc_city` VALUES ('1601', '699', '1598', '开鲁县', '1', '0');
INSERT INTO `oc_city` VALUES ('1602', '699', '1598', '扎鲁特旗', '1', '0');
INSERT INTO `oc_city` VALUES ('1603', '699', '1598', '科尔沁区', '1', '0');
INSERT INTO `oc_city` VALUES ('1604', '699', '1598', '科尔沁左翼中旗', '1', '0');
INSERT INTO `oc_city` VALUES ('1605', '699', '1598', '科尔沁左翼后旗', '1', '0');
INSERT INTO `oc_city` VALUES ('1606', '699', '1598', '霍林郭勒市', '1', '0');
INSERT INTO `oc_city` VALUES ('1607', '699', '0', '鄂尔多斯市', '1', '0');
INSERT INTO `oc_city` VALUES ('1608', '699', '1607', '东胜区', '1', '0');
INSERT INTO `oc_city` VALUES ('1609', '699', '1607', '乌审旗', '1', '0');
INSERT INTO `oc_city` VALUES ('1610', '699', '1607', '伊金霍洛旗', '1', '0');
INSERT INTO `oc_city` VALUES ('1611', '699', '1607', '准格尔旗', '1', '0');
INSERT INTO `oc_city` VALUES ('1612', '699', '1607', '杭锦旗', '1', '0');
INSERT INTO `oc_city` VALUES ('1613', '699', '1607', '达拉特旗', '1', '0');
INSERT INTO `oc_city` VALUES ('1614', '699', '1607', '鄂东胜区', '1', '0');
INSERT INTO `oc_city` VALUES ('1615', '699', '1607', '鄂托克前旗', '1', '0');
INSERT INTO `oc_city` VALUES ('1616', '699', '1607', '鄂托克旗', '1', '0');
INSERT INTO `oc_city` VALUES ('1617', '699', '0', '呼伦贝尔市', '1', '0');
INSERT INTO `oc_city` VALUES ('1618', '699', '1617', '扎兰屯市', '1', '0');
INSERT INTO `oc_city` VALUES ('1619', '699', '1617', '新巴尔虎右旗', '1', '0');
INSERT INTO `oc_city` VALUES ('1620', '699', '1617', '新巴尔虎左旗', '1', '0');
INSERT INTO `oc_city` VALUES ('1621', '699', '1617', '根河市', '1', '0');
INSERT INTO `oc_city` VALUES ('1622', '699', '1617', '海拉尔区', '1', '0');
INSERT INTO `oc_city` VALUES ('1623', '699', '1617', '满洲里市', '1', '0');
INSERT INTO `oc_city` VALUES ('1624', '699', '1617', '牙克石市', '1', '0');
INSERT INTO `oc_city` VALUES ('1625', '699', '1617', '莫力达瓦达斡尔族自治旗', '1', '0');
INSERT INTO `oc_city` VALUES ('1626', '699', '1617', '鄂伦春自治旗', '1', '0');
INSERT INTO `oc_city` VALUES ('1627', '699', '1617', '鄂温克族自治旗', '1', '0');
INSERT INTO `oc_city` VALUES ('1628', '699', '1617', '阿荣旗', '1', '0');
INSERT INTO `oc_city` VALUES ('1629', '699', '1617', '陈巴尔虎旗', '1', '0');
INSERT INTO `oc_city` VALUES ('1630', '699', '1617', '额尔古纳市', '1', '0');
INSERT INTO `oc_city` VALUES ('1631', '699', '0', '巴彦淖尔市', '1', '0');
INSERT INTO `oc_city` VALUES ('1632', '699', '1631', '临河区', '1', '0');
INSERT INTO `oc_city` VALUES ('1633', '699', '1631', '乌拉特中旗', '1', '0');
INSERT INTO `oc_city` VALUES ('1634', '699', '1631', '乌拉特前旗', '1', '0');
INSERT INTO `oc_city` VALUES ('1635', '699', '1631', '乌拉特后旗', '1', '0');
INSERT INTO `oc_city` VALUES ('1636', '699', '1631', '五原县', '1', '0');
INSERT INTO `oc_city` VALUES ('1637', '699', '1631', '杭锦后旗', '1', '0');
INSERT INTO `oc_city` VALUES ('1638', '699', '1631', '磴口县', '1', '0');
INSERT INTO `oc_city` VALUES ('1639', '699', '0', '乌兰察布市', '1', '0');
INSERT INTO `oc_city` VALUES ('1640', '699', '1639', '丰镇市', '1', '0');
INSERT INTO `oc_city` VALUES ('1641', '699', '1639', '兴和县', '1', '0');
INSERT INTO `oc_city` VALUES ('1642', '699', '1639', '凉城县', '1', '0');
INSERT INTO `oc_city` VALUES ('1643', '699', '1639', '化德县', '1', '0');
INSERT INTO `oc_city` VALUES ('1644', '699', '1639', '卓资县', '1', '0');
INSERT INTO `oc_city` VALUES ('1645', '699', '1639', '商都县', '1', '0');
INSERT INTO `oc_city` VALUES ('1646', '699', '1639', '四子王旗', '1', '0');
INSERT INTO `oc_city` VALUES ('1647', '699', '1639', '察哈尔右翼中旗', '1', '0');
INSERT INTO `oc_city` VALUES ('1648', '699', '1639', '察哈尔右翼前旗', '1', '0');
INSERT INTO `oc_city` VALUES ('1649', '699', '1639', '察哈尔右翼后旗', '1', '0');
INSERT INTO `oc_city` VALUES ('1650', '699', '1639', '集宁区', '1', '0');
INSERT INTO `oc_city` VALUES ('1651', '699', '0', '兴安盟', '1', '0');
INSERT INTO `oc_city` VALUES ('1652', '699', '1651', '乌兰浩特市', '1', '0');
INSERT INTO `oc_city` VALUES ('1653', '699', '1651', '扎赉特旗', '1', '0');
INSERT INTO `oc_city` VALUES ('1654', '699', '1651', '科尔沁右翼中旗', '1', '0');
INSERT INTO `oc_city` VALUES ('1655', '699', '1651', '科尔沁右翼前旗', '1', '0');
INSERT INTO `oc_city` VALUES ('1656', '699', '1651', '突泉县', '1', '0');
INSERT INTO `oc_city` VALUES ('1657', '699', '1651', '阿尔山市', '1', '0');
INSERT INTO `oc_city` VALUES ('1658', '699', '0', '锡林郭勒盟', '1', '0');
INSERT INTO `oc_city` VALUES ('1659', '699', '1658', '东乌珠穆沁旗', '1', '0');
INSERT INTO `oc_city` VALUES ('1660', '699', '1658', '二连浩特市', '1', '0');
INSERT INTO `oc_city` VALUES ('1661', '699', '1658', '多伦县', '1', '0');
INSERT INTO `oc_city` VALUES ('1662', '699', '1658', '太仆寺旗', '1', '0');
INSERT INTO `oc_city` VALUES ('1663', '699', '1658', '正蓝旗', '1', '0');
INSERT INTO `oc_city` VALUES ('1664', '699', '1658', '正镶白旗', '1', '0');
INSERT INTO `oc_city` VALUES ('1665', '699', '1658', '苏尼特右旗', '1', '0');
INSERT INTO `oc_city` VALUES ('1666', '699', '1658', '苏尼特左旗', '1', '0');
INSERT INTO `oc_city` VALUES ('1667', '699', '1658', '西乌珠穆沁旗', '1', '0');
INSERT INTO `oc_city` VALUES ('1668', '699', '1658', '锡林浩特市', '1', '0');
INSERT INTO `oc_city` VALUES ('1669', '699', '1658', '镶黄旗', '1', '0');
INSERT INTO `oc_city` VALUES ('1670', '699', '1658', '阿巴嘎旗', '1', '0');
INSERT INTO `oc_city` VALUES ('1671', '699', '0', '阿拉善盟', '1', '0');
INSERT INTO `oc_city` VALUES ('1672', '699', '1671', '阿拉善右旗', '1', '0');
INSERT INTO `oc_city` VALUES ('1673', '699', '1671', '阿拉善左旗', '1', '0');
INSERT INTO `oc_city` VALUES ('1674', '699', '1671', '额济纳旗', '1', '0');
INSERT INTO `oc_city` VALUES ('1675', '700', '0', '南京市', '1', '0');
INSERT INTO `oc_city` VALUES ('1676', '700', '1675', '下关区', '1', '0');
INSERT INTO `oc_city` VALUES ('1677', '700', '1675', '六合区', '1', '0');
INSERT INTO `oc_city` VALUES ('1678', '700', '1675', '建邺区', '1', '0');
INSERT INTO `oc_city` VALUES ('1679', '700', '1675', '栖霞区', '1', '0');
INSERT INTO `oc_city` VALUES ('1680', '700', '1675', '江宁区', '1', '0');
INSERT INTO `oc_city` VALUES ('1681', '700', '1675', '浦口区', '1', '0');
INSERT INTO `oc_city` VALUES ('1682', '700', '1675', '溧水县', '1', '0');
INSERT INTO `oc_city` VALUES ('1683', '700', '1675', '玄武区', '1', '0');
INSERT INTO `oc_city` VALUES ('1684', '700', '1675', '白下区', '1', '0');
INSERT INTO `oc_city` VALUES ('1685', '700', '1675', '秦淮区', '1', '0');
INSERT INTO `oc_city` VALUES ('1686', '700', '1675', '雨花台区', '1', '0');
INSERT INTO `oc_city` VALUES ('1687', '700', '1675', '高淳县', '1', '0');
INSERT INTO `oc_city` VALUES ('1688', '700', '1675', '鼓楼区', '1', '0');
INSERT INTO `oc_city` VALUES ('1689', '700', '0', '无锡市', '1', '0');
INSERT INTO `oc_city` VALUES ('1690', '700', '1689', '北塘区', '1', '0');
INSERT INTO `oc_city` VALUES ('1691', '700', '1689', '南长区', '1', '0');
INSERT INTO `oc_city` VALUES ('1692', '700', '1689', '宜兴市', '1', '0');
INSERT INTO `oc_city` VALUES ('1693', '700', '1689', '崇安区', '1', '0');
INSERT INTO `oc_city` VALUES ('1694', '700', '1689', '惠山区', '1', '0');
INSERT INTO `oc_city` VALUES ('1695', '700', '1689', '江阴市', '1', '0');
INSERT INTO `oc_city` VALUES ('1696', '700', '1689', '滨湖区', '1', '0');
INSERT INTO `oc_city` VALUES ('1697', '700', '1689', '锡山区', '1', '0');
INSERT INTO `oc_city` VALUES ('1698', '700', '0', '徐州市', '1', '0');
INSERT INTO `oc_city` VALUES ('1699', '700', '1698', '丰县', '1', '0');
INSERT INTO `oc_city` VALUES ('1700', '700', '1698', '九里区', '1', '0');
INSERT INTO `oc_city` VALUES ('1701', '700', '1698', '云龙区', '1', '0');
INSERT INTO `oc_city` VALUES ('1702', '700', '1698', '新沂市', '1', '0');
INSERT INTO `oc_city` VALUES ('1703', '700', '1698', '沛县', '1', '0');
INSERT INTO `oc_city` VALUES ('1704', '700', '1698', '泉山区', '1', '0');
INSERT INTO `oc_city` VALUES ('1705', '700', '1698', '睢宁县', '1', '0');
INSERT INTO `oc_city` VALUES ('1706', '700', '1698', '贾汪区', '1', '0');
INSERT INTO `oc_city` VALUES ('1707', '700', '1698', '邳州市', '1', '0');
INSERT INTO `oc_city` VALUES ('1708', '700', '1698', '铜山县', '1', '0');
INSERT INTO `oc_city` VALUES ('1709', '700', '1698', '鼓楼区', '1', '0');
INSERT INTO `oc_city` VALUES ('1710', '700', '0', '常州市', '1', '0');
INSERT INTO `oc_city` VALUES ('1711', '700', '1710', '天宁区', '1', '0');
INSERT INTO `oc_city` VALUES ('1712', '700', '1710', '戚墅堰区', '1', '0');
INSERT INTO `oc_city` VALUES ('1713', '700', '1710', '新北区', '1', '0');
INSERT INTO `oc_city` VALUES ('1714', '700', '1710', '武进区', '1', '0');
INSERT INTO `oc_city` VALUES ('1715', '700', '1710', '溧阳市', '1', '0');
INSERT INTO `oc_city` VALUES ('1716', '700', '1710', '金坛市', '1', '0');
INSERT INTO `oc_city` VALUES ('1717', '700', '1710', '钟楼区', '1', '0');
INSERT INTO `oc_city` VALUES ('1718', '700', '0', '苏州市', '1', '0');
INSERT INTO `oc_city` VALUES ('1719', '700', '1718', '吴中区', '1', '0');
INSERT INTO `oc_city` VALUES ('1720', '700', '1718', '吴江市', '1', '0');
INSERT INTO `oc_city` VALUES ('1721', '700', '1718', '太仓市', '1', '0');
INSERT INTO `oc_city` VALUES ('1722', '700', '1718', '常熟市', '1', '0');
INSERT INTO `oc_city` VALUES ('1723', '700', '1718', '平江区', '1', '0');
INSERT INTO `oc_city` VALUES ('1724', '700', '1718', '张家港市', '1', '0');
INSERT INTO `oc_city` VALUES ('1725', '700', '1718', '昆山市', '1', '0');
INSERT INTO `oc_city` VALUES ('1726', '700', '1718', '沧浪区', '1', '0');
INSERT INTO `oc_city` VALUES ('1727', '700', '1718', '相城区', '1', '0');
INSERT INTO `oc_city` VALUES ('1728', '700', '1718', '苏州工业园区', '1', '0');
INSERT INTO `oc_city` VALUES ('1729', '700', '1718', '虎丘区', '1', '0');
INSERT INTO `oc_city` VALUES ('1730', '700', '1718', '金阊区', '1', '0');
INSERT INTO `oc_city` VALUES ('1731', '700', '0', '南通市', '1', '0');
INSERT INTO `oc_city` VALUES ('1732', '700', '1731', '启东市', '1', '0');
INSERT INTO `oc_city` VALUES ('1733', '700', '1731', '如东县', '1', '0');
INSERT INTO `oc_city` VALUES ('1734', '700', '1731', '如皋市', '1', '0');
INSERT INTO `oc_city` VALUES ('1735', '700', '1731', '崇川区', '1', '0');
INSERT INTO `oc_city` VALUES ('1736', '700', '1731', '海安县', '1', '0');
INSERT INTO `oc_city` VALUES ('1737', '700', '1731', '海门市', '1', '0');
INSERT INTO `oc_city` VALUES ('1738', '700', '1731', '港闸区', '1', '0');
INSERT INTO `oc_city` VALUES ('1739', '700', '1731', '通州市', '1', '0');
INSERT INTO `oc_city` VALUES ('1740', '700', '0', '连云港市', '1', '0');
INSERT INTO `oc_city` VALUES ('1741', '700', '1740', '东海县', '1', '0');
INSERT INTO `oc_city` VALUES ('1742', '700', '1740', '新浦区', '1', '0');
INSERT INTO `oc_city` VALUES ('1743', '700', '1740', '海州区', '1', '0');
INSERT INTO `oc_city` VALUES ('1744', '700', '1740', '灌云县', '1', '0');
INSERT INTO `oc_city` VALUES ('1745', '700', '1740', '灌南县', '1', '0');
INSERT INTO `oc_city` VALUES ('1746', '700', '1740', '赣榆县', '1', '0');
INSERT INTO `oc_city` VALUES ('1747', '700', '1740', '连云区', '1', '0');
INSERT INTO `oc_city` VALUES ('1748', '700', '0', '淮安市', '1', '0');
INSERT INTO `oc_city` VALUES ('1749', '700', '1748', '楚州区', '1', '0');
INSERT INTO `oc_city` VALUES ('1750', '700', '1748', '洪泽县', '1', '0');
INSERT INTO `oc_city` VALUES ('1751', '700', '1748', '涟水县', '1', '0');
INSERT INTO `oc_city` VALUES ('1752', '700', '1748', '淮阴区', '1', '0');
INSERT INTO `oc_city` VALUES ('1753', '700', '1748', '清河区', '1', '0');
INSERT INTO `oc_city` VALUES ('1754', '700', '1748', '清浦区', '1', '0');
INSERT INTO `oc_city` VALUES ('1755', '700', '1748', '盱眙县', '1', '0');
INSERT INTO `oc_city` VALUES ('1756', '700', '1748', '金湖县', '1', '0');
INSERT INTO `oc_city` VALUES ('1757', '700', '0', '盐城市', '1', '0');
INSERT INTO `oc_city` VALUES ('1758', '700', '1757', '东台市', '1', '0');
INSERT INTO `oc_city` VALUES ('1759', '700', '1757', '亭湖区', '1', '0');
INSERT INTO `oc_city` VALUES ('1760', '700', '1757', '响水县', '1', '0');
INSERT INTO `oc_city` VALUES ('1761', '700', '1757', '大丰市', '1', '0');
INSERT INTO `oc_city` VALUES ('1762', '700', '1757', '射阳县', '1', '0');
INSERT INTO `oc_city` VALUES ('1763', '700', '1757', '建湖县', '1', '0');
INSERT INTO `oc_city` VALUES ('1764', '700', '1757', '滨海县', '1', '0');
INSERT INTO `oc_city` VALUES ('1765', '700', '1757', '盐都区', '1', '0');
INSERT INTO `oc_city` VALUES ('1766', '700', '1757', '阜宁县', '1', '0');
INSERT INTO `oc_city` VALUES ('1767', '700', '0', '扬州市', '1', '0');
INSERT INTO `oc_city` VALUES ('1768', '700', '1767', '仪征市', '1', '0');
INSERT INTO `oc_city` VALUES ('1769', '700', '1767', '宝应县', '1', '0');
INSERT INTO `oc_city` VALUES ('1770', '700', '1767', '广陵区', '1', '0');
INSERT INTO `oc_city` VALUES ('1771', '700', '1767', '江都市', '1', '0');
INSERT INTO `oc_city` VALUES ('1772', '700', '1767', '维扬区', '1', '0');
INSERT INTO `oc_city` VALUES ('1773', '700', '1767', '邗江区', '1', '0');
INSERT INTO `oc_city` VALUES ('1774', '700', '1767', '高邮市', '1', '0');
INSERT INTO `oc_city` VALUES ('1775', '700', '0', '镇江市', '1', '0');
INSERT INTO `oc_city` VALUES ('1776', '700', '1775', '丹徒区', '1', '0');
INSERT INTO `oc_city` VALUES ('1777', '700', '1775', '丹阳市', '1', '0');
INSERT INTO `oc_city` VALUES ('1778', '700', '1775', '京口区', '1', '0');
INSERT INTO `oc_city` VALUES ('1779', '700', '1775', '句容市', '1', '0');
INSERT INTO `oc_city` VALUES ('1780', '700', '1775', '扬中市', '1', '0');
INSERT INTO `oc_city` VALUES ('1781', '700', '1775', '润州区', '1', '0');
INSERT INTO `oc_city` VALUES ('1782', '700', '0', '泰州市', '1', '0');
INSERT INTO `oc_city` VALUES ('1783', '700', '1782', '兴化市', '1', '0');
INSERT INTO `oc_city` VALUES ('1784', '700', '1782', '姜堰市', '1', '0');
INSERT INTO `oc_city` VALUES ('1785', '700', '1782', '泰兴市', '1', '0');
INSERT INTO `oc_city` VALUES ('1786', '700', '1782', '海陵区', '1', '0');
INSERT INTO `oc_city` VALUES ('1787', '700', '1782', '靖江市', '1', '0');
INSERT INTO `oc_city` VALUES ('1788', '700', '1782', '高港区', '1', '0');
INSERT INTO `oc_city` VALUES ('1789', '700', '0', '宿迁市', '1', '0');
INSERT INTO `oc_city` VALUES ('1790', '700', '1789', '宿城区', '1', '0');
INSERT INTO `oc_city` VALUES ('1791', '700', '1789', '宿豫区', '1', '0');
INSERT INTO `oc_city` VALUES ('1792', '700', '1789', '沭阳县', '1', '0');
INSERT INTO `oc_city` VALUES ('1793', '700', '1789', '泗洪县', '1', '0');
INSERT INTO `oc_city` VALUES ('1794', '700', '1789', '泗阳县', '1', '0');
INSERT INTO `oc_city` VALUES ('1795', '701', '0', '南昌市', '1', '0');
INSERT INTO `oc_city` VALUES ('1796', '701', '1795', '东湖区', '1', '0');
INSERT INTO `oc_city` VALUES ('1797', '701', '1795', '南昌县', '1', '0');
INSERT INTO `oc_city` VALUES ('1798', '701', '1795', '安义县', '1', '0');
INSERT INTO `oc_city` VALUES ('1799', '701', '1795', '新建县', '1', '0');
INSERT INTO `oc_city` VALUES ('1800', '701', '1795', '湾里区', '1', '0');
INSERT INTO `oc_city` VALUES ('1801', '701', '1795', '西湖区', '1', '0');
INSERT INTO `oc_city` VALUES ('1802', '701', '1795', '进贤县', '1', '0');
INSERT INTO `oc_city` VALUES ('1803', '701', '1795', '青云谱区', '1', '0');
INSERT INTO `oc_city` VALUES ('1804', '701', '1795', '青山湖区', '1', '0');
INSERT INTO `oc_city` VALUES ('1805', '701', '0', '景德镇市', '1', '0');
INSERT INTO `oc_city` VALUES ('1806', '701', '1805', '乐平市', '1', '0');
INSERT INTO `oc_city` VALUES ('1807', '701', '1805', '昌江区', '1', '0');
INSERT INTO `oc_city` VALUES ('1808', '701', '1805', '浮梁县', '1', '0');
INSERT INTO `oc_city` VALUES ('1809', '701', '1805', '珠山区', '1', '0');
INSERT INTO `oc_city` VALUES ('1810', '701', '0', '萍乡市', '1', '0');
INSERT INTO `oc_city` VALUES ('1811', '701', '1810', '上栗县', '1', '0');
INSERT INTO `oc_city` VALUES ('1812', '701', '1810', '安源区', '1', '0');
INSERT INTO `oc_city` VALUES ('1813', '701', '1810', '湘东区', '1', '0');
INSERT INTO `oc_city` VALUES ('1814', '701', '1810', '芦溪县', '1', '0');
INSERT INTO `oc_city` VALUES ('1815', '701', '1810', '莲花县', '1', '0');
INSERT INTO `oc_city` VALUES ('1816', '701', '0', '九江市', '1', '0');
INSERT INTO `oc_city` VALUES ('1817', '701', '1816', '九江县', '1', '0');
INSERT INTO `oc_city` VALUES ('1818', '701', '1816', '修水县', '1', '0');
INSERT INTO `oc_city` VALUES ('1819', '701', '1816', '庐山区', '1', '0');
INSERT INTO `oc_city` VALUES ('1820', '701', '1816', '彭泽县', '1', '0');
INSERT INTO `oc_city` VALUES ('1821', '701', '1816', '德安县', '1', '0');
INSERT INTO `oc_city` VALUES ('1822', '701', '1816', '星子县', '1', '0');
INSERT INTO `oc_city` VALUES ('1823', '701', '1816', '武宁县', '1', '0');
INSERT INTO `oc_city` VALUES ('1824', '701', '1816', '永修县', '1', '0');
INSERT INTO `oc_city` VALUES ('1825', '701', '1816', '浔阳区', '1', '0');
INSERT INTO `oc_city` VALUES ('1826', '701', '1816', '湖口县', '1', '0');
INSERT INTO `oc_city` VALUES ('1827', '701', '1816', '瑞昌市', '1', '0');
INSERT INTO `oc_city` VALUES ('1828', '701', '1816', '都昌县', '1', '0');
INSERT INTO `oc_city` VALUES ('1829', '701', '0', '新余市', '1', '0');
INSERT INTO `oc_city` VALUES ('1830', '701', '1829', '分宜县', '1', '0');
INSERT INTO `oc_city` VALUES ('1831', '701', '1829', '渝水区', '1', '0');
INSERT INTO `oc_city` VALUES ('1832', '701', '0', '鹰潭市', '1', '0');
INSERT INTO `oc_city` VALUES ('1833', '701', '1832', '余江县', '1', '0');
INSERT INTO `oc_city` VALUES ('1834', '701', '1832', '月湖区', '1', '0');
INSERT INTO `oc_city` VALUES ('1835', '701', '1832', '贵溪市', '1', '0');
INSERT INTO `oc_city` VALUES ('1836', '701', '0', '赣州市', '1', '0');
INSERT INTO `oc_city` VALUES ('1837', '701', '1836', '上犹县', '1', '0');
INSERT INTO `oc_city` VALUES ('1838', '701', '1836', '于都县', '1', '0');
INSERT INTO `oc_city` VALUES ('1839', '701', '1836', '会昌县', '1', '0');
INSERT INTO `oc_city` VALUES ('1840', '701', '1836', '信丰县', '1', '0');
INSERT INTO `oc_city` VALUES ('1841', '701', '1836', '全南县', '1', '0');
INSERT INTO `oc_city` VALUES ('1842', '701', '1836', '兴国县', '1', '0');
INSERT INTO `oc_city` VALUES ('1843', '701', '1836', '南康市', '1', '0');
INSERT INTO `oc_city` VALUES ('1844', '701', '1836', '大余县', '1', '0');
INSERT INTO `oc_city` VALUES ('1845', '701', '1836', '宁都县', '1', '0');
INSERT INTO `oc_city` VALUES ('1846', '701', '1836', '安远县', '1', '0');
INSERT INTO `oc_city` VALUES ('1847', '701', '1836', '定南县', '1', '0');
INSERT INTO `oc_city` VALUES ('1848', '701', '1836', '寻乌县', '1', '0');
INSERT INTO `oc_city` VALUES ('1849', '701', '1836', '崇义县', '1', '0');
INSERT INTO `oc_city` VALUES ('1850', '701', '1836', '瑞金市', '1', '0');
INSERT INTO `oc_city` VALUES ('1851', '701', '1836', '石城县', '1', '0');
INSERT INTO `oc_city` VALUES ('1852', '701', '1836', '章贡区', '1', '0');
INSERT INTO `oc_city` VALUES ('1853', '701', '1836', '赣县', '1', '0');
INSERT INTO `oc_city` VALUES ('1854', '701', '1836', '龙南县', '1', '0');
INSERT INTO `oc_city` VALUES ('1855', '701', '0', '吉安市', '1', '0');
INSERT INTO `oc_city` VALUES ('1856', '701', '1855', '万安县', '1', '0');
INSERT INTO `oc_city` VALUES ('1857', '701', '1855', '井冈山市', '1', '0');
INSERT INTO `oc_city` VALUES ('1858', '701', '1855', '吉安县', '1', '0');
INSERT INTO `oc_city` VALUES ('1859', '701', '1855', '吉州区', '1', '0');
INSERT INTO `oc_city` VALUES ('1860', '701', '1855', '吉水县', '1', '0');
INSERT INTO `oc_city` VALUES ('1861', '701', '1855', '安福县', '1', '0');
INSERT INTO `oc_city` VALUES ('1862', '701', '1855', '峡江县', '1', '0');
INSERT INTO `oc_city` VALUES ('1863', '701', '1855', '新干县', '1', '0');
INSERT INTO `oc_city` VALUES ('1864', '701', '1855', '永丰县', '1', '0');
INSERT INTO `oc_city` VALUES ('1865', '701', '1855', '永新县', '1', '0');
INSERT INTO `oc_city` VALUES ('1866', '701', '1855', '泰和县', '1', '0');
INSERT INTO `oc_city` VALUES ('1867', '701', '1855', '遂川县', '1', '0');
INSERT INTO `oc_city` VALUES ('1868', '701', '1855', '青原区', '1', '0');
INSERT INTO `oc_city` VALUES ('1869', '701', '0', '宜春市', '1', '0');
INSERT INTO `oc_city` VALUES ('1870', '701', '1869', '万载县', '1', '0');
INSERT INTO `oc_city` VALUES ('1871', '701', '1869', '上高县', '1', '0');
INSERT INTO `oc_city` VALUES ('1872', '701', '1869', '丰城市', '1', '0');
INSERT INTO `oc_city` VALUES ('1873', '701', '1869', '奉新县', '1', '0');
INSERT INTO `oc_city` VALUES ('1874', '701', '1869', '宜丰县', '1', '0');
INSERT INTO `oc_city` VALUES ('1875', '701', '1869', '樟树市', '1', '0');
INSERT INTO `oc_city` VALUES ('1876', '701', '1869', '袁州区', '1', '0');
INSERT INTO `oc_city` VALUES ('1877', '701', '1869', '铜鼓县', '1', '0');
INSERT INTO `oc_city` VALUES ('1878', '701', '1869', '靖安县', '1', '0');
INSERT INTO `oc_city` VALUES ('1879', '701', '1869', '高安市', '1', '0');
INSERT INTO `oc_city` VALUES ('1880', '701', '0', '抚州市', '1', '0');
INSERT INTO `oc_city` VALUES ('1881', '701', '1880', '东乡县', '1', '0');
INSERT INTO `oc_city` VALUES ('1882', '701', '1880', '临川区', '1', '0');
INSERT INTO `oc_city` VALUES ('1883', '701', '1880', '乐安县', '1', '0');
INSERT INTO `oc_city` VALUES ('1884', '701', '1880', '南丰县', '1', '0');
INSERT INTO `oc_city` VALUES ('1885', '701', '1880', '南城县', '1', '0');
INSERT INTO `oc_city` VALUES ('1886', '701', '1880', '宜黄县', '1', '0');
INSERT INTO `oc_city` VALUES ('1887', '701', '1880', '崇仁县', '1', '0');
INSERT INTO `oc_city` VALUES ('1888', '701', '1880', '广昌县', '1', '0');
INSERT INTO `oc_city` VALUES ('1889', '701', '1880', '资溪县', '1', '0');
INSERT INTO `oc_city` VALUES ('1890', '701', '1880', '金溪县', '1', '0');
INSERT INTO `oc_city` VALUES ('1891', '701', '1880', '黎川县', '1', '0');
INSERT INTO `oc_city` VALUES ('1892', '701', '0', '上饶市', '1', '0');
INSERT INTO `oc_city` VALUES ('1893', '701', '1892', '万年县', '1', '0');
INSERT INTO `oc_city` VALUES ('1894', '701', '1892', '上饶县', '1', '0');
INSERT INTO `oc_city` VALUES ('1895', '701', '1892', '余干县', '1', '0');
INSERT INTO `oc_city` VALUES ('1896', '701', '1892', '信州区', '1', '0');
INSERT INTO `oc_city` VALUES ('1897', '701', '1892', '婺源县', '1', '0');
INSERT INTO `oc_city` VALUES ('1898', '701', '1892', '广丰县', '1', '0');
INSERT INTO `oc_city` VALUES ('1899', '701', '1892', '弋阳县', '1', '0');
INSERT INTO `oc_city` VALUES ('1900', '701', '1892', '德兴市', '1', '0');
INSERT INTO `oc_city` VALUES ('1901', '701', '1892', '横峰县', '1', '0');
INSERT INTO `oc_city` VALUES ('1902', '701', '1892', '玉山县', '1', '0');
INSERT INTO `oc_city` VALUES ('1903', '701', '1892', '鄱阳县', '1', '0');
INSERT INTO `oc_city` VALUES ('1904', '701', '1892', '铅山县', '1', '0');
INSERT INTO `oc_city` VALUES ('1905', '702', '0', '长春市', '1', '0');
INSERT INTO `oc_city` VALUES ('1906', '702', '1905', '九台市', '1', '0');
INSERT INTO `oc_city` VALUES ('1907', '702', '1905', '二道区', '1', '0');
INSERT INTO `oc_city` VALUES ('1908', '702', '1905', '农安县', '1', '0');
INSERT INTO `oc_city` VALUES ('1909', '702', '1905', '南关区', '1', '0');
INSERT INTO `oc_city` VALUES ('1910', '702', '1905', '双阳区', '1', '0');
INSERT INTO `oc_city` VALUES ('1911', '702', '1905', '宽城区', '1', '0');
INSERT INTO `oc_city` VALUES ('1912', '702', '1905', '德惠市', '1', '0');
INSERT INTO `oc_city` VALUES ('1913', '702', '1905', '朝阳区', '1', '0');
INSERT INTO `oc_city` VALUES ('1914', '702', '1905', '榆树市', '1', '0');
INSERT INTO `oc_city` VALUES ('1915', '702', '1905', '绿园区', '1', '0');
INSERT INTO `oc_city` VALUES ('1916', '702', '0', '吉林市', '1', '0');
INSERT INTO `oc_city` VALUES ('1917', '702', '1916', '丰满区', '1', '0');
INSERT INTO `oc_city` VALUES ('1918', '702', '1916', '昌邑区', '1', '0');
INSERT INTO `oc_city` VALUES ('1919', '702', '1916', '桦甸市', '1', '0');
INSERT INTO `oc_city` VALUES ('1920', '702', '1916', '永吉县', '1', '0');
INSERT INTO `oc_city` VALUES ('1921', '702', '1916', '磐石市', '1', '0');
INSERT INTO `oc_city` VALUES ('1922', '702', '1916', '舒兰市', '1', '0');
INSERT INTO `oc_city` VALUES ('1923', '702', '1916', '船营区', '1', '0');
INSERT INTO `oc_city` VALUES ('1924', '702', '1916', '蛟河市', '1', '0');
INSERT INTO `oc_city` VALUES ('1925', '702', '1916', '龙潭区', '1', '0');
INSERT INTO `oc_city` VALUES ('1926', '702', '0', '四平市', '1', '0');
INSERT INTO `oc_city` VALUES ('1927', '702', '1926', '伊通满族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('1928', '702', '1926', '公主岭市', '1', '0');
INSERT INTO `oc_city` VALUES ('1929', '702', '1926', '双辽市', '1', '0');
INSERT INTO `oc_city` VALUES ('1930', '702', '1926', '梨树县', '1', '0');
INSERT INTO `oc_city` VALUES ('1931', '702', '1926', '铁东区', '1', '0');
INSERT INTO `oc_city` VALUES ('1932', '702', '1926', '铁西区', '1', '0');
INSERT INTO `oc_city` VALUES ('1933', '702', '0', '辽源市', '1', '0');
INSERT INTO `oc_city` VALUES ('1934', '702', '1933', '东丰县', '1', '0');
INSERT INTO `oc_city` VALUES ('1935', '702', '1933', '东辽县', '1', '0');
INSERT INTO `oc_city` VALUES ('1936', '702', '1933', '西安区', '1', '0');
INSERT INTO `oc_city` VALUES ('1937', '702', '1933', '龙山区', '1', '0');
INSERT INTO `oc_city` VALUES ('1938', '702', '0', '通化市', '1', '0');
INSERT INTO `oc_city` VALUES ('1939', '702', '1938', '东昌区', '1', '0');
INSERT INTO `oc_city` VALUES ('1940', '702', '1938', '二道江区', '1', '0');
INSERT INTO `oc_city` VALUES ('1941', '702', '1938', '柳河县', '1', '0');
INSERT INTO `oc_city` VALUES ('1942', '702', '1938', '梅河口市', '1', '0');
INSERT INTO `oc_city` VALUES ('1943', '702', '1938', '辉南县', '1', '0');
INSERT INTO `oc_city` VALUES ('1944', '702', '1938', '通化县', '1', '0');
INSERT INTO `oc_city` VALUES ('1945', '702', '1938', '集安市', '1', '0');
INSERT INTO `oc_city` VALUES ('1946', '702', '0', '白山市', '1', '0');
INSERT INTO `oc_city` VALUES ('1947', '702', '1946', '临江市', '1', '0');
INSERT INTO `oc_city` VALUES ('1948', '702', '1946', '八道江区', '1', '0');
INSERT INTO `oc_city` VALUES ('1949', '702', '1946', '抚松县', '1', '0');
INSERT INTO `oc_city` VALUES ('1950', '702', '1946', '江源区', '1', '0');
INSERT INTO `oc_city` VALUES ('1951', '702', '1946', '长白朝鲜族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('1952', '702', '1946', '靖宇县', '1', '0');
INSERT INTO `oc_city` VALUES ('1953', '702', '0', '松原市', '1', '0');
INSERT INTO `oc_city` VALUES ('1954', '702', '1953', '干安县', '1', '0');
INSERT INTO `oc_city` VALUES ('1955', '702', '1953', '前郭尔罗斯蒙古族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('1956', '702', '1953', '宁江区', '1', '0');
INSERT INTO `oc_city` VALUES ('1957', '702', '1953', '扶余县', '1', '0');
INSERT INTO `oc_city` VALUES ('1958', '702', '1953', '长岭县', '1', '0');
INSERT INTO `oc_city` VALUES ('1959', '702', '0', '白城市', '1', '0');
INSERT INTO `oc_city` VALUES ('1960', '702', '1959', '大安市', '1', '0');
INSERT INTO `oc_city` VALUES ('1961', '702', '1959', '洮北区', '1', '0');
INSERT INTO `oc_city` VALUES ('1962', '702', '1959', '洮南市', '1', '0');
INSERT INTO `oc_city` VALUES ('1963', '702', '1959', '通榆县', '1', '0');
INSERT INTO `oc_city` VALUES ('1964', '702', '1959', '镇赉县', '1', '0');
INSERT INTO `oc_city` VALUES ('1965', '702', '0', '延边朝鲜族自治州', '1', '0');
INSERT INTO `oc_city` VALUES ('1966', '702', '1965', '和龙市', '1', '0');
INSERT INTO `oc_city` VALUES ('1967', '702', '1965', '图们市', '1', '0');
INSERT INTO `oc_city` VALUES ('1968', '702', '1965', '安图县', '1', '0');
INSERT INTO `oc_city` VALUES ('1969', '702', '1965', '延吉市', '1', '0');
INSERT INTO `oc_city` VALUES ('1970', '702', '1965', '敦化市', '1', '0');
INSERT INTO `oc_city` VALUES ('1971', '702', '1965', '汪清县', '1', '0');
INSERT INTO `oc_city` VALUES ('1972', '702', '1965', '珲春市', '1', '0');
INSERT INTO `oc_city` VALUES ('1973', '702', '1965', '龙井市', '1', '0');
INSERT INTO `oc_city` VALUES ('1974', '703', '0', '沈阳市', '1', '0');
INSERT INTO `oc_city` VALUES ('1975', '703', '1974', '东陵区', '1', '0');
INSERT INTO `oc_city` VALUES ('1976', '703', '1974', '于洪区', '1', '0');
INSERT INTO `oc_city` VALUES ('1977', '703', '1974', '和平区', '1', '0');
INSERT INTO `oc_city` VALUES ('1978', '703', '1974', '大东区', '1', '0');
INSERT INTO `oc_city` VALUES ('1979', '703', '1974', '康平县', '1', '0');
INSERT INTO `oc_city` VALUES ('1980', '703', '1974', '新民市', '1', '0');
INSERT INTO `oc_city` VALUES ('1981', '703', '1974', '沈北新区', '1', '0');
INSERT INTO `oc_city` VALUES ('1982', '703', '1974', '沈河区', '1', '0');
INSERT INTO `oc_city` VALUES ('1983', '703', '1974', '法库县', '1', '0');
INSERT INTO `oc_city` VALUES ('1984', '703', '1974', '皇姑区', '1', '0');
INSERT INTO `oc_city` VALUES ('1985', '703', '1974', '苏家屯区', '1', '0');
INSERT INTO `oc_city` VALUES ('1986', '703', '1974', '辽中县', '1', '0');
INSERT INTO `oc_city` VALUES ('1987', '703', '1974', '铁西区', '1', '0');
INSERT INTO `oc_city` VALUES ('1988', '703', '0', '大连市', '1', '0');
INSERT INTO `oc_city` VALUES ('1989', '703', '1988', '中山区', '1', '0');
INSERT INTO `oc_city` VALUES ('1990', '703', '1988', '庄河市', '1', '0');
INSERT INTO `oc_city` VALUES ('1991', '703', '1988', '旅顺口区', '1', '0');
INSERT INTO `oc_city` VALUES ('1992', '703', '1988', '普兰店市', '1', '0');
INSERT INTO `oc_city` VALUES ('1993', '703', '1988', '沙河口区', '1', '0');
INSERT INTO `oc_city` VALUES ('1994', '703', '1988', '瓦房店市', '1', '0');
INSERT INTO `oc_city` VALUES ('1995', '703', '1988', '甘井子区', '1', '0');
INSERT INTO `oc_city` VALUES ('1996', '703', '1988', '西岗区', '1', '0');
INSERT INTO `oc_city` VALUES ('1997', '703', '1988', '金州区', '1', '0');
INSERT INTO `oc_city` VALUES ('1998', '703', '1988', '长海县', '1', '0');
INSERT INTO `oc_city` VALUES ('1999', '703', '0', '鞍山市', '1', '0');
INSERT INTO `oc_city` VALUES ('2000', '703', '1999', '千山区', '1', '0');
INSERT INTO `oc_city` VALUES ('2001', '703', '1999', '台安县', '1', '0');
INSERT INTO `oc_city` VALUES ('2002', '703', '1999', '岫岩满族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('2003', '703', '1999', '海城市', '1', '0');
INSERT INTO `oc_city` VALUES ('2004', '703', '1999', '立山区', '1', '0');
INSERT INTO `oc_city` VALUES ('2005', '703', '1999', '铁东区', '1', '0');
INSERT INTO `oc_city` VALUES ('2006', '703', '1999', '铁西区', '1', '0');
INSERT INTO `oc_city` VALUES ('2007', '703', '0', '抚顺市', '1', '0');
INSERT INTO `oc_city` VALUES ('2008', '703', '2007', '东洲区', '1', '0');
INSERT INTO `oc_city` VALUES ('2009', '703', '2007', '抚顺县', '1', '0');
INSERT INTO `oc_city` VALUES ('2010', '703', '2007', '新宾满族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('2011', '703', '2007', '新抚区', '1', '0');
INSERT INTO `oc_city` VALUES ('2012', '703', '2007', '望花区', '1', '0');
INSERT INTO `oc_city` VALUES ('2013', '703', '2007', '清原满族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('2014', '703', '2007', '顺城区', '1', '0');
INSERT INTO `oc_city` VALUES ('2015', '703', '0', '本溪市', '1', '0');
INSERT INTO `oc_city` VALUES ('2016', '703', '2015', '南芬区', '1', '0');
INSERT INTO `oc_city` VALUES ('2017', '703', '2015', '平山区', '1', '0');
INSERT INTO `oc_city` VALUES ('2018', '703', '2015', '明山区', '1', '0');
INSERT INTO `oc_city` VALUES ('2019', '703', '2015', '本溪满族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('2020', '703', '2015', '桓仁满族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('2021', '703', '2015', '溪湖区', '1', '0');
INSERT INTO `oc_city` VALUES ('2022', '703', '0', '丹东市', '1', '0');
INSERT INTO `oc_city` VALUES ('2023', '703', '2022', '东港市', '1', '0');
INSERT INTO `oc_city` VALUES ('2024', '703', '2022', '元宝区', '1', '0');
INSERT INTO `oc_city` VALUES ('2025', '703', '2022', '凤城市', '1', '0');
INSERT INTO `oc_city` VALUES ('2026', '703', '2022', '宽甸满族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('2027', '703', '2022', '振兴区', '1', '0');
INSERT INTO `oc_city` VALUES ('2028', '703', '2022', '振安区', '1', '0');
INSERT INTO `oc_city` VALUES ('2029', '703', '0', '锦州市', '1', '0');
INSERT INTO `oc_city` VALUES ('2030', '703', '2029', '义县', '1', '0');
INSERT INTO `oc_city` VALUES ('2031', '703', '2029', '凌河区', '1', '0');
INSERT INTO `oc_city` VALUES ('2032', '703', '2029', '凌海市', '1', '0');
INSERT INTO `oc_city` VALUES ('2033', '703', '2029', '北镇市', '1', '0');
INSERT INTO `oc_city` VALUES ('2034', '703', '2029', '古塔区', '1', '0');
INSERT INTO `oc_city` VALUES ('2035', '703', '2029', '太和区', '1', '0');
INSERT INTO `oc_city` VALUES ('2036', '703', '2029', '黑山县', '1', '0');
INSERT INTO `oc_city` VALUES ('2037', '703', '0', '营口市', '1', '0');
INSERT INTO `oc_city` VALUES ('2038', '703', '2037', '大石桥市', '1', '0');
INSERT INTO `oc_city` VALUES ('2039', '703', '2037', '盖州市', '1', '0');
INSERT INTO `oc_city` VALUES ('2040', '703', '2037', '站前区', '1', '0');
INSERT INTO `oc_city` VALUES ('2041', '703', '2037', '老边区', '1', '0');
INSERT INTO `oc_city` VALUES ('2042', '703', '2037', '西市区', '1', '0');
INSERT INTO `oc_city` VALUES ('2043', '703', '2037', '鲅鱼圈区', '1', '0');
INSERT INTO `oc_city` VALUES ('2044', '703', '0', '阜新市', '1', '0');
INSERT INTO `oc_city` VALUES ('2045', '703', '2044', '太平区', '1', '0');
INSERT INTO `oc_city` VALUES ('2046', '703', '2044', '彰武县', '1', '0');
INSERT INTO `oc_city` VALUES ('2047', '703', '2044', '新邱区', '1', '0');
INSERT INTO `oc_city` VALUES ('2048', '703', '2044', '海州区', '1', '0');
INSERT INTO `oc_city` VALUES ('2049', '703', '2044', '清河门区', '1', '0');
INSERT INTO `oc_city` VALUES ('2050', '703', '2044', '细河区', '1', '0');
INSERT INTO `oc_city` VALUES ('2051', '703', '2044', '蒙古族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('2052', '703', '0', '辽阳市', '1', '0');
INSERT INTO `oc_city` VALUES ('2053', '703', '2052', '太子河区', '1', '0');
INSERT INTO `oc_city` VALUES ('2054', '703', '2052', '宏伟区', '1', '0');
INSERT INTO `oc_city` VALUES ('2055', '703', '2052', '弓长岭区', '1', '0');
INSERT INTO `oc_city` VALUES ('2056', '703', '2052', '文圣区', '1', '0');
INSERT INTO `oc_city` VALUES ('2057', '703', '2052', '灯塔市', '1', '0');
INSERT INTO `oc_city` VALUES ('2058', '703', '2052', '白塔区', '1', '0');
INSERT INTO `oc_city` VALUES ('2059', '703', '2052', '辽阳县', '1', '0');
INSERT INTO `oc_city` VALUES ('2060', '703', '0', '盘锦市', '1', '0');
INSERT INTO `oc_city` VALUES ('2061', '703', '2060', '兴隆台区', '1', '0');
INSERT INTO `oc_city` VALUES ('2062', '703', '2060', '双台子区', '1', '0');
INSERT INTO `oc_city` VALUES ('2063', '703', '2060', '大洼县', '1', '0');
INSERT INTO `oc_city` VALUES ('2064', '703', '2060', '盘山县', '1', '0');
INSERT INTO `oc_city` VALUES ('2065', '703', '0', '铁岭市', '1', '0');
INSERT INTO `oc_city` VALUES ('2066', '703', '2065', '开原市', '1', '0');
INSERT INTO `oc_city` VALUES ('2067', '703', '2065', '昌图县', '1', '0');
INSERT INTO `oc_city` VALUES ('2068', '703', '2065', '清河区', '1', '0');
INSERT INTO `oc_city` VALUES ('2069', '703', '2065', '西丰县', '1', '0');
INSERT INTO `oc_city` VALUES ('2070', '703', '2065', '调兵山市', '1', '0');
INSERT INTO `oc_city` VALUES ('2071', '703', '2065', '铁岭县', '1', '0');
INSERT INTO `oc_city` VALUES ('2072', '703', '2065', '银州区', '1', '0');
INSERT INTO `oc_city` VALUES ('2073', '703', '0', '朝阳市', '1', '0');
INSERT INTO `oc_city` VALUES ('2074', '703', '2073', '凌源市', '1', '0');
INSERT INTO `oc_city` VALUES ('2075', '703', '2073', '北票市', '1', '0');
INSERT INTO `oc_city` VALUES ('2076', '703', '2073', '双塔区', '1', '0');
INSERT INTO `oc_city` VALUES ('2077', '703', '2073', '喀喇沁左翼蒙古族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('2078', '703', '2073', '建平县', '1', '0');
INSERT INTO `oc_city` VALUES ('2079', '703', '2073', '朝阳县', '1', '0');
INSERT INTO `oc_city` VALUES ('2080', '703', '2073', '龙城区', '1', '0');
INSERT INTO `oc_city` VALUES ('2081', '703', '0', '葫芦岛市', '1', '0');
INSERT INTO `oc_city` VALUES ('2082', '703', '2081', '兴城市', '1', '0');
INSERT INTO `oc_city` VALUES ('2083', '703', '2081', '南票区', '1', '0');
INSERT INTO `oc_city` VALUES ('2084', '703', '2081', '建昌县', '1', '0');
INSERT INTO `oc_city` VALUES ('2085', '703', '2081', '绥中县', '1', '0');
INSERT INTO `oc_city` VALUES ('2086', '703', '2081', '连山区', '1', '0');
INSERT INTO `oc_city` VALUES ('2087', '703', '2081', '龙港区', '1', '0');
INSERT INTO `oc_city` VALUES ('2088', '704', '0', '澳门特别行政区', '1', '0');
INSERT INTO `oc_city` VALUES ('2089', '705', '0', '银川市', '1', '0');
INSERT INTO `oc_city` VALUES ('2090', '705', '2089', '兴庆区', '1', '0');
INSERT INTO `oc_city` VALUES ('2091', '705', '2089', '永宁县', '1', '0');
INSERT INTO `oc_city` VALUES ('2092', '705', '2089', '灵武市', '1', '0');
INSERT INTO `oc_city` VALUES ('2093', '705', '2089', '西夏区', '1', '0');
INSERT INTO `oc_city` VALUES ('2094', '705', '2089', '贺兰县', '1', '0');
INSERT INTO `oc_city` VALUES ('2095', '705', '2089', '金凤区', '1', '0');
INSERT INTO `oc_city` VALUES ('2096', '705', '0', '石嘴山市', '1', '0');
INSERT INTO `oc_city` VALUES ('2097', '705', '2096', '大武口区', '1', '0');
INSERT INTO `oc_city` VALUES ('2098', '705', '2096', '平罗县', '1', '0');
INSERT INTO `oc_city` VALUES ('2099', '705', '2096', '惠农区', '1', '0');
INSERT INTO `oc_city` VALUES ('2100', '705', '0', '吴忠市', '1', '0');
INSERT INTO `oc_city` VALUES ('2101', '705', '2100', '利通区', '1', '0');
INSERT INTO `oc_city` VALUES ('2102', '705', '2100', '同心县', '1', '0');
INSERT INTO `oc_city` VALUES ('2103', '705', '2100', '盐池县', '1', '0');
INSERT INTO `oc_city` VALUES ('2104', '705', '2100', '青铜峡市', '1', '0');
INSERT INTO `oc_city` VALUES ('2105', '705', '0', '固原市', '1', '0');
INSERT INTO `oc_city` VALUES ('2106', '705', '2105', '原州区', '1', '0');
INSERT INTO `oc_city` VALUES ('2107', '705', '2105', '彭阳县', '1', '0');
INSERT INTO `oc_city` VALUES ('2108', '705', '2105', '泾源县', '1', '0');
INSERT INTO `oc_city` VALUES ('2109', '705', '2105', '西吉县', '1', '0');
INSERT INTO `oc_city` VALUES ('2110', '705', '2105', '隆德县', '1', '0');
INSERT INTO `oc_city` VALUES ('2111', '705', '0', '中卫市', '1', '0');
INSERT INTO `oc_city` VALUES ('2112', '705', '2111', '中宁县', '1', '0');
INSERT INTO `oc_city` VALUES ('2113', '705', '2111', '沙坡头区', '1', '0');
INSERT INTO `oc_city` VALUES ('2114', '705', '2111', '海原县', '1', '0');
INSERT INTO `oc_city` VALUES ('2115', '706', '0', '太原市', '1', '0');
INSERT INTO `oc_city` VALUES ('2116', '706', '2115', '万柏林区', '1', '0');
INSERT INTO `oc_city` VALUES ('2117', '706', '2115', '古交市', '1', '0');
INSERT INTO `oc_city` VALUES ('2118', '706', '2115', '娄烦县', '1', '0');
INSERT INTO `oc_city` VALUES ('2119', '706', '2115', '小店区', '1', '0');
INSERT INTO `oc_city` VALUES ('2120', '706', '2115', '尖草坪区', '1', '0');
INSERT INTO `oc_city` VALUES ('2121', '706', '2115', '晋源区', '1', '0');
INSERT INTO `oc_city` VALUES ('2122', '706', '2115', '杏花岭区', '1', '0');
INSERT INTO `oc_city` VALUES ('2123', '706', '2115', '清徐县', '1', '0');
INSERT INTO `oc_city` VALUES ('2124', '706', '2115', '迎泽区', '1', '0');
INSERT INTO `oc_city` VALUES ('2125', '706', '2115', '阳曲县', '1', '0');
INSERT INTO `oc_city` VALUES ('2126', '706', '0', '大同市', '1', '0');
INSERT INTO `oc_city` VALUES ('2127', '706', '2126', '南郊区', '1', '0');
INSERT INTO `oc_city` VALUES ('2128', '706', '2126', '城区', '1', '0');
INSERT INTO `oc_city` VALUES ('2129', '706', '2126', '大同县', '1', '0');
INSERT INTO `oc_city` VALUES ('2130', '706', '2126', '天镇县', '1', '0');
INSERT INTO `oc_city` VALUES ('2131', '706', '2126', '左云县', '1', '0');
INSERT INTO `oc_city` VALUES ('2132', '706', '2126', '广灵县', '1', '0');
INSERT INTO `oc_city` VALUES ('2133', '706', '2126', '新荣区', '1', '0');
INSERT INTO `oc_city` VALUES ('2134', '706', '2126', '浑源县', '1', '0');
INSERT INTO `oc_city` VALUES ('2135', '706', '2126', '灵丘县', '1', '0');
INSERT INTO `oc_city` VALUES ('2136', '706', '2126', '矿区', '1', '0');
INSERT INTO `oc_city` VALUES ('2137', '706', '2126', '阳高县', '1', '0');
INSERT INTO `oc_city` VALUES ('2138', '706', '0', '阳泉市', '1', '0');
INSERT INTO `oc_city` VALUES ('2139', '706', '2138', '城区', '1', '0');
INSERT INTO `oc_city` VALUES ('2140', '706', '2138', '平定县', '1', '0');
INSERT INTO `oc_city` VALUES ('2141', '706', '2138', '盂县', '1', '0');
INSERT INTO `oc_city` VALUES ('2142', '706', '2138', '矿区', '1', '0');
INSERT INTO `oc_city` VALUES ('2143', '706', '2138', '郊区', '1', '0');
INSERT INTO `oc_city` VALUES ('2144', '706', '0', '长治市', '1', '0');
INSERT INTO `oc_city` VALUES ('2145', '706', '2144', '城区', '1', '0');
INSERT INTO `oc_city` VALUES ('2146', '706', '2144', '壶关县', '1', '0');
INSERT INTO `oc_city` VALUES ('2147', '706', '2144', '屯留县', '1', '0');
INSERT INTO `oc_city` VALUES ('2148', '706', '2144', '平顺县', '1', '0');
INSERT INTO `oc_city` VALUES ('2149', '706', '2144', '武乡县', '1', '0');
INSERT INTO `oc_city` VALUES ('2150', '706', '2144', '沁县', '1', '0');
INSERT INTO `oc_city` VALUES ('2151', '706', '2144', '沁源县', '1', '0');
INSERT INTO `oc_city` VALUES ('2152', '706', '2144', '潞城市', '1', '0');
INSERT INTO `oc_city` VALUES ('2153', '706', '2144', '襄垣县', '1', '0');
INSERT INTO `oc_city` VALUES ('2154', '706', '2144', '郊区', '1', '0');
INSERT INTO `oc_city` VALUES ('2155', '706', '2144', '长子县', '1', '0');
INSERT INTO `oc_city` VALUES ('2156', '706', '2144', '长治县', '1', '0');
INSERT INTO `oc_city` VALUES ('2157', '706', '2144', '黎城县', '1', '0');
INSERT INTO `oc_city` VALUES ('2158', '706', '0', '晋城市', '1', '0');
INSERT INTO `oc_city` VALUES ('2159', '706', '2158', '城区', '1', '0');
INSERT INTO `oc_city` VALUES ('2160', '706', '2158', '沁水县', '1', '0');
INSERT INTO `oc_city` VALUES ('2161', '706', '2158', '泽州县', '1', '0');
INSERT INTO `oc_city` VALUES ('2162', '706', '2158', '阳城县', '1', '0');
INSERT INTO `oc_city` VALUES ('2163', '706', '2158', '陵川县', '1', '0');
INSERT INTO `oc_city` VALUES ('2164', '706', '2158', '高平市', '1', '0');
INSERT INTO `oc_city` VALUES ('2165', '706', '0', '朔州市', '1', '0');
INSERT INTO `oc_city` VALUES ('2166', '706', '2165', '右玉县', '1', '0');
INSERT INTO `oc_city` VALUES ('2167', '706', '2165', '山阴县', '1', '0');
INSERT INTO `oc_city` VALUES ('2168', '706', '2165', '平鲁区', '1', '0');
INSERT INTO `oc_city` VALUES ('2169', '706', '2165', '应县', '1', '0');
INSERT INTO `oc_city` VALUES ('2170', '706', '2165', '怀仁县', '1', '0');
INSERT INTO `oc_city` VALUES ('2171', '706', '2165', '朔城区', '1', '0');
INSERT INTO `oc_city` VALUES ('2172', '706', '0', '晋中市', '1', '0');
INSERT INTO `oc_city` VALUES ('2173', '706', '2172', '介休市', '1', '0');
INSERT INTO `oc_city` VALUES ('2174', '706', '2172', '和顺县', '1', '0');
INSERT INTO `oc_city` VALUES ('2175', '706', '2172', '太谷县', '1', '0');
INSERT INTO `oc_city` VALUES ('2176', '706', '2172', '寿阳县', '1', '0');
INSERT INTO `oc_city` VALUES ('2177', '706', '2172', '左权县', '1', '0');
INSERT INTO `oc_city` VALUES ('2178', '706', '2172', '平遥县', '1', '0');
INSERT INTO `oc_city` VALUES ('2179', '706', '2172', '昔阳县', '1', '0');
INSERT INTO `oc_city` VALUES ('2180', '706', '2172', '榆次区', '1', '0');
INSERT INTO `oc_city` VALUES ('2181', '706', '2172', '榆社县', '1', '0');
INSERT INTO `oc_city` VALUES ('2182', '706', '2172', '灵石县', '1', '0');
INSERT INTO `oc_city` VALUES ('2183', '706', '2172', '祁县', '1', '0');
INSERT INTO `oc_city` VALUES ('2184', '706', '0', '运城市', '1', '0');
INSERT INTO `oc_city` VALUES ('2185', '706', '2184', '万荣县', '1', '0');
INSERT INTO `oc_city` VALUES ('2186', '706', '2184', '临猗县', '1', '0');
INSERT INTO `oc_city` VALUES ('2187', '706', '2184', '垣曲县', '1', '0');
INSERT INTO `oc_city` VALUES ('2188', '706', '2184', '夏县', '1', '0');
INSERT INTO `oc_city` VALUES ('2189', '706', '2184', '平陆县', '1', '0');
INSERT INTO `oc_city` VALUES ('2190', '706', '2184', '新绛县', '1', '0');
INSERT INTO `oc_city` VALUES ('2191', '706', '2184', '永济市', '1', '0');
INSERT INTO `oc_city` VALUES ('2192', '706', '2184', '河津市', '1', '0');
INSERT INTO `oc_city` VALUES ('2193', '706', '2184', '盐湖区', '1', '0');
INSERT INTO `oc_city` VALUES ('2194', '706', '2184', '稷山县', '1', '0');
INSERT INTO `oc_city` VALUES ('2195', '706', '2184', '绛县', '1', '0');
INSERT INTO `oc_city` VALUES ('2196', '706', '2184', '芮城县', '1', '0');
INSERT INTO `oc_city` VALUES ('2197', '706', '2184', '闻喜县', '1', '0');
INSERT INTO `oc_city` VALUES ('2198', '706', '0', '忻州市', '1', '0');
INSERT INTO `oc_city` VALUES ('2199', '706', '2198', '五台县', '1', '0');
INSERT INTO `oc_city` VALUES ('2200', '706', '2198', '五寨县', '1', '0');
INSERT INTO `oc_city` VALUES ('2201', '706', '2198', '代县', '1', '0');
INSERT INTO `oc_city` VALUES ('2202', '706', '2198', '保德县', '1', '0');
INSERT INTO `oc_city` VALUES ('2203', '706', '2198', '偏关县', '1', '0');
INSERT INTO `oc_city` VALUES ('2204', '706', '2198', '原平市', '1', '0');
INSERT INTO `oc_city` VALUES ('2205', '706', '2198', '宁武县', '1', '0');
INSERT INTO `oc_city` VALUES ('2206', '706', '2198', '定襄县', '1', '0');
INSERT INTO `oc_city` VALUES ('2207', '706', '2198', '岢岚县', '1', '0');
INSERT INTO `oc_city` VALUES ('2208', '706', '2198', '忻府区', '1', '0');
INSERT INTO `oc_city` VALUES ('2209', '706', '2198', '河曲县', '1', '0');
INSERT INTO `oc_city` VALUES ('2210', '706', '2198', '神池县', '1', '0');
INSERT INTO `oc_city` VALUES ('2211', '706', '2198', '繁峙县', '1', '0');
INSERT INTO `oc_city` VALUES ('2212', '706', '2198', '静乐县', '1', '0');
INSERT INTO `oc_city` VALUES ('2213', '706', '0', '临汾市', '1', '0');
INSERT INTO `oc_city` VALUES ('2214', '706', '2213', '乡宁县', '1', '0');
INSERT INTO `oc_city` VALUES ('2215', '706', '2213', '侯马市', '1', '0');
INSERT INTO `oc_city` VALUES ('2216', '706', '2213', '古县', '1', '0');
INSERT INTO `oc_city` VALUES ('2217', '706', '2213', '吉县', '1', '0');
INSERT INTO `oc_city` VALUES ('2218', '706', '2213', '大宁县', '1', '0');
INSERT INTO `oc_city` VALUES ('2219', '706', '2213', '安泽县', '1', '0');
INSERT INTO `oc_city` VALUES ('2220', '706', '2213', '尧都区', '1', '0');
INSERT INTO `oc_city` VALUES ('2221', '706', '2213', '曲沃县', '1', '0');
INSERT INTO `oc_city` VALUES ('2222', '706', '2213', '永和县', '1', '0');
INSERT INTO `oc_city` VALUES ('2223', '706', '2213', '汾西县', '1', '0');
INSERT INTO `oc_city` VALUES ('2224', '706', '2213', '洪洞县', '1', '0');
INSERT INTO `oc_city` VALUES ('2225', '706', '2213', '浮山县', '1', '0');
INSERT INTO `oc_city` VALUES ('2226', '706', '2213', '翼城县', '1', '0');
INSERT INTO `oc_city` VALUES ('2227', '706', '2213', '蒲县', '1', '0');
INSERT INTO `oc_city` VALUES ('2228', '706', '2213', '襄汾县', '1', '0');
INSERT INTO `oc_city` VALUES ('2229', '706', '2213', '隰县', '1', '0');
INSERT INTO `oc_city` VALUES ('2230', '706', '2213', '霍州市', '1', '0');
INSERT INTO `oc_city` VALUES ('2231', '706', '0', '吕梁市', '1', '0');
INSERT INTO `oc_city` VALUES ('2232', '706', '2231', '中阳县', '1', '0');
INSERT INTO `oc_city` VALUES ('2233', '706', '2231', '临县', '1', '0');
INSERT INTO `oc_city` VALUES ('2234', '706', '2231', '交口县', '1', '0');
INSERT INTO `oc_city` VALUES ('2235', '706', '2231', '交城县', '1', '0');
INSERT INTO `oc_city` VALUES ('2236', '706', '2231', '兴县', '1', '0');
INSERT INTO `oc_city` VALUES ('2237', '706', '2231', '孝义市', '1', '0');
INSERT INTO `oc_city` VALUES ('2238', '706', '2231', '岚县', '1', '0');
INSERT INTO `oc_city` VALUES ('2239', '706', '2231', '文水县', '1', '0');
INSERT INTO `oc_city` VALUES ('2240', '706', '2231', '方山县', '1', '0');
INSERT INTO `oc_city` VALUES ('2241', '706', '2231', '柳林县', '1', '0');
INSERT INTO `oc_city` VALUES ('2242', '706', '2231', '汾阳市', '1', '0');
INSERT INTO `oc_city` VALUES ('2243', '706', '2231', '石楼县', '1', '0');
INSERT INTO `oc_city` VALUES ('2244', '706', '2231', '离石区', '1', '0');
INSERT INTO `oc_city` VALUES ('2245', '707', '0', '济南市', '1', '0');
INSERT INTO `oc_city` VALUES ('2246', '707', '2245', '历下区', '1', '0');
INSERT INTO `oc_city` VALUES ('2247', '707', '2245', '历城区', '1', '0');
INSERT INTO `oc_city` VALUES ('2248', '707', '2245', '商河县', '1', '0');
INSERT INTO `oc_city` VALUES ('2249', '707', '2245', '天桥区', '1', '0');
INSERT INTO `oc_city` VALUES ('2250', '707', '2245', '市中区', '1', '0');
INSERT INTO `oc_city` VALUES ('2251', '707', '2245', '平阴县', '1', '0');
INSERT INTO `oc_city` VALUES ('2252', '707', '2245', '槐荫区', '1', '0');
INSERT INTO `oc_city` VALUES ('2253', '707', '2245', '济阳县', '1', '0');
INSERT INTO `oc_city` VALUES ('2254', '707', '2245', '章丘市', '1', '0');
INSERT INTO `oc_city` VALUES ('2255', '707', '2245', '长清区', '1', '0');
INSERT INTO `oc_city` VALUES ('2256', '707', '0', '青岛市', '1', '0');
INSERT INTO `oc_city` VALUES ('2257', '707', '2256', '即墨市', '1', '0');
INSERT INTO `oc_city` VALUES ('2258', '707', '2256', '四方区', '1', '0');
INSERT INTO `oc_city` VALUES ('2259', '707', '2256', '城阳区', '1', '0');
INSERT INTO `oc_city` VALUES ('2260', '707', '2256', '崂山区', '1', '0');
INSERT INTO `oc_city` VALUES ('2261', '707', '2256', '市北区', '1', '0');
INSERT INTO `oc_city` VALUES ('2262', '707', '2256', '市南区', '1', '0');
INSERT INTO `oc_city` VALUES ('2263', '707', '2256', '平度市', '1', '0');
INSERT INTO `oc_city` VALUES ('2264', '707', '2256', '李沧区', '1', '0');
INSERT INTO `oc_city` VALUES ('2265', '707', '2256', '胶南市', '1', '0');
INSERT INTO `oc_city` VALUES ('2266', '707', '2256', '胶州市', '1', '0');
INSERT INTO `oc_city` VALUES ('2267', '707', '2256', '莱西市', '1', '0');
INSERT INTO `oc_city` VALUES ('2268', '707', '2256', '黄岛区', '1', '0');
INSERT INTO `oc_city` VALUES ('2269', '707', '0', '淄博市', '1', '0');
INSERT INTO `oc_city` VALUES ('2270', '707', '2269', '临淄区', '1', '0');
INSERT INTO `oc_city` VALUES ('2271', '707', '2269', '博山区', '1', '0');
INSERT INTO `oc_city` VALUES ('2272', '707', '2269', '周村区', '1', '0');
INSERT INTO `oc_city` VALUES ('2273', '707', '2269', '张店区', '1', '0');
INSERT INTO `oc_city` VALUES ('2274', '707', '2269', '桓台县', '1', '0');
INSERT INTO `oc_city` VALUES ('2275', '707', '2269', '沂源县', '1', '0');
INSERT INTO `oc_city` VALUES ('2276', '707', '2269', '淄川区', '1', '0');
INSERT INTO `oc_city` VALUES ('2277', '707', '2269', '高青县', '1', '0');
INSERT INTO `oc_city` VALUES ('2278', '707', '0', '枣庄市', '1', '0');
INSERT INTO `oc_city` VALUES ('2279', '707', '2278', '台儿庄区', '1', '0');
INSERT INTO `oc_city` VALUES ('2280', '707', '2278', '山亭区', '1', '0');
INSERT INTO `oc_city` VALUES ('2281', '707', '2278', '峄城区', '1', '0');
INSERT INTO `oc_city` VALUES ('2282', '707', '2278', '市中区', '1', '0');
INSERT INTO `oc_city` VALUES ('2283', '707', '2278', '滕州市', '1', '0');
INSERT INTO `oc_city` VALUES ('2284', '707', '2278', '薛城区', '1', '0');
INSERT INTO `oc_city` VALUES ('2285', '707', '0', '东营市', '1', '0');
INSERT INTO `oc_city` VALUES ('2286', '707', '2285', '东营区', '1', '0');
INSERT INTO `oc_city` VALUES ('2287', '707', '2285', '利津县', '1', '0');
INSERT INTO `oc_city` VALUES ('2288', '707', '2285', '垦利县', '1', '0');
INSERT INTO `oc_city` VALUES ('2289', '707', '2285', '广饶县', '1', '0');
INSERT INTO `oc_city` VALUES ('2290', '707', '2285', '河口区', '1', '0');
INSERT INTO `oc_city` VALUES ('2291', '707', '0', '烟台市', '1', '0');
INSERT INTO `oc_city` VALUES ('2292', '707', '2291', '招远市', '1', '0');
INSERT INTO `oc_city` VALUES ('2293', '707', '2291', '栖霞市', '1', '0');
INSERT INTO `oc_city` VALUES ('2294', '707', '2291', '海阳市', '1', '0');
INSERT INTO `oc_city` VALUES ('2295', '707', '2291', '牟平区', '1', '0');
INSERT INTO `oc_city` VALUES ('2296', '707', '2291', '福山区', '1', '0');
INSERT INTO `oc_city` VALUES ('2297', '707', '2291', '芝罘区', '1', '0');
INSERT INTO `oc_city` VALUES ('2298', '707', '2291', '莱山区', '1', '0');
INSERT INTO `oc_city` VALUES ('2299', '707', '2291', '莱州市', '1', '0');
INSERT INTO `oc_city` VALUES ('2300', '707', '2291', '莱阳市', '1', '0');
INSERT INTO `oc_city` VALUES ('2301', '707', '2291', '蓬莱市', '1', '0');
INSERT INTO `oc_city` VALUES ('2302', '707', '2291', '长岛县', '1', '0');
INSERT INTO `oc_city` VALUES ('2303', '707', '2291', '龙口市', '1', '0');
INSERT INTO `oc_city` VALUES ('2304', '707', '0', '潍坊市', '1', '0');
INSERT INTO `oc_city` VALUES ('2305', '707', '2304', '临朐县', '1', '0');
INSERT INTO `oc_city` VALUES ('2306', '707', '2304', '坊子区', '1', '0');
INSERT INTO `oc_city` VALUES ('2307', '707', '2304', '奎文区', '1', '0');
INSERT INTO `oc_city` VALUES ('2308', '707', '2304', '安丘市', '1', '0');
INSERT INTO `oc_city` VALUES ('2309', '707', '2304', '寒亭区', '1', '0');
INSERT INTO `oc_city` VALUES ('2310', '707', '2304', '寿光市', '1', '0');
INSERT INTO `oc_city` VALUES ('2311', '707', '2304', '昌乐县', '1', '0');
INSERT INTO `oc_city` VALUES ('2312', '707', '2304', '昌邑市', '1', '0');
INSERT INTO `oc_city` VALUES ('2313', '707', '2304', '潍城区', '1', '0');
INSERT INTO `oc_city` VALUES ('2314', '707', '2304', '诸城市', '1', '0');
INSERT INTO `oc_city` VALUES ('2315', '707', '2304', '青州市', '1', '0');
INSERT INTO `oc_city` VALUES ('2316', '707', '2304', '高密市', '1', '0');
INSERT INTO `oc_city` VALUES ('2317', '707', '0', '济宁市', '1', '0');
INSERT INTO `oc_city` VALUES ('2318', '707', '2317', '任城区', '1', '0');
INSERT INTO `oc_city` VALUES ('2319', '707', '2317', '兖州市', '1', '0');
INSERT INTO `oc_city` VALUES ('2320', '707', '2317', '嘉祥县', '1', '0');
INSERT INTO `oc_city` VALUES ('2321', '707', '2317', '市中区', '1', '0');
INSERT INTO `oc_city` VALUES ('2322', '707', '2317', '微山县', '1', '0');
INSERT INTO `oc_city` VALUES ('2323', '707', '2317', '曲阜市', '1', '0');
INSERT INTO `oc_city` VALUES ('2324', '707', '2317', '梁山县', '1', '0');
INSERT INTO `oc_city` VALUES ('2325', '707', '2317', '汶上县', '1', '0');
INSERT INTO `oc_city` VALUES ('2326', '707', '2317', '泗水县', '1', '0');
INSERT INTO `oc_city` VALUES ('2327', '707', '2317', '邹城市', '1', '0');
INSERT INTO `oc_city` VALUES ('2328', '707', '2317', '金乡县', '1', '0');
INSERT INTO `oc_city` VALUES ('2329', '707', '2317', '鱼台县', '1', '0');
INSERT INTO `oc_city` VALUES ('2330', '707', '0', '泰安市', '1', '0');
INSERT INTO `oc_city` VALUES ('2331', '707', '2330', '东平县', '1', '0');
INSERT INTO `oc_city` VALUES ('2332', '707', '2330', '宁阳县', '1', '0');
INSERT INTO `oc_city` VALUES ('2333', '707', '2330', '岱岳区', '1', '0');
INSERT INTO `oc_city` VALUES ('2334', '707', '2330', '新泰市', '1', '0');
INSERT INTO `oc_city` VALUES ('2335', '707', '2330', '泰山区', '1', '0');
INSERT INTO `oc_city` VALUES ('2336', '707', '2330', '肥城市', '1', '0');
INSERT INTO `oc_city` VALUES ('2337', '707', '0', '威海市', '1', '0');
INSERT INTO `oc_city` VALUES ('2338', '707', '2337', '乳山市', '1', '0');
INSERT INTO `oc_city` VALUES ('2339', '707', '2337', '文登市', '1', '0');
INSERT INTO `oc_city` VALUES ('2340', '707', '2337', '环翠区', '1', '0');
INSERT INTO `oc_city` VALUES ('2341', '707', '2337', '荣成市', '1', '0');
INSERT INTO `oc_city` VALUES ('2342', '707', '0', '日照市', '1', '0');
INSERT INTO `oc_city` VALUES ('2343', '707', '2342', '东港区', '1', '0');
INSERT INTO `oc_city` VALUES ('2344', '707', '2342', '五莲县', '1', '0');
INSERT INTO `oc_city` VALUES ('2345', '707', '2342', '岚山区', '1', '0');
INSERT INTO `oc_city` VALUES ('2346', '707', '2342', '莒县', '1', '0');
INSERT INTO `oc_city` VALUES ('2347', '707', '0', '莱芜市', '1', '0');
INSERT INTO `oc_city` VALUES ('2348', '707', '2347', '莱城区', '1', '0');
INSERT INTO `oc_city` VALUES ('2349', '707', '2347', '钢城区', '1', '0');
INSERT INTO `oc_city` VALUES ('2350', '707', '0', '临沂市', '1', '0');
INSERT INTO `oc_city` VALUES ('2351', '707', '2350', '临沭县', '1', '0');
INSERT INTO `oc_city` VALUES ('2352', '707', '2350', '兰山区', '1', '0');
INSERT INTO `oc_city` VALUES ('2353', '707', '2350', '平邑县', '1', '0');
INSERT INTO `oc_city` VALUES ('2354', '707', '2350', '沂南县', '1', '0');
INSERT INTO `oc_city` VALUES ('2355', '707', '2350', '沂水县', '1', '0');
INSERT INTO `oc_city` VALUES ('2356', '707', '2350', '河东区', '1', '0');
INSERT INTO `oc_city` VALUES ('2357', '707', '2350', '罗庄区', '1', '0');
INSERT INTO `oc_city` VALUES ('2358', '707', '2350', '苍山县', '1', '0');
INSERT INTO `oc_city` VALUES ('2359', '707', '2350', '莒南县', '1', '0');
INSERT INTO `oc_city` VALUES ('2360', '707', '2350', '蒙阴县', '1', '0');
INSERT INTO `oc_city` VALUES ('2361', '707', '2350', '费县', '1', '0');
INSERT INTO `oc_city` VALUES ('2362', '707', '2350', '郯城县', '1', '0');
INSERT INTO `oc_city` VALUES ('2363', '707', '0', '德州市', '1', '0');
INSERT INTO `oc_city` VALUES ('2364', '707', '2363', '临邑县', '1', '0');
INSERT INTO `oc_city` VALUES ('2365', '707', '2363', '乐陵市', '1', '0');
INSERT INTO `oc_city` VALUES ('2366', '707', '2363', '夏津县', '1', '0');
INSERT INTO `oc_city` VALUES ('2367', '707', '2363', '宁津县', '1', '0');
INSERT INTO `oc_city` VALUES ('2368', '707', '2363', '平原县', '1', '0');
INSERT INTO `oc_city` VALUES ('2369', '707', '2363', '庆云县', '1', '0');
INSERT INTO `oc_city` VALUES ('2370', '707', '2363', '德城区', '1', '0');
INSERT INTO `oc_city` VALUES ('2371', '707', '2363', '武城县', '1', '0');
INSERT INTO `oc_city` VALUES ('2372', '707', '2363', '禹城市', '1', '0');
INSERT INTO `oc_city` VALUES ('2373', '707', '2363', '陵县', '1', '0');
INSERT INTO `oc_city` VALUES ('2374', '707', '2363', '齐河县', '1', '0');
INSERT INTO `oc_city` VALUES ('2375', '707', '0', '聊城市', '1', '0');
INSERT INTO `oc_city` VALUES ('2376', '707', '2375', '东昌府区', '1', '0');
INSERT INTO `oc_city` VALUES ('2377', '707', '2375', '东阿县', '1', '0');
INSERT INTO `oc_city` VALUES ('2378', '707', '2375', '临清市', '1', '0');
INSERT INTO `oc_city` VALUES ('2379', '707', '2375', '冠县', '1', '0');
INSERT INTO `oc_city` VALUES ('2380', '707', '2375', '茌平县', '1', '0');
INSERT INTO `oc_city` VALUES ('2381', '707', '2375', '莘县', '1', '0');
INSERT INTO `oc_city` VALUES ('2382', '707', '2375', '阳谷县', '1', '0');
INSERT INTO `oc_city` VALUES ('2383', '707', '2375', '高唐县', '1', '0');
INSERT INTO `oc_city` VALUES ('2384', '707', '0', '滨州市', '1', '0');
INSERT INTO `oc_city` VALUES ('2385', '707', '2384', '博兴县', '1', '0');
INSERT INTO `oc_city` VALUES ('2386', '707', '2384', '惠民县', '1', '0');
INSERT INTO `oc_city` VALUES ('2387', '707', '2384', '无棣县', '1', '0');
INSERT INTO `oc_city` VALUES ('2388', '707', '2384', '沾化县', '1', '0');
INSERT INTO `oc_city` VALUES ('2389', '707', '2384', '滨城区', '1', '0');
INSERT INTO `oc_city` VALUES ('2390', '707', '2384', '邹平县', '1', '0');
INSERT INTO `oc_city` VALUES ('2391', '707', '2384', '阳信县', '1', '0');
INSERT INTO `oc_city` VALUES ('2392', '707', '0', '菏泽市', '1', '0');
INSERT INTO `oc_city` VALUES ('2393', '707', '2392', '东明县', '1', '0');
INSERT INTO `oc_city` VALUES ('2394', '707', '2392', '单县', '1', '0');
INSERT INTO `oc_city` VALUES ('2395', '707', '2392', '定陶县', '1', '0');
INSERT INTO `oc_city` VALUES ('2396', '707', '2392', '巨野县', '1', '0');
INSERT INTO `oc_city` VALUES ('2397', '707', '2392', '成武县', '1', '0');
INSERT INTO `oc_city` VALUES ('2398', '707', '2392', '曹县', '1', '0');
INSERT INTO `oc_city` VALUES ('2399', '707', '2392', '牡丹区', '1', '0');
INSERT INTO `oc_city` VALUES ('2400', '707', '2392', '郓城县', '1', '0');
INSERT INTO `oc_city` VALUES ('2401', '707', '2392', '鄄城县', '1', '0');
INSERT INTO `oc_city` VALUES ('2402', '708', '0', '黄浦区', '1', '0');
INSERT INTO `oc_city` VALUES ('2403', '708', '0', '卢湾区', '1', '0');
INSERT INTO `oc_city` VALUES ('2404', '708', '0', '徐汇区', '1', '0');
INSERT INTO `oc_city` VALUES ('2405', '708', '0', '长宁区', '1', '0');
INSERT INTO `oc_city` VALUES ('2406', '708', '0', '静安区', '1', '0');
INSERT INTO `oc_city` VALUES ('2407', '708', '0', '普陀区', '1', '0');
INSERT INTO `oc_city` VALUES ('2408', '708', '0', '闸北区', '1', '0');
INSERT INTO `oc_city` VALUES ('2409', '708', '0', '虹口区', '1', '0');
INSERT INTO `oc_city` VALUES ('2410', '708', '0', '杨浦区', '1', '0');
INSERT INTO `oc_city` VALUES ('2411', '708', '0', '闵行区', '1', '0');
INSERT INTO `oc_city` VALUES ('2412', '708', '0', '宝山区', '1', '0');
INSERT INTO `oc_city` VALUES ('2413', '708', '0', '嘉定区', '1', '0');
INSERT INTO `oc_city` VALUES ('2414', '708', '0', '浦东新区', '1', '0');
INSERT INTO `oc_city` VALUES ('2415', '708', '0', '金山区', '1', '0');
INSERT INTO `oc_city` VALUES ('2416', '708', '0', '松江区', '1', '0');
INSERT INTO `oc_city` VALUES ('2417', '708', '0', '青浦区', '1', '0');
INSERT INTO `oc_city` VALUES ('2418', '708', '0', '南汇区', '1', '0');
INSERT INTO `oc_city` VALUES ('2419', '708', '0', '奉贤区', '1', '0');
INSERT INTO `oc_city` VALUES ('2420', '708', '0', '崇明县', '1', '0');
INSERT INTO `oc_city` VALUES ('2421', '709', '0', '西安市', '1', '0');
INSERT INTO `oc_city` VALUES ('2422', '709', '2421', '临潼区', '1', '0');
INSERT INTO `oc_city` VALUES ('2423', '709', '2421', '周至县', '1', '0');
INSERT INTO `oc_city` VALUES ('2424', '709', '2421', '户县', '1', '0');
INSERT INTO `oc_city` VALUES ('2425', '709', '2421', '新城区', '1', '0');
INSERT INTO `oc_city` VALUES ('2426', '709', '2421', '未央区', '1', '0');
INSERT INTO `oc_city` VALUES ('2427', '709', '2421', '灞桥区', '1', '0');
INSERT INTO `oc_city` VALUES ('2428', '709', '2421', '碑林区', '1', '0');
INSERT INTO `oc_city` VALUES ('2429', '709', '2421', '莲湖区', '1', '0');
INSERT INTO `oc_city` VALUES ('2430', '709', '2421', '蓝田县', '1', '0');
INSERT INTO `oc_city` VALUES ('2431', '709', '2421', '长安区', '1', '0');
INSERT INTO `oc_city` VALUES ('2432', '709', '2421', '阎良区', '1', '0');
INSERT INTO `oc_city` VALUES ('2433', '709', '2421', '雁塔区', '1', '0');
INSERT INTO `oc_city` VALUES ('2434', '709', '2421', '高陵县', '1', '0');
INSERT INTO `oc_city` VALUES ('2435', '709', '0', '铜川市', '1', '0');
INSERT INTO `oc_city` VALUES ('2436', '709', '2435', '印台区', '1', '0');
INSERT INTO `oc_city` VALUES ('2437', '709', '2435', '宜君县', '1', '0');
INSERT INTO `oc_city` VALUES ('2438', '709', '2435', '王益区', '1', '0');
INSERT INTO `oc_city` VALUES ('2439', '709', '2435', '耀州区', '1', '0');
INSERT INTO `oc_city` VALUES ('2440', '709', '0', '宝鸡市', '1', '0');
INSERT INTO `oc_city` VALUES ('2441', '709', '2440', '凤县', '1', '0');
INSERT INTO `oc_city` VALUES ('2442', '709', '2440', '凤翔县', '1', '0');
INSERT INTO `oc_city` VALUES ('2443', '709', '2440', '千阳县', '1', '0');
INSERT INTO `oc_city` VALUES ('2444', '709', '2440', '太白县', '1', '0');
INSERT INTO `oc_city` VALUES ('2445', '709', '2440', '岐山县', '1', '0');
INSERT INTO `oc_city` VALUES ('2446', '709', '2440', '扶风县', '1', '0');
INSERT INTO `oc_city` VALUES ('2447', '709', '2440', '渭滨区', '1', '0');
INSERT INTO `oc_city` VALUES ('2448', '709', '2440', '眉县', '1', '0');
INSERT INTO `oc_city` VALUES ('2449', '709', '2440', '金台区', '1', '0');
INSERT INTO `oc_city` VALUES ('2450', '709', '2440', '陇县', '1', '0');
INSERT INTO `oc_city` VALUES ('2451', '709', '2440', '陈仓区', '1', '0');
INSERT INTO `oc_city` VALUES ('2452', '709', '2440', '麟游县', '1', '0');
INSERT INTO `oc_city` VALUES ('2453', '709', '0', '咸阳市', '1', '0');
INSERT INTO `oc_city` VALUES ('2454', '709', '2453', '三原县', '1', '0');
INSERT INTO `oc_city` VALUES ('2455', '709', '2453', '干县', '1', '0');
INSERT INTO `oc_city` VALUES ('2456', '709', '2453', '兴平市', '1', '0');
INSERT INTO `oc_city` VALUES ('2457', '709', '2453', '彬县', '1', '0');
INSERT INTO `oc_city` VALUES ('2458', '709', '2453', '旬邑县', '1', '0');
INSERT INTO `oc_city` VALUES ('2459', '709', '2453', '杨陵区', '1', '0');
INSERT INTO `oc_city` VALUES ('2460', '709', '2453', '武功县', '1', '0');
INSERT INTO `oc_city` VALUES ('2461', '709', '2453', '永寿县', '1', '0');
INSERT INTO `oc_city` VALUES ('2462', '709', '2453', '泾阳县', '1', '0');
INSERT INTO `oc_city` VALUES ('2463', '709', '2453', '淳化县', '1', '0');
INSERT INTO `oc_city` VALUES ('2464', '709', '2453', '渭城区', '1', '0');
INSERT INTO `oc_city` VALUES ('2465', '709', '2453', '礼泉县', '1', '0');
INSERT INTO `oc_city` VALUES ('2466', '709', '2453', '秦都区', '1', '0');
INSERT INTO `oc_city` VALUES ('2467', '709', '2453', '长武县', '1', '0');
INSERT INTO `oc_city` VALUES ('2468', '709', '0', '渭南市', '1', '0');
INSERT INTO `oc_city` VALUES ('2469', '709', '2468', '临渭区', '1', '0');
INSERT INTO `oc_city` VALUES ('2470', '709', '2468', '华县', '1', '0');
INSERT INTO `oc_city` VALUES ('2471', '709', '2468', '华阴市', '1', '0');
INSERT INTO `oc_city` VALUES ('2472', '709', '2468', '合阳县', '1', '0');
INSERT INTO `oc_city` VALUES ('2473', '709', '2468', '大荔县', '1', '0');
INSERT INTO `oc_city` VALUES ('2474', '709', '2468', '富平县', '1', '0');
INSERT INTO `oc_city` VALUES ('2475', '709', '2468', '潼关县', '1', '0');
INSERT INTO `oc_city` VALUES ('2476', '709', '2468', '澄城县', '1', '0');
INSERT INTO `oc_city` VALUES ('2477', '709', '2468', '白水县', '1', '0');
INSERT INTO `oc_city` VALUES ('2478', '709', '2468', '蒲城县', '1', '0');
INSERT INTO `oc_city` VALUES ('2479', '709', '2468', '韩城市', '1', '0');
INSERT INTO `oc_city` VALUES ('2480', '709', '0', '延安市', '1', '0');
INSERT INTO `oc_city` VALUES ('2481', '709', '2480', '吴起县', '1', '0');
INSERT INTO `oc_city` VALUES ('2482', '709', '2480', '子长县', '1', '0');
INSERT INTO `oc_city` VALUES ('2483', '709', '2480', '安塞县', '1', '0');
INSERT INTO `oc_city` VALUES ('2484', '709', '2480', '宜川县', '1', '0');
INSERT INTO `oc_city` VALUES ('2485', '709', '2480', '宝塔区', '1', '0');
INSERT INTO `oc_city` VALUES ('2486', '709', '2480', '富县', '1', '0');
INSERT INTO `oc_city` VALUES ('2487', '709', '2480', '延川县', '1', '0');
INSERT INTO `oc_city` VALUES ('2488', '709', '2480', '延长县', '1', '0');
INSERT INTO `oc_city` VALUES ('2489', '709', '2480', '志丹县', '1', '0');
INSERT INTO `oc_city` VALUES ('2490', '709', '2480', '洛川县', '1', '0');
INSERT INTO `oc_city` VALUES ('2491', '709', '2480', '甘泉县', '1', '0');
INSERT INTO `oc_city` VALUES ('2492', '709', '2480', '黄陵县', '1', '0');
INSERT INTO `oc_city` VALUES ('2493', '709', '2480', '黄龙县', '1', '0');
INSERT INTO `oc_city` VALUES ('2494', '709', '0', '汉中市', '1', '0');
INSERT INTO `oc_city` VALUES ('2495', '709', '2494', '佛坪县', '1', '0');
INSERT INTO `oc_city` VALUES ('2496', '709', '2494', '勉县', '1', '0');
INSERT INTO `oc_city` VALUES ('2497', '709', '2494', '南郑县', '1', '0');
INSERT INTO `oc_city` VALUES ('2498', '709', '2494', '城固县', '1', '0');
INSERT INTO `oc_city` VALUES ('2499', '709', '2494', '宁强县', '1', '0');
INSERT INTO `oc_city` VALUES ('2500', '709', '2494', '汉台区', '1', '0');
INSERT INTO `oc_city` VALUES ('2501', '709', '2494', '洋县', '1', '0');
INSERT INTO `oc_city` VALUES ('2502', '709', '2494', '留坝县', '1', '0');
INSERT INTO `oc_city` VALUES ('2503', '709', '2494', '略阳县', '1', '0');
INSERT INTO `oc_city` VALUES ('2504', '709', '2494', '西乡县', '1', '0');
INSERT INTO `oc_city` VALUES ('2505', '709', '2494', '镇巴县', '1', '0');
INSERT INTO `oc_city` VALUES ('2506', '709', '0', '榆林市', '1', '0');
INSERT INTO `oc_city` VALUES ('2507', '709', '2506', '佳县', '1', '0');
INSERT INTO `oc_city` VALUES ('2508', '709', '2506', '吴堡县', '1', '0');
INSERT INTO `oc_city` VALUES ('2509', '709', '2506', '子洲县', '1', '0');
INSERT INTO `oc_city` VALUES ('2510', '709', '2506', '定边县', '1', '0');
INSERT INTO `oc_city` VALUES ('2511', '709', '2506', '府谷县', '1', '0');
INSERT INTO `oc_city` VALUES ('2512', '709', '2506', '榆林市榆阳区', '1', '0');
INSERT INTO `oc_city` VALUES ('2513', '709', '2506', '横山县', '1', '0');
INSERT INTO `oc_city` VALUES ('2514', '709', '2506', '清涧县', '1', '0');
INSERT INTO `oc_city` VALUES ('2515', '709', '2506', '神木县', '1', '0');
INSERT INTO `oc_city` VALUES ('2516', '709', '2506', '米脂县', '1', '0');
INSERT INTO `oc_city` VALUES ('2517', '709', '2506', '绥德县', '1', '0');
INSERT INTO `oc_city` VALUES ('2518', '709', '2506', '靖边县', '1', '0');
INSERT INTO `oc_city` VALUES ('2519', '709', '0', '安康市', '1', '0');
INSERT INTO `oc_city` VALUES ('2520', '709', '2519', '宁陕县', '1', '0');
INSERT INTO `oc_city` VALUES ('2521', '709', '2519', '岚皋县', '1', '0');
INSERT INTO `oc_city` VALUES ('2522', '709', '2519', '平利县', '1', '0');
INSERT INTO `oc_city` VALUES ('2523', '709', '2519', '旬阳县', '1', '0');
INSERT INTO `oc_city` VALUES ('2524', '709', '2519', '汉滨区', '1', '0');
INSERT INTO `oc_city` VALUES ('2525', '709', '2519', '汉阴县', '1', '0');
INSERT INTO `oc_city` VALUES ('2526', '709', '2519', '白河县', '1', '0');
INSERT INTO `oc_city` VALUES ('2527', '709', '2519', '石泉县', '1', '0');
INSERT INTO `oc_city` VALUES ('2528', '709', '2519', '紫阳县', '1', '0');
INSERT INTO `oc_city` VALUES ('2529', '709', '2519', '镇坪县', '1', '0');
INSERT INTO `oc_city` VALUES ('2530', '709', '0', '商洛市', '1', '0');
INSERT INTO `oc_city` VALUES ('2531', '709', '2530', '丹凤县', '1', '0');
INSERT INTO `oc_city` VALUES ('2532', '709', '2530', '商南县', '1', '0');
INSERT INTO `oc_city` VALUES ('2533', '709', '2530', '商州区', '1', '0');
INSERT INTO `oc_city` VALUES ('2534', '709', '2530', '山阳县', '1', '0');
INSERT INTO `oc_city` VALUES ('2535', '709', '2530', '柞水县', '1', '0');
INSERT INTO `oc_city` VALUES ('2536', '709', '2530', '洛南县', '1', '0');
INSERT INTO `oc_city` VALUES ('2537', '709', '2530', '镇安县', '1', '0');
INSERT INTO `oc_city` VALUES ('2538', '710', '0', '成都市', '1', '0');
INSERT INTO `oc_city` VALUES ('2539', '710', '2538', '双流区', '1', '0');
INSERT INTO `oc_city` VALUES ('2540', '710', '2538', '大邑县', '1', '0');
INSERT INTO `oc_city` VALUES ('2541', '710', '2538', '崇州市', '1', '0');
INSERT INTO `oc_city` VALUES ('2542', '710', '2538', '彭州市', '1', '0');
INSERT INTO `oc_city` VALUES ('2543', '710', '2538', '成华区', '1', '0');
INSERT INTO `oc_city` VALUES ('2544', '710', '2538', '新津县', '1', '0');
INSERT INTO `oc_city` VALUES ('2545', '710', '2538', '新都区', '1', '0');
INSERT INTO `oc_city` VALUES ('2546', '710', '2538', '武侯区', '1', '0');
INSERT INTO `oc_city` VALUES ('2547', '710', '2538', '温江区', '1', '0');
INSERT INTO `oc_city` VALUES ('2548', '710', '2538', '蒲江县', '1', '0');
INSERT INTO `oc_city` VALUES ('2549', '710', '2538', '邛崃市', '1', '0');
INSERT INTO `oc_city` VALUES ('2550', '710', '2538', '郫都区', '1', '0');
INSERT INTO `oc_city` VALUES ('2551', '710', '2538', '都江堰市', '1', '0');
INSERT INTO `oc_city` VALUES ('2552', '710', '2538', '金堂县', '1', '0');
INSERT INTO `oc_city` VALUES ('2553', '710', '2538', '金牛区', '1', '0');
INSERT INTO `oc_city` VALUES ('2554', '710', '2538', '锦江区', '1', '0');
INSERT INTO `oc_city` VALUES ('2555', '710', '2538', '青白江区', '1', '0');
INSERT INTO `oc_city` VALUES ('2556', '710', '2538', '青羊区', '1', '0');
INSERT INTO `oc_city` VALUES ('2557', '710', '2538', '龙泉驿区', '1', '0');
INSERT INTO `oc_city` VALUES ('2558', '710', '0', '自贡市', '1', '0');
INSERT INTO `oc_city` VALUES ('2559', '710', '2558', '大安区', '1', '0');
INSERT INTO `oc_city` VALUES ('2560', '710', '2558', '富顺县', '1', '0');
INSERT INTO `oc_city` VALUES ('2561', '710', '2558', '沿滩区', '1', '0');
INSERT INTO `oc_city` VALUES ('2562', '710', '2558', '自流井区', '1', '0');
INSERT INTO `oc_city` VALUES ('2563', '710', '2558', '荣县', '1', '0');
INSERT INTO `oc_city` VALUES ('2564', '710', '2558', '贡井区', '1', '0');
INSERT INTO `oc_city` VALUES ('2565', '710', '0', '攀枝花市', '1', '0');
INSERT INTO `oc_city` VALUES ('2566', '710', '2565', '东区', '1', '0');
INSERT INTO `oc_city` VALUES ('2567', '710', '2565', '仁和区', '1', '0');
INSERT INTO `oc_city` VALUES ('2568', '710', '2565', '盐边县', '1', '0');
INSERT INTO `oc_city` VALUES ('2569', '710', '2565', '米易县', '1', '0');
INSERT INTO `oc_city` VALUES ('2570', '710', '2565', '西区', '1', '0');
INSERT INTO `oc_city` VALUES ('2571', '710', '0', '泸州市', '1', '0');
INSERT INTO `oc_city` VALUES ('2572', '710', '2571', '叙永县', '1', '0');
INSERT INTO `oc_city` VALUES ('2573', '710', '2571', '古蔺县', '1', '0');
INSERT INTO `oc_city` VALUES ('2574', '710', '2571', '合江县', '1', '0');
INSERT INTO `oc_city` VALUES ('2575', '710', '2571', '江阳区', '1', '0');
INSERT INTO `oc_city` VALUES ('2576', '710', '2571', '泸县', '1', '0');
INSERT INTO `oc_city` VALUES ('2577', '710', '2571', '纳溪区', '1', '0');
INSERT INTO `oc_city` VALUES ('2578', '710', '2571', '龙马潭区', '1', '0');
INSERT INTO `oc_city` VALUES ('2579', '710', '0', '德阳市', '1', '0');
INSERT INTO `oc_city` VALUES ('2580', '710', '2579', '中江县', '1', '0');
INSERT INTO `oc_city` VALUES ('2581', '710', '2579', '什邡市', '1', '0');
INSERT INTO `oc_city` VALUES ('2582', '710', '2579', '广汉市', '1', '0');
INSERT INTO `oc_city` VALUES ('2583', '710', '2579', '旌阳区', '1', '0');
INSERT INTO `oc_city` VALUES ('2584', '710', '2579', '绵竹市', '1', '0');
INSERT INTO `oc_city` VALUES ('2585', '710', '2579', '罗江县', '1', '0');
INSERT INTO `oc_city` VALUES ('2586', '710', '0', '绵阳市', '1', '0');
INSERT INTO `oc_city` VALUES ('2587', '710', '2586', '三台县', '1', '0');
INSERT INTO `oc_city` VALUES ('2588', '710', '2586', '北川羌族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('2589', '710', '2586', '安县', '1', '0');
INSERT INTO `oc_city` VALUES ('2590', '710', '2586', '平武县', '1', '0');
INSERT INTO `oc_city` VALUES ('2591', '710', '2586', '梓潼县', '1', '0');
INSERT INTO `oc_city` VALUES ('2592', '710', '2586', '江油市', '1', '0');
INSERT INTO `oc_city` VALUES ('2593', '710', '2586', '涪城区', '1', '0');
INSERT INTO `oc_city` VALUES ('2594', '710', '2586', '游仙区', '1', '0');
INSERT INTO `oc_city` VALUES ('2595', '710', '2586', '盐亭县', '1', '0');
INSERT INTO `oc_city` VALUES ('2596', '710', '0', '广元市', '1', '0');
INSERT INTO `oc_city` VALUES ('2597', '710', '2596', '元坝区', '1', '0');
INSERT INTO `oc_city` VALUES ('2598', '710', '2596', '利州区', '1', '0');
INSERT INTO `oc_city` VALUES ('2599', '710', '2596', '剑阁县', '1', '0');
INSERT INTO `oc_city` VALUES ('2600', '710', '2596', '旺苍县', '1', '0');
INSERT INTO `oc_city` VALUES ('2601', '710', '2596', '朝天区', '1', '0');
INSERT INTO `oc_city` VALUES ('2602', '710', '2596', '苍溪县', '1', '0');
INSERT INTO `oc_city` VALUES ('2603', '710', '2596', '青川县', '1', '0');
INSERT INTO `oc_city` VALUES ('2604', '710', '0', '遂宁市', '1', '0');
INSERT INTO `oc_city` VALUES ('2605', '710', '2604', '大英县', '1', '0');
INSERT INTO `oc_city` VALUES ('2606', '710', '2604', '安居区', '1', '0');
INSERT INTO `oc_city` VALUES ('2607', '710', '2604', '射洪县', '1', '0');
INSERT INTO `oc_city` VALUES ('2608', '710', '2604', '船山区', '1', '0');
INSERT INTO `oc_city` VALUES ('2609', '710', '2604', '蓬溪县', '1', '0');
INSERT INTO `oc_city` VALUES ('2610', '710', '0', '内江市', '1', '0');
INSERT INTO `oc_city` VALUES ('2611', '710', '2610', '东兴区', '1', '0');
INSERT INTO `oc_city` VALUES ('2612', '710', '2610', '威远县', '1', '0');
INSERT INTO `oc_city` VALUES ('2613', '710', '2610', '市中区', '1', '0');
INSERT INTO `oc_city` VALUES ('2614', '710', '2610', '资中县', '1', '0');
INSERT INTO `oc_city` VALUES ('2615', '710', '2610', '隆昌县', '1', '0');
INSERT INTO `oc_city` VALUES ('2616', '710', '0', '乐山市', '1', '0');
INSERT INTO `oc_city` VALUES ('2617', '710', '2616', '五通桥区', '1', '0');
INSERT INTO `oc_city` VALUES ('2618', '710', '2616', '井研县', '1', '0');
INSERT INTO `oc_city` VALUES ('2619', '710', '2616', '夹江县', '1', '0');
INSERT INTO `oc_city` VALUES ('2620', '710', '2616', '峨眉山市', '1', '0');
INSERT INTO `oc_city` VALUES ('2621', '710', '2616', '峨边彝族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('2622', '710', '2616', '市中区', '1', '0');
INSERT INTO `oc_city` VALUES ('2623', '710', '2616', '沐川县', '1', '0');
INSERT INTO `oc_city` VALUES ('2624', '710', '2616', '沙湾区', '1', '0');
INSERT INTO `oc_city` VALUES ('2625', '710', '2616', '犍为县', '1', '0');
INSERT INTO `oc_city` VALUES ('2626', '710', '2616', '金口河区', '1', '0');
INSERT INTO `oc_city` VALUES ('2627', '710', '2616', '马边彝族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('2628', '710', '0', '南充市', '1', '0');
INSERT INTO `oc_city` VALUES ('2629', '710', '2628', '仪陇县', '1', '0');
INSERT INTO `oc_city` VALUES ('2630', '710', '2628', '南充市嘉陵区', '1', '0');
INSERT INTO `oc_city` VALUES ('2631', '710', '2628', '南部县', '1', '0');
INSERT INTO `oc_city` VALUES ('2632', '710', '2628', '嘉陵区', '1', '0');
INSERT INTO `oc_city` VALUES ('2633', '710', '2628', '营山县', '1', '0');
INSERT INTO `oc_city` VALUES ('2634', '710', '2628', '蓬安县', '1', '0');
INSERT INTO `oc_city` VALUES ('2635', '710', '2628', '西充县', '1', '0');
INSERT INTO `oc_city` VALUES ('2636', '710', '2628', '阆中市', '1', '0');
INSERT INTO `oc_city` VALUES ('2637', '710', '2628', '顺庆区', '1', '0');
INSERT INTO `oc_city` VALUES ('2638', '710', '2628', '高坪区', '1', '0');
INSERT INTO `oc_city` VALUES ('2639', '710', '0', '眉山市', '1', '0');
INSERT INTO `oc_city` VALUES ('2640', '710', '2639', '东坡区', '1', '0');
INSERT INTO `oc_city` VALUES ('2641', '710', '2639', '丹棱县', '1', '0');
INSERT INTO `oc_city` VALUES ('2642', '710', '2639', '仁寿县', '1', '0');
INSERT INTO `oc_city` VALUES ('2643', '710', '2639', '彭山县', '1', '0');
INSERT INTO `oc_city` VALUES ('2644', '710', '2639', '洪雅县', '1', '0');
INSERT INTO `oc_city` VALUES ('2645', '710', '2639', '青神县', '1', '0');
INSERT INTO `oc_city` VALUES ('2646', '710', '0', '宜宾市', '1', '0');
INSERT INTO `oc_city` VALUES ('2647', '710', '2646', '兴文县', '1', '0');
INSERT INTO `oc_city` VALUES ('2648', '710', '2646', '南溪县', '1', '0');
INSERT INTO `oc_city` VALUES ('2649', '710', '2646', '宜宾县', '1', '0');
INSERT INTO `oc_city` VALUES ('2650', '710', '2646', '屏山县', '1', '0');
INSERT INTO `oc_city` VALUES ('2651', '710', '2646', '江安县', '1', '0');
INSERT INTO `oc_city` VALUES ('2652', '710', '2646', '珙县', '1', '0');
INSERT INTO `oc_city` VALUES ('2653', '710', '2646', '筠连县', '1', '0');
INSERT INTO `oc_city` VALUES ('2654', '710', '2646', '翠屏区', '1', '0');
INSERT INTO `oc_city` VALUES ('2655', '710', '2646', '长宁县', '1', '0');
INSERT INTO `oc_city` VALUES ('2656', '710', '2646', '高县', '1', '0');
INSERT INTO `oc_city` VALUES ('2657', '710', '0', '广安市', '1', '0');
INSERT INTO `oc_city` VALUES ('2658', '710', '2657', '华蓥市', '1', '0');
INSERT INTO `oc_city` VALUES ('2659', '710', '2657', '岳池县', '1', '0');
INSERT INTO `oc_city` VALUES ('2660', '710', '2657', '广安区', '1', '0');
INSERT INTO `oc_city` VALUES ('2661', '710', '2657', '武胜县', '1', '0');
INSERT INTO `oc_city` VALUES ('2662', '710', '2657', '邻水县', '1', '0');
INSERT INTO `oc_city` VALUES ('2663', '710', '0', '达州市', '1', '0');
INSERT INTO `oc_city` VALUES ('2664', '710', '2663', '万源市', '1', '0');
INSERT INTO `oc_city` VALUES ('2665', '710', '2663', '大竹县', '1', '0');
INSERT INTO `oc_city` VALUES ('2666', '710', '2663', '宣汉县', '1', '0');
INSERT INTO `oc_city` VALUES ('2667', '710', '2663', '开江县', '1', '0');
INSERT INTO `oc_city` VALUES ('2668', '710', '2663', '渠县', '1', '0');
INSERT INTO `oc_city` VALUES ('2669', '710', '2663', '达县', '1', '0');
INSERT INTO `oc_city` VALUES ('2670', '710', '2663', '通川区', '1', '0');
INSERT INTO `oc_city` VALUES ('2671', '710', '0', '雅安市', '1', '0');
INSERT INTO `oc_city` VALUES ('2672', '710', '2671', '名山县', '1', '0');
INSERT INTO `oc_city` VALUES ('2673', '710', '2671', '天全县', '1', '0');
INSERT INTO `oc_city` VALUES ('2674', '710', '2671', '宝兴县', '1', '0');
INSERT INTO `oc_city` VALUES ('2675', '710', '2671', '汉源县', '1', '0');
INSERT INTO `oc_city` VALUES ('2676', '710', '2671', '石棉县', '1', '0');
INSERT INTO `oc_city` VALUES ('2677', '710', '2671', '芦山县', '1', '0');
INSERT INTO `oc_city` VALUES ('2678', '710', '2671', '荥经县', '1', '0');
INSERT INTO `oc_city` VALUES ('2679', '710', '2671', '雨城区', '1', '0');
INSERT INTO `oc_city` VALUES ('2680', '710', '0', '巴中市', '1', '0');
INSERT INTO `oc_city` VALUES ('2681', '710', '2680', '南江县', '1', '0');
INSERT INTO `oc_city` VALUES ('2682', '710', '2680', '巴州区', '1', '0');
INSERT INTO `oc_city` VALUES ('2683', '710', '2680', '平昌县', '1', '0');
INSERT INTO `oc_city` VALUES ('2684', '710', '2680', '通江县', '1', '0');
INSERT INTO `oc_city` VALUES ('2685', '710', '0', '资阳市', '1', '0');
INSERT INTO `oc_city` VALUES ('2686', '710', '2685', '乐至县', '1', '0');
INSERT INTO `oc_city` VALUES ('2687', '710', '2685', '安岳县', '1', '0');
INSERT INTO `oc_city` VALUES ('2688', '710', '2538', '简阳市', '1', '0');
INSERT INTO `oc_city` VALUES ('2689', '710', '2685', '雁江区', '1', '0');
INSERT INTO `oc_city` VALUES ('2690', '710', '0', '阿坝藏族羌族自治州', '1', '0');
INSERT INTO `oc_city` VALUES ('2691', '710', '2690', '九寨沟县', '1', '0');
INSERT INTO `oc_city` VALUES ('2692', '710', '2690', '壤塘县', '1', '0');
INSERT INTO `oc_city` VALUES ('2693', '710', '2690', '小金县', '1', '0');
INSERT INTO `oc_city` VALUES ('2694', '710', '2690', '松潘县', '1', '0');
INSERT INTO `oc_city` VALUES ('2695', '710', '2690', '汶川县', '1', '0');
INSERT INTO `oc_city` VALUES ('2696', '710', '2690', '理县', '1', '0');
INSERT INTO `oc_city` VALUES ('2697', '710', '2690', '红原县', '1', '0');
INSERT INTO `oc_city` VALUES ('2698', '710', '2690', '若尔盖县', '1', '0');
INSERT INTO `oc_city` VALUES ('2699', '710', '2690', '茂县', '1', '0');
INSERT INTO `oc_city` VALUES ('2700', '710', '2690', '金川县', '1', '0');
INSERT INTO `oc_city` VALUES ('2701', '710', '2690', '阿坝县', '1', '0');
INSERT INTO `oc_city` VALUES ('2702', '710', '2690', '马尔康县', '1', '0');
INSERT INTO `oc_city` VALUES ('2703', '710', '2690', '黑水县', '1', '0');
INSERT INTO `oc_city` VALUES ('2704', '710', '0', '甘孜藏族自治州', '1', '0');
INSERT INTO `oc_city` VALUES ('2705', '710', '2704', '丹巴县', '1', '0');
INSERT INTO `oc_city` VALUES ('2706', '710', '2704', '乡城县', '1', '0');
INSERT INTO `oc_city` VALUES ('2707', '710', '2704', '巴塘县', '1', '0');
INSERT INTO `oc_city` VALUES ('2708', '710', '2704', '康定县', '1', '0');
INSERT INTO `oc_city` VALUES ('2709', '710', '2704', '得荣县', '1', '0');
INSERT INTO `oc_city` VALUES ('2710', '710', '2704', '德格县', '1', '0');
INSERT INTO `oc_city` VALUES ('2711', '710', '2704', '新龙县', '1', '0');
INSERT INTO `oc_city` VALUES ('2712', '710', '2704', '泸定县', '1', '0');
INSERT INTO `oc_city` VALUES ('2713', '710', '2704', '炉霍县', '1', '0');
INSERT INTO `oc_city` VALUES ('2714', '710', '2704', '理塘县', '1', '0');
INSERT INTO `oc_city` VALUES ('2715', '710', '2704', '甘孜县', '1', '0');
INSERT INTO `oc_city` VALUES ('2716', '710', '2704', '白玉县', '1', '0');
INSERT INTO `oc_city` VALUES ('2717', '710', '2704', '石渠县', '1', '0');
INSERT INTO `oc_city` VALUES ('2718', '710', '2704', '稻城县', '1', '0');
INSERT INTO `oc_city` VALUES ('2719', '710', '2704', '色达县', '1', '0');
INSERT INTO `oc_city` VALUES ('2720', '710', '2704', '道孚县', '1', '0');
INSERT INTO `oc_city` VALUES ('2721', '710', '2704', '雅江县', '1', '0');
INSERT INTO `oc_city` VALUES ('2722', '710', '0', '凉山彝族自治州', '1', '0');
INSERT INTO `oc_city` VALUES ('2723', '710', '2722', '会东县', '1', '0');
INSERT INTO `oc_city` VALUES ('2724', '710', '2722', '会理县', '1', '0');
INSERT INTO `oc_city` VALUES ('2725', '710', '2722', '冕宁县', '1', '0');
INSERT INTO `oc_city` VALUES ('2726', '710', '2722', '喜德县', '1', '0');
INSERT INTO `oc_city` VALUES ('2727', '710', '2722', '宁南县', '1', '0');
INSERT INTO `oc_city` VALUES ('2728', '710', '2722', '布拖县', '1', '0');
INSERT INTO `oc_city` VALUES ('2729', '710', '2722', '德昌县', '1', '0');
INSERT INTO `oc_city` VALUES ('2730', '710', '2722', '昭觉县', '1', '0');
INSERT INTO `oc_city` VALUES ('2731', '710', '2722', '普格县', '1', '0');
INSERT INTO `oc_city` VALUES ('2732', '710', '2722', '木里藏族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('2733', '710', '2722', '甘洛县', '1', '0');
INSERT INTO `oc_city` VALUES ('2734', '710', '2722', '盐源县', '1', '0');
INSERT INTO `oc_city` VALUES ('2735', '710', '2722', '美姑县', '1', '0');
INSERT INTO `oc_city` VALUES ('2736', '710', '2722', '西昌', '1', '0');
INSERT INTO `oc_city` VALUES ('2737', '710', '2722', '越西县', '1', '0');
INSERT INTO `oc_city` VALUES ('2738', '710', '2722', '金阳县', '1', '0');
INSERT INTO `oc_city` VALUES ('2739', '710', '2722', '雷波县', '1', '0');
INSERT INTO `oc_city` VALUES ('2740', '711', '0', '和平区', '1', '0');
INSERT INTO `oc_city` VALUES ('2741', '711', '0', '河东区', '1', '0');
INSERT INTO `oc_city` VALUES ('2742', '711', '0', '河西区', '1', '0');
INSERT INTO `oc_city` VALUES ('2743', '711', '0', '南开区', '1', '0');
INSERT INTO `oc_city` VALUES ('2744', '711', '0', '河北区', '1', '0');
INSERT INTO `oc_city` VALUES ('2745', '711', '0', '红桥区', '1', '0');
INSERT INTO `oc_city` VALUES ('2746', '711', '0', '塘沽区', '1', '0');
INSERT INTO `oc_city` VALUES ('2747', '711', '0', '汉沽区', '1', '0');
INSERT INTO `oc_city` VALUES ('2748', '711', '0', '大港区', '1', '0');
INSERT INTO `oc_city` VALUES ('2749', '711', '0', '东丽区', '1', '0');
INSERT INTO `oc_city` VALUES ('2750', '711', '0', '西青区', '1', '0');
INSERT INTO `oc_city` VALUES ('2751', '711', '0', '津南区', '1', '0');
INSERT INTO `oc_city` VALUES ('2752', '711', '0', '北辰区', '1', '0');
INSERT INTO `oc_city` VALUES ('2753', '711', '0', '武清区', '1', '0');
INSERT INTO `oc_city` VALUES ('2754', '711', '0', '宝坻区', '1', '0');
INSERT INTO `oc_city` VALUES ('2755', '711', '0', '宁河县', '1', '0');
INSERT INTO `oc_city` VALUES ('2756', '711', '0', '静海县', '1', '0');
INSERT INTO `oc_city` VALUES ('2757', '711', '0', '蓟县', '1', '0');
INSERT INTO `oc_city` VALUES ('2758', '712', '0', '乌鲁木齐市', '1', '0');
INSERT INTO `oc_city` VALUES ('2759', '712', '2758', '东山区', '1', '0');
INSERT INTO `oc_city` VALUES ('2760', '712', '2758', '乌鲁木齐县', '1', '0');
INSERT INTO `oc_city` VALUES ('2761', '712', '2758', '天山区', '1', '0');
INSERT INTO `oc_city` VALUES ('2762', '712', '2758', '头屯河区', '1', '0');
INSERT INTO `oc_city` VALUES ('2763', '712', '2758', '新市区', '1', '0');
INSERT INTO `oc_city` VALUES ('2764', '712', '2758', '水磨沟区', '1', '0');
INSERT INTO `oc_city` VALUES ('2765', '712', '2758', '沙依巴克区', '1', '0');
INSERT INTO `oc_city` VALUES ('2766', '712', '2758', '达坂城区', '1', '0');
INSERT INTO `oc_city` VALUES ('2767', '712', '0', '克拉玛依市', '1', '0');
INSERT INTO `oc_city` VALUES ('2768', '712', '2767', '乌尔禾区', '1', '0');
INSERT INTO `oc_city` VALUES ('2769', '712', '2767', '克拉玛依区', '1', '0');
INSERT INTO `oc_city` VALUES ('2770', '712', '2767', '独山子区', '1', '0');
INSERT INTO `oc_city` VALUES ('2771', '712', '2767', '白碱滩区', '1', '0');
INSERT INTO `oc_city` VALUES ('2772', '712', '0', '吐鲁番地区', '1', '0');
INSERT INTO `oc_city` VALUES ('2773', '712', '2772', '吐鲁番市', '1', '0');
INSERT INTO `oc_city` VALUES ('2774', '712', '2772', '托克逊县', '1', '0');
INSERT INTO `oc_city` VALUES ('2775', '712', '2772', '鄯善县', '1', '0');
INSERT INTO `oc_city` VALUES ('2776', '712', '0', '哈密地区', '1', '0');
INSERT INTO `oc_city` VALUES ('2777', '712', '2776', '伊吾县', '1', '0');
INSERT INTO `oc_city` VALUES ('2778', '712', '2776', '哈密市', '1', '0');
INSERT INTO `oc_city` VALUES ('2779', '712', '2776', '巴里坤哈萨克自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('2780', '712', '0', '昌吉回族自治州', '1', '0');
INSERT INTO `oc_city` VALUES ('2781', '712', '2780', '吉木萨尔县', '1', '0');
INSERT INTO `oc_city` VALUES ('2782', '712', '2780', '呼图壁县', '1', '0');
INSERT INTO `oc_city` VALUES ('2783', '712', '2780', '奇台县', '1', '0');
INSERT INTO `oc_city` VALUES ('2784', '712', '2780', '昌吉市', '1', '0');
INSERT INTO `oc_city` VALUES ('2785', '712', '2780', '木垒哈萨克自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('2786', '712', '2780', '玛纳斯县', '1', '0');
INSERT INTO `oc_city` VALUES ('2787', '712', '2780', '米泉市', '1', '0');
INSERT INTO `oc_city` VALUES ('2788', '712', '2780', '阜康市', '1', '0');
INSERT INTO `oc_city` VALUES ('2789', '712', '0', '博尔塔拉蒙古自治州', '1', '0');
INSERT INTO `oc_city` VALUES ('2790', '712', '2789', '博乐市', '1', '0');
INSERT INTO `oc_city` VALUES ('2791', '712', '2789', '温泉县', '1', '0');
INSERT INTO `oc_city` VALUES ('2792', '712', '2789', '精河县', '1', '0');
INSERT INTO `oc_city` VALUES ('2793', '712', '0', '巴音郭楞蒙古自治州', '1', '0');
INSERT INTO `oc_city` VALUES ('2794', '712', '2793', '博湖县', '1', '0');
INSERT INTO `oc_city` VALUES ('2795', '712', '2793', '和硕县', '1', '0');
INSERT INTO `oc_city` VALUES ('2796', '712', '2793', '和静县', '1', '0');
INSERT INTO `oc_city` VALUES ('2797', '712', '2793', '尉犁县', '1', '0');
INSERT INTO `oc_city` VALUES ('2798', '712', '2793', '库尔勒市', '1', '0');
INSERT INTO `oc_city` VALUES ('2799', '712', '2793', '焉耆回族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('2800', '712', '2793', '若羌县', '1', '0');
INSERT INTO `oc_city` VALUES ('2801', '712', '2793', '轮台县', '1', '0');
INSERT INTO `oc_city` VALUES ('2802', '712', '0', '阿克苏地区', '1', '0');
INSERT INTO `oc_city` VALUES ('2803', '712', '2802', '乌什县', '1', '0');
INSERT INTO `oc_city` VALUES ('2804', '712', '2802', '库车县', '1', '0');
INSERT INTO `oc_city` VALUES ('2805', '712', '2802', '拜城县', '1', '0');
INSERT INTO `oc_city` VALUES ('2806', '712', '2802', '新和县', '1', '0');
INSERT INTO `oc_city` VALUES ('2807', '712', '2802', '柯坪县', '1', '0');
INSERT INTO `oc_city` VALUES ('2808', '712', '2802', '沙雅县', '1', '0');
INSERT INTO `oc_city` VALUES ('2809', '712', '2802', '温宿县', '1', '0');
INSERT INTO `oc_city` VALUES ('2810', '712', '2802', '阿克苏市', '1', '0');
INSERT INTO `oc_city` VALUES ('2811', '712', '2802', '阿瓦提县', '1', '0');
INSERT INTO `oc_city` VALUES ('2812', '712', '0', '克孜勒苏柯尔克孜自治州', '1', '0');
INSERT INTO `oc_city` VALUES ('2813', '712', '2812', '乌恰县', '1', '0');
INSERT INTO `oc_city` VALUES ('2814', '712', '2812', '阿克陶县', '1', '0');
INSERT INTO `oc_city` VALUES ('2815', '712', '2812', '阿合奇县', '1', '0');
INSERT INTO `oc_city` VALUES ('2816', '712', '2812', '阿图什市', '1', '0');
INSERT INTO `oc_city` VALUES ('2817', '712', '0', '喀什地区', '1', '0');
INSERT INTO `oc_city` VALUES ('2818', '712', '2817', '伽师县', '1', '0');
INSERT INTO `oc_city` VALUES ('2819', '712', '2817', '叶城县', '1', '0');
INSERT INTO `oc_city` VALUES ('2820', '712', '2817', '喀什市', '1', '0');
INSERT INTO `oc_city` VALUES ('2821', '712', '2817', '塔什库尔干塔吉克自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('2822', '712', '2817', '岳普湖县', '1', '0');
INSERT INTO `oc_city` VALUES ('2823', '712', '2817', '巴楚县', '1', '0');
INSERT INTO `oc_city` VALUES ('2824', '712', '2817', '泽普县', '1', '0');
INSERT INTO `oc_city` VALUES ('2825', '712', '2817', '疏勒县', '1', '0');
INSERT INTO `oc_city` VALUES ('2826', '712', '2817', '疏附县', '1', '0');
INSERT INTO `oc_city` VALUES ('2827', '712', '2817', '英吉沙县', '1', '0');
INSERT INTO `oc_city` VALUES ('2828', '712', '2817', '莎车县', '1', '0');
INSERT INTO `oc_city` VALUES ('2829', '712', '2817', '麦盖提县', '1', '0');
INSERT INTO `oc_city` VALUES ('2830', '712', '0', '和田地区', '1', '0');
INSERT INTO `oc_city` VALUES ('2831', '712', '2830', '于田县', '1', '0');
INSERT INTO `oc_city` VALUES ('2832', '712', '2830', '和田县', '1', '0');
INSERT INTO `oc_city` VALUES ('2833', '712', '2830', '和田市', '1', '0');
INSERT INTO `oc_city` VALUES ('2834', '712', '2830', '墨玉县', '1', '0');
INSERT INTO `oc_city` VALUES ('2835', '712', '2830', '民丰县', '1', '0');
INSERT INTO `oc_city` VALUES ('2836', '712', '2830', '洛浦县', '1', '0');
INSERT INTO `oc_city` VALUES ('2837', '712', '2830', '皮山县', '1', '0');
INSERT INTO `oc_city` VALUES ('2838', '712', '2830', '策勒县', '1', '0');
INSERT INTO `oc_city` VALUES ('2839', '712', '0', '伊犁哈萨克自治州', '1', '0');
INSERT INTO `oc_city` VALUES ('2840', '712', '2839', '伊宁县', '1', '0');
INSERT INTO `oc_city` VALUES ('2841', '712', '2839', '伊宁市', '1', '0');
INSERT INTO `oc_city` VALUES ('2842', '712', '2839', '奎屯市', '1', '0');
INSERT INTO `oc_city` VALUES ('2843', '712', '2839', '察布查尔锡伯自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('2844', '712', '2839', '尼勒克县', '1', '0');
INSERT INTO `oc_city` VALUES ('2845', '712', '2839', '巩留县', '1', '0');
INSERT INTO `oc_city` VALUES ('2846', '712', '2839', '新源县', '1', '0');
INSERT INTO `oc_city` VALUES ('2847', '712', '2839', '昭苏县', '1', '0');
INSERT INTO `oc_city` VALUES ('2848', '712', '2839', '特克斯县', '1', '0');
INSERT INTO `oc_city` VALUES ('2849', '712', '2839', '霍城县', '1', '0');
INSERT INTO `oc_city` VALUES ('2850', '712', '0', '塔城地区', '1', '0');
INSERT INTO `oc_city` VALUES ('2851', '712', '2850', '乌苏市', '1', '0');
INSERT INTO `oc_city` VALUES ('2852', '712', '2850', '和布克赛尔蒙古自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('2853', '712', '2850', '塔城市', '1', '0');
INSERT INTO `oc_city` VALUES ('2854', '712', '2850', '托里县', '1', '0');
INSERT INTO `oc_city` VALUES ('2855', '712', '2850', '沙湾县', '1', '0');
INSERT INTO `oc_city` VALUES ('2856', '712', '2850', '裕民县', '1', '0');
INSERT INTO `oc_city` VALUES ('2857', '712', '2850', '额敏县', '1', '0');
INSERT INTO `oc_city` VALUES ('2858', '712', '0', '阿勒泰地区', '1', '0');
INSERT INTO `oc_city` VALUES ('2859', '712', '2858', '吉木乃县', '1', '0');
INSERT INTO `oc_city` VALUES ('2860', '712', '2858', '哈巴河县', '1', '0');
INSERT INTO `oc_city` VALUES ('2861', '712', '2858', '富蕴县', '1', '0');
INSERT INTO `oc_city` VALUES ('2862', '712', '2858', '布尔津县', '1', '0');
INSERT INTO `oc_city` VALUES ('2863', '712', '2858', '福海县', '1', '0');
INSERT INTO `oc_city` VALUES ('2864', '712', '2858', '阿勒泰市', '1', '0');
INSERT INTO `oc_city` VALUES ('2865', '712', '2858', '青河县', '1', '0');
INSERT INTO `oc_city` VALUES ('2866', '712', '0', '石河子市', '1', '0');
INSERT INTO `oc_city` VALUES ('2867', '712', '2866', '石河子市', '1', '0');
INSERT INTO `oc_city` VALUES ('2868', '712', '0', '阿拉尔市', '1', '0');
INSERT INTO `oc_city` VALUES ('2869', '712', '2868', '阿拉尔市', '1', '0');
INSERT INTO `oc_city` VALUES ('2870', '712', '0', '图木舒克市', '1', '0');
INSERT INTO `oc_city` VALUES ('2871', '712', '2870', '图木舒克市', '1', '0');
INSERT INTO `oc_city` VALUES ('2872', '712', '0', '五家渠市', '1', '0');
INSERT INTO `oc_city` VALUES ('2873', '712', '2872', '五家渠市', '1', '0');
INSERT INTO `oc_city` VALUES ('2874', '713', '0', '昆明市', '1', '0');
INSERT INTO `oc_city` VALUES ('2875', '713', '2874', '东川区', '1', '0');
INSERT INTO `oc_city` VALUES ('2876', '713', '2874', '五华区', '1', '0');
INSERT INTO `oc_city` VALUES ('2877', '713', '2874', '呈贡县', '1', '0');
INSERT INTO `oc_city` VALUES ('2878', '713', '2874', '安宁市', '1', '0');
INSERT INTO `oc_city` VALUES ('2879', '713', '2874', '官渡区', '1', '0');
INSERT INTO `oc_city` VALUES ('2880', '713', '2874', '宜良县', '1', '0');
INSERT INTO `oc_city` VALUES ('2881', '713', '2874', '富民县', '1', '0');
INSERT INTO `oc_city` VALUES ('2882', '713', '2874', '寻甸回族彝族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('2883', '713', '2874', '嵩明县', '1', '0');
INSERT INTO `oc_city` VALUES ('2884', '713', '2874', '晋宁县', '1', '0');
INSERT INTO `oc_city` VALUES ('2885', '713', '2874', '盘龙区', '1', '0');
INSERT INTO `oc_city` VALUES ('2886', '713', '2874', '石林彝族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('2887', '713', '2874', '禄劝彝族苗族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('2888', '713', '2874', '西山区', '1', '0');
INSERT INTO `oc_city` VALUES ('2889', '713', '0', '曲靖市', '1', '0');
INSERT INTO `oc_city` VALUES ('2890', '713', '2889', '会泽县', '1', '0');
INSERT INTO `oc_city` VALUES ('2891', '713', '2889', '宣威市', '1', '0');
INSERT INTO `oc_city` VALUES ('2892', '713', '2889', '富源县', '1', '0');
INSERT INTO `oc_city` VALUES ('2893', '713', '2889', '师宗县', '1', '0');
INSERT INTO `oc_city` VALUES ('2894', '713', '2889', '沾益县', '1', '0');
INSERT INTO `oc_city` VALUES ('2895', '713', '2889', '罗平县', '1', '0');
INSERT INTO `oc_city` VALUES ('2896', '713', '2889', '陆良县', '1', '0');
INSERT INTO `oc_city` VALUES ('2897', '713', '2889', '马龙县', '1', '0');
INSERT INTO `oc_city` VALUES ('2898', '713', '2889', '麒麟区', '1', '0');
INSERT INTO `oc_city` VALUES ('2899', '713', '0', '玉溪市', '1', '0');
INSERT INTO `oc_city` VALUES ('2900', '713', '2899', '元江哈尼族彝族傣族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('2901', '713', '2899', '华宁县', '1', '0');
INSERT INTO `oc_city` VALUES ('2902', '713', '2899', '峨山彝族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('2903', '713', '2899', '新平彝族傣族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('2904', '713', '2899', '易门县', '1', '0');
INSERT INTO `oc_city` VALUES ('2905', '713', '2899', '江川县', '1', '0');
INSERT INTO `oc_city` VALUES ('2906', '713', '2899', '澄江县', '1', '0');
INSERT INTO `oc_city` VALUES ('2907', '713', '2899', '红塔区', '1', '0');
INSERT INTO `oc_city` VALUES ('2908', '713', '2899', '通海县', '1', '0');
INSERT INTO `oc_city` VALUES ('2909', '713', '0', '保山市', '1', '0');
INSERT INTO `oc_city` VALUES ('2910', '713', '2909', '施甸县', '1', '0');
INSERT INTO `oc_city` VALUES ('2911', '713', '2909', '昌宁县', '1', '0');
INSERT INTO `oc_city` VALUES ('2912', '713', '2909', '腾冲县', '1', '0');
INSERT INTO `oc_city` VALUES ('2913', '713', '2909', '隆阳区', '1', '0');
INSERT INTO `oc_city` VALUES ('2914', '713', '2909', '龙陵县', '1', '0');
INSERT INTO `oc_city` VALUES ('2915', '713', '0', '昭通市', '1', '0');
INSERT INTO `oc_city` VALUES ('2916', '713', '2915', '大关县', '1', '0');
INSERT INTO `oc_city` VALUES ('2917', '713', '2915', '威信县', '1', '0');
INSERT INTO `oc_city` VALUES ('2918', '713', '2915', '巧家县', '1', '0');
INSERT INTO `oc_city` VALUES ('2919', '713', '2915', '彝良县', '1', '0');
INSERT INTO `oc_city` VALUES ('2920', '713', '2915', '昭阳区', '1', '0');
INSERT INTO `oc_city` VALUES ('2921', '713', '2915', '水富县', '1', '0');
INSERT INTO `oc_city` VALUES ('2922', '713', '2915', '永善县', '1', '0');
INSERT INTO `oc_city` VALUES ('2923', '713', '2915', '盐津县', '1', '0');
INSERT INTO `oc_city` VALUES ('2924', '713', '2915', '绥江县', '1', '0');
INSERT INTO `oc_city` VALUES ('2925', '713', '2915', '镇雄县', '1', '0');
INSERT INTO `oc_city` VALUES ('2926', '713', '2915', '鲁甸县', '1', '0');
INSERT INTO `oc_city` VALUES ('2927', '713', '0', '丽江市', '1', '0');
INSERT INTO `oc_city` VALUES ('2928', '713', '2927', '华坪县', '1', '0');
INSERT INTO `oc_city` VALUES ('2929', '713', '2927', '古城区', '1', '0');
INSERT INTO `oc_city` VALUES ('2930', '713', '2927', '宁蒗彝族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('2931', '713', '2927', '永胜县', '1', '0');
INSERT INTO `oc_city` VALUES ('2932', '713', '2927', '玉龙纳西族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('2933', '713', '0', '思茅市', '1', '0');
INSERT INTO `oc_city` VALUES ('2934', '713', '0', '临沧市', '1', '0');
INSERT INTO `oc_city` VALUES ('2935', '713', '2934', '临翔区', '1', '0');
INSERT INTO `oc_city` VALUES ('2936', '713', '2934', '云县', '1', '0');
INSERT INTO `oc_city` VALUES ('2937', '713', '2934', '凤庆县', '1', '0');
INSERT INTO `oc_city` VALUES ('2938', '713', '2934', '双江拉祜族佤族布朗族傣族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('2939', '713', '2934', '永德县', '1', '0');
INSERT INTO `oc_city` VALUES ('2940', '713', '2934', '沧源佤族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('2941', '713', '2934', '耿马傣族佤族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('2942', '713', '2934', '镇康县', '1', '0');
INSERT INTO `oc_city` VALUES ('2943', '713', '0', '楚雄彝族自治州', '1', '0');
INSERT INTO `oc_city` VALUES ('2944', '713', '2943', '元谋县', '1', '0');
INSERT INTO `oc_city` VALUES ('2945', '713', '2943', '南华县', '1', '0');
INSERT INTO `oc_city` VALUES ('2946', '713', '2943', '双柏县', '1', '0');
INSERT INTO `oc_city` VALUES ('2947', '713', '2943', '大姚县', '1', '0');
INSERT INTO `oc_city` VALUES ('2948', '713', '2943', '姚安县', '1', '0');
INSERT INTO `oc_city` VALUES ('2949', '713', '2943', '楚雄市', '1', '0');
INSERT INTO `oc_city` VALUES ('2950', '713', '2943', '武定县', '1', '0');
INSERT INTO `oc_city` VALUES ('2951', '713', '2943', '永仁县', '1', '0');
INSERT INTO `oc_city` VALUES ('2952', '713', '2943', '牟定县', '1', '0');
INSERT INTO `oc_city` VALUES ('2953', '713', '2943', '禄丰县', '1', '0');
INSERT INTO `oc_city` VALUES ('2954', '713', '0', '红河哈尼族彝族自治州', '1', '0');
INSERT INTO `oc_city` VALUES ('2955', '713', '2954', '个旧市', '1', '0');
INSERT INTO `oc_city` VALUES ('2956', '713', '2954', '元阳县', '1', '0');
INSERT INTO `oc_city` VALUES ('2957', '713', '2954', '屏边苗族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('2958', '713', '2954', '建水县', '1', '0');
INSERT INTO `oc_city` VALUES ('2959', '713', '2954', '开远市', '1', '0');
INSERT INTO `oc_city` VALUES ('2960', '713', '2954', '弥勒县', '1', '0');
INSERT INTO `oc_city` VALUES ('2961', '713', '2954', '河口瑶族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('2962', '713', '2954', '泸西县', '1', '0');
INSERT INTO `oc_city` VALUES ('2963', '713', '2954', '石屏县', '1', '0');
INSERT INTO `oc_city` VALUES ('2964', '713', '2954', '红河县', '1', '0');
INSERT INTO `oc_city` VALUES ('2965', '713', '2954', '绿春县', '1', '0');
INSERT INTO `oc_city` VALUES ('2966', '713', '2954', '蒙自县', '1', '0');
INSERT INTO `oc_city` VALUES ('2967', '713', '2954', '金平苗族瑶族傣族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('2968', '713', '0', '文山壮族苗族自治州', '1', '0');
INSERT INTO `oc_city` VALUES ('2969', '713', '2968', '丘北县', '1', '0');
INSERT INTO `oc_city` VALUES ('2970', '713', '2968', '富宁县', '1', '0');
INSERT INTO `oc_city` VALUES ('2971', '713', '2968', '广南县', '1', '0');
INSERT INTO `oc_city` VALUES ('2972', '713', '2968', '文山县', '1', '0');
INSERT INTO `oc_city` VALUES ('2973', '713', '2968', '砚山县', '1', '0');
INSERT INTO `oc_city` VALUES ('2974', '713', '2968', '西畴县', '1', '0');
INSERT INTO `oc_city` VALUES ('2975', '713', '2968', '马关县', '1', '0');
INSERT INTO `oc_city` VALUES ('2976', '713', '2968', '麻栗坡县', '1', '0');
INSERT INTO `oc_city` VALUES ('2977', '713', '0', '西双版纳傣族自治州', '1', '0');
INSERT INTO `oc_city` VALUES ('2978', '713', '2977', '勐海县', '1', '0');
INSERT INTO `oc_city` VALUES ('2979', '713', '2977', '勐腊县', '1', '0');
INSERT INTO `oc_city` VALUES ('2980', '713', '2977', '景洪市', '1', '0');
INSERT INTO `oc_city` VALUES ('2981', '713', '0', '大理白族自治州', '1', '0');
INSERT INTO `oc_city` VALUES ('2982', '713', '2981', '云龙县', '1', '0');
INSERT INTO `oc_city` VALUES ('2983', '713', '2981', '剑川县', '1', '0');
INSERT INTO `oc_city` VALUES ('2984', '713', '2981', '南涧彝族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('2985', '713', '2981', '大理市', '1', '0');
INSERT INTO `oc_city` VALUES ('2986', '713', '2981', '宾川县', '1', '0');
INSERT INTO `oc_city` VALUES ('2987', '713', '2981', '巍山彝族回族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('2988', '713', '2981', '弥渡县', '1', '0');
INSERT INTO `oc_city` VALUES ('2989', '713', '2981', '永平县', '1', '0');
INSERT INTO `oc_city` VALUES ('2990', '713', '2981', '洱源县', '1', '0');
INSERT INTO `oc_city` VALUES ('2991', '713', '2981', '漾濞彝族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('2992', '713', '2981', '祥云县', '1', '0');
INSERT INTO `oc_city` VALUES ('2993', '713', '2981', '鹤庆县', '1', '0');
INSERT INTO `oc_city` VALUES ('2994', '713', '0', '德宏傣族景颇族自治州', '1', '0');
INSERT INTO `oc_city` VALUES ('2995', '713', '2994', '梁河县', '1', '0');
INSERT INTO `oc_city` VALUES ('2996', '713', '2994', '潞西市', '1', '0');
INSERT INTO `oc_city` VALUES ('2997', '713', '2994', '瑞丽市', '1', '0');
INSERT INTO `oc_city` VALUES ('2998', '713', '2994', '盈江县', '1', '0');
INSERT INTO `oc_city` VALUES ('2999', '713', '2994', '陇川县', '1', '0');
INSERT INTO `oc_city` VALUES ('3000', '713', '0', '怒江傈僳族自治州', '1', '0');
INSERT INTO `oc_city` VALUES ('3001', '713', '0', '迪庆藏族自治州', '1', '0');
INSERT INTO `oc_city` VALUES ('3002', '713', '3001', '德钦县', '1', '0');
INSERT INTO `oc_city` VALUES ('3003', '713', '3001', '维西傈僳族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('3004', '713', '3001', '香格里拉县', '1', '0');
INSERT INTO `oc_city` VALUES ('3005', '714', '0', '杭州市', '1', '0');
INSERT INTO `oc_city` VALUES ('3006', '714', '3005', '上城区', '1', '0');
INSERT INTO `oc_city` VALUES ('3007', '714', '3005', '下城区', '1', '0');
INSERT INTO `oc_city` VALUES ('3008', '714', '3005', '临安市', '1', '0');
INSERT INTO `oc_city` VALUES ('3009', '714', '3005', '余杭区', '1', '0');
INSERT INTO `oc_city` VALUES ('3010', '714', '3005', '富阳市', '1', '0');
INSERT INTO `oc_city` VALUES ('3011', '714', '3005', '建德市', '1', '0');
INSERT INTO `oc_city` VALUES ('3012', '714', '3005', '拱墅区', '1', '0');
INSERT INTO `oc_city` VALUES ('3013', '714', '3005', '桐庐县', '1', '0');
INSERT INTO `oc_city` VALUES ('3014', '714', '3005', '江干区', '1', '0');
INSERT INTO `oc_city` VALUES ('3015', '714', '3005', '淳安县', '1', '0');
INSERT INTO `oc_city` VALUES ('3016', '714', '3005', '滨江区', '1', '0');
INSERT INTO `oc_city` VALUES ('3017', '714', '3005', '萧山区', '1', '0');
INSERT INTO `oc_city` VALUES ('3018', '714', '3005', '西湖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3019', '714', '0', '宁波市', '1', '0');
INSERT INTO `oc_city` VALUES ('3020', '714', '3019', '余姚市', '1', '0');
INSERT INTO `oc_city` VALUES ('3021', '714', '3019', '北仑区', '1', '0');
INSERT INTO `oc_city` VALUES ('3022', '714', '3019', '奉化市', '1', '0');
INSERT INTO `oc_city` VALUES ('3023', '714', '3019', '宁海县', '1', '0');
INSERT INTO `oc_city` VALUES ('3024', '714', '3019', '慈溪市', '1', '0');
INSERT INTO `oc_city` VALUES ('3025', '714', '3019', '江东区', '1', '0');
INSERT INTO `oc_city` VALUES ('3026', '714', '3019', '江北区', '1', '0');
INSERT INTO `oc_city` VALUES ('3027', '714', '3019', '海曙区', '1', '0');
INSERT INTO `oc_city` VALUES ('3028', '714', '3019', '象山县', '1', '0');
INSERT INTO `oc_city` VALUES ('3029', '714', '3019', '鄞州区', '1', '0');
INSERT INTO `oc_city` VALUES ('3030', '714', '3019', '镇海区', '1', '0');
INSERT INTO `oc_city` VALUES ('3031', '714', '0', '温州市', '1', '0');
INSERT INTO `oc_city` VALUES ('3032', '714', '3031', '乐清市', '1', '0');
INSERT INTO `oc_city` VALUES ('3033', '714', '3031', '平阳县', '1', '0');
INSERT INTO `oc_city` VALUES ('3034', '714', '3031', '文成县', '1', '0');
INSERT INTO `oc_city` VALUES ('3035', '714', '3031', '永嘉县', '1', '0');
INSERT INTO `oc_city` VALUES ('3036', '714', '3031', '泰顺县', '1', '0');
INSERT INTO `oc_city` VALUES ('3037', '714', '3031', '洞头县', '1', '0');
INSERT INTO `oc_city` VALUES ('3038', '714', '3031', '瑞安市', '1', '0');
INSERT INTO `oc_city` VALUES ('3039', '714', '3031', '瓯海区', '1', '0');
INSERT INTO `oc_city` VALUES ('3040', '714', '3031', '苍南县', '1', '0');
INSERT INTO `oc_city` VALUES ('3041', '714', '3031', '鹿城区', '1', '0');
INSERT INTO `oc_city` VALUES ('3042', '714', '3031', '龙湾区', '1', '0');
INSERT INTO `oc_city` VALUES ('3043', '714', '0', '嘉兴市', '1', '0');
INSERT INTO `oc_city` VALUES ('3044', '714', '3043', '南湖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3045', '714', '3043', '嘉善县', '1', '0');
INSERT INTO `oc_city` VALUES ('3046', '714', '3043', '平湖市', '1', '0');
INSERT INTO `oc_city` VALUES ('3047', '714', '3043', '桐乡市', '1', '0');
INSERT INTO `oc_city` VALUES ('3048', '714', '3043', '海宁市', '1', '0');
INSERT INTO `oc_city` VALUES ('3049', '714', '3043', '海盐县', '1', '0');
INSERT INTO `oc_city` VALUES ('3050', '714', '3043', '秀洲区', '1', '0');
INSERT INTO `oc_city` VALUES ('3051', '714', '0', '湖州市', '1', '0');
INSERT INTO `oc_city` VALUES ('3052', '714', '3051', '南浔区', '1', '0');
INSERT INTO `oc_city` VALUES ('3053', '714', '3051', '吴兴区', '1', '0');
INSERT INTO `oc_city` VALUES ('3054', '714', '3051', '安吉县', '1', '0');
INSERT INTO `oc_city` VALUES ('3055', '714', '3051', '德清县', '1', '0');
INSERT INTO `oc_city` VALUES ('3056', '714', '3051', '长兴县', '1', '0');
INSERT INTO `oc_city` VALUES ('3057', '714', '0', '绍兴市', '1', '0');
INSERT INTO `oc_city` VALUES ('3058', '714', '3057', '上虞市', '1', '0');
INSERT INTO `oc_city` VALUES ('3059', '714', '3057', '嵊州市', '1', '0');
INSERT INTO `oc_city` VALUES ('3060', '714', '3057', '新昌县', '1', '0');
INSERT INTO `oc_city` VALUES ('3061', '714', '3057', '绍兴县', '1', '0');
INSERT INTO `oc_city` VALUES ('3062', '714', '3057', '诸暨市', '1', '0');
INSERT INTO `oc_city` VALUES ('3063', '714', '3057', '越城区', '1', '0');
INSERT INTO `oc_city` VALUES ('3064', '714', '0', '舟山市', '1', '0');
INSERT INTO `oc_city` VALUES ('3065', '714', '3064', '定海区', '1', '0');
INSERT INTO `oc_city` VALUES ('3066', '714', '3064', '岱山县', '1', '0');
INSERT INTO `oc_city` VALUES ('3067', '714', '3064', '嵊泗县', '1', '0');
INSERT INTO `oc_city` VALUES ('3068', '714', '3064', '普陀区', '1', '0');
INSERT INTO `oc_city` VALUES ('3069', '714', '0', '衢州市', '1', '0');
INSERT INTO `oc_city` VALUES ('3070', '714', '3069', '常山县', '1', '0');
INSERT INTO `oc_city` VALUES ('3071', '714', '3069', '开化县', '1', '0');
INSERT INTO `oc_city` VALUES ('3072', '714', '3069', '柯城区', '1', '0');
INSERT INTO `oc_city` VALUES ('3073', '714', '3069', '江山市', '1', '0');
INSERT INTO `oc_city` VALUES ('3074', '714', '3069', '衢江区', '1', '0');
INSERT INTO `oc_city` VALUES ('3075', '714', '3069', '龙游县', '1', '0');
INSERT INTO `oc_city` VALUES ('3076', '714', '0', '金华市', '1', '0');
INSERT INTO `oc_city` VALUES ('3077', '714', '3076', '东阳市', '1', '0');
INSERT INTO `oc_city` VALUES ('3078', '714', '3076', '义乌市', '1', '0');
INSERT INTO `oc_city` VALUES ('3079', '714', '3076', '兰溪市', '1', '0');
INSERT INTO `oc_city` VALUES ('3080', '714', '3076', '婺城区', '1', '0');
INSERT INTO `oc_city` VALUES ('3081', '714', '3076', '武义县', '1', '0');
INSERT INTO `oc_city` VALUES ('3082', '714', '3076', '永康市', '1', '0');
INSERT INTO `oc_city` VALUES ('3083', '714', '3076', '浦江县', '1', '0');
INSERT INTO `oc_city` VALUES ('3084', '714', '3076', '磐安县', '1', '0');
INSERT INTO `oc_city` VALUES ('3085', '714', '3076', '金东区', '1', '0');
INSERT INTO `oc_city` VALUES ('3086', '714', '0', '台州市', '1', '0');
INSERT INTO `oc_city` VALUES ('3087', '714', '3086', '三门县', '1', '0');
INSERT INTO `oc_city` VALUES ('3088', '714', '3086', '临海市', '1', '0');
INSERT INTO `oc_city` VALUES ('3089', '714', '3086', '仙居县', '1', '0');
INSERT INTO `oc_city` VALUES ('3090', '714', '3086', '天台县', '1', '0');
INSERT INTO `oc_city` VALUES ('3091', '714', '3086', '椒江区', '1', '0');
INSERT INTO `oc_city` VALUES ('3092', '714', '3086', '温岭市', '1', '0');
INSERT INTO `oc_city` VALUES ('3093', '714', '3086', '玉环县', '1', '0');
INSERT INTO `oc_city` VALUES ('3094', '714', '3086', '路桥区', '1', '0');
INSERT INTO `oc_city` VALUES ('3095', '714', '3086', '黄岩区', '1', '0');
INSERT INTO `oc_city` VALUES ('3096', '714', '0', '丽水市', '1', '0');
INSERT INTO `oc_city` VALUES ('3097', '714', '3096', '云和县', '1', '0');
INSERT INTO `oc_city` VALUES ('3098', '714', '3096', '庆元县', '1', '0');
INSERT INTO `oc_city` VALUES ('3099', '714', '3096', '景宁畲族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('3100', '714', '3096', '松阳县', '1', '0');
INSERT INTO `oc_city` VALUES ('3101', '714', '3096', '缙云县', '1', '0');
INSERT INTO `oc_city` VALUES ('3102', '714', '3096', '莲都区', '1', '0');
INSERT INTO `oc_city` VALUES ('3103', '714', '3096', '遂昌县', '1', '0');
INSERT INTO `oc_city` VALUES ('3104', '714', '3096', '青田县', '1', '0');
INSERT INTO `oc_city` VALUES ('3105', '714', '3096', '龙泉市', '1', '0');
INSERT INTO `oc_city` VALUES ('3106', '4237', '0', '台北市', '1', '0');
INSERT INTO `oc_city` VALUES ('3107', '4237', '0', '高雄市', '1', '0');
INSERT INTO `oc_city` VALUES ('3108', '4237', '0', '基隆市', '1', '0');
INSERT INTO `oc_city` VALUES ('3109', '4237', '0', '台中市', '1', '0');
INSERT INTO `oc_city` VALUES ('3110', '4237', '0', '台南市', '1', '0');
INSERT INTO `oc_city` VALUES ('3111', '4237', '0', '新竹市', '1', '0');
INSERT INTO `oc_city` VALUES ('3112', '4237', '0', '嘉义市', '1', '0');
INSERT INTO `oc_city` VALUES ('3113', '4237', '0', '台北县', '1', '0');
INSERT INTO `oc_city` VALUES ('3114', '4237', '0', '宜兰县', '1', '0');
INSERT INTO `oc_city` VALUES ('3115', '4237', '0', '桃园县', '1', '0');
INSERT INTO `oc_city` VALUES ('3116', '4237', '0', '新竹县', '1', '0');
INSERT INTO `oc_city` VALUES ('3117', '4237', '0', '苗栗县', '1', '0');
INSERT INTO `oc_city` VALUES ('3118', '4237', '0', '台中县', '1', '0');
INSERT INTO `oc_city` VALUES ('3119', '4237', '0', '彰化县', '1', '0');
INSERT INTO `oc_city` VALUES ('3120', '4237', '0', '南投县', '1', '0');
INSERT INTO `oc_city` VALUES ('3121', '4237', '0', '云林县', '1', '0');
INSERT INTO `oc_city` VALUES ('3122', '4237', '0', '嘉义县', '1', '0');
INSERT INTO `oc_city` VALUES ('3123', '4237', '0', '台南县', '1', '0');
INSERT INTO `oc_city` VALUES ('3124', '4237', '0', '高雄县', '1', '0');
INSERT INTO `oc_city` VALUES ('3125', '4237', '0', '屏东县', '1', '0');
INSERT INTO `oc_city` VALUES ('3126', '4237', '0', '澎湖县', '1', '0');
INSERT INTO `oc_city` VALUES ('3127', '4237', '0', '台东县', '1', '0');
INSERT INTO `oc_city` VALUES ('3128', '4237', '0', '花莲县', '1', '0');
INSERT INTO `oc_city` VALUES ('3129', '4236', '0', '拉萨市', '1', '0');
INSERT INTO `oc_city` VALUES ('3130', '4236', '3129', '城关区', '1', '0');
INSERT INTO `oc_city` VALUES ('3131', '4236', '3129', '堆龙德庆县', '1', '0');
INSERT INTO `oc_city` VALUES ('3132', '4236', '3129', '墨竹工卡县', '1', '0');
INSERT INTO `oc_city` VALUES ('3133', '4236', '3129', '尼木县', '1', '0');
INSERT INTO `oc_city` VALUES ('3134', '4236', '3129', '当雄县', '1', '0');
INSERT INTO `oc_city` VALUES ('3135', '4236', '3129', '曲水县', '1', '0');
INSERT INTO `oc_city` VALUES ('3136', '4236', '3129', '林周县', '1', '0');
INSERT INTO `oc_city` VALUES ('3137', '4236', '3129', '达孜县', '1', '0');
INSERT INTO `oc_city` VALUES ('3138', '4236', '0', '昌都地区', '1', '0');
INSERT INTO `oc_city` VALUES ('3139', '4236', '3138', '丁青县', '1', '0');
INSERT INTO `oc_city` VALUES ('3140', '4236', '3138', '八宿县', '1', '0');
INSERT INTO `oc_city` VALUES ('3141', '4236', '3138', '察雅县', '1', '0');
INSERT INTO `oc_city` VALUES ('3142', '4236', '3138', '左贡县', '1', '0');
INSERT INTO `oc_city` VALUES ('3143', '4236', '3138', '昌都县', '1', '0');
INSERT INTO `oc_city` VALUES ('3144', '4236', '3138', '江达县', '1', '0');
INSERT INTO `oc_city` VALUES ('3145', '4236', '3138', '洛隆县', '1', '0');
INSERT INTO `oc_city` VALUES ('3146', '4236', '3138', '类乌齐县', '1', '0');
INSERT INTO `oc_city` VALUES ('3147', '4236', '3138', '芒康县', '1', '0');
INSERT INTO `oc_city` VALUES ('3148', '4236', '3138', '贡觉县', '1', '0');
INSERT INTO `oc_city` VALUES ('3149', '4236', '3138', '边坝县', '1', '0');
INSERT INTO `oc_city` VALUES ('3150', '4236', '0', '山南地区', '1', '0');
INSERT INTO `oc_city` VALUES ('3151', '4236', '3150', '乃东县', '1', '0');
INSERT INTO `oc_city` VALUES ('3152', '4236', '3150', '加查县', '1', '0');
INSERT INTO `oc_city` VALUES ('3153', '4236', '3150', '扎囊县', '1', '0');
INSERT INTO `oc_city` VALUES ('3154', '4236', '3150', '措美县', '1', '0');
INSERT INTO `oc_city` VALUES ('3155', '4236', '3150', '曲松县', '1', '0');
INSERT INTO `oc_city` VALUES ('3156', '4236', '3150', '桑日县', '1', '0');
INSERT INTO `oc_city` VALUES ('3157', '4236', '3150', '洛扎县', '1', '0');
INSERT INTO `oc_city` VALUES ('3158', '4236', '3150', '浪卡子县', '1', '0');
INSERT INTO `oc_city` VALUES ('3159', '4236', '3150', '琼结县', '1', '0');
INSERT INTO `oc_city` VALUES ('3160', '4236', '3150', '贡嘎县', '1', '0');
INSERT INTO `oc_city` VALUES ('3161', '4236', '3150', '错那县', '1', '0');
INSERT INTO `oc_city` VALUES ('3162', '4236', '3150', '隆子县', '1', '0');
INSERT INTO `oc_city` VALUES ('3163', '4236', '0', '日喀则地区', '1', '0');
INSERT INTO `oc_city` VALUES ('3164', '4236', '3163', '亚东县', '1', '0');
INSERT INTO `oc_city` VALUES ('3165', '4236', '3163', '仁布县', '1', '0');
INSERT INTO `oc_city` VALUES ('3166', '4236', '3163', '仲巴县', '1', '0');
INSERT INTO `oc_city` VALUES ('3167', '4236', '3163', '南木林县', '1', '0');
INSERT INTO `oc_city` VALUES ('3168', '4236', '3163', '吉隆县', '1', '0');
INSERT INTO `oc_city` VALUES ('3169', '4236', '3163', '定日县', '1', '0');
INSERT INTO `oc_city` VALUES ('3170', '4236', '3163', '定结县', '1', '0');
INSERT INTO `oc_city` VALUES ('3171', '4236', '3163', '岗巴县', '1', '0');
INSERT INTO `oc_city` VALUES ('3172', '4236', '3163', '康马县', '1', '0');
INSERT INTO `oc_city` VALUES ('3173', '4236', '3163', '拉孜县', '1', '0');
INSERT INTO `oc_city` VALUES ('3174', '4236', '3163', '日喀则市', '1', '0');
INSERT INTO `oc_city` VALUES ('3175', '4236', '3163', '昂仁县', '1', '0');
INSERT INTO `oc_city` VALUES ('3176', '4236', '3163', '江孜县', '1', '0');
INSERT INTO `oc_city` VALUES ('3177', '4236', '3163', '白朗县', '1', '0');
INSERT INTO `oc_city` VALUES ('3178', '4236', '3163', '聂拉木县', '1', '0');
INSERT INTO `oc_city` VALUES ('3179', '4236', '3163', '萨嘎县', '1', '0');
INSERT INTO `oc_city` VALUES ('3180', '4236', '3163', '萨迦县', '1', '0');
INSERT INTO `oc_city` VALUES ('3181', '4236', '3163', '谢通门县', '1', '0');
INSERT INTO `oc_city` VALUES ('3182', '4236', '0', '那曲地区', '1', '0');
INSERT INTO `oc_city` VALUES ('3183', '4236', '3182', '嘉黎县', '1', '0');
INSERT INTO `oc_city` VALUES ('3184', '4236', '3182', '安多县', '1', '0');
INSERT INTO `oc_city` VALUES ('3185', '4236', '3182', '尼玛县', '1', '0');
INSERT INTO `oc_city` VALUES ('3186', '4236', '3182', '巴青县', '1', '0');
INSERT INTO `oc_city` VALUES ('3187', '4236', '3182', '比如县', '1', '0');
INSERT INTO `oc_city` VALUES ('3188', '4236', '3182', '班戈县', '1', '0');
INSERT INTO `oc_city` VALUES ('3189', '4236', '3182', '申扎县', '1', '0');
INSERT INTO `oc_city` VALUES ('3190', '4236', '3182', '索县', '1', '0');
INSERT INTO `oc_city` VALUES ('3191', '4236', '3182', '聂荣县', '1', '0');
INSERT INTO `oc_city` VALUES ('3192', '4236', '3182', '那曲县', '1', '0');
INSERT INTO `oc_city` VALUES ('3193', '4236', '0', '阿里地区', '1', '0');
INSERT INTO `oc_city` VALUES ('3194', '4236', '3193', '噶尔县', '1', '0');
INSERT INTO `oc_city` VALUES ('3195', '4236', '3193', '措勤县', '1', '0');
INSERT INTO `oc_city` VALUES ('3196', '4236', '3193', '改则县', '1', '0');
INSERT INTO `oc_city` VALUES ('3197', '4236', '3193', '日土县', '1', '0');
INSERT INTO `oc_city` VALUES ('3198', '4236', '3193', '普兰县', '1', '0');
INSERT INTO `oc_city` VALUES ('3199', '4236', '3193', '札达县', '1', '0');
INSERT INTO `oc_city` VALUES ('3200', '4236', '3193', '革吉县', '1', '0');
INSERT INTO `oc_city` VALUES ('3201', '4236', '0', '林芝地区', '1', '0');
INSERT INTO `oc_city` VALUES ('3202', '4236', '3201', '墨脱县', '1', '0');
INSERT INTO `oc_city` VALUES ('3203', '4236', '3201', '察隅县', '1', '0');
INSERT INTO `oc_city` VALUES ('3204', '4236', '3201', '工布江达县', '1', '0');
INSERT INTO `oc_city` VALUES ('3205', '4236', '3201', '朗县', '1', '0');
INSERT INTO `oc_city` VALUES ('3206', '4236', '3201', '林芝县', '1', '0');
INSERT INTO `oc_city` VALUES ('3207', '4236', '3201', '波密县', '1', '0');
INSERT INTO `oc_city` VALUES ('3208', '4236', '3201', '米林县', '1', '0');
INSERT INTO `oc_city` VALUES ('3209', '4232', '0', '西宁市', '1', '0');
INSERT INTO `oc_city` VALUES ('3210', '4232', '3209', '城东区', '1', '0');
INSERT INTO `oc_city` VALUES ('3211', '4232', '3209', '城中区', '1', '0');
INSERT INTO `oc_city` VALUES ('3212', '4232', '3209', '城北区', '1', '0');
INSERT INTO `oc_city` VALUES ('3213', '4232', '3209', '城西区', '1', '0');
INSERT INTO `oc_city` VALUES ('3214', '4232', '3209', '大通回族土族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('3215', '4232', '3209', '湟中县', '1', '0');
INSERT INTO `oc_city` VALUES ('3216', '4232', '3209', '湟源县', '1', '0');
INSERT INTO `oc_city` VALUES ('3217', '4232', '0', '海东地区', '1', '0');
INSERT INTO `oc_city` VALUES ('3218', '4232', '3217', '乐都县', '1', '0');
INSERT INTO `oc_city` VALUES ('3219', '4232', '3217', '互助土族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('3220', '4232', '3217', '化隆回族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('3221', '4232', '3217', '平安县', '1', '0');
INSERT INTO `oc_city` VALUES ('3222', '4232', '3217', '循化撒拉族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('3223', '4232', '3217', '民和回族土族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('3224', '4232', '0', '海北藏族自治州', '1', '0');
INSERT INTO `oc_city` VALUES ('3225', '4232', '3224', '刚察县', '1', '0');
INSERT INTO `oc_city` VALUES ('3226', '4232', '3224', '海晏县', '1', '0');
INSERT INTO `oc_city` VALUES ('3227', '4232', '3224', '祁连县', '1', '0');
INSERT INTO `oc_city` VALUES ('3228', '4232', '3224', '门源回族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('3229', '4232', '0', '黄南藏族自治州', '1', '0');
INSERT INTO `oc_city` VALUES ('3230', '4232', '3229', '同仁县', '1', '0');
INSERT INTO `oc_city` VALUES ('3231', '4232', '3229', '尖扎县', '1', '0');
INSERT INTO `oc_city` VALUES ('3232', '4232', '3229', '河南蒙古族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('3233', '4232', '3229', '泽库县', '1', '0');
INSERT INTO `oc_city` VALUES ('3234', '4232', '0', '海南藏族自治州', '1', '0');
INSERT INTO `oc_city` VALUES ('3235', '4232', '3234', '共和县', '1', '0');
INSERT INTO `oc_city` VALUES ('3236', '4232', '3234', '兴海县', '1', '0');
INSERT INTO `oc_city` VALUES ('3237', '4232', '3234', '同德县', '1', '0');
INSERT INTO `oc_city` VALUES ('3238', '4232', '3234', '贵南县', '1', '0');
INSERT INTO `oc_city` VALUES ('3239', '4232', '3234', '贵德县', '1', '0');
INSERT INTO `oc_city` VALUES ('3240', '4232', '0', '果洛藏族自治州', '1', '0');
INSERT INTO `oc_city` VALUES ('3241', '4232', '3240', '久治县', '1', '0');
INSERT INTO `oc_city` VALUES ('3242', '4232', '3240', '玛多县', '1', '0');
INSERT INTO `oc_city` VALUES ('3243', '4232', '3240', '玛沁县', '1', '0');
INSERT INTO `oc_city` VALUES ('3244', '4232', '3240', '班玛县', '1', '0');
INSERT INTO `oc_city` VALUES ('3245', '4232', '3240', '甘德县', '1', '0');
INSERT INTO `oc_city` VALUES ('3246', '4232', '3240', '达日县', '1', '0');
INSERT INTO `oc_city` VALUES ('3247', '4232', '0', '玉树藏族自治州', '1', '0');
INSERT INTO `oc_city` VALUES ('3248', '4232', '3247', '囊谦县', '1', '0');
INSERT INTO `oc_city` VALUES ('3249', '4232', '3247', '曲麻莱县', '1', '0');
INSERT INTO `oc_city` VALUES ('3250', '4232', '3247', '杂多县', '1', '0');
INSERT INTO `oc_city` VALUES ('3251', '4232', '3247', '治多县', '1', '0');
INSERT INTO `oc_city` VALUES ('3252', '4232', '3247', '玉树县', '1', '0');
INSERT INTO `oc_city` VALUES ('3253', '4232', '3247', '称多县', '1', '0');
INSERT INTO `oc_city` VALUES ('3254', '4232', '0', '海西蒙古族藏族自治州', '1', '0');
INSERT INTO `oc_city` VALUES ('3255', '4232', '3254', '乌兰县', '1', '0');
INSERT INTO `oc_city` VALUES ('3256', '4232', '3254', '冷湖行委', '1', '0');
INSERT INTO `oc_city` VALUES ('3257', '4232', '3254', '大柴旦行委', '1', '0');
INSERT INTO `oc_city` VALUES ('3258', '4232', '3254', '天峻县', '1', '0');
INSERT INTO `oc_city` VALUES ('3259', '4232', '3254', '德令哈市', '1', '0');
INSERT INTO `oc_city` VALUES ('3260', '4232', '3254', '格尔木市', '1', '0');
INSERT INTO `oc_city` VALUES ('3261', '4232', '3254', '茫崖行委', '1', '0');
INSERT INTO `oc_city` VALUES ('3262', '4232', '3254', '都兰县', '1', '0');
INSERT INTO `oc_city` VALUES ('3263', '685', '123', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3264', '685', '124', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3265', '685', '125', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3266', '685', '126', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3267', '685', '127', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3268', '685', '128', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3269', '685', '129', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3270', '685', '130', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3271', '685', '131', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3272', '685', '132', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3273', '685', '133', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3274', '685', '134', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3275', '685', '135', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3276', '685', '136', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3277', '685', '137', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3278', '685', '138', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3279', '685', '139', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3280', '685', '140', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3281', '686', '141', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3282', '686', '142', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3283', '686', '143', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3284', '686', '144', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3285', '686', '145', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3286', '686', '146', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3287', '686', '147', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3288', '686', '148', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3289', '686', '149', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3290', '686', '150', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3291', '686', '151', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3292', '686', '152', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3293', '686', '153', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3294', '686', '154', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3295', '686', '155', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3296', '686', '156', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3297', '686', '157', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3298', '686', '158', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3299', '686', '159', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3300', '686', '160', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3301', '686', '161', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3302', '686', '162', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3303', '686', '163', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3304', '686', '164', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3305', '686', '165', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3306', '686', '166', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3307', '686', '167', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3308', '686', '168', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3309', '686', '169', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3310', '686', '170', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3311', '686', '171', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3312', '686', '172', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3313', '686', '173', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3314', '686', '174', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3315', '686', '175', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3316', '686', '176', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3317', '686', '177', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3318', '686', '178', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3319', '686', '179', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3320', '686', '180', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3321', '692', '779', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3322', '692', '780', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3323', '692', '781', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3324', '696', '1288', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3325', '696', '1289', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3326', '696', '1290', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3327', '696', '1291', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3328', '696', '1292', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3329', '696', '1293', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3330', '696', '1294', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3331', '696', '1295', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3332', '696', '1296', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3333', '696', '1297', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3334', '696', '1298', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3335', '696', '1299', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3336', '696', '1300', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3337', '696', '1301', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3338', '696', '1302', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3339', '696', '1303', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3340', '696', '1304', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3341', '696', '1305', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3342', '704', '2088', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3343', '708', '2402', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3344', '708', '2403', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3345', '708', '2404', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3346', '708', '2405', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3347', '708', '2406', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3348', '708', '2407', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3349', '708', '2408', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3350', '708', '2409', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3351', '708', '2410', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3352', '708', '2411', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3353', '708', '2412', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3354', '708', '2413', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3355', '708', '2414', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3356', '708', '2415', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3357', '708', '2416', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3358', '708', '2417', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3359', '708', '2418', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3360', '708', '2419', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3361', '708', '2420', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3362', '711', '2740', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3363', '711', '2741', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3364', '711', '2742', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3365', '711', '2743', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3366', '711', '2744', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3367', '711', '2745', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3368', '711', '2746', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3369', '711', '2747', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3370', '711', '2748', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3371', '711', '2749', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3372', '711', '2750', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3373', '711', '2751', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3374', '711', '2752', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3375', '711', '2753', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3376', '711', '2754', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3377', '711', '2755', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3378', '711', '2756', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3379', '711', '2757', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3380', '713', '2933', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3381', '713', '3000', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3382', '4237', '3106', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3383', '4237', '3107', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3384', '4237', '3108', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3385', '4237', '3109', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3386', '4237', '3110', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3387', '4237', '3111', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3388', '4237', '3112', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3389', '4237', '3113', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3390', '4237', '3114', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3391', '4237', '3115', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3392', '4237', '3116', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3393', '4237', '3117', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3394', '4237', '3118', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3395', '4237', '3119', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3396', '4237', '3120', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3397', '4237', '3121', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3398', '4237', '3122', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3399', '4237', '3123', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3400', '4237', '3124', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3401', '4237', '3125', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3402', '4237', '3126', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3403', '4237', '3127', '市辖区', '1', '0');
INSERT INTO `oc_city` VALUES ('3404', '4237', '3128', '市辖区', '1', '0');

-- ----------------------------
-- Table structure for oc_country
-- ----------------------------
DROP TABLE IF EXISTS `oc_country`;
CREATE TABLE `oc_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_country
-- ----------------------------
INSERT INTO `oc_country` VALUES ('44', '中国', 'CN', 'CHN', '', '0', '1');

-- ----------------------------
-- Table structure for oc_coupon
-- ----------------------------
DROP TABLE IF EXISTS `oc_coupon`;
CREATE TABLE `oc_coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `code` varchar(20) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_coupon
-- ----------------------------
INSERT INTO `oc_coupon` VALUES ('4', '-10% Discount', '2222', 'P', '10.0000', '0', '0', '0.0000', '2014-01-01', '2020-01-01', '10', '10', '0', '2009-01-27 13:55:03');
INSERT INTO `oc_coupon` VALUES ('5', 'Free Shipping', '3333', 'P', '0.0000', '0', '1', '100.0000', '2014-01-01', '2014-02-01', '10', '10', '0', '2009-03-14 21:13:53');
INSERT INTO `oc_coupon` VALUES ('6', '-10.00 Discount', '1111', 'F', '10.0000', '0', '0', '10.0000', '2014-01-01', '2020-01-01', '100000', '10000', '0', '2009-03-14 21:15:18');

-- ----------------------------
-- Table structure for oc_coupon_category
-- ----------------------------
DROP TABLE IF EXISTS `oc_coupon_category`;
CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_coupon_category
-- ----------------------------

-- ----------------------------
-- Table structure for oc_coupon_history
-- ----------------------------
DROP TABLE IF EXISTS `oc_coupon_history`;
CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_coupon_history
-- ----------------------------

-- ----------------------------
-- Table structure for oc_coupon_product
-- ----------------------------
DROP TABLE IF EXISTS `oc_coupon_product`;
CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_coupon_product
-- ----------------------------

-- ----------------------------
-- Table structure for oc_cron
-- ----------------------------
DROP TABLE IF EXISTS `oc_cron`;
CREATE TABLE `oc_cron` (
  `cron_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  `cycle` varchar(12) NOT NULL,
  `action` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`cron_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_cron
-- ----------------------------
INSERT INTO `oc_cron` VALUES ('1', 'currency', 'day', 'cron/currency', '1', '2014-09-25 14:40:00', '2017-12-11 09:53:16');

-- ----------------------------
-- Table structure for oc_currency
-- ----------------------------
DROP TABLE IF EXISTS `oc_currency`;
CREATE TABLE `oc_currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` double(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_currency
-- ----------------------------
INSERT INTO `oc_currency` VALUES ('1', 'Pound Sterling', 'GBP', '£', '', '2', '0.75318000', '0', '2017-11-29 14:44:33');
INSERT INTO `oc_currency` VALUES ('2', 'US Dollar', 'USD', '$', '', '2', '0.15150000', '1', '2017-11-29 14:46:38');
INSERT INTO `oc_currency` VALUES ('3', 'Euro', 'EUR', '', '€', '2', '0.84118000', '0', '2017-11-29 14:44:27');
INSERT INTO `oc_currency` VALUES ('4', '人民币', 'CNY', '￥', '', '2', '1.00000000', '1', '2017-11-29 14:45:23');

-- ----------------------------
-- Table structure for oc_customer
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer`;
CREATE TABLE `oc_customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL,
  `fullname` varchar(64) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
<<<<<<< HEAD
  `bzprice` decimal(20,2) unsigned NOT NULL,
=======
>>>>>>> 790b49e13c12789410af78d35dc87d3d392cacc9
  `fax` varchar(32) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text NOT NULL,
  `wishlist` text NOT NULL,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `code` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`)
<<<<<<< HEAD
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
=======
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
>>>>>>> 790b49e13c12789410af78d35dc87d3d392cacc9

-- ----------------------------
-- Records of oc_customer
-- ----------------------------
<<<<<<< HEAD
INSERT INTO `oc_customer` VALUES ('1', '1', '0', '2', 'wyx', '1368114756@qq.com', '18642024553', '0.00', '', '$2y$10$xQfVfe2sDGnMLlNlQRVqDOrqwqQrUafQ5JErFrd/KPwRy4nmZGI2u', '', '', '', '0', '1', '', '127.0.0.1', '1', '0', '', '84ecc6fe70f99fe0b47e0e3f31d2d98af4a63773', '2018-06-26 14:20:42');
INSERT INTO `oc_customer` VALUES ('2', '0', '0', '2', 'demo', '231574266@qq.com', '18600326531', '0.00', '', '$2y$10$tQzFhbZ7kcaYHge117hrleW6tJMXfhVRys.jJpPRLAPNXfYlqvOzu', '', '', '', '0', '1', '', '127.0.0.1', '1', '0', '', '84ecc6fe70f99fe0b47e0e3f31d2d98af4a63773', '2018-06-26 14:20:42');
=======
INSERT INTO `oc_customer` VALUES ('1', '1', '0', '2', 'wyx', '1368114756@qq.com', '18642024553', '', '$2y$10$xQfVfe2sDGnMLlNlQRVqDOrqwqQrUafQ5JErFrd/KPwRy4nmZGI2u', '', '', '', '0', '1', '', '127.0.0.1', '1', '0', '', '84ecc6fe70f99fe0b47e0e3f31d2d98af4a63773', '2018-06-26 14:20:42');
>>>>>>> 790b49e13c12789410af78d35dc87d3d392cacc9

-- ----------------------------
-- Table structure for oc_customer_activity
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_activity`;
CREATE TABLE `oc_customer_activity` (
  `customer_activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_activity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_customer_activity
-- ----------------------------

-- ----------------------------
-- Table structure for oc_customer_affiliate
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_affiliate`;
CREATE TABLE `oc_customer_affiliate` (
  `customer_id` int(11) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `custom_field` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_customer_affiliate
-- ----------------------------

-- ----------------------------
-- Table structure for oc_customer_affiliate_report
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_affiliate_report`;
CREATE TABLE `oc_customer_affiliate_report` (
  `customer_affiliate_report_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `country` varchar(2) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_affiliate_report_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_customer_affiliate_report
-- ----------------------------

-- ----------------------------
-- Table structure for oc_customer_approval
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_approval`;
CREATE TABLE `oc_customer_approval` (
  `customer_approval_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `type` varchar(9) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_approval_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_customer_approval
-- ----------------------------

-- ----------------------------
-- Table structure for oc_customer_group
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_group`;
CREATE TABLE `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_customer_group
-- ----------------------------
INSERT INTO `oc_customer_group` VALUES ('1', '0', '1');
INSERT INTO `oc_customer_group` VALUES ('2', '0', '0');

-- ----------------------------
-- Table structure for oc_customer_group_description
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_group_description`;
CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`customer_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_customer_group_description
-- ----------------------------
INSERT INTO `oc_customer_group_description` VALUES ('1', '1', 'Default', 'Default group');
INSERT INTO `oc_customer_group_description` VALUES ('1', '2', '普通用户组', '普通用户组');
INSERT INTO `oc_customer_group_description` VALUES ('2', '2', '客服群组', '客服服务');
INSERT INTO `oc_customer_group_description` VALUES ('2', '1', '客服群组', '客服服务');

-- ----------------------------
-- Table structure for oc_customer_history
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_history`;
CREATE TABLE `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_customer_history
-- ----------------------------

-- ----------------------------
-- Table structure for oc_customer_ip
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_ip`;
CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `country` varchar(2) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_ip_id`),
  KEY `ip` (`ip`)
<<<<<<< HEAD
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
=======
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
>>>>>>> 790b49e13c12789410af78d35dc87d3d392cacc9

-- ----------------------------
-- Records of oc_customer_ip
-- ----------------------------
INSERT INTO `oc_customer_ip` VALUES ('1', '1', '0', '127.0.0.1', '', '2018-06-26 14:20:42');
INSERT INTO `oc_customer_ip` VALUES ('2', '1', '0', '127.0.0.1', '', '2018-06-26 14:28:03');
INSERT INTO `oc_customer_ip` VALUES ('3', '1', '0', '127.0.0.1', '', '2018-06-26 14:34:40');
INSERT INTO `oc_customer_ip` VALUES ('4', '1', '0', '127.0.0.1', '', '2018-06-26 14:37:43');
INSERT INTO `oc_customer_ip` VALUES ('5', '1', '0', '127.0.0.1', '', '2018-06-26 14:38:25');
INSERT INTO `oc_customer_ip` VALUES ('6', '1', '0', '127.0.0.1', '', '2018-06-27 17:32:21');
INSERT INTO `oc_customer_ip` VALUES ('7', '1', '0', '127.0.0.1', '', '2018-07-03 10:39:23');
INSERT INTO `oc_customer_ip` VALUES ('8', '1', '0', '127.0.0.1', '', '2018-07-03 11:00:47');
INSERT INTO `oc_customer_ip` VALUES ('9', '1', '0', '127.0.0.1', '', '2018-07-05 13:56:46');
INSERT INTO `oc_customer_ip` VALUES ('10', '1', '0', '127.0.0.1', '', '2018-07-05 14:32:30');
INSERT INTO `oc_customer_ip` VALUES ('11', '1', '0', '127.0.0.1', '', '2018-07-05 14:38:58');
INSERT INTO `oc_customer_ip` VALUES ('12', '1', '0', '127.0.0.1', '', '2018-07-05 15:35:18');
INSERT INTO `oc_customer_ip` VALUES ('13', '1', '0', '127.0.0.1', '', '2018-07-05 15:35:59');
INSERT INTO `oc_customer_ip` VALUES ('14', '1', '0', '127.0.0.1', '', '2018-07-05 16:16:45');
INSERT INTO `oc_customer_ip` VALUES ('15', '1', '0', '127.0.0.1', '', '2018-07-09 09:18:08');
INSERT INTO `oc_customer_ip` VALUES ('16', '1', '0', '127.0.0.1', '', '2018-07-09 11:12:55');
INSERT INTO `oc_customer_ip` VALUES ('17', '1', '0', '127.0.0.1', '', '2018-07-11 17:34:02');
INSERT INTO `oc_customer_ip` VALUES ('18', '1', '0', '127.0.0.1', '', '2018-07-25 11:37:48');
INSERT INTO `oc_customer_ip` VALUES ('19', '1', '0', '127.0.0.1', '', '2018-07-27 16:15:33');
INSERT INTO `oc_customer_ip` VALUES ('20', '1', '0', '127.0.0.1', '', '2018-07-31 10:11:01');
INSERT INTO `oc_customer_ip` VALUES ('21', '1', '0', '127.0.0.1', '', '2018-07-31 10:12:20');
INSERT INTO `oc_customer_ip` VALUES ('22', '1', '0', '127.0.0.1', '', '2018-07-31 14:53:13');
INSERT INTO `oc_customer_ip` VALUES ('23', '1', '0', '127.0.0.1', '', '2018-08-20 14:22:22');
<<<<<<< HEAD
INSERT INTO `oc_customer_ip` VALUES ('24', '2', '0', '127.0.0.1', '', '2018-10-11 11:07:14');
INSERT INTO `oc_customer_ip` VALUES ('25', '2', '0', '127.0.0.1', '', '2018-10-12 10:53:19');
=======
>>>>>>> 790b49e13c12789410af78d35dc87d3d392cacc9

-- ----------------------------
-- Table structure for oc_customer_login
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_login`;
CREATE TABLE `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`customer_login_id`),
  KEY `customer_id` (`customer_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_customer_login
-- ----------------------------

-- ----------------------------
-- Table structure for oc_customer_online
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_online`;
CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_customer_online
-- ----------------------------

-- ----------------------------
-- Table structure for oc_customer_reward
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_reward`;
CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_reward_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_customer_reward
-- ----------------------------

-- ----------------------------
-- Table structure for oc_customer_search
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_search`;
CREATE TABLE `oc_customer_search` (
  `customer_search_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category` tinyint(1) NOT NULL,
  `description` tinyint(1) NOT NULL,
  `products` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_search_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_customer_search
-- ----------------------------

-- ----------------------------
-- Table structure for oc_customer_transaction
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_transaction`;
CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_customer_transaction
-- ----------------------------

-- ----------------------------
-- Table structure for oc_customer_wishlist
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_wishlist`;
CREATE TABLE `oc_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_customer_wishlist
-- ----------------------------

-- ----------------------------
-- Table structure for oc_custom_field
-- ----------------------------
DROP TABLE IF EXISTS `oc_custom_field`;
CREATE TABLE `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_custom_field
-- ----------------------------

-- ----------------------------
-- Table structure for oc_custom_field_customer_group
-- ----------------------------
DROP TABLE IF EXISTS `oc_custom_field_customer_group`;
CREATE TABLE `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_custom_field_customer_group
-- ----------------------------

-- ----------------------------
-- Table structure for oc_custom_field_description
-- ----------------------------
DROP TABLE IF EXISTS `oc_custom_field_description`;
CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_custom_field_description
-- ----------------------------

-- ----------------------------
-- Table structure for oc_custom_field_value
-- ----------------------------
DROP TABLE IF EXISTS `oc_custom_field_value`;
CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_custom_field_value
-- ----------------------------

-- ----------------------------
-- Table structure for oc_custom_field_value_description
-- ----------------------------
DROP TABLE IF EXISTS `oc_custom_field_value_description`;
CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_custom_field_value_description
-- ----------------------------

-- ----------------------------
-- Table structure for oc_download
-- ----------------------------
DROP TABLE IF EXISTS `oc_download`;
CREATE TABLE `oc_download` (
  `download_id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(160) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_download
-- ----------------------------

-- ----------------------------
-- Table structure for oc_download_description
-- ----------------------------
DROP TABLE IF EXISTS `oc_download_description`;
CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`download_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_download_description
-- ----------------------------

-- ----------------------------
-- Table structure for oc_download_report
-- ----------------------------
DROP TABLE IF EXISTS `oc_download_report`;
CREATE TABLE `oc_download_report` (
  `download_report_id` int(11) NOT NULL AUTO_INCREMENT,
  `download_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `country` varchar(2) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`download_report_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_download_report
-- ----------------------------

-- ----------------------------
<<<<<<< HEAD
-- Table structure for oc_ebayproqqq
-- ----------------------------
DROP TABLE IF EXISTS `oc_ebayproqqq`;
CREATE TABLE `oc_ebayproqqq` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `fuprice` decimal(15,2) unsigned NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_ebayproqqq
-- ----------------------------
INSERT INTO `oc_ebayproqqq` VALUES ('28', 'Product 1', '', '', '', '', '', '', '', '1000', '7', 'catalog/demo/product/product-3.png', '5', '1', '0.00', '199.0000', '200', '9', '2009-01-01', '146.40000000', '2', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '0', '1', '10', '2009-02-03 16:06:50', '2011-09-30 01:05:39');
INSERT INTO `oc_ebayproqqq` VALUES ('29', 'Product 2', '', '', '', '', '', '', '', '1000', '6', 'catalog/demo/product/product-2.png', '6', '1', '0.00', '299.9900', '0', '9', '2009-01-01', '133.00000000', '2', '0.00000000', '0.00000000', '0.00000000', '3', '1', '1', '0', '0', '0', '2009-02-03 16:42:17', '2011-09-30 01:06:08');
INSERT INTO `oc_ebayproqqq` VALUES ('30', 'Product 3', '', '', '', '', '', '', '', '1000', '6', 'catalog/demo/product/product-3.png', '9', '1', '0.00', '199.0000', '0', '9', '2009-01-01', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '0', '1', '7', '2009-02-03 16:59:00', '2017-12-07 20:01:46');
INSERT INTO `oc_ebayproqqq` VALUES ('31', 'Product 4', '', '', '', '', '', '', '', '1000', '6', 'catalog/demo/product/product-3.png', '0', '1', '123.00', '99.0000', '0', '9', '2009-01-01', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '3', '1', '1', '0', '0', '0', '2009-02-03 17:00:10', '2011-09-30 01:06:00');
INSERT INTO `oc_ebayproqqq` VALUES ('32', 'Product 5', '', '', '', '', '', '', '', '1000', '6', 'catalog/demo/product/product-5.png', '8', '1', '123.00', '399.0000', '0', '9', '2009-01-01', '5.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '0', '0', '0', '2009-02-03 17:07:26', '2011-09-30 01:07:22');
INSERT INTO `oc_ebayproqqq` VALUES ('33', 'Product 6', '', '', '', '', '', '', '', '989', '6', 'catalog/demo/product/0.jpg', '0', '1', '123.00', '299.0000', '0', '9', '2009-01-01', '5.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '2', '1', '1', '0', '1', '24', '2009-02-03 17:08:31', '2018-09-22 12:07:39');
INSERT INTO `oc_ebayproqqq` VALUES ('34', 'Product 7', '', '', '', '', '', '', '', '1000', '6', 'catalog/demo/product/product-9.png', '8', '1', '123.00', '199.0000', '0', '9', '2009-01-01', '5.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '2', '1', '1', '0', '0', '0', '2009-02-03 18:07:54', '2011-09-30 01:07:17');
INSERT INTO `oc_ebayproqqq` VALUES ('35', 'Product 8', '', '', '', '', '', '', '', '1000', '5', 'catalog/demo/product/product-10.png', '0', '1', '123.00', '199.0000', '0', '9', '2009-01-01', '5.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '0', '0', '0', '2009-02-03 18:08:31', '2011-09-30 01:06:17');
INSERT INTO `oc_ebayproqqq` VALUES ('36', 'Product 9', '', '', '', '', '', '', '', '1000', '6', 'catalog/demo/product/product-5.png', '8', '1', '0.00', '99.0000', '100', '9', '2009-01-01', '5.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '2', '1', '1', '0', '0', '0', '2009-02-03 18:09:19', '2011-09-30 01:07:12');
INSERT INTO `oc_ebayproqqq` VALUES ('40', 'product 11', '', '', '', '', '', '', '', '993', '5', 'catalog/demo/product/product-3.png', '8', '1', '0.00', '129.0000', '0', '9', '2009-01-01', '10.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '0', '0', '0', '2009-02-03 21:07:12', '2017-12-01 20:32:06');
INSERT INTO `oc_ebayproqqq` VALUES ('41', 'Product 14', '', '', '', '', '', '', '', '999', '5', 'catalog/demo/product/product-5.png', '8', '1', '0.00', '159.0000', '0', '9', '2009-01-01', '5.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '0', '0', '0', '2009-02-03 21:07:26', '2011-09-30 01:06:44');
INSERT INTO `oc_ebayproqqq` VALUES ('42', 'Product 15', '', '', '', '', '', '', '', '1000', '5', 'catalog/demo/product/product-9.png', '8', '1', '0.00', '299.0000', '400', '9', '2009-01-01', '12.50000000', '1', '1.00000000', '2.00000000', '3.00000000', '1', '1', '2', '0', '0', '0', '2009-02-03 21:07:37', '2017-12-13 15:18:30');
INSERT INTO `oc_ebayproqqq` VALUES ('43', 'Product 16', '', '', '', '', '', '', '', '1000', '5', 'catalog/demo/product/product-11.png', '8', '1', '0.00', '699.0000', '0', '9', '2009-01-01', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '2', '1', '1', '0', '0', '1', '2009-02-03 21:07:49', '2017-11-30 15:16:07');
INSERT INTO `oc_ebayproqqq` VALUES ('44', 'Product 17', '', '', '', '', '', '', '', '1000', '5', 'catalog/demo/product/product-10.png', '8', '1', '0.00', '1999.0000', '0', '9', '2009-01-01', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '2', '1', '1', '0', '0', '0', '2009-02-03 21:08:00', '2011-09-30 01:05:53');
INSERT INTO `oc_ebayproqqq` VALUES ('45', 'Product 18', '', '', '', '', '', '', '', '999', '5', 'catalog/demo/product/product-9.png', '8', '1', '0.00', '1999.0000', '0', '9', '2009-01-01', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '2', '1', '1', '0', '0', '0', '2009-02-03 21:08:17', '2011-09-15 22:22:01');
INSERT INTO `oc_ebayproqqq` VALUES ('46', 'Product 19', '', '', '', '', '', '', '', '998', '5', 'catalog/demo/product/product-1.png', '10', '1', '0.00', '1999.0000', '0', '9', '2009-01-01', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '2', '1', '1', '0', '0', '0', '2009-02-03 21:08:29', '2011-09-30 01:06:39');
INSERT INTO `oc_ebayproqqq` VALUES ('47', 'Product 21', '', '', '', '', '', '', '', '1000', '5', 'catalog/demo/product/product-10.png', '7', '1', '0.00', '99.0000', '400', '9', '2009-01-01', '1.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '0', '1', '0', '0', '0', '2009-02-03 21:08:40', '2011-09-30 01:05:28');
INSERT INTO `oc_ebayproqqq` VALUES ('48', 'Product 20', '', '', '', '', '', '', '', '998', '5', 'catalog/demo/product/product-11.png', '8', '1', '0.00', '99.0000', '0', '9', '2009-01-01', '1.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '2', '1', '1', '0', '0', '1', '2009-02-08 17:21:51', '2018-09-21 17:26:36');
INSERT INTO `oc_ebayproqqq` VALUES ('49', 'Product 21', '', '', '', '', '', '', '', '995', '8', 'catalog/demo/product/product-7.png', '0', '1', '0.00', '199.9900', '0', '9', '2009-01-01', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '0', '14', '2011-04-26 08:57:34', '2017-12-19 11:19:49');
INSERT INTO `oc_ebayproqqq` VALUES ('57', '11111', '', '', '', '', '', '', '', '1', '7', 'catalog/demo/product/product-7.png', '0', '1', '0.00', '1111.0000', '0', '0', '2018-09-19', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '0', '2018-09-19 11:24:59', '2018-09-19 11:24:59');
INSERT INTO `oc_ebayproqqq` VALUES ('58', '11111', '', '', '', '', '', '', '', '1', '7', 'catalog/demo/product/product-7.png', '0', '1', '0.00', '1111.0000', '0', '0', '2018-09-19', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '0', '2018-09-19 11:32:51', '2018-09-19 11:32:51');
INSERT INTO `oc_ebayproqqq` VALUES ('73', 'product  580', '', '', '', '', '', '', '', '580', '7', 'catalog/demo/product/product-7.png', '0', '1', '0.00', '5800.0000', '0', '0', '2018-09-22', '50.00000000', '2', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '0', '2018-09-22 08:50:10', '2018-09-22 08:50:10');
INSERT INTO `oc_ebayproqqq` VALUES ('61', '11111', '', '', '', '', '', '', '', '1', '7', 'catalog/demo/product/product-7.png', '0', '1', '0.00', '1111.0000', '0', '0', '2018-09-19', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '0', '2018-09-19 11:34:21', '2018-09-19 11:34:21');
INSERT INTO `oc_ebayproqqq` VALUES ('62', '11111', '', '', '', '', '', '', '', '1', '7', 'catalog/demo/product/product-7.png', '0', '1', '0.00', '1111.0000', '0', '0', '2018-09-19', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '0', '2018-09-19 11:35:02', '2018-09-19 11:35:02');
INSERT INTO `oc_ebayproqqq` VALUES ('63', '11111', '', '', '', '', '', '', '', '1', '7', 'catalog/demo/product/product-7.png', '0', '1', '0.00', '1111.0000', '0', '0', '2018-09-19', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '0', '2018-09-19 11:35:33', '2018-09-19 11:35:33');
INSERT INTO `oc_ebayproqqq` VALUES ('64', '11111', '', '', '', '', '', '', '', '1', '7', 'catalog/demo/product/product-7.png', '0', '1', '0.00', '1111.0000', '0', '0', '2018-09-19', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '0', '2018-09-19 11:35:42', '2018-09-19 11:35:42');
INSERT INTO `oc_ebayproqqq` VALUES ('65', '11111', '', '', '', '', '', '', '', '1', '7', 'catalog/demo/product/product-7.png', '0', '1', '0.00', '1111.0000', '0', '0', '2018-09-19', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '0', '2018-09-19 11:35:54', '2018-09-19 11:35:54');
INSERT INTO `oc_ebayproqqq` VALUES ('66', '11111', '', '', '', '', '', '', '', '1', '7', 'catalog/demo/product/product-7.png', '0', '1', '0.00', '1111.0000', '0', '0', '2018-09-19', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '0', '2018-09-19 11:36:09', '2018-09-19 11:36:09');
INSERT INTO `oc_ebayproqqq` VALUES ('67', '11111', '', '', '', '', '', '', '', '1', '7', 'catalog/demo/product/product-7.png', '0', '1', '0.00', '1111.0000', '0', '0', '2018-09-19', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '0', '2018-09-19 11:36:58', '2018-09-19 11:36:58');
INSERT INTO `oc_ebayproqqq` VALUES ('68', '11111', '', '', '', '', '', '', '', '1', '7', 'catalog/demo/product/product-7.png', '0', '1', '0.00', '1111.0000', '0', '0', '2018-09-19', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '0', '2018-09-19 11:37:19', '2018-09-19 11:37:19');
INSERT INTO `oc_ebayproqqq` VALUES ('69', '11111', '', '', '', '', '', '', '', '1', '7', 'catalog/demo/product/product-7.png', '0', '1', '0.00', '1111.0000', '0', '0', '2018-09-19', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '0', '2018-09-19 11:37:35', '2018-09-19 11:37:35');
INSERT INTO `oc_ebayproqqq` VALUES ('70', '11111', '', '', '', '', '', '', '', '1', '7', 'catalog/demo/product/product-7.png', '0', '1', '0.00', '1111.0000', '0', '0', '2018-09-19', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '0', '2018-09-19 11:40:13', '2018-09-19 11:40:13');
INSERT INTO `oc_ebayproqqq` VALUES ('71', '11111', '', '', '', '', '', '', '', '1', '7', 'catalog/demo/product/product-7.png', '0', '1', '0.00', '1111.0000', '0', '0', '2018-09-19', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '0', '2018-09-19 11:40:23', '2018-09-19 11:40:23');

-- ----------------------------
=======
>>>>>>> 790b49e13c12789410af78d35dc87d3d392cacc9
-- Table structure for oc_event
-- ----------------------------
DROP TABLE IF EXISTS `oc_event`;
CREATE TABLE `oc_event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_event
-- ----------------------------
INSERT INTO `oc_event` VALUES ('1', 'activity_customer_add', 'catalog/model/account/customer/addCustomer/after', 'event/activity/addCustomer', '1', '0');
INSERT INTO `oc_event` VALUES ('2', 'activity_customer_edit', 'catalog/model/account/customer/editCustomer/after', 'event/activity/editCustomer', '1', '0');
INSERT INTO `oc_event` VALUES ('3', 'activity_customer_password', 'catalog/model/account/customer/editPassword/after', 'event/activity/editPassword', '1', '0');
INSERT INTO `oc_event` VALUES ('4', 'activity_customer_forgotten', 'catalog/model/account/customer/editCode/after', 'event/activity/forgotten', '1', '0');
INSERT INTO `oc_event` VALUES ('5', 'activity_transaction', 'catalog/model/account/customer/addTransaction/after', 'event/activity/addTransaction', '1', '0');
INSERT INTO `oc_event` VALUES ('6', 'activity_customer_login', 'catalog/model/account/customer/deleteLoginAttempts/after', 'event/activity/login', '1', '0');
INSERT INTO `oc_event` VALUES ('7', 'activity_address_add', 'catalog/model/account/address/addAddress/after', 'event/activity/addAddress', '1', '0');
INSERT INTO `oc_event` VALUES ('8', 'activity_address_edit', 'catalog/model/account/address/editAddress/after', 'event/activity/editAddress', '1', '0');
INSERT INTO `oc_event` VALUES ('9', 'activity_address_delete', 'catalog/model/account/address/deleteAddress/after', 'event/activity/deleteAddress', '1', '0');
INSERT INTO `oc_event` VALUES ('10', 'activity_affiliate_add', 'catalog/model/account/affiliate/addAffiliate/after', 'event/activity/addAffiliate', '1', '0');
INSERT INTO `oc_event` VALUES ('11', 'activity_affiliate_edit', 'catalog/model/account/affiliate/editAffiliate/after', 'event/activity/editAffiliate', '1', '0');
INSERT INTO `oc_event` VALUES ('12', 'activity_order_add', 'catalog/model/checkout/order/addOrderHistory/before', 'event/activity/addOrderHistory', '1', '0');
INSERT INTO `oc_event` VALUES ('13', 'activity_return_add', 'catalog/model/account/return/addReturn/after', 'event/activity/addReturn', '1', '0');
INSERT INTO `oc_event` VALUES ('14', 'mail_transaction', 'catalog/model/account/customer/addTransaction/after', 'mail/transaction', '1', '0');
INSERT INTO `oc_event` VALUES ('15', 'mail_forgotten', 'catalog/model/account/customer/editCode/after', 'mail/forgotten', '1', '0');
INSERT INTO `oc_event` VALUES ('16', 'mail_customer_add', 'catalog/model/account/customer/addCustomer/after', 'mail/register', '1', '0');
INSERT INTO `oc_event` VALUES ('17', 'mail_customer_alert', 'catalog/model/account/customer/addCustomer/after', 'mail/register/alert', '1', '0');
INSERT INTO `oc_event` VALUES ('18', 'mail_affiliate_add', 'catalog/model/account/customer/addAffiliate/after', 'mail/affiliate', '1', '0');
INSERT INTO `oc_event` VALUES ('19', 'mail_affiliate_alert', 'catalog/model/account/customer/addAffiliate/after', 'mail/affiliate/alert', '1', '0');
INSERT INTO `oc_event` VALUES ('20', 'mail_voucher', 'catalog/model/checkout/order/addOrderHistory/after', 'extension/total/voucher/send', '1', '0');
INSERT INTO `oc_event` VALUES ('21', 'mail_order_add', 'catalog/model/checkout/order/addOrderHistory/before', 'mail/order', '1', '0');
INSERT INTO `oc_event` VALUES ('22', 'mail_order_alert', 'catalog/model/checkout/order/addOrderHistory/before', 'mail/order/alert', '1', '0');
INSERT INTO `oc_event` VALUES ('23', 'statistics_review_add', 'catalog/model/catalog/review/addReview/after', 'event/statistics/addReview', '1', '0');
INSERT INTO `oc_event` VALUES ('24', 'statistics_return_add', 'catalog/model/account/return/addReturn/after', 'event/statistics/addReturn', '1', '0');
INSERT INTO `oc_event` VALUES ('25', 'statistics_order_history', 'catalog/model/checkout/order/addOrderHistory/after', 'event/statistics/addOrderHistory', '1', '0');
INSERT INTO `oc_event` VALUES ('26', 'admin_mail_affiliate_approve', 'admin/model/customer/customer_approval/approveAffiliate/after', 'mail/affiliate/approve', '1', '0');
INSERT INTO `oc_event` VALUES ('27', 'admin_mail_affiliate_deny', 'admin/model/customer/customer_approval/denyAffiliate/after', 'mail/affiliate/deny', '1', '0');
INSERT INTO `oc_event` VALUES ('28', 'admin_mail_customer_approve', 'admin/model/customer/customer_approval/approveCustomer/after', 'mail/customer/approve', '1', '0');
INSERT INTO `oc_event` VALUES ('29', 'admin_mail_customer_deny', 'admin/model/customer/customer_approval/denyCustomer/after', 'mail/customer/deny', '1', '0');
INSERT INTO `oc_event` VALUES ('30', 'admin_mail_reward', 'admin/model/customer/customer/addReward/after', 'mail/reward', '1', '0');
INSERT INTO `oc_event` VALUES ('31', 'admin_mail_transaction', 'admin/model/customer/customer/addTransaction/after', 'mail/transaction', '1', '0');
INSERT INTO `oc_event` VALUES ('32', 'admin_mail_return', 'admin/model/sale/return/addReturnHistory/after', 'mail/return', '1', '0');
INSERT INTO `oc_event` VALUES ('33', 'admin_mail_forgotten', 'admin/model/user/user/editCode/after', 'mail/forgotten', '1', '0');
INSERT INTO `oc_event` VALUES ('34', 'admin_currency_add', 'admin/model/localisation/currency/addCurrency/after', 'event/currency', '1', '0');
INSERT INTO `oc_event` VALUES ('35', 'admin_currency_edit', 'admin/model/localisation/currency/editCurrency/after', 'event/currency', '1', '0');
INSERT INTO `oc_event` VALUES ('36', 'admin_setting', 'admin/model/setting/setting/editSetting/after', 'event/currency', '1', '0');

-- ----------------------------
-- Table structure for oc_extension
-- ----------------------------
DROP TABLE IF EXISTS `oc_extension`;
CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_extension
-- ----------------------------
INSERT INTO `oc_extension` VALUES ('1', 'payment', 'cod');
INSERT INTO `oc_extension` VALUES ('2', 'total', 'shipping');
INSERT INTO `oc_extension` VALUES ('3', 'total', 'sub_total');
INSERT INTO `oc_extension` VALUES ('4', 'total', 'tax');
INSERT INTO `oc_extension` VALUES ('5', 'total', 'total');
INSERT INTO `oc_extension` VALUES ('6', 'module', 'banner');
INSERT INTO `oc_extension` VALUES ('7', 'module', 'carousel');
INSERT INTO `oc_extension` VALUES ('8', 'total', 'credit');
INSERT INTO `oc_extension` VALUES ('9', 'shipping', 'flat');
INSERT INTO `oc_extension` VALUES ('10', 'total', 'handling');
INSERT INTO `oc_extension` VALUES ('11', 'total', 'low_order_fee');
INSERT INTO `oc_extension` VALUES ('12', 'total', 'coupon');
INSERT INTO `oc_extension` VALUES ('13', 'module', 'category');
INSERT INTO `oc_extension` VALUES ('14', 'module', 'account');
INSERT INTO `oc_extension` VALUES ('15', 'total', 'reward');
INSERT INTO `oc_extension` VALUES ('16', 'total', 'voucher');
INSERT INTO `oc_extension` VALUES ('17', 'payment', 'free_checkout');
INSERT INTO `oc_extension` VALUES ('18', 'module', 'featured');
INSERT INTO `oc_extension` VALUES ('19', 'module', 'slideshow');
INSERT INTO `oc_extension` VALUES ('20', 'theme', 'default');
INSERT INTO `oc_extension` VALUES ('21', 'dashboard', 'activity');
INSERT INTO `oc_extension` VALUES ('22', 'dashboard', 'sale');
INSERT INTO `oc_extension` VALUES ('23', 'dashboard', 'recent');
INSERT INTO `oc_extension` VALUES ('24', 'dashboard', 'order');
INSERT INTO `oc_extension` VALUES ('25', 'dashboard', 'online');
INSERT INTO `oc_extension` VALUES ('26', 'dashboard', 'map');
INSERT INTO `oc_extension` VALUES ('27', 'dashboard', 'customer');
INSERT INTO `oc_extension` VALUES ('28', 'dashboard', 'chart');
INSERT INTO `oc_extension` VALUES ('29', 'report', 'sale_coupon');
INSERT INTO `oc_extension` VALUES ('31', 'report', 'customer_search');
INSERT INTO `oc_extension` VALUES ('32', 'report', 'customer_transaction');
INSERT INTO `oc_extension` VALUES ('33', 'report', 'product_purchased');
INSERT INTO `oc_extension` VALUES ('34', 'report', 'product_viewed');
INSERT INTO `oc_extension` VALUES ('35', 'report', 'sale_return');
INSERT INTO `oc_extension` VALUES ('36', 'report', 'sale_order');
INSERT INTO `oc_extension` VALUES ('37', 'report', 'sale_shipping');
INSERT INTO `oc_extension` VALUES ('38', 'report', 'sale_tax');
INSERT INTO `oc_extension` VALUES ('39', 'report', 'customer_activity');
INSERT INTO `oc_extension` VALUES ('40', 'report', 'customer_order');
INSERT INTO `oc_extension` VALUES ('41', 'report', 'customer_reward');
INSERT INTO `oc_extension` VALUES ('49', 'currency', 'fixer');
INSERT INTO `oc_extension` VALUES ('47', 'payment', 'pp_express');
INSERT INTO `oc_extension` VALUES ('48', 'payment', 'pp_braintree');
INSERT INTO `oc_extension` VALUES ('50', 'module', 'latest');
INSERT INTO `oc_extension` VALUES ('51', 'analytics', 'baidu');
INSERT INTO `oc_extension` VALUES ('52', 'captcha', 'basic');
INSERT INTO `oc_extension` VALUES ('53', 'payment', 'alipay');
INSERT INTO `oc_extension` VALUES ('54', 'captcha', 'google');
INSERT INTO `oc_extension` VALUES ('55', 'module', 'store');

-- ----------------------------
-- Table structure for oc_extension_install
-- ----------------------------
DROP TABLE IF EXISTS `oc_extension_install`;
CREATE TABLE `oc_extension_install` (
  `extension_install_id` int(11) NOT NULL AUTO_INCREMENT,
  `extension_id` int(11) NOT NULL,
  `extension_download_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`extension_install_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_extension_install
-- ----------------------------

-- ----------------------------
-- Table structure for oc_extension_path
-- ----------------------------
DROP TABLE IF EXISTS `oc_extension_path`;
CREATE TABLE `oc_extension_path` (
  `extension_path_id` int(11) NOT NULL AUTO_INCREMENT,
  `extension_install_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`extension_path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_extension_path
-- ----------------------------

-- ----------------------------
-- Table structure for oc_filter
-- ----------------------------
DROP TABLE IF EXISTS `oc_filter`;
CREATE TABLE `oc_filter` (
  `filter_id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_filter
-- ----------------------------

-- ----------------------------
-- Table structure for oc_filter_description
-- ----------------------------
DROP TABLE IF EXISTS `oc_filter_description`;
CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_filter_description
-- ----------------------------

-- ----------------------------
-- Table structure for oc_filter_group
-- ----------------------------
DROP TABLE IF EXISTS `oc_filter_group`;
CREATE TABLE `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_filter_group
-- ----------------------------

-- ----------------------------
-- Table structure for oc_filter_group_description
-- ----------------------------
DROP TABLE IF EXISTS `oc_filter_group_description`;
CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_filter_group_description
-- ----------------------------

-- ----------------------------
-- Table structure for oc_geo_zone
-- ----------------------------
DROP TABLE IF EXISTS `oc_geo_zone`;
CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_geo_zone
-- ----------------------------
INSERT INTO `oc_geo_zone` VALUES ('3', '西部地区', '西部地区', '2009-01-06 23:26:25', '2016-11-22 12:09:27');
INSERT INTO `oc_geo_zone` VALUES ('4', '全国', '全国', '2009-06-23 01:14:53', '2016-11-22 12:07:38');

-- ----------------------------
-- Table structure for oc_information
-- ----------------------------
DROP TABLE IF EXISTS `oc_information`;
CREATE TABLE `oc_information` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`information_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_information
-- ----------------------------
INSERT INTO `oc_information` VALUES ('3', '1', '3', '1');
INSERT INTO `oc_information` VALUES ('4', '1', '1', '1');
INSERT INTO `oc_information` VALUES ('5', '1', '4', '1');
INSERT INTO `oc_information` VALUES ('6', '1', '2', '1');

-- ----------------------------
-- Table structure for oc_information_description
-- ----------------------------
DROP TABLE IF EXISTS `oc_information_description`;
CREATE TABLE `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` mediumtext NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`information_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_information_description
-- ----------------------------
INSERT INTO `oc_information_description` VALUES ('5', '1', 'Terms &amp; Conditions', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n', 'Terms &amp; Conditions', '', '');
INSERT INTO `oc_information_description` VALUES ('3', '1', 'Privacy Policy', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n', 'Privacy Policy', '', '');
INSERT INTO `oc_information_description` VALUES ('6', '1', 'Delivery Information', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n', 'Delivery Information', '', '');
INSERT INTO `oc_information_description` VALUES ('4', '2', '关于我们', '&lt;p&gt;About Us&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', '关于我们', '', '');
INSERT INTO `oc_information_description` VALUES ('4', '1', 'About Us', '&lt;p&gt;About Us&lt;/p&gt;', 'About Us', '', '');
INSERT INTO `oc_information_description` VALUES ('5', '2', '使用条款', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n', '使用条款', '', '');
INSERT INTO `oc_information_description` VALUES ('3', '2', '隐私政策', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n', '隐私政策', '', '');
INSERT INTO `oc_information_description` VALUES ('6', '2', '配送信息', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n', '配送信息', '', '');

-- ----------------------------
-- Table structure for oc_information_to_layout
-- ----------------------------
DROP TABLE IF EXISTS `oc_information_to_layout`;
CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_information_to_layout
-- ----------------------------
INSERT INTO `oc_information_to_layout` VALUES ('4', '0', '0');

-- ----------------------------
-- Table structure for oc_information_to_store
-- ----------------------------
DROP TABLE IF EXISTS `oc_information_to_store`;
CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_information_to_store
-- ----------------------------
INSERT INTO `oc_information_to_store` VALUES ('3', '0');
INSERT INTO `oc_information_to_store` VALUES ('4', '0');
INSERT INTO `oc_information_to_store` VALUES ('5', '0');
INSERT INTO `oc_information_to_store` VALUES ('6', '0');

-- ----------------------------
-- Table structure for oc_language
-- ----------------------------
DROP TABLE IF EXISTS `oc_language`;
CREATE TABLE `oc_language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_language
-- ----------------------------
INSERT INTO `oc_language` VALUES ('1', 'English', 'en-gb', 'en-gb,en', 'gb.png', '2', '0');
INSERT INTO `oc_language` VALUES ('2', '简体中文', 'zh-cn', 'zh-cn', '', '1', '1');

-- ----------------------------
-- Table structure for oc_layout
-- ----------------------------
DROP TABLE IF EXISTS `oc_layout`;
CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_layout
-- ----------------------------
INSERT INTO `oc_layout` VALUES ('1', '首页模板');
INSERT INTO `oc_layout` VALUES ('2', '商品详情');
INSERT INTO `oc_layout` VALUES ('3', '商品分类');
INSERT INTO `oc_layout` VALUES ('4', '默认');
INSERT INTO `oc_layout` VALUES ('5', '品牌');
INSERT INTO `oc_layout` VALUES ('6', '账户中心');
INSERT INTO `oc_layout` VALUES ('7', '结账');
INSERT INTO `oc_layout` VALUES ('8', '联系我们');
INSERT INTO `oc_layout` VALUES ('9', '网站地址');
INSERT INTO `oc_layout` VALUES ('10', '联盟推广');
INSERT INTO `oc_layout` VALUES ('11', '信息内容');
INSERT INTO `oc_layout` VALUES ('12', '商品对比');
INSERT INTO `oc_layout` VALUES ('13', '商品搜索');
INSERT INTO `oc_layout` VALUES ('14', '拍卖商品');

-- ----------------------------
-- Table structure for oc_layout_module
-- ----------------------------
DROP TABLE IF EXISTS `oc_layout_module`;
CREATE TABLE `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`layout_module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=134 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_layout_module
-- ----------------------------
INSERT INTO `oc_layout_module` VALUES ('2', '4', '0', 'content_top', '0');
INSERT INTO `oc_layout_module` VALUES ('3', '4', '0', 'content_top', '1');
INSERT INTO `oc_layout_module` VALUES ('20', '5', '0', 'column_left', '2');
INSERT INTO `oc_layout_module` VALUES ('69', '10', 'account', 'column_right', '1');
INSERT INTO `oc_layout_module` VALUES ('68', '6', 'account', 'column_right', '1');
INSERT INTO `oc_layout_module` VALUES ('132', '1', 'carousel.29', 'content_bottom', '0');
INSERT INTO `oc_layout_module` VALUES ('131', '1', 'featured.28', 'content_top', '4');
INSERT INTO `oc_layout_module` VALUES ('72', '3', 'category', 'column_left', '1');
INSERT INTO `oc_layout_module` VALUES ('73', '3', 'banner.30', 'column_left', '2');
INSERT INTO `oc_layout_module` VALUES ('130', '1', 'banner.32', 'content_top', '3');
INSERT INTO `oc_layout_module` VALUES ('129', '1', 'latest.33', 'content_top', '1');
INSERT INTO `oc_layout_module` VALUES ('128', '1', 'slideshow.27', 'content_top', '0');
INSERT INTO `oc_layout_module` VALUES ('133', '14', 'account', 'content_top', '0');

-- ----------------------------
-- Table structure for oc_layout_route
-- ----------------------------
DROP TABLE IF EXISTS `oc_layout_route`;
CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_layout_route
-- ----------------------------
INSERT INTO `oc_layout_route` VALUES ('38', '6', '0', 'account/%');
INSERT INTO `oc_layout_route` VALUES ('17', '10', '0', 'affiliate/%');
INSERT INTO `oc_layout_route` VALUES ('44', '3', '0', 'product/category');
INSERT INTO `oc_layout_route` VALUES ('64', '1', '0', 'common/home');
INSERT INTO `oc_layout_route` VALUES ('20', '2', '0', 'product/product');
INSERT INTO `oc_layout_route` VALUES ('24', '11', '0', 'information/information');
INSERT INTO `oc_layout_route` VALUES ('23', '7', '0', 'checkout/%');
INSERT INTO `oc_layout_route` VALUES ('31', '8', '0', 'information/contact');
INSERT INTO `oc_layout_route` VALUES ('32', '9', '0', 'information/sitemap');
INSERT INTO `oc_layout_route` VALUES ('34', '4', '0', '');
INSERT INTO `oc_layout_route` VALUES ('45', '5', '0', 'product/manufacturer');
INSERT INTO `oc_layout_route` VALUES ('52', '12', '0', 'product/compare');
INSERT INTO `oc_layout_route` VALUES ('53', '13', '0', 'product/search');
INSERT INTO `oc_layout_route` VALUES ('65', '14', '0', 'ebaypro/ebaypro1');

-- ----------------------------
-- Table structure for oc_length_class
-- ----------------------------
DROP TABLE IF EXISTS `oc_length_class`;
CREATE TABLE `oc_length_class` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL,
  PRIMARY KEY (`length_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_length_class
-- ----------------------------
INSERT INTO `oc_length_class` VALUES ('1', '1.00000000');
INSERT INTO `oc_length_class` VALUES ('2', '10.00000000');
INSERT INTO `oc_length_class` VALUES ('3', '0.39370000');

-- ----------------------------
-- Table structure for oc_length_class_description
-- ----------------------------
DROP TABLE IF EXISTS `oc_length_class_description`;
CREATE TABLE `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`length_class_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_length_class_description
-- ----------------------------
INSERT INTO `oc_length_class_description` VALUES ('1', '1', 'Centimeter', 'cm');
INSERT INTO `oc_length_class_description` VALUES ('2', '1', 'Millimeter', 'mm');
INSERT INTO `oc_length_class_description` VALUES ('1', '2', '厘米', 'cm');
INSERT INTO `oc_length_class_description` VALUES ('2', '2', '毫米', 'mm');
INSERT INTO `oc_length_class_description` VALUES ('3', '2', '英寸', 'in');
INSERT INTO `oc_length_class_description` VALUES ('3', '1', 'Inch', 'in');

-- ----------------------------
-- Table structure for oc_location
-- ----------------------------
DROP TABLE IF EXISTS `oc_location`;
CREATE TABLE `oc_location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) NOT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_location
-- ----------------------------

-- ----------------------------
-- Table structure for oc_manufacturer
-- ----------------------------
DROP TABLE IF EXISTS `oc_manufacturer`;
CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_manufacturer
-- ----------------------------
INSERT INTO `oc_manufacturer` VALUES ('5', 'Columbia', 'catalog/demo/manufacturer/manuf-4.png', '0');
INSERT INTO `oc_manufacturer` VALUES ('6', 'Palm', 'catalog/demo/manufacturer/manuf-5.png', '0');
INSERT INTO `oc_manufacturer` VALUES ('7', 'Lee', 'catalog/demo/manufacturer/manuf-3.png', '0');
INSERT INTO `oc_manufacturer` VALUES ('8', 'LANCOME', 'catalog/demo/manufacturer/manuf-1.png', '0');
INSERT INTO `oc_manufacturer` VALUES ('9', 'VICUTU', 'catalog/demo/manufacturer/manuf-2.png', '0');
INSERT INTO `oc_manufacturer` VALUES ('10', 'LOUIS VUITTON', 'catalog/demo/manufacturer/manuf-6.png', '0');

-- ----------------------------
-- Table structure for oc_manufacturer_to_store
-- ----------------------------
DROP TABLE IF EXISTS `oc_manufacturer_to_store`;
CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`manufacturer_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_manufacturer_to_store
-- ----------------------------
INSERT INTO `oc_manufacturer_to_store` VALUES ('5', '0');
INSERT INTO `oc_manufacturer_to_store` VALUES ('6', '0');
INSERT INTO `oc_manufacturer_to_store` VALUES ('7', '0');
INSERT INTO `oc_manufacturer_to_store` VALUES ('8', '0');
INSERT INTO `oc_manufacturer_to_store` VALUES ('9', '0');
INSERT INTO `oc_manufacturer_to_store` VALUES ('10', '0');

-- ----------------------------
-- Table structure for oc_marketing
-- ----------------------------
DROP TABLE IF EXISTS `oc_marketing`;
CREATE TABLE `oc_marketing` (
  `marketing_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`marketing_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_marketing
-- ----------------------------

-- ----------------------------
-- Table structure for oc_marketing_report
-- ----------------------------
DROP TABLE IF EXISTS `oc_marketing_report`;
CREATE TABLE `oc_marketing_report` (
  `marketing_report_id` int(11) NOT NULL AUTO_INCREMENT,
  `marketing_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `country` varchar(2) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`marketing_report_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_marketing_report
-- ----------------------------

-- ----------------------------
-- Table structure for oc_modification
-- ----------------------------
DROP TABLE IF EXISTS `oc_modification`;
CREATE TABLE `oc_modification` (
  `modification_id` int(11) NOT NULL AUTO_INCREMENT,
  `extension_install_id` int(11) NOT NULL,
  `extension_download_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`modification_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_modification
-- ----------------------------

-- ----------------------------
-- Table structure for oc_module
-- ----------------------------
DROP TABLE IF EXISTS `oc_module`;
CREATE TABLE `oc_module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_module
-- ----------------------------
INSERT INTO `oc_module` VALUES ('30', 'Category', 'banner', '{\"name\":\"Category\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}');
INSERT INTO `oc_module` VALUES ('29', '首页 - 品牌', 'carousel', '{\"name\":\"\\u9996\\u9875 - \\u54c1\\u724c\",\"banner_id\":\"8\",\"width\":\"200\",\"height\":\"90\",\"status\":\"1\"}');
INSERT INTO `oc_module` VALUES ('28', '首页 - 推荐商品', 'featured', '{\"name\":\"\\u9996\\u9875 - \\u63a8\\u8350\\u5546\\u54c1\",\"product_name\":\"\",\"product\":[\"43\",\"40\",\"42\",\"30\"],\"limit\":\"4\",\"width\":\"300\",\"height\":\"300\",\"status\":\"1\"}');
INSERT INTO `oc_module` VALUES ('27', '首页 - 幻灯片', 'slideshow', '{\"name\":\"\\u9996\\u9875 - \\u5e7b\\u706f\\u7247\",\"banner_id\":\"7\",\"width\":\"1140\",\"height\":\"500\",\"status\":\"1\"}');
INSERT INTO `oc_module` VALUES ('31', 'Banner 1', 'banner', '{\"name\":\"Banner 1\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}');
INSERT INTO `oc_module` VALUES ('32', '首页 - 横幅', 'banner', '{\"name\":\"\\u9996\\u9875 - \\u6a2a\\u5e45\",\"banner_id\":\"9\",\"width\":\"1140\",\"height\":\"500\",\"status\":\"1\"}');
INSERT INTO `oc_module` VALUES ('33', '首页 - 最新商品', 'latest', '{\"name\":\"\\u9996\\u9875 - \\u6700\\u65b0\\u5546\\u54c1\",\"limit\":\"8\",\"width\":\"300\",\"height\":\"300\",\"status\":\"1\"}');

-- ----------------------------
-- Table structure for oc_option
-- ----------------------------
DROP TABLE IF EXISTS `oc_option`;
CREATE TABLE `oc_option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_option
-- ----------------------------
INSERT INTO `oc_option` VALUES ('1', 'radio', '1');
INSERT INTO `oc_option` VALUES ('2', 'checkbox', '2');
INSERT INTO `oc_option` VALUES ('4', 'text', '3');
INSERT INTO `oc_option` VALUES ('5', 'select', '4');
INSERT INTO `oc_option` VALUES ('6', 'textarea', '5');
INSERT INTO `oc_option` VALUES ('7', 'file', '6');
INSERT INTO `oc_option` VALUES ('8', 'date', '7');
INSERT INTO `oc_option` VALUES ('9', 'time', '8');
INSERT INTO `oc_option` VALUES ('10', 'datetime', '9');
INSERT INTO `oc_option` VALUES ('11', 'select', '10');
INSERT INTO `oc_option` VALUES ('12', 'date', '11');

-- ----------------------------
-- Table structure for oc_option_description
-- ----------------------------
DROP TABLE IF EXISTS `oc_option_description`;
CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_option_description
-- ----------------------------
INSERT INTO `oc_option_description` VALUES ('1', '1', 'Radio');
INSERT INTO `oc_option_description` VALUES ('2', '1', 'Checkbox');
INSERT INTO `oc_option_description` VALUES ('4', '1', 'Text');
INSERT INTO `oc_option_description` VALUES ('6', '1', 'Textarea');
INSERT INTO `oc_option_description` VALUES ('8', '1', 'Date');
INSERT INTO `oc_option_description` VALUES ('7', '1', 'File');
INSERT INTO `oc_option_description` VALUES ('5', '1', 'Select');
INSERT INTO `oc_option_description` VALUES ('9', '1', 'Time');
INSERT INTO `oc_option_description` VALUES ('10', '1', 'Date &amp; Time');
INSERT INTO `oc_option_description` VALUES ('12', '1', 'Delivery Date');
INSERT INTO `oc_option_description` VALUES ('11', '1', 'Size');
INSERT INTO `oc_option_description` VALUES ('1', '2', '单选');
INSERT INTO `oc_option_description` VALUES ('2', '2', '多选');
INSERT INTO `oc_option_description` VALUES ('4', '2', '文本');
INSERT INTO `oc_option_description` VALUES ('6', '2', '文本域');
INSERT INTO `oc_option_description` VALUES ('8', '2', '日期');
INSERT INTO `oc_option_description` VALUES ('7', '2', '文件');
INSERT INTO `oc_option_description` VALUES ('5', '2', '选择');
INSERT INTO `oc_option_description` VALUES ('9', '2', '时间');
INSERT INTO `oc_option_description` VALUES ('10', '2', '日期时间');
INSERT INTO `oc_option_description` VALUES ('12', '2', '送达日期');
INSERT INTO `oc_option_description` VALUES ('11', '2', '尺码');

-- ----------------------------
-- Table structure for oc_option_value
-- ----------------------------
DROP TABLE IF EXISTS `oc_option_value`;
CREATE TABLE `oc_option_value` (
  `option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_option_value
-- ----------------------------
INSERT INTO `oc_option_value` VALUES ('45', '2', '', '4');
INSERT INTO `oc_option_value` VALUES ('44', '2', '', '3');
INSERT INTO `oc_option_value` VALUES ('42', '5', '', '4');
INSERT INTO `oc_option_value` VALUES ('41', '5', '', '3');
INSERT INTO `oc_option_value` VALUES ('39', '5', '', '1');
INSERT INTO `oc_option_value` VALUES ('40', '5', '', '2');
INSERT INTO `oc_option_value` VALUES ('32', '1', 'catalog/demo/product/product-13.jpg', '1');
INSERT INTO `oc_option_value` VALUES ('23', '2', '', '1');
INSERT INTO `oc_option_value` VALUES ('24', '2', '', '2');
INSERT INTO `oc_option_value` VALUES ('46', '11', 'catalog/demo/product/product-1.jpg', '1');
INSERT INTO `oc_option_value` VALUES ('47', '11', 'catalog/demo/product/product-13.jpg', '2');
INSERT INTO `oc_option_value` VALUES ('48', '11', 'catalog/demo/product/product-2.jpg', '3');
INSERT INTO `oc_option_value` VALUES ('31', '1', 'catalog/demo/product/product-2.jpg', '2');
INSERT INTO `oc_option_value` VALUES ('43', '1', 'catalog/demo/product/product-4.jpg', '3');

-- ----------------------------
-- Table structure for oc_option_value_description
-- ----------------------------
DROP TABLE IF EXISTS `oc_option_value_description`;
CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_option_value_description
-- ----------------------------
INSERT INTO `oc_option_value_description` VALUES ('43', '1', '1', 'Large');
INSERT INTO `oc_option_value_description` VALUES ('43', '2', '1', '大号');
INSERT INTO `oc_option_value_description` VALUES ('45', '1', '2', 'Checkbox 4');
INSERT INTO `oc_option_value_description` VALUES ('44', '1', '2', 'Checkbox 3');
INSERT INTO `oc_option_value_description` VALUES ('31', '1', '1', 'Medium');
INSERT INTO `oc_option_value_description` VALUES ('42', '1', '5', 'Yellow');
INSERT INTO `oc_option_value_description` VALUES ('41', '1', '5', 'Green');
INSERT INTO `oc_option_value_description` VALUES ('39', '1', '5', 'Red');
INSERT INTO `oc_option_value_description` VALUES ('40', '1', '5', 'Blue');
INSERT INTO `oc_option_value_description` VALUES ('23', '1', '2', 'Checkbox 1');
INSERT INTO `oc_option_value_description` VALUES ('24', '1', '2', 'Checkbox 2');
INSERT INTO `oc_option_value_description` VALUES ('48', '1', '11', 'Large');
INSERT INTO `oc_option_value_description` VALUES ('48', '2', '11', '大号');
INSERT INTO `oc_option_value_description` VALUES ('47', '1', '11', 'Medium');
INSERT INTO `oc_option_value_description` VALUES ('31', '2', '1', '中号');
INSERT INTO `oc_option_value_description` VALUES ('32', '1', '1', 'Small');
INSERT INTO `oc_option_value_description` VALUES ('45', '2', '2', 'Checkbox 4');
INSERT INTO `oc_option_value_description` VALUES ('44', '2', '2', 'Checkbox 3');
INSERT INTO `oc_option_value_description` VALUES ('32', '2', '1', '小号');
INSERT INTO `oc_option_value_description` VALUES ('42', '2', '5', '黄色');
INSERT INTO `oc_option_value_description` VALUES ('41', '2', '5', '绿色');
INSERT INTO `oc_option_value_description` VALUES ('39', '2', '5', '红色');
INSERT INTO `oc_option_value_description` VALUES ('40', '2', '5', '蓝色');
INSERT INTO `oc_option_value_description` VALUES ('23', '2', '2', 'Checkbox 1');
INSERT INTO `oc_option_value_description` VALUES ('24', '2', '2', 'Checkbox 2');
INSERT INTO `oc_option_value_description` VALUES ('47', '2', '11', '中号');
INSERT INTO `oc_option_value_description` VALUES ('46', '1', '11', 'Small');
INSERT INTO `oc_option_value_description` VALUES ('46', '2', '11', '小号');

-- ----------------------------
-- Table structure for oc_order
-- ----------------------------
DROP TABLE IF EXISTS `oc_order`;
CREATE TABLE `oc_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `fullname` varchar(64) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_fullname` varchar(64) NOT NULL,
  `payment_telephone` varchar(32) NOT NULL,
  `payment_company` varchar(60) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_city_id` int(11) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_county` varchar(128) NOT NULL,
  `payment_county_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_fullname` varchar(64) NOT NULL,
  `shipping_telephone` varchar(32) NOT NULL,
  `shipping_company` varchar(60) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_city_id` int(11) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_county` varchar(128) NOT NULL,
  `shipping_county_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_order
-- ----------------------------
INSERT INTO `oc_order` VALUES ('1', '0', 'INV-2018-00', '0', '红福网', 'http://www.mycc.com/', '1', '1', 'wyc', '1368114756@qq.com', '18642351665', '', '[]', 'wyx', '13681147568', 'www', 'wwww', '', '成都市', '2538', '', '中国', '44', '四川省', '710', '双流区', '2539', '', '', 'PayPal Express Checkout', 'pp_express', 'wyx', '13681147568', 'www', 'wwww', '', '成都市', '2538', '', '中国', '44', '四川省', '710', '双流区', '2539', '', '', '固定运费', 'flat.flat', '', '249.9880', '0', '0', '0.0000', '0', '', '2', '4', 'CNY', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101 Firefox/60.0', 'zh-CN,zh;q=0.8,zh-TW;q=0.7,zh-HK;q=0.5,en-US;q=0.3,en;q=0.2', '2018-06-27 17:33:08', '2018-06-27 17:33:08');
INSERT INTO `oc_order` VALUES ('2', '0', 'INV-2018-00', '0', '红福网', 'http://www.mycc.com/', '1', '1', 'wyc', '1368114756@qq.com', '18642351665', '', '[]', 'wyx', '13681147568', 'www', 'wwww', '', '成都市', '2538', '', '中国', '44', '四川省', '710', '双流区', '2539', '', '', 'PayPal Express Checkout', 'pp_express', 'wyx', '13681147568', 'www', 'wwww', '', '成都市', '2538', '', '中国', '44', '四川省', '710', '双流区', '2539', '', '', '固定运费', 'flat.flat', '', '249.9880', '0', '0', '0.0000', '0', '', '2', '4', 'CNY', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101 Firefox/60.0', 'zh-CN,zh;q=0.8,zh-TW;q=0.7,zh-HK;q=0.5,en-US;q=0.3,en;q=0.2', '2018-06-27 17:33:35', '2018-06-27 17:33:35');
INSERT INTO `oc_order` VALUES ('3', '0', 'INV-2018-00', '0', '红福网', 'http://www.mycc.com/', '1', '1', 'wyc', '1368114756@qq.com', '18642351665', '', '[]', 'wyx', '13681147568', 'www', 'wwww', '', '成都市', '2538', '', '中国', '44', '四川省', '710', '双流区', '2539', '', '', 'PayPal Express Checkout', 'pp_express', 'wyx', '13681147568', 'www', 'wwww', '', '成都市', '2538', '', '中国', '44', '四川省', '710', '双流区', '2539', '', '', '固定运费', 'flat.flat', '', '249.9880', '0', '0', '0.0000', '0', '', '2', '4', 'CNY', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101 Firefox/60.0', 'zh-CN,zh;q=0.8,zh-TW;q=0.7,zh-HK;q=0.5,en-US;q=0.3,en;q=0.2', '2018-06-27 17:35:23', '2018-06-27 17:35:23');
INSERT INTO `oc_order` VALUES ('4', '0', 'INV-2018-00', '0', '红福网', 'http://www.mycc.com/', '1', '1', 'wyc', '1368114756@qq.com', '18642351665', '', '[]', 'wyx', '13681147568', 'www', 'wwww', '', '成都市', '2538', '', '中国', '44', '四川省', '710', '双流区', '2539', '', '', 'PayPal Express Checkout', 'pp_express', 'wyx', '13681147568', 'www', 'wwww', '', '成都市', '2538', '', '中国', '44', '四川省', '710', '双流区', '2539', '', '', '固定运费', 'flat.flat', '', '249.9880', '0', '0', '0.0000', '0', '', '2', '4', 'CNY', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101 Firefox/60.0', 'zh-CN,zh;q=0.8,zh-TW;q=0.7,zh-HK;q=0.5,en-US;q=0.3,en;q=0.2', '2018-06-27 17:35:39', '2018-06-27 17:35:39');
INSERT INTO `oc_order` VALUES ('5', '0', 'INV-2018-00', '0', '红福网', 'http://www.mycc.com/', '1', '1', 'wyc', '1368114756@qq.com', '18642351665', '', '[]', 'wyx', '13681147568', 'www', 'wwww', '', '成都市', '2538', '', '中国', '44', '四川省', '710', '双流区', '2539', '', '', '货到付款', 'cod', 'wyx', '13681147568', 'www', 'wwww', '', '成都市', '2538', '', '中国', '44', '四川省', '710', '双流区', '2539', '', '', '固定运费', 'flat.flat', '', '249.9880', '1', '0', '0.0000', '0', '', '2', '4', 'CNY', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101 Firefox/60.0', 'zh-CN,zh;q=0.8,zh-TW;q=0.7,zh-HK;q=0.5,en-US;q=0.3,en;q=0.2', '2018-06-27 17:35:45', '2018-06-27 17:35:46');
INSERT INTO `oc_order` VALUES ('6', '0', 'INV-2018-00', '0', '红福网', 'http://www.mycc.com/', '1', '1', 'wyx', '1368114756@qq.com', '18642024553', '', '[]', 'wyx', '13681147568', 'www', 'wwww', '', '成都市', '2538', '', '中国', '44', '四川省', '710', '双流区', '2539', '', '', 'PayPal Express Checkout', 'pp_express', 'wyx', '13681147568', 'www', 'wwww', '', '成都市', '2538', '', '中国', '44', '四川省', '710', '双流区', '2539', '', '', '固定运费', 'flat.flat', '', '249.9880', '0', '0', '0.0000', '0', '', '2', '4', 'CNY', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'zh-CN,zh;q=0.8,zh-TW;q=0.7,zh-HK;q=0.5,en-US;q=0.3,en;q=0.2', '2018-07-11 17:34:35', '2018-07-11 17:34:35');
INSERT INTO `oc_order` VALUES ('7', '0', 'INV-2018-00', '0', '红福网', 'http://www.mycc.com/', '1', '1', 'wyx', '1368114756@qq.com', '18642024553', '', '[]', 'wyx', '13681147568', 'www', 'wwww', '', '成都市', '2538', '', '中国', '44', '四川省', '710', '双流区', '2539', '', '', 'PayPal Express Checkout', 'pp_express', 'wyx', '13681147568', 'www', 'wwww', '', '成都市', '2538', '', '中国', '44', '四川省', '710', '双流区', '2539', '', '', '固定运费', 'flat.flat', '', '1333.5760', '0', '0', '0.0000', '0', '', '2', '4', 'CNY', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'zh,zh-CN;q=0.9', '2018-07-27 16:15:50', '2018-07-27 16:15:50');

-- ----------------------------
-- Table structure for oc_order_history
-- ----------------------------
DROP TABLE IF EXISTS `oc_order_history`;
CREATE TABLE `oc_order_history` (
  `order_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_history_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_order_history
-- ----------------------------
INSERT INTO `oc_order_history` VALUES ('1', '5', '1', '0', '', '2018-06-27 17:35:46');

-- ----------------------------
-- Table structure for oc_order_option
-- ----------------------------
DROP TABLE IF EXISTS `oc_order_option`;
CREATE TABLE `oc_order_option` (
  `order_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  PRIMARY KEY (`order_option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_order_option
-- ----------------------------

-- ----------------------------
-- Table structure for oc_order_product
-- ----------------------------
DROP TABLE IF EXISTS `oc_order_product`;
CREATE TABLE `oc_order_product` (
  `order_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL,
  PRIMARY KEY (`order_product_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_order_product
-- ----------------------------
INSERT INTO `oc_order_product` VALUES ('1', '1', '49', '浅秋专柜正品早秋新款休闲半高领纯羊毛针织衫套头毛衣女基础打底', 'Product 21', '1', '199.9900', '199.9900', '41.9980', '0');
INSERT INTO `oc_order_product` VALUES ('2', '2', '49', '浅秋专柜正品早秋新款休闲半高领纯羊毛针织衫套头毛衣女基础打底', 'Product 21', '1', '199.9900', '199.9900', '41.9980', '0');
INSERT INTO `oc_order_product` VALUES ('3', '3', '49', '浅秋专柜正品早秋新款休闲半高领纯羊毛针织衫套头毛衣女基础打底', 'Product 21', '1', '199.9900', '199.9900', '41.9980', '0');
INSERT INTO `oc_order_product` VALUES ('4', '4', '49', '浅秋专柜正品早秋新款休闲半高领纯羊毛针织衫套头毛衣女基础打底', 'Product 21', '1', '199.9900', '199.9900', '41.9980', '0');
INSERT INTO `oc_order_product` VALUES ('5', '5', '49', '浅秋专柜正品早秋新款休闲半高领纯羊毛针织衫套头毛衣女基础打底', 'Product 21', '1', '199.9900', '199.9900', '41.9980', '0');
INSERT INTO `oc_order_product` VALUES ('6', '6', '49', '浅秋专柜正品早秋新款休闲半高领纯羊毛针织衫套头毛衣女基础打底', 'Product 21', '1', '199.9900', '199.9900', '41.9980', '0');
INSERT INTO `oc_order_product` VALUES ('7', '7', '49', '浅秋专柜正品早秋新款休闲半高领纯羊毛针织衫套头毛衣女基础打底', 'Product 21', '1', '199.9900', '199.9900', '41.9980', '0');
INSERT INTO `oc_order_product` VALUES ('8', '7', '33', '2018 秋冬装新款韩版羊毛大衣外套中长款女大码呢子大衣风衣无羊绒', 'Product 6', '2', '299.0000', '598.0000', '61.8000', '0');
INSERT INTO `oc_order_product` VALUES ('9', '7', '29', '双面羊毛呢子大衣女短款2017春季新款韩版修身小香风毛呢外套女', 'Product 2', '1', '299.9900', '299.9900', '61.9980', '0');

-- ----------------------------
-- Table structure for oc_order_recurring
-- ----------------------------
DROP TABLE IF EXISTS `oc_order_recurring`;
CREATE TABLE `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_order_recurring
-- ----------------------------

-- ----------------------------
-- Table structure for oc_order_recurring_transaction
-- ----------------------------
DROP TABLE IF EXISTS `oc_order_recurring_transaction`;
CREATE TABLE `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_order_recurring_transaction
-- ----------------------------

-- ----------------------------
-- Table structure for oc_order_shipment
-- ----------------------------
DROP TABLE IF EXISTS `oc_order_shipment`;
CREATE TABLE `oc_order_shipment` (
  `order_shipment_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `shipping_courier_id` varchar(255) NOT NULL,
  `tracking_number` varchar(255) NOT NULL,
  PRIMARY KEY (`order_shipment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_order_shipment
-- ----------------------------

-- ----------------------------
-- Table structure for oc_order_status
-- ----------------------------
DROP TABLE IF EXISTS `oc_order_status`;
CREATE TABLE `oc_order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`order_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_order_status
-- ----------------------------
INSERT INTO `oc_order_status` VALUES ('2', '1', 'Processing');
INSERT INTO `oc_order_status` VALUES ('3', '1', 'Shipped');
INSERT INTO `oc_order_status` VALUES ('7', '1', 'Canceled');
INSERT INTO `oc_order_status` VALUES ('5', '1', 'Complete');
INSERT INTO `oc_order_status` VALUES ('8', '1', 'Denied');
INSERT INTO `oc_order_status` VALUES ('9', '1', 'Canceled Reversal');
INSERT INTO `oc_order_status` VALUES ('10', '1', 'Failed');
INSERT INTO `oc_order_status` VALUES ('11', '1', 'Refunded');
INSERT INTO `oc_order_status` VALUES ('12', '1', 'Reversed');
INSERT INTO `oc_order_status` VALUES ('13', '1', 'Chargeback');
INSERT INTO `oc_order_status` VALUES ('1', '1', 'Pending');
INSERT INTO `oc_order_status` VALUES ('16', '1', 'Voided');
INSERT INTO `oc_order_status` VALUES ('15', '1', 'Processed');
INSERT INTO `oc_order_status` VALUES ('14', '1', 'Expired');
INSERT INTO `oc_order_status` VALUES ('2', '2', '处理中');
INSERT INTO `oc_order_status` VALUES ('3', '2', '已发货');
INSERT INTO `oc_order_status` VALUES ('7', '2', '已取消');
INSERT INTO `oc_order_status` VALUES ('5', '2', '已完成');
INSERT INTO `oc_order_status` VALUES ('8', '2', '已拒绝');
INSERT INTO `oc_order_status` VALUES ('9', '2', '取消撤回');
INSERT INTO `oc_order_status` VALUES ('10', '2', '失败');
INSERT INTO `oc_order_status` VALUES ('11', '2', '已退款');
INSERT INTO `oc_order_status` VALUES ('12', '2', '已撤消');
INSERT INTO `oc_order_status` VALUES ('13', '2', '已支付');
INSERT INTO `oc_order_status` VALUES ('1', '2', '待处理');
INSERT INTO `oc_order_status` VALUES ('16', '2', '已失效');
INSERT INTO `oc_order_status` VALUES ('15', '2', '已处理');
INSERT INTO `oc_order_status` VALUES ('14', '2', '已过期');

-- ----------------------------
-- Table structure for oc_order_total
-- ----------------------------
DROP TABLE IF EXISTS `oc_order_total`;
CREATE TABLE `oc_order_total` (
  `order_total_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`order_total_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_order_total
-- ----------------------------
INSERT INTO `oc_order_total` VALUES ('1', '1', 'sub_total', '商品总额', '199.9900', '1');
INSERT INTO `oc_order_total` VALUES ('2', '1', 'shipping', '固定运费', '5.0000', '3');
INSERT INTO `oc_order_total` VALUES ('3', '1', 'tax', 'Eco Tax (-2.00)', '4.0000', '5');
INSERT INTO `oc_order_total` VALUES ('4', '1', 'tax', 'VAT (20%)', '40.9980', '5');
INSERT INTO `oc_order_total` VALUES ('5', '1', 'total', '订单总额', '249.9880', '9');
INSERT INTO `oc_order_total` VALUES ('6', '2', 'sub_total', '商品总额', '199.9900', '1');
INSERT INTO `oc_order_total` VALUES ('7', '2', 'shipping', '固定运费', '5.0000', '3');
INSERT INTO `oc_order_total` VALUES ('8', '2', 'tax', 'Eco Tax (-2.00)', '4.0000', '5');
INSERT INTO `oc_order_total` VALUES ('9', '2', 'tax', 'VAT (20%)', '40.9980', '5');
INSERT INTO `oc_order_total` VALUES ('10', '2', 'total', '订单总额', '249.9880', '9');
INSERT INTO `oc_order_total` VALUES ('11', '3', 'sub_total', '商品总额', '199.9900', '1');
INSERT INTO `oc_order_total` VALUES ('12', '3', 'shipping', '固定运费', '5.0000', '3');
INSERT INTO `oc_order_total` VALUES ('13', '3', 'tax', 'Eco Tax (-2.00)', '4.0000', '5');
INSERT INTO `oc_order_total` VALUES ('14', '3', 'tax', 'VAT (20%)', '40.9980', '5');
INSERT INTO `oc_order_total` VALUES ('15', '3', 'total', '订单总额', '249.9880', '9');
INSERT INTO `oc_order_total` VALUES ('16', '4', 'sub_total', '商品总额', '199.9900', '1');
INSERT INTO `oc_order_total` VALUES ('17', '4', 'shipping', '固定运费', '5.0000', '3');
INSERT INTO `oc_order_total` VALUES ('18', '4', 'tax', 'Eco Tax (-2.00)', '4.0000', '5');
INSERT INTO `oc_order_total` VALUES ('19', '4', 'tax', 'VAT (20%)', '40.9980', '5');
INSERT INTO `oc_order_total` VALUES ('20', '4', 'total', '订单总额', '249.9880', '9');
INSERT INTO `oc_order_total` VALUES ('21', '5', 'sub_total', '商品总额', '199.9900', '1');
INSERT INTO `oc_order_total` VALUES ('22', '5', 'shipping', '固定运费', '5.0000', '3');
INSERT INTO `oc_order_total` VALUES ('23', '5', 'tax', 'Eco Tax (-2.00)', '4.0000', '5');
INSERT INTO `oc_order_total` VALUES ('24', '5', 'tax', 'VAT (20%)', '40.9980', '5');
INSERT INTO `oc_order_total` VALUES ('25', '5', 'total', '订单总额', '249.9880', '9');
INSERT INTO `oc_order_total` VALUES ('26', '6', 'sub_total', '商品总额', '199.9900', '1');
INSERT INTO `oc_order_total` VALUES ('27', '6', 'shipping', '固定运费', '5.0000', '3');
INSERT INTO `oc_order_total` VALUES ('28', '6', 'tax', 'Eco Tax (-2.00)', '4.0000', '5');
INSERT INTO `oc_order_total` VALUES ('29', '6', 'tax', 'VAT (20%)', '40.9980', '5');
INSERT INTO `oc_order_total` VALUES ('30', '6', 'total', '订单总额', '249.9880', '9');
INSERT INTO `oc_order_total` VALUES ('31', '7', 'sub_total', '商品总额', '1097.9800', '1');
INSERT INTO `oc_order_total` VALUES ('32', '7', 'shipping', '固定运费', '5.0000', '3');
INSERT INTO `oc_order_total` VALUES ('33', '7', 'tax', 'Eco Tax (-2.00)', '10.0000', '5');
INSERT INTO `oc_order_total` VALUES ('34', '7', 'tax', 'VAT (20%)', '220.5960', '5');
INSERT INTO `oc_order_total` VALUES ('35', '7', 'total', '订单总额', '1333.5760', '9');

-- ----------------------------
-- Table structure for oc_order_voucher
-- ----------------------------
DROP TABLE IF EXISTS `oc_order_voucher`;
CREATE TABLE `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  PRIMARY KEY (`order_voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_order_voucher
-- ----------------------------

-- ----------------------------
-- Table structure for oc_outprice
-- ----------------------------
DROP TABLE IF EXISTS `oc_outprice`;
CREATE TABLE `oc_outprice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
<<<<<<< HEAD
  `customer_id` int(10) unsigned NOT NULL,
  `shop_id` int(10) NOT NULL,
  `pro_id` int(10) unsigned NOT NULL,
  `outprice` decimal(10,2) NOT NULL,
  `outnum` int(10) NOT NULL,
=======
  `user_id` int(10) unsigned NOT NULL,
  `shop_id` int(10) NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `outprice` decimal(10,2) NOT NULL,
>>>>>>> 790b49e13c12789410af78d35dc87d3d392cacc9
  `pstatus` varchar(1) NOT NULL,
  `user_ip` varchar(20) NOT NULL,
  `outptime` datetime NOT NULL,
  `startime` datetime NOT NULL,
  `endtime` datetime NOT NULL,
  PRIMARY KEY (`id`)
<<<<<<< HEAD
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_outprice
-- ----------------------------
INSERT INTO `oc_outprice` VALUES ('1', '0', '0', '76', '0.00', '123', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for oc_plook_info
-- ----------------------------
DROP TABLE IF EXISTS `oc_plook_info`;
CREATE TABLE `oc_plook_info` (
  `product_id` int(11) NOT NULL,
  `num_info` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_plook_info
-- ----------------------------
INSERT INTO `oc_plook_info` VALUES ('76', '100', '');
INSERT INTO `oc_plook_info` VALUES ('73', '2', '');
INSERT INTO `oc_plook_info` VALUES ('42', '6', '');
=======
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_outprice
-- ----------------------------
>>>>>>> 790b49e13c12789410af78d35dc87d3d392cacc9

-- ----------------------------
-- Table structure for oc_product
-- ----------------------------
DROP TABLE IF EXISTS `oc_product`;
CREATE TABLE `oc_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
<<<<<<< HEAD
  `fuprice` decimal(10,2) unsigned NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_available` datetime NOT NULL,
=======
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
>>>>>>> 790b49e13c12789410af78d35dc87d3d392cacc9
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`product_id`)
<<<<<<< HEAD
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;
=======
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;
>>>>>>> 790b49e13c12789410af78d35dc87d3d392cacc9

-- ----------------------------
-- Records of oc_product
-- ----------------------------
<<<<<<< HEAD
INSERT INTO `oc_product` VALUES ('28', 'Product 1', '', '', '', '', '', '', '', '1000', '7', 'catalog/demo/product/product-3.png', '5', '1', '0.00', '199.0000', '200', '9', '2018-09-30 11:49:00', '2018-10-29 20:00:00', '146.40000000', '2', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '0', '1', '10', '2009-02-03 16:06:50', '2011-09-30 01:05:39');
INSERT INTO `oc_product` VALUES ('29', 'Product 2', '', '', '', '', '', '', '', '1000', '7', 'catalog/demo/product/product-2.png', '6', '1', '0.00', '299.9900', '0', '9', '2018-09-30 11:49:00', '2018-10-29 20:00:00', '133.00000000', '2', '0.00000000', '0.00000000', '0.00000000', '3', '1', '1', '0', '1', '0', '2009-02-03 16:42:17', '2011-09-30 01:06:08');
INSERT INTO `oc_product` VALUES ('30', 'Product 3', '', '', '', '', '', '', '', '1000', '7', 'catalog/demo/product/product-3.png', '9', '1', '0.00', '199.0000', '0', '9', '2018-09-30 11:49:00', '2018-10-29 20:00:00', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '0', '1', '7', '2009-02-03 16:59:00', '2017-12-07 20:01:46');
INSERT INTO `oc_product` VALUES ('31', 'Product 4', '', '', '', '', '', '', '', '1000', '7', 'catalog/demo/product/product-3.png', '0', '1', '0.00', '99.0000', '0', '9', '2018-09-30 11:49:00', '2018-10-29 20:00:00', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '3', '1', '1', '0', '1', '0', '2009-02-03 17:00:10', '2011-09-30 01:06:00');
INSERT INTO `oc_product` VALUES ('32', 'Product 5', '', '', '', '', '', '', '', '1000', '8', 'catalog/demo/product/product-5.png', '8', '1', '232.00', '399.0000', '0', '9', '2018-10-20 20:00:00', '2018-10-29 20:00:00', '5.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '0', '1', '0', '2009-02-03 17:07:26', '2011-09-30 01:07:22');
INSERT INTO `oc_product` VALUES ('33', 'Product 6', '', '', '', '', '', '', '', '989', '8', 'catalog/demo/product/0.jpg', '0', '1', '232.00', '299.0000', '0', '9', '2018-10-20 20:00:00', '2018-10-29 20:00:00', '5.00000000', '1', '22.00000000', '33.00000000', '0.00000000', '2', '1', '1', '0', '1', '24', '2009-02-03 17:08:31', '2018-10-11 16:57:59');
INSERT INTO `oc_product` VALUES ('34', 'Product 7', '', '', '', '', '', '', '', '1000', '8', 'catalog/demo/product/product-9.png', '8', '1', '232.00', '199.0000', '0', '9', '2018-10-20 20:00:00', '2018-10-29 20:00:00', '5.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '2', '1', '1', '0', '1', '0', '2009-02-03 18:07:54', '2011-09-30 01:07:17');
INSERT INTO `oc_product` VALUES ('35', 'Product 8', '', '', '', '', '', '', '', '1000', '8', 'catalog/demo/product/product-10.png', '0', '1', '232.00', '199.0000', '0', '9', '2018-10-20 20:00:00', '2018-10-29 20:00:00', '5.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '0', '1', '0', '2009-02-03 18:08:31', '2011-09-30 01:06:17');
INSERT INTO `oc_product` VALUES ('36', 'Product 9', '', '', '', '', '', '', '', '1000', '7', 'catalog/demo/product/product-5.png', '8', '1', '0.00', '99.0000', '100', '9', '2018-09-30 11:49:00', '2018-10-29 20:00:00', '5.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '2', '1', '1', '0', '1', '0', '2009-02-03 18:09:19', '2011-09-30 01:07:12');
INSERT INTO `oc_product` VALUES ('40', 'product 11', '', '', '', '', '', '', '', '993', '7', 'catalog/demo/product/product-3.png', '8', '1', '0.00', '129.0000', '0', '9', '2018-09-30 11:49:00', '2018-10-29 20:00:00', '10.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '0', '1', '0', '2009-02-03 21:07:12', '2017-12-01 20:32:06');
INSERT INTO `oc_product` VALUES ('41', 'Product 14', '', '', '', '', '', '', '', '999', '7', 'catalog/demo/product/product-5.png', '8', '1', '0.00', '159.0000', '0', '9', '2018-09-30 11:49:00', '2018-10-29 20:00:00', '5.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '0', '1', '0', '2009-02-03 21:07:26', '2011-09-30 01:06:44');
INSERT INTO `oc_product` VALUES ('42', 'Product 15', '', '', '', '', '', '', '', '1000', '7', 'catalog/demo/product/product-9.png', '8', '1', '0.00', '299.0000', '400', '9', '2018-09-30 11:49:00', '2018-10-29 20:00:00', '12.50000000', '1', '1.00000000', '2.00000000', '3.00000000', '1', '1', '2', '0', '1', '0', '2009-02-03 21:07:37', '2017-12-13 15:18:30');
INSERT INTO `oc_product` VALUES ('43', 'Product 16', '', '', '', '', '', '', '', '1000', '7', 'catalog/demo/product/product-11.png', '8', '1', '0.00', '699.0000', '0', '9', '2018-09-30 11:49:00', '2018-10-29 20:00:00', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '2', '1', '1', '0', '1', '1', '2009-02-03 21:07:49', '2017-11-30 15:16:07');
INSERT INTO `oc_product` VALUES ('44', 'Product 17', '', '', '', '', '', '', '', '1000', '7', 'catalog/demo/product/product-10.png', '8', '1', '0.00', '1999.0000', '0', '9', '2018-09-30 11:49:00', '2018-10-29 20:00:00', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '2', '1', '1', '0', '1', '0', '2009-02-03 21:08:00', '2011-09-30 01:05:53');
INSERT INTO `oc_product` VALUES ('45', 'Product 18', '', '', '', '', '', '', '', '999', '7', 'catalog/demo/product/product-9.png', '8', '1', '0.00', '1999.0000', '0', '9', '2018-09-30 11:49:00', '2018-10-29 20:00:00', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '2', '1', '1', '0', '1', '0', '2009-02-03 21:08:17', '2011-09-15 22:22:01');
INSERT INTO `oc_product` VALUES ('46', 'Product 19', '', '', '', '', '', '', '', '998', '7', 'catalog/demo/product/product-1.png', '10', '1', '0.00', '1999.0000', '0', '9', '2018-09-30 11:49:00', '2018-10-29 20:00:00', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '2', '1', '1', '0', '1', '0', '2009-02-03 21:08:29', '2011-09-30 01:06:39');
INSERT INTO `oc_product` VALUES ('47', 'Product 2112', '', '', '', '', '', '', '', '1000', '7', 'catalog/demo/product/product-10.png', '7', '1', '0.00', '99.0000', '400', '9', '2018-09-30 11:49:00', '2018-10-29 20:00:00', '1.00000000', '1', '99.00000000', '99.00000000', '0.00000000', '1', '0', '1', '0', '1', '0', '2009-02-03 21:08:40', '2018-10-11 17:00:18');
INSERT INTO `oc_product` VALUES ('48', 'Product 20', '', '', '', '', '', '', '', '998', '7', 'catalog/demo/product/product-11.png', '8', '1', '0.00', '99.0000', '0', '9', '2018-09-30 11:49:00', '2018-10-29 20:00:00', '1.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '2', '1', '1', '0', '1', '1', '2009-02-08 17:21:51', '2018-09-21 17:26:36');
INSERT INTO `oc_product` VALUES ('49', 'Product 21', '', '', '', '', '', '', '', '995', '7', 'catalog/demo/product/product-7.png', '0', '1', '0.00', '199.9900', '0', '9', '2018-09-30 11:49:00', '2018-10-29 20:00:00', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '15', '2011-04-26 08:57:34', '2017-12-19 11:19:49');
INSERT INTO `oc_product` VALUES ('57', '11111', '', '', '', '', '', '', '', '1', '7', 'catalog/demo/product/product-7.png', '0', '1', '0.00', '1111.0000', '0', '0', '2018-09-30 11:49:00', '2018-10-29 20:00:00', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '0', '2018-09-19 11:24:59', '2018-09-19 11:24:59');
INSERT INTO `oc_product` VALUES ('58', '11111', '', '', '', '', '', '', '', '1', '7', 'catalog/demo/product/product-7.png', '0', '1', '0.00', '1111.0000', '0', '0', '2018-09-30 11:49:00', '2018-10-29 20:00:00', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '0', '2018-09-19 11:32:51', '2018-09-19 11:32:51');
INSERT INTO `oc_product` VALUES ('73', 'product  580', '', '', '', '', '', '', '', '580', '7', 'catalog/demo/product/product-7.png', '0', '1', '0.00', '5800.0000', '0', '0', '2018-09-30 11:49:00', '2018-10-29 20:00:00', '50.00000000', '2', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '5', '2018-09-22 08:50:10', '2018-09-25 11:35:44');
INSERT INTO `oc_product` VALUES ('61', '11111', '', '', '', '', '', '', '', '1', '7', 'catalog/demo/product/product-7.png', '0', '1', '0.00', '1111.0000', '0', '0', '2018-09-30 11:49:00', '2018-10-29 20:00:00', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '0', '2018-09-19 11:34:21', '2018-09-19 11:34:21');
INSERT INTO `oc_product` VALUES ('62', '11111', '', '', '', '', '', '', '', '1', '7', 'catalog/demo/product/product-7.png', '0', '1', '0.00', '1111.0000', '0', '0', '2018-09-30 11:49:00', '2018-10-29 20:00:00', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '0', '2018-09-19 11:35:02', '2018-09-19 11:35:02');
INSERT INTO `oc_product` VALUES ('63', '11111', '', '', '', '', '', '', '', '1', '7', 'catalog/demo/product/product-7.png', '0', '1', '0.00', '1111.0000', '0', '0', '2018-09-30 11:49:00', '2018-10-29 20:00:00', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '0', '2018-09-19 11:35:33', '2018-09-19 11:35:33');
INSERT INTO `oc_product` VALUES ('64', '11111', '', '', '', '', '', '', '', '1', '7', 'catalog/demo/product/product-7.png', '0', '1', '0.00', '1111.0000', '0', '0', '2018-09-30 11:49:00', '2018-10-29 20:00:00', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '0', '2018-09-19 11:35:42', '2018-09-19 11:35:42');
INSERT INTO `oc_product` VALUES ('65', '11111', '', '', '', '', '', '', '', '1', '7', 'catalog/demo/product/product-7.png', '0', '1', '0.00', '1111.0000', '0', '0', '2018-09-30 11:49:00', '2018-10-29 20:00:00', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '0', '2018-09-19 11:35:54', '2018-09-19 11:35:54');
INSERT INTO `oc_product` VALUES ('66', '11111', '', '', '', '', '', '', '', '1', '7', 'catalog/demo/product/product-7.png', '0', '1', '0.00', '1111.0000', '0', '0', '2018-09-30 11:49:00', '2018-10-29 20:00:00', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '0', '2018-09-19 11:36:09', '2018-09-19 11:36:09');
INSERT INTO `oc_product` VALUES ('67', '11111', '', '', '', '', '', '', '', '1', '7', 'catalog/demo/product/product-7.png', '0', '1', '0.00', '1111.0000', '0', '0', '2018-09-30 11:49:00', '2018-10-29 20:00:00', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '0', '2018-09-19 11:36:58', '2018-09-19 11:36:58');
INSERT INTO `oc_product` VALUES ('68', '11111', '', '', '', '', '', '', '', '1', '7', 'catalog/demo/product/product-7.png', '0', '1', '0.00', '1111.0000', '0', '0', '2018-09-30 11:49:00', '2018-10-29 20:00:00', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '0', '2018-09-19 11:37:19', '2018-09-19 11:37:19');
INSERT INTO `oc_product` VALUES ('69', '11111', '', '', '', '', '', '', '', '1', '7', 'catalog/demo/product/product-7.png', '0', '1', '0.00', '1111.0000', '0', '0', '2018-09-30 11:49:00', '2018-10-29 20:00:00', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '0', '2018-09-19 11:37:35', '2018-09-19 11:37:35');
INSERT INTO `oc_product` VALUES ('70', '11111', '', '', '', '', '', '', '', '1', '7', 'catalog/demo/product/product-7.png', '0', '1', '0.00', '1111.0000', '0', '0', '2018-09-30 11:49:00', '2018-10-29 20:00:00', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '0', '2018-09-19 11:40:13', '2018-09-19 11:40:13');
INSERT INTO `oc_product` VALUES ('71', '11111', '', '', '', '', '', '', '', '1', '7', 'catalog/demo/product/product-7.png', '0', '1', '0.00', '1111.0000', '0', '0', '2018-09-30 11:49:00', '2018-10-29 20:00:00', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '0', '2018-09-19 11:40:23', '2018-09-19 11:40:23');
INSERT INTO `oc_product` VALUES ('74', '\\(^o^)/123', '', '', '', '', '', '', '', '1', '7', 'catalog/demo/product/wew.jpg', '0', '1', '111.00', '599900.0000', '0', '0', '2018-09-30 11:49:00', '2018-10-29 20:00:00', '30.00000000', '2', '111.00000000', '222.00000000', '333.00000000', '1', '1', '1', '1', '1', '0', '2018-09-25 11:03:54', '2018-10-11 09:13:33');
INSERT INTO `oc_product` VALUES ('75', '\\(^o^)/', '', '', '', '', '', '', '', '1', '7', 'catalog/demo/product/wew.jpg', '0', '1', '100.00', '599900.0000', '0', '0', '2018-09-30 11:49:00', '2018-10-29 20:00:00', '30.00000000', '2', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '5', '2018-09-25 11:11:26', '2018-09-25 11:11:26');
INSERT INTO `oc_product` VALUES ('76', '\\(^o^)/', '', '', '', '', '', '', '', '1', '7', 'catalog/demo/product/wew.jpg', '0', '1', '100.00', '599900.0000', '0', '0', '2018-09-30 11:49:00', '2018-10-29 20:00:00', '30.00000000', '2', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '3', '2018-09-25 11:11:52', '2018-09-25 11:11:52');
INSERT INTO `oc_product` VALUES ('77', '\\(^o^)/', '', '', '', '', '', '', '', '1', '8', 'catalog/demo/product/wew.jpg', '0', '1', '100.00', '599900.0000', '0', '0', '2018-10-20 20:00:00', '2018-10-29 20:00:00', '30.00000000', '2', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '0', '2018-09-25 11:12:00', '2018-09-25 11:12:00');
INSERT INTO `oc_product` VALUES ('78', '\\(^o^)/', '', '', '', '', '', '', '', '1', '8', 'catalog/demo/product/wew.jpg', '0', '1', '100.00', '599900.0000', '0', '0', '2018-10-20 20:00:00', '2018-10-29 20:00:00', '30.00000000', '2', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '2', '2018-09-25 11:12:06', '2018-09-25 11:12:06');
INSERT INTO `oc_product` VALUES ('79', '\\(^o^)/', '', '', '', '', '', '', '', '1', '8', 'catalog/demo/product/wew.jpg', '0', '1', '100.00', '599900.0000', '0', '0', '2018-10-20 20:00:00', '2018-10-29 20:00:00', '30.00000000', '2', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '0', '2018-09-25 11:16:34', '2018-09-25 11:16:34');
=======
INSERT INTO `oc_product` VALUES ('28', 'Product 1', '', '', '', '', '', '', '', '1000', '7', 'catalog/demo/product/product-3.png', '5', '1', '199.0000', '200', '9', '2009-01-01', '146.40000000', '2', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '0', '1', '10', '2009-02-03 16:06:50', '2011-09-30 01:05:39');
INSERT INTO `oc_product` VALUES ('29', 'Product 2', '', '', '', '', '', '', '', '1000', '6', 'catalog/demo/product/product-2.png', '6', '1', '299.9900', '0', '9', '2009-01-01', '133.00000000', '2', '0.00000000', '0.00000000', '0.00000000', '3', '1', '1', '0', '0', '0', '2009-02-03 16:42:17', '2011-09-30 01:06:08');
INSERT INTO `oc_product` VALUES ('30', 'Product 3', '', '', '', '', '', '', '', '1000', '6', 'catalog/demo/product/product-3.png', '9', '1', '199.0000', '0', '9', '2009-01-01', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '0', '1', '7', '2009-02-03 16:59:00', '2017-12-07 20:01:46');
INSERT INTO `oc_product` VALUES ('31', 'Product 4', '', '', '', '', '', '', '', '1000', '6', 'catalog/demo/product/product-3.png', '0', '1', '99.0000', '0', '9', '2009-01-01', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '3', '1', '1', '0', '0', '0', '2009-02-03 17:00:10', '2011-09-30 01:06:00');
INSERT INTO `oc_product` VALUES ('32', 'Product 5', '', '', '', '', '', '', '', '1000', '6', 'catalog/demo/product/product-5.png', '8', '1', '399.0000', '0', '9', '2009-01-01', '5.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '0', '0', '0', '2009-02-03 17:07:26', '2011-09-30 01:07:22');
INSERT INTO `oc_product` VALUES ('33', 'Product 6', '', '', '', '', '', '', '', '989', '6', 'catalog/demo/product/0.jpg', '0', '1', '299.0000', '0', '9', '2009-01-01', '5.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '2', '1', '1', '0', '1', '24', '2009-02-03 17:08:31', '2018-09-22 12:07:39');
INSERT INTO `oc_product` VALUES ('34', 'Product 7', '', '', '', '', '', '', '', '1000', '6', 'catalog/demo/product/product-9.png', '8', '1', '199.0000', '0', '9', '2009-01-01', '5.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '2', '1', '1', '0', '0', '0', '2009-02-03 18:07:54', '2011-09-30 01:07:17');
INSERT INTO `oc_product` VALUES ('35', 'Product 8', '', '', '', '', '', '', '', '1000', '5', 'catalog/demo/product/product-10.png', '0', '1', '199.0000', '0', '9', '2009-01-01', '5.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '0', '0', '0', '2009-02-03 18:08:31', '2011-09-30 01:06:17');
INSERT INTO `oc_product` VALUES ('36', 'Product 9', '', '', '', '', '', '', '', '1000', '6', 'catalog/demo/product/product-5.png', '8', '1', '99.0000', '100', '9', '2009-01-01', '5.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '2', '1', '1', '0', '0', '0', '2009-02-03 18:09:19', '2011-09-30 01:07:12');
INSERT INTO `oc_product` VALUES ('40', 'product 11', '', '', '', '', '', '', '', '993', '5', 'catalog/demo/product/product-3.png', '8', '1', '129.0000', '0', '9', '2009-01-01', '10.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '0', '0', '0', '2009-02-03 21:07:12', '2017-12-01 20:32:06');
INSERT INTO `oc_product` VALUES ('41', 'Product 14', '', '', '', '', '', '', '', '999', '5', 'catalog/demo/product/product-5.png', '8', '1', '159.0000', '0', '9', '2009-01-01', '5.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '0', '0', '0', '2009-02-03 21:07:26', '2011-09-30 01:06:44');
INSERT INTO `oc_product` VALUES ('42', 'Product 15', '', '', '', '', '', '', '', '1000', '5', 'catalog/demo/product/product-9.png', '8', '1', '299.0000', '400', '9', '2009-01-01', '12.50000000', '1', '1.00000000', '2.00000000', '3.00000000', '1', '1', '2', '0', '0', '0', '2009-02-03 21:07:37', '2017-12-13 15:18:30');
INSERT INTO `oc_product` VALUES ('43', 'Product 16', '', '', '', '', '', '', '', '1000', '5', 'catalog/demo/product/product-11.png', '8', '1', '699.0000', '0', '9', '2009-01-01', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '2', '1', '1', '0', '0', '1', '2009-02-03 21:07:49', '2017-11-30 15:16:07');
INSERT INTO `oc_product` VALUES ('44', 'Product 17', '', '', '', '', '', '', '', '1000', '5', 'catalog/demo/product/product-10.png', '8', '1', '1999.0000', '0', '9', '2009-01-01', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '2', '1', '1', '0', '0', '0', '2009-02-03 21:08:00', '2011-09-30 01:05:53');
INSERT INTO `oc_product` VALUES ('45', 'Product 18', '', '', '', '', '', '', '', '999', '5', 'catalog/demo/product/product-9.png', '8', '1', '1999.0000', '0', '9', '2009-01-01', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '2', '1', '1', '0', '0', '0', '2009-02-03 21:08:17', '2011-09-15 22:22:01');
INSERT INTO `oc_product` VALUES ('46', 'Product 19', '', '', '', '', '', '', '', '998', '5', 'catalog/demo/product/product-1.png', '10', '1', '1999.0000', '0', '9', '2009-01-01', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '2', '1', '1', '0', '0', '0', '2009-02-03 21:08:29', '2011-09-30 01:06:39');
INSERT INTO `oc_product` VALUES ('47', 'Product 21', '', '', '', '', '', '', '', '1000', '5', 'catalog/demo/product/product-10.png', '7', '1', '99.0000', '400', '9', '2009-01-01', '1.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '0', '1', '0', '0', '0', '2009-02-03 21:08:40', '2011-09-30 01:05:28');
INSERT INTO `oc_product` VALUES ('48', 'Product 20', '', '', '', '', '', '', '', '998', '5', 'catalog/demo/product/product-11.png', '8', '1', '99.0000', '0', '9', '2009-01-01', '1.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '2', '1', '1', '0', '0', '1', '2009-02-08 17:21:51', '2018-09-21 17:26:36');
INSERT INTO `oc_product` VALUES ('49', 'Product 21', '', '', '', '', '', '', '', '995', '8', 'catalog/demo/product/product-7.png', '0', '1', '199.9900', '0', '9', '2009-01-01', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '0', '14', '2011-04-26 08:57:34', '2017-12-19 11:19:49');
INSERT INTO `oc_product` VALUES ('57', '11111', '', '', '', '', '', '', '', '1', '7', '', '0', '1', '1111.0000', '0', '0', '2018-09-19', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '0', '2018-09-19 11:24:59', '2018-09-19 11:24:59');
INSERT INTO `oc_product` VALUES ('58', '11111', '', '', '', '', '', '', '', '1', '7', '', '0', '1', '1111.0000', '0', '0', '2018-09-19', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '0', '2018-09-19 11:32:51', '2018-09-19 11:32:51');
INSERT INTO `oc_product` VALUES ('73', 'product  580', '', '', '', '', '', '', '', '580', '7', 'catalog/demo/product/product-1(1).png', '0', '1', '5800.0000', '0', '0', '2018-09-22', '50.00000000', '2', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '0', '2018-09-22 08:50:10', '2018-09-22 08:50:10');
INSERT INTO `oc_product` VALUES ('61', '11111', '', '', '', '', '', '', '', '1', '7', '', '0', '1', '1111.0000', '0', '0', '2018-09-19', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '0', '2018-09-19 11:34:21', '2018-09-19 11:34:21');
INSERT INTO `oc_product` VALUES ('62', '11111', '', '', '', '', '', '', '', '1', '7', '', '0', '1', '1111.0000', '0', '0', '2018-09-19', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '0', '2018-09-19 11:35:02', '2018-09-19 11:35:02');
INSERT INTO `oc_product` VALUES ('63', '11111', '', '', '', '', '', '', '', '1', '7', '', '0', '1', '1111.0000', '0', '0', '2018-09-19', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '0', '2018-09-19 11:35:33', '2018-09-19 11:35:33');
INSERT INTO `oc_product` VALUES ('64', '11111', '', '', '', '', '', '', '', '1', '7', '', '0', '1', '1111.0000', '0', '0', '2018-09-19', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '0', '2018-09-19 11:35:42', '2018-09-19 11:35:42');
INSERT INTO `oc_product` VALUES ('65', '11111', '', '', '', '', '', '', '', '1', '7', '', '0', '1', '1111.0000', '0', '0', '2018-09-19', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '0', '2018-09-19 11:35:54', '2018-09-19 11:35:54');
INSERT INTO `oc_product` VALUES ('66', '11111', '', '', '', '', '', '', '', '1', '7', '', '0', '1', '1111.0000', '0', '0', '2018-09-19', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '0', '2018-09-19 11:36:09', '2018-09-19 11:36:09');
INSERT INTO `oc_product` VALUES ('67', '11111', '', '', '', '', '', '', '', '1', '7', '', '0', '1', '1111.0000', '0', '0', '2018-09-19', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '0', '2018-09-19 11:36:58', '2018-09-19 11:36:58');
INSERT INTO `oc_product` VALUES ('68', '11111', '', '', '', '', '', '', '', '1', '7', '', '0', '1', '1111.0000', '0', '0', '2018-09-19', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '0', '2018-09-19 11:37:19', '2018-09-19 11:37:19');
INSERT INTO `oc_product` VALUES ('69', '11111', '', '', '', '', '', '', '', '1', '7', '', '0', '1', '1111.0000', '0', '0', '2018-09-19', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '0', '2018-09-19 11:37:35', '2018-09-19 11:37:35');
INSERT INTO `oc_product` VALUES ('70', '11111', '', '', '', '', '', '', '', '1', '7', '', '0', '1', '1111.0000', '0', '0', '2018-09-19', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '0', '2018-09-19 11:40:13', '2018-09-19 11:40:13');
INSERT INTO `oc_product` VALUES ('71', '11111', '', '', '', '', '', '', '', '1', '7', '', '0', '1', '1111.0000', '0', '0', '2018-09-19', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '0', '2018-09-19 11:40:23', '2018-09-19 11:40:23');
>>>>>>> 790b49e13c12789410af78d35dc87d3d392cacc9

-- ----------------------------
-- Table structure for oc_product_attribute
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_attribute`;
CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`product_id`,`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_attribute
-- ----------------------------
<<<<<<< HEAD
INSERT INTO `oc_product_attribute` VALUES ('47', '2', '1', '4');
INSERT INTO `oc_product_attribute` VALUES ('43', '2', '1', '1');
INSERT INTO `oc_product_attribute` VALUES ('42', '3', '1', '100mhz');
INSERT INTO `oc_product_attribute` VALUES ('43', '4', '2', '8gb');
INSERT INTO `oc_product_attribute` VALUES ('47', '2', '2', '4');
INSERT INTO `oc_product_attribute` VALUES ('43', '2', '2', '1');
INSERT INTO `oc_product_attribute` VALUES ('42', '3', '2', '100mhz');
INSERT INTO `oc_product_attribute` VALUES ('47', '4', '2', '16GB');
INSERT INTO `oc_product_attribute` VALUES ('43', '4', '1', '8gb');
INSERT INTO `oc_product_attribute` VALUES ('47', '4', '1', '16GB');
=======
INSERT INTO `oc_product_attribute` VALUES ('47', '4', '1', '16GB');
INSERT INTO `oc_product_attribute` VALUES ('43', '2', '1', '1');
INSERT INTO `oc_product_attribute` VALUES ('42', '3', '1', '100mhz');
INSERT INTO `oc_product_attribute` VALUES ('47', '2', '1', '4');
INSERT INTO `oc_product_attribute` VALUES ('43', '4', '2', '8gb');
INSERT INTO `oc_product_attribute` VALUES ('47', '4', '2', '16GB');
INSERT INTO `oc_product_attribute` VALUES ('43', '2', '2', '1');
INSERT INTO `oc_product_attribute` VALUES ('42', '3', '2', '100mhz');
INSERT INTO `oc_product_attribute` VALUES ('47', '2', '2', '4');
INSERT INTO `oc_product_attribute` VALUES ('43', '4', '1', '8gb');

-- ----------------------------
-- Table structure for oc_product_attribute_ebaypro
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_attribute_ebaypro`;
CREATE TABLE `oc_product_attribute_ebaypro` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`product_id`,`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_attribute_ebaypro
-- ----------------------------
INSERT INTO `oc_product_attribute_ebaypro` VALUES ('47', '4', '1', '16GB');
INSERT INTO `oc_product_attribute_ebaypro` VALUES ('43', '2', '1', '1');
INSERT INTO `oc_product_attribute_ebaypro` VALUES ('42', '3', '1', '100mhz');
INSERT INTO `oc_product_attribute_ebaypro` VALUES ('47', '2', '1', '4');
INSERT INTO `oc_product_attribute_ebaypro` VALUES ('43', '4', '2', '8gb');
INSERT INTO `oc_product_attribute_ebaypro` VALUES ('47', '4', '2', '16GB');
INSERT INTO `oc_product_attribute_ebaypro` VALUES ('43', '2', '2', '1');
INSERT INTO `oc_product_attribute_ebaypro` VALUES ('42', '3', '2', '100mhz');
INSERT INTO `oc_product_attribute_ebaypro` VALUES ('47', '2', '2', '4');
INSERT INTO `oc_product_attribute_ebaypro` VALUES ('43', '4', '1', '8gb');
>>>>>>> 790b49e13c12789410af78d35dc87d3d392cacc9

-- ----------------------------
-- Table structure for oc_product_description
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_description`;
CREATE TABLE `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`product_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_description
-- ----------------------------
INSERT INTO `oc_product_description` VALUES ('35', '1', 'Lorem Ipsum Sit 365 Officia Doloribus', '&lt;p&gt;\r\n	Product 8&lt;/p&gt;\r\n', '', 'Lorem Ipsum Sit 365 Officia Doloribus', '', '');
INSERT INTO `oc_product_description` VALUES ('73', '2', '翡翠手镯', '', '', '翡翠手镯', '', '');
INSERT INTO `oc_product_description` VALUES ('40', '1', 'Omnis Voluptas Asumenda Est Sequi', '&lt;p class=&quot;intro&quot;&gt;iPhone is a revolutionary new mobile phone that allows you to make a call by simply tapping a name or number in your address book, a favorites list, or a call log. It also automatically syncs all your contacts from a PC, Mac, or Internet service. And it lets you select and listen to voicemail messages in whatever order you want just like email.&lt;/p&gt;', '', 'Omnis Voluptas Asumenda Est Sequi', '', '');
INSERT INTO `oc_product_description` VALUES ('28', '1', 'Temporibus Autem Quibus Amet Aut', '&lt;p&gt;\r\n	HTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience you never thought possible. Seductively sleek, the HTC Touch HD provides the next generation of mobile functionality, all at a simple touch. Fully integrated with Windows Mobile Professional 6.1, ultrafast 3.5G, GPS, 5MP camera, plus lots more - all delivered on a breathtakingly crisp 3.8&amp;quot; WVGA touchscreen - you can take control of your mobile world with the HTC Touch HD.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Processor Qualcomm&amp;reg; MSM 7201A&amp;trade; 528 MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Operating System&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Memory: 512 MB ROM, 288 MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Dimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band frequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Device Control via HTC TouchFLO&amp;trade; 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;\r\n	&lt;li&gt;\r\n		GPS and A-GPS ready&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth&amp;reg; 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wi-Fi&amp;reg;: IEEE 802.11 b/g&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HTC ExtUSB&amp;trade; (11-pin mini-USB 2.0)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		5 megapixel color camera with auto focus&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VGA CMOS color camera&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Ring tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;\r\n	&lt;li&gt;\r\n		40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Rechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Expansion Slot: microSD&amp;trade; memory card (SD 2.0 compatible)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Special Features: FM Radio, G-Sensor&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', 'Temporibus Autem Quibus Amet Aut', '', '');
INSERT INTO `oc_product_description` VALUES ('44', '1', 'Encimunt Moptio Labore 898 Olore Magnam', '&lt;div&gt;\r\n	MacBook Air is ultrathin, ultraportable, and ultra unlike anything else. But you don&amp;rsquo;t lose inches and pounds overnight. It&amp;rsquo;s the result of rethinking conventions. Of multiple wireless innovations. And of breakthrough design. With MacBook Air, mobile computing suddenly has a new standard.&lt;/div&gt;\r\n', '', 'Encimunt Moptio Labore 898 Olore Magnam', '', '');
INSERT INTO `oc_product_description` VALUES ('45', '1', 'Qi Dolorem Ipsum Quia Dolor Sit Amet', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Latest Intel mobile architecture&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Powered by the most advanced mobile processors from Intel, the new Core 2 Duo MacBook Pro is over 50% faster than the original Core Duo MacBook Pro and now supports up to 4GB of RAM.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Leading-edge graphics&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			The NVIDIA GeForce 8600M GT delivers exceptional graphics processing power. For the ultimate creative canvas, you can even configure the 17-inch model with a 1920-by-1200 resolution display.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Designed for life on the road&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Innovations such as a magnetic power connection and an illuminated keyboard with ambient light sensor put the MacBook Pro in a class by itself.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Connect. Create. Communicate.&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Quickly set up a video conference with the built-in iSight camera. Control presentations and media from up to 30 feet away with the included Apple Remote. Connect to high-bandwidth peripherals with FireWire 800 and DVI.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Next-generation wireless&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Featuring 802.11n wireless technology, the MacBook Pro delivers up to five times the performance and up to twice the range of previous-generation technologies.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'Qi Dolorem Ipsum Quia Dolor Sit Amet', '', '');
INSERT INTO `oc_product_description` VALUES ('29', '1', 'Beatae Vitae Dicta 9001 Sunt Explicabo', '&lt;p&gt;\r\n	Redefine your workday with the Palm Treo Pro smartphone. Perfectly balanced, you can respond to business and personal email, stay on top of appointments and contacts, and use Wi-Fi or GPS when you&amp;rsquo;re out and about. Then watch a video on YouTube, catch up with news and sports on the web, or listen to a few songs. Balance your work and play the way you like it, with the Palm Treo Pro.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Edition&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Qualcomm&amp;reg; MSM7201 400MHz Processor&lt;/li&gt;\r\n	&lt;li&gt;\r\n		320x320 transflective colour TFT touchscreen&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/UMTS/EDGE/GPRS/GSM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Tri-band UMTS &amp;mdash; 850MHz, 1900MHz, 2100MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM &amp;mdash; 850/900/1800/1900&lt;/li&gt;\r\n	&lt;li&gt;\r\n		802.11b/g with WPA, WPA2, and 801.1x authentication&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in GPS&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth Version: 2.0 + Enhanced Data Rate&lt;/li&gt;\r\n	&lt;li&gt;\r\n		256MB storage (100MB user available), 128MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2.0 megapixel camera, up to 8x digital zoom and video capture&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Removable, rechargeable 1500mAh lithium-ion battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Up to 5.0 hours talk time and up to 250 hours standby&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroSDHC card expansion (up to 32GB supported)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroUSB 2.0 for synchronization and charging&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.5mm stereo headset jack&lt;/li&gt;\r\n	&lt;li&gt;\r\n		60mm (W) x 114mm (L) x 13.5mm (D) / 133g&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', 'Beatae Vitae Dicta 9001 Sunt Explicabo', '', '');
INSERT INTO `oc_product_description` VALUES ('36', '1', 'At Fero G99 Acusamus Et Iusto Sdio', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Video in your pocket.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Its the small iPod with one very big idea: video. The worlds most popular music player now lets you enjoy movies, TV shows, and more on a two-inch display thats 65% brighter than before.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Sleek and colorful.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With an anodized aluminum and polished stainless steel enclosure and a choice of five colors, iPod nano is dressed to impress.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;iTunes.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Available as a free download, iTunes makes it easy to browse and buy millions of songs, movies, TV shows, audiobooks, and games and download free podcasts all at the iTunes Store. And you can import your own music, manage your whole media library, and sync your iPod or iPhone with ease.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'At Fero G99 Acusamus Et Iusto Sdio', '', '');
INSERT INTO `oc_product_description` VALUES ('46', '1', 'Kelit Esse Cillum Dolore Eu 909 Fugiat', '&lt;div&gt;\r\n	Unprecedented power. The next generation of processing technology has arrived. Built into the newest VAIO notebooks lies Intel&amp;#39;s latest, most powerful innovation yet: Intel&amp;reg; Centrino&amp;reg; 2 processor technology. Boasting incredible speed, expanded wireless connectivity, enhanced multimedia support and greater energy efficiency, all the high-performance essentials are seamlessly combined into a single chip.&lt;/div&gt;\r\n', '', 'Kelit Esse Cillum Dolore Eu 909 Fugiat', '', '');
<<<<<<< HEAD
INSERT INTO `oc_product_description` VALUES ('47', '1', 'Moluptatem AM01 Nesciunt Neque Porro Quisquam', '&lt;p&gt;Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge wide-aspect screen while letting you work as comfortably as possible - you might even forget you\'re at the office&lt;/p&gt;', '', 'Moluptatem AM01 Nesciunt Neque Porro Quisquam', '', '');
=======
INSERT INTO `oc_product_description` VALUES ('47', '1', 'Moluptatem AM01 Nesciunt Neque Porro Quisquam', '&lt;p&gt;\r\n	Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge wide-aspect screen while letting you work as comfortably as possible - you might even forget you&amp;#39;re at the office&lt;/p&gt;\r\n', '', 'Moluptatem AM01 Nesciunt Neque Porro Quisquam', '', '');
>>>>>>> 790b49e13c12789410af78d35dc87d3d392cacc9
INSERT INTO `oc_product_description` VALUES ('32', '1', 'Vel Illum C09 Dolorem Eum Fugiat Quo', '&lt;p&gt;\r\n	&lt;strong&gt;Revolutionary multi-touch interface.&lt;/strong&gt;&lt;br /&gt;\r\n	iPod touch features the same multi-touch screen technology as iPhone. Pinch to zoom in on a photo. Scroll through your songs and videos with a flick. Flip through your library by album artwork with Cover Flow.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Gorgeous 3.5-inch widescreen display.&lt;/strong&gt;&lt;br /&gt;\r\n	Watch your movies, TV shows, and photos come alive with bright, vivid color on the 320-by-480-pixel display.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Music downloads straight from iTunes.&lt;/strong&gt;&lt;br /&gt;\r\n	Shop the iTunes Wi-Fi Music Store from anywhere with Wi-Fi.1 Browse or search to find the music youre looking for, preview it, and buy it with just a tap.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Surf the web with Wi-Fi.&lt;/strong&gt;&lt;br /&gt;\r\n	Browse the web using Safari and watch YouTube videos on the first iPod with Wi-Fi built in&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n', '', 'Vel Illum C09 Dolorem Eum Fugiat Quo', '', '');
INSERT INTO `oc_product_description` VALUES ('41', '1', 'Omnis Provident M235 Odio Volupt Cupiditate', '&lt;div&gt;\r\n	Just when you thought iMac had everything, now there&acute;s even more. More powerful Intel Core 2 Duo processors. And more memory standard. Combine this with Mac OS X Leopard and iLife &acute;08, and it&acute;s more all-in-one than ever. iMac packs amazing performance into a stunningly slim space.&lt;/div&gt;\r\n', '', 'Omnis Provident M235 Odio Volupt Cupiditate', '', '');
INSERT INTO `oc_product_description` VALUES ('34', '1', 'Encimunt Moptio Labore 898 Olore Magnam', '&lt;div&gt;\r\n	&lt;strong&gt;Born to be worn.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Clip on the worlds most wearable music player and take up to 240 songs with you anywhere. Choose from five colors including four new hues to make your musical fashion statement.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Random meets rhythm.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With iTunes autofill, iPod shuffle can deliver a new musical experience every time you sync. For more randomness, you can shuffle songs during playback with the slide of a switch.&lt;/p&gt;\r\n	&lt;strong&gt;Everything is easy.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Charge and sync with the included USB dock. Operate the iPod shuffle controls with one hand. Enjoy up to 12 hours straight of skip-free music playback.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'Encimunt Moptio Labore 898 Olore Magnam', '', '');
INSERT INTO `oc_product_description` VALUES ('43', '1', 'Lorem Ipsum Sit 365 Officia Doloribus', '&lt;div&gt;\r\n&lt;p&gt;&lt;strong&gt;Intel Core 2 Duo processor&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;1GB memory, larger hard drives&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Sleek, 1.08-inch-thin design&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Built-in iSight camera&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;', '', 'Lorem Ipsum Sit 365 Officia Doloribus', '', '');
INSERT INTO `oc_product_description` VALUES ('31', '1', 'At Fero G99 Acusamus Et Iusto Sdio', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		Engineered with pro-level features and performance, the 12.3-effective-megapixel D300 combines brand new technologies with advanced features inherited from Nikon&amp;#39;s newly announced D3 professional digital SLR camera to offer serious photographers remarkable performance combined with agility.&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		Similar to the D3, the D300 features Nikon&amp;#39;s exclusive EXPEED Image Processing System that is central to driving the speed and processing power needed for many of the camera&amp;#39;s new features. The D300 features a new 51-point autofocus system with Nikon&amp;#39;s 3D Focus Tracking feature and two new LiveView shooting modes that allow users to frame a photograph using the camera&amp;#39;s high-resolution LCD monitor. The D300 shares a similar Scene Recognition System as is found in the D3; it promises to greatly enhance the accuracy of autofocus, autoexposure, and auto white balance by recognizing the subject or scene being photographed and applying this information to the calculations for the three functions.&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		The D300 reacts with lightning speed, powering up in a mere 0.13 seconds and shooting with an imperceptible 45-millisecond shutter release lag time. The D300 is capable of shooting at a rapid six frames per second and can go as fast as eight frames per second when using the optional MB-D10 multi-power battery pack. In continuous bursts, the D300 can shoot up to 100 shots at full 12.3-megapixel resolution. (NORMAL-LARGE image setting, using a SanDisk Extreme IV 1GB CompactFlash card.)&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		The D300 incorporates a range of innovative technologies and features that will significantly improve the accuracy, control, and performance photographers can get from their equipment. Its new Scene Recognition System advances the use of Nikon&amp;#39;s acclaimed 1,005-segment sensor to recognize colors and light patterns that help the camera determine the subject and the type of scene being photographed before a picture is taken. This information is used to improve the accuracy of autofocus, autoexposure, and auto white balance functions in the D300. For example, the camera can track moving subjects better and by identifying them, it can also automatically select focus points faster and with greater accuracy. It can also analyze highlights and more accurately determine exposure, as well as infer light sources to deliver more accurate white balance detection.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'At Fero G99 Acusamus Et Iusto Sdio', '', '');
INSERT INTO `oc_product_description` VALUES ('49', '1', 'Omnis Voluptas Asumenda Est Sequi', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. &lt;strong&gt;Ut enim ad minim veniam&lt;/strong&gt;, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore - eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/p&gt;\r\n&lt;p&gt;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Neque porro quisquam est&lt;/strong&gt;, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur.&lt;/p&gt;\r\n&lt;ol&gt;\r\n&lt;li&gt;At vero eos et accusamus et&lt;/li&gt;\r\n&lt;li&gt;Iusto odio dignissimos ducimus qui&lt;/li&gt;\r\n&lt;li&gt;Blanditiis &lt;strong&gt;praesentium voluptatum&lt;/strong&gt;&lt;/li&gt;\r\n&lt;li&gt;Deleniti atque corrupti quos dolores et&lt;/li&gt;\r\n&lt;li&gt;Iquas molestias excepturi sint occaecati cupiditate non provident&lt;/li&gt;\r\n&lt;li&gt;Similique sunt in culpa qui officia deserunt mollitia animi&lt;/li&gt;\r\n&lt;li&gt;Id est laborum et dolorum fuga&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Nullam sollicitudin&lt;/strong&gt; rutrum augue sit amet ornare. Vivamus placerat cursus arcu, vitae molestie nulla luctus eu. Pellentesque eros tortor, convallis non magna eu, congue rutrum diam. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Mauris elit augue, sollicitudin a gravida eu, ultricies vitae purus. Integer sed convallis sapien. Etiam non tincidunt ligula.&lt;/p&gt;\r\n&lt;p&gt;In ut sem rhoncus &lt;strong&gt;lorem pellentesque facilisis&lt;/strong&gt; sed nec neque. Sed eget tortor sem. Proin semper ex risus, ac posuere tellus consequat vitae. Sed dignissim sem non nisl aliquet fermentum. Curabitur porta ex placerat nisl efficitur, eget suscipit felis sodales. Pellentesque sit amet ipsum eget est vestibulum pretium.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Donec nisl odio&lt;/strong&gt;, consectetur nec porta vitae, ullamcorper vitae elit. Nullam nec semper magna. Nunc sed est id nisl interdum commodo mattis vitae dui. Vestibulum venenatis nisl ac eros euismod, a ullamcorper nunc malesuada.&lt;/p&gt;', '', 'Omnis Voluptas Asumenda Est Sequi', '', '');
INSERT INTO `oc_product_description` VALUES ('42', '2', '蔻姿娜焦糖色羊毛针织连衣裙秋冬长袖打底裙宽松中长款过膝毛衣裙', '&lt;p&gt;&lt;span style=&quot;font-family: helvetica, geneva, arial; font-size: small;&quot;&gt;&lt;span style=&quot;font-family: Helvetica; font-size: small;&quot;&gt;&lt;img src=&quot;http://local.oc3-free-dev/image/catalog/中文测试/cropped.jpg&quot; /&gt;&lt;img src=&quot;http://local.oc3-free-dev/image/catalog/中文测试/中文图片上传.jpg&quot; /&gt;&lt;img src=&quot;http://local.oc3-free-dev/image/catalog/demo/banner/banner-1.jpg&quot; /&gt;The 30-inch Apple Cinema HD Display delivers an amazing 2560 x 1600 pixel resolution. Designed specifically for the creative professional, this display provides more space for easier access to all the tools and palettes needed to edit, format and composite your work. Combine this display with a Mac Pro, MacBook Pro, or PowerMac G5 and there\'s no limit to what you can achieve. &lt;br /&gt; &lt;br /&gt; &lt;/span&gt;&lt;span style=&quot;font-family: Helvetica; font-size: small;&quot;&gt;The Cinema HD features an active-matrix liquid crystal display that produces flicker-free images that deliver twice the brightness, twice the sharpness and twice the contrast ratio of a typical CRT display. Unlike other flat panels, it\'s designed with a pure digital interface to deliver distortion-free images that never need adjusting. With over 4 million digital pixels, the display is uniquely suited for scientific and technical applications such as visualizing molecular structures or analyzing geological data. &lt;br /&gt; &lt;br /&gt; &lt;/span&gt;&lt;span style=&quot;font-family: Helvetica; font-size: small;&quot;&gt;Offering accurate, brilliant color performance, the Cinema HD delivers up to 16.7 million colors across a wide gamut allowing you to see subtle nuances between colors from soft pastels to rich jewel tones. A wide viewing angle ensures uniform color from edge to edge. Apple\'s ColorSync technology allows you to create custom profiles to maintain consistent color onscreen and in print. The result: You can confidently use this display in all your color-critical applications. &lt;br /&gt; &lt;br /&gt; &lt;/span&gt;&lt;span style=&quot;font-family: Helvetica; font-size: small;&quot;&gt;Housed in a new aluminum design, the display has a very thin bezel that enhances visual accuracy. Each display features two FireWire 400 ports and two USB 2.0 ports, making attachment of desktop peripherals, such as iSight, iPod, digital and still cameras, hard drives, printers and scanners, even more accessible and convenient. Taking advantage of the much thinner and lighter footprint of an LCD, the new displays support the VESA (Video Electronics Standards Association) mounting interface standard. Customers with the optional Cinema Display VESA Mount Adapter kit gain the flexibility to mount their display in locations most appropriate for their work environment. &lt;br /&gt; &lt;br /&gt; &lt;/span&gt;&lt;span style=&quot;font-family: Helvetica; font-size: small;&quot;&gt;&lt;span style=&quot;font-size: 12pt; font-family: \'Microsoft Yahei\';&quot;&gt;The Cinema HD features a single cable design with elegant breakout for the USB 2.0, FireWire 400 and a pure digital connection using the industry standard Digital Video Interface (DVI) interface. The DVI connection allows for a direct pure-digital connection.&lt;/span&gt;&lt;br /&gt; &lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;h3&gt;Features:&lt;/h3&gt;\r\n&lt;p&gt;Unrivaled display performance&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;30-inch (viewable) active-matrix liquid crystal display provides breathtaking image quality and vivid, richly saturated color.&lt;/li&gt;\r\n&lt;li&gt;Support for 2560-by-1600 pixel resolution for display of high definition still and video imagery.&lt;/li&gt;\r\n&lt;li&gt;Wide-format design for simultaneous display of two full pages of text and graphics.&lt;/li&gt;\r\n&lt;li&gt;Industry standard DVI connector for direct attachment to Mac- and Windows-based desktops and notebooks&lt;/li&gt;\r\n&lt;li&gt;Incredibly wide (170 degree) horizontal and vertical viewing angle for maximum visibility and color performance.&lt;/li&gt;\r\n&lt;li&gt;Lightning-fast pixel response for full-motion digital video playback.&lt;/li&gt;\r\n&lt;li&gt;Support for 16.7 million saturated colors, for use in all graphics-intensive applications.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;Simple setup and operation&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Single cable with elegant breakout for connection to DVI, USB and FireWire ports&lt;/li&gt;\r\n&lt;li&gt;Built-in two-port USB 2.0 hub for easy connection of desktop peripheral devices.&lt;/li&gt;\r\n&lt;li&gt;Two FireWire 400 ports to support iSight and other desktop peripherals&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;Sleek, elegant design&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Huge virtual workspace, very small footprint.&lt;/li&gt;\r\n&lt;li&gt;Narrow Bezel design to minimize visual impact of using dual displays&lt;/li&gt;\r\n&lt;li&gt;Unique hinge design for effortless adjustment&lt;/li&gt;\r\n&lt;li&gt;Support for VESA mounting solutions (Apple Cinema Display VESA Mount Adapter sold separately)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;h3&gt;Technical specifications&lt;/h3&gt;\r\n&lt;p&gt;&lt;strong&gt;Screen size (diagonal viewable image size)&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Apple Cinema HD Display: 30 inches (29.7-inch viewable)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;Screen type&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Thin film transistor (TFT) active-matrix liquid crystal display (AMLCD)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;Resolutions&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;2560 x 1600 pixels (optimum resolution)&lt;/li&gt;\r\n&lt;li&gt;2048 x 1280&lt;/li&gt;\r\n&lt;li&gt;1920 x 1200&lt;/li&gt;\r\n&lt;li&gt;1280 x 800&lt;/li&gt;\r\n&lt;li&gt;1024 x 640&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;Display colors (maximum)&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;16.7 million&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;Viewing angle (typical)&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;170&amp;deg; horizontal; 170&amp;deg; vertical&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;Brightness (typical)&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;30-inch Cinema HD Display: 400 cd/m2&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;Contrast ratio (typical)&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;700:1&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;Response time (typical)&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;16 ms&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;Pixel pitch&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;30-inch Cinema HD Display: 0.250 mm&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;Screen treatment&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Antiglare hardcoat&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;User controls (hardware and software)&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Display Power,&lt;/li&gt;\r\n&lt;li&gt;System sleep, wake&lt;/li&gt;\r\n&lt;li&gt;Brightness&lt;/li&gt;\r\n&lt;li&gt;Monitor tilt&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;Connectors and cables&lt;/strong&gt;&lt;br /&gt; Cable&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;DVI (Digital Visual Interface)&lt;/li&gt;\r\n&lt;li&gt;FireWire 400&lt;/li&gt;\r\n&lt;li&gt;USB 2.0&lt;/li&gt;\r\n&lt;li&gt;DC power (24 V)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;Connectors&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Two-port, self-powered USB 2.0 hub&lt;/li&gt;\r\n&lt;li&gt;Two FireWire 400 ports&lt;/li&gt;\r\n&lt;li&gt;Kensington security port&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;VESA mount adapter&lt;/strong&gt;&lt;br /&gt; Requires optional Cinema Display VESA Mount Adapter (M9649G/A)&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Compatible with VESA FDMI (MIS-D, 100, C) compliant mounting solutions&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;Electrical requirements&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Input voltage: 100-240 VAC 50-60Hz&lt;/li&gt;\r\n&lt;li&gt;Maximum power when operating: 150W&lt;/li&gt;\r\n&lt;li&gt;Energy saver mode: 3W or less&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;Environmental requirements&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Operating temperature: 50&amp;deg; to 95&amp;deg; F (10&amp;deg; to 35&amp;deg; C)&lt;/li&gt;\r\n&lt;li&gt;Storage temperature: -40&amp;deg; to 116&amp;deg; F (-40&amp;deg; to 47&amp;deg; C)&lt;/li&gt;\r\n&lt;li&gt;Operating humidity: 20% to 80% noncondensing&lt;/li&gt;\r\n&lt;li&gt;Maximum operating altitude: 10,000 feet&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;Agency approvals&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;FCC Part 15 Class B&lt;/li&gt;\r\n&lt;li&gt;EN55022 Class B&lt;/li&gt;\r\n&lt;li&gt;EN55024&lt;/li&gt;\r\n&lt;li&gt;VCCI Class B&lt;/li&gt;\r\n&lt;li&gt;AS/NZS 3548 Class B&lt;/li&gt;\r\n&lt;li&gt;CNS 13438 Class B&lt;/li&gt;\r\n&lt;li&gt;ICES-003 Class B&lt;/li&gt;\r\n&lt;li&gt;ISO 13406 part 2&lt;/li&gt;\r\n&lt;li&gt;MPR II&lt;/li&gt;\r\n&lt;li&gt;IEC 60950&lt;/li&gt;\r\n&lt;li&gt;UL 60950&lt;/li&gt;\r\n&lt;li&gt;CSA 60950&lt;/li&gt;\r\n&lt;li&gt;EN60950&lt;/li&gt;\r\n&lt;li&gt;ENERGY STAR&lt;/li&gt;\r\n&lt;li&gt;TCO \'03&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;Size and weight&lt;/strong&gt;&lt;br /&gt; 30-inch Apple Cinema HD Display&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Height: 21.3 inches (54.3 cm)&lt;/li&gt;\r\n&lt;li&gt;Width: 27.2 inches (68.8 cm)&lt;/li&gt;\r\n&lt;li&gt;Depth: 8.46 inches (21.5 cm)&lt;/li&gt;\r\n&lt;li&gt;Weight: 27.5 pounds (12.5 kg)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;System Requirements&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Mac Pro, all graphic options&lt;/li&gt;\r\n&lt;li&gt;MacBook Pro&lt;/li&gt;\r\n&lt;li&gt;Power Mac G5 (PCI-X) with ATI Radeon 9650 or better or NVIDIA GeForce 6800 GT DDL or better&lt;/li&gt;\r\n&lt;li&gt;Power Mac G5 (PCI Express), all graphics options&lt;/li&gt;\r\n&lt;li&gt;PowerBook G4 with dual-link DVI support&lt;/li&gt;\r\n&lt;li&gt;Windows PC and graphics card that supports DVI ports with dual-link digital bandwidth and VESA DDC standard for plug-and-play setup&lt;/li&gt;\r\n&lt;/ul&gt;', '', '蔻姿娜焦糖色羊毛针织连衣裙秋冬长袖打底裙宽松中长款过膝毛衣裙', '', '');
INSERT INTO `oc_product_description` VALUES ('30', '2', 'HARA 新品 TRF 女装 连帽毛领棉服外套', '&lt;p&gt;Canon\'s press material for the EOS 5D states that it \'defines (a) new D-SLR category\', while we\'re not typically too concerned with marketing talk this particular statement is clearly pretty accurate. The EOS 5D is unlike any previous digital SLR in that it combines a full-frame (35 mm sized) high resolution sensor (12.8 megapixels) with a relatively compact body (slightly larger than the EOS 20D, although in your hand it feels noticeably \'chunkier\'). The EOS 5D is aimed to slot in between the EOS 20D and the EOS-1D professional digital SLR\'s, an important difference when compared to the latter is that the EOS 5D doesn\'t have any environmental seals. While Canon don\'t specifically refer to the EOS 5D as a \'professional\' digital SLR it will have obvious appeal to professionals who want a high quality digital SLR in a body lighter than the EOS-1D. It will also no doubt appeal to current EOS 20D owners (although lets hope they\'ve not bought too many EF-S lenses...) &amp;auml;&amp;euml;&lt;/p&gt;', '', 'HARA 新品 TRF 女装 连帽毛领棉服外套', '', '');
INSERT INTO `oc_product_description` VALUES ('35', '2', 'ONLY 2018冬新品宽松中长款套头毛衣针织衫女', '&lt;p&gt;\r\n	Product 8&lt;/p&gt;\r\n', '', 'ONLY 2018冬新品宽松中长款套头毛衣针织衫女', '', '');
INSERT INTO `oc_product_description` VALUES ('48', '2', '春秋新款一字领针织衫长袖短款紧身毛衣女', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n&lt;div&gt;\r\n&lt;p&gt;&lt;strong&gt;More room to move.&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Sleeker design.&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Beautiful, durable, and sleeker than ever, iPod classic now features an anodized aluminum and polished stainless steel enclosure with rounded edges.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', '春秋新款一字领针织衫长袖短款紧身毛衣女', '', '');
INSERT INTO `oc_product_description` VALUES ('48', '1', 'EOST Iusto Odio Tmpora Incidunt', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n&lt;div&gt;\r\n&lt;p&gt;&lt;strong&gt;More room to move.&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Sleeker design.&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Beautiful, durable, and sleeker than ever, iPod classic now features an anodized aluminum and polished stainless steel enclosure with rounded edges.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'EOST Iusto Odio Tmpora Incidunt', '', '');
INSERT INTO `oc_product_description` VALUES ('40', '2', 'LOREM 双腰头修身九分棉弹牛仔裤', '&lt;p class=&quot;intro&quot;&gt;iPhone is a revolutionary new mobile phone that allows you to make a call by simply tapping a name or number in your address book, a favorites list, or a call log. It also automatically syncs all your contacts from a PC, Mac, or Internet service. And it lets you select and listen to voicemail messages in whatever order you want just like email.&lt;/p&gt;', '', 'LOREM 双腰头修身九分棉弹牛仔裤', '', '');
INSERT INTO `oc_product_description` VALUES ('28', '2', 'HAXA 新品女装连帽毛领棉服外套', '&lt;p&gt;\r\n	HTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience you never thought possible. Seductively sleek, the HTC Touch HD provides the next generation of mobile functionality, all at a simple touch. Fully integrated with Windows Mobile Professional 6.1, ultrafast 3.5G, GPS, 5MP camera, plus lots more - all delivered on a breathtakingly crisp 3.8&amp;quot; WVGA touchscreen - you can take control of your mobile world with the HTC Touch HD.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Processor Qualcomm&amp;reg; MSM 7201A&amp;trade; 528 MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Operating System&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Memory: 512 MB ROM, 288 MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Dimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band frequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Device Control via HTC TouchFLO&amp;trade; 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;\r\n	&lt;li&gt;\r\n		GPS and A-GPS ready&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth&amp;reg; 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wi-Fi&amp;reg;: IEEE 802.11 b/g&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HTC ExtUSB&amp;trade; (11-pin mini-USB 2.0)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		5 megapixel color camera with auto focus&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VGA CMOS color camera&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Ring tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;\r\n	&lt;li&gt;\r\n		40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Rechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Expansion Slot: microSD&amp;trade; memory card (SD 2.0 compatible)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Special Features: FM Radio, G-Sensor&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', 'HAXA 新品女装连帽毛领棉服外套', '', '');
INSERT INTO `oc_product_description` VALUES ('44', '2', 'SIMPLE 2018冬新品宽松中长款套头毛衣针织衫女', '&lt;div&gt;\r\n	MacBook Air is ultrathin, ultraportable, and ultra unlike anything else. But you don&amp;rsquo;t lose inches and pounds overnight. It&amp;rsquo;s the result of rethinking conventions. Of multiple wireless innovations. And of breakthrough design. With MacBook Air, mobile computing suddenly has a new standard.&lt;/div&gt;\r\n', '', 'SIMPLE 2018冬新品宽松中长款套头毛衣针织衫女', '', '');
INSERT INTO `oc_product_description` VALUES ('45', '2', 'OMNIS 双面羊毛呢子大衣女短款织衫女', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Latest Intel mobile architecture&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Powered by the most advanced mobile processors from Intel, the new Core 2 Duo MacBook Pro is over 50% faster than the original Core Duo MacBook Pro and now supports up to 4GB of RAM.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Leading-edge graphics&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			The NVIDIA GeForce 8600M GT delivers exceptional graphics processing power. For the ultimate creative canvas, you can even configure the 17-inch model with a 1920-by-1200 resolution display.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Designed for life on the road&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Innovations such as a magnetic power connection and an illuminated keyboard with ambient light sensor put the MacBook Pro in a class by itself.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Connect. Create. Communicate.&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Quickly set up a video conference with the built-in iSight camera. Control presentations and media from up to 30 feet away with the included Apple Remote. Connect to high-bandwidth peripherals with FireWire 800 and DVI.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Next-generation wireless&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Featuring 802.11n wireless technology, the MacBook Pro delivers up to five times the performance and up to twice the range of previous-generation technologies.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'OMNIS 双面羊毛呢子大衣女短款织衫女', '', '');
INSERT INTO `oc_product_description` VALUES ('29', '2', '双面羊毛呢子大衣女短款2017春季新款韩版修身小香风毛呢外套女', '&lt;p&gt;\r\n	Redefine your workday with the Palm Treo Pro smartphone. Perfectly balanced, you can respond to business and personal email, stay on top of appointments and contacts, and use Wi-Fi or GPS when you&amp;rsquo;re out and about. Then watch a video on YouTube, catch up with news and sports on the web, or listen to a few songs. Balance your work and play the way you like it, with the Palm Treo Pro.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Edition&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Qualcomm&amp;reg; MSM7201 400MHz Processor&lt;/li&gt;\r\n	&lt;li&gt;\r\n		320x320 transflective colour TFT touchscreen&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/UMTS/EDGE/GPRS/GSM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Tri-band UMTS &amp;mdash; 850MHz, 1900MHz, 2100MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM &amp;mdash; 850/900/1800/1900&lt;/li&gt;\r\n	&lt;li&gt;\r\n		802.11b/g with WPA, WPA2, and 801.1x authentication&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in GPS&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth Version: 2.0 + Enhanced Data Rate&lt;/li&gt;\r\n	&lt;li&gt;\r\n		256MB storage (100MB user available), 128MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2.0 megapixel camera, up to 8x digital zoom and video capture&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Removable, rechargeable 1500mAh lithium-ion battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Up to 5.0 hours talk time and up to 250 hours standby&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroSDHC card expansion (up to 32GB supported)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroUSB 2.0 for synchronization and charging&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.5mm stereo headset jack&lt;/li&gt;\r\n	&lt;li&gt;\r\n		60mm (W) x 114mm (L) x 13.5mm (D) / 133g&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', '双面羊毛呢子大衣女短款2017春季新款韩版修身小香风毛呢外套女', '', '');
INSERT INTO `oc_product_description` VALUES ('36', '2', '春秋新款一字领针织衫长袖短款紧身毛衣女', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Video in your pocket.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Its the small iPod with one very big idea: video. The worlds most popular music player now lets you enjoy movies, TV shows, and more on a two-inch display thats 65% brighter than before.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Sleek and colorful.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With an anodized aluminum and polished stainless steel enclosure and a choice of five colors, iPod nano is dressed to impress.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;iTunes.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Available as a free download, iTunes makes it easy to browse and buy millions of songs, movies, TV shows, audiobooks, and games and download free podcasts all at the iTunes Store. And you can import your own music, manage your whole media library, and sync your iPod or iPhone with ease.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', '春秋新款一字领针织衫长袖短款紧身毛衣女', '', '');
INSERT INTO `oc_product_description` VALUES ('46', '2', '浅秋专柜正品早秋新款休闲半高领纯羊毛针织衫套头毛衣女基础打底', '&lt;div&gt;\r\n	Unprecedented power. The next generation of processing technology has arrived. Built into the newest VAIO notebooks lies Intel&amp;#39;s latest, most powerful innovation yet: Intel&amp;reg; Centrino&amp;reg; 2 processor technology. Boasting incredible speed, expanded wireless connectivity, enhanced multimedia support and greater energy efficiency, all the high-performance essentials are seamlessly combined into a single chip.&lt;/div&gt;\r\n', '', '浅秋专柜正品早秋新款休闲半高领纯羊毛针织衫套头毛衣女基础打底', '', '');
<<<<<<< HEAD
INSERT INTO `oc_product_description` VALUES ('47', '2', '羊毛打底衫女长袖秋冬套头修身高领薄款毛衣百搭秋装冬季针织衫', '&lt;p&gt;Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge wide-aspect screen while letting you work as comfortably as possible - you might even forget you\'re at the office&lt;/p&gt;', '', '羊毛打底衫女长袖秋冬套头修身高领薄款毛衣百搭秋装冬季针织衫', '', '');
=======
INSERT INTO `oc_product_description` VALUES ('47', '2', '羊毛打底衫女长袖秋冬套头修身高领薄款毛衣百搭秋装冬季针织衫', '&lt;p&gt;\r\n	Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge wide-aspect screen while letting you work as comfortably as possible - you might even forget you&amp;#39;re at the office&lt;/p&gt;\r\n', '', '羊毛打底衫女长袖秋冬套头修身高领薄款毛衣百搭秋装冬季针织衫', '', '');
>>>>>>> 790b49e13c12789410af78d35dc87d3d392cacc9
INSERT INTO `oc_product_description` VALUES ('32', '2', '梦伊 2018 秋冬新款丝绒刺绣连衣裙气质优雅显瘦a字长裙女装', '&lt;p&gt;\r\n	&lt;strong&gt;Revolutionary multi-touch interface.&lt;/strong&gt;&lt;br /&gt;\r\n	iPod touch features the same multi-touch screen technology as iPhone. Pinch to zoom in on a photo. Scroll through your songs and videos with a flick. Flip through your library by album artwork with Cover Flow.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Gorgeous 3.5-inch widescreen display.&lt;/strong&gt;&lt;br /&gt;\r\n	Watch your movies, TV shows, and photos come alive with bright, vivid color on the 320-by-480-pixel display.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Music downloads straight from iTunes.&lt;/strong&gt;&lt;br /&gt;\r\n	Shop the iTunes Wi-Fi Music Store from anywhere with Wi-Fi.1 Browse or search to find the music youre looking for, preview it, and buy it with just a tap.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Surf the web with Wi-Fi.&lt;/strong&gt;&lt;br /&gt;\r\n	Browse the web using Safari and watch YouTube videos on the first iPod with Wi-Fi built in&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n', '', '梦伊 2018 秋冬新款丝绒刺绣连衣裙气质优雅显瘦a字长裙女装', '', '');
INSERT INTO `oc_product_description` VALUES ('41', '2', '蔻娜焦糖色羊毛针织连衣裙秋冬长袖打底裙宽松中长款过膝毛衣裙', '&lt;div&gt;\r\n	Just when you thought iMac had everything, now there&acute;s even more. More powerful Intel Core 2 Duo processors. And more memory standard. Combine this with Mac OS X Leopard and iLife &acute;08, and it&acute;s more all-in-one than ever. iMac packs amazing performance into a stunningly slim space.&lt;/div&gt;\r\n', '', '蔻娜焦糖色羊毛针织连衣裙秋冬长袖打底裙宽松中长款过膝毛衣裙', '', '');
INSERT INTO `oc_product_description` VALUES ('34', '2', 'Kelit 连衣裙秋冬长袖打底裙宽松中长款过膝毛衣裙', '&lt;div&gt;\r\n	&lt;strong&gt;Born to be worn.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Clip on the worlds most wearable music player and take up to 240 songs with you anywhere. Choose from five colors including four new hues to make your musical fashion statement.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Random meets rhythm.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With iTunes autofill, iPod shuffle can deliver a new musical experience every time you sync. For more randomness, you can shuffle songs during playback with the slide of a switch.&lt;/p&gt;\r\n	&lt;strong&gt;Everything is easy.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Charge and sync with the included USB dock. Operate the iPod shuffle controls with one hand. Enjoy up to 12 hours straight of skip-free music playback.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'Kelit 连衣裙秋冬长袖打底裙宽松中长款过膝毛衣裙', '', '');
INSERT INTO `oc_product_description` VALUES ('43', '2', '羊毛 EOST 女长袖秋冬套头修身高领薄款毛衣针织衫', '&lt;div&gt;\r\n&lt;p&gt;&lt;strong&gt;Intel Core 2 Duo processor&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;1GB memory, larger hard drives&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Sleek, 1.08-inch-thin design&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Built-in iSight camera&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;', '', '羊毛 EOST 女长袖秋冬套头修身高领薄款毛衣针织衫', '', '');
INSERT INTO `oc_product_description` VALUES ('31', '2', 'OMNIS 春秋新款一字领针织衫长袖短款紧身毛衣女', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		Engineered with pro-level features and performance, the 12.3-effective-megapixel D300 combines brand new technologies with advanced features inherited from Nikon&amp;#39;s newly announced D3 professional digital SLR camera to offer serious photographers remarkable performance combined with agility.&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		Similar to the D3, the D300 features Nikon&amp;#39;s exclusive EXPEED Image Processing System that is central to driving the speed and processing power needed for many of the camera&amp;#39;s new features. The D300 features a new 51-point autofocus system with Nikon&amp;#39;s 3D Focus Tracking feature and two new LiveView shooting modes that allow users to frame a photograph using the camera&amp;#39;s high-resolution LCD monitor. The D300 shares a similar Scene Recognition System as is found in the D3; it promises to greatly enhance the accuracy of autofocus, autoexposure, and auto white balance by recognizing the subject or scene being photographed and applying this information to the calculations for the three functions.&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		The D300 reacts with lightning speed, powering up in a mere 0.13 seconds and shooting with an imperceptible 45-millisecond shutter release lag time. The D300 is capable of shooting at a rapid six frames per second and can go as fast as eight frames per second when using the optional MB-D10 multi-power battery pack. In continuous bursts, the D300 can shoot up to 100 shots at full 12.3-megapixel resolution. (NORMAL-LARGE image setting, using a SanDisk Extreme IV 1GB CompactFlash card.)&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		The D300 incorporates a range of innovative technologies and features that will significantly improve the accuracy, control, and performance photographers can get from their equipment. Its new Scene Recognition System advances the use of Nikon&amp;#39;s acclaimed 1,005-segment sensor to recognize colors and light patterns that help the camera determine the subject and the type of scene being photographed before a picture is taken. This information is used to improve the accuracy of autofocus, autoexposure, and auto white balance functions in the D300. For example, the camera can track moving subjects better and by identifying them, it can also automatically select focus points faster and with greater accuracy. It can also analyze highlights and more accurately determine exposure, as well as infer light sources to deliver more accurate white balance detection.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'OMNIS 春秋新款一字领针织衫长袖短款紧身毛衣女', '', '');
INSERT INTO `oc_product_description` VALUES ('49', '2', '浅秋专柜正品早秋新款休闲半高领纯羊毛针织衫套头毛衣女基础打底', '&lt;p&gt;Samsung Galaxy Tab 10.1, is the world&amp;rsquo;s thinnest tablet, measuring 8.6 mm thickness, running with Android 3.0 Honeycomb OS on a 1GHz dual-core Tegra 2 processor, similar to its younger brother Samsung Galaxy Tab 8.9.&lt;/p&gt;\r\n&lt;p&gt;Samsung Galaxy Tab 10.1 gives pure Android 3.0 experience, adding its new TouchWiz UX or TouchWiz 4.0 &amp;ndash; includes a live panel, which lets you to customize with different content, such as your pictures, bookmarks, and social feeds, sporting a 10.1 inches WXGA capacitive touch screen with 1280 x 800 pixels of resolution, equipped with 3 megapixel rear camera with LED flash and a 2 megapixel front camera, HSPA+ connectivity up to 21Mbps, 720p HD video recording capability, 1080p HD playback, DLNA support, Bluetooth 2.1, USB 2.0, gyroscope, Wi-Fi 802.11 a/b/g/n, micro-SD slot, 3.5mm headphone jack, and SIM slot, including the Samsung Stick &amp;ndash; a Bluetooth microphone that can be carried in a pocket like a pen and sound dock with powered subwoofer.&lt;/p&gt;\r\n&lt;p&gt;Samsung Galaxy Tab 10.1 will come in 16GB / 32GB / 64GB verities and pre-loaded with Social Hub, Reader&amp;rsquo;s Hub, Music Hub and Samsung Mini Apps Tray &amp;ndash; which gives you access to more commonly used apps to help ease multitasking and it is capable of Adobe Flash Player 10.2, powered by 6860mAh battery that gives you 10hours of video-playback time.&amp;nbsp;&amp;auml;&amp;ouml;&lt;/p&gt;', '', '浅秋专柜正品早秋新款休闲半高领纯羊毛针织衫套头毛衣女基础打底', '', '');
INSERT INTO `oc_product_description` VALUES ('42', '1', 'At Fero G99 Acusamus Et Iusto Sdio', '&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: helvetica, geneva, arial; font-size: small;&quot;&gt;&lt;span style=&quot;font-family: Helvetica; font-size: small;&quot;&gt;&lt;img src=&quot;http://local.oc3-free-dev/image/catalog/demo/manufacturer/burgerking.png&quot; /&gt;&lt;img src=&quot;http://local.oc3-free-dev/image/catalog/demo/manufacturer/canon.png&quot; /&gt;&lt;img src=&quot;http://local.oc3-free-dev/image/catalog/demo/manufacturer/cocacola.png&quot; /&gt;&lt;img src=&quot;http://local.oc3-free-dev/image/catalog/demo/manufacturer/dell.png&quot; /&gt;&lt;img src=&quot;http://local.oc3-free-dev/image/catalog/demo/manufacturer/disney.png&quot; /&gt;&lt;img src=&quot;http://local.oc3-free-dev/image/catalog/demo/manufacturer/harley.png&quot; /&gt;&lt;img src=&quot;http://local.oc3-free-dev/image/catalog/demo/manufacturer/nfl.png&quot; /&gt;&lt;img src=&quot;http://local.oc3-free-dev/image/catalog/demo/manufacturer/nintendo.png&quot; /&gt;&lt;img src=&quot;http://local.oc3-free-dev/image/catalog/demo/manufacturer/redbull.png&quot; /&gt;&lt;img src=&quot;http://local.oc3-free-dev/image/catalog/demo/manufacturer/shell.png&quot; /&gt;&lt;img src=&quot;http://local.oc3-free-dev/image/catalog/demo/manufacturer/sony.png&quot; /&gt;&lt;img src=&quot;http://local.oc3-free-dev/image/catalog/demo/manufacturer/starbucks.png&quot; /&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: helvetica, geneva, arial; font-size: small;&quot;&gt;&lt;span style=&quot;font-family: Helvetica; font-size: small;&quot;&gt;The 30-inch Apple Cinema HD Display delivers an amazing 2560 x 1600 pixel resolution. Designed specifically for the creative professional, this display provides more space for easier access to all the tools and palettes needed to edit, format and composite your work. Combine this display with a Mac Pro, MacBook Pro, or PowerMac G5 and there\'s no limit to what you can achieve. &lt;br /&gt; &lt;br /&gt; &lt;/span&gt;&lt;span style=&quot;font-family: Helvetica; font-size: small;&quot;&gt;The Cinema HD features an active-matrix liquid crystal display that produces flicker-free images that deliver twice the brightness, twice the sharpness and twice the contrast ratio of a typical CRT display. Unlike other flat panels, it\'s designed with a pure digital interface to deliver distortion-free images that never need adjusting. With over 4 million digital pixels, the display is uniquely suited for scientific and technical applications such as visualizing molecular structures or analyzing geological data. &lt;br /&gt; &lt;br /&gt; &lt;/span&gt;&lt;span style=&quot;font-family: Helvetica; font-size: small;&quot;&gt;Offering accurate, brilliant color performance, the Cinema HD delivers up to 16.7 million colors across a wide gamut allowing you to see subtle nuances between colors from soft pastels to rich jewel tones. A wide viewing angle ensures uniform color from edge to edge. Apple\'s ColorSync technology allows you to create custom profiles to maintain consistent color onscreen and in print. The result: You can confidently use this display in all your color-critical applications. &lt;br /&gt; &lt;br /&gt; &lt;/span&gt;&lt;span style=&quot;font-family: Helvetica; font-size: small;&quot;&gt;Housed in a new aluminum design, the display has a very thin bezel that enhances visual accuracy. Each display features two FireWire 400 ports and two USB 2.0 ports, making attachment of desktop peripherals, such as iSight, iPod, digital and still cameras, hard drives, printers and scanners, even more accessible and convenient. Taking advantage of the much thinner and lighter footprint of an LCD, the new displays support the VESA (Video Electronics Standards Association) mounting interface standard. Customers with the optional Cinema Display VESA Mount Adapter kit gain the flexibility to mount their display in locations most appropriate for their work environment. &lt;br /&gt; &lt;br /&gt; &lt;/span&gt;&lt;span style=&quot;font-family: Helvetica; font-size: small;&quot;&gt;The Cinema HD features a single cable design with elegant breakout for the USB 2.0, FireWire 400 and a pure digital connection using the industry standard Digital Video Interface (DVI) interface. The DVI connection allows for a direct pure-digital connection.&lt;br /&gt; &lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;h3&gt;Features:&lt;/h3&gt;\r\n&lt;p&gt;Unrivaled display performance&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;30-inch (viewable) active-matrix liquid crystal display provides breathtaking image quality and vivid, richly saturated color.&lt;/li&gt;\r\n&lt;li&gt;Support for 2560-by-1600 pixel resolution for display of high definition still and video imagery.&lt;/li&gt;\r\n&lt;li&gt;Wide-format design for simultaneous display of two full pages of text and graphics.&lt;/li&gt;\r\n&lt;li&gt;Industry standard DVI connector for direct attachment to Mac- and Windows-based desktops and notebooks&lt;/li&gt;\r\n&lt;li&gt;Incredibly wide (170 degree) horizontal and vertical viewing angle for maximum visibility and color performance.&lt;/li&gt;\r\n&lt;li&gt;Lightning-fast pixel response for full-motion digital video playback.&lt;/li&gt;\r\n&lt;li&gt;Support for 16.7 million saturated colors, for use in all graphics-intensive applications.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;Simple setup and operation&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Single cable with elegant breakout for connection to DVI, USB and FireWire ports&lt;/li&gt;\r\n&lt;li&gt;Built-in two-port USB 2.0 hub for easy connection of desktop peripheral devices.&lt;/li&gt;\r\n&lt;li&gt;Two FireWire 400 ports to support iSight and other desktop peripherals&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;Sleek, elegant design&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Huge virtual workspace, very small footprint.&lt;/li&gt;\r\n&lt;li&gt;Narrow Bezel design to minimize visual impact of using dual displays&lt;/li&gt;\r\n&lt;li&gt;Unique hinge design for effortless adjustment&lt;/li&gt;\r\n&lt;li&gt;Support for VESA mounting solutions (Apple Cinema Display VESA Mount Adapter sold separately)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;h3&gt;Technical specifications&lt;/h3&gt;\r\n&lt;p&gt;&lt;strong&gt;Screen size (diagonal viewable image size)&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Apple Cinema HD Display: 30 inches (29.7-inch viewable)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;Screen type&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Thin film transistor (TFT) active-matrix liquid crystal display (AMLCD)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;Resolutions&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;2560 x 1600 pixels (optimum resolution)&lt;/li&gt;\r\n&lt;li&gt;2048 x 1280&lt;/li&gt;\r\n&lt;li&gt;1920 x 1200&lt;/li&gt;\r\n&lt;li&gt;1280 x 800&lt;/li&gt;\r\n&lt;li&gt;1024 x 640&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;Display colors (maximum)&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;16.7 million&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;Viewing angle (typical)&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;170&amp;deg; horizontal; 170&amp;deg; vertical&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;Brightness (typical)&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;30-inch Cinema HD Display: 400 cd/m2&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;Contrast ratio (typical)&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;700:1&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;Response time (typical)&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;16 ms&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;Pixel pitch&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;30-inch Cinema HD Display: 0.250 mm&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;Screen treatment&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Antiglare hardcoat&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;User controls (hardware and software)&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Display Power,&lt;/li&gt;\r\n&lt;li&gt;System sleep, wake&lt;/li&gt;\r\n&lt;li&gt;Brightness&lt;/li&gt;\r\n&lt;li&gt;Monitor tilt&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;Connectors and cables&lt;/strong&gt;&lt;br /&gt; Cable&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;DVI (Digital Visual Interface)&lt;/li&gt;\r\n&lt;li&gt;FireWire 400&lt;/li&gt;\r\n&lt;li&gt;USB 2.0&lt;/li&gt;\r\n&lt;li&gt;DC power (24 V)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;Connectors&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Two-port, self-powered USB 2.0 hub&lt;/li&gt;\r\n&lt;li&gt;Two FireWire 400 ports&lt;/li&gt;\r\n&lt;li&gt;Kensington security port&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;VESA mount adapter&lt;/strong&gt;&lt;br /&gt; Requires optional Cinema Display VESA Mount Adapter (M9649G/A)&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Compatible with VESA FDMI (MIS-D, 100, C) compliant mounting solutions&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;Electrical requirements&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Input voltage: 100-240 VAC 50-60Hz&lt;/li&gt;\r\n&lt;li&gt;Maximum power when operating: 150W&lt;/li&gt;\r\n&lt;li&gt;Energy saver mode: 3W or less&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;Environmental requirements&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Operating temperature: 50&amp;deg; to 95&amp;deg; F (10&amp;deg; to 35&amp;deg; C)&lt;/li&gt;\r\n&lt;li&gt;Storage temperature: -40&amp;deg; to 116&amp;deg; F (-40&amp;deg; to 47&amp;deg; C)&lt;/li&gt;\r\n&lt;li&gt;Operating humidity: 20% to 80% noncondensing&lt;/li&gt;\r\n&lt;li&gt;Maximum operating altitude: 10,000 feet&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;Agency approvals&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;FCC Part 15 Class B&lt;/li&gt;\r\n&lt;li&gt;EN55022 Class B&lt;/li&gt;\r\n&lt;li&gt;EN55024&lt;/li&gt;\r\n&lt;li&gt;VCCI Class B&lt;/li&gt;\r\n&lt;li&gt;AS/NZS 3548 Class B&lt;/li&gt;\r\n&lt;li&gt;CNS 13438 Class B&lt;/li&gt;\r\n&lt;li&gt;ICES-003 Class B&lt;/li&gt;\r\n&lt;li&gt;ISO 13406 part 2&lt;/li&gt;\r\n&lt;li&gt;MPR II&lt;/li&gt;\r\n&lt;li&gt;IEC 60950&lt;/li&gt;\r\n&lt;li&gt;UL 60950&lt;/li&gt;\r\n&lt;li&gt;CSA 60950&lt;/li&gt;\r\n&lt;li&gt;EN60950&lt;/li&gt;\r\n&lt;li&gt;ENERGY STAR&lt;/li&gt;\r\n&lt;li&gt;TCO \'03&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;Size and weight&lt;/strong&gt;&lt;br /&gt; 30-inch Apple Cinema HD Display&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Height: 21.3 inches (54.3 cm)&lt;/li&gt;\r\n&lt;li&gt;Width: 27.2 inches (68.8 cm)&lt;/li&gt;\r\n&lt;li&gt;Depth: 8.46 inches (21.5 cm)&lt;/li&gt;\r\n&lt;li&gt;Weight: 27.5 pounds (12.5 kg)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;System Requirements&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Mac Pro, all graphic options&lt;/li&gt;\r\n&lt;li&gt;MacBook Pro&lt;/li&gt;\r\n&lt;li&gt;Power Mac G5 (PCI-X) with ATI Radeon 9650 or better or NVIDIA GeForce 6800 GT DDL or better&lt;/li&gt;\r\n&lt;li&gt;Power Mac G5 (PCI Express), all graphics options&lt;/li&gt;\r\n&lt;li&gt;PowerBook G4 with dual-link DVI support&lt;/li&gt;\r\n&lt;li&gt;Windows PC and graphics card that supports DVI ports with dual-link digital bandwidth and VESA DDC standard for plug-and-play setup&lt;/li&gt;\r\n&lt;/ul&gt;', '', 'At Fero G99 Acusamus Et Iusto Sdio', '', '');
INSERT INTO `oc_product_description` VALUES ('30', '1', 'Kelit Esse Cillum Dolore Eu 909 Fugiat', '&lt;p&gt;Canon\'s press material for the EOS 5D states that it \'defines (a) new D-SLR category\', while we\'re not typically too concerned with marketing talk this particular statement is clearly pretty accurate. The EOS 5D is unlike any previous digital SLR in that it combines a full-frame (35 mm sized) high resolution sensor (12.8 megapixels) with a relatively compact body (slightly larger than the EOS 20D, although in your hand it feels noticeably \'chunkier\'). The EOS 5D is aimed to slot in between the EOS 20D and the EOS-1D professional digital SLR\'s, an important difference when compared to the latter is that the EOS 5D doesn\'t have any environmental seals. While Canon don\'t specifically refer to the EOS 5D as a \'professional\' digital SLR it will have obvious appeal to professionals who want a high quality digital SLR in a body lighter than the EOS-1D. It will also no doubt appeal to current EOS 20D owners (although lets hope they\'ve not bought too many EF-S lenses...) &amp;auml;&amp;euml;&lt;/p&gt;', '', 'Kelit Esse Cillum Dolore Eu 909 Fugiat', '', '');
INSERT INTO `oc_product_description` VALUES ('33', '1', 'Kelit Esse Cillum Dolore Eu 909 Fugiat', '&lt;div&gt;Imagine the advantages of going big without slowing down. The big 19&quot; 941BW monitor combines wide aspect ratio with fast pixel response time, for bigger images, more room to work and crisp motion. In addition, the exclusive MagicBright 2, MagicColor and MagicTune technologies help deliver the ideal image in every situation, while sleek, narrow bezels and adjustable stands deliver style just the way you want it. With the Samsung 941BW widescreen analog/digital LCD monitor, it\'s not hard to imagine.&lt;/div&gt;', '', 'Kelit Esse Cillum Dolore Eu 909 Fugiat', '', '');
INSERT INTO `oc_product_description` VALUES ('33', '2', '2018 秋冬装新款韩版羊毛大衣外套中长款女大码呢子大衣风衣无羊绒', '&lt;div&gt;Imagine the advantages of going big without slowing down. The big 19&quot; 941BW monitor combines wide aspect ratio with fast pixel response time, for bigger images, more room to work and crisp motion. In addition, the exclusive MagicBright 2, MagicColor and MagicTune technologies help deliver the ideal image in every situation, while sleek, narrow bezels and adjustable stands deliver style just the way you want it. With the Samsung 941BW widescreen analog/digital LCD monitor, it\'s not hard to imagine.&lt;/div&gt;', '', '2018 秋冬装新款韩版羊毛大衣外套中长款女大码呢子大衣风衣无羊绒', '', '');
INSERT INTO `oc_product_description` VALUES ('73', '1', '翡翠手镯', '', '', '翡翠手镯', '', '');
<<<<<<< HEAD
INSERT INTO `oc_product_description` VALUES ('74', '2', '翡翠手镯3', '', '', '翡翠手镯', '', '');
INSERT INTO `oc_product_description` VALUES ('74', '1', '翡翠手镯', '', '', '翡翠手镯', '', '');
INSERT INTO `oc_product_description` VALUES ('75', '2', '翡翠手镯', '', '', '翡翠手镯', '', '');
INSERT INTO `oc_product_description` VALUES ('75', '1', '翡翠手镯', '', '', '翡翠手镯', '', '');
INSERT INTO `oc_product_description` VALUES ('76', '2', '翡翠手镯', '', '', '翡翠手镯', '', '');
INSERT INTO `oc_product_description` VALUES ('76', '1', '翡翠手镯', '', '', '翡翠手镯', '', '');
INSERT INTO `oc_product_description` VALUES ('77', '2', '翡翠手镯', '', '', '翡翠手镯', '', '');
INSERT INTO `oc_product_description` VALUES ('77', '1', '翡翠手镯', '', '', '翡翠手镯', '', '');
INSERT INTO `oc_product_description` VALUES ('0', '2', '翡镯', '', '', '翡镯', '', '');
INSERT INTO `oc_product_description` VALUES ('0', '1', '翡翠手镯', '', '', '翡翠手镯', '', '');
INSERT INTO `oc_product_description` VALUES ('78', '2', '翡翠手镯', '', '', '翡翠手镯', '', '');
INSERT INTO `oc_product_description` VALUES ('78', '1', '翡翠手镯', '', '', '翡翠手镯', '', '');
INSERT INTO `oc_product_description` VALUES ('79', '2', '翡翠手镯', '', '', '翡翠手镯', '', '');
INSERT INTO `oc_product_description` VALUES ('79', '1', '翡翠手镯', '', '', '翡翠手镯', '', '');
=======
INSERT INTO `oc_product_description` VALUES ('0', '2', '翡镯', '', '', '翡镯', '', '');
INSERT INTO `oc_product_description` VALUES ('0', '1', '翡翠手镯', '', '', '翡翠手镯', '', '');

-- ----------------------------
-- Table structure for oc_product_description_ebaypro
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_description_ebaypro`;
CREATE TABLE `oc_product_description_ebaypro` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`product_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_description_ebaypro
-- ----------------------------
INSERT INTO `oc_product_description_ebaypro` VALUES ('35', '1', 'Lorem Ipsum Sit 365 Officia Doloribus', '&lt;p&gt;\r\n	Product 8&lt;/p&gt;\r\n', '', 'Lorem Ipsum Sit 365 Officia Doloribus', '', '');
INSERT INTO `oc_product_description_ebaypro` VALUES ('48', '1', 'EOST Iusto Odio Tmpora Incidunt', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;More room to move.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Sleeker design.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Beautiful, durable, and sleeker than ever, iPod classic now features an anodized aluminum and polished stainless steel enclosure with rounded edges.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'EOST Iusto Odio Tmpora Incidunt', '', '');
INSERT INTO `oc_product_description_ebaypro` VALUES ('40', '1', 'Omnis Voluptas Asumenda Est Sequi', '&lt;p class=&quot;intro&quot;&gt;iPhone is a revolutionary new mobile phone that allows you to make a call by simply tapping a name or number in your address book, a favorites list, or a call log. It also automatically syncs all your contacts from a PC, Mac, or Internet service. And it lets you select and listen to voicemail messages in whatever order you want just like email.&lt;/p&gt;', '', 'Omnis Voluptas Asumenda Est Sequi', '', '');
INSERT INTO `oc_product_description_ebaypro` VALUES ('28', '1', 'Temporibus Autem Quibus Amet Aut', '&lt;p&gt;\r\n	HTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience you never thought possible. Seductively sleek, the HTC Touch HD provides the next generation of mobile functionality, all at a simple touch. Fully integrated with Windows Mobile Professional 6.1, ultrafast 3.5G, GPS, 5MP camera, plus lots more - all delivered on a breathtakingly crisp 3.8&amp;quot; WVGA touchscreen - you can take control of your mobile world with the HTC Touch HD.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Processor Qualcomm&amp;reg; MSM 7201A&amp;trade; 528 MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Operating System&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Memory: 512 MB ROM, 288 MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Dimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band frequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Device Control via HTC TouchFLO&amp;trade; 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;\r\n	&lt;li&gt;\r\n		GPS and A-GPS ready&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth&amp;reg; 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wi-Fi&amp;reg;: IEEE 802.11 b/g&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HTC ExtUSB&amp;trade; (11-pin mini-USB 2.0)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		5 megapixel color camera with auto focus&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VGA CMOS color camera&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Ring tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;\r\n	&lt;li&gt;\r\n		40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Rechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Expansion Slot: microSD&amp;trade; memory card (SD 2.0 compatible)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Special Features: FM Radio, G-Sensor&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', 'Temporibus Autem Quibus Amet Aut', '', '');
INSERT INTO `oc_product_description_ebaypro` VALUES ('44', '1', 'Encimunt Moptio Labore 898 Olore Magnam', '&lt;div&gt;\r\n	MacBook Air is ultrathin, ultraportable, and ultra unlike anything else. But you don&amp;rsquo;t lose inches and pounds overnight. It&amp;rsquo;s the result of rethinking conventions. Of multiple wireless innovations. And of breakthrough design. With MacBook Air, mobile computing suddenly has a new standard.&lt;/div&gt;\r\n', '', 'Encimunt Moptio Labore 898 Olore Magnam', '', '');
INSERT INTO `oc_product_description_ebaypro` VALUES ('45', '1', 'Qi Dolorem Ipsum Quia Dolor Sit Amet', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Latest Intel mobile architecture&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Powered by the most advanced mobile processors from Intel, the new Core 2 Duo MacBook Pro is over 50% faster than the original Core Duo MacBook Pro and now supports up to 4GB of RAM.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Leading-edge graphics&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			The NVIDIA GeForce 8600M GT delivers exceptional graphics processing power. For the ultimate creative canvas, you can even configure the 17-inch model with a 1920-by-1200 resolution display.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Designed for life on the road&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Innovations such as a magnetic power connection and an illuminated keyboard with ambient light sensor put the MacBook Pro in a class by itself.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Connect. Create. Communicate.&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Quickly set up a video conference with the built-in iSight camera. Control presentations and media from up to 30 feet away with the included Apple Remote. Connect to high-bandwidth peripherals with FireWire 800 and DVI.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Next-generation wireless&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Featuring 802.11n wireless technology, the MacBook Pro delivers up to five times the performance and up to twice the range of previous-generation technologies.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'Qi Dolorem Ipsum Quia Dolor Sit Amet', '', '');
INSERT INTO `oc_product_description_ebaypro` VALUES ('29', '1', 'Beatae Vitae Dicta 9001 Sunt Explicabo', '&lt;p&gt;\r\n	Redefine your workday with the Palm Treo Pro smartphone. Perfectly balanced, you can respond to business and personal email, stay on top of appointments and contacts, and use Wi-Fi or GPS when you&amp;rsquo;re out and about. Then watch a video on YouTube, catch up with news and sports on the web, or listen to a few songs. Balance your work and play the way you like it, with the Palm Treo Pro.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Edition&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Qualcomm&amp;reg; MSM7201 400MHz Processor&lt;/li&gt;\r\n	&lt;li&gt;\r\n		320x320 transflective colour TFT touchscreen&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/UMTS/EDGE/GPRS/GSM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Tri-band UMTS &amp;mdash; 850MHz, 1900MHz, 2100MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM &amp;mdash; 850/900/1800/1900&lt;/li&gt;\r\n	&lt;li&gt;\r\n		802.11b/g with WPA, WPA2, and 801.1x authentication&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in GPS&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth Version: 2.0 + Enhanced Data Rate&lt;/li&gt;\r\n	&lt;li&gt;\r\n		256MB storage (100MB user available), 128MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2.0 megapixel camera, up to 8x digital zoom and video capture&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Removable, rechargeable 1500mAh lithium-ion battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Up to 5.0 hours talk time and up to 250 hours standby&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroSDHC card expansion (up to 32GB supported)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroUSB 2.0 for synchronization and charging&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.5mm stereo headset jack&lt;/li&gt;\r\n	&lt;li&gt;\r\n		60mm (W) x 114mm (L) x 13.5mm (D) / 133g&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', 'Beatae Vitae Dicta 9001 Sunt Explicabo', '', '');
INSERT INTO `oc_product_description_ebaypro` VALUES ('36', '1', 'At Fero G99 Acusamus Et Iusto Sdio', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Video in your pocket.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Its the small iPod with one very big idea: video. The worlds most popular music player now lets you enjoy movies, TV shows, and more on a two-inch display thats 65% brighter than before.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Sleek and colorful.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With an anodized aluminum and polished stainless steel enclosure and a choice of five colors, iPod nano is dressed to impress.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;iTunes.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Available as a free download, iTunes makes it easy to browse and buy millions of songs, movies, TV shows, audiobooks, and games and download free podcasts all at the iTunes Store. And you can import your own music, manage your whole media library, and sync your iPod or iPhone with ease.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'At Fero G99 Acusamus Et Iusto Sdio', '', '');
INSERT INTO `oc_product_description_ebaypro` VALUES ('46', '1', 'Kelit Esse Cillum Dolore Eu 909 Fugiat', '&lt;div&gt;\r\n	Unprecedented power. The next generation of processing technology has arrived. Built into the newest VAIO notebooks lies Intel&amp;#39;s latest, most powerful innovation yet: Intel&amp;reg; Centrino&amp;reg; 2 processor technology. Boasting incredible speed, expanded wireless connectivity, enhanced multimedia support and greater energy efficiency, all the high-performance essentials are seamlessly combined into a single chip.&lt;/div&gt;\r\n', '', 'Kelit Esse Cillum Dolore Eu 909 Fugiat', '', '');
INSERT INTO `oc_product_description_ebaypro` VALUES ('47', '1', 'Moluptatem AM01 Nesciunt Neque Porro Quisquam', '&lt;p&gt;\r\n	Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge wide-aspect screen while letting you work as comfortably as possible - you might even forget you&amp;#39;re at the office&lt;/p&gt;\r\n', '', 'Moluptatem AM01 Nesciunt Neque Porro Quisquam', '', '');
INSERT INTO `oc_product_description_ebaypro` VALUES ('32', '1', 'Vel Illum C09 Dolorem Eum Fugiat Quo', '&lt;p&gt;\r\n	&lt;strong&gt;Revolutionary multi-touch interface.&lt;/strong&gt;&lt;br /&gt;\r\n	iPod touch features the same multi-touch screen technology as iPhone. Pinch to zoom in on a photo. Scroll through your songs and videos with a flick. Flip through your library by album artwork with Cover Flow.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Gorgeous 3.5-inch widescreen display.&lt;/strong&gt;&lt;br /&gt;\r\n	Watch your movies, TV shows, and photos come alive with bright, vivid color on the 320-by-480-pixel display.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Music downloads straight from iTunes.&lt;/strong&gt;&lt;br /&gt;\r\n	Shop the iTunes Wi-Fi Music Store from anywhere with Wi-Fi.1 Browse or search to find the music youre looking for, preview it, and buy it with just a tap.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Surf the web with Wi-Fi.&lt;/strong&gt;&lt;br /&gt;\r\n	Browse the web using Safari and watch YouTube videos on the first iPod with Wi-Fi built in&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n', '', 'Vel Illum C09 Dolorem Eum Fugiat Quo', '', '');
INSERT INTO `oc_product_description_ebaypro` VALUES ('41', '1', 'Omnis Provident M235 Odio Volupt Cupiditate', '&lt;div&gt;\r\n	Just when you thought iMac had everything, now there&acute;s even more. More powerful Intel Core 2 Duo processors. And more memory standard. Combine this with Mac OS X Leopard and iLife &acute;08, and it&acute;s more all-in-one than ever. iMac packs amazing performance into a stunningly slim space.&lt;/div&gt;\r\n', '', 'Omnis Provident M235 Odio Volupt Cupiditate', '', '');
INSERT INTO `oc_product_description_ebaypro` VALUES ('34', '1', 'Encimunt Moptio Labore 898 Olore Magnam', '&lt;div&gt;\r\n	&lt;strong&gt;Born to be worn.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Clip on the worlds most wearable music player and take up to 240 songs with you anywhere. Choose from five colors including four new hues to make your musical fashion statement.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Random meets rhythm.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With iTunes autofill, iPod shuffle can deliver a new musical experience every time you sync. For more randomness, you can shuffle songs during playback with the slide of a switch.&lt;/p&gt;\r\n	&lt;strong&gt;Everything is easy.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Charge and sync with the included USB dock. Operate the iPod shuffle controls with one hand. Enjoy up to 12 hours straight of skip-free music playback.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'Encimunt Moptio Labore 898 Olore Magnam', '', '');
INSERT INTO `oc_product_description_ebaypro` VALUES ('43', '1', 'Lorem Ipsum Sit 365 Officia Doloribus', '&lt;div&gt;\r\n&lt;p&gt;&lt;strong&gt;Intel Core 2 Duo processor&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;1GB memory, larger hard drives&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Sleek, 1.08-inch-thin design&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Built-in iSight camera&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;', '', 'Lorem Ipsum Sit 365 Officia Doloribus', '', '');
INSERT INTO `oc_product_description_ebaypro` VALUES ('31', '1', 'At Fero G99 Acusamus Et Iusto Sdio', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		Engineered with pro-level features and performance, the 12.3-effective-megapixel D300 combines brand new technologies with advanced features inherited from Nikon&amp;#39;s newly announced D3 professional digital SLR camera to offer serious photographers remarkable performance combined with agility.&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		Similar to the D3, the D300 features Nikon&amp;#39;s exclusive EXPEED Image Processing System that is central to driving the speed and processing power needed for many of the camera&amp;#39;s new features. The D300 features a new 51-point autofocus system with Nikon&amp;#39;s 3D Focus Tracking feature and two new LiveView shooting modes that allow users to frame a photograph using the camera&amp;#39;s high-resolution LCD monitor. The D300 shares a similar Scene Recognition System as is found in the D3; it promises to greatly enhance the accuracy of autofocus, autoexposure, and auto white balance by recognizing the subject or scene being photographed and applying this information to the calculations for the three functions.&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		The D300 reacts with lightning speed, powering up in a mere 0.13 seconds and shooting with an imperceptible 45-millisecond shutter release lag time. The D300 is capable of shooting at a rapid six frames per second and can go as fast as eight frames per second when using the optional MB-D10 multi-power battery pack. In continuous bursts, the D300 can shoot up to 100 shots at full 12.3-megapixel resolution. (NORMAL-LARGE image setting, using a SanDisk Extreme IV 1GB CompactFlash card.)&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		The D300 incorporates a range of innovative technologies and features that will significantly improve the accuracy, control, and performance photographers can get from their equipment. Its new Scene Recognition System advances the use of Nikon&amp;#39;s acclaimed 1,005-segment sensor to recognize colors and light patterns that help the camera determine the subject and the type of scene being photographed before a picture is taken. This information is used to improve the accuracy of autofocus, autoexposure, and auto white balance functions in the D300. For example, the camera can track moving subjects better and by identifying them, it can also automatically select focus points faster and with greater accuracy. It can also analyze highlights and more accurately determine exposure, as well as infer light sources to deliver more accurate white balance detection.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'At Fero G99 Acusamus Et Iusto Sdio', '', '');
INSERT INTO `oc_product_description_ebaypro` VALUES ('49', '1', 'Omnis Voluptas Asumenda Est Sequi', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. &lt;strong&gt;Ut enim ad minim veniam&lt;/strong&gt;, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore - eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/p&gt;\r\n&lt;p&gt;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Neque porro quisquam est&lt;/strong&gt;, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur.&lt;/p&gt;\r\n&lt;ol&gt;\r\n&lt;li&gt;At vero eos et accusamus et&lt;/li&gt;\r\n&lt;li&gt;Iusto odio dignissimos ducimus qui&lt;/li&gt;\r\n&lt;li&gt;Blanditiis &lt;strong&gt;praesentium voluptatum&lt;/strong&gt;&lt;/li&gt;\r\n&lt;li&gt;Deleniti atque corrupti quos dolores et&lt;/li&gt;\r\n&lt;li&gt;Iquas molestias excepturi sint occaecati cupiditate non provident&lt;/li&gt;\r\n&lt;li&gt;Similique sunt in culpa qui officia deserunt mollitia animi&lt;/li&gt;\r\n&lt;li&gt;Id est laborum et dolorum fuga&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Nullam sollicitudin&lt;/strong&gt; rutrum augue sit amet ornare. Vivamus placerat cursus arcu, vitae molestie nulla luctus eu. Pellentesque eros tortor, convallis non magna eu, congue rutrum diam. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Mauris elit augue, sollicitudin a gravida eu, ultricies vitae purus. Integer sed convallis sapien. Etiam non tincidunt ligula.&lt;/p&gt;\r\n&lt;p&gt;In ut sem rhoncus &lt;strong&gt;lorem pellentesque facilisis&lt;/strong&gt; sed nec neque. Sed eget tortor sem. Proin semper ex risus, ac posuere tellus consequat vitae. Sed dignissim sem non nisl aliquet fermentum. Curabitur porta ex placerat nisl efficitur, eget suscipit felis sodales. Pellentesque sit amet ipsum eget est vestibulum pretium.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Donec nisl odio&lt;/strong&gt;, consectetur nec porta vitae, ullamcorper vitae elit. Nullam nec semper magna. Nunc sed est id nisl interdum commodo mattis vitae dui. Vestibulum venenatis nisl ac eros euismod, a ullamcorper nunc malesuada.&lt;/p&gt;', '', 'Omnis Voluptas Asumenda Est Sequi', '', '');
INSERT INTO `oc_product_description_ebaypro` VALUES ('42', '2', '蔻姿娜焦糖色羊毛针织连衣裙秋冬长袖打底裙宽松中长款过膝毛衣裙', '&lt;p&gt;&lt;span style=&quot;font-family: helvetica, geneva, arial; font-size: small;&quot;&gt;&lt;span style=&quot;font-family: Helvetica; font-size: small;&quot;&gt;&lt;img src=&quot;http://local.oc3-free-dev/image/catalog/中文测试/cropped.jpg&quot; /&gt;&lt;img src=&quot;http://local.oc3-free-dev/image/catalog/中文测试/中文图片上传.jpg&quot; /&gt;&lt;img src=&quot;http://local.oc3-free-dev/image/catalog/demo/banner/banner-1.jpg&quot; /&gt;The 30-inch Apple Cinema HD Display delivers an amazing 2560 x 1600 pixel resolution. Designed specifically for the creative professional, this display provides more space for easier access to all the tools and palettes needed to edit, format and composite your work. Combine this display with a Mac Pro, MacBook Pro, or PowerMac G5 and there\'s no limit to what you can achieve. &lt;br /&gt; &lt;br /&gt; &lt;/span&gt;&lt;span style=&quot;font-family: Helvetica; font-size: small;&quot;&gt;The Cinema HD features an active-matrix liquid crystal display that produces flicker-free images that deliver twice the brightness, twice the sharpness and twice the contrast ratio of a typical CRT display. Unlike other flat panels, it\'s designed with a pure digital interface to deliver distortion-free images that never need adjusting. With over 4 million digital pixels, the display is uniquely suited for scientific and technical applications such as visualizing molecular structures or analyzing geological data. &lt;br /&gt; &lt;br /&gt; &lt;/span&gt;&lt;span style=&quot;font-family: Helvetica; font-size: small;&quot;&gt;Offering accurate, brilliant color performance, the Cinema HD delivers up to 16.7 million colors across a wide gamut allowing you to see subtle nuances between colors from soft pastels to rich jewel tones. A wide viewing angle ensures uniform color from edge to edge. Apple\'s ColorSync technology allows you to create custom profiles to maintain consistent color onscreen and in print. The result: You can confidently use this display in all your color-critical applications. &lt;br /&gt; &lt;br /&gt; &lt;/span&gt;&lt;span style=&quot;font-family: Helvetica; font-size: small;&quot;&gt;Housed in a new aluminum design, the display has a very thin bezel that enhances visual accuracy. Each display features two FireWire 400 ports and two USB 2.0 ports, making attachment of desktop peripherals, such as iSight, iPod, digital and still cameras, hard drives, printers and scanners, even more accessible and convenient. Taking advantage of the much thinner and lighter footprint of an LCD, the new displays support the VESA (Video Electronics Standards Association) mounting interface standard. Customers with the optional Cinema Display VESA Mount Adapter kit gain the flexibility to mount their display in locations most appropriate for their work environment. &lt;br /&gt; &lt;br /&gt; &lt;/span&gt;&lt;span style=&quot;font-family: Helvetica; font-size: small;&quot;&gt;&lt;span style=&quot;font-size: 12pt; font-family: \'Microsoft Yahei\';&quot;&gt;The Cinema HD features a single cable design with elegant breakout for the USB 2.0, FireWire 400 and a pure digital connection using the industry standard Digital Video Interface (DVI) interface. The DVI connection allows for a direct pure-digital connection.&lt;/span&gt;&lt;br /&gt; &lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;h3&gt;Features:&lt;/h3&gt;\r\n&lt;p&gt;Unrivaled display performance&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;30-inch (viewable) active-matrix liquid crystal display provides breathtaking image quality and vivid, richly saturated color.&lt;/li&gt;\r\n&lt;li&gt;Support for 2560-by-1600 pixel resolution for display of high definition still and video imagery.&lt;/li&gt;\r\n&lt;li&gt;Wide-format design for simultaneous display of two full pages of text and graphics.&lt;/li&gt;\r\n&lt;li&gt;Industry standard DVI connector for direct attachment to Mac- and Windows-based desktops and notebooks&lt;/li&gt;\r\n&lt;li&gt;Incredibly wide (170 degree) horizontal and vertical viewing angle for maximum visibility and color performance.&lt;/li&gt;\r\n&lt;li&gt;Lightning-fast pixel response for full-motion digital video playback.&lt;/li&gt;\r\n&lt;li&gt;Support for 16.7 million saturated colors, for use in all graphics-intensive applications.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;Simple setup and operation&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Single cable with elegant breakout for connection to DVI, USB and FireWire ports&lt;/li&gt;\r\n&lt;li&gt;Built-in two-port USB 2.0 hub for easy connection of desktop peripheral devices.&lt;/li&gt;\r\n&lt;li&gt;Two FireWire 400 ports to support iSight and other desktop peripherals&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;Sleek, elegant design&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Huge virtual workspace, very small footprint.&lt;/li&gt;\r\n&lt;li&gt;Narrow Bezel design to minimize visual impact of using dual displays&lt;/li&gt;\r\n&lt;li&gt;Unique hinge design for effortless adjustment&lt;/li&gt;\r\n&lt;li&gt;Support for VESA mounting solutions (Apple Cinema Display VESA Mount Adapter sold separately)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;h3&gt;Technical specifications&lt;/h3&gt;\r\n&lt;p&gt;&lt;strong&gt;Screen size (diagonal viewable image size)&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Apple Cinema HD Display: 30 inches (29.7-inch viewable)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;Screen type&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Thin film transistor (TFT) active-matrix liquid crystal display (AMLCD)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;Resolutions&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;2560 x 1600 pixels (optimum resolution)&lt;/li&gt;\r\n&lt;li&gt;2048 x 1280&lt;/li&gt;\r\n&lt;li&gt;1920 x 1200&lt;/li&gt;\r\n&lt;li&gt;1280 x 800&lt;/li&gt;\r\n&lt;li&gt;1024 x 640&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;Display colors (maximum)&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;16.7 million&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;Viewing angle (typical)&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;170&amp;deg; horizontal; 170&amp;deg; vertical&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;Brightness (typical)&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;30-inch Cinema HD Display: 400 cd/m2&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;Contrast ratio (typical)&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;700:1&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;Response time (typical)&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;16 ms&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;Pixel pitch&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;30-inch Cinema HD Display: 0.250 mm&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;Screen treatment&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Antiglare hardcoat&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;User controls (hardware and software)&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Display Power,&lt;/li&gt;\r\n&lt;li&gt;System sleep, wake&lt;/li&gt;\r\n&lt;li&gt;Brightness&lt;/li&gt;\r\n&lt;li&gt;Monitor tilt&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;Connectors and cables&lt;/strong&gt;&lt;br /&gt; Cable&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;DVI (Digital Visual Interface)&lt;/li&gt;\r\n&lt;li&gt;FireWire 400&lt;/li&gt;\r\n&lt;li&gt;USB 2.0&lt;/li&gt;\r\n&lt;li&gt;DC power (24 V)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;Connectors&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Two-port, self-powered USB 2.0 hub&lt;/li&gt;\r\n&lt;li&gt;Two FireWire 400 ports&lt;/li&gt;\r\n&lt;li&gt;Kensington security port&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;VESA mount adapter&lt;/strong&gt;&lt;br /&gt; Requires optional Cinema Display VESA Mount Adapter (M9649G/A)&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Compatible with VESA FDMI (MIS-D, 100, C) compliant mounting solutions&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;Electrical requirements&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Input voltage: 100-240 VAC 50-60Hz&lt;/li&gt;\r\n&lt;li&gt;Maximum power when operating: 150W&lt;/li&gt;\r\n&lt;li&gt;Energy saver mode: 3W or less&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;Environmental requirements&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Operating temperature: 50&amp;deg; to 95&amp;deg; F (10&amp;deg; to 35&amp;deg; C)&lt;/li&gt;\r\n&lt;li&gt;Storage temperature: -40&amp;deg; to 116&amp;deg; F (-40&amp;deg; to 47&amp;deg; C)&lt;/li&gt;\r\n&lt;li&gt;Operating humidity: 20% to 80% noncondensing&lt;/li&gt;\r\n&lt;li&gt;Maximum operating altitude: 10,000 feet&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;Agency approvals&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;FCC Part 15 Class B&lt;/li&gt;\r\n&lt;li&gt;EN55022 Class B&lt;/li&gt;\r\n&lt;li&gt;EN55024&lt;/li&gt;\r\n&lt;li&gt;VCCI Class B&lt;/li&gt;\r\n&lt;li&gt;AS/NZS 3548 Class B&lt;/li&gt;\r\n&lt;li&gt;CNS 13438 Class B&lt;/li&gt;\r\n&lt;li&gt;ICES-003 Class B&lt;/li&gt;\r\n&lt;li&gt;ISO 13406 part 2&lt;/li&gt;\r\n&lt;li&gt;MPR II&lt;/li&gt;\r\n&lt;li&gt;IEC 60950&lt;/li&gt;\r\n&lt;li&gt;UL 60950&lt;/li&gt;\r\n&lt;li&gt;CSA 60950&lt;/li&gt;\r\n&lt;li&gt;EN60950&lt;/li&gt;\r\n&lt;li&gt;ENERGY STAR&lt;/li&gt;\r\n&lt;li&gt;TCO \'03&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;Size and weight&lt;/strong&gt;&lt;br /&gt; 30-inch Apple Cinema HD Display&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Height: 21.3 inches (54.3 cm)&lt;/li&gt;\r\n&lt;li&gt;Width: 27.2 inches (68.8 cm)&lt;/li&gt;\r\n&lt;li&gt;Depth: 8.46 inches (21.5 cm)&lt;/li&gt;\r\n&lt;li&gt;Weight: 27.5 pounds (12.5 kg)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;System Requirements&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Mac Pro, all graphic options&lt;/li&gt;\r\n&lt;li&gt;MacBook Pro&lt;/li&gt;\r\n&lt;li&gt;Power Mac G5 (PCI-X) with ATI Radeon 9650 or better or NVIDIA GeForce 6800 GT DDL or better&lt;/li&gt;\r\n&lt;li&gt;Power Mac G5 (PCI Express), all graphics options&lt;/li&gt;\r\n&lt;li&gt;PowerBook G4 with dual-link DVI support&lt;/li&gt;\r\n&lt;li&gt;Windows PC and graphics card that supports DVI ports with dual-link digital bandwidth and VESA DDC standard for plug-and-play setup&lt;/li&gt;\r\n&lt;/ul&gt;', '', '蔻姿娜焦糖色羊毛针织连衣裙秋冬长袖打底裙宽松中长款过膝毛衣裙', '', '');
INSERT INTO `oc_product_description_ebaypro` VALUES ('30', '2', 'HARA 新品 TRF 女装 连帽毛领棉服外套', '&lt;p&gt;Canon\'s press material for the EOS 5D states that it \'defines (a) new D-SLR category\', while we\'re not typically too concerned with marketing talk this particular statement is clearly pretty accurate. The EOS 5D is unlike any previous digital SLR in that it combines a full-frame (35 mm sized) high resolution sensor (12.8 megapixels) with a relatively compact body (slightly larger than the EOS 20D, although in your hand it feels noticeably \'chunkier\'). The EOS 5D is aimed to slot in between the EOS 20D and the EOS-1D professional digital SLR\'s, an important difference when compared to the latter is that the EOS 5D doesn\'t have any environmental seals. While Canon don\'t specifically refer to the EOS 5D as a \'professional\' digital SLR it will have obvious appeal to professionals who want a high quality digital SLR in a body lighter than the EOS-1D. It will also no doubt appeal to current EOS 20D owners (although lets hope they\'ve not bought too many EF-S lenses...) &amp;auml;&amp;euml;&lt;/p&gt;', '', 'HARA 新品 TRF 女装 连帽毛领棉服外套', '', '');
INSERT INTO `oc_product_description_ebaypro` VALUES ('35', '2', 'ONLY 2018冬新品宽松中长款套头毛衣针织衫女', '&lt;p&gt;\r\n	Product 8&lt;/p&gt;\r\n', '', 'ONLY 2018冬新品宽松中长款套头毛衣针织衫女', '', '');
INSERT INTO `oc_product_description_ebaypro` VALUES ('48', '2', '春秋新款一字领针织衫长袖短款紧身毛衣女', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;More room to move.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Sleeker design.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Beautiful, durable, and sleeker than ever, iPod classic now features an anodized aluminum and polished stainless steel enclosure with rounded edges.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', '春秋新款一字领针织衫长袖短款紧身毛衣女', '', '');
INSERT INTO `oc_product_description_ebaypro` VALUES ('40', '2', 'LOREM 双腰头修身九分棉弹牛仔裤', '&lt;p class=&quot;intro&quot;&gt;iPhone is a revolutionary new mobile phone that allows you to make a call by simply tapping a name or number in your address book, a favorites list, or a call log. It also automatically syncs all your contacts from a PC, Mac, or Internet service. And it lets you select and listen to voicemail messages in whatever order you want just like email.&lt;/p&gt;', '', 'LOREM 双腰头修身九分棉弹牛仔裤', '', '');
INSERT INTO `oc_product_description_ebaypro` VALUES ('28', '2', 'HAXA 新品女装连帽毛领棉服外套', '&lt;p&gt;\r\n	HTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience you never thought possible. Seductively sleek, the HTC Touch HD provides the next generation of mobile functionality, all at a simple touch. Fully integrated with Windows Mobile Professional 6.1, ultrafast 3.5G, GPS, 5MP camera, plus lots more - all delivered on a breathtakingly crisp 3.8&amp;quot; WVGA touchscreen - you can take control of your mobile world with the HTC Touch HD.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Processor Qualcomm&amp;reg; MSM 7201A&amp;trade; 528 MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Operating System&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Memory: 512 MB ROM, 288 MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Dimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band frequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Device Control via HTC TouchFLO&amp;trade; 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;\r\n	&lt;li&gt;\r\n		GPS and A-GPS ready&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth&amp;reg; 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wi-Fi&amp;reg;: IEEE 802.11 b/g&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HTC ExtUSB&amp;trade; (11-pin mini-USB 2.0)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		5 megapixel color camera with auto focus&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VGA CMOS color camera&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Ring tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;\r\n	&lt;li&gt;\r\n		40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Rechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Expansion Slot: microSD&amp;trade; memory card (SD 2.0 compatible)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Special Features: FM Radio, G-Sensor&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', 'HAXA 新品女装连帽毛领棉服外套', '', '');
INSERT INTO `oc_product_description_ebaypro` VALUES ('44', '2', 'SIMPLE 2018冬新品宽松中长款套头毛衣针织衫女', '&lt;div&gt;\r\n	MacBook Air is ultrathin, ultraportable, and ultra unlike anything else. But you don&amp;rsquo;t lose inches and pounds overnight. It&amp;rsquo;s the result of rethinking conventions. Of multiple wireless innovations. And of breakthrough design. With MacBook Air, mobile computing suddenly has a new standard.&lt;/div&gt;\r\n', '', 'SIMPLE 2018冬新品宽松中长款套头毛衣针织衫女', '', '');
INSERT INTO `oc_product_description_ebaypro` VALUES ('45', '2', 'OMNIS 双面羊毛呢子大衣女短款织衫女', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Latest Intel mobile architecture&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Powered by the most advanced mobile processors from Intel, the new Core 2 Duo MacBook Pro is over 50% faster than the original Core Duo MacBook Pro and now supports up to 4GB of RAM.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Leading-edge graphics&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			The NVIDIA GeForce 8600M GT delivers exceptional graphics processing power. For the ultimate creative canvas, you can even configure the 17-inch model with a 1920-by-1200 resolution display.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Designed for life on the road&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Innovations such as a magnetic power connection and an illuminated keyboard with ambient light sensor put the MacBook Pro in a class by itself.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Connect. Create. Communicate.&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Quickly set up a video conference with the built-in iSight camera. Control presentations and media from up to 30 feet away with the included Apple Remote. Connect to high-bandwidth peripherals with FireWire 800 and DVI.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Next-generation wireless&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Featuring 802.11n wireless technology, the MacBook Pro delivers up to five times the performance and up to twice the range of previous-generation technologies.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'OMNIS 双面羊毛呢子大衣女短款织衫女', '', '');
INSERT INTO `oc_product_description_ebaypro` VALUES ('29', '2', '双面羊毛呢子大衣女短款2017春季新款韩版修身小香风毛呢外套女', '&lt;p&gt;\r\n	Redefine your workday with the Palm Treo Pro smartphone. Perfectly balanced, you can respond to business and personal email, stay on top of appointments and contacts, and use Wi-Fi or GPS when you&amp;rsquo;re out and about. Then watch a video on YouTube, catch up with news and sports on the web, or listen to a few songs. Balance your work and play the way you like it, with the Palm Treo Pro.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Edition&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Qualcomm&amp;reg; MSM7201 400MHz Processor&lt;/li&gt;\r\n	&lt;li&gt;\r\n		320x320 transflective colour TFT touchscreen&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/UMTS/EDGE/GPRS/GSM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Tri-band UMTS &amp;mdash; 850MHz, 1900MHz, 2100MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM &amp;mdash; 850/900/1800/1900&lt;/li&gt;\r\n	&lt;li&gt;\r\n		802.11b/g with WPA, WPA2, and 801.1x authentication&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in GPS&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth Version: 2.0 + Enhanced Data Rate&lt;/li&gt;\r\n	&lt;li&gt;\r\n		256MB storage (100MB user available), 128MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2.0 megapixel camera, up to 8x digital zoom and video capture&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Removable, rechargeable 1500mAh lithium-ion battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Up to 5.0 hours talk time and up to 250 hours standby&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroSDHC card expansion (up to 32GB supported)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroUSB 2.0 for synchronization and charging&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.5mm stereo headset jack&lt;/li&gt;\r\n	&lt;li&gt;\r\n		60mm (W) x 114mm (L) x 13.5mm (D) / 133g&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', '双面羊毛呢子大衣女短款2017春季新款韩版修身小香风毛呢外套女', '', '');
INSERT INTO `oc_product_description_ebaypro` VALUES ('36', '2', '春秋新款一字领针织衫长袖短款紧身毛衣女', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Video in your pocket.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Its the small iPod with one very big idea: video. The worlds most popular music player now lets you enjoy movies, TV shows, and more on a two-inch display thats 65% brighter than before.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Sleek and colorful.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With an anodized aluminum and polished stainless steel enclosure and a choice of five colors, iPod nano is dressed to impress.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;iTunes.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Available as a free download, iTunes makes it easy to browse and buy millions of songs, movies, TV shows, audiobooks, and games and download free podcasts all at the iTunes Store. And you can import your own music, manage your whole media library, and sync your iPod or iPhone with ease.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', '春秋新款一字领针织衫长袖短款紧身毛衣女', '', '');
INSERT INTO `oc_product_description_ebaypro` VALUES ('46', '2', '浅秋专柜正品早秋新款休闲半高领纯羊毛针织衫套头毛衣女基础打底', '&lt;div&gt;\r\n	Unprecedented power. The next generation of processing technology has arrived. Built into the newest VAIO notebooks lies Intel&amp;#39;s latest, most powerful innovation yet: Intel&amp;reg; Centrino&amp;reg; 2 processor technology. Boasting incredible speed, expanded wireless connectivity, enhanced multimedia support and greater energy efficiency, all the high-performance essentials are seamlessly combined into a single chip.&lt;/div&gt;\r\n', '', '浅秋专柜正品早秋新款休闲半高领纯羊毛针织衫套头毛衣女基础打底', '', '');
INSERT INTO `oc_product_description_ebaypro` VALUES ('47', '2', '羊毛打底衫女长袖秋冬套头修身高领薄款毛衣百搭秋装冬季针织衫', '&lt;p&gt;\r\n	Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge wide-aspect screen while letting you work as comfortably as possible - you might even forget you&amp;#39;re at the office&lt;/p&gt;\r\n', '', '羊毛打底衫女长袖秋冬套头修身高领薄款毛衣百搭秋装冬季针织衫', '', '');
INSERT INTO `oc_product_description_ebaypro` VALUES ('32', '2', '梦伊 2018 秋冬新款丝绒刺绣连衣裙气质优雅显瘦a字长裙女装', '&lt;p&gt;\r\n	&lt;strong&gt;Revolutionary multi-touch interface.&lt;/strong&gt;&lt;br /&gt;\r\n	iPod touch features the same multi-touch screen technology as iPhone. Pinch to zoom in on a photo. Scroll through your songs and videos with a flick. Flip through your library by album artwork with Cover Flow.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Gorgeous 3.5-inch widescreen display.&lt;/strong&gt;&lt;br /&gt;\r\n	Watch your movies, TV shows, and photos come alive with bright, vivid color on the 320-by-480-pixel display.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Music downloads straight from iTunes.&lt;/strong&gt;&lt;br /&gt;\r\n	Shop the iTunes Wi-Fi Music Store from anywhere with Wi-Fi.1 Browse or search to find the music youre looking for, preview it, and buy it with just a tap.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Surf the web with Wi-Fi.&lt;/strong&gt;&lt;br /&gt;\r\n	Browse the web using Safari and watch YouTube videos on the first iPod with Wi-Fi built in&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n', '', '梦伊 2018 秋冬新款丝绒刺绣连衣裙气质优雅显瘦a字长裙女装', '', '');
INSERT INTO `oc_product_description_ebaypro` VALUES ('41', '2', '蔻娜焦糖色羊毛针织连衣裙秋冬长袖打底裙宽松中长款过膝毛衣裙', '&lt;div&gt;\r\n	Just when you thought iMac had everything, now there&acute;s even more. More powerful Intel Core 2 Duo processors. And more memory standard. Combine this with Mac OS X Leopard and iLife &acute;08, and it&acute;s more all-in-one than ever. iMac packs amazing performance into a stunningly slim space.&lt;/div&gt;\r\n', '', '蔻娜焦糖色羊毛针织连衣裙秋冬长袖打底裙宽松中长款过膝毛衣裙', '', '');
INSERT INTO `oc_product_description_ebaypro` VALUES ('34', '2', 'Kelit 连衣裙秋冬长袖打底裙宽松中长款过膝毛衣裙', '&lt;div&gt;\r\n	&lt;strong&gt;Born to be worn.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Clip on the worlds most wearable music player and take up to 240 songs with you anywhere. Choose from five colors including four new hues to make your musical fashion statement.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Random meets rhythm.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With iTunes autofill, iPod shuffle can deliver a new musical experience every time you sync. For more randomness, you can shuffle songs during playback with the slide of a switch.&lt;/p&gt;\r\n	&lt;strong&gt;Everything is easy.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Charge and sync with the included USB dock. Operate the iPod shuffle controls with one hand. Enjoy up to 12 hours straight of skip-free music playback.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'Kelit 连衣裙秋冬长袖打底裙宽松中长款过膝毛衣裙', '', '');
INSERT INTO `oc_product_description_ebaypro` VALUES ('43', '2', '羊毛 EOST 女长袖秋冬套头修身高领薄款毛衣针织衫', '&lt;div&gt;\r\n&lt;p&gt;&lt;strong&gt;Intel Core 2 Duo processor&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;1GB memory, larger hard drives&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Sleek, 1.08-inch-thin design&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Built-in iSight camera&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;', '', '羊毛 EOST 女长袖秋冬套头修身高领薄款毛衣针织衫', '', '');
INSERT INTO `oc_product_description_ebaypro` VALUES ('31', '2', 'OMNIS 春秋新款一字领针织衫长袖短款紧身毛衣女', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		Engineered with pro-level features and performance, the 12.3-effective-megapixel D300 combines brand new technologies with advanced features inherited from Nikon&amp;#39;s newly announced D3 professional digital SLR camera to offer serious photographers remarkable performance combined with agility.&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		Similar to the D3, the D300 features Nikon&amp;#39;s exclusive EXPEED Image Processing System that is central to driving the speed and processing power needed for many of the camera&amp;#39;s new features. The D300 features a new 51-point autofocus system with Nikon&amp;#39;s 3D Focus Tracking feature and two new LiveView shooting modes that allow users to frame a photograph using the camera&amp;#39;s high-resolution LCD monitor. The D300 shares a similar Scene Recognition System as is found in the D3; it promises to greatly enhance the accuracy of autofocus, autoexposure, and auto white balance by recognizing the subject or scene being photographed and applying this information to the calculations for the three functions.&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		The D300 reacts with lightning speed, powering up in a mere 0.13 seconds and shooting with an imperceptible 45-millisecond shutter release lag time. The D300 is capable of shooting at a rapid six frames per second and can go as fast as eight frames per second when using the optional MB-D10 multi-power battery pack. In continuous bursts, the D300 can shoot up to 100 shots at full 12.3-megapixel resolution. (NORMAL-LARGE image setting, using a SanDisk Extreme IV 1GB CompactFlash card.)&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		The D300 incorporates a range of innovative technologies and features that will significantly improve the accuracy, control, and performance photographers can get from their equipment. Its new Scene Recognition System advances the use of Nikon&amp;#39;s acclaimed 1,005-segment sensor to recognize colors and light patterns that help the camera determine the subject and the type of scene being photographed before a picture is taken. This information is used to improve the accuracy of autofocus, autoexposure, and auto white balance functions in the D300. For example, the camera can track moving subjects better and by identifying them, it can also automatically select focus points faster and with greater accuracy. It can also analyze highlights and more accurately determine exposure, as well as infer light sources to deliver more accurate white balance detection.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'OMNIS 春秋新款一字领针织衫长袖短款紧身毛衣女', '', '');
INSERT INTO `oc_product_description_ebaypro` VALUES ('49', '2', '浅秋专柜正品早秋新款休闲半高领纯羊毛针织衫套头毛衣女基础打底', '&lt;p&gt;Samsung Galaxy Tab 10.1, is the world&amp;rsquo;s thinnest tablet, measuring 8.6 mm thickness, running with Android 3.0 Honeycomb OS on a 1GHz dual-core Tegra 2 processor, similar to its younger brother Samsung Galaxy Tab 8.9.&lt;/p&gt;\r\n&lt;p&gt;Samsung Galaxy Tab 10.1 gives pure Android 3.0 experience, adding its new TouchWiz UX or TouchWiz 4.0 &amp;ndash; includes a live panel, which lets you to customize with different content, such as your pictures, bookmarks, and social feeds, sporting a 10.1 inches WXGA capacitive touch screen with 1280 x 800 pixels of resolution, equipped with 3 megapixel rear camera with LED flash and a 2 megapixel front camera, HSPA+ connectivity up to 21Mbps, 720p HD video recording capability, 1080p HD playback, DLNA support, Bluetooth 2.1, USB 2.0, gyroscope, Wi-Fi 802.11 a/b/g/n, micro-SD slot, 3.5mm headphone jack, and SIM slot, including the Samsung Stick &amp;ndash; a Bluetooth microphone that can be carried in a pocket like a pen and sound dock with powered subwoofer.&lt;/p&gt;\r\n&lt;p&gt;Samsung Galaxy Tab 10.1 will come in 16GB / 32GB / 64GB verities and pre-loaded with Social Hub, Reader&amp;rsquo;s Hub, Music Hub and Samsung Mini Apps Tray &amp;ndash; which gives you access to more commonly used apps to help ease multitasking and it is capable of Adobe Flash Player 10.2, powered by 6860mAh battery that gives you 10hours of video-playback time.&amp;nbsp;&amp;auml;&amp;ouml;&lt;/p&gt;', '', '浅秋专柜正品早秋新款休闲半高领纯羊毛针织衫套头毛衣女基础打底', '', '');
INSERT INTO `oc_product_description_ebaypro` VALUES ('42', '1', 'At Fero G99 Acusamus Et Iusto Sdio', '&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: helvetica, geneva, arial; font-size: small;&quot;&gt;&lt;span style=&quot;font-family: Helvetica; font-size: small;&quot;&gt;&lt;img src=&quot;http://local.oc3-free-dev/image/catalog/demo/manufacturer/burgerking.png&quot; /&gt;&lt;img src=&quot;http://local.oc3-free-dev/image/catalog/demo/manufacturer/canon.png&quot; /&gt;&lt;img src=&quot;http://local.oc3-free-dev/image/catalog/demo/manufacturer/cocacola.png&quot; /&gt;&lt;img src=&quot;http://local.oc3-free-dev/image/catalog/demo/manufacturer/dell.png&quot; /&gt;&lt;img src=&quot;http://local.oc3-free-dev/image/catalog/demo/manufacturer/disney.png&quot; /&gt;&lt;img src=&quot;http://local.oc3-free-dev/image/catalog/demo/manufacturer/harley.png&quot; /&gt;&lt;img src=&quot;http://local.oc3-free-dev/image/catalog/demo/manufacturer/nfl.png&quot; /&gt;&lt;img src=&quot;http://local.oc3-free-dev/image/catalog/demo/manufacturer/nintendo.png&quot; /&gt;&lt;img src=&quot;http://local.oc3-free-dev/image/catalog/demo/manufacturer/redbull.png&quot; /&gt;&lt;img src=&quot;http://local.oc3-free-dev/image/catalog/demo/manufacturer/shell.png&quot; /&gt;&lt;img src=&quot;http://local.oc3-free-dev/image/catalog/demo/manufacturer/sony.png&quot; /&gt;&lt;img src=&quot;http://local.oc3-free-dev/image/catalog/demo/manufacturer/starbucks.png&quot; /&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: helvetica, geneva, arial; font-size: small;&quot;&gt;&lt;span style=&quot;font-family: Helvetica; font-size: small;&quot;&gt;The 30-inch Apple Cinema HD Display delivers an amazing 2560 x 1600 pixel resolution. Designed specifically for the creative professional, this display provides more space for easier access to all the tools and palettes needed to edit, format and composite your work. Combine this display with a Mac Pro, MacBook Pro, or PowerMac G5 and there\'s no limit to what you can achieve. &lt;br /&gt; &lt;br /&gt; &lt;/span&gt;&lt;span style=&quot;font-family: Helvetica; font-size: small;&quot;&gt;The Cinema HD features an active-matrix liquid crystal display that produces flicker-free images that deliver twice the brightness, twice the sharpness and twice the contrast ratio of a typical CRT display. Unlike other flat panels, it\'s designed with a pure digital interface to deliver distortion-free images that never need adjusting. With over 4 million digital pixels, the display is uniquely suited for scientific and technical applications such as visualizing molecular structures or analyzing geological data. &lt;br /&gt; &lt;br /&gt; &lt;/span&gt;&lt;span style=&quot;font-family: Helvetica; font-size: small;&quot;&gt;Offering accurate, brilliant color performance, the Cinema HD delivers up to 16.7 million colors across a wide gamut allowing you to see subtle nuances between colors from soft pastels to rich jewel tones. A wide viewing angle ensures uniform color from edge to edge. Apple\'s ColorSync technology allows you to create custom profiles to maintain consistent color onscreen and in print. The result: You can confidently use this display in all your color-critical applications. &lt;br /&gt; &lt;br /&gt; &lt;/span&gt;&lt;span style=&quot;font-family: Helvetica; font-size: small;&quot;&gt;Housed in a new aluminum design, the display has a very thin bezel that enhances visual accuracy. Each display features two FireWire 400 ports and two USB 2.0 ports, making attachment of desktop peripherals, such as iSight, iPod, digital and still cameras, hard drives, printers and scanners, even more accessible and convenient. Taking advantage of the much thinner and lighter footprint of an LCD, the new displays support the VESA (Video Electronics Standards Association) mounting interface standard. Customers with the optional Cinema Display VESA Mount Adapter kit gain the flexibility to mount their display in locations most appropriate for their work environment. &lt;br /&gt; &lt;br /&gt; &lt;/span&gt;&lt;span style=&quot;font-family: Helvetica; font-size: small;&quot;&gt;The Cinema HD features a single cable design with elegant breakout for the USB 2.0, FireWire 400 and a pure digital connection using the industry standard Digital Video Interface (DVI) interface. The DVI connection allows for a direct pure-digital connection.&lt;br /&gt; &lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;h3&gt;Features:&lt;/h3&gt;\r\n&lt;p&gt;Unrivaled display performance&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;30-inch (viewable) active-matrix liquid crystal display provides breathtaking image quality and vivid, richly saturated color.&lt;/li&gt;\r\n&lt;li&gt;Support for 2560-by-1600 pixel resolution for display of high definition still and video imagery.&lt;/li&gt;\r\n&lt;li&gt;Wide-format design for simultaneous display of two full pages of text and graphics.&lt;/li&gt;\r\n&lt;li&gt;Industry standard DVI connector for direct attachment to Mac- and Windows-based desktops and notebooks&lt;/li&gt;\r\n&lt;li&gt;Incredibly wide (170 degree) horizontal and vertical viewing angle for maximum visibility and color performance.&lt;/li&gt;\r\n&lt;li&gt;Lightning-fast pixel response for full-motion digital video playback.&lt;/li&gt;\r\n&lt;li&gt;Support for 16.7 million saturated colors, for use in all graphics-intensive applications.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;Simple setup and operation&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Single cable with elegant breakout for connection to DVI, USB and FireWire ports&lt;/li&gt;\r\n&lt;li&gt;Built-in two-port USB 2.0 hub for easy connection of desktop peripheral devices.&lt;/li&gt;\r\n&lt;li&gt;Two FireWire 400 ports to support iSight and other desktop peripherals&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;Sleek, elegant design&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Huge virtual workspace, very small footprint.&lt;/li&gt;\r\n&lt;li&gt;Narrow Bezel design to minimize visual impact of using dual displays&lt;/li&gt;\r\n&lt;li&gt;Unique hinge design for effortless adjustment&lt;/li&gt;\r\n&lt;li&gt;Support for VESA mounting solutions (Apple Cinema Display VESA Mount Adapter sold separately)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;h3&gt;Technical specifications&lt;/h3&gt;\r\n&lt;p&gt;&lt;strong&gt;Screen size (diagonal viewable image size)&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Apple Cinema HD Display: 30 inches (29.7-inch viewable)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;Screen type&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Thin film transistor (TFT) active-matrix liquid crystal display (AMLCD)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;Resolutions&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;2560 x 1600 pixels (optimum resolution)&lt;/li&gt;\r\n&lt;li&gt;2048 x 1280&lt;/li&gt;\r\n&lt;li&gt;1920 x 1200&lt;/li&gt;\r\n&lt;li&gt;1280 x 800&lt;/li&gt;\r\n&lt;li&gt;1024 x 640&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;Display colors (maximum)&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;16.7 million&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;Viewing angle (typical)&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;170&amp;deg; horizontal; 170&amp;deg; vertical&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;Brightness (typical)&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;30-inch Cinema HD Display: 400 cd/m2&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;Contrast ratio (typical)&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;700:1&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;Response time (typical)&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;16 ms&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;Pixel pitch&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;30-inch Cinema HD Display: 0.250 mm&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;Screen treatment&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Antiglare hardcoat&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;User controls (hardware and software)&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Display Power,&lt;/li&gt;\r\n&lt;li&gt;System sleep, wake&lt;/li&gt;\r\n&lt;li&gt;Brightness&lt;/li&gt;\r\n&lt;li&gt;Monitor tilt&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;Connectors and cables&lt;/strong&gt;&lt;br /&gt; Cable&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;DVI (Digital Visual Interface)&lt;/li&gt;\r\n&lt;li&gt;FireWire 400&lt;/li&gt;\r\n&lt;li&gt;USB 2.0&lt;/li&gt;\r\n&lt;li&gt;DC power (24 V)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;Connectors&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Two-port, self-powered USB 2.0 hub&lt;/li&gt;\r\n&lt;li&gt;Two FireWire 400 ports&lt;/li&gt;\r\n&lt;li&gt;Kensington security port&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;VESA mount adapter&lt;/strong&gt;&lt;br /&gt; Requires optional Cinema Display VESA Mount Adapter (M9649G/A)&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Compatible with VESA FDMI (MIS-D, 100, C) compliant mounting solutions&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;Electrical requirements&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Input voltage: 100-240 VAC 50-60Hz&lt;/li&gt;\r\n&lt;li&gt;Maximum power when operating: 150W&lt;/li&gt;\r\n&lt;li&gt;Energy saver mode: 3W or less&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;Environmental requirements&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Operating temperature: 50&amp;deg; to 95&amp;deg; F (10&amp;deg; to 35&amp;deg; C)&lt;/li&gt;\r\n&lt;li&gt;Storage temperature: -40&amp;deg; to 116&amp;deg; F (-40&amp;deg; to 47&amp;deg; C)&lt;/li&gt;\r\n&lt;li&gt;Operating humidity: 20% to 80% noncondensing&lt;/li&gt;\r\n&lt;li&gt;Maximum operating altitude: 10,000 feet&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;Agency approvals&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;FCC Part 15 Class B&lt;/li&gt;\r\n&lt;li&gt;EN55022 Class B&lt;/li&gt;\r\n&lt;li&gt;EN55024&lt;/li&gt;\r\n&lt;li&gt;VCCI Class B&lt;/li&gt;\r\n&lt;li&gt;AS/NZS 3548 Class B&lt;/li&gt;\r\n&lt;li&gt;CNS 13438 Class B&lt;/li&gt;\r\n&lt;li&gt;ICES-003 Class B&lt;/li&gt;\r\n&lt;li&gt;ISO 13406 part 2&lt;/li&gt;\r\n&lt;li&gt;MPR II&lt;/li&gt;\r\n&lt;li&gt;IEC 60950&lt;/li&gt;\r\n&lt;li&gt;UL 60950&lt;/li&gt;\r\n&lt;li&gt;CSA 60950&lt;/li&gt;\r\n&lt;li&gt;EN60950&lt;/li&gt;\r\n&lt;li&gt;ENERGY STAR&lt;/li&gt;\r\n&lt;li&gt;TCO \'03&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;Size and weight&lt;/strong&gt;&lt;br /&gt; 30-inch Apple Cinema HD Display&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Height: 21.3 inches (54.3 cm)&lt;/li&gt;\r\n&lt;li&gt;Width: 27.2 inches (68.8 cm)&lt;/li&gt;\r\n&lt;li&gt;Depth: 8.46 inches (21.5 cm)&lt;/li&gt;\r\n&lt;li&gt;Weight: 27.5 pounds (12.5 kg)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;System Requirements&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Mac Pro, all graphic options&lt;/li&gt;\r\n&lt;li&gt;MacBook Pro&lt;/li&gt;\r\n&lt;li&gt;Power Mac G5 (PCI-X) with ATI Radeon 9650 or better or NVIDIA GeForce 6800 GT DDL or better&lt;/li&gt;\r\n&lt;li&gt;Power Mac G5 (PCI Express), all graphics options&lt;/li&gt;\r\n&lt;li&gt;PowerBook G4 with dual-link DVI support&lt;/li&gt;\r\n&lt;li&gt;Windows PC and graphics card that supports DVI ports with dual-link digital bandwidth and VESA DDC standard for plug-and-play setup&lt;/li&gt;\r\n&lt;/ul&gt;', '', 'At Fero G99 Acusamus Et Iusto Sdio', '', '');
INSERT INTO `oc_product_description_ebaypro` VALUES ('30', '1', 'Kelit Esse Cillum Dolore Eu 909 Fugiat', '&lt;p&gt;Canon\'s press material for the EOS 5D states that it \'defines (a) new D-SLR category\', while we\'re not typically too concerned with marketing talk this particular statement is clearly pretty accurate. The EOS 5D is unlike any previous digital SLR in that it combines a full-frame (35 mm sized) high resolution sensor (12.8 megapixels) with a relatively compact body (slightly larger than the EOS 20D, although in your hand it feels noticeably \'chunkier\'). The EOS 5D is aimed to slot in between the EOS 20D and the EOS-1D professional digital SLR\'s, an important difference when compared to the latter is that the EOS 5D doesn\'t have any environmental seals. While Canon don\'t specifically refer to the EOS 5D as a \'professional\' digital SLR it will have obvious appeal to professionals who want a high quality digital SLR in a body lighter than the EOS-1D. It will also no doubt appeal to current EOS 20D owners (although lets hope they\'ve not bought too many EF-S lenses...) &amp;auml;&amp;euml;&lt;/p&gt;', '', 'Kelit Esse Cillum Dolore Eu 909 Fugiat', '', '');
INSERT INTO `oc_product_description_ebaypro` VALUES ('33', '1', 'Kelit Esse Cillum Dolore Eu 909 Fugiat', '&lt;div&gt;Imagine the advantages of going big without slowing down. The big 19&quot; 941BW monitor combines wide aspect ratio with fast pixel response time, for bigger images, more room to work and crisp motion. In addition, the exclusive MagicBright 2, MagicColor and MagicTune technologies help deliver the ideal image in every situation, while sleek, narrow bezels and adjustable stands deliver style just the way you want it. With the Samsung 941BW widescreen analog/digital LCD monitor, it\'s not hard to imagine.&lt;/div&gt;', '', 'Kelit Esse Cillum Dolore Eu 909 Fugiat', '', '');
INSERT INTO `oc_product_description_ebaypro` VALUES ('33', '2', '2018 秋冬装新款韩版羊毛大衣外套中长款女大码呢子大衣风衣无羊绒', '&lt;div&gt;Imagine the advantages of going big without slowing down. The big 19&quot; 941BW monitor combines wide aspect ratio with fast pixel response time, for bigger images, more room to work and crisp motion. In addition, the exclusive MagicBright 2, MagicColor and MagicTune technologies help deliver the ideal image in every situation, while sleek, narrow bezels and adjustable stands deliver style just the way you want it. With the Samsung 941BW widescreen analog/digital LCD monitor, it\'s not hard to imagine.&lt;/div&gt;', '', '2018 秋冬装新款韩版羊毛大衣外套中长款女大码呢子大衣风衣无羊绒', '', '');
INSERT INTO `oc_product_description_ebaypro` VALUES ('50', '2', '拍商品', '', '', '拍', '', '');
INSERT INTO `oc_product_description_ebaypro` VALUES ('50', '1', 'ebay', '', '', 'pro', '', '');
INSERT INTO `oc_product_description_ebaypro` VALUES ('51', '2', '翡翠手镯', '', '', '翡翠手镯', '', '');
INSERT INTO `oc_product_description_ebaypro` VALUES ('51', '1', '翡翠手镯', '', '', '翡翠手镯', '', '');
INSERT INTO `oc_product_description_ebaypro` VALUES ('52', '1', '翡翠手镯', '', '', '翡翠手镯', '', '');
INSERT INTO `oc_product_description_ebaypro` VALUES ('52', '2', '翡翠手镯', '', '', '翡翠手镯', '', '');
INSERT INTO `oc_product_description_ebaypro` VALUES ('53', '2', '翡翠项链', '', '', '翡翠项链', '', '');
INSERT INTO `oc_product_description_ebaypro` VALUES ('53', '1', '翡翠项链', '', '', '翡翠项链', '', '');
INSERT INTO `oc_product_description_ebaypro` VALUES ('54', '2', '翡翠项链', '', '', '翡翠项链', '', '');
INSERT INTO `oc_product_description_ebaypro` VALUES ('54', '1', '翡翠项链', '', '', '翡翠项链', '', '');
INSERT INTO `oc_product_description_ebaypro` VALUES ('55', '2', '翡翠手镯', '', '', '翡翠手镯', '', '');
INSERT INTO `oc_product_description_ebaypro` VALUES ('55', '1', '翡翠手镯', '', '', '翡翠手镯', '', '');
INSERT INTO `oc_product_description_ebaypro` VALUES ('76', '2', '镯', '', '', '翡翠', '', '');
INSERT INTO `oc_product_description_ebaypro` VALUES ('0', '2', '翡镯', '', '', '翡镯', '', '');
INSERT INTO `oc_product_description_ebaypro` VALUES ('0', '1', '翡翠手镯', '', '', '翡翠手镯', '', '');
INSERT INTO `oc_product_description_ebaypro` VALUES ('72', '2', '12321', '&lt;p&gt;123&lt;/p&gt;', '', '1231', '12321', '');
INSERT INTO `oc_product_description_ebaypro` VALUES ('72', '1', '1312112', '&lt;p&gt;111111&lt;/p&gt;', '', '111111', '', '');
INSERT INTO `oc_product_description_ebaypro` VALUES ('76', '1', 'ww', '', '', 'ww', '', '');
INSERT INTO `oc_product_description_ebaypro` VALUES ('60', '2', '大大的', '', '', '大大的', '', '');
INSERT INTO `oc_product_description_ebaypro` VALUES ('61', '2', '翡翠手镯4432', '', '', '翡翠手镯4432', '', '');
INSERT INTO `oc_product_description_ebaypro` VALUES ('61', '1', '翡翠手镯4432', '', '', '翡翠手镯4432', '', '');
INSERT INTO `oc_product_description_ebaypro` VALUES ('62', '2', '翡翠手镯11', '', '', '翡翠手镯11', '', '');
INSERT INTO `oc_product_description_ebaypro` VALUES ('62', '1', '翡翠手镯11', '', '', '翡翠手镯11', '', '');
INSERT INTO `oc_product_description_ebaypro` VALUES ('60', '1', 'big', '', '', 'big', '', '');
>>>>>>> 790b49e13c12789410af78d35dc87d3d392cacc9

-- ----------------------------
-- Table structure for oc_product_discount
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_discount`;
CREATE TABLE `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_discount_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=501 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_discount
-- ----------------------------
INSERT INTO `oc_product_discount` VALUES ('500', '42', '1', '30', '1', '66.0000', '2017-12-04', '2018-04-25');
INSERT INTO `oc_product_discount` VALUES ('499', '42', '1', '20', '1', '77.0000', '2017-12-04', '2018-03-23');
INSERT INTO `oc_product_discount` VALUES ('498', '42', '1', '10', '1', '88.0000', '2017-12-04', '2018-03-16');

-- ----------------------------
<<<<<<< HEAD
=======
-- Table structure for oc_product_discount_ebaypro
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_discount_ebaypro`;
CREATE TABLE `oc_product_discount_ebaypro` (
  `product_discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_discount_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=501 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_discount_ebaypro
-- ----------------------------
INSERT INTO `oc_product_discount_ebaypro` VALUES ('500', '42', '1', '30', '1', '66.0000', '2017-12-04', '2018-04-25');
INSERT INTO `oc_product_discount_ebaypro` VALUES ('499', '42', '1', '20', '1', '77.0000', '2017-12-04', '2018-03-23');
INSERT INTO `oc_product_discount_ebaypro` VALUES ('498', '42', '1', '10', '1', '88.0000', '2017-12-04', '2018-03-16');

-- ----------------------------
>>>>>>> 790b49e13c12789410af78d35dc87d3d392cacc9
-- Table structure for oc_product_ebaypro
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_ebaypro`;
CREATE TABLE `oc_product_ebaypro` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000' COMMENT '成交价',
  `fuprice` decimal(10,4) NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_ebaypro
-- ----------------------------
INSERT INTO `oc_product_ebaypro` VALUES ('51', 'product 2322', '', '', '', '', '', '', '', '10', '7', '', '0', '1', '999999.0000', '10.0000', '0', '0', '2018-09-19', '19.00000000', '2', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '0', '2018-09-19 10:26:29', '2018-09-19 10:26:29');
INSERT INTO `oc_product_ebaypro` VALUES ('52', 'product 2322', '', '', '', '', '', '', '', '10', '7', '', '0', '1', '999999.0000', '12.0000', '0', '0', '2018-09-19', '19.00000000', '2', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '0', '2018-09-19 10:29:15', '2018-09-19 10:29:15');
INSERT INTO `oc_product_ebaypro` VALUES ('53', 'product 2322', '', '', '', '', '', '', '', '10', '7', '', '0', '1', '999999.0000', '21.0000', '0', '0', '2018-09-19', '19.00000000', '2', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '0', '0', '2018-09-19 10:42:14', '2018-09-19 10:42:14');
INSERT INTO `oc_product_ebaypro` VALUES ('54', 'product 2322', '', '', '', '', '', '', '', '10', '7', '', '0', '1', '999999.0000', '12.0000', '0', '0', '2018-09-19', '19.00000000', '2', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '0', '0', '2018-09-19 10:42:45', '2018-09-19 10:42:45');
INSERT INTO `oc_product_ebaypro` VALUES ('55', '', '', '', '', '', '', '', '', '1', '7', '', '0', '1', '0.0000', '12.0000', '0', '0', '2018-09-19', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '0', '0', '2018-09-19 10:52:17', '2018-09-19 10:52:17');
INSERT INTO `oc_product_ebaypro` VALUES ('75', 'product 2322', '', '', '', '', '', '', '', '10', '7', '', '0', '1', '999999.0000', '12.0000', '0', '0', '2018-09-19', '19.00000000', '2', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '0', '0', '2018-09-19 16:41:39', '2018-09-19 16:41:39');
INSERT INTO `oc_product_ebaypro` VALUES ('57', '方法大声道撒旦', '', '', '', '', '', '', '', '1', '7', '', '0', '1', '0.0000', '121.0000', '0', '0', '2018-09-19', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '0', '2018-09-19 11:16:19', '2018-09-19 11:16:19');
INSERT INTO `oc_product_ebaypro` VALUES ('58', '11111', '', '', '', '', '', '', '', '1', '7', '', '0', '1', '1111.0000', '12.0000', '0', '0', '2018-09-19', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '0', '2018-09-19 11:43:56', '2018-09-19 11:43:56');
INSERT INTO `oc_product_ebaypro` VALUES ('76', '\\(^o^)/', '', '', '', '', '', '', '', '1', '8', '', '0', '1', '0.0000', '12.0000', '0', '0', '2018-09-22', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '0', '0', '2018-09-20 11:41:46', '2018-09-20 11:41:46');
INSERT INTO `oc_product_ebaypro` VALUES ('60', '232', '', '', '', '', '', '', '', '22', '8', '', '0', '1', '1010.0000', '21.0000', '0', '0', '2018-09-19', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '0', '2018-09-19 13:07:59', '2018-09-21 16:03:48');
INSERT INTO `oc_product_ebaypro` VALUES ('61', '\\(^o^)/4ee', '', '', '', '', '', '', '', '666', '7', '', '0', '1', '666.0000', '12.0000', '0', '0', '2018-09-19', '5.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '0', '0', '2018-09-19 13:27:05', '2018-09-19 13:27:05');
INSERT INTO `oc_product_ebaypro` VALUES ('62', '2345678', '', '', '', '', '', '', '', '12345678', '7', '', '0', '1', '123456780.0000', '12.0000', '0', '0', '2018-09-19', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '0', '0', '2018-09-19 14:58:59', '2018-09-19 14:58:59');
INSERT INTO `oc_product_ebaypro` VALUES ('63', '232', '', '', '', '', '', '', '', '22', '8', '', '0', '1', '1010.0000', '1.0000', '0', '0', '2018-09-19', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '0', '0', '2018-09-19 16:09:33', '2018-09-19 16:09:33');
INSERT INTO `oc_product_ebaypro` VALUES ('64', '232', '', '', '', '', '', '', '', '22', '8', '', '0', '1', '1010.0000', '2.0000', '0', '0', '2018-09-19', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '0', '0', '2018-09-19 16:10:52', '2018-09-19 16:10:52');
INSERT INTO `oc_product_ebaypro` VALUES ('65', '232', '', '', '', '', '', '', '', '22', '8', '', '0', '1', '1010.0000', '1.0000', '0', '0', '2018-09-19', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '0', '0', '2018-09-19 16:11:17', '2018-09-19 16:11:17');
INSERT INTO `oc_product_ebaypro` VALUES ('66', '232', '', '', '', '', '', '', '', '22', '8', '', '0', '1', '1010.0000', '12.0000', '0', '0', '2018-09-19', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '0', '0', '2018-09-19 16:11:58', '2018-09-19 16:11:58');
INSERT INTO `oc_product_ebaypro` VALUES ('67', '2345678', '', '', '', '', '', '', '', '12345678', '7', '', '0', '1', '123456780.0000', '12.0000', '0', '0', '2018-09-19', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '0', '0', '2018-09-19 16:12:14', '2018-09-19 16:12:14');
INSERT INTO `oc_product_ebaypro` VALUES ('68', '232', '', '', '', '', '', '', '', '22', '8', '', '0', '1', '1010.0000', '12.0000', '0', '0', '2018-09-19', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '0', '0', '2018-09-19 16:13:08', '2018-09-19 16:13:08');
INSERT INTO `oc_product_ebaypro` VALUES ('69', '232', '', '', '', '', '', '', '', '22', '8', '', '0', '1', '1010.0000', '12.0000', '0', '0', '2018-09-19', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '0', '0', '2018-09-19 16:14:45', '2018-09-19 16:14:45');
INSERT INTO `oc_product_ebaypro` VALUES ('70', '232', '', '', '', '', '', '', '', '22', '8', '', '0', '1', '1010.0000', '12.0000', '0', '0', '2018-09-19', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '0', '0', '2018-09-19 16:15:21', '2018-09-19 16:15:21');
INSERT INTO `oc_product_ebaypro` VALUES ('71', '232', '', '', '', '', '', '', '', '22', '8', '', '0', '1', '1010.0000', '12.0000', '0', '0', '2018-09-19', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '0', '0', '2018-09-19 16:15:56', '2018-09-19 16:15:56');
INSERT INTO `oc_product_ebaypro` VALUES ('72', '232', '', '', '', '', '', '', '', '22', '8', 'catalog/demo/product/product-1(1).png', '0', '1', '1010.0000', '12.0000', '0', '0', '2018-09-19', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '0', '2018-09-19 16:17:30', '2018-09-22 12:00:51');
INSERT INTO `oc_product_ebaypro` VALUES ('73', '232', '', '', '', '', '', '', '', '22', '8', '', '0', '1', '1010.0000', '12.0000', '0', '0', '2018-09-19', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '0', '0', '2018-09-19 16:17:42', '2018-09-19 16:17:42');
INSERT INTO `oc_product_ebaypro` VALUES ('74', '232', '', '', '', '', '', '', '', '22', '8', '', '0', '1', '1010.0000', '12.0000', '0', '0', '2018-09-19', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '0', '0', '2018-09-19 16:17:55', '2018-09-19 16:17:55');
INSERT INTO `oc_product_ebaypro` VALUES ('50', 'product 1112', '', '', '', '', '', '', '', '2147483647', '7', '', '0', '1', '999999999.0000', '12.0000', '0', '0', '2018-09-18', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '4', '2018-09-18 11:41:27', '2018-09-18 11:41:27');

-- ----------------------------
-- Table structure for oc_product_filter
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_filter`;
CREATE TABLE `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_filter
-- ----------------------------

-- ----------------------------
<<<<<<< HEAD
=======
-- Table structure for oc_product_filter_ebaypro
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_filter_ebaypro`;
CREATE TABLE `oc_product_filter_ebaypro` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_filter_ebaypro
-- ----------------------------

-- ----------------------------
>>>>>>> 790b49e13c12789410af78d35dc87d3d392cacc9
-- Table structure for oc_product_image
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_image`;
CREATE TABLE `oc_product_image` (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_image_id`),
  KEY `product_id` (`product_id`)
<<<<<<< HEAD
) ENGINE=MyISAM AUTO_INCREMENT=2673 DEFAULT CHARSET=utf8;
=======
) ENGINE=MyISAM AUTO_INCREMENT=2656 DEFAULT CHARSET=utf8;
>>>>>>> 790b49e13c12789410af78d35dc87d3d392cacc9

-- ----------------------------
-- Records of oc_product_image
-- ----------------------------
<<<<<<< HEAD
INSERT INTO `oc_product_image` VALUES ('2672', '47', 'catalog/demo/product/product-8.png', '0');
=======
INSERT INTO `oc_product_image` VALUES ('2321', '47', 'catalog/demo/product/product-10.png', '0');
>>>>>>> 790b49e13c12789410af78d35dc87d3d392cacc9
INSERT INTO `oc_product_image` VALUES ('2035', '28', 'catalog/demo/product/product-3.png', '0');
INSERT INTO `oc_product_image` VALUES ('2351', '41', 'catalog/demo/product/product-7.png', '0');
INSERT INTO `oc_product_image` VALUES ('2001', '36', 'catalog/demo/product/product-5.png', '0');
INSERT INTO `oc_product_image` VALUES ('2000', '36', 'catalog/demo/product/product-2.png', '0');
INSERT INTO `oc_product_image` VALUES ('2005', '34', 'catalog/demo/product/product-8.png', '0');
INSERT INTO `oc_product_image` VALUES ('2004', '34', 'catalog/demo/product/product-10.png', '0');
INSERT INTO `oc_product_image` VALUES ('2011', '32', 'catalog/demo/product/product-5.png', '0');
INSERT INTO `oc_product_image` VALUES ('2010', '32', 'catalog/demo/product/product-3.png', '0');
INSERT INTO `oc_product_image` VALUES ('2009', '32', 'catalog/demo/product/product-2.png', '0');
INSERT INTO `oc_product_image` VALUES ('2425', '43', 'catalog/demo/product/product-9.png', '0');
INSERT INTO `oc_product_image` VALUES ('2424', '43', 'catalog/demo/product/product-5.png', '0');
INSERT INTO `oc_product_image` VALUES ('1974', '44', 'catalog/demo/product/product-8.png', '0');
INSERT INTO `oc_product_image` VALUES ('1973', '44', 'catalog/demo/product/product-2.png', '0');
INSERT INTO `oc_product_image` VALUES ('1977', '45', 'catalog/demo/product/product-8.png', '0');
INSERT INTO `oc_product_image` VALUES ('1976', '45', 'catalog/demo/product/product-2.png', '0');
INSERT INTO `oc_product_image` VALUES ('1986', '31', 'catalog/demo/product/product-6.png', '0');
INSERT INTO `oc_product_image` VALUES ('1985', '31', 'catalog/demo/product/product-1.png', '0');
INSERT INTO `oc_product_image` VALUES ('1988', '29', 'catalog/demo/product/product-9.png', '0');
INSERT INTO `oc_product_image` VALUES ('1995', '46', 'catalog/demo/product/product-9.png', '0');
INSERT INTO `oc_product_image` VALUES ('1994', '46', 'catalog/demo/product/product-7.png', '0');
INSERT INTO `oc_product_image` VALUES ('2653', '48', 'catalog/demo/product/product-1.png', '0');
INSERT INTO `oc_product_image` VALUES ('2652', '48', 'catalog/demo/product/product-3.png', '0');
<<<<<<< HEAD
INSERT INTO `oc_product_image` VALUES ('2671', '47', 'catalog/demo/product/product-10.png', '0');
=======
INSERT INTO `oc_product_image` VALUES ('2320', '47', 'catalog/demo/product/product-8.png', '0');
>>>>>>> 790b49e13c12789410af78d35dc87d3d392cacc9
INSERT INTO `oc_product_image` VALUES ('2034', '28', 'catalog/demo/product/product-7.png', '0');
INSERT INTO `oc_product_image` VALUES ('2350', '41', 'catalog/demo/product/product-1.png', '0');
INSERT INTO `oc_product_image` VALUES ('2651', '48', 'catalog/demo/product/product-11.png', '0');
INSERT INTO `oc_product_image` VALUES ('1999', '36', 'catalog/demo/product/product-6.png', '0');
INSERT INTO `oc_product_image` VALUES ('1998', '36', 'catalog/demo/product/product-8.png', '0');
INSERT INTO `oc_product_image` VALUES ('2003', '34', 'catalog/demo/product/product-7.png', '0');
INSERT INTO `oc_product_image` VALUES ('2002', '34', 'catalog/demo/product/product-1.png', '0');
INSERT INTO `oc_product_image` VALUES ('2008', '32', 'catalog/demo/product/product-5.png', '0');
INSERT INTO `oc_product_image` VALUES ('2007', '32', 'catalog/demo/product/product-9.png', '0');
INSERT INTO `oc_product_image` VALUES ('2006', '32', 'catalog/demo/product/product-8.png', '0');
INSERT INTO `oc_product_image` VALUES ('2423', '43', 'catalog/demo/product/product-1.png', '0');
INSERT INTO `oc_product_image` VALUES ('2422', '43', 'catalog/demo/product/product-3.png', '0');
INSERT INTO `oc_product_image` VALUES ('1972', '44', 'catalog/demo/product/product-1.png', '0');
INSERT INTO `oc_product_image` VALUES ('1975', '45', 'catalog/demo/product/product-6.png', '0');
INSERT INTO `oc_product_image` VALUES ('1984', '31', 'catalog/demo/product/product-4.png', '0');
INSERT INTO `oc_product_image` VALUES ('1983', '31', 'catalog/demo/product/product-3.png', '0');
INSERT INTO `oc_product_image` VALUES ('1987', '29', 'catalog/demo/product/product-3.png', '0');
INSERT INTO `oc_product_image` VALUES ('1993', '46', 'catalog/demo/product/product-3.png', '0');
INSERT INTO `oc_product_image` VALUES ('1992', '46', 'catalog/demo/product/product-8.png', '0');
INSERT INTO `oc_product_image` VALUES ('2650', '49', 'catalog/demo/product/product-11.png', '0');
INSERT INTO `oc_product_image` VALUES ('2649', '49', 'catalog/demo/product/product-6.png', '0');
INSERT INTO `oc_product_image` VALUES ('2648', '49', 'catalog/demo/product/product-3.png', '0');
INSERT INTO `oc_product_image` VALUES ('2647', '49', 'catalog/demo/product/product-10.png', '0');
INSERT INTO `oc_product_image` VALUES ('2646', '49', 'catalog/demo/product/product-8.png', '0');
INSERT INTO `oc_product_image` VALUES ('2645', '49', 'catalog/demo/product/product-6.png', '0');
INSERT INTO `oc_product_image` VALUES ('2644', '42', 'catalog/demo/product/product-2.png', '0');
INSERT INTO `oc_product_image` VALUES ('2643', '42', 'catalog/demo/product/product-10.png', '0');
INSERT INTO `oc_product_image` VALUES ('2642', '42', 'catalog/demo/product/product-6.png', '0');
INSERT INTO `oc_product_image` VALUES ('2628', '40', 'catalog/demo/product/product-10.png', '0');
INSERT INTO `oc_product_image` VALUES ('2627', '40', 'catalog/demo/product/product-5.png', '0');
INSERT INTO `oc_product_image` VALUES ('2626', '40', 'catalog/demo/product/product-3.png', '0');
INSERT INTO `oc_product_image` VALUES ('2625', '40', 'catalog/demo/product/product-1.png', '0');
INSERT INTO `oc_product_image` VALUES ('2639', '30', 'catalog/demo/product/product-2.png', '0');
INSERT INTO `oc_product_image` VALUES ('2641', '42', 'catalog/demo/product/product-3.png', '0');
INSERT INTO `oc_product_image` VALUES ('2640', '30', 'catalog/demo/product/product-8.png', '0');
INSERT INTO `oc_product_image` VALUES ('2637', '30', 'catalog/demo/product/product-3.png', '0');
INSERT INTO `oc_product_image` VALUES ('2638', '30', 'catalog/demo/product/product-2.png', '0');
<<<<<<< HEAD
INSERT INTO `oc_product_image` VALUES ('2666', '73', 'catalog/demo/product/product-4.png', '2');
INSERT INTO `oc_product_image` VALUES ('2665', '73', 'catalog/demo/product/product-10.png', '1');
INSERT INTO `oc_product_image` VALUES ('2670', '74', 'catalog/demo/product/product-1.png', '0');
INSERT INTO `oc_product_image` VALUES ('2669', '74', 'catalog/demo/product/product-3.png', '0');
INSERT INTO `oc_product_image` VALUES ('2658', '75', 'catalog/demo/product/product-10.png', '0');
INSERT INTO `oc_product_image` VALUES ('2659', '76', 'catalog/demo/product/product-10.png', '0');
INSERT INTO `oc_product_image` VALUES ('2660', '77', 'catalog/demo/product/product-10.png', '0');
INSERT INTO `oc_product_image` VALUES ('2661', '78', 'catalog/demo/product/product-10.png', '0');
INSERT INTO `oc_product_image` VALUES ('2662', '79', 'catalog/demo/product/product-10.png', '0');
=======
INSERT INTO `oc_product_image` VALUES ('2654', '73', 'catalog/demo/product/product-1(1).png', '1');
INSERT INTO `oc_product_image` VALUES ('2655', '73', 'catalog/demo/product/product-1(1).png', '2');

-- ----------------------------
-- Table structure for oc_product_image_ebaypro
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_image_ebaypro`;
CREATE TABLE `oc_product_image_ebaypro` (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_image_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2653 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_image_ebaypro
-- ----------------------------
INSERT INTO `oc_product_image_ebaypro` VALUES ('2321', '47', 'catalog/demo/product/product-10.png', '0');
INSERT INTO `oc_product_image_ebaypro` VALUES ('2035', '28', 'catalog/demo/product/product-3.png', '0');
INSERT INTO `oc_product_image_ebaypro` VALUES ('2351', '41', 'catalog/demo/product/product-7.png', '0');
INSERT INTO `oc_product_image_ebaypro` VALUES ('2001', '36', 'catalog/demo/product/product-5.png', '0');
INSERT INTO `oc_product_image_ebaypro` VALUES ('2000', '36', 'catalog/demo/product/product-2.png', '0');
INSERT INTO `oc_product_image_ebaypro` VALUES ('2005', '34', 'catalog/demo/product/product-8.png', '0');
INSERT INTO `oc_product_image_ebaypro` VALUES ('2004', '34', 'catalog/demo/product/product-10.png', '0');
INSERT INTO `oc_product_image_ebaypro` VALUES ('2011', '32', 'catalog/demo/product/product-5.png', '0');
INSERT INTO `oc_product_image_ebaypro` VALUES ('2010', '32', 'catalog/demo/product/product-3.png', '0');
INSERT INTO `oc_product_image_ebaypro` VALUES ('2009', '32', 'catalog/demo/product/product-2.png', '0');
INSERT INTO `oc_product_image_ebaypro` VALUES ('2425', '43', 'catalog/demo/product/product-9.png', '0');
INSERT INTO `oc_product_image_ebaypro` VALUES ('2424', '43', 'catalog/demo/product/product-5.png', '0');
INSERT INTO `oc_product_image_ebaypro` VALUES ('1974', '44', 'catalog/demo/product/product-8.png', '0');
INSERT INTO `oc_product_image_ebaypro` VALUES ('1973', '44', 'catalog/demo/product/product-2.png', '0');
INSERT INTO `oc_product_image_ebaypro` VALUES ('1977', '45', 'catalog/demo/product/product-8.png', '0');
INSERT INTO `oc_product_image_ebaypro` VALUES ('1976', '45', 'catalog/demo/product/product-2.png', '0');
INSERT INTO `oc_product_image_ebaypro` VALUES ('1986', '31', 'catalog/demo/product/product-6.png', '0');
INSERT INTO `oc_product_image_ebaypro` VALUES ('1985', '31', 'catalog/demo/product/product-1.png', '0');
INSERT INTO `oc_product_image_ebaypro` VALUES ('1988', '29', 'catalog/demo/product/product-9.png', '0');
INSERT INTO `oc_product_image_ebaypro` VALUES ('1995', '46', 'catalog/demo/product/product-9.png', '0');
INSERT INTO `oc_product_image_ebaypro` VALUES ('1994', '46', 'catalog/demo/product/product-7.png', '0');
INSERT INTO `oc_product_image_ebaypro` VALUES ('1991', '48', 'catalog/demo/product/product-5.png', '0');
INSERT INTO `oc_product_image_ebaypro` VALUES ('1990', '48', 'catalog/demo/product/product-7.png', '0');
INSERT INTO `oc_product_image_ebaypro` VALUES ('2320', '47', 'catalog/demo/product/product-8.png', '0');
INSERT INTO `oc_product_image_ebaypro` VALUES ('2034', '28', 'catalog/demo/product/product-7.png', '0');
INSERT INTO `oc_product_image_ebaypro` VALUES ('2350', '41', 'catalog/demo/product/product-1.png', '0');
INSERT INTO `oc_product_image_ebaypro` VALUES ('1989', '48', 'catalog/demo/product/product-1.png', '0');
INSERT INTO `oc_product_image_ebaypro` VALUES ('1999', '36', 'catalog/demo/product/product-6.png', '0');
INSERT INTO `oc_product_image_ebaypro` VALUES ('1998', '36', 'catalog/demo/product/product-8.png', '0');
INSERT INTO `oc_product_image_ebaypro` VALUES ('2003', '34', 'catalog/demo/product/product-7.png', '0');
INSERT INTO `oc_product_image_ebaypro` VALUES ('2002', '34', 'catalog/demo/product/product-1.png', '0');
INSERT INTO `oc_product_image_ebaypro` VALUES ('2008', '32', 'catalog/demo/product/product-5.png', '0');
INSERT INTO `oc_product_image_ebaypro` VALUES ('2007', '32', 'catalog/demo/product/product-9.png', '0');
INSERT INTO `oc_product_image_ebaypro` VALUES ('2006', '32', 'catalog/demo/product/product-8.png', '0');
INSERT INTO `oc_product_image_ebaypro` VALUES ('2423', '43', 'catalog/demo/product/product-1.png', '0');
INSERT INTO `oc_product_image_ebaypro` VALUES ('2422', '43', 'catalog/demo/product/product-3.png', '0');
INSERT INTO `oc_product_image_ebaypro` VALUES ('1972', '44', 'catalog/demo/product/product-1.png', '0');
INSERT INTO `oc_product_image_ebaypro` VALUES ('1975', '45', 'catalog/demo/product/product-6.png', '0');
INSERT INTO `oc_product_image_ebaypro` VALUES ('1984', '31', 'catalog/demo/product/product-4.png', '0');
INSERT INTO `oc_product_image_ebaypro` VALUES ('1983', '31', 'catalog/demo/product/product-3.png', '0');
INSERT INTO `oc_product_image_ebaypro` VALUES ('1987', '29', 'catalog/demo/product/product-3.png', '0');
INSERT INTO `oc_product_image_ebaypro` VALUES ('1993', '46', 'catalog/demo/product/product-3.png', '0');
INSERT INTO `oc_product_image_ebaypro` VALUES ('1992', '46', 'catalog/demo/product/product-8.png', '0');
INSERT INTO `oc_product_image_ebaypro` VALUES ('2650', '49', 'catalog/demo/product/product-11.png', '0');
INSERT INTO `oc_product_image_ebaypro` VALUES ('2649', '49', 'catalog/demo/product/product-6.png', '0');
INSERT INTO `oc_product_image_ebaypro` VALUES ('2648', '49', 'catalog/demo/product/product-3.png', '0');
INSERT INTO `oc_product_image_ebaypro` VALUES ('2647', '49', 'catalog/demo/product/product-10.png', '0');
INSERT INTO `oc_product_image_ebaypro` VALUES ('2646', '49', 'catalog/demo/product/product-8.png', '0');
INSERT INTO `oc_product_image_ebaypro` VALUES ('2645', '49', 'catalog/demo/product/product-6.png', '0');
INSERT INTO `oc_product_image_ebaypro` VALUES ('2644', '42', 'catalog/demo/product/product-2.png', '0');
INSERT INTO `oc_product_image_ebaypro` VALUES ('2643', '42', 'catalog/demo/product/product-10.png', '0');
INSERT INTO `oc_product_image_ebaypro` VALUES ('2642', '42', 'catalog/demo/product/product-6.png', '0');
INSERT INTO `oc_product_image_ebaypro` VALUES ('2628', '40', 'catalog/demo/product/product-10.png', '0');
INSERT INTO `oc_product_image_ebaypro` VALUES ('2627', '40', 'catalog/demo/product/product-5.png', '0');
INSERT INTO `oc_product_image_ebaypro` VALUES ('2626', '40', 'catalog/demo/product/product-3.png', '0');
INSERT INTO `oc_product_image_ebaypro` VALUES ('2625', '40', 'catalog/demo/product/product-1.png', '0');
INSERT INTO `oc_product_image_ebaypro` VALUES ('2639', '30', 'catalog/demo/product/product-2.png', '0');
INSERT INTO `oc_product_image_ebaypro` VALUES ('2641', '42', 'catalog/demo/product/product-3.png', '0');
INSERT INTO `oc_product_image_ebaypro` VALUES ('2640', '30', 'catalog/demo/product/product-8.png', '0');
INSERT INTO `oc_product_image_ebaypro` VALUES ('2637', '30', 'catalog/demo/product/product-3.png', '0');
INSERT INTO `oc_product_image_ebaypro` VALUES ('2638', '30', 'catalog/demo/product/product-2.png', '0');
INSERT INTO `oc_product_image_ebaypro` VALUES ('2652', '72', 'catalog/demo/product/product-11.png', '0');
>>>>>>> 790b49e13c12789410af78d35dc87d3d392cacc9

-- ----------------------------
-- Table structure for oc_product_option
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_option`;
CREATE TABLE `oc_product_option` (
  `product_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=233 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_option
-- ----------------------------
INSERT INTO `oc_product_option` VALUES ('224', '42', '11', '', '1');
INSERT INTO `oc_product_option` VALUES ('225', '47', '12', '2011-04-22', '1');
INSERT INTO `oc_product_option` VALUES ('232', '30', '10', '2017-12-04 15:26', '0');
INSERT INTO `oc_product_option` VALUES ('231', '30', '8', '2017-12-15', '0');
INSERT INTO `oc_product_option` VALUES ('230', '30', '12', '2017-12-23', '1');
INSERT INTO `oc_product_option` VALUES ('229', '30', '11', '', '1');
INSERT INTO `oc_product_option` VALUES ('228', '30', '1', '', '1');
INSERT INTO `oc_product_option` VALUES ('227', '30', '2', '', '1');
INSERT INTO `oc_product_option` VALUES ('226', '30', '5', '', '1');

-- ----------------------------
<<<<<<< HEAD
=======
-- Table structure for oc_product_option_ebaypro
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_option_ebaypro`;
CREATE TABLE `oc_product_option_ebaypro` (
  `product_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=233 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_option_ebaypro
-- ----------------------------
INSERT INTO `oc_product_option_ebaypro` VALUES ('224', '42', '11', '', '1');
INSERT INTO `oc_product_option_ebaypro` VALUES ('225', '47', '12', '2011-04-22', '1');
INSERT INTO `oc_product_option_ebaypro` VALUES ('232', '30', '10', '2017-12-04 15:26', '0');
INSERT INTO `oc_product_option_ebaypro` VALUES ('231', '30', '8', '2017-12-15', '0');
INSERT INTO `oc_product_option_ebaypro` VALUES ('230', '30', '12', '2017-12-23', '1');
INSERT INTO `oc_product_option_ebaypro` VALUES ('229', '30', '11', '', '1');
INSERT INTO `oc_product_option_ebaypro` VALUES ('228', '30', '1', '', '1');
INSERT INTO `oc_product_option_ebaypro` VALUES ('227', '30', '2', '', '1');
INSERT INTO `oc_product_option_ebaypro` VALUES ('226', '30', '5', '', '1');

-- ----------------------------
>>>>>>> 790b49e13c12789410af78d35dc87d3d392cacc9
-- Table structure for oc_product_option_value
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_option_value`;
CREATE TABLE `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL,
  PRIMARY KEY (`product_option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_option_value
-- ----------------------------
INSERT INTO `oc_product_option_value` VALUES ('23', '228', '30', '1', '32', '40', '1', '320.0000', '+', '20', '+', '0.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('22', '228', '30', '1', '31', '30', '1', '20.0000', '+', '10', '+', '0.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('21', '228', '30', '1', '43', '20', '1', '10.0000', '+', '10', '+', '0.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('20', '227', '30', '2', '45', '99', '1', '25.0000', '+', '100', '+', '0.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('19', '227', '30', '2', '44', '66', '1', '23.0000', '+', '100', '+', '0.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('18', '227', '30', '2', '24', '22', '1', '22.0000', '+', '100', '+', '0.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('17', '227', '30', '2', '23', '10', '1', '0.0000', '+', '0', '+', '0.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('14', '224', '42', '11', '48', '15', '1', '15.0000', '+', '0', '+', '0.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('13', '224', '42', '11', '47', '10', '1', '10.0000', '+', '0', '+', '0.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('12', '224', '42', '11', '46', '0', '1', '5.0000', '+', '0', '+', '0.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('16', '226', '30', '5', '40', '5', '1', '0.0000', '+', '0', '+', '0.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('15', '226', '30', '5', '39', '2', '1', '0.0000', '+', '0', '+', '0.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('24', '229', '30', '11', '48', '20', '1', '20.0000', '+', '20', '+', '20.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('25', '229', '30', '11', '47', '30', '1', '20.0000', '+', '20', '+', '20.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('26', '229', '30', '11', '46', '30', '1', '30.0000', '+', '30', '+', '30.00000000', '+');

-- ----------------------------
<<<<<<< HEAD
=======
-- Table structure for oc_product_option_value_ebaypro
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_option_value_ebaypro`;
CREATE TABLE `oc_product_option_value_ebaypro` (
  `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL,
  PRIMARY KEY (`product_option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_option_value_ebaypro
-- ----------------------------
INSERT INTO `oc_product_option_value_ebaypro` VALUES ('23', '228', '30', '1', '32', '40', '1', '320.0000', '+', '20', '+', '0.00000000', '+');
INSERT INTO `oc_product_option_value_ebaypro` VALUES ('22', '228', '30', '1', '31', '30', '1', '20.0000', '+', '10', '+', '0.00000000', '+');
INSERT INTO `oc_product_option_value_ebaypro` VALUES ('21', '228', '30', '1', '43', '20', '1', '10.0000', '+', '10', '+', '0.00000000', '+');
INSERT INTO `oc_product_option_value_ebaypro` VALUES ('20', '227', '30', '2', '45', '99', '1', '25.0000', '+', '100', '+', '0.00000000', '+');
INSERT INTO `oc_product_option_value_ebaypro` VALUES ('19', '227', '30', '2', '44', '66', '1', '23.0000', '+', '100', '+', '0.00000000', '+');
INSERT INTO `oc_product_option_value_ebaypro` VALUES ('18', '227', '30', '2', '24', '22', '1', '22.0000', '+', '100', '+', '0.00000000', '+');
INSERT INTO `oc_product_option_value_ebaypro` VALUES ('17', '227', '30', '2', '23', '10', '1', '0.0000', '+', '0', '+', '0.00000000', '+');
INSERT INTO `oc_product_option_value_ebaypro` VALUES ('14', '224', '42', '11', '48', '15', '1', '15.0000', '+', '0', '+', '0.00000000', '+');
INSERT INTO `oc_product_option_value_ebaypro` VALUES ('13', '224', '42', '11', '47', '10', '1', '10.0000', '+', '0', '+', '0.00000000', '+');
INSERT INTO `oc_product_option_value_ebaypro` VALUES ('12', '224', '42', '11', '46', '0', '1', '5.0000', '+', '0', '+', '0.00000000', '+');
INSERT INTO `oc_product_option_value_ebaypro` VALUES ('16', '226', '30', '5', '40', '5', '1', '0.0000', '+', '0', '+', '0.00000000', '+');
INSERT INTO `oc_product_option_value_ebaypro` VALUES ('15', '226', '30', '5', '39', '2', '1', '0.0000', '+', '0', '+', '0.00000000', '+');
INSERT INTO `oc_product_option_value_ebaypro` VALUES ('24', '229', '30', '11', '48', '20', '1', '20.0000', '+', '20', '+', '20.00000000', '+');
INSERT INTO `oc_product_option_value_ebaypro` VALUES ('25', '229', '30', '11', '47', '30', '1', '20.0000', '+', '20', '+', '20.00000000', '+');
INSERT INTO `oc_product_option_value_ebaypro` VALUES ('26', '229', '30', '11', '46', '30', '1', '30.0000', '+', '30', '+', '30.00000000', '+');

-- ----------------------------
>>>>>>> 790b49e13c12789410af78d35dc87d3d392cacc9
-- Table structure for oc_product_recurring
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_recurring`;
CREATE TABLE `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_recurring
-- ----------------------------

-- ----------------------------
<<<<<<< HEAD
=======
-- Table structure for oc_product_recurring_ebaypro
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_recurring_ebaypro`;
CREATE TABLE `oc_product_recurring_ebaypro` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_recurring_ebaypro
-- ----------------------------

-- ----------------------------
>>>>>>> 790b49e13c12789410af78d35dc87d3d392cacc9
-- Table structure for oc_product_related
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_related`;
CREATE TABLE `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_related
-- ----------------------------
INSERT INTO `oc_product_related` VALUES ('40', '42');
INSERT INTO `oc_product_related` VALUES ('41', '42');
INSERT INTO `oc_product_related` VALUES ('42', '40');
INSERT INTO `oc_product_related` VALUES ('42', '41');

-- ----------------------------
<<<<<<< HEAD
=======
-- Table structure for oc_product_related_ebaypro
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_related_ebaypro`;
CREATE TABLE `oc_product_related_ebaypro` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_related_ebaypro
-- ----------------------------
INSERT INTO `oc_product_related_ebaypro` VALUES ('40', '42');
INSERT INTO `oc_product_related_ebaypro` VALUES ('41', '42');
INSERT INTO `oc_product_related_ebaypro` VALUES ('42', '40');
INSERT INTO `oc_product_related_ebaypro` VALUES ('42', '41');

-- ----------------------------
>>>>>>> 790b49e13c12789410af78d35dc87d3d392cacc9
-- Table structure for oc_product_reward
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_reward`;
CREATE TABLE `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_reward_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_reward
-- ----------------------------

-- ----------------------------
<<<<<<< HEAD
=======
-- Table structure for oc_product_reward_ebaypro
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_reward_ebaypro`;
CREATE TABLE `oc_product_reward_ebaypro` (
  `product_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_reward_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_reward_ebaypro
-- ----------------------------

-- ----------------------------
>>>>>>> 790b49e13c12789410af78d35dc87d3d392cacc9
-- Table structure for oc_product_special
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_special`;
CREATE TABLE `oc_product_special` (
  `product_special_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_special_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=469 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_special
-- ----------------------------
INSERT INTO `oc_product_special` VALUES ('468', '42', '1', '1', '199.0000', '0000-00-00', '0000-00-00');
INSERT INTO `oc_product_special` VALUES ('467', '30', '1', '2', '129.0000', '0000-00-00', '0000-00-00');
INSERT INTO `oc_product_special` VALUES ('466', '30', '1', '1', '109.0000', '0000-00-00', '0000-00-00');
INSERT INTO `oc_product_special` VALUES ('445', '43', '1', '0', '599.0000', '2017-11-30', '2018-04-01');

-- ----------------------------
<<<<<<< HEAD
=======
-- Table structure for oc_product_special_ebaypro
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_special_ebaypro`;
CREATE TABLE `oc_product_special_ebaypro` (
  `product_special_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_special_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=469 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_special_ebaypro
-- ----------------------------
INSERT INTO `oc_product_special_ebaypro` VALUES ('468', '42', '1', '1', '199.0000', '0000-00-00', '0000-00-00');
INSERT INTO `oc_product_special_ebaypro` VALUES ('467', '30', '1', '2', '129.0000', '0000-00-00', '0000-00-00');
INSERT INTO `oc_product_special_ebaypro` VALUES ('466', '30', '1', '1', '109.0000', '0000-00-00', '0000-00-00');
INSERT INTO `oc_product_special_ebaypro` VALUES ('445', '43', '1', '0', '599.0000', '2017-11-30', '2018-04-01');

-- ----------------------------
>>>>>>> 790b49e13c12789410af78d35dc87d3d392cacc9
-- Table structure for oc_product_to_category
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_to_category`;
CREATE TABLE `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_to_category
-- ----------------------------
INSERT INTO `oc_product_to_category` VALUES ('0', '59');
INSERT INTO `oc_product_to_category` VALUES ('0', '60');
INSERT INTO `oc_product_to_category` VALUES ('0', '61');
INSERT INTO `oc_product_to_category` VALUES ('28', '17');
INSERT INTO `oc_product_to_category` VALUES ('28', '24');
INSERT INTO `oc_product_to_category` VALUES ('28', '26');
INSERT INTO `oc_product_to_category` VALUES ('28', '27');
INSERT INTO `oc_product_to_category` VALUES ('28', '29');
INSERT INTO `oc_product_to_category` VALUES ('28', '30');
INSERT INTO `oc_product_to_category` VALUES ('28', '31');
INSERT INTO `oc_product_to_category` VALUES ('28', '32');
INSERT INTO `oc_product_to_category` VALUES ('28', '33');
INSERT INTO `oc_product_to_category` VALUES ('28', '35');
INSERT INTO `oc_product_to_category` VALUES ('28', '36');
INSERT INTO `oc_product_to_category` VALUES ('28', '39');
INSERT INTO `oc_product_to_category` VALUES ('28', '45');
INSERT INTO `oc_product_to_category` VALUES ('28', '46');
INSERT INTO `oc_product_to_category` VALUES ('28', '57');
INSERT INTO `oc_product_to_category` VALUES ('29', '17');
INSERT INTO `oc_product_to_category` VALUES ('29', '24');
INSERT INTO `oc_product_to_category` VALUES ('29', '26');
INSERT INTO `oc_product_to_category` VALUES ('29', '27');
INSERT INTO `oc_product_to_category` VALUES ('29', '29');
INSERT INTO `oc_product_to_category` VALUES ('29', '30');
INSERT INTO `oc_product_to_category` VALUES ('29', '31');
INSERT INTO `oc_product_to_category` VALUES ('29', '32');
INSERT INTO `oc_product_to_category` VALUES ('29', '33');
INSERT INTO `oc_product_to_category` VALUES ('29', '35');
INSERT INTO `oc_product_to_category` VALUES ('29', '36');
INSERT INTO `oc_product_to_category` VALUES ('29', '39');
INSERT INTO `oc_product_to_category` VALUES ('29', '45');
INSERT INTO `oc_product_to_category` VALUES ('29', '46');
INSERT INTO `oc_product_to_category` VALUES ('29', '57');
INSERT INTO `oc_product_to_category` VALUES ('30', '17');
INSERT INTO `oc_product_to_category` VALUES ('30', '24');
INSERT INTO `oc_product_to_category` VALUES ('30', '26');
INSERT INTO `oc_product_to_category` VALUES ('30', '27');
INSERT INTO `oc_product_to_category` VALUES ('30', '29');
INSERT INTO `oc_product_to_category` VALUES ('30', '30');
INSERT INTO `oc_product_to_category` VALUES ('30', '31');
INSERT INTO `oc_product_to_category` VALUES ('30', '32');
INSERT INTO `oc_product_to_category` VALUES ('30', '33');
INSERT INTO `oc_product_to_category` VALUES ('30', '35');
INSERT INTO `oc_product_to_category` VALUES ('30', '36');
INSERT INTO `oc_product_to_category` VALUES ('30', '39');
INSERT INTO `oc_product_to_category` VALUES ('30', '45');
INSERT INTO `oc_product_to_category` VALUES ('30', '46');
INSERT INTO `oc_product_to_category` VALUES ('30', '57');
INSERT INTO `oc_product_to_category` VALUES ('31', '17');
INSERT INTO `oc_product_to_category` VALUES ('31', '24');
INSERT INTO `oc_product_to_category` VALUES ('31', '26');
INSERT INTO `oc_product_to_category` VALUES ('31', '27');
INSERT INTO `oc_product_to_category` VALUES ('31', '29');
INSERT INTO `oc_product_to_category` VALUES ('31', '30');
INSERT INTO `oc_product_to_category` VALUES ('31', '31');
INSERT INTO `oc_product_to_category` VALUES ('31', '32');
INSERT INTO `oc_product_to_category` VALUES ('31', '33');
INSERT INTO `oc_product_to_category` VALUES ('31', '35');
INSERT INTO `oc_product_to_category` VALUES ('31', '36');
INSERT INTO `oc_product_to_category` VALUES ('31', '39');
INSERT INTO `oc_product_to_category` VALUES ('31', '45');
INSERT INTO `oc_product_to_category` VALUES ('31', '46');
INSERT INTO `oc_product_to_category` VALUES ('31', '57');
INSERT INTO `oc_product_to_category` VALUES ('32', '17');
INSERT INTO `oc_product_to_category` VALUES ('32', '24');
INSERT INTO `oc_product_to_category` VALUES ('32', '26');
INSERT INTO `oc_product_to_category` VALUES ('32', '27');
INSERT INTO `oc_product_to_category` VALUES ('32', '29');
INSERT INTO `oc_product_to_category` VALUES ('32', '30');
INSERT INTO `oc_product_to_category` VALUES ('32', '31');
INSERT INTO `oc_product_to_category` VALUES ('32', '32');
INSERT INTO `oc_product_to_category` VALUES ('32', '33');
INSERT INTO `oc_product_to_category` VALUES ('32', '35');
INSERT INTO `oc_product_to_category` VALUES ('32', '36');
INSERT INTO `oc_product_to_category` VALUES ('32', '39');
INSERT INTO `oc_product_to_category` VALUES ('32', '45');
INSERT INTO `oc_product_to_category` VALUES ('32', '46');
INSERT INTO `oc_product_to_category` VALUES ('32', '57');
INSERT INTO `oc_product_to_category` VALUES ('33', '17');
INSERT INTO `oc_product_to_category` VALUES ('33', '24');
INSERT INTO `oc_product_to_category` VALUES ('33', '26');
INSERT INTO `oc_product_to_category` VALUES ('33', '27');
INSERT INTO `oc_product_to_category` VALUES ('33', '29');
INSERT INTO `oc_product_to_category` VALUES ('33', '30');
INSERT INTO `oc_product_to_category` VALUES ('33', '31');
INSERT INTO `oc_product_to_category` VALUES ('33', '32');
INSERT INTO `oc_product_to_category` VALUES ('33', '33');
INSERT INTO `oc_product_to_category` VALUES ('33', '35');
INSERT INTO `oc_product_to_category` VALUES ('33', '36');
INSERT INTO `oc_product_to_category` VALUES ('33', '39');
INSERT INTO `oc_product_to_category` VALUES ('33', '45');
INSERT INTO `oc_product_to_category` VALUES ('33', '46');
INSERT INTO `oc_product_to_category` VALUES ('33', '57');
INSERT INTO `oc_product_to_category` VALUES ('34', '17');
INSERT INTO `oc_product_to_category` VALUES ('34', '24');
INSERT INTO `oc_product_to_category` VALUES ('34', '26');
INSERT INTO `oc_product_to_category` VALUES ('34', '27');
INSERT INTO `oc_product_to_category` VALUES ('34', '29');
INSERT INTO `oc_product_to_category` VALUES ('34', '30');
INSERT INTO `oc_product_to_category` VALUES ('34', '31');
INSERT INTO `oc_product_to_category` VALUES ('34', '32');
INSERT INTO `oc_product_to_category` VALUES ('34', '33');
INSERT INTO `oc_product_to_category` VALUES ('34', '35');
INSERT INTO `oc_product_to_category` VALUES ('34', '36');
INSERT INTO `oc_product_to_category` VALUES ('34', '39');
INSERT INTO `oc_product_to_category` VALUES ('34', '45');
INSERT INTO `oc_product_to_category` VALUES ('34', '46');
INSERT INTO `oc_product_to_category` VALUES ('34', '57');
INSERT INTO `oc_product_to_category` VALUES ('35', '17');
INSERT INTO `oc_product_to_category` VALUES ('35', '24');
INSERT INTO `oc_product_to_category` VALUES ('35', '26');
INSERT INTO `oc_product_to_category` VALUES ('35', '27');
INSERT INTO `oc_product_to_category` VALUES ('35', '29');
INSERT INTO `oc_product_to_category` VALUES ('35', '30');
INSERT INTO `oc_product_to_category` VALUES ('35', '31');
INSERT INTO `oc_product_to_category` VALUES ('35', '32');
INSERT INTO `oc_product_to_category` VALUES ('35', '33');
INSERT INTO `oc_product_to_category` VALUES ('35', '35');
INSERT INTO `oc_product_to_category` VALUES ('35', '36');
INSERT INTO `oc_product_to_category` VALUES ('35', '39');
INSERT INTO `oc_product_to_category` VALUES ('35', '45');
INSERT INTO `oc_product_to_category` VALUES ('35', '46');
INSERT INTO `oc_product_to_category` VALUES ('35', '57');
INSERT INTO `oc_product_to_category` VALUES ('36', '17');
INSERT INTO `oc_product_to_category` VALUES ('36', '24');
INSERT INTO `oc_product_to_category` VALUES ('36', '26');
INSERT INTO `oc_product_to_category` VALUES ('36', '27');
INSERT INTO `oc_product_to_category` VALUES ('36', '29');
INSERT INTO `oc_product_to_category` VALUES ('36', '30');
INSERT INTO `oc_product_to_category` VALUES ('36', '31');
INSERT INTO `oc_product_to_category` VALUES ('36', '32');
INSERT INTO `oc_product_to_category` VALUES ('36', '33');
INSERT INTO `oc_product_to_category` VALUES ('36', '35');
INSERT INTO `oc_product_to_category` VALUES ('36', '36');
INSERT INTO `oc_product_to_category` VALUES ('36', '39');
INSERT INTO `oc_product_to_category` VALUES ('36', '45');
INSERT INTO `oc_product_to_category` VALUES ('36', '46');
INSERT INTO `oc_product_to_category` VALUES ('36', '57');
INSERT INTO `oc_product_to_category` VALUES ('40', '17');
INSERT INTO `oc_product_to_category` VALUES ('40', '24');
INSERT INTO `oc_product_to_category` VALUES ('40', '26');
INSERT INTO `oc_product_to_category` VALUES ('40', '27');
INSERT INTO `oc_product_to_category` VALUES ('40', '29');
INSERT INTO `oc_product_to_category` VALUES ('40', '30');
INSERT INTO `oc_product_to_category` VALUES ('40', '31');
INSERT INTO `oc_product_to_category` VALUES ('40', '32');
INSERT INTO `oc_product_to_category` VALUES ('40', '33');
INSERT INTO `oc_product_to_category` VALUES ('40', '35');
INSERT INTO `oc_product_to_category` VALUES ('40', '36');
INSERT INTO `oc_product_to_category` VALUES ('40', '39');
INSERT INTO `oc_product_to_category` VALUES ('40', '45');
INSERT INTO `oc_product_to_category` VALUES ('40', '46');
INSERT INTO `oc_product_to_category` VALUES ('40', '57');
INSERT INTO `oc_product_to_category` VALUES ('41', '17');
INSERT INTO `oc_product_to_category` VALUES ('41', '24');
INSERT INTO `oc_product_to_category` VALUES ('41', '26');
INSERT INTO `oc_product_to_category` VALUES ('41', '27');
INSERT INTO `oc_product_to_category` VALUES ('41', '29');
INSERT INTO `oc_product_to_category` VALUES ('41', '30');
INSERT INTO `oc_product_to_category` VALUES ('41', '31');
INSERT INTO `oc_product_to_category` VALUES ('41', '32');
INSERT INTO `oc_product_to_category` VALUES ('41', '33');
INSERT INTO `oc_product_to_category` VALUES ('41', '35');
INSERT INTO `oc_product_to_category` VALUES ('41', '36');
INSERT INTO `oc_product_to_category` VALUES ('41', '39');
INSERT INTO `oc_product_to_category` VALUES ('41', '45');
INSERT INTO `oc_product_to_category` VALUES ('41', '46');
INSERT INTO `oc_product_to_category` VALUES ('41', '57');
INSERT INTO `oc_product_to_category` VALUES ('42', '17');
INSERT INTO `oc_product_to_category` VALUES ('42', '24');
INSERT INTO `oc_product_to_category` VALUES ('42', '26');
INSERT INTO `oc_product_to_category` VALUES ('42', '27');
INSERT INTO `oc_product_to_category` VALUES ('42', '29');
INSERT INTO `oc_product_to_category` VALUES ('42', '30');
INSERT INTO `oc_product_to_category` VALUES ('42', '31');
INSERT INTO `oc_product_to_category` VALUES ('42', '32');
INSERT INTO `oc_product_to_category` VALUES ('42', '33');
INSERT INTO `oc_product_to_category` VALUES ('42', '35');
INSERT INTO `oc_product_to_category` VALUES ('42', '36');
INSERT INTO `oc_product_to_category` VALUES ('42', '39');
INSERT INTO `oc_product_to_category` VALUES ('42', '45');
INSERT INTO `oc_product_to_category` VALUES ('42', '46');
INSERT INTO `oc_product_to_category` VALUES ('42', '57');
INSERT INTO `oc_product_to_category` VALUES ('43', '17');
INSERT INTO `oc_product_to_category` VALUES ('43', '24');
INSERT INTO `oc_product_to_category` VALUES ('43', '26');
INSERT INTO `oc_product_to_category` VALUES ('43', '27');
INSERT INTO `oc_product_to_category` VALUES ('43', '29');
INSERT INTO `oc_product_to_category` VALUES ('43', '30');
INSERT INTO `oc_product_to_category` VALUES ('43', '31');
INSERT INTO `oc_product_to_category` VALUES ('43', '32');
INSERT INTO `oc_product_to_category` VALUES ('43', '33');
INSERT INTO `oc_product_to_category` VALUES ('43', '35');
INSERT INTO `oc_product_to_category` VALUES ('43', '36');
INSERT INTO `oc_product_to_category` VALUES ('43', '39');
INSERT INTO `oc_product_to_category` VALUES ('43', '45');
INSERT INTO `oc_product_to_category` VALUES ('43', '46');
INSERT INTO `oc_product_to_category` VALUES ('43', '57');
INSERT INTO `oc_product_to_category` VALUES ('44', '17');
INSERT INTO `oc_product_to_category` VALUES ('44', '24');
INSERT INTO `oc_product_to_category` VALUES ('44', '26');
INSERT INTO `oc_product_to_category` VALUES ('44', '27');
INSERT INTO `oc_product_to_category` VALUES ('44', '29');
INSERT INTO `oc_product_to_category` VALUES ('44', '30');
INSERT INTO `oc_product_to_category` VALUES ('44', '31');
INSERT INTO `oc_product_to_category` VALUES ('44', '32');
INSERT INTO `oc_product_to_category` VALUES ('44', '33');
INSERT INTO `oc_product_to_category` VALUES ('44', '35');
INSERT INTO `oc_product_to_category` VALUES ('44', '36');
INSERT INTO `oc_product_to_category` VALUES ('44', '39');
INSERT INTO `oc_product_to_category` VALUES ('44', '45');
INSERT INTO `oc_product_to_category` VALUES ('44', '46');
INSERT INTO `oc_product_to_category` VALUES ('44', '57');
INSERT INTO `oc_product_to_category` VALUES ('45', '17');
INSERT INTO `oc_product_to_category` VALUES ('45', '24');
INSERT INTO `oc_product_to_category` VALUES ('45', '26');
INSERT INTO `oc_product_to_category` VALUES ('45', '27');
INSERT INTO `oc_product_to_category` VALUES ('45', '29');
INSERT INTO `oc_product_to_category` VALUES ('45', '30');
INSERT INTO `oc_product_to_category` VALUES ('45', '31');
INSERT INTO `oc_product_to_category` VALUES ('45', '32');
INSERT INTO `oc_product_to_category` VALUES ('45', '33');
INSERT INTO `oc_product_to_category` VALUES ('45', '35');
INSERT INTO `oc_product_to_category` VALUES ('45', '36');
INSERT INTO `oc_product_to_category` VALUES ('45', '39');
INSERT INTO `oc_product_to_category` VALUES ('45', '45');
INSERT INTO `oc_product_to_category` VALUES ('45', '46');
INSERT INTO `oc_product_to_category` VALUES ('45', '57');
INSERT INTO `oc_product_to_category` VALUES ('46', '17');
INSERT INTO `oc_product_to_category` VALUES ('46', '24');
INSERT INTO `oc_product_to_category` VALUES ('46', '26');
INSERT INTO `oc_product_to_category` VALUES ('46', '27');
INSERT INTO `oc_product_to_category` VALUES ('46', '29');
INSERT INTO `oc_product_to_category` VALUES ('46', '30');
INSERT INTO `oc_product_to_category` VALUES ('46', '31');
INSERT INTO `oc_product_to_category` VALUES ('46', '32');
INSERT INTO `oc_product_to_category` VALUES ('46', '33');
INSERT INTO `oc_product_to_category` VALUES ('46', '35');
INSERT INTO `oc_product_to_category` VALUES ('46', '36');
INSERT INTO `oc_product_to_category` VALUES ('46', '39');
INSERT INTO `oc_product_to_category` VALUES ('46', '45');
INSERT INTO `oc_product_to_category` VALUES ('46', '46');
INSERT INTO `oc_product_to_category` VALUES ('46', '57');
INSERT INTO `oc_product_to_category` VALUES ('47', '17');
INSERT INTO `oc_product_to_category` VALUES ('47', '24');
INSERT INTO `oc_product_to_category` VALUES ('47', '26');
INSERT INTO `oc_product_to_category` VALUES ('47', '27');
INSERT INTO `oc_product_to_category` VALUES ('47', '29');
INSERT INTO `oc_product_to_category` VALUES ('47', '30');
INSERT INTO `oc_product_to_category` VALUES ('47', '31');
INSERT INTO `oc_product_to_category` VALUES ('47', '32');
INSERT INTO `oc_product_to_category` VALUES ('47', '33');
INSERT INTO `oc_product_to_category` VALUES ('47', '35');
INSERT INTO `oc_product_to_category` VALUES ('47', '36');
INSERT INTO `oc_product_to_category` VALUES ('47', '39');
INSERT INTO `oc_product_to_category` VALUES ('47', '45');
INSERT INTO `oc_product_to_category` VALUES ('47', '46');
INSERT INTO `oc_product_to_category` VALUES ('47', '57');
INSERT INTO `oc_product_to_category` VALUES ('48', '17');
INSERT INTO `oc_product_to_category` VALUES ('48', '24');
INSERT INTO `oc_product_to_category` VALUES ('48', '26');
INSERT INTO `oc_product_to_category` VALUES ('48', '27');
INSERT INTO `oc_product_to_category` VALUES ('48', '29');
INSERT INTO `oc_product_to_category` VALUES ('48', '30');
INSERT INTO `oc_product_to_category` VALUES ('48', '31');
INSERT INTO `oc_product_to_category` VALUES ('48', '32');
INSERT INTO `oc_product_to_category` VALUES ('48', '33');
INSERT INTO `oc_product_to_category` VALUES ('48', '35');
INSERT INTO `oc_product_to_category` VALUES ('48', '36');
INSERT INTO `oc_product_to_category` VALUES ('48', '39');
INSERT INTO `oc_product_to_category` VALUES ('48', '45');
INSERT INTO `oc_product_to_category` VALUES ('48', '46');
INSERT INTO `oc_product_to_category` VALUES ('48', '57');
INSERT INTO `oc_product_to_category` VALUES ('49', '17');
INSERT INTO `oc_product_to_category` VALUES ('49', '24');
INSERT INTO `oc_product_to_category` VALUES ('49', '26');
INSERT INTO `oc_product_to_category` VALUES ('49', '27');
INSERT INTO `oc_product_to_category` VALUES ('49', '29');
INSERT INTO `oc_product_to_category` VALUES ('49', '30');
INSERT INTO `oc_product_to_category` VALUES ('49', '31');
INSERT INTO `oc_product_to_category` VALUES ('49', '32');
INSERT INTO `oc_product_to_category` VALUES ('49', '33');
INSERT INTO `oc_product_to_category` VALUES ('49', '35');
INSERT INTO `oc_product_to_category` VALUES ('49', '36');
INSERT INTO `oc_product_to_category` VALUES ('49', '39');
INSERT INTO `oc_product_to_category` VALUES ('49', '45');
INSERT INTO `oc_product_to_category` VALUES ('49', '46');
INSERT INTO `oc_product_to_category` VALUES ('49', '57');
<<<<<<< HEAD
INSERT INTO `oc_product_to_category` VALUES ('74', '59');
INSERT INTO `oc_product_to_category` VALUES ('74', '60');
INSERT INTO `oc_product_to_category` VALUES ('74', '61');
=======

-- ----------------------------
-- Table structure for oc_product_to_category_ebaypro
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_to_category_ebaypro`;
CREATE TABLE `oc_product_to_category_ebaypro` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_to_category_ebaypro
-- ----------------------------
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('0', '59');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('0', '60');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('0', '61');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('28', '17');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('28', '24');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('28', '26');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('28', '27');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('28', '29');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('28', '30');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('28', '31');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('28', '32');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('28', '33');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('28', '35');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('28', '36');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('28', '39');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('28', '45');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('28', '46');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('28', '57');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('29', '17');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('29', '24');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('29', '26');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('29', '27');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('29', '29');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('29', '30');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('29', '31');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('29', '32');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('29', '33');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('29', '35');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('29', '36');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('29', '39');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('29', '45');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('29', '46');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('29', '57');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('30', '17');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('30', '24');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('30', '26');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('30', '27');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('30', '29');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('30', '30');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('30', '31');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('30', '32');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('30', '33');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('30', '35');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('30', '36');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('30', '39');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('30', '45');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('30', '46');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('30', '57');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('31', '17');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('31', '24');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('31', '26');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('31', '27');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('31', '29');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('31', '30');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('31', '31');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('31', '32');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('31', '33');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('31', '35');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('31', '36');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('31', '39');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('31', '45');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('31', '46');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('31', '57');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('32', '17');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('32', '24');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('32', '26');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('32', '27');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('32', '29');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('32', '30');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('32', '31');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('32', '32');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('32', '33');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('32', '35');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('32', '36');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('32', '39');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('32', '45');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('32', '46');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('32', '57');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('33', '17');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('33', '24');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('33', '26');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('33', '27');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('33', '29');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('33', '30');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('33', '31');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('33', '32');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('33', '33');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('33', '35');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('33', '36');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('33', '39');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('33', '45');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('33', '46');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('33', '57');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('34', '17');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('34', '24');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('34', '26');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('34', '27');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('34', '29');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('34', '30');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('34', '31');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('34', '32');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('34', '33');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('34', '35');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('34', '36');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('34', '39');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('34', '45');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('34', '46');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('34', '57');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('35', '17');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('35', '24');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('35', '26');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('35', '27');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('35', '29');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('35', '30');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('35', '31');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('35', '32');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('35', '33');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('35', '35');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('35', '36');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('35', '39');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('35', '45');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('35', '46');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('35', '57');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('36', '17');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('36', '24');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('36', '26');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('36', '27');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('36', '29');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('36', '30');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('36', '31');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('36', '32');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('36', '33');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('36', '35');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('36', '36');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('36', '39');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('36', '45');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('36', '46');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('36', '57');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('40', '17');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('40', '24');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('40', '26');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('40', '27');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('40', '29');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('40', '30');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('40', '31');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('40', '32');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('40', '33');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('40', '35');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('40', '36');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('40', '39');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('40', '45');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('40', '46');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('40', '57');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('41', '17');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('41', '24');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('41', '26');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('41', '27');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('41', '29');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('41', '30');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('41', '31');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('41', '32');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('41', '33');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('41', '35');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('41', '36');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('41', '39');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('41', '45');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('41', '46');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('41', '57');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('42', '17');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('42', '24');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('42', '26');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('42', '27');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('42', '29');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('42', '30');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('42', '31');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('42', '32');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('42', '33');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('42', '35');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('42', '36');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('42', '39');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('42', '45');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('42', '46');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('42', '57');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('43', '17');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('43', '24');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('43', '26');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('43', '27');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('43', '29');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('43', '30');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('43', '31');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('43', '32');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('43', '33');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('43', '35');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('43', '36');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('43', '39');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('43', '45');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('43', '46');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('43', '57');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('44', '17');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('44', '24');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('44', '26');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('44', '27');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('44', '29');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('44', '30');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('44', '31');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('44', '32');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('44', '33');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('44', '35');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('44', '36');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('44', '39');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('44', '45');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('44', '46');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('44', '57');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('45', '17');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('45', '24');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('45', '26');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('45', '27');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('45', '29');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('45', '30');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('45', '31');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('45', '32');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('45', '33');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('45', '35');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('45', '36');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('45', '39');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('45', '45');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('45', '46');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('45', '57');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('46', '17');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('46', '24');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('46', '26');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('46', '27');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('46', '29');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('46', '30');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('46', '31');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('46', '32');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('46', '33');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('46', '35');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('46', '36');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('46', '39');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('46', '45');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('46', '46');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('46', '57');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('47', '17');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('47', '24');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('47', '26');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('47', '27');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('47', '29');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('47', '30');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('47', '31');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('47', '32');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('47', '33');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('47', '35');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('47', '36');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('47', '39');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('47', '45');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('47', '46');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('47', '57');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('48', '17');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('48', '24');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('48', '26');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('48', '27');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('48', '29');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('48', '30');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('48', '31');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('48', '32');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('48', '33');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('48', '35');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('48', '36');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('48', '39');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('48', '45');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('48', '46');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('48', '57');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('49', '17');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('49', '24');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('49', '26');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('49', '27');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('49', '29');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('49', '30');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('49', '31');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('49', '32');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('49', '33');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('49', '35');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('49', '36');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('49', '39');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('49', '45');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('49', '46');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('49', '57');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('50', '59');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('51', '59');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('51', '60');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('51', '61');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('52', '59');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('52', '60');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('52', '61');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('53', '59');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('53', '60');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('53', '61');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('54', '59');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('54', '60');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('54', '61');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('55', '59');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('55', '60');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('55', '61');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('61', '59');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('61', '60');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('61', '61');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('62', '59');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('62', '60');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('62', '61');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('76', '59');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('76', '60');
INSERT INTO `oc_product_to_category_ebaypro` VALUES ('76', '61');
>>>>>>> 790b49e13c12789410af78d35dc87d3d392cacc9

-- ----------------------------
-- Table structure for oc_product_to_download
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_to_download`;
CREATE TABLE `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_to_download
-- ----------------------------

-- ----------------------------
<<<<<<< HEAD
=======
-- Table structure for oc_product_to_download_ebaypro
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_to_download_ebaypro`;
CREATE TABLE `oc_product_to_download_ebaypro` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_to_download_ebaypro
-- ----------------------------

-- ----------------------------
>>>>>>> 790b49e13c12789410af78d35dc87d3d392cacc9
-- Table structure for oc_product_to_layout
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_to_layout`;
CREATE TABLE `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_to_layout
-- ----------------------------
INSERT INTO `oc_product_to_layout` VALUES ('33', '0', '0');
INSERT INTO `oc_product_to_layout` VALUES ('48', '0', '0');
<<<<<<< HEAD
INSERT INTO `oc_product_to_layout` VALUES ('77', '0', '0');
INSERT INTO `oc_product_to_layout` VALUES ('76', '0', '0');
INSERT INTO `oc_product_to_layout` VALUES ('74', '0', '0');
INSERT INTO `oc_product_to_layout` VALUES ('73', '0', '0');
INSERT INTO `oc_product_to_layout` VALUES ('75', '0', '0');
INSERT INTO `oc_product_to_layout` VALUES ('78', '0', '0');
INSERT INTO `oc_product_to_layout` VALUES ('0', '0', '0');
INSERT INTO `oc_product_to_layout` VALUES ('79', '0', '0');
INSERT INTO `oc_product_to_layout` VALUES ('47', '0', '0');
=======
INSERT INTO `oc_product_to_layout` VALUES ('73', '0', '0');
INSERT INTO `oc_product_to_layout` VALUES ('0', '0', '0');

-- ----------------------------
-- Table structure for oc_product_to_layout_ebaypro
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_to_layout_ebaypro`;
CREATE TABLE `oc_product_to_layout_ebaypro` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_to_layout_ebaypro
-- ----------------------------
INSERT INTO `oc_product_to_layout_ebaypro` VALUES ('33', '0', '0');
INSERT INTO `oc_product_to_layout_ebaypro` VALUES ('50', '0', '0');
INSERT INTO `oc_product_to_layout_ebaypro` VALUES ('51', '0', '0');
INSERT INTO `oc_product_to_layout_ebaypro` VALUES ('52', '0', '0');
INSERT INTO `oc_product_to_layout_ebaypro` VALUES ('53', '0', '0');
INSERT INTO `oc_product_to_layout_ebaypro` VALUES ('54', '0', '0');
INSERT INTO `oc_product_to_layout_ebaypro` VALUES ('55', '0', '0');
INSERT INTO `oc_product_to_layout_ebaypro` VALUES ('76', '0', '0');
INSERT INTO `oc_product_to_layout_ebaypro` VALUES ('0', '0', '0');
INSERT INTO `oc_product_to_layout_ebaypro` VALUES ('72', '0', '0');
INSERT INTO `oc_product_to_layout_ebaypro` VALUES ('60', '0', '0');
INSERT INTO `oc_product_to_layout_ebaypro` VALUES ('61', '0', '0');
INSERT INTO `oc_product_to_layout_ebaypro` VALUES ('62', '0', '0');
>>>>>>> 790b49e13c12789410af78d35dc87d3d392cacc9

-- ----------------------------
-- Table structure for oc_product_to_store
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_to_store`;
CREATE TABLE `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_to_store
-- ----------------------------
INSERT INTO `oc_product_to_store` VALUES ('0', '0');
INSERT INTO `oc_product_to_store` VALUES ('28', '0');
INSERT INTO `oc_product_to_store` VALUES ('29', '0');
INSERT INTO `oc_product_to_store` VALUES ('30', '0');
INSERT INTO `oc_product_to_store` VALUES ('31', '0');
INSERT INTO `oc_product_to_store` VALUES ('32', '0');
INSERT INTO `oc_product_to_store` VALUES ('33', '0');
INSERT INTO `oc_product_to_store` VALUES ('34', '0');
INSERT INTO `oc_product_to_store` VALUES ('35', '0');
INSERT INTO `oc_product_to_store` VALUES ('36', '0');
INSERT INTO `oc_product_to_store` VALUES ('40', '0');
INSERT INTO `oc_product_to_store` VALUES ('41', '0');
INSERT INTO `oc_product_to_store` VALUES ('42', '0');
INSERT INTO `oc_product_to_store` VALUES ('43', '0');
INSERT INTO `oc_product_to_store` VALUES ('44', '0');
INSERT INTO `oc_product_to_store` VALUES ('45', '0');
INSERT INTO `oc_product_to_store` VALUES ('46', '0');
INSERT INTO `oc_product_to_store` VALUES ('47', '0');
INSERT INTO `oc_product_to_store` VALUES ('48', '0');
INSERT INTO `oc_product_to_store` VALUES ('49', '0');
INSERT INTO `oc_product_to_store` VALUES ('73', '0');
<<<<<<< HEAD
INSERT INTO `oc_product_to_store` VALUES ('74', '0');
INSERT INTO `oc_product_to_store` VALUES ('75', '0');
INSERT INTO `oc_product_to_store` VALUES ('76', '0');
INSERT INTO `oc_product_to_store` VALUES ('77', '0');
INSERT INTO `oc_product_to_store` VALUES ('78', '0');
INSERT INTO `oc_product_to_store` VALUES ('79', '0');
=======

-- ----------------------------
-- Table structure for oc_product_to_store_ebaypro
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_to_store_ebaypro`;
CREATE TABLE `oc_product_to_store_ebaypro` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_to_store_ebaypro
-- ----------------------------
INSERT INTO `oc_product_to_store_ebaypro` VALUES ('0', '0');
INSERT INTO `oc_product_to_store_ebaypro` VALUES ('28', '0');
INSERT INTO `oc_product_to_store_ebaypro` VALUES ('29', '0');
INSERT INTO `oc_product_to_store_ebaypro` VALUES ('30', '0');
INSERT INTO `oc_product_to_store_ebaypro` VALUES ('31', '0');
INSERT INTO `oc_product_to_store_ebaypro` VALUES ('32', '0');
INSERT INTO `oc_product_to_store_ebaypro` VALUES ('33', '0');
INSERT INTO `oc_product_to_store_ebaypro` VALUES ('34', '0');
INSERT INTO `oc_product_to_store_ebaypro` VALUES ('35', '0');
INSERT INTO `oc_product_to_store_ebaypro` VALUES ('36', '0');
INSERT INTO `oc_product_to_store_ebaypro` VALUES ('40', '0');
INSERT INTO `oc_product_to_store_ebaypro` VALUES ('41', '0');
INSERT INTO `oc_product_to_store_ebaypro` VALUES ('42', '0');
INSERT INTO `oc_product_to_store_ebaypro` VALUES ('43', '0');
INSERT INTO `oc_product_to_store_ebaypro` VALUES ('44', '0');
INSERT INTO `oc_product_to_store_ebaypro` VALUES ('45', '0');
INSERT INTO `oc_product_to_store_ebaypro` VALUES ('46', '0');
INSERT INTO `oc_product_to_store_ebaypro` VALUES ('47', '0');
INSERT INTO `oc_product_to_store_ebaypro` VALUES ('48', '0');
INSERT INTO `oc_product_to_store_ebaypro` VALUES ('49', '0');
INSERT INTO `oc_product_to_store_ebaypro` VALUES ('50', '0');
INSERT INTO `oc_product_to_store_ebaypro` VALUES ('51', '0');
INSERT INTO `oc_product_to_store_ebaypro` VALUES ('52', '0');
INSERT INTO `oc_product_to_store_ebaypro` VALUES ('53', '0');
INSERT INTO `oc_product_to_store_ebaypro` VALUES ('54', '0');
INSERT INTO `oc_product_to_store_ebaypro` VALUES ('55', '0');
INSERT INTO `oc_product_to_store_ebaypro` VALUES ('61', '0');
INSERT INTO `oc_product_to_store_ebaypro` VALUES ('62', '0');
INSERT INTO `oc_product_to_store_ebaypro` VALUES ('76', '0');
>>>>>>> 790b49e13c12789410af78d35dc87d3d392cacc9

-- ----------------------------
-- Table structure for oc_recurring
-- ----------------------------
DROP TABLE IF EXISTS `oc_recurring`;
CREATE TABLE `oc_recurring` (
  `recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) NOT NULL,
  `cycle` int(10) NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) NOT NULL,
  `trial_cycle` int(10) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL,
  PRIMARY KEY (`recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_recurring
-- ----------------------------

-- ----------------------------
-- Table structure for oc_recurring_description
-- ----------------------------
DROP TABLE IF EXISTS `oc_recurring_description`;
CREATE TABLE `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`recurring_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_recurring_description
-- ----------------------------

-- ----------------------------
-- Table structure for oc_return
-- ----------------------------
DROP TABLE IF EXISTS `oc_return`;
CREATE TABLE `oc_return` (
  `return_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `fullname` varchar(64) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`return_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_return
-- ----------------------------

-- ----------------------------
-- Table structure for oc_return_action
-- ----------------------------
DROP TABLE IF EXISTS `oc_return_action`;
CREATE TABLE `oc_return_action` (
  `return_action_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`return_action_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_return_action
-- ----------------------------
INSERT INTO `oc_return_action` VALUES ('1', '1', 'Refunded');
INSERT INTO `oc_return_action` VALUES ('2', '1', 'Credit Issued');
INSERT INTO `oc_return_action` VALUES ('3', '1', 'Replacement Sent');
INSERT INTO `oc_return_action` VALUES ('1', '2', '已退款');
INSERT INTO `oc_return_action` VALUES ('2', '2', '已退款至信用卡');
INSERT INTO `oc_return_action` VALUES ('3', '2', '已补发商品');

-- ----------------------------
-- Table structure for oc_return_history
-- ----------------------------
DROP TABLE IF EXISTS `oc_return_history`;
CREATE TABLE `oc_return_history` (
  `return_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`return_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_return_history
-- ----------------------------

-- ----------------------------
-- Table structure for oc_return_reason
-- ----------------------------
DROP TABLE IF EXISTS `oc_return_reason`;
CREATE TABLE `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`return_reason_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_return_reason
-- ----------------------------
INSERT INTO `oc_return_reason` VALUES ('1', '1', 'Dead On Arrival');
INSERT INTO `oc_return_reason` VALUES ('2', '1', 'Received Wrong Item');
INSERT INTO `oc_return_reason` VALUES ('3', '1', 'Order Error');
INSERT INTO `oc_return_reason` VALUES ('4', '1', 'Faulty, please supply details');
INSERT INTO `oc_return_reason` VALUES ('5', '1', 'Other, please supply details');
INSERT INTO `oc_return_reason` VALUES ('1', '2', '未收到货');
INSERT INTO `oc_return_reason` VALUES ('2', '2', '发错商品');
INSERT INTO `oc_return_reason` VALUES ('3', '2', '错误下单');
INSERT INTO `oc_return_reason` VALUES ('4', '2', '商品损坏，请添加描述');
INSERT INTO `oc_return_reason` VALUES ('5', '2', '其它，请添加描述');

-- ----------------------------
-- Table structure for oc_return_status
-- ----------------------------
DROP TABLE IF EXISTS `oc_return_status`;
CREATE TABLE `oc_return_status` (
  `return_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`return_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_return_status
-- ----------------------------
INSERT INTO `oc_return_status` VALUES ('1', '1', 'Pending');
INSERT INTO `oc_return_status` VALUES ('3', '1', 'Complete');
INSERT INTO `oc_return_status` VALUES ('2', '1', 'Awaiting Products');
INSERT INTO `oc_return_status` VALUES ('1', '2', '待处理');
INSERT INTO `oc_return_status` VALUES ('3', '2', '已完成');
INSERT INTO `oc_return_status` VALUES ('2', '2', '等待寄回商品');

-- ----------------------------
-- Table structure for oc_review
-- ----------------------------
DROP TABLE IF EXISTS `oc_review`;
CREATE TABLE `oc_review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`review_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_review
-- ----------------------------

-- ----------------------------
-- Table structure for oc_seo_url
-- ----------------------------
DROP TABLE IF EXISTS `oc_seo_url`;
CREATE TABLE `oc_seo_url` (
  `seo_url_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`seo_url_id`),
  KEY `query` (`query`),
  KEY `keyword` (`keyword`)
<<<<<<< HEAD
) ENGINE=MyISAM AUTO_INCREMENT=894 DEFAULT CHARSET=utf8;
=======
) ENGINE=MyISAM AUTO_INCREMENT=890 DEFAULT CHARSET=utf8;
>>>>>>> 790b49e13c12789410af78d35dc87d3d392cacc9

-- ----------------------------
-- Records of oc_seo_url
-- ----------------------------
INSERT INTO `oc_seo_url` VALUES ('888', '0', '1', 'product_id=48', 'ipod-classic');
INSERT INTO `oc_seo_url` VALUES ('869', '0', '1', 'category_id=20', 'desktops');
INSERT INTO `oc_seo_url` VALUES ('872', '0', '1', 'category_id=26', 'pc');
INSERT INTO `oc_seo_url` VALUES ('873', '0', '1', 'category_id=27', 'mac');
INSERT INTO `oc_seo_url` VALUES ('876', '0', '1', 'manufacturer_id=8', 'apple');
INSERT INTO `oc_seo_url` VALUES ('886', '0', '1', 'information_id=4', 'about_us');
INSERT INTO `oc_seo_url` VALUES ('882', '0', '1', 'product_id=42', 'test');
INSERT INTO `oc_seo_url` VALUES ('789', '0', '1', 'category_id=34', 'mp3-players');
INSERT INTO `oc_seo_url` VALUES ('781', '0', '1', 'category_id=36', 'test2');
INSERT INTO `oc_seo_url` VALUES ('774', '0', '1', 'category_id=18', 'laptop-notebook');
INSERT INTO `oc_seo_url` VALUES ('775', '0', '1', 'category_id=46', 'macs');
INSERT INTO `oc_seo_url` VALUES ('776', '0', '1', 'category_id=45', 'windows');
INSERT INTO `oc_seo_url` VALUES ('777', '0', '1', 'category_id=25', 'component');
INSERT INTO `oc_seo_url` VALUES ('778', '0', '1', 'category_id=29', 'mouse');
INSERT INTO `oc_seo_url` VALUES ('779', '0', '1', 'category_id=28', 'monitor');
INSERT INTO `oc_seo_url` VALUES ('780', '0', '1', 'category_id=35', 'test1');
INSERT INTO `oc_seo_url` VALUES ('782', '0', '1', 'category_id=30', 'printer');
INSERT INTO `oc_seo_url` VALUES ('783', '0', '1', 'category_id=31', 'scanner');
INSERT INTO `oc_seo_url` VALUES ('784', '0', '1', 'category_id=32', 'web-camera');
INSERT INTO `oc_seo_url` VALUES ('785', '0', '1', 'category_id=57', 'tablet');
INSERT INTO `oc_seo_url` VALUES ('786', '0', '1', 'category_id=17', 'software');
INSERT INTO `oc_seo_url` VALUES ('787', '0', '1', 'category_id=24', 'smartphone');
INSERT INTO `oc_seo_url` VALUES ('852', '0', '1', 'category_id=33', 'camera');
INSERT INTO `oc_seo_url` VALUES ('805', '0', '1', 'category_id=39', 'test6');
INSERT INTO `oc_seo_url` VALUES ('875', '0', '1', 'product_id=30', 'canon-eos-5d');
<<<<<<< HEAD
INSERT INTO `oc_seo_url` VALUES ('893', '0', '1', 'product_id=47', 'hp-lp3065');
=======
INSERT INTO `oc_seo_url` VALUES ('840', '0', '1', 'product_id=47', 'hp-lp3065');
>>>>>>> 790b49e13c12789410af78d35dc87d3d392cacc9
INSERT INTO `oc_seo_url` VALUES ('811', '0', '1', 'product_id=28', 'htc-touch-hd');
INSERT INTO `oc_seo_url` VALUES ('849', '0', '1', 'product_id=43', 'macbook');
INSERT INTO `oc_seo_url` VALUES ('813', '0', '1', 'product_id=44', 'macbook-air');
INSERT INTO `oc_seo_url` VALUES ('814', '0', '1', 'product_id=45', 'macbook-pro');
INSERT INTO `oc_seo_url` VALUES ('816', '0', '1', 'product_id=31', 'nikon-d300');
INSERT INTO `oc_seo_url` VALUES ('817', '0', '1', 'product_id=29', 'palm-treo-pro');
INSERT INTO `oc_seo_url` VALUES ('818', '0', '1', 'product_id=35', 'product-8');
INSERT INTO `oc_seo_url` VALUES ('819', '0', '1', 'product_id=49', 'samsung-galaxy-tab-10-1');
<<<<<<< HEAD
INSERT INTO `oc_seo_url` VALUES ('892', '0', '1', 'product_id=33', 'samsung-syncmaster-941bw');
=======
INSERT INTO `oc_seo_url` VALUES ('889', '0', '1', 'product_id=33', 'samsung-syncmaster-941bw');
>>>>>>> 790b49e13c12789410af78d35dc87d3d392cacc9
INSERT INTO `oc_seo_url` VALUES ('821', '0', '1', 'product_id=46', 'sony-vaio');
INSERT INTO `oc_seo_url` VALUES ('837', '0', '1', 'product_id=41', 'imac');
INSERT INTO `oc_seo_url` VALUES ('868', '0', '1', 'product_id=40', 'iphone');
INSERT INTO `oc_seo_url` VALUES ('825', '0', '1', 'product_id=36', 'ipod-nano');
INSERT INTO `oc_seo_url` VALUES ('826', '0', '1', 'product_id=34', 'ipod-shuffle');
INSERT INTO `oc_seo_url` VALUES ('827', '0', '1', 'product_id=32', 'ipod-touch');
INSERT INTO `oc_seo_url` VALUES ('877', '0', '1', 'manufacturer_id=9', 'canon');
INSERT INTO `oc_seo_url` VALUES ('879', '0', '1', 'manufacturer_id=5', 'htc');
INSERT INTO `oc_seo_url` VALUES ('878', '0', '1', 'manufacturer_id=7', 'hewlett-packard');
INSERT INTO `oc_seo_url` VALUES ('880', '0', '1', 'manufacturer_id=6', 'palm');
INSERT INTO `oc_seo_url` VALUES ('881', '0', '1', 'manufacturer_id=10', 'sony');
INSERT INTO `oc_seo_url` VALUES ('841', '0', '1', 'information_id=6', 'delivery');
INSERT INTO `oc_seo_url` VALUES ('842', '0', '1', 'information_id=3', 'privacy');
INSERT INTO `oc_seo_url` VALUES ('843', '0', '1', 'information_id=5', 'terms');

-- ----------------------------
-- Table structure for oc_session
-- ----------------------------
DROP TABLE IF EXISTS `oc_session`;
CREATE TABLE `oc_session` (
  `session_id` varchar(32) NOT NULL,
  `data` text NOT NULL,
  `expire` datetime NOT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_session
-- ----------------------------
INSERT INTO `oc_session` VALUES ('01960e2ae2b268177a10ee5a1e', 'false', '2018-09-09 03:24:50');
INSERT INTO `oc_session` VALUES ('0242c882c6a952eaf004fc02c0', 'false', '2018-08-30 06:04:16');
INSERT INTO `oc_session` VALUES ('025466b66c38a45505919c8cd9', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-08-27 01:10:37');
INSERT INTO `oc_session` VALUES ('0324ee1f226152aa44a9af56fc', 'false', '2018-09-05 10:03:58');
INSERT INTO `oc_session` VALUES ('034e6a1937157c68ce65e91de4', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-08-22 01:28:41');
INSERT INTO `oc_session` VALUES ('04156f4f854a510384a8973f31', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"captcha\":\"2002a8\"}', '2018-08-21 06:59:03');
INSERT INTO `oc_session` VALUES ('055031689f7083ee5a262a25a8', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-07-09 10:01:16');
INSERT INTO `oc_session` VALUES ('0739dea9cfe59adeb07928a259', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-07-10 09:47:18');
INSERT INTO `oc_session` VALUES ('09ff428e62ddc8ea7961644f4b', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-07-28 06:47:01');
INSERT INTO `oc_session` VALUES ('0aa34f76f1236075b599301b8e', '{\"language\":\"zh-cn\",\"currency\":\"USD\"}', '2018-06-27 08:37:08');
INSERT INTO `oc_session` VALUES ('0aadb33985a04dba99532c6805', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"user_id\":\"1\",\"user_token\":\"9c0970c47d28290c55cfc863a97c35d5\",\"captcha\":\"44a227\"}', '2018-08-09 08:05:29');
INSERT INTO `oc_session` VALUES ('0b0f3e0cea66ec180e37b6a60b', '{\"api_id\":\"1\",\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-06-26 07:51:53');
INSERT INTO `oc_session` VALUES ('0b6098bc3af0166793a5a75071', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"captcha\":\"73984b\",\"display_style\":\"grid\",\"vouchers\":[],\"user_id\":\"1\",\"user_token\":\"33ab2957b4bdabd1a3a629f412d1a34c\",\"compare\":[\"49\"],\"customer_id\":\"1\",\"shipping_address\":{\"address_id\":\"1\",\"fullname\":\"wyx\",\"telephone\":\"13681147568\",\"company\":\"www\",\"address_1\":\"wwww\",\"address_2\":\"\",\"postcode\":\"\",\"city\":\"\",\"zone_id\":\"710\",\"zone\":\"\\u56db\\u5ddd\\u7701\",\"zone_code\":\"SI\",\"country_id\":\"44\",\"country\":\"\\u4e2d\\u56fd\",\"iso_code_2\":\"CN\",\"iso_code_3\":\"CHN\",\"address_format\":\"\",\"city_id\":\"2538\",\"county_id\":\"2539\",\"custom_field\":null},\"shipping_methods\":{\"flat\":{\"title\":\"\\u56fa\\u5b9a\\u8fd0\\u8d39\",\"quote\":{\"flat\":{\"code\":\"flat.flat\",\"title\":\"\\u56fa\\u5b9a\\u8fd0\\u8d39\",\"cost\":\"5.00\",\"tax_class_id\":\"9\",\"text\":\"\\uffe55.00\"}},\"sort_order\":\"1\",\"error\":false}},\"shipping_method\":{\"code\":\"flat.flat\",\"title\":\"\\u56fa\\u5b9a\\u8fd0\\u8d39\",\"cost\":\"5.00\",\"tax_class_id\":\"9\",\"text\":\"\\uffe55.00\"},\"payment_address\":{\"address_id\":\"1\",\"fullname\":\"wyx\",\"telephone\":\"13681147568\",\"company\":\"www\",\"address_1\":\"wwww\",\"address_2\":\"\",\"postcode\":\"\",\"city\":\"\",\"zone_id\":\"710\",\"zone\":\"\\u56db\\u5ddd\\u7701\",\"zone_code\":\"SI\",\"country_id\":\"44\",\"country\":\"\\u4e2d\\u56fd\",\"iso_code_2\":\"CN\",\"iso_code_3\":\"CHN\",\"address_format\":\"\",\"city_id\":\"2538\",\"county_id\":\"2539\",\"custom_field\":null},\"payment_methods\":{\"pp_express\":{\"code\":\"pp_express\",\"title\":\"PayPal Express Checkout\",\"terms\":\"\",\"sort_order\":\"\"},\"cod\":{\"code\":\"cod\",\"title\":\"\\u8d27\\u5230\\u4ed8\\u6b3e\",\"terms\":\"\",\"sort_order\":\"5\"}},\"payment_method\":{\"code\":\"pp_express\",\"title\":\"PayPal Express Checkout\",\"terms\":\"\",\"sort_order\":\"\"},\"checkout_terms\":\"1\",\"comment\":\"\",\"order_id\":6,\"error\":\"Receiving country does not support the transaction currency.\"}', '2018-07-11 10:02:29');
INSERT INTO `oc_session` VALUES ('0bce263f23f0bbc245e6cd3386', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-08-07 09:52:23');
<<<<<<< HEAD
INSERT INTO `oc_session` VALUES ('0be91c7efc404876bececd4794', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-09-29 01:23:35');
=======
>>>>>>> 790b49e13c12789410af78d35dc87d3d392cacc9
INSERT INTO `oc_session` VALUES ('0c75a66f5ea9d4d113bbc0ed0a', '{\"api_id\":\"1\"}', '2018-09-21 09:45:01');
INSERT INTO `oc_session` VALUES ('0ccda55f8a5034d25bb31116b2', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-07-13 02:32:44');
INSERT INTO `oc_session` VALUES ('0cefad7e785ba8ef8e00c2099a', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-09-21 10:06:59');
INSERT INTO `oc_session` VALUES ('0d18e8d8c68f875cc39d02119a', 'false', '2018-09-13 08:24:10');
INSERT INTO `oc_session` VALUES ('0d4567a2faaa15e337e292331e', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"captcha\":\"749051\"}', '2018-08-13 09:52:56');
<<<<<<< HEAD
INSERT INTO `oc_session` VALUES ('0d756122a4f01a7989fe795de6', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-09-27 02:48:08');
=======
>>>>>>> 790b49e13c12789410af78d35dc87d3d392cacc9
INSERT INTO `oc_session` VALUES ('0e16e2762a4672e6b8ea0d9a86', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-06-28 07:17:48');
INSERT INTO `oc_session` VALUES ('11a93240c2e050ab8bdd617fde', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-08-08 03:06:09');
INSERT INTO `oc_session` VALUES ('12d2c447a999dd0f2aa7edb2ad', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-08-25 07:29:41');
INSERT INTO `oc_session` VALUES ('12efdb9d9096462d2a031fe1c1', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"captcha\":\"7fbbf5\",\"user_id\":\"2\",\"user_token\":\"72c3bb334c568baf2745b14dbc43e050\"}', '2018-08-21 08:58:43');
INSERT INTO `oc_session` VALUES ('13c0e4c312432807be22ee3db8', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"user_id\":\"1\",\"user_token\":\"7051f72f97f7ac18cf97d38d8c09e623\"}', '2018-08-15 10:36:11');
INSERT INTO `oc_session` VALUES ('148c243d01bc14bee50c554f77', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"user_id\":\"1\",\"user_token\":\"60f4ed9551719feb963c753361bc25ae\",\"display_style\":\"grid\",\"customer_id\":\"1\",\"shipping_address\":{\"address_id\":\"1\",\"fullname\":\"wyx\",\"telephone\":\"13681147568\",\"company\":\"www\",\"address_1\":\"wwww\",\"address_2\":\"\",\"postcode\":\"\",\"city\":\"\",\"zone_id\":\"710\",\"zone\":\"\\u56db\\u5ddd\\u7701\",\"zone_code\":\"SI\",\"country_id\":\"44\",\"country\":\"\\u4e2d\\u56fd\",\"iso_code_2\":\"CN\",\"iso_code_3\":\"CHN\",\"address_format\":\"\",\"city_id\":\"2538\",\"county_id\":\"2539\",\"custom_field\":null},\"shipping_methods\":{\"flat\":{\"title\":\"\\u56fa\\u5b9a\\u8fd0\\u8d39\",\"quote\":{\"flat\":{\"code\":\"flat.flat\",\"title\":\"\\u56fa\\u5b9a\\u8fd0\\u8d39\",\"cost\":\"5.00\",\"tax_class_id\":\"9\",\"text\":\"\\uffe55.00\"}},\"sort_order\":\"1\",\"error\":false}},\"shipping_method\":{\"code\":\"flat.flat\",\"title\":\"\\u56fa\\u5b9a\\u8fd0\\u8d39\",\"cost\":\"5.00\",\"tax_class_id\":\"9\",\"text\":\"\\uffe55.00\"},\"payment_address\":{\"address_id\":\"1\",\"fullname\":\"wyx\",\"telephone\":\"13681147568\",\"company\":\"www\",\"address_1\":\"wwww\",\"address_2\":\"\",\"postcode\":\"\",\"city\":\"\",\"zone_id\":\"710\",\"zone\":\"\\u56db\\u5ddd\\u7701\",\"zone_code\":\"SI\",\"country_id\":\"44\",\"country\":\"\\u4e2d\\u56fd\",\"iso_code_2\":\"CN\",\"iso_code_3\":\"CHN\",\"address_format\":\"\",\"city_id\":\"2538\",\"county_id\":\"2539\",\"custom_field\":null},\"payment_methods\":{\"pp_express\":{\"code\":\"pp_express\",\"title\":\"PayPal Express Checkout\",\"terms\":\"\",\"sort_order\":\"\"},\"cod\":{\"code\":\"cod\",\"title\":\"\\u8d27\\u5230\\u4ed8\\u6b3e\",\"terms\":\"\",\"sort_order\":\"5\"}},\"payment_method\":{\"code\":\"pp_express\",\"title\":\"PayPal Express Checkout\",\"terms\":\"\",\"sort_order\":\"\"},\"checkout_terms\":\"1\",\"comment\":\"\",\"order_id\":7,\"captcha\":\"dad3df\"}', '2018-07-27 09:06:17');
<<<<<<< HEAD
INSERT INTO `oc_session` VALUES ('19746e5c3b7f411cf70b7e8061', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"captcha\":\"fa8b37\",\"user_id\":\"1\",\"user_token\":\"5fe48a50c36d48bbfdac3e9399e29cc9\",\"customer_id\":\"2\",\"shipping_address\":false}', '2018-10-11 11:10:42');
=======
>>>>>>> 790b49e13c12789410af78d35dc87d3d392cacc9
INSERT INTO `oc_session` VALUES ('19e4dc7b2ed9201c24407d6820', '{\"api_id\":\"1\"}', '2018-06-26 07:51:46');
INSERT INTO `oc_session` VALUES ('1a28b1d0a2be0f76f76f00b335', '{\"user_id\":\"1\",\"user_token\":\"876a28487315049d1f460f7ce0d0be1b\",\"language\":\"zh-cn\",\"currency\":\"CNY\",\"captcha\":\"0a738e\"}', '2018-08-10 10:26:04');
INSERT INTO `oc_session` VALUES ('1a42ac99e07c074f33577b57f5', '{\"user_id\":\"1\",\"user_token\":\"cfed9ce2197cea82227fd2cc604cfb01\"}', '2018-08-22 10:20:04');
INSERT INTO `oc_session` VALUES ('1a706dd3a066fc35019d97c623', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-08-30 01:16:38');
INSERT INTO `oc_session` VALUES ('1bad7b4927f6317de2101f89d7', '[]', '2018-08-30 10:56:25');
INSERT INTO `oc_session` VALUES ('1bebe6d00d5e4c2681bc1ee1da', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"user_id\":\"1\",\"user_token\":\"494738e6a2449215c97da1308fe749f0\"}', '2018-07-30 08:05:06');
INSERT INTO `oc_session` VALUES ('1cd22f5ca180abb2f40208b101', 'false', '2018-09-08 01:46:00');
INSERT INTO `oc_session` VALUES ('1e82dbef5384f28fdad4e9e1fe', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-06-26 06:22:14');
INSERT INTO `oc_session` VALUES ('1e8c3332fcd90004bcfa37b128', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"captcha\":\"2ece1a\"}', '2018-08-09 02:16:53');
INSERT INTO `oc_session` VALUES ('1e9956ac15ef494ad4218fe901', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-07-25 04:01:12');
INSERT INTO `oc_session` VALUES ('1fa839a3e488aed28e09fcdb48', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-09-21 10:06:07');
INSERT INTO `oc_session` VALUES ('1fff86725bca570d71bf732f49', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-06-28 04:10:02');
INSERT INTO `oc_session` VALUES ('21d6069f8678cca2b9876f7874', '{\"api_id\":\"1\"}', '2018-09-19 09:58:50');
INSERT INTO `oc_session` VALUES ('2230ab9fc1137adb3be2d3e512', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"captcha\":\"9068c7\"}', '2018-08-27 03:40:26');
INSERT INTO `oc_session` VALUES ('228e3c8de24acda5f286d2a7cd', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-06-26 04:24:24');
INSERT INTO `oc_session` VALUES ('249052cdb017e0e01dd722ce28', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-08-27 04:36:47');
<<<<<<< HEAD
INSERT INTO `oc_session` VALUES ('24f40beadda5a55d8b0a45cf64', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-09-26 02:20:41');
=======
>>>>>>> 790b49e13c12789410af78d35dc87d3d392cacc9
INSERT INTO `oc_session` VALUES ('25eb7869acd1ad86cf1964a524', 'false', '2018-08-30 03:59:19');
INSERT INTO `oc_session` VALUES ('26a03ec712bb14be0c03a30a76', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-07-03 03:02:56');
INSERT INTO `oc_session` VALUES ('27130b188435c73338f6b78e53', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-06-29 07:26:48');
INSERT INTO `oc_session` VALUES ('28a01d3313918b2bca9dd22db7', 'false', '2018-08-31 10:01:28');
INSERT INTO `oc_session` VALUES ('2926aedddc478608688240b22b', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"display_style\":\"grid\",\"captcha\":\"8eac78\"}', '2018-08-27 04:34:12');
INSERT INTO `oc_session` VALUES ('29769ce54ee04af4e398900404', 'false', '2018-08-31 02:41:54');
INSERT INTO `oc_session` VALUES ('2a970bf28ee62aeed2d07e6083', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-08-25 01:25:38');
INSERT INTO `oc_session` VALUES ('2af08ef46bdb1edd3652f2aa38', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-09-22 00:54:59');
<<<<<<< HEAD
INSERT INTO `oc_session` VALUES ('2b2986d0833fb4559faa3297f1', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-09-25 01:23:18');
=======
>>>>>>> 790b49e13c12789410af78d35dc87d3d392cacc9
INSERT INTO `oc_session` VALUES ('2df2d63c4ab8cdc6dbb61d3d6e', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-09-03 01:51:44');
INSERT INTO `oc_session` VALUES ('2ec2562b6972948ca7bebbb5ea', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"captcha\":\"21bdeb\",\"display_style\":\"grid\"}', '2018-09-07 10:30:54');
INSERT INTO `oc_session` VALUES ('2ece1bfcd1ca96124efdf4b5e8', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"user_id\":\"1\",\"user_token\":\"78eb1e3112a253c43cebd56623510726\"}', '2018-09-20 07:03:12');
INSERT INTO `oc_session` VALUES ('2fdaab3a812aaf5efb4c6cb73b', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-09-06 09:15:55');
<<<<<<< HEAD
INSERT INTO `oc_session` VALUES ('30858c539ef1f9241cd41fbf0f', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-09-27 06:18:24');
INSERT INTO `oc_session` VALUES ('312034ccf85bc4b9ae7537e099', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"user_id\":\"1\",\"user_token\":\"fe0a495fba7a152efa48f26751cd8273\"}', '2018-09-25 10:08:07');
INSERT INTO `oc_session` VALUES ('31209c8b0709afdf73248ea680', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-10-10 00:42:59');
=======
>>>>>>> 790b49e13c12789410af78d35dc87d3d392cacc9
INSERT INTO `oc_session` VALUES ('3262d17c2c678091a8a8476afa', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-06-28 08:26:51');
INSERT INTO `oc_session` VALUES ('34b1b0c247634fcbc49aebf6d0', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-06-29 10:10:57');
INSERT INTO `oc_session` VALUES ('374601a67e0be5a14b84e21f55', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"captcha\":\"26b889\"}', '2018-08-20 10:17:44');
INSERT INTO `oc_session` VALUES ('37e337d8591e1df5061215e43e', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"captcha\":\"b32ae8\"}', '2018-08-20 09:36:40');
INSERT INTO `oc_session` VALUES ('3c4a3450770d1599f005eee7bf', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-07-28 06:46:39');
INSERT INTO `oc_session` VALUES ('3c4e123cda28921bd0842056a8', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-06-30 02:07:11');
<<<<<<< HEAD
INSERT INTO `oc_session` VALUES ('3cf18211e72f55b2a3280f7236', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"user_id\":\"1\",\"user_token\":\"c266b3c8ba2c94fe13448b3fa1693fdc\"}', '2018-09-28 10:31:15');
=======
>>>>>>> 790b49e13c12789410af78d35dc87d3d392cacc9
INSERT INTO `oc_session` VALUES ('3e1e509d56ee32c4eab2435104', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-09-01 07:13:32');
INSERT INTO `oc_session` VALUES ('3e6f82a4cd61d9a1f25eb142db', 'false', '2018-08-30 10:55:25');
INSERT INTO `oc_session` VALUES ('405c4147aeb09d4e9d48df37d3', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"captcha\":\"68405b\"}', '2018-08-14 09:45:19');
INSERT INTO `oc_session` VALUES ('40c290f38a464718107f2871bb', '{\"api_id\":\"1\"}', '2018-06-26 07:53:36');
INSERT INTO `oc_session` VALUES ('415e655ddde26ff7341e5a8d00', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-08-08 09:31:13');
<<<<<<< HEAD
INSERT INTO `oc_session` VALUES ('425412d3b45e0ca172cb3b107b', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-09-26 06:15:08');
=======
>>>>>>> 790b49e13c12789410af78d35dc87d3d392cacc9
INSERT INTO `oc_session` VALUES ('4361e5d8c3d7dc21d711f25e98', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-08-23 09:18:51');
INSERT INTO `oc_session` VALUES ('436213e414b58a0fc325106e54', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-08-18 10:05:08');
INSERT INTO `oc_session` VALUES ('495152e8ebbe0e2cedc73945f8', 'false', '2018-09-08 08:25:13');
INSERT INTO `oc_session` VALUES ('4abd3729dd2191cd6d36c7edfd', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"user_id\":\"1\",\"user_token\":\"6eb08069b8dbf47b4edc4a5b36f2be3b\",\"captcha\":\"e5fc82\"}', '2018-09-18 10:15:03');
<<<<<<< HEAD
INSERT INTO `oc_session` VALUES ('4bb1d458de8a58fc3898f430b0', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-10-08 09:53:19');
=======
>>>>>>> 790b49e13c12789410af78d35dc87d3d392cacc9
INSERT INTO `oc_session` VALUES ('4c341461e1f35591b5bd63da91', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"captcha\":\"780546\"}', '2018-08-21 09:03:09');
INSERT INTO `oc_session` VALUES ('4fcf545e7bdbdceaa26f918520', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"user_id\":\"1\",\"user_token\":\"84c2b38b529a1e93c8e440daa7ac5a52\"}', '2018-08-07 04:21:30');
INSERT INTO `oc_session` VALUES ('501ff20ca5a9d1bc6b4522e060', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-08-13 10:37:25');
INSERT INTO `oc_session` VALUES ('5069a0fe3cf6f6faf8d1c55fca', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-06-28 07:58:56');
INSERT INTO `oc_session` VALUES ('50d003fd2bc7a44ea6d075d389', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-07-11 09:24:01');
INSERT INTO `oc_session` VALUES ('5181525289dbe1311ef870ba9e', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-06-30 02:06:06');
INSERT INTO `oc_session` VALUES ('527ecab0cd2c07551c8b40fe53', '{\"user_id\":\"1\",\"user_token\":\"4d69a4e000dffb251553f8c797707fa4\"}', '2018-06-26 06:30:54');
INSERT INTO `oc_session` VALUES ('53da5038a6527bf60843d37807', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"user_id\":\"1\",\"user_token\":\"ffda5cc02f75df8daa2d5f195e364fec\"}', '2018-09-21 10:26:27');
INSERT INTO `oc_session` VALUES ('53fc6d74126bb541bfc9eb0031', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"captcha\":\"77e537\"}', '2018-08-09 03:52:00');
INSERT INTO `oc_session` VALUES ('543bf90c09fa22f5078f443ebb', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-06-28 04:30:16');
INSERT INTO `oc_session` VALUES ('569062890d8930d026f0611b36', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"user_id\":\"1\",\"user_token\":\"811c958a8258c6f640977d2e001683ea\"}', '2018-08-17 09:59:37');
INSERT INTO `oc_session` VALUES ('56c97490edbf1b4320da72fd83', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-08-09 03:19:02');
INSERT INTO `oc_session` VALUES ('58e2d8121de8445a332a8c9e2b', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"captcha\":\"922942\"}', '2018-08-09 11:41:03');
INSERT INTO `oc_session` VALUES ('59f471fa9dcc892efc0a3a7597', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"captcha\":\"39de0d\"}', '2018-09-03 10:33:35');
INSERT INTO `oc_session` VALUES ('5b2b9e52bdb51f4cfdd997f5d5', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-09-04 10:33:12');
INSERT INTO `oc_session` VALUES ('5d0fab34cf3354521602a4324d', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-08-18 07:20:16');
<<<<<<< HEAD
INSERT INTO `oc_session` VALUES ('5daf69244e640329767d975c3f', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-10-08 10:22:48');
=======
>>>>>>> 790b49e13c12789410af78d35dc87d3d392cacc9
INSERT INTO `oc_session` VALUES ('5ee0aa95bc2e58dbdc78a1a303', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"captcha\":\"692f49\"}', '2018-08-08 10:32:26');
INSERT INTO `oc_session` VALUES ('5f0356c7e139bcdbf6a0078da9', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-09-21 10:06:09');
INSERT INTO `oc_session` VALUES ('5f55f94101c1e9d37c976c43c9', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-07-09 09:29:16');
INSERT INTO `oc_session` VALUES ('602ae299b38531dd1d87ca2f98', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"captcha\":\"564065\"}', '2018-08-10 09:19:17');
INSERT INTO `oc_session` VALUES ('60883d9d33373c99ad1811ef80', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-07-27 08:37:49');
INSERT INTO `oc_session` VALUES ('62cdd87adecf9abecdd721be10', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-09-13 03:47:00');
INSERT INTO `oc_session` VALUES ('63409b7f184b8c5dd7f963f6ff', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-08-13 09:53:52');
INSERT INTO `oc_session` VALUES ('637e70a51b03396f3184ebfcde', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"captcha\":\"969c99\"}', '2018-08-30 02:07:20');
<<<<<<< HEAD
INSERT INTO `oc_session` VALUES ('638405447e32feeddaa223a9b5', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"captcha\":\"c29ad8\",\"user_id\":\"1\",\"user_token\":\"284ff8ea28128b17eab2cbea647c2714\"}', '2018-09-27 10:28:56');
=======
>>>>>>> 790b49e13c12789410af78d35dc87d3d392cacc9
INSERT INTO `oc_session` VALUES ('63b49836f0e1d333124940056a', '{\"language\":\"zh-cn\",\"currency\":\"USD\"}', '2018-06-26 01:53:09');
INSERT INTO `oc_session` VALUES ('6411fbf17250f828ebe285abd1', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-08-25 07:29:42');
INSERT INTO `oc_session` VALUES ('6455420e186ca92100e9db23b9', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-08-24 03:00:17');
INSERT INTO `oc_session` VALUES ('65752c8b749510c2f0bfa06c19', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-09-20 00:42:09');
INSERT INTO `oc_session` VALUES ('65905d1c32d917a7ea74cf5fcf', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-09-17 07:41:26');
INSERT INTO `oc_session` VALUES ('65f522582ccff7216a2386f0c9', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-06-28 07:59:35');
INSERT INTO `oc_session` VALUES ('66edf05a2c7ef1355727cc2626', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-07-09 03:36:35');
INSERT INTO `oc_session` VALUES ('67a6f99922cc49de9926fe353e', '{\"api_id\":\"1\"}', '2018-09-21 09:45:07');
INSERT INTO `oc_session` VALUES ('689c7db647cbce3cc5559aca3c', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"captcha\":\"1f2f30\",\"display_style\":\"grid\"}', '2018-08-24 10:32:21');
INSERT INTO `oc_session` VALUES ('6ecd57647631a7e4aed68d2801', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-09-04 10:27:18');
<<<<<<< HEAD
INSERT INTO `oc_session` VALUES ('6ee4b1385f7b4eab8849d879de', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-10-08 10:26:45');
=======
>>>>>>> 790b49e13c12789410af78d35dc87d3d392cacc9
INSERT INTO `oc_session` VALUES ('6ee4fa0756db915e5f5e0e931e', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"captcha\":\"c5a598\"}', '2018-08-14 08:36:54');
INSERT INTO `oc_session` VALUES ('750692cceac061d953056be27d', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-08-27 04:36:10');
INSERT INTO `oc_session` VALUES ('7873e32a27622f9d78fbebe53d', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-08-07 02:58:40');
INSERT INTO `oc_session` VALUES ('7931f1c226f1eda58540f8da7c', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-09-01 07:16:49');
INSERT INTO `oc_session` VALUES ('7c77c7783891640f6dc4c47031', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"captcha\":\"951e98\"}', '2018-08-14 10:27:22');
INSERT INTO `oc_session` VALUES ('7d67792b17a278500a47d1545b', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-09-21 10:05:13');
INSERT INTO `oc_session` VALUES ('7e50035ab65977ce5833e8dc42', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-07-12 01:27:37');
INSERT INTO `oc_session` VALUES ('809c32fa926ed2d38a35278212', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-08-25 07:29:42');
INSERT INTO `oc_session` VALUES ('80ff0cf8efd5c0d5475fe4ade9', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"wishlist\":[],\"display_style\":\"grid\",\"user_id\":\"1\",\"user_token\":\"4c515b7ad2743c9c94d76328e3f15e9f\",\"checkout_terms\":\"1\"}', '2018-06-27 10:10:36');
<<<<<<< HEAD
INSERT INTO `oc_session` VALUES ('8268e50539a77ad3367a25f612', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"user_id\":\"1\",\"user_token\":\"7ca8bb8cdb7a86e6021de57a0f23ee3b\",\"captcha\":\"c8ad6b\",\"customer_id\":\"2\",\"shipping_address\":false}', '2018-10-12 07:15:12');
=======
>>>>>>> 790b49e13c12789410af78d35dc87d3d392cacc9
INSERT INTO `oc_session` VALUES ('84dda31aa636fcffae15502136', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-08-10 04:25:47');
INSERT INTO `oc_session` VALUES ('857a38becd8828716db46fa820', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-07-09 03:36:07');
INSERT INTO `oc_session` VALUES ('87a981d2d4595be1bf4da76f0e', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-08-31 09:27:54');
INSERT INTO `oc_session` VALUES ('87b60a846bc21c3f003c2887e9', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-09-21 10:07:02');
INSERT INTO `oc_session` VALUES ('87c096b4c9f6f5370c8948339a', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-06-30 02:06:13');
<<<<<<< HEAD
INSERT INTO `oc_session` VALUES ('8b1fdc3c06ccd1c8fa4566a074', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"captcha\":\"914114\",\"display_style\":\"grid\"}', '2018-10-10 03:15:07');
INSERT INTO `oc_session` VALUES ('8be5b2207963b49c994aa780a5', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-08-06 03:45:14');
INSERT INTO `oc_session` VALUES ('8c28cc859a4b10409c5ed1487a', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-09-26 07:08:25');
=======
INSERT INTO `oc_session` VALUES ('8be5b2207963b49c994aa780a5', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-08-06 03:45:14');
>>>>>>> 790b49e13c12789410af78d35dc87d3d392cacc9
INSERT INTO `oc_session` VALUES ('8d9984480fd6b044da84d819b3', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-09-05 10:02:12');
INSERT INTO `oc_session` VALUES ('8e0a959611db935ba11eef1dba', 'false', '2018-09-06 09:26:52');
INSERT INTO `oc_session` VALUES ('8eb435dcaa5d0a09b4dbf0f874', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-08-07 09:11:37');
INSERT INTO `oc_session` VALUES ('8f82c79036fe240b855eb06698', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-09-07 10:20:18');
INSERT INTO `oc_session` VALUES ('902badd23a66f6a5be11ecf1f6', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-08-09 04:24:02');
INSERT INTO `oc_session` VALUES ('9033131899537300a3731d8f3e', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"wishlist\":[]}', '2018-07-31 10:07:03');
INSERT INTO `oc_session` VALUES ('90db5ca45af19047b0fdedeb0c', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-08-08 07:00:53');
INSERT INTO `oc_session` VALUES ('916f2b86867a739acc212bd5f7', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-08-27 04:07:27');
INSERT INTO `oc_session` VALUES ('93923a8e8ddc29cb231c4142cf', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"user_id\":\"1\",\"user_token\":\"a5cde7179fb6a0a01fb57e7e96162739\"}', '2018-06-26 06:22:31');
INSERT INTO `oc_session` VALUES ('94693bd88cad35b3984d1a28b1', '{\"user_id\":\"1\",\"user_token\":\"43967ce9d15a6307b3fc7cce7e56041d\",\"language\":\"zh-cn\",\"currency\":\"CNY\",\"captcha\":\"067c33\"}', '2018-08-30 10:53:37');
<<<<<<< HEAD
INSERT INTO `oc_session` VALUES ('94c452963dffeb579cf7ca075e', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-10-09 00:46:02');
INSERT INTO `oc_session` VALUES ('94ffcf6a144fe15891d3f492b0', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"captcha\":\"364e16\"}', '2018-08-09 07:08:43');
INSERT INTO `oc_session` VALUES ('96e19796209a55690d7908c6e5', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-09-21 10:07:00');
INSERT INTO `oc_session` VALUES ('979bfc44b147f95a72c4be8229', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-10-09 10:30:17');
=======
INSERT INTO `oc_session` VALUES ('94ffcf6a144fe15891d3f492b0', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"captcha\":\"364e16\"}', '2018-08-09 07:08:43');
INSERT INTO `oc_session` VALUES ('96e19796209a55690d7908c6e5', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-09-21 10:07:00');
>>>>>>> 790b49e13c12789410af78d35dc87d3d392cacc9
INSERT INTO `oc_session` VALUES ('998456a14dfe2c28fca47db2c6', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-08-25 07:29:41');
INSERT INTO `oc_session` VALUES ('9b00531629b868d71f1af620d3', 'false', '2018-08-30 04:04:16');
INSERT INTO `oc_session` VALUES ('9b0bc2b946f086d87bc5e5d11d', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-08-10 07:49:45');
INSERT INTO `oc_session` VALUES ('9b38267066f6743f37ad235337', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"captcha\":\"60efa9\"}', '2018-08-23 02:49:24');
INSERT INTO `oc_session` VALUES ('9c317f94c74ff2b0bfa6428232', '{\"user_id\":\"1\",\"user_token\":\"54bb57ef1fa00ab5fcb363f45443dd20\",\"language\":\"zh-cn\",\"currency\":\"CNY\",\"captcha\":\"40b0a3\"}', '2018-08-30 10:22:17');
INSERT INTO `oc_session` VALUES ('9cda54e6184c6595f3a2a01046', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"captcha\":\"53342a\",\"vouchers\":[],\"display_style\":\"grid\",\"user_id\":\"1\",\"user_token\":\"9a0e847c0a465b1c055664b25f5d0a16\"}', '2018-08-22 10:21:40');
INSERT INTO `oc_session` VALUES ('9f759256bb8b41914040a2e49c', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"customer_id\":\"1\",\"shipping_address\":{\"address_id\":\"1\",\"fullname\":\"wyx\",\"telephone\":\"13681147568\",\"company\":\"www\",\"address_1\":\"wwww\",\"address_2\":\"\",\"postcode\":\"\",\"city\":\"\",\"zone_id\":\"710\",\"zone\":\"\\u56db\\u5ddd\\u7701\",\"zone_code\":\"SI\",\"country_id\":\"44\",\"country\":\"\\u4e2d\\u56fd\",\"iso_code_2\":\"CN\",\"iso_code_3\":\"CHN\",\"address_format\":\"\",\"city_id\":\"2538\",\"county_id\":\"2539\",\"custom_field\":null}}', '2018-07-03 03:24:48');
INSERT INTO `oc_session` VALUES ('a34d755943cd02c42b7aa49971', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-09-14 02:49:41');
<<<<<<< HEAD
INSERT INTO `oc_session` VALUES ('a389e3fb8c93d7b1cf15c33806', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-10-12 00:32:23');
=======
>>>>>>> 790b49e13c12789410af78d35dc87d3d392cacc9
INSERT INTO `oc_session` VALUES ('a416fdf120d65486bbe2e859f6', '{\"user_id\":\"1\",\"user_token\":\"436d7240494a426aa898a70e57420e3e\",\"language\":\"zh-cn\",\"currency\":\"CNY\",\"captcha\":\"e34aa6\",\"display_style\":\"grid\"}', '2018-06-26 09:22:05');
INSERT INTO `oc_session` VALUES ('a455383fe7ec4b5d504da09b76', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"captcha\":\"7099a8\"}', '2018-07-09 07:31:42');
INSERT INTO `oc_session` VALUES ('a6def2e274a4154d98af033ac1', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-07-30 08:03:09');
INSERT INTO `oc_session` VALUES ('a6f53783841ae9a8cfb8fecc1a', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-06-28 07:53:18');
INSERT INTO `oc_session` VALUES ('a83032f7052af56c681629560d', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-08-17 02:51:53');
INSERT INTO `oc_session` VALUES ('a8bd2da505b8835879d4bf50dc', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"captcha\":\"4aa26e\"}', '2018-08-17 09:59:00');
INSERT INTO `oc_session` VALUES ('ade2fc6ca444b982d1f99a81d7', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-08-14 10:12:18');
<<<<<<< HEAD
INSERT INTO `oc_session` VALUES ('ae4fdf3f2ba66eb27d0f441ba9', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-09-29 10:05:55');
=======
>>>>>>> 790b49e13c12789410af78d35dc87d3d392cacc9
INSERT INTO `oc_session` VALUES ('ae5d964828595efa49cb5b8f30', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-09-03 10:34:47');
INSERT INTO `oc_session` VALUES ('b0918171c6fce8b27ba327609e', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"captcha\":\"bc9110\"}', '2018-08-15 09:49:11');
INSERT INTO `oc_session` VALUES ('b0b1af2f0c2f335a8d412f7d6a', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-08-27 04:37:00');
INSERT INTO `oc_session` VALUES ('b19af15942b737bd316fb7d26f', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-09-13 03:17:00');
INSERT INTO `oc_session` VALUES ('b1c366cd495a6c0535180e513d', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-06-28 08:56:53');
INSERT INTO `oc_session` VALUES ('b24c1a4d7de867876416c6710e', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"captcha\":\"8c2321\"}', '2018-08-08 05:57:53');
INSERT INTO `oc_session` VALUES ('b4d1138e793f39a8b353eefcfd', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-07-10 00:53:57');
<<<<<<< HEAD
INSERT INTO `oc_session` VALUES ('b5695de19e55eaae1afc9dc139', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-10-08 05:47:54');
=======
>>>>>>> 790b49e13c12789410af78d35dc87d3d392cacc9
INSERT INTO `oc_session` VALUES ('b90cf8074636326ed2fe04dfb9', '{\"api_id\":\"1\"}', '2018-06-27 09:58:35');
INSERT INTO `oc_session` VALUES ('b926c2641e57565c3cf512fc8a', '{\"api_id\":\"1\"}', '2018-06-27 09:58:37');
INSERT INTO `oc_session` VALUES ('bac3348eb9d5daea75f0e16d30', '{\"api_id\":\"1\"}', '2018-06-27 09:59:10');
INSERT INTO `oc_session` VALUES ('bad88c80c9b5983c9ee0db75d9', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-08-08 05:48:29');
INSERT INTO `oc_session` VALUES ('bb752517a74ff7f77f809b8569', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-08-27 04:36:31');
INSERT INTO `oc_session` VALUES ('bcf9be39dcabcd25985305f76c', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"user_id\":\"1\",\"user_token\":\"846a0cad3fa9d4c2033245f343069201\"}', '2018-09-11 03:56:48');
INSERT INTO `oc_session` VALUES ('be872b4cda0797d9c3cef7ac82', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-08-08 02:02:40');
INSERT INTO `oc_session` VALUES ('be8ea539cf3cf448eb35fae9f3', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"display_style\":\"grid\",\"user_id\":\"1\",\"user_token\":\"9e07e089427da8d6ce4b6e3720c2508c\"}', '2018-08-25 10:25:15');
INSERT INTO `oc_session` VALUES ('bfa4dc54d5becf9b40f2f31ea4', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-07-31 01:50:52');
INSERT INTO `oc_session` VALUES ('c0fcf1610df1efd88f9470faaa', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"captcha\":\"4a1eb4\",\"user_id\":\"1\",\"user_token\":\"1a702359fd246f42ecf602f9a5915f8e\"}', '2018-09-22 09:32:10');
INSERT INTO `oc_session` VALUES ('c418bae6610e6b2d1805005ccb', '{\"api_id\":\"1\"}', '2018-08-17 09:59:37');
INSERT INTO `oc_session` VALUES ('c5ab433b36625817ef15739583', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-08-09 06:58:49');
INSERT INTO `oc_session` VALUES ('c6856ebd58232d417027e534fb', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"captcha\":\"ceac41\"}', '2018-08-16 03:32:39');
INSERT INTO `oc_session` VALUES ('c69095b1add39eedf0d12c30d8', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-08-07 02:58:46');
INSERT INTO `oc_session` VALUES ('c78de9f7466dc6909943849bcb', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-06-26 01:53:30');
INSERT INTO `oc_session` VALUES ('c9388f9b7f217b3a860047b9e3', '{\"api_id\":\"1\"}', '2018-06-26 07:51:55');
INSERT INTO `oc_session` VALUES ('c94150ae17da0c2f66c0f5439d', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-06-29 02:38:19');
INSERT INTO `oc_session` VALUES ('c9cd32c6c4dbaf698bc1937ba2', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-08-13 07:32:37');
<<<<<<< HEAD
INSERT INTO `oc_session` VALUES ('cdcfef620bca2252e92fc7ad18', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"user_id\":\"1\",\"user_token\":\"107f99e0033333b08ff9f848bafdc47c\"}', '2018-10-10 10:22:05');
INSERT INTO `oc_session` VALUES ('ce11d9e95b9465fed6f2ea3608', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-06-30 02:06:29');
INSERT INTO `oc_session` VALUES ('ce72e76720d8be01993173f022', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-10-11 00:30:56');
=======
INSERT INTO `oc_session` VALUES ('ce11d9e95b9465fed6f2ea3608', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-06-30 02:06:29');
>>>>>>> 790b49e13c12789410af78d35dc87d3d392cacc9
INSERT INTO `oc_session` VALUES ('cf35e092bb90d740b19a59260c', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-08-10 02:51:48');
INSERT INTO `oc_session` VALUES ('d0c69f5931d5bf1181d86518f9', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"captcha\":\"5be824\"}', '2018-08-22 07:11:34');
INSERT INTO `oc_session` VALUES ('d0d43731501375cf84137034a0', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-06-28 07:50:40');
INSERT INTO `oc_session` VALUES ('d0e4d1d0b17b9257788b61579f', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-08-07 09:11:29');
INSERT INTO `oc_session` VALUES ('d10e4a6aa7b4202db430cdeecb', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-06-28 07:40:42');
<<<<<<< HEAD
INSERT INTO `oc_session` VALUES ('d112501bdae050e19e4c64d24d', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-09-26 02:58:49');
INSERT INTO `oc_session` VALUES ('d14f86e9b715aacaade6fc60c3', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-09-26 03:54:26');
INSERT INTO `oc_session` VALUES ('d1c199307eb93e15a964a2be4b', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-08-08 03:06:27');
INSERT INTO `oc_session` VALUES ('d25e447ee7aa67ee36d9813c59', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-09-30 07:18:32');
INSERT INTO `oc_session` VALUES ('d32f15c94a5c096218d348c76b', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-06-28 08:26:28');
INSERT INTO `oc_session` VALUES ('d630aa64ddc46c463b83dbfc37', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-09-10 02:24:57');
INSERT INTO `oc_session` VALUES ('d6bcbffac1d40ed4daec941fae', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-08-08 07:07:54');
INSERT INTO `oc_session` VALUES ('d7d40060fdd6c1b03692e7fb3d', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-09-26 04:23:49');
INSERT INTO `oc_session` VALUES ('d83a21fd389d6a7325589ea4c7', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"user_id\":\"1\",\"user_token\":\"697f66dee0b743341db0b73570e1c459\",\"display_style\":\"grid\"}', '2018-06-27 09:14:57');
INSERT INTO `oc_session` VALUES ('d885f81b089e9bc3943da94a4f', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-09-30 00:42:07');
=======
INSERT INTO `oc_session` VALUES ('d1c199307eb93e15a964a2be4b', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-08-08 03:06:27');
INSERT INTO `oc_session` VALUES ('d32f15c94a5c096218d348c76b', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-06-28 08:26:28');
INSERT INTO `oc_session` VALUES ('d630aa64ddc46c463b83dbfc37', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-09-10 02:24:57');
INSERT INTO `oc_session` VALUES ('d6bcbffac1d40ed4daec941fae', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-08-08 07:07:54');
INSERT INTO `oc_session` VALUES ('d83a21fd389d6a7325589ea4c7', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"user_id\":\"1\",\"user_token\":\"697f66dee0b743341db0b73570e1c459\",\"display_style\":\"grid\"}', '2018-06-27 09:14:57');
>>>>>>> 790b49e13c12789410af78d35dc87d3d392cacc9
INSERT INTO `oc_session` VALUES ('d8e3d4a746ee0189a58f2e66ac', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-08-27 04:36:18');
INSERT INTO `oc_session` VALUES ('da56c822a0702abefb568bf29d', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"captcha\":\"7c9de6\"}', '2018-08-13 09:50:48');
INSERT INTO `oc_session` VALUES ('da87a4aa0aa4d7159a174c6384', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-09-14 02:50:10');
INSERT INTO `oc_session` VALUES ('dabffe42bbf5a8963b18915d71', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"captcha\":\"7afd71\"}', '2018-09-17 07:43:33');
INSERT INTO `oc_session` VALUES ('daf31083f86bcb90399d5426ce', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"customer_id\":\"1\",\"shipping_address\":{\"address_id\":\"1\",\"fullname\":\"wyx\",\"telephone\":\"13681147568\",\"company\":\"www\",\"address_1\":\"wwww\",\"address_2\":\"\",\"postcode\":\"\",\"city\":\"\",\"zone_id\":\"710\",\"zone\":\"\\u56db\\u5ddd\\u7701\",\"zone_code\":\"SI\",\"country_id\":\"44\",\"country\":\"\\u4e2d\\u56fd\",\"iso_code_2\":\"CN\",\"iso_code_3\":\"CHN\",\"address_format\":\"\",\"city_id\":\"2538\",\"county_id\":\"2539\",\"custom_field\":null},\"display_style\":\"grid\"}', '2018-07-05 09:33:42');
INSERT INTO `oc_session` VALUES ('dcc36b19153a6b57b762163970', '{\"api_id\":\"1\"}', '2018-06-27 09:59:13');
INSERT INTO `oc_session` VALUES ('dcdf347fc9918a25bca6bf1bda', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-08-08 07:27:44');
INSERT INTO `oc_session` VALUES ('e12070567c284cb92d78d4474b', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-06-28 04:11:09');
INSERT INTO `oc_session` VALUES ('e3bf3325e9ae8754be66d096b7', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-09-04 07:50:54');
INSERT INTO `oc_session` VALUES ('e3c13b6495fb3f3b3aeca70eb5', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"customer_id\":\"1\",\"shipping_address\":{\"address_id\":\"1\",\"fullname\":\"wyx\",\"telephone\":\"13681147568\",\"company\":\"www\",\"address_1\":\"wwww\",\"address_2\":\"\",\"postcode\":\"\",\"city\":\"\",\"zone_id\":\"710\",\"zone\":\"\\u56db\\u5ddd\\u7701\",\"zone_code\":\"SI\",\"country_id\":\"44\",\"country\":\"\\u4e2d\\u56fd\",\"iso_code_2\":\"CN\",\"iso_code_3\":\"CHN\",\"address_format\":\"\",\"city_id\":\"2538\",\"county_id\":\"2539\",\"custom_field\":null},\"display_style\":\"grid\"}', '2018-07-03 03:30:08');
INSERT INTO `oc_session` VALUES ('e4202fd4e43e0331cbf09bd624', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"captcha\":\"2e773b\"}', '2018-09-17 08:55:51');
INSERT INTO `oc_session` VALUES ('e48cad87b1f87f5b90a43ee13a', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"captcha\":\"a880ef\"}', '2018-09-08 09:11:45');
INSERT INTO `oc_session` VALUES ('e4e194804d87ce39bc69304be2', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-09-19 02:26:06');
INSERT INTO `oc_session` VALUES ('e60543638f8f3ba94176347c25', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"captcha\":\"158841\"}', '2018-08-14 10:07:44');
INSERT INTO `oc_session` VALUES ('e71532f0d266d410ff9ef9d257', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-06-29 07:26:57');
INSERT INTO `oc_session` VALUES ('e80abece1e961bf4b3879b418d', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"captcha\":\"3caa98\"}', '2018-08-23 02:36:22');
INSERT INTO `oc_session` VALUES ('e86041ceaa348d4f9f80386d1b', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"captcha\":\"0c1ab6\",\"display_style\":\"grid\",\"user_id\":\"1\",\"user_token\":\"b8ce8d09117130ca78d5228fe273ac0a\"}', '2018-06-26 04:20:21');
INSERT INTO `oc_session` VALUES ('e95664630d7c8cbc9e78cc63a7', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"customer_id\":\"1\",\"shipping_address\":{\"address_id\":\"1\",\"fullname\":\"wyx\",\"telephone\":\"13681147568\",\"company\":\"www\",\"address_1\":\"wwww\",\"address_2\":\"\",\"postcode\":\"\",\"city\":\"\",\"zone_id\":\"710\",\"zone\":\"\\u56db\\u5ddd\\u7701\",\"zone_code\":\"SI\",\"country_id\":\"44\",\"country\":\"\\u4e2d\\u56fd\",\"iso_code_2\":\"CN\",\"iso_code_3\":\"CHN\",\"address_format\":\"\",\"city_id\":\"2538\",\"county_id\":\"2539\",\"custom_field\":null}}', '2018-07-09 03:36:20');
INSERT INTO `oc_session` VALUES ('eaa0334c9b18054cc10369df80', 'false', '2018-09-01 09:37:30');
INSERT INTO `oc_session` VALUES ('eb5c53e9cc69a05f6968012d7a', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-09-21 10:06:06');
INSERT INTO `oc_session` VALUES ('eb89159b7d5f06ebd589468247', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"display_style\":\"grid\",\"user_id\":\"1\",\"user_token\":\"e07da80b889912c407baacf25fd25efa\",\"captcha\":\"95b050\"}', '2018-09-19 10:30:19');
INSERT INTO `oc_session` VALUES ('ebca834dbcfd51b0d9985530f4', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-07-30 07:23:42');
INSERT INTO `oc_session` VALUES ('ec827ca3289d264875bcaa5a48', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"captcha\":\"17252a\",\"user_id\":\"1\",\"user_token\":\"00f13277c6638b4fd2f5905a15ec0210\"}', '2018-09-20 10:38:42');
INSERT INTO `oc_session` VALUES ('ed99652882c5cac85d224125a9', 'false', '2018-09-06 09:29:49');
INSERT INTO `oc_session` VALUES ('edfe8737842c03956ef8ecbe87', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"captcha\":\"5e1a75\",\"user_id\":\"1\",\"user_token\":\"54e98fdda7f4dcbdacdbf2dbb333bfe9\"}', '2018-09-17 10:13:05');
INSERT INTO `oc_session` VALUES ('ee5045e4c6a1e4fc0a63d8a0ae', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-06-26 01:53:42');
INSERT INTO `oc_session` VALUES ('ef81247f2e27531f28efa3129a', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"captcha\":\"38da75\",\"display_style\":\"grid\",\"compare\":[],\"wishlist\":[\"33\"],\"user_id\":\"2\",\"user_token\":\"c9b1f56edecbd79f8d56ed26f7680de6\"}', '2018-08-24 10:12:45');
INSERT INTO `oc_session` VALUES ('f05787808a7d04c4839a3a4f79', '{\"api_id\":\"1\"}', '2018-09-17 09:14:04');
INSERT INTO `oc_session` VALUES ('f0607f7eaeff170cfe8969b4d2', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"captcha\":\"52dcd6\"}', '2018-08-09 08:52:17');
INSERT INTO `oc_session` VALUES ('f0cc3326b92ff3f1d447bd74fd', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-09-08 01:38:12');
INSERT INTO `oc_session` VALUES ('f41ebe1f617ece8f3063bb3b40', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"display_style\":\"grid\",\"customer_id\":\"1\",\"shipping_address\":{\"address_id\":\"1\",\"fullname\":\"wyx\",\"telephone\":\"13681147568\",\"company\":\"www\",\"address_1\":\"wwww\",\"address_2\":\"\",\"postcode\":\"\",\"city\":\"\",\"zone_id\":\"710\",\"zone\":\"\\u56db\\u5ddd\\u7701\",\"zone_code\":\"SI\",\"country_id\":\"44\",\"country\":\"\\u4e2d\\u56fd\",\"iso_code_2\":\"CN\",\"iso_code_3\":\"CHN\",\"address_format\":\"\",\"city_id\":\"2538\",\"county_id\":\"2539\",\"custom_field\":null}}', '2018-07-25 04:02:21');
INSERT INTO `oc_session` VALUES ('f51481994adaa518b04e9a1f3d', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-07-30 07:23:31');
INSERT INTO `oc_session` VALUES ('f60a2881e22637ca25a9517745', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"user_id\":\"1\",\"user_token\":\"f46c1a36a655a92cda453966a3dcd129\",\"display_style\":\"grid\",\"captcha\":\"10bf6d\"}', '2018-06-26 09:06:06');
INSERT INTO `oc_session` VALUES ('f7585d9b1b8c0f74287a254209', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-08-31 10:16:04');
INSERT INTO `oc_session` VALUES ('f784b73c2a3edcd4a57d55a6f2', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-08-08 03:07:14');
INSERT INTO `oc_session` VALUES ('f865e84661fa1237dc7de1d301', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-09-14 02:34:44');
INSERT INTO `oc_session` VALUES ('fa18e409ed61dc7d98b64c46a3', '{\"api_id\":\"1\"}', '2018-07-11 09:50:54');
INSERT INTO `oc_session` VALUES ('fc4bc7c2c06cfe2ac46a2c784d', '{\"api_id\":\"1\"}', '2018-07-11 09:50:58');
INSERT INTO `oc_session` VALUES ('fd8bab8bd59d515e88dbec4de3', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"captcha\":\"fe9ddb\"}', '2018-08-14 10:27:19');
INSERT INTO `oc_session` VALUES ('ff5dff1a92f81185e136cd9537', '{\"language\":\"zh-cn\",\"currency\":\"CNY\"}', '2018-08-08 06:27:44');
INSERT INTO `oc_session` VALUES ('ff7a9909d4bdb087807b1989dd', '{\"language\":\"zh-cn\",\"currency\":\"CNY\",\"user_id\":\"1\",\"user_token\":\"00266a155e8cbcad234aad42b0da7b03\"}', '2018-09-08 08:22:55');

-- ----------------------------
-- Table structure for oc_setting
-- ----------------------------
DROP TABLE IF EXISTS `oc_setting`;
CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(128) NOT NULL,
  `key` varchar(128) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4204 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_setting
-- ----------------------------
INSERT INTO `oc_setting` VALUES ('2688', '0', 'payment_pp_express', 'payment_pp_express_allow_note', '0', '0');
INSERT INTO `oc_setting` VALUES ('2687', '0', 'payment_pp_express', 'payment_pp_express_voided_status_id', '16', '0');
INSERT INTO `oc_setting` VALUES ('2686', '0', 'payment_pp_express', 'payment_pp_express_reversed_status_id', '12', '0');
INSERT INTO `oc_setting` VALUES ('3518', '0', 'captcha_basic', 'captcha_basic_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('4195', '0', 'config', 'config_encryption', '354dbc02733cf83e3fa3a0ab33a47242e006deb4d337a7aee03d0337804d70ad9f611565c4522ce7ce8a37819120589425e93a363282d5ea817ba306a8dd4248247995f9eaa3befd820941e2abe2176822f0b5cd0d9e24fd7a580182e45abe8e43edfc81632d2b288bd94f4388ae82ee6da3f579f14edcfe5100e0ba83de26c62f95aa126a3e7dd499647825f78ecc8923ca73bf907f0170e7880a1d65ef54bb2d6eafd03cca92e4d86398bbd6972de0c011bae0141cb65174f0c65f281a446747a54fbbb9106628c1cd8443c8664eefa70914c33903a0ff788eced57d5f42a26f6b074426cbd6036fb4546a4baafaf3a08507759fa4a58c1281e33c58c5bbe9e293f15461289cae64b7b7f4bbe5bb1a647a11d6d95dc3fa374999030267c1ca9bf6982a47ec19848f7f67bff9d1325b16d17377a1c72ff97c9754268d51980a48140e695b5be9e07fa45c68497468f127a89023cf58ec313dfe36de7309760db8916dfa6b5292ad945e1b67a33b392c91968bd75fd6bd0e4b9cfe6bab83e8263cb900346673cfe8a540e7909a693db9d67295ee587563d6f479d13aefb26f44000fe6a51cf109a3c1f142db96dd44677b6e946b60322adeddfdeaaadf17dcd6c433f66eca8af007841c9ceafbc7cbcc6025aa1d29b07646f7880c16671f094ab9176d30d17cd49c23c1db45652e63fb5116c6e83023137eb08ec47a2608bbda', '0');
INSERT INTO `oc_setting` VALUES ('4199', '0', 'config', 'config_error_display', '0', '0');
INSERT INTO `oc_setting` VALUES ('4200', '0', 'config', 'config_error_log', '1', '0');
INSERT INTO `oc_setting` VALUES ('4201', '0', 'config', 'config_error_filename', 'error.log', '0');
INSERT INTO `oc_setting` VALUES ('4198', '0', 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf', '0');
INSERT INTO `oc_setting` VALUES ('4190', '0', 'config', 'config_seo_url', '0', '0');
INSERT INTO `oc_setting` VALUES ('4191', '0', 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', '0');
INSERT INTO `oc_setting` VALUES ('4196', '0', 'config', 'config_file_max_size', '300000', '0');
INSERT INTO `oc_setting` VALUES ('4197', '0', 'config', 'config_file_ext_allowed', 'zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc', '0');
INSERT INTO `oc_setting` VALUES ('3001', '0', 'theme_default', 'theme_default_image_location_height', '50', '0');
INSERT INTO `oc_setting` VALUES ('2999', '0', 'theme_default', 'theme_default_image_cart_height', '100', '0');
INSERT INTO `oc_setting` VALUES ('3000', '0', 'theme_default', 'theme_default_image_location_width', '270', '0');
INSERT INTO `oc_setting` VALUES ('3', '0', 'voucher', 'total_voucher_sort_order', '8', '0');
INSERT INTO `oc_setting` VALUES ('4', '0', 'voucher', 'total_voucher_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('96', '0', 'currency', 'currency_fixer_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('97', '0', 'payment_free_checkout', 'payment_free_checkout_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('98', '0', 'payment_free_checkout', 'payment_free_checkout_order_status_id', '1', '0');
INSERT INTO `oc_setting` VALUES ('99', '0', 'payment_free_checkout', 'payment_free_checkout_sort_order', '1', '0');
INSERT INTO `oc_setting` VALUES ('100', '0', 'payment_cod', 'payment_cod_sort_order', '5', '0');
INSERT INTO `oc_setting` VALUES ('101', '0', 'payment_cod', 'payment_cod_total', '0.01', '0');
INSERT INTO `oc_setting` VALUES ('102', '0', 'payment_cod', 'payment_cod_order_status_id', '1', '0');
INSERT INTO `oc_setting` VALUES ('103', '0', 'payment_cod', 'payment_cod_geo_zone_id', '0', '0');
INSERT INTO `oc_setting` VALUES ('104', '0', 'payment_cod', 'payment_cod_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('105', '0', 'shipping_flat', 'shipping_flat_sort_order', '1', '0');
INSERT INTO `oc_setting` VALUES ('106', '0', 'shipping_flat', 'shipping_flat_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('107', '0', 'shipping_flat', 'shipping_flat_geo_zone_id', '0', '0');
INSERT INTO `oc_setting` VALUES ('108', '0', 'shipping_flat', 'shipping_flat_tax_class_id', '9', '0');
INSERT INTO `oc_setting` VALUES ('109', '0', 'shipping_flat', 'shipping_flat_cost', '5.00', '0');
INSERT INTO `oc_setting` VALUES ('110', '0', 'total_shipping', 'total_shipping_sort_order', '3', '0');
INSERT INTO `oc_setting` VALUES ('111', '0', 'total_sub_total', 'total_sub_total_sort_order', '1', '0');
INSERT INTO `oc_setting` VALUES ('112', '0', 'total_sub_total', 'total_sub_total_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('113', '0', 'total_tax', 'total_tax_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('114', '0', 'total_total', 'total_total_sort_order', '9', '0');
INSERT INTO `oc_setting` VALUES ('115', '0', 'total_total', 'total_total_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('116', '0', 'total_tax', 'total_tax_sort_order', '5', '0');
INSERT INTO `oc_setting` VALUES ('117', '0', 'total_credit', 'total_credit_sort_order', '7', '0');
INSERT INTO `oc_setting` VALUES ('118', '0', 'total_credit', 'total_credit_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('119', '0', 'total_reward', 'total_reward_sort_order', '2', '0');
INSERT INTO `oc_setting` VALUES ('120', '0', 'total_reward', 'total_reward_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('121', '0', 'total_shipping', 'total_shipping_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('122', '0', 'total_shipping', 'total_shipping_estimator', '1', '0');
INSERT INTO `oc_setting` VALUES ('123', '0', 'total_coupon', 'total_coupon_sort_order', '4', '0');
INSERT INTO `oc_setting` VALUES ('124', '0', 'total_coupon', 'total_coupon_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('125', '0', 'module_category', 'module_category_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('126', '0', 'module_account', 'module_account_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('2998', '0', 'theme_default', 'theme_default_image_cart_width', '100', '0');
INSERT INTO `oc_setting` VALUES ('2997', '0', 'theme_default', 'theme_default_image_wishlist_height', '100', '0');
INSERT INTO `oc_setting` VALUES ('2996', '0', 'theme_default', 'theme_default_image_wishlist_width', '100', '0');
INSERT INTO `oc_setting` VALUES ('2995', '0', 'theme_default', 'theme_default_image_compare_height', '100', '0');
INSERT INTO `oc_setting` VALUES ('2994', '0', 'theme_default', 'theme_default_image_compare_width', '100', '0');
INSERT INTO `oc_setting` VALUES ('2993', '0', 'theme_default', 'theme_default_image_related_height', '300', '0');
INSERT INTO `oc_setting` VALUES ('2992', '0', 'theme_default', 'theme_default_image_related_width', '300', '0');
INSERT INTO `oc_setting` VALUES ('2991', '0', 'theme_default', 'theme_default_image_additional_height', '70', '0');
INSERT INTO `oc_setting` VALUES ('2990', '0', 'theme_default', 'theme_default_image_additional_width', '70', '0');
INSERT INTO `oc_setting` VALUES ('2989', '0', 'theme_default', 'theme_default_image_product_height', '300', '0');
INSERT INTO `oc_setting` VALUES ('2988', '0', 'theme_default', 'theme_default_image_product_width', '300', '0');
INSERT INTO `oc_setting` VALUES ('2987', '0', 'theme_default', 'theme_default_image_popup_height', '800', '0');
INSERT INTO `oc_setting` VALUES ('2986', '0', 'theme_default', 'theme_default_image_popup_width', '800', '0');
INSERT INTO `oc_setting` VALUES ('2985', '0', 'theme_default', 'theme_default_image_preview_height', '560', '0');
INSERT INTO `oc_setting` VALUES ('2984', '0', 'theme_default', 'theme_default_image_preview_width', '560', '0');
INSERT INTO `oc_setting` VALUES ('2983', '0', 'theme_default', 'theme_default_image_thumb_height', '70', '0');
INSERT INTO `oc_setting` VALUES ('2979', '0', 'theme_default', 'theme_default_product_description_length', '100', '0');
INSERT INTO `oc_setting` VALUES ('2982', '0', 'theme_default', 'theme_default_image_thumb_width', '70', '0');
INSERT INTO `oc_setting` VALUES ('2981', '0', 'theme_default', 'theme_default_image_category_height', '80', '0');
INSERT INTO `oc_setting` VALUES ('151', '0', 'dashboard_activity', 'dashboard_activity_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('152', '0', 'dashboard_activity', 'dashboard_activity_sort_order', '7', '0');
INSERT INTO `oc_setting` VALUES ('153', '0', 'dashboard_sale', 'dashboard_sale_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('154', '0', 'dashboard_sale', 'dashboard_sale_width', '3', '0');
INSERT INTO `oc_setting` VALUES ('155', '0', 'dashboard_chart', 'dashboard_chart_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('156', '0', 'dashboard_chart', 'dashboard_chart_width', '6', '0');
INSERT INTO `oc_setting` VALUES ('157', '0', 'dashboard_customer', 'dashboard_customer_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('158', '0', 'dashboard_customer', 'dashboard_customer_width', '3', '0');
INSERT INTO `oc_setting` VALUES ('159', '0', 'dashboard_map', 'dashboard_map_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('160', '0', 'dashboard_map', 'dashboard_map_width', '6', '0');
INSERT INTO `oc_setting` VALUES ('161', '0', 'dashboard_online', 'dashboard_online_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('162', '0', 'dashboard_online', 'dashboard_online_width', '3', '0');
INSERT INTO `oc_setting` VALUES ('163', '0', 'dashboard_order', 'dashboard_order_sort_order', '1', '0');
INSERT INTO `oc_setting` VALUES ('164', '0', 'dashboard_order', 'dashboard_order_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('165', '0', 'dashboard_order', 'dashboard_order_width', '3', '0');
INSERT INTO `oc_setting` VALUES ('166', '0', 'dashboard_sale', 'dashboard_sale_sort_order', '2', '0');
INSERT INTO `oc_setting` VALUES ('167', '0', 'dashboard_customer', 'dashboard_customer_sort_order', '3', '0');
INSERT INTO `oc_setting` VALUES ('168', '0', 'dashboard_online', 'dashboard_online_sort_order', '4', '0');
INSERT INTO `oc_setting` VALUES ('169', '0', 'dashboard_map', 'dashboard_map_sort_order', '5', '0');
INSERT INTO `oc_setting` VALUES ('170', '0', 'dashboard_chart', 'dashboard_chart_sort_order', '6', '0');
INSERT INTO `oc_setting` VALUES ('171', '0', 'dashboard_recent', 'dashboard_recent_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('172', '0', 'dashboard_recent', 'dashboard_recent_sort_order', '8', '0');
INSERT INTO `oc_setting` VALUES ('173', '0', 'dashboard_activity', 'dashboard_activity_width', '4', '0');
INSERT INTO `oc_setting` VALUES ('174', '0', 'dashboard_recent', 'dashboard_recent_width', '8', '0');
INSERT INTO `oc_setting` VALUES ('175', '0', 'report_customer_activity', 'report_customer_activity_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('176', '0', 'report_customer_activity', 'report_customer_activity_sort_order', '1', '0');
INSERT INTO `oc_setting` VALUES ('177', '0', 'report_customer_order', 'report_customer_order_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('178', '0', 'report_customer_order', 'report_customer_order_sort_order', '2', '0');
INSERT INTO `oc_setting` VALUES ('179', '0', 'report_customer_reward', 'report_customer_reward_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('180', '0', 'report_customer_reward', 'report_customer_reward_sort_order', '3', '0');
INSERT INTO `oc_setting` VALUES ('181', '0', 'report_customer_search', 'report_customer_search_sort_order', '3', '0');
INSERT INTO `oc_setting` VALUES ('182', '0', 'report_customer_search', 'report_customer_search_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('183', '0', 'report_customer_transaction', 'report_customer_transaction_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('184', '0', 'report_customer_transaction', 'report_customer_transaction_status_sort_order', '4', '0');
INSERT INTO `oc_setting` VALUES ('185', '0', 'report_sale_tax', 'report_sale_tax_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('186', '0', 'report_sale_tax', 'report_sale_tax_sort_order', '5', '0');
INSERT INTO `oc_setting` VALUES ('187', '0', 'report_sale_shipping', 'report_sale_shipping_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('188', '0', 'report_sale_shipping', 'report_sale_shipping_sort_order', '6', '0');
INSERT INTO `oc_setting` VALUES ('189', '0', 'report_sale_return', 'report_sale_return_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('190', '0', 'report_sale_return', 'report_sale_return_sort_order', '7', '0');
INSERT INTO `oc_setting` VALUES ('191', '0', 'report_sale_order', 'report_sale_order_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('192', '0', 'report_sale_order', 'report_sale_order_sort_order', '8', '0');
INSERT INTO `oc_setting` VALUES ('193', '0', 'report_sale_coupon', 'report_sale_coupon_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('194', '0', 'report_sale_coupon', 'report_sale_coupon_sort_order', '9', '0');
INSERT INTO `oc_setting` VALUES ('195', '0', 'report_product_viewed', 'report_product_viewed_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('196', '0', 'report_product_viewed', 'report_product_viewed_sort_order', '10', '0');
INSERT INTO `oc_setting` VALUES ('197', '0', 'report_product_purchased', 'report_product_purchased_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('198', '0', 'report_product_purchased', 'report_product_purchased_sort_order', '11', '0');
INSERT INTO `oc_setting` VALUES ('199', '0', 'report_marketing', 'report_marketing_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('200', '0', 'report_marketing', 'report_marketing_sort_order', '12', '0');
INSERT INTO `oc_setting` VALUES ('2533', '0', 'developer', 'developer_theme', '0', '0');
INSERT INTO `oc_setting` VALUES ('4194', '0', 'config', 'config_shared', '0', '0');
INSERT INTO `oc_setting` VALUES ('4192', '0', 'config', 'config_compression', '0', '0');
INSERT INTO `oc_setting` VALUES ('4193', '0', 'config', 'config_password', '1', '0');
INSERT INTO `oc_setting` VALUES ('4189', '0', 'config', 'config_maintenance', '0', '0');
INSERT INTO `oc_setting` VALUES ('4188', '0', 'config', 'config_mail_alert_email', '', '0');
INSERT INTO `oc_setting` VALUES ('4187', '0', 'config', 'config_mail_smtp_timeout', '5', '0');
INSERT INTO `oc_setting` VALUES ('4186', '0', 'config', 'config_mail_smtp_port', '25', '0');
INSERT INTO `oc_setting` VALUES ('2534', '0', 'developer', 'developer_sass', '1', '0');
INSERT INTO `oc_setting` VALUES ('4185', '0', 'config', 'config_mail_smtp_password', '', '0');
INSERT INTO `oc_setting` VALUES ('4184', '0', 'config', 'config_mail_smtp_username', '', '0');
INSERT INTO `oc_setting` VALUES ('4183', '0', 'config', 'config_mail_smtp_hostname', '', '0');
INSERT INTO `oc_setting` VALUES ('4182', '0', 'config', 'config_mail_parameter', '', '0');
INSERT INTO `oc_setting` VALUES ('4181', '0', 'config', 'config_mail_engine', 'mail', '0');
INSERT INTO `oc_setting` VALUES ('4180', '0', 'config', 'config_icon', 'catalog/logo(1).png', '0');
INSERT INTO `oc_setting` VALUES ('4179', '0', 'config', 'config_logo', 'catalog/logo(1).png', '0');
INSERT INTO `oc_setting` VALUES ('4178', '0', 'config', 'config_captcha_page', '[\"review\",\"return\",\"contact\"]', '1');
INSERT INTO `oc_setting` VALUES ('4177', '0', 'config', 'config_captcha', 'basic', '0');
INSERT INTO `oc_setting` VALUES ('4176', '0', 'config', 'config_return_status_id', '2', '0');
INSERT INTO `oc_setting` VALUES ('2980', '0', 'theme_default', 'theme_default_image_category_width', '80', '0');
INSERT INTO `oc_setting` VALUES ('4175', '0', 'config', 'config_return_id', '3', '0');
INSERT INTO `oc_setting` VALUES ('4174', '0', 'config', 'config_affiliate_id', '4', '0');
INSERT INTO `oc_setting` VALUES ('2978', '0', 'theme_default', 'theme_default_product_limit', '15', '0');
INSERT INTO `oc_setting` VALUES ('2977', '0', 'theme_default', 'theme_default_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('2976', '0', 'theme_default', 'theme_default_directory', 'default', '0');
INSERT INTO `oc_setting` VALUES ('2685', '0', 'payment_pp_express', 'payment_pp_express_refunded_status_id', '11', '0');
INSERT INTO `oc_setting` VALUES ('2684', '0', 'payment_pp_express', 'payment_pp_express_processed_status_id', '15', '0');
INSERT INTO `oc_setting` VALUES ('2683', '0', 'payment_pp_express', 'payment_pp_express_pending_status_id', '1', '0');
INSERT INTO `oc_setting` VALUES ('2682', '0', 'payment_pp_express', 'payment_pp_express_failed_status_id', '10', '0');
INSERT INTO `oc_setting` VALUES ('2681', '0', 'payment_pp_express', 'payment_pp_express_expired_status_id', '14', '0');
INSERT INTO `oc_setting` VALUES ('2680', '0', 'payment_pp_express', 'payment_pp_express_denied_status_id', '8', '0');
INSERT INTO `oc_setting` VALUES ('2678', '0', 'payment_pp_express', 'payment_pp_express_canceled_reversal_status_id', '9', '0');
INSERT INTO `oc_setting` VALUES ('2679', '0', 'payment_pp_express', 'payment_pp_express_completed_status_id', '5', '0');
INSERT INTO `oc_setting` VALUES ('2675', '0', 'payment_pp_express', 'payment_pp_express_total', '0', '0');
INSERT INTO `oc_setting` VALUES ('2676', '0', 'payment_pp_express', 'payment_pp_express_geo_zone_id', '0', '0');
INSERT INTO `oc_setting` VALUES ('2677', '0', 'payment_pp_express', 'payment_pp_express_sort_order', '', '0');
INSERT INTO `oc_setting` VALUES ('2341', '0', 'payment_pp_braintree', 'payment_pp_braintree_paypal_check_vault', '0', '0');
INSERT INTO `oc_setting` VALUES ('2548', '0', 'currency_fixer', 'currency_fixer_status', '0', '0');
INSERT INTO `oc_setting` VALUES ('2340', '0', 'payment_pp_braintree', 'payment_pp_braintree_card_check_vault', '1', '0');
INSERT INTO `oc_setting` VALUES ('2338', '0', 'payment_pp_braintree', 'payment_pp_braintree_card_vault', '1', '0');
INSERT INTO `oc_setting` VALUES ('2336', '0', 'payment_pp_braintree', 'payment_pp_braintree_paypal_button_size', 'small', '0');
INSERT INTO `oc_setting` VALUES ('2339', '0', 'payment_pp_braintree', 'payment_pp_braintree_paypal_vault', '0', '0');
INSERT INTO `oc_setting` VALUES ('2337', '0', 'payment_pp_braintree', 'payment_pp_braintree_paypal_button_shape', 'rect', '0');
INSERT INTO `oc_setting` VALUES ('2334', '0', 'payment_pp_braintree', 'payment_pp_braintree_settlement_immediate', '1', '0');
INSERT INTO `oc_setting` VALUES ('2335', '0', 'payment_pp_braintree', 'payment_pp_braintree_paypal_option', '1', '0');
INSERT INTO `oc_setting` VALUES ('2333', '0', 'payment_pp_braintree', 'payment_pp_braintree_voided_id', '16', '0');
INSERT INTO `oc_setting` VALUES ('2331', '0', 'payment_pp_braintree', 'payment_pp_braintree_settlement_pending_id', '2', '0');
INSERT INTO `oc_setting` VALUES ('2332', '0', 'payment_pp_braintree', 'payment_pp_braintree_submitted_for_settlement_id', '2', '0');
INSERT INTO `oc_setting` VALUES ('2330', '0', 'payment_pp_braintree', 'payment_pp_braintree_settling_id', '2', '0');
INSERT INTO `oc_setting` VALUES ('2329', '0', 'payment_pp_braintree', 'payment_pp_braintree_settled_id', '2', '0');
INSERT INTO `oc_setting` VALUES ('2327', '0', 'payment_pp_braintree', 'payment_pp_braintree_gateway_rejected_id', '8', '0');
INSERT INTO `oc_setting` VALUES ('2328', '0', 'payment_pp_braintree', 'payment_pp_braintree_processor_declined_id', '8', '0');
INSERT INTO `oc_setting` VALUES ('2326', '0', 'payment_pp_braintree', 'payment_pp_braintree_failed_id', '10', '0');
INSERT INTO `oc_setting` VALUES ('2325', '0', 'payment_pp_braintree', 'payment_pp_braintree_authorizing_id', '1', '0');
INSERT INTO `oc_setting` VALUES ('2324', '0', 'payment_pp_braintree', 'payment_pp_braintree_authorized_id', '2', '0');
INSERT INTO `oc_setting` VALUES ('2323', '0', 'payment_pp_braintree', 'payment_pp_braintree_authorization_expired_id', '14', '0');
INSERT INTO `oc_setting` VALUES ('2321', '0', 'payment_pp_braintree', 'payment_pp_braintree_3ds_unable_to_auth', '1', '0');
INSERT INTO `oc_setting` VALUES ('2322', '0', 'payment_pp_braintree', 'payment_pp_braintree_3ds_error', '1', '0');
INSERT INTO `oc_setting` VALUES ('2319', '0', 'payment_pp_braintree', 'payment_pp_braintree_3ds_attempt_successful', '1', '0');
INSERT INTO `oc_setting` VALUES ('2320', '0', 'payment_pp_braintree', 'payment_pp_braintree_3ds_failed', '0', '0');
INSERT INTO `oc_setting` VALUES ('2318', '0', 'payment_pp_braintree', 'payment_pp_braintree_3ds_successful', '1', '0');
INSERT INTO `oc_setting` VALUES ('2317', '0', 'payment_pp_braintree', 'payment_pp_braintree_3ds_signature_failed', '0', '0');
INSERT INTO `oc_setting` VALUES ('2315', '0', 'payment_pp_braintree', 'payment_pp_braintree_3ds_not_participating', '1', '0');
INSERT INTO `oc_setting` VALUES ('2316', '0', 'payment_pp_braintree', 'payment_pp_braintree_3ds_unavailable', '1', '0');
INSERT INTO `oc_setting` VALUES ('2313', '0', 'payment_pp_braintree', 'payment_pp_braintree_3ds_lookup_enrolled', '1', '0');
INSERT INTO `oc_setting` VALUES ('2314', '0', 'payment_pp_braintree', 'payment_pp_braintree_3ds_lookup_not_enrolled', '1', '0');
INSERT INTO `oc_setting` VALUES ('2312', '0', 'payment_pp_braintree', 'payment_pp_braintree_3ds_lookup_error', '1', '0');
INSERT INTO `oc_setting` VALUES ('2311', '0', 'payment_pp_braintree', 'payment_pp_braintree_3ds_unsupported_card', '1', '0');
INSERT INTO `oc_setting` VALUES ('2674', '0', 'payment_pp_express', 'payment_pp_express_transaction', 'Sale', '0');
INSERT INTO `oc_setting` VALUES ('2673', '0', 'payment_pp_express', 'payment_pp_express_recurring_cancel', '0', '0');
INSERT INTO `oc_setting` VALUES ('2672', '0', 'payment_pp_express', 'payment_pp_express_currency', 'USD', '0');
INSERT INTO `oc_setting` VALUES ('2671', '0', 'payment_pp_express', 'payment_pp_express_debug', '1', '0');
INSERT INTO `oc_setting` VALUES ('2670', '0', 'payment_pp_express', 'payment_pp_express_test', '1', '0');
INSERT INTO `oc_setting` VALUES ('2669', '0', 'payment_pp_express', 'payment_pp_express_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('2668', '0', 'payment_pp_express', 'payment_pp_express_sandbox_signature', 'AFcWxV21C7fd0v3bYYYRCpSSRl31A08WOp9rbmn5JYn2r79DP.tNUGuf', '0');
INSERT INTO `oc_setting` VALUES ('2667', '0', 'payment_pp_express', 'payment_pp_express_sandbox_password', 'NYRAX2WHETV3PMDB', '0');
INSERT INTO `oc_setting` VALUES ('2666', '0', 'payment_pp_express', 'payment_pp_express_sandbox_username', 'battery.test.rcmart-facilitator_api1.gmail.com', '0');
INSERT INTO `oc_setting` VALUES ('2665', '0', 'payment_pp_express', 'payment_pp_express_signature', 'xx', '0');
INSERT INTO `oc_setting` VALUES ('2664', '0', 'payment_pp_express', 'payment_pp_express_password', 'xx', '0');
INSERT INTO `oc_setting` VALUES ('2663', '0', 'payment_pp_express', 'payment_pp_express_username', 'xx', '0');
INSERT INTO `oc_setting` VALUES ('2689', '0', 'payment_pp_express', 'payment_pp_express_colour', '', '0');
INSERT INTO `oc_setting` VALUES ('2690', '0', 'payment_pp_express', 'payment_pp_express_logo', '', '0');
INSERT INTO `oc_setting` VALUES ('2691', '0', 'payment_pp_express', 'payment_pp_express_incontext_disable', '0', '0');
INSERT INTO `oc_setting` VALUES ('4173', '0', 'config', 'config_affiliate_commission', '5', '0');
INSERT INTO `oc_setting` VALUES ('4172', '0', 'config', 'config_affiliate_auto', '0', '0');
INSERT INTO `oc_setting` VALUES ('3091', '0', 'analytics_baidu', 'analytics_baidu_code', '&lt;script&gt;\r\nvar _hmt = _hmt || [];\r\n(function() {\r\n  var hm = document.createElement(&quot;script&quot;);\r\n  hm.src = &quot;https://hm.baidu.com/hm.js?225a7d5057a699e59ac083f01be897e1&quot;;\r\n  var s = document.getElementsByTagName(&quot;script&quot;)[0]; \r\n  s.parentNode.insertBefore(hm, s);\r\n})();\r\n&lt;/script&gt;', '0');
INSERT INTO `oc_setting` VALUES ('3092', '0', 'analytics_baidu', 'analytics_baidu_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('4170', '0', 'config', 'config_affiliate_group_id', '1', '0');
INSERT INTO `oc_setting` VALUES ('4171', '0', 'config', 'config_affiliate_approval', '0', '0');
INSERT INTO `oc_setting` VALUES ('4169', '0', 'config', 'config_stock_checkout', '0', '0');
INSERT INTO `oc_setting` VALUES ('4168', '0', 'config', 'config_stock_warning', '0', '0');
INSERT INTO `oc_setting` VALUES ('4167', '0', 'config', 'config_stock_display', '0', '0');
INSERT INTO `oc_setting` VALUES ('4166', '0', 'config', 'config_api_id', '1', '0');
INSERT INTO `oc_setting` VALUES ('4165', '0', 'config', 'config_fraud_status_id', '8', '0');
INSERT INTO `oc_setting` VALUES ('4164', '0', 'config', 'config_complete_status', '[\"3\",\"5\"]', '1');
INSERT INTO `oc_setting` VALUES ('4163', '0', 'config', 'config_processing_status', '[\"2\",\"3\",\"5\",\"12\",\"1\"]', '1');
INSERT INTO `oc_setting` VALUES ('4162', '0', 'config', 'config_order_status_id', '1', '0');
INSERT INTO `oc_setting` VALUES ('4161', '0', 'config', 'config_checkout_id', '5', '0');
INSERT INTO `oc_setting` VALUES ('4160', '0', 'config', 'config_checkout_guest', '1', '0');
INSERT INTO `oc_setting` VALUES ('4159', '0', 'config', 'config_cart_weight', '0', '0');
INSERT INTO `oc_setting` VALUES ('4158', '0', 'config', 'config_invoice_prefix', 'INV-2018-00', '0');
INSERT INTO `oc_setting` VALUES ('4157', '0', 'config', 'config_account_id', '3', '0');
INSERT INTO `oc_setting` VALUES ('4156', '0', 'config', 'config_login_attempts', '5', '0');
INSERT INTO `oc_setting` VALUES ('4155', '0', 'config', 'config_customer_price', '0', '0');
INSERT INTO `oc_setting` VALUES ('4154', '0', 'config', 'config_customer_group_display', '[\"1\"]', '1');
INSERT INTO `oc_setting` VALUES ('4153', '0', 'config', 'config_customer_group_id', '1', '0');
INSERT INTO `oc_setting` VALUES ('4152', '0', 'config', 'config_customer_search', '0', '0');
INSERT INTO `oc_setting` VALUES ('4151', '0', 'config', 'config_customer_activity', '0', '0');
INSERT INTO `oc_setting` VALUES ('4150', '0', 'config', 'config_customer_online', '0', '0');
INSERT INTO `oc_setting` VALUES ('4149', '0', 'config', 'config_tax_customer', 'shipping', '0');
INSERT INTO `oc_setting` VALUES ('4148', '0', 'config', 'config_tax_default', 'shipping', '0');
INSERT INTO `oc_setting` VALUES ('4147', '0', 'config', 'config_tax', '0', '0');
INSERT INTO `oc_setting` VALUES ('4146', '0', 'config', 'config_voucher_max', '1000', '0');
INSERT INTO `oc_setting` VALUES ('4145', '0', 'config', 'config_voucher_min', '1', '0');
INSERT INTO `oc_setting` VALUES ('4144', '0', 'config', 'config_review_guest', '1', '0');
INSERT INTO `oc_setting` VALUES ('4143', '0', 'config', 'config_review_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('4142', '0', 'config', 'config_limit_admin', '20', '0');
INSERT INTO `oc_setting` VALUES ('4141', '0', 'config', 'config_product_category', '1', '0');
INSERT INTO `oc_setting` VALUES ('4140', '0', 'config', 'config_product_count', '0', '0');
INSERT INTO `oc_setting` VALUES ('4139', '0', 'config', 'config_weight_class_id', '1', '0');
INSERT INTO `oc_setting` VALUES ('4138', '0', 'config', 'config_length_class_id', '1', '0');
INSERT INTO `oc_setting` VALUES ('4137', '0', 'config', 'config_currency_auto', '0', '0');
INSERT INTO `oc_setting` VALUES ('4136', '0', 'config', 'config_currency', 'CNY', '0');
INSERT INTO `oc_setting` VALUES ('4135', '0', 'config', 'config_admin_language', 'zh-cn', '0');
INSERT INTO `oc_setting` VALUES ('4134', '0', 'config', 'config_language', 'zh-cn', '0');
INSERT INTO `oc_setting` VALUES ('4133', '0', 'config', 'config_zone_id', '710', '0');
INSERT INTO `oc_setting` VALUES ('4132', '0', 'config', 'config_country_id', '44', '0');
INSERT INTO `oc_setting` VALUES ('4131', '0', 'config', 'config_comment', '', '0');
INSERT INTO `oc_setting` VALUES ('4130', '0', 'config', 'config_open', '', '0');
INSERT INTO `oc_setting` VALUES ('4128', '0', 'config', 'config_fax', '', '0');
INSERT INTO `oc_setting` VALUES ('4129', '0', 'config', 'config_image', 'catalog/logo(1).png', '0');
INSERT INTO `oc_setting` VALUES ('4127', '0', 'config', 'config_telephone', '028-87966209', '0');
INSERT INTO `oc_setting` VALUES ('4126', '0', 'config', 'config_email', '1368114756@qq.com', '0');
INSERT INTO `oc_setting` VALUES ('4125', '0', 'config', 'config_geocode', '', '0');
INSERT INTO `oc_setting` VALUES ('4124', '0', 'config', 'config_address', '北京市昌平区天通中苑二区45号自安然大厦28层', '0');
INSERT INTO `oc_setting` VALUES ('4123', '0', 'config', 'config_owner', 'Admin', '0');
INSERT INTO `oc_setting` VALUES ('4122', '0', 'config', 'config_name', '红福网', '0');
INSERT INTO `oc_setting` VALUES ('4121', '0', 'config', 'config_layout_id', '4', '0');
INSERT INTO `oc_setting` VALUES ('4120', '0', 'config', 'config_theme', 'default', '0');
INSERT INTO `oc_setting` VALUES ('4119', '0', 'config', 'config_meta_keyword', '', '0');
INSERT INTO `oc_setting` VALUES ('4118', '0', 'config', 'config_meta_description', '红福网', '0');
INSERT INTO `oc_setting` VALUES ('4117', '0', 'config', 'config_meta_title', '红福网', '0');
INSERT INTO `oc_setting` VALUES ('4202', '0', 'module_store', 'module_store_admin', '1', '0');
INSERT INTO `oc_setting` VALUES ('4203', '0', 'module_store', 'module_store_status', '1', '0');

-- ----------------------------
-- Table structure for oc_shipping_courier
-- ----------------------------
DROP TABLE IF EXISTS `oc_shipping_courier`;
CREATE TABLE `oc_shipping_courier` (
  `shipping_courier_id` int(11) NOT NULL,
  `shipping_courier_code` varchar(255) NOT NULL,
  `shipping_courier_name` varchar(255) NOT NULL,
  PRIMARY KEY (`shipping_courier_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_shipping_courier
-- ----------------------------

-- ----------------------------
-- Table structure for oc_shop
-- ----------------------------
DROP TABLE IF EXISTS `oc_shop`;
CREATE TABLE `oc_shop` (
  `shop_id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `shop_tel` varchar(20) DEFAULT NULL COMMENT '电话',
  `shop_card` varchar(30) DEFAULT NULL COMMENT '身份证',
  `shop_pwd` varchar(50) DEFAULT NULL,
  `shop_salt` varchar(10) DEFAULT NULL,
  `shop_status` tinyint(4) DEFAULT NULL,
  `shop_adddate` datetime DEFAULT NULL,
  PRIMARY KEY (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_shop
-- ----------------------------

-- ----------------------------
-- Table structure for oc_statistics
-- ----------------------------
DROP TABLE IF EXISTS `oc_statistics`;
CREATE TABLE `oc_statistics` (
  `statistics_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  `value` decimal(15,4) NOT NULL,
  PRIMARY KEY (`statistics_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_statistics
-- ----------------------------
INSERT INTO `oc_statistics` VALUES ('1', 'order_sale', '249.9880');
INSERT INTO `oc_statistics` VALUES ('2', 'order_processing', '0.0000');
INSERT INTO `oc_statistics` VALUES ('3', 'order_complete', '0.0000');
INSERT INTO `oc_statistics` VALUES ('4', 'order_other', '0.0000');
INSERT INTO `oc_statistics` VALUES ('5', 'returns', '0.0000');
INSERT INTO `oc_statistics` VALUES ('6', 'product', '0.0000');
INSERT INTO `oc_statistics` VALUES ('7', 'review', '0.0000');

-- ----------------------------
-- Table structure for oc_stock_status
-- ----------------------------
DROP TABLE IF EXISTS `oc_stock_status`;
CREATE TABLE `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`stock_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_stock_status
-- ----------------------------
INSERT INTO `oc_stock_status` VALUES ('7', '1', 'In Stock');
INSERT INTO `oc_stock_status` VALUES ('8', '1', 'Pre-Order');
INSERT INTO `oc_stock_status` VALUES ('5', '1', 'Out Of Stock');
INSERT INTO `oc_stock_status` VALUES ('6', '1', '2-3 Days');
INSERT INTO `oc_stock_status` VALUES ('7', '2', '有货');
INSERT INTO `oc_stock_status` VALUES ('8', '2', '预售');
INSERT INTO `oc_stock_status` VALUES ('5', '2', '无货');
INSERT INTO `oc_stock_status` VALUES ('6', '2', '2-3 天后到货');

-- ----------------------------
-- Table structure for oc_store
-- ----------------------------
DROP TABLE IF EXISTS `oc_store`;
CREATE TABLE `oc_store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_store
-- ----------------------------

-- ----------------------------
-- Table structure for oc_tax_class
-- ----------------------------
DROP TABLE IF EXISTS `oc_tax_class`;
CREATE TABLE `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_tax_class
-- ----------------------------
INSERT INTO `oc_tax_class` VALUES ('9', '征税商品', '征税商品', '2009-01-06 23:21:53', '2011-09-23 14:07:50');
INSERT INTO `oc_tax_class` VALUES ('10', '电子下载商品', '电子下载商品', '2011-09-21 22:19:39', '2011-09-22 10:27:36');

-- ----------------------------
-- Table structure for oc_tax_rate
-- ----------------------------
DROP TABLE IF EXISTS `oc_tax_rate`;
CREATE TABLE `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_rate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_tax_rate
-- ----------------------------
INSERT INTO `oc_tax_rate` VALUES ('86', '3', 'VAT (20%)', '20.0000', 'P', '2011-03-09 21:17:10', '2011-09-22 22:24:29');
INSERT INTO `oc_tax_rate` VALUES ('87', '3', 'Eco Tax (-2.00)', '2.0000', 'F', '2011-09-21 21:49:23', '2011-09-23 00:40:19');

-- ----------------------------
-- Table structure for oc_tax_rate_to_customer_group
-- ----------------------------
DROP TABLE IF EXISTS `oc_tax_rate_to_customer_group`;
CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`tax_rate_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_tax_rate_to_customer_group
-- ----------------------------
INSERT INTO `oc_tax_rate_to_customer_group` VALUES ('86', '1');
INSERT INTO `oc_tax_rate_to_customer_group` VALUES ('87', '1');

-- ----------------------------
-- Table structure for oc_tax_rule
-- ----------------------------
DROP TABLE IF EXISTS `oc_tax_rule`;
CREATE TABLE `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`tax_rule_id`)
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_tax_rule
-- ----------------------------
INSERT INTO `oc_tax_rule` VALUES ('121', '10', '86', 'payment', '1');
INSERT INTO `oc_tax_rule` VALUES ('120', '10', '87', 'store', '0');
INSERT INTO `oc_tax_rule` VALUES ('128', '9', '86', 'shipping', '1');
INSERT INTO `oc_tax_rule` VALUES ('127', '9', '87', 'shipping', '2');

-- ----------------------------
-- Table structure for oc_theme
-- ----------------------------
DROP TABLE IF EXISTS `oc_theme`;
CREATE TABLE `oc_theme` (
  `theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `theme` varchar(64) NOT NULL,
  `route` varchar(64) NOT NULL,
  `code` mediumtext NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`theme_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_theme
-- ----------------------------

-- ----------------------------
-- Table structure for oc_translation
-- ----------------------------
DROP TABLE IF EXISTS `oc_translation`;
CREATE TABLE `oc_translation` (
  `translation_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`translation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_translation
-- ----------------------------

-- ----------------------------
-- Table structure for oc_upload
-- ----------------------------
DROP TABLE IF EXISTS `oc_upload`;
CREATE TABLE `oc_upload` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`upload_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_upload
-- ----------------------------

-- ----------------------------
-- Table structure for oc_user
-- ----------------------------
DROP TABLE IF EXISTS `oc_user`;
CREATE TABLE `oc_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `fullname` varchar(64) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_user
-- ----------------------------
INSERT INTO `oc_user` VALUES ('1', '1', 'admin', '$2y$10$tQzFhbZ7kcaYHge117hrleW6tJMXfhVRys.jJpPRLAPNXfYlqvOzu', '', 'John', '1368114756@qq.com', '', '3700191ced5fc059f553ddbd46e7d79082ff785d', '127.0.0.1', '1', '2018-06-26 09:26:10');
INSERT INTO `oc_user` VALUES ('2', '2', 'demo', '$2y$10$tQzFhbZ7kcaYHge117hrleW6tJMXfhVRys.jJpPRLAPNXfYlqvOzu', '', 'wyc', '136811476@qq.com', '', '', '127.0.0.1', '1', '2018-08-21 10:06:37');
INSERT INTO `oc_user` VALUES ('3', '0', '', '$2y$10$FFf6FYYlW5f9/VKkYJAkg.F0zt3/hei8iWq7zImnnB3oHl8WFHz.C', '', '', '', '', '', '', '0', '2018-09-07 16:10:23');

-- ----------------------------
-- Table structure for oc_user_group
-- ----------------------------
DROP TABLE IF EXISTS `oc_user_group`;
CREATE TABLE `oc_user_group` (
  `user_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`user_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_user_group
-- ----------------------------
INSERT INTO `oc_user_group` VALUES ('1', '管理员', '{\"access\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/product_option\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/cron\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/register\",\"common\\/security\",\"cron\\/currency\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"event\\/currency\",\"event\\/debug\",\"event\\/language\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/analytics\\/baidu\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/currency\\/fixer\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/currency\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/module\\/account\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/pp_login\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/payment\\/alipay\",\"extension\\/payment\\/alipay_cross\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/pp_braintree\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/wechat_pay\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/citylink\",\"extension\\/shipping\\/ec_ship\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/city\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/affiliate\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/cron\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upgrade\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"catalog\\/ebaypro\",\"extension\\/module\\/store\"],\"modify\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/product_option\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/cron\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/register\",\"common\\/security\",\"cron\\/currency\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"event\\/currency\",\"event\\/debug\",\"event\\/language\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/analytics\\/baidu\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/currency\\/fixer\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/currency\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/module\\/account\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/pp_login\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/payment\\/alipay\",\"extension\\/payment\\/alipay_cross\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/pp_braintree\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/wechat_pay\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/citylink\",\"extension\\/shipping\\/ec_ship\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/city\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/affiliate\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/cron\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upgrade\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"catalog\\/ebaypro\",\"extension\\/module\\/store\"]}');
INSERT INTO `oc_user_group` VALUES ('2', '客户组', '{\"access\":[\"catalog\\/product\"],\"modify\":[\"catalog\\/product\"]}');

-- ----------------------------
-- Table structure for oc_voucher
-- ----------------------------
DROP TABLE IF EXISTS `oc_voucher`;
CREATE TABLE `oc_voucher` (
  `voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_voucher
-- ----------------------------

-- ----------------------------
-- Table structure for oc_voucher_history
-- ----------------------------
DROP TABLE IF EXISTS `oc_voucher_history`;
CREATE TABLE `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_voucher_history
-- ----------------------------

-- ----------------------------
-- Table structure for oc_voucher_theme
-- ----------------------------
DROP TABLE IF EXISTS `oc_voucher_theme`;
CREATE TABLE `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_voucher_theme
-- ----------------------------
INSERT INTO `oc_voucher_theme` VALUES ('8', 'catalog/demo/canon_eos_5d_2.jpg');
INSERT INTO `oc_voucher_theme` VALUES ('7', 'catalog/demo/gift-voucher-birthday.jpg');
INSERT INTO `oc_voucher_theme` VALUES ('6', 'catalog/demo/apple_logo.jpg');

-- ----------------------------
-- Table structure for oc_voucher_theme_description
-- ----------------------------
DROP TABLE IF EXISTS `oc_voucher_theme_description`;
CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_voucher_theme_description
-- ----------------------------
INSERT INTO `oc_voucher_theme_description` VALUES ('6', '1', 'Christmas');
INSERT INTO `oc_voucher_theme_description` VALUES ('7', '1', 'Birthday');
INSERT INTO `oc_voucher_theme_description` VALUES ('8', '1', 'General');
INSERT INTO `oc_voucher_theme_description` VALUES ('6', '2', '圣诞节');
INSERT INTO `oc_voucher_theme_description` VALUES ('7', '2', '生日');
INSERT INTO `oc_voucher_theme_description` VALUES ('8', '2', '通用');

-- ----------------------------
-- Table structure for oc_weight_class
-- ----------------------------
DROP TABLE IF EXISTS `oc_weight_class`;
CREATE TABLE `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`weight_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_weight_class
-- ----------------------------
INSERT INTO `oc_weight_class` VALUES ('1', '1.00000000');
INSERT INTO `oc_weight_class` VALUES ('2', '1000.00000000');
INSERT INTO `oc_weight_class` VALUES ('5', '2.20460000');
INSERT INTO `oc_weight_class` VALUES ('6', '35.27400000');

-- ----------------------------
-- Table structure for oc_weight_class_description
-- ----------------------------
DROP TABLE IF EXISTS `oc_weight_class_description`;
CREATE TABLE `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`weight_class_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_weight_class_description
-- ----------------------------
INSERT INTO `oc_weight_class_description` VALUES ('1', '1', 'Kilogram', 'kg');
INSERT INTO `oc_weight_class_description` VALUES ('2', '1', 'Gram', 'g');
INSERT INTO `oc_weight_class_description` VALUES ('5', '1', 'Pound ', 'lb');
INSERT INTO `oc_weight_class_description` VALUES ('6', '1', 'Ounce', 'oz');
INSERT INTO `oc_weight_class_description` VALUES ('1', '2', '千克', 'kg');
INSERT INTO `oc_weight_class_description` VALUES ('2', '2', '克', 'g');
INSERT INTO `oc_weight_class_description` VALUES ('5', '2', '磅', 'lb');
INSERT INTO `oc_weight_class_description` VALUES ('6', '2', '盎司', 'oz');

-- ----------------------------
-- Table structure for oc_zone
-- ----------------------------
DROP TABLE IF EXISTS `oc_zone`;
CREATE TABLE `oc_zone` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4238 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_zone
-- ----------------------------
INSERT INTO `oc_zone` VALUES ('684', '44', '安徽省', 'AN', '1');
INSERT INTO `oc_zone` VALUES ('685', '44', '北京市', 'BE', '1');
INSERT INTO `oc_zone` VALUES ('686', '44', '重庆市', 'CH', '1');
INSERT INTO `oc_zone` VALUES ('687', '44', '福建省', 'FU', '1');
INSERT INTO `oc_zone` VALUES ('688', '44', '甘肃省', 'GA', '1');
INSERT INTO `oc_zone` VALUES ('689', '44', '广东省', 'GU', '1');
INSERT INTO `oc_zone` VALUES ('690', '44', '广西壮族自治区', 'GX', '1');
INSERT INTO `oc_zone` VALUES ('691', '44', '贵州省', 'GZ', '1');
INSERT INTO `oc_zone` VALUES ('692', '44', '海南省', 'HA', '1');
INSERT INTO `oc_zone` VALUES ('693', '44', '河北省', 'HB', '1');
INSERT INTO `oc_zone` VALUES ('694', '44', '黑龙江省', 'HL', '1');
INSERT INTO `oc_zone` VALUES ('695', '44', '河南省', 'HE', '1');
INSERT INTO `oc_zone` VALUES ('696', '44', '香港特别行政区', 'HK', '1');
INSERT INTO `oc_zone` VALUES ('697', '44', '湖北省', 'HU', '1');
INSERT INTO `oc_zone` VALUES ('698', '44', '湖南省', 'HN', '1');
INSERT INTO `oc_zone` VALUES ('699', '44', '内蒙古自治区', 'IM', '1');
INSERT INTO `oc_zone` VALUES ('700', '44', '江苏省', 'JI', '1');
INSERT INTO `oc_zone` VALUES ('701', '44', '江西省', 'JX', '1');
INSERT INTO `oc_zone` VALUES ('702', '44', '吉林省', 'JL', '1');
INSERT INTO `oc_zone` VALUES ('703', '44', '辽宁省', 'LI', '1');
INSERT INTO `oc_zone` VALUES ('704', '44', '澳门特别行政区', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('705', '44', '宁夏回族自治区', 'NI', '1');
INSERT INTO `oc_zone` VALUES ('706', '44', '山西省', 'SH', '1');
INSERT INTO `oc_zone` VALUES ('707', '44', '山东省', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('708', '44', '上海市', 'SG', '1');
INSERT INTO `oc_zone` VALUES ('709', '44', '陕西省', 'SX', '1');
INSERT INTO `oc_zone` VALUES ('710', '44', '四川省', 'SI', '1');
INSERT INTO `oc_zone` VALUES ('711', '44', '天津市', 'TI', '1');
INSERT INTO `oc_zone` VALUES ('712', '44', '新疆维吾尔自治区', 'XI', '1');
INSERT INTO `oc_zone` VALUES ('713', '44', '云南省', 'YU', '1');
INSERT INTO `oc_zone` VALUES ('714', '44', '浙江省', 'ZH', '1');
INSERT INTO `oc_zone` VALUES ('4237', '44', '台湾省', 'TW', '1');
INSERT INTO `oc_zone` VALUES ('4236', '44', '西藏自治区', 'XZ', '1');
INSERT INTO `oc_zone` VALUES ('4232', '44', '青海省', 'QH', '1');

-- ----------------------------
-- Table structure for oc_zone_to_geo_zone
-- ----------------------------
DROP TABLE IF EXISTS `oc_zone_to_geo_zone`;
CREATE TABLE `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`zone_to_geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=218 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_zone_to_geo_zone
-- ----------------------------
INSERT INTO `oc_zone_to_geo_zone` VALUES ('110', '44', '0', '4', '2016-11-22 12:07:38', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('217', '44', '688', '3', '2016-11-22 12:09:27', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('216', '44', '705', '3', '2016-11-22 12:09:27', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('215', '44', '710', '3', '2016-11-22 12:09:27', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('214', '44', '712', '3', '2016-11-22 12:09:27', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('213', '44', '4236', '3', '2016-11-22 12:09:27', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('212', '44', '686', '3', '2016-11-22 12:09:27', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('211', '44', '709', '3', '2016-11-22 12:09:27', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('210', '44', '4232', '3', '2016-11-22 12:09:27', '0000-00-00 00:00:00');
