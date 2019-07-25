/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : xingxin

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-07-24 18:38:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for xx_about_us
-- ----------------------------
DROP TABLE IF EXISTS `xx_about_us`;
CREATE TABLE `xx_about_us` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `note` text,
  `update_at` varchar(10) DEFAULT '' COMMENT '更新时间',
  `mobile` varchar(11) DEFAULT '' COMMENT '手机',
  `telephone` varchar(20) DEFAULT '' COMMENT '电话',
  `fax` varchar(20) DEFAULT '' COMMENT '传真',
  `email` varchar(50) DEFAULT '' COMMENT '邮箱',
  `url` varchar(255) DEFAULT '' COMMENT '网址',
  `addr` varchar(255) DEFAULT '' COMMENT '地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xx_about_us
-- ----------------------------
INSERT INTO `xx_about_us` VALUES ('1', '<ol class=\"layui-code-ol list-paddingleft-2\" style=\"padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: content-box; position: relative; overflow: auto; color: rgb(51, 51, 51); font-family: &quot;Courier New&quot;; font-size: 12px; white-space: pre-wrap;\"><li><p>//eg1</p></li><li><p>layer.confirm(&#39;纳尼？&#39;, {</p></li><li><p>btn: [&#39;按钮一&#39;, &#39;按钮二&#39;, &#39;按钮三&#39;] //可以无限个按钮</p></li><li><p>,btn3: function(index, layero){</p></li><li><p>//按钮【按钮三】的回调</p></li><li><p>}</p></li><li><p>}, function(index, layero){</p></li><li><p>//按钮【按钮一】的回调</p></li><li><p>}, function(index){</p></li><li><p>//按钮【按钮二】的回调</p></li><li><p>});</p></li><li><p><br/></p></li></ol><p><br/></p>', '1563951126', '13511111111', '3396957', '3396957', '123@qq.com', 'baidu.com', '广东省广州市');

-- ----------------------------
-- Table structure for xx_admin
-- ----------------------------
DROP TABLE IF EXISTS `xx_admin`;
CREATE TABLE `xx_admin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '管理员表',
  `username` varchar(255) NOT NULL COMMENT '账号',
  `password` char(32) NOT NULL COMMENT '密码',
  `role_id` int(11) NOT NULL COMMENT '角色id',
  `create_at` int(10) NOT NULL DEFAULT '0' COMMENT '时间',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态（0冻结1启用）',
  `is_del` tinyint(1) DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xx_admin
-- ----------------------------
INSERT INTO `xx_admin` VALUES ('1', 'admin', '0ebaa80e24fb73edc51af9ca013e516f', '1', '1530845318', '1', '0');
INSERT INTO `xx_admin` VALUES ('10', 'wei', '72a0d68fd82688692bfecea349883627', '1', '1561712949', '1', '0');
INSERT INTO `xx_admin` VALUES ('11', 'wei2', '72a0d68fd82688692bfecea349883627', '1', '1561713253', '0', '1');

-- ----------------------------
-- Table structure for xx_article
-- ----------------------------
DROP TABLE IF EXISTS `xx_article`;
CREATE TABLE `xx_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `img` varchar(255) DEFAULT '' COMMENT '封面',
  `title` varchar(100) DEFAULT '' COMMENT '标题',
  `author` varchar(100) DEFAULT '' COMMENT '作者',
  `create_at` varchar(10) DEFAULT '' COMMENT '添加时间',
  `status` tinyint(1) DEFAULT '1',
  `is_del` tinyint(1) DEFAULT '0',
  `note` text COMMENT '内容',
  `intro` varchar(255) DEFAULT '' COMMENT '简介',
  `sort` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xx_article
-- ----------------------------
INSERT INTO `xx_article` VALUES ('4', '/uploads/20190724/0e3038c4c073189d6ba349ea2a8961cd.jpg', '我国无铅热稳定剂发展前景可期', 'admin', '1563937034', '0', '1', '<p><span style=\"color: rgb(49, 49, 49); font-family: 微软雅黑; font-size: 14px;\">热稳定剂是聚氯乙烯制品加工中使用的主要助剂，用于改进聚氯乙烯制品的热稳定性。传统的热稳定剂是含铅热稳定剂，因为铅的毒性，欧美国家正在快速减少含铅热稳定剂的使用，部分欧洲国家规定到2015年全面停止使用含铅热稳定剂。我国虽然没有强制规定淘汰期限，但鼓励发展无铅热稳定剂，加快替代进程。 无铅热稳定剂的重点发展品种是稀土热稳定剂、有机锡热稳定剂和钙-锌复合型热稳定剂。我国企业在全球率先实现了稀土热稳定剂产业化，原料稀土元素主要是镧、铈类稀土化合物产品，安全卫生，无放射性，多年来用于出口塑料玩具的生产，在国际市场享有相当知名度。我国具有稀土资源优势，稀土热稳定剂应作为我国发展无铅热稳定剂的首选方向。</span><br/><br/><span style=\"color: rgb(49, 49, 49); font-family: 微软雅黑; font-size: 14px;\">&nbsp; &nbsp; 有机锡热稳定剂是欧美国家的主导品种，综合性能好，但价格较高，我国未来也有较大发展空间。</span><br/><br/><span style=\"color: rgb(49, 49, 49); font-family: 微软雅黑; font-size: 14px;\">&nbsp; &nbsp; 复合型热稳定剂可综合多种热稳定剂特点，其中钙-锌复合型热稳定剂无毒无害，主要用于型材、管材、管件、食品包装用塑料制品、保鲜膜产品等，随着钙锌稳定剂产品的不断进步，钙锌稳定剂将在电缆、医药器械、发泡产品、木塑类等行业在更大范围推广使用。</span></p>', '我国无铅热稳定剂发展前景可期', '99');

-- ----------------------------
-- Table structure for xx_auth
-- ----------------------------
DROP TABLE IF EXISTS `xx_auth`;
CREATE TABLE `xx_auth` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '权限表',
  `auth_name` varchar(255) DEFAULT NULL,
  `rules` varchar(255) DEFAULT NULL,
  `params` varchar(255) DEFAULT '[]' COMMENT '参数',
  `pid` int(11) DEFAULT NULL COMMENT '父ID',
  `is_del` tinyint(1) DEFAULT '0' COMMENT '是否删除',
  `type` tinyint(1) DEFAULT '1' COMMENT '类型（1表示总后台2分后台）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xx_auth
-- ----------------------------
INSERT INTO `xx_auth` VALUES ('1', '权限管理', null, '[]', '0', '0', '1');
INSERT INTO `xx_auth` VALUES ('2', '管理员列表', 'admin/admin', '[]', '1', '0', '1');
INSERT INTO `xx_auth` VALUES ('3', '角色管理', 'role/role', '[]', '1', '0', '1');
INSERT INTO `xx_auth` VALUES ('4', '轮播图管理', null, '[]', '0', '0', '1');
INSERT INTO `xx_auth` VALUES ('5', '轮播图列表', 'banner/index', '[]', '4', '0', '1');
INSERT INTO `xx_auth` VALUES ('6', '新闻管理', null, '[]', '0', '0', '1');
INSERT INTO `xx_auth` VALUES ('7', '文章列表', 'article/index', '[]', '6', '0', '1');
INSERT INTO `xx_auth` VALUES ('8', '分类列表', 'type/index', '[]', '9', '0', '1');
INSERT INTO `xx_auth` VALUES ('9', '产品管理', null, '[]', '0', '0', '1');
INSERT INTO `xx_auth` VALUES ('10', '产品列表', 'product/index', '[]', '9', '0', '1');
INSERT INTO `xx_auth` VALUES ('11', '关于我们', null, '[]', '0', '0', '1');
INSERT INTO `xx_auth` VALUES ('12', '公司信息', 'about/info', '[]', '11', '0', '1');

-- ----------------------------
-- Table structure for xx_banner
-- ----------------------------
DROP TABLE IF EXISTS `xx_banner`;
CREATE TABLE `xx_banner` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT '' COMMENT '标题',
  `img` varchar(255) DEFAULT '' COMMENT '图片',
  `sort` int(10) DEFAULT '0' COMMENT '排序（越大越前）',
  `status` tinyint(1) DEFAULT '1',
  `is_del` tinyint(1) DEFAULT '0',
  `create_at` varchar(10) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='banner表';

-- ----------------------------
-- Records of xx_banner
-- ----------------------------
INSERT INTO `xx_banner` VALUES ('5', '测试', '/uploads/20190724/779f80e33aa12809b22220315dec1e45.jpg', '55', '1', '1', '1563933205');
INSERT INTO `xx_banner` VALUES ('6', '幻灯1', '/uploads/20190724/9573225e7dfc60c80506f843caf29d9c.jpg', '0', '1', '1', '1563954708');
INSERT INTO `xx_banner` VALUES ('7', '幻灯2', '/uploads/20190724/f212aa28febe7cc21e4934f4b0310189.jpg', '1', '1', '1', '1563954762');
INSERT INTO `xx_banner` VALUES ('8', '幻灯3', '/uploads/20190724/150aa640d7ed3a97409ec23929e50fea.jpg', '0', '1', '1', '1563954794');
INSERT INTO `xx_banner` VALUES ('9', '幻灯4', '/uploads/20190724/1950def481cfed38b880821231d631ce.jpg', '0', '1', '1', '1563954811');
INSERT INTO `xx_banner` VALUES ('10', '幻灯1', '/uploads/20190724/a22b1ddef459df1edbaf024cf33848e5.jpg', '0', '1', '0', '1563955028');
INSERT INTO `xx_banner` VALUES ('11', '幻灯2', '/uploads/20190724/05199e41fab968487d8f4015b94d93c1.jpg', '0', '1', '1', '1563955198');
INSERT INTO `xx_banner` VALUES ('12', '幻灯2', '/uploads/20190724/281faa9725b26b5c63327fd309f8f803.jpg', '0', '1', '0', '1563955402');
INSERT INTO `xx_banner` VALUES ('13', '幻灯3', '/uploads/20190724/f146bb5f38e128fe2f9990a62586edbf.jpg', '0', '1', '0', '1563955445');

-- ----------------------------
-- Table structure for xx_product
-- ----------------------------
DROP TABLE IF EXISTS `xx_product`;
CREATE TABLE `xx_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT '' COMMENT '标题',
  `img` varchar(255) DEFAULT '',
  `author` varchar(50) DEFAULT '' COMMENT '作者',
  `type_id` int(10) DEFAULT NULL,
  `note` text COMMENT '内容',
  `intro` varchar(255) DEFAULT '' COMMENT '简介',
  `create_at` varchar(10) DEFAULT '',
  `status` tinyint(1) DEFAULT '1',
  `is_del` tinyint(1) DEFAULT '0',
  `sort` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of xx_product
-- ----------------------------
INSERT INTO `xx_product` VALUES ('1', '测试', '/uploads/20190724/05420e392dea988d4f5731f7641e4931.jpg', 'admin', '2', '<p>简介简介简介</p><p>简介简介简介</p><p>简介简介简介</p><p>简介简介简介</p><p>简介简介简介</p><p>简介简介简介</p>', '简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介', '1563948459', '0', '1', '33');
INSERT INTO `xx_product` VALUES ('2', '产品1', '/uploads/20190724/c08d83e2a854a45a500c36b2bbc11b22.jpg', 'admin', '5', '<p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\"><img src=\"/ueditor/php/upload/image/20190724/1563957628.jpg\" alt=\"\"/></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\">外观：白色或淡黄色粉状或片状&nbsp;</p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\">推荐用量（份）<span style=\";padding: 0px\">3.5</span>～<span style=\";padding: 0px\">4.5&nbsp;</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\"><strong style=\";padding: 0px\"><br/></strong></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\"><strong style=\";padding: 0px\">技术参数：</strong></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\"><strong style=\";padding: 0px\"></strong></p><table width=\"570\"><tbody style=\";padding: 0px\"><tr style=\";padding: 0px\" class=\"firstRow\"><td style=\";padding: 0px\"><p style=\"text-align: center\">产品型号</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">金属氧化物(%)</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">加热减量(%)</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">机械杂质0.1mm~0.6mm</p><p style=\"text-align: center\">（粒/g）</p></td></tr><tr style=\";padding: 0px\"><td style=\";padding: 0px\"><p style=\"text-align: center\">FY-3GK1</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">39.0±2.0</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">≤2.0</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">&lt;20</p></td></tr><tr style=\";padding: 0px\"><td style=\";padding: 0px;text-align: center\"><p>FY-3GK8</p></td><td style=\";padding: 0px;text-align: center\"><p>48.0±2.0</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">≤2.0</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">&lt;20</p></td></tr><tr style=\";padding: 0px\"><td style=\";padding: 0px;text-align: center\"><p>FY-3GK15</p></td><td style=\";padding: 0px;text-align: center\"><p>44.0±2.0</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">≤2.0</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">&lt;20</p></td></tr><tr style=\";padding: 0px\"><td style=\";padding: 0px;text-align: center\"><p>FY-3GKD</p></td><td style=\";padding: 0px;text-align: center\"><p>45.0±2.0</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">≤2.0</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">&lt;20</p></td></tr></tbody></table><p><strong style=\";padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\"><br/></strong></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\"><br/></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\"><strong style=\";padding: 0px\">性能特点：</strong></p><p style=\"margin-top: 0px;margin-bottom: 0px;margin-left: 28px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\">·传统热稳定剂，具有优异的热稳定性能和抑制初期着色性；</p><p style=\"margin-top: 0px;margin-bottom: 0px;margin-left: 28px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\">·具有润滑效果，改善制品的加工流动性，减少机械磨损，提高制品表面光泽，壁厚均匀；</p><p style=\"margin-top: 0px;margin-bottom: 0px;margin-left: 28px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\">·良好的分散性、制品粘贴性、印刷性；</p><p style=\"margin-top: 0px;margin-bottom: 0px;margin-left: 28px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\">·无尘，称量方便、降低劳动强度、改善配料环境、提高生产效率和产品质量。</p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\"><strong style=\";padding: 0px\"><br/></strong></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\"><strong style=\";padding: 0px\">包装与贮存：</strong></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\">·复合纸袋25公斤/包，干燥贮存，防雨防晒，密封保存。</p><p><br/></p>', '产品1产品1产品1产品1产品1产品1产品1产品1产品1产品1产品1产品1产品1', '1563957631', '1', '0', '33');
INSERT INTO `xx_product` VALUES ('3', '产品2', '/uploads/20190724/6fa23dac2b005249c52ca6a0474b71af.jpg', 'admin', '2', '<p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\"><img src=\"/ueditor/php/upload/image/20190724/1563957663.jpg\" alt=\"\"/></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\">外观：白色或淡黄色粉状或片状&nbsp;</p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\">推荐用量（份）<span style=\";padding: 0px\">3.5</span>～<span style=\";padding: 0px\">4.5&nbsp;</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\"><strong style=\";padding: 0px\"><br/></strong></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\"><strong style=\";padding: 0px\">技术参数：</strong></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\"><strong style=\";padding: 0px\"></strong></p><table width=\"570\"><tbody style=\";padding: 0px\"><tr style=\";padding: 0px\" class=\"firstRow\"><td style=\";padding: 0px\"><p style=\"text-align: center\">产品型号</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">金属氧化物(%)</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">加热减量(%)</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">机械杂质0.1mm~0.6mm</p><p style=\"text-align: center\">（粒/g）</p></td></tr><tr style=\";padding: 0px\"><td style=\";padding: 0px\"><p style=\"text-align: center\">FY-3GK1</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">39.0±2.0</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">≤2.0</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">&lt;20</p></td></tr><tr style=\";padding: 0px\"><td style=\";padding: 0px;text-align: center\"><p>FY-3GK8</p></td><td style=\";padding: 0px;text-align: center\"><p>48.0±2.0</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">≤2.0</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">&lt;20</p></td></tr><tr style=\";padding: 0px\"><td style=\";padding: 0px;text-align: center\"><p>FY-3GK15</p></td><td style=\";padding: 0px;text-align: center\"><p>44.0±2.0</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">≤2.0</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">&lt;20</p></td></tr><tr style=\";padding: 0px\"><td style=\";padding: 0px;text-align: center\"><p>FY-3GKD</p></td><td style=\";padding: 0px;text-align: center\"><p>45.0±2.0</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">≤2.0</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">&lt;20</p></td></tr></tbody></table><p><strong style=\";padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\"><br/></strong></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\"><br/></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\"><strong style=\";padding: 0px\">性能特点：</strong></p><p style=\"margin-top: 0px;margin-bottom: 0px;margin-left: 28px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\">·传统热稳定剂，具有优异的热稳定性能和抑制初期着色性；</p><p style=\"margin-top: 0px;margin-bottom: 0px;margin-left: 28px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\">·具有润滑效果，改善制品的加工流动性，减少机械磨损，提高制品表面光泽，壁厚均匀；</p><p style=\"margin-top: 0px;margin-bottom: 0px;margin-left: 28px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\">·良好的分散性、制品粘贴性、印刷性；</p><p style=\"margin-top: 0px;margin-bottom: 0px;margin-left: 28px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\">·无尘，称量方便、降低劳动强度、改善配料环境、提高生产效率和产品质量。</p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\"><strong style=\";padding: 0px\"><br/></strong></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\"><strong style=\";padding: 0px\">包装与贮存：</strong></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\">·复合纸袋25公斤/包，干燥贮存，防雨防晒，密封保存。</p><p><br/></p>', '产品2产品2产品2产品2产品2产品2产品2产品2产品2产品2', '1563957674', '1', '0', '0');
INSERT INTO `xx_product` VALUES ('4', '产品3', '/uploads/20190724/b70617ee2f4818d688dded090ca9c1c2.jpg', 'admin', '4', '<p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\"><img src=\"http://xindatech.com.cn/UploadFile/upi/image/20160918/20160918174572997299.jpg\" alt=\"\"/></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\">外观：白色或淡黄色粉状或片状&nbsp;</p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\">推荐用量（份）<span style=\";padding: 0px\">3.5</span>～<span style=\";padding: 0px\">4.5&nbsp;</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\"><strong style=\";padding: 0px\"><br/></strong></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\"><strong style=\";padding: 0px\">技术参数：</strong></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\"><strong style=\";padding: 0px\"></strong></p><table width=\"570\"><tbody style=\";padding: 0px\"><tr style=\";padding: 0px\" class=\"firstRow\"><td style=\";padding: 0px\"><p style=\"text-align: center\">产品型号</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">金属氧化物(%)</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">加热减量(%)</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">机械杂质0.1mm~0.6mm</p><p style=\"text-align: center\">（粒/g）</p></td></tr><tr style=\";padding: 0px\"><td style=\";padding: 0px\"><p style=\"text-align: center\">FY-3GK1</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">39.0±2.0</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">≤2.0</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">&lt;20</p></td></tr><tr style=\";padding: 0px\"><td style=\";padding: 0px;text-align: center\"><p>FY-3GK8</p></td><td style=\";padding: 0px;text-align: center\"><p>48.0±2.0</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">≤2.0</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">&lt;20</p></td></tr><tr style=\";padding: 0px\"><td style=\";padding: 0px;text-align: center\"><p>FY-3GK15</p></td><td style=\";padding: 0px;text-align: center\"><p>44.0±2.0</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">≤2.0</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">&lt;20</p></td></tr><tr style=\";padding: 0px\"><td style=\";padding: 0px;text-align: center\"><p>FY-3GKD</p></td><td style=\";padding: 0px;text-align: center\"><p>45.0±2.0</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">≤2.0</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">&lt;20</p></td></tr></tbody></table><p><strong style=\";padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\"><br/></strong></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\"><br/></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\"><strong style=\";padding: 0px\">性能特点：</strong></p><p style=\"margin-top: 0px;margin-bottom: 0px;margin-left: 28px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\">·传统热稳定剂，具有优异的热稳定性能和抑制初期着色性；</p><p style=\"margin-top: 0px;margin-bottom: 0px;margin-left: 28px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\">·具有润滑效果，改善制品的加工流动性，减少机械磨损，提高制品表面光泽，壁厚均匀；</p><p style=\"margin-top: 0px;margin-bottom: 0px;margin-left: 28px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\">·良好的分散性、制品粘贴性、印刷性；</p><p style=\"margin-top: 0px;margin-bottom: 0px;margin-left: 28px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\">·无尘，称量方便、降低劳动强度、改善配料环境、提高生产效率和产品质量。</p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\"><strong style=\";padding: 0px\"><br/></strong></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\"><strong style=\";padding: 0px\">包装与贮存：</strong></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\">·复合纸袋25公斤/包，干燥贮存，防雨防晒，密封保存。</p><p><br/></p>', '传统热稳定剂，具有优异的热稳定性能和抑制初期着色性；', '1563960724', '1', '0', '0');
INSERT INTO `xx_product` VALUES ('5', '产品6', '/uploads/20190724/c381eee3eda5bedcabf97a9af8136f05.jpg', 'admin', '2', '<p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\"><img src=\"/ueditor/php/upload/image/20190724/1563960747.jpg\" alt=\"\"/></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\">外观：白色或淡黄色粉状或片状&nbsp;</p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\">推荐用量（份）<span style=\";padding: 0px\">3.5</span>～<span style=\";padding: 0px\">4.5&nbsp;</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\"><strong style=\";padding: 0px\"><br/></strong></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\"><strong style=\";padding: 0px\">技术参数：</strong></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\"><strong style=\";padding: 0px\"></strong></p><table width=\"570\"><tbody style=\";padding: 0px\"><tr style=\";padding: 0px\" class=\"firstRow\"><td style=\";padding: 0px\"><p style=\"text-align: center\">产品型号</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">金属氧化物(%)</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">加热减量(%)</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">机械杂质0.1mm~0.6mm</p><p style=\"text-align: center\">（粒/g）</p></td></tr><tr style=\";padding: 0px\"><td style=\";padding: 0px\"><p style=\"text-align: center\">FY-3GK1</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">39.0±2.0</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">≤2.0</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">&lt;20</p></td></tr><tr style=\";padding: 0px\"><td style=\";padding: 0px;text-align: center\"><p>FY-3GK8</p></td><td style=\";padding: 0px;text-align: center\"><p>48.0±2.0</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">≤2.0</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">&lt;20</p></td></tr><tr style=\";padding: 0px\"><td style=\";padding: 0px;text-align: center\"><p>FY-3GK15</p></td><td style=\";padding: 0px;text-align: center\"><p>44.0±2.0</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">≤2.0</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">&lt;20</p></td></tr><tr style=\";padding: 0px\"><td style=\";padding: 0px;text-align: center\"><p>FY-3GKD</p></td><td style=\";padding: 0px;text-align: center\"><p>45.0±2.0</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">≤2.0</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">&lt;20</p></td></tr></tbody></table><p><strong style=\";padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\"><br/></strong></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\"><br/></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\"><strong style=\";padding: 0px\">性能特点：</strong></p><p style=\"margin-top: 0px;margin-bottom: 0px;margin-left: 28px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\">·传统热稳定剂，具有优异的热稳定性能和抑制初期着色性；</p><p style=\"margin-top: 0px;margin-bottom: 0px;margin-left: 28px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\">·具有润滑效果，改善制品的加工流动性，减少机械磨损，提高制品表面光泽，壁厚均匀；</p><p style=\"margin-top: 0px;margin-bottom: 0px;margin-left: 28px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\">·良好的分散性、制品粘贴性、印刷性；</p><p style=\"margin-top: 0px;margin-bottom: 0px;margin-left: 28px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\">·无尘，称量方便、降低劳动强度、改善配料环境、提高生产效率和产品质量。</p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\"><strong style=\";padding: 0px\"><br/></strong></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\"><strong style=\";padding: 0px\">包装与贮存：</strong></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\">·复合纸袋25公斤/包，干燥贮存，防雨防晒，密封保存。</p><p><br/></p>', '简介', '1563960754', '1', '0', '0');
INSERT INTO `xx_product` VALUES ('6', '产品6', '/uploads/20190724/57bfa2bdcac83e4686218e06039ed14d.jpg', 'admin', '2', '<p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\"><img src=\"/ueditor/php/upload/image/20190724/1563960764.jpg\" alt=\"\"/></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\">外观：白色或淡黄色粉状或片状&nbsp;</p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\">推荐用量（份）<span style=\";padding: 0px\">3.5</span>～<span style=\";padding: 0px\">4.5&nbsp;</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\"><strong style=\";padding: 0px\"><br/></strong></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\"><strong style=\";padding: 0px\">技术参数：</strong></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\"><strong style=\";padding: 0px\"></strong></p><table width=\"570\"><tbody style=\";padding: 0px\"><tr style=\";padding: 0px\" class=\"firstRow\"><td style=\";padding: 0px\"><p style=\"text-align: center\">产品型号</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">金属氧化物(%)</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">加热减量(%)</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">机械杂质0.1mm~0.6mm</p><p style=\"text-align: center\">（粒/g）</p></td></tr><tr style=\";padding: 0px\"><td style=\";padding: 0px\"><p style=\"text-align: center\">FY-3GK1</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">39.0±2.0</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">≤2.0</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">&lt;20</p></td></tr><tr style=\";padding: 0px\"><td style=\";padding: 0px;text-align: center\"><p>FY-3GK8</p></td><td style=\";padding: 0px;text-align: center\"><p>48.0±2.0</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">≤2.0</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">&lt;20</p></td></tr><tr style=\";padding: 0px\"><td style=\";padding: 0px;text-align: center\"><p>FY-3GK15</p></td><td style=\";padding: 0px;text-align: center\"><p>44.0±2.0</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">≤2.0</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">&lt;20</p></td></tr><tr style=\";padding: 0px\"><td style=\";padding: 0px;text-align: center\"><p>FY-3GKD</p></td><td style=\";padding: 0px;text-align: center\"><p>45.0±2.0</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">≤2.0</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">&lt;20</p></td></tr></tbody></table><p><strong style=\";padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\"><br/></strong></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\"><br/></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\"><strong style=\";padding: 0px\">性能特点：</strong></p><p style=\"margin-top: 0px;margin-bottom: 0px;margin-left: 28px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\">·传统热稳定剂，具有优异的热稳定性能和抑制初期着色性；</p><p style=\"margin-top: 0px;margin-bottom: 0px;margin-left: 28px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\">·具有润滑效果，改善制品的加工流动性，减少机械磨损，提高制品表面光泽，壁厚均匀；</p><p style=\"margin-top: 0px;margin-bottom: 0px;margin-left: 28px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\">·良好的分散性、制品粘贴性、印刷性；</p><p style=\"margin-top: 0px;margin-bottom: 0px;margin-left: 28px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\">·无尘，称量方便、降低劳动强度、改善配料环境、提高生产效率和产品质量。</p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\"><strong style=\";padding: 0px\"><br/></strong></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\"><strong style=\";padding: 0px\">包装与贮存：</strong></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\">·复合纸袋25公斤/包，干燥贮存，防雨防晒，密封保存。</p><p><br/></p>', '简介', '1563960792', '1', '0', '0');
INSERT INTO `xx_product` VALUES ('7', '产品7', '/uploads/20190724/6081bbdd79f680140a08a13a05e36d48.jpg', 'admin', '3', '<p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\"><img src=\"/ueditor/php/upload/image/20190724/1563960799.jpg\" alt=\"\"/></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\">外观：白色或淡黄色粉状或片状&nbsp;</p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\">推荐用量（份）<span style=\";padding: 0px\">3.5</span>～<span style=\";padding: 0px\">4.5&nbsp;</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\"><strong style=\";padding: 0px\"><br/></strong></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\"><strong style=\";padding: 0px\">技术参数：</strong></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\"><strong style=\";padding: 0px\"></strong></p><table width=\"570\"><tbody style=\";padding: 0px\"><tr style=\";padding: 0px\" class=\"firstRow\"><td style=\";padding: 0px\"><p style=\"text-align: center\">产品型号</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">金属氧化物(%)</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">加热减量(%)</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">机械杂质0.1mm~0.6mm</p><p style=\"text-align: center\">（粒/g）</p></td></tr><tr style=\";padding: 0px\"><td style=\";padding: 0px\"><p style=\"text-align: center\">FY-3GK1</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">39.0±2.0</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">≤2.0</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">&lt;20</p></td></tr><tr style=\";padding: 0px\"><td style=\";padding: 0px;text-align: center\"><p>FY-3GK8</p></td><td style=\";padding: 0px;text-align: center\"><p>48.0±2.0</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">≤2.0</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">&lt;20</p></td></tr><tr style=\";padding: 0px\"><td style=\";padding: 0px;text-align: center\"><p>FY-3GK15</p></td><td style=\";padding: 0px;text-align: center\"><p>44.0±2.0</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">≤2.0</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">&lt;20</p></td></tr><tr style=\";padding: 0px\"><td style=\";padding: 0px;text-align: center\"><p>FY-3GKD</p></td><td style=\";padding: 0px;text-align: center\"><p>45.0±2.0</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">≤2.0</p></td><td style=\";padding: 0px\"><p style=\"text-align: center\">&lt;20</p></td></tr></tbody></table><p><strong style=\";padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\"><br/></strong></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\"><br/></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\"><strong style=\";padding: 0px\">性能特点：</strong></p><p style=\"margin-top: 0px;margin-bottom: 0px;margin-left: 28px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\">·传统热稳定剂，具有优异的热稳定性能和抑制初期着色性；</p><p style=\"margin-top: 0px;margin-bottom: 0px;margin-left: 28px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\">·具有润滑效果，改善制品的加工流动性，减少机械磨损，提高制品表面光泽，壁厚均匀；</p><p style=\"margin-top: 0px;margin-bottom: 0px;margin-left: 28px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\">·良好的分散性、制品粘贴性、印刷性；</p><p style=\"margin-top: 0px;margin-bottom: 0px;margin-left: 28px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\">·无尘，称量方便、降低劳动强度、改善配料环境、提高生产效率和产品质量。</p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\"><strong style=\";padding: 0px\"><br/></strong></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\"><strong style=\";padding: 0px\">包装与贮存：</strong></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(49, 49, 49);font-family: 微软雅黑;font-size: 14px;white-space: normal\">·复合纸袋25公斤/包，干燥贮存，防雨防晒，密封保存。</p><p><br/></p>', '简介', '1563960825', '1', '0', '0');

-- ----------------------------
-- Table structure for xx_role
-- ----------------------------
DROP TABLE IF EXISTS `xx_role`;
CREATE TABLE `xx_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色表',
  `role_name` varchar(255) NOT NULL,
  `auth_id_list` varchar(255) NOT NULL COMMENT '权限集',
  `type` tinyint(1) DEFAULT '1' COMMENT '类型（1表示总后台，2表示分后台）',
  `remake` varchar(150) DEFAULT '' COMMENT '备注',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态',
  `is_del` tinyint(1) DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of xx_role
-- ----------------------------
INSERT INTO `xx_role` VALUES ('1', '超级管理员', '*', '1', '', '1', '0');
INSERT INTO `xx_role` VALUES ('11', 'wwww', 'admin/admin', '1', '                                                                                                                                  asdasd              ', '0', '0');
INSERT INTO `xx_role` VALUES ('12', 'www', 'admin/admin', '1', '奥术大师', '1', '1');

-- ----------------------------
-- Table structure for xx_type
-- ----------------------------
DROP TABLE IF EXISTS `xx_type`;
CREATE TABLE `xx_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT '' COMMENT '标题',
  `img` varchar(255) DEFAULT '' COMMENT '封面',
  `intro` varchar(255) DEFAULT NULL,
  `create_at` varchar(10) DEFAULT '',
  `status` tinyint(1) DEFAULT '1' COMMENT '0下架1上架',
  `is_del` tinyint(1) DEFAULT '0' COMMENT '0未删除1删除',
  `sort` int(10) DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of xx_type
-- ----------------------------
INSERT INTO `xx_type` VALUES ('1', '分类1', '/uploads/20190724/5f64560f13555eddc9c03568bf7b86d8.jpg', '分类1简介分类1简介分类1简介分类1简介分类1简介分类1简介分类1简介', '1563938649', '0', '0', '0');
INSERT INTO `xx_type` VALUES ('2', '分类2', '/uploads/20190724/2ff70816df5709bb138902414631664c.jpg', '简介简介简介简介简介简介简介简介简介简介简介简介', '1563938682', '1', '0', '33');
INSERT INTO `xx_type` VALUES ('3', '分类3', '/uploads/20190724/c210060928aeb66916d6bc40ccdfd074.jpg', '分类3分类3\n分类3分类3\n分类3分类3\n分类3分类3\n分类3分类3\n分类3分类3\n分类3分类3', '1563957213', '1', '0', '0');
INSERT INTO `xx_type` VALUES ('4', '分类4', '/uploads/20190724/1cebe1dcfde7a73c646ab5044211eac1.jpg', '分类3分类3 分类3分类3 分类3分类3 分类3分类3 分类3分类3 分类3分类3 ', '1563957245', '1', '0', '0');
INSERT INTO `xx_type` VALUES ('5', '分类5', '/uploads/20190724/8b7e3308b8181b65bd8a8fdfd4eaf0bd.jpg', '分类5分类5分类5分类5', '1563957358', '1', '0', '55');
