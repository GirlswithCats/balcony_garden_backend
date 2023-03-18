/*
Navicat MySQL Data Transfer

Source Server         : mysql_graduation
Source Server Version : 50734
Source Host           : localhost:3306
Source Database       : gradua

Target Server Type    : MYSQL
Target Server Version : 50734
File Encoding         : 65001

Date: 2022-05-13 16:03:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bms_billboard
-- ----------------------------
DROP TABLE IF EXISTS `bms_billboard`;
CREATE TABLE `bms_billboard` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `content` varchar(255) NOT NULL COMMENT '公告',
  `create_time` datetime DEFAULT NULL COMMENT '公告时间',
  `show` tinyint(1) DEFAULT NULL COMMENT '1：展示中，0：过期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='全站公告';

-- ----------------------------
-- Records of bms_billboard
-- ----------------------------
INSERT INTO `bms_billboard` VALUES ('2', 'R1.0 开始已实现护眼模式 ,妈妈再也不用担心我的眼睛了。', '2020-11-19 17:16:19', '0');
INSERT INTO `bms_billboard` VALUES ('4', '系统已更新至最新版1.0.1', '2022-04-03 18:00:21', '1');

-- ----------------------------
-- Table structure for bms_comment
-- ----------------------------
DROP TABLE IF EXISTS `bms_comment`;
CREATE TABLE `bms_comment` (
  `id` varchar(20) NOT NULL COMMENT '主键',
  `content` varchar(1000) NOT NULL DEFAULT '' COMMENT '内容',
  `user_id` varchar(20) NOT NULL COMMENT '作者ID',
  `topic_id` varchar(20) NOT NULL COMMENT 'topic_id',
  `create_time` datetime NOT NULL COMMENT '发布时间',
  `modify_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='评论表';

-- ----------------------------
-- Records of bms_comment
-- ----------------------------
INSERT INTO `bms_comment` VALUES ('1511983176266829826', '好耶', '1510931625813245953', '1349631541260595202', '2022-04-07 08:24:15', null);
INSERT INTO `bms_comment` VALUES ('1511983698382180353', '不好', '1510931625813245953', '1511682171595698177', '2022-04-07 08:26:20', null);
INSERT INTO `bms_comment` VALUES ('1512347401162072065', '发布', '1512345899789983746', '1512347366781362178', '2022-04-08 08:31:33', null);
INSERT INTO `bms_comment` VALUES ('1523616069871239169', '好耶', '1510931625813245953', '1332681213400817665', '2022-05-09 10:49:13', null);
INSERT INTO `bms_comment` VALUES ('1523616272141549569', '很好的建议', '1510931625813245953', '1332681213400817665', '2022-05-09 10:50:01', null);

-- ----------------------------
-- Table structure for bms_file
-- ----------------------------
DROP TABLE IF EXISTS `bms_file`;
CREATE TABLE `bms_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '文件名称',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '文件类型',
  `size` bigint(20) DEFAULT NULL COMMENT '文件大小(kb)',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '下载链接',
  `md5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '文件md5',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除',
  `enable` tinyint(1) DEFAULT '1' COMMENT '是否禁用链接',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uni_md5` (`md5`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of bms_file
-- ----------------------------
INSERT INTO `bms_file` VALUES ('53', '5e94acbd5e3a4.jpg', 'jpg', '210', 'http://localhost:8000/file/1baa1b8a123241a09acc1210074f4e39.jpg', '7bb6eb1918baf6d836d8860aa7e928e6', '0', '1');
INSERT INTO `bms_file` VALUES ('54', 'v2-8a70627fae26a5405b2d2f1ddee483f2_1440w.jpg', 'jpg', '78', 'http://localhost:8000/file/14585871a31a402191943304edfb7073.jpg', '31525939efa89d0ca9aa6795538d5060', '0', '1');
INSERT INTO `bms_file` VALUES ('56', '03.jpg', 'jpg', '25', 'http://localhost:8000/file/ad3e8d0e684b46469f4bf95b6bb1fe2c.jpg', '413515900a1ba48ab1aafc4f415a904b', '0', '1');
INSERT INTO `bms_file` VALUES ('57', '1.jpg', 'jpg', '28', 'http://localhost:8000/file/525a4a33a9e4468bbed5e3c2090729c8.jpg', 'd9f455c54b250a7e04d1ad9ea3fa5831', '0', '1');
INSERT INTO `bms_file` VALUES ('58', '02.jpg', 'jpg', '35', 'http://localhost:8000/file/d23bcf7a77a14b299ca37952948d53b6.jpg', '23fdbd4824ab30305bff2e643a17d121', '0', '1');
INSERT INTO `bms_file` VALUES ('59', '03.jpg', 'jpg', '47', 'http://localhost:8000/file/b95c206bb0c34384a592a776a1282102.jpg', 'aa3dad0cafb601523bd38d0657f3e58e', '0', '1');
INSERT INTO `bms_file` VALUES ('60', '04.jpg', 'jpg', '28', 'http://localhost:8000/file/029d265f947b4ef298d7e89e2bc5dd84.jpg', '52db9672c5fc2f3b8a21d0fa664a7893', '0', '1');
INSERT INTO `bms_file` VALUES ('61', '05.jpg', 'jpg', '54', 'http://localhost:8000/file/b08972afa4e44cf48ce08b859e96d7a7.jpg', 'd954912839490168592d0e2420fdea05', '0', '1');
INSERT INTO `bms_file` VALUES ('62', '06.jpg', 'jpg', '18', 'http://localhost:8000/file/d9e1be30e934491197e150f00ed4d45d.jpg', '440bb2514ba7cc969b48b9aa351f7729', '0', '1');
INSERT INTO `bms_file` VALUES ('63', '07.jpg', 'jpg', '50', 'http://localhost:8000/file/b83516aa17df4c6eb3dfa11dd2c15bd7.jpg', 'e5537b4ca9e5473860a2c0b4845146b9', '0', '1');
INSERT INTO `bms_file` VALUES ('64', '08.jpg', 'jpg', '24', 'http://localhost:8000/file/848fb983651844ec9ae23c52de68b7ad.jpg', '69672728792288e482e64f01ffe65536', '0', '1');
INSERT INTO `bms_file` VALUES ('65', '09.jpg', 'jpg', '37', 'http://localhost:8000/file/3cd802d8cb9049089e1a4fc41cc8576f.jpg', '343013ae471da569520be96e8207ca4f', '0', '1');
INSERT INTO `bms_file` VALUES ('66', '010.jpeg', 'jpeg', '51', 'http://localhost:8000/file/41f00d2e6ebb4d2fbb15729a01bf167a.jpeg', 'f89b19d29dc858bbf3c4e3ae632d00e4', '0', '1');
INSERT INTO `bms_file` VALUES ('67', '01.jpg', 'jpg', '40', 'http://localhost:8000/file/d7b7626886f54650ae4dd81e652d783e.jpg', '0e45f5cc570cfb9eb58a2942bc8b6116', '0', '1');
INSERT INTO `bms_file` VALUES ('68', '02-2.jpg', 'jpg', '22', 'http://localhost:8000/file/9232cbe7a14243a9b891dc004a8acea1.jpg', '29fcf560bcdecc057dc750fa0b4906c9', '0', '1');
INSERT INTO `bms_file` VALUES ('69', '03.jpg', 'jpg', '16', 'http://localhost:8000/file/506eb4298b1b41d3bfa9ec7468686f53.jpg', '65f5b602bae84bb3eda82596eb807562', '0', '1');
INSERT INTO `bms_file` VALUES ('70', '05.jpg', 'jpg', '56', 'http://localhost:8000/file/bae9cc2731e14c328a0059e3761ee3bb.jpg', '718198a8b934c556dd52106aefefda79', '0', '1');
INSERT INTO `bms_file` VALUES ('71', '06.jpg', 'jpg', '136', 'http://localhost:8000/file/0cd428d3d4854e21b3060eddb664ba7c.jpg', '9b761e2a3a6ccf3e3ef9591887005fbc', '0', '1');
INSERT INTO `bms_file` VALUES ('72', '07.jpg', 'jpg', '173', 'http://localhost:8000/file/78cd34adefd84cce93bedf25be56af1f.jpg', '92ed62a064da2d9ab3afaf0e3c99a4c6', '0', '1');
INSERT INTO `bms_file` VALUES ('73', '08.jpg', 'jpg', '90', 'http://localhost:8000/file/4286d849ab0c4c8f9b1b41b755b628c1.jpg', '6cebfbfcb59b6dac1fedf4e473a1d7ed', '0', '1');
INSERT INTO `bms_file` VALUES ('74', '09.jpg', 'jpg', '70', 'http://localhost:8000/file/2dd6b6eecbe444b2940039c93aee532b.jpg', 'ce7af8d458503f301cb39dcf2e6f95cb', '0', '1');
INSERT INTO `bms_file` VALUES ('75', '010.jpg', 'jpg', '96', 'http://localhost:8000/file/6a9560664c4441ffacfc8ec086f3cf1c.jpg', '308bc7a661d7227c954154489b6a69c1', '0', '1');
INSERT INTO `bms_file` VALUES ('76', '01_2.png', 'png', '198', 'http://localhost:8000/file/32c559301da7465191ea8ba169e0e913.png', '284215b0d1aad2530733b9ac12b89de7', '0', '1');
INSERT INTO `bms_file` VALUES ('77', '02.jpg', 'jpg', '24', 'http://localhost:8000/file/8a6b2c3afdb9493bb2fc012916d88035.jpg', 'ebfbe1b8737f8f906b218153ec66491d', '0', '1');
INSERT INTO `bms_file` VALUES ('78', '03.jpg', 'jpg', '51', 'http://localhost:8000/file/315d271d8e9b4ed69c99aabee31104c9.jpg', '016462dc12db47f0115177b4f0b09971', '0', '1');
INSERT INTO `bms_file` VALUES ('79', '04.jpg', 'jpg', '46', 'http://localhost:8000/file/f2fa17c056814aec856128a99ba2e1ae.jpg', 'b5472dde40aff04d398872e7ddfb96c5', '0', '1');
INSERT INTO `bms_file` VALUES ('80', '05.jpg', 'jpg', '41', 'http://localhost:8000/file/f30e8bf489214b8c99c85ea70d6e9e6e.jpg', 'c919234674c76cc85cd1ec7bbd07487e', '0', '1');
INSERT INTO `bms_file` VALUES ('81', '06.jpg', 'jpg', '612', 'http://localhost:8000/file/70c017a6cc144688b99bd3c1de520cfc.jpg', 'd8ecb2b7cdd0bdd5f59e8a665699b725', '0', '1');

-- ----------------------------
-- Table structure for bms_follow
-- ----------------------------
DROP TABLE IF EXISTS `bms_follow`;
CREATE TABLE `bms_follow` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `parent_id` varchar(20) DEFAULT NULL COMMENT '被关注人ID',
  `follower_id` varchar(20) DEFAULT NULL COMMENT '关注人ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='用户关注';

-- ----------------------------
-- Records of bms_follow
-- ----------------------------
INSERT INTO `bms_follow` VALUES ('65', '1329723594994229250', '1317498859501797378');
INSERT INTO `bms_follow` VALUES ('85', '1332912847614083073', '1332636310897664002');
INSERT INTO `bms_follow` VALUES ('129', '1349290158897311745', '1349618748226658305');
INSERT INTO `bms_follow` VALUES ('143', '1349290158897311745', '1510931625813245953');
INSERT INTO `bms_follow` VALUES ('146', '1510931625813245953', '1512021994806231042');
INSERT INTO `bms_follow` VALUES ('148', '1512021994806231042', '1510931625813245953');

-- ----------------------------
-- Table structure for bms_post
-- ----------------------------
DROP TABLE IF EXISTS `bms_post`;
CREATE TABLE `bms_post` (
  `id` varchar(20) NOT NULL COMMENT '主键',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `content` longtext COMMENT 'markdown内容',
  `user_id` varchar(20) NOT NULL COMMENT '作者ID',
  `comments` int(11) NOT NULL DEFAULT '0' COMMENT '评论统计',
  `collects` int(11) NOT NULL DEFAULT '0' COMMENT '收藏统计',
  `view` int(11) NOT NULL DEFAULT '0' COMMENT '浏览统计',
  `top` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否置顶，1-是，0-否',
  `essence` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否加精，1-是，0-否',
  `section_id` int(11) DEFAULT '0' COMMENT '专栏ID',
  `create_time` datetime NOT NULL COMMENT '发布时间',
  `modify_time` datetime DEFAULT NULL COMMENT '修改时间',
  UNIQUE KEY `title` (`title`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE,
  KEY `create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='话题表';

-- ----------------------------
-- Records of bms_post
-- ----------------------------
INSERT INTO `bms_post` VALUES ('1349362401438392322', '2022 健康，快乐', '2022的`FLAG`\n\n1. 技能进步\n2. 没有烦恼\n3. 发财 :smile:\n\n', '1349290158897311745', '0', '0', '26', '\0', '\0', '0', '2022-04-25 22:27:21', '2022-04-28 17:30:13');
INSERT INTO `bms_post` VALUES ('1333447953558765569', '家庭盆栽草莓如何人工授粉', '草莓不需要授粉', '1349290158897311745', '0', '0', '77', '\0', '\0', '0', '2022-04-18 00:29:01', '2022-04-27 23:56:51');
INSERT INTO `bms_post` VALUES ('1512022217087565826', '封闭阳台如何养好月季花', '想要在室内阳台养好月季，首先咱们得保证您的阳台上光照是充足的，月季是阳性花卉，充足的光照是月季健康生长的前提，如果您的阳台，每天直射光照时间不足4小时，建议放弃养月季花的想法。\n', '1512021994806231042', '0', '0', '13', '\0', '\0', '0', '2022-04-07 10:59:23', null);
INSERT INTO `bms_post` VALUES ('1349631541260595202', '满天星种植技巧', '满天星的播种方法 选择疏松的土壤 其实花土不需要买，直接到外面挖点就好。\n', '1349290158897311745', '0', '0', '42', '\0', '\0', '0', '2022-04-14 16:16:49', '2022-04-28 16:18:53');
INSERT INTO `bms_post` VALUES ('1332681213400817665', '满天星选种', '满天星通常采取种子种植的方式，通常选择较为优良、健康的种子来种植。满天星种子的获取有两种方法，一种是花期时自然保存的，另一种是直接从花市中购买成品种子进行种植。一般购买的种子我们要先进行消毒处理。', '1349290158897311745', '0', '0', '59', '\0', '\0', '1', '2022-04-19 21:42:16', '2022-04-27 15:00:42');
INSERT INTO `bms_post` VALUES ('1333676096156528641', '茉莉花种植技巧', '1、茉莉花喜阳光，应给予充足的光照，以免造成徒长，花少。\r\n\r\n2、茉莉花喜酸应定期施用酸性肥料，以调节土壤的PH值。\r\n\r\n3、茉莉花生长期应多施磷钾肥，氮肥过多会造成只长叶子不开花的情况发生。\r\n\r\n4、茉莉花没2年应换盆一次，换盆时应施足底肥，换盆时间以冬末春初为宜。\r\n\r\n茉莉花喜阳光，应给予充足的光照，以免造成徒长，花少\n', '1349290158897311745', '0', '0', '40', '\0', '\0', '0', '2022-04-11 15:35:34', null);
INSERT INTO `bms_post` VALUES ('1335149981733449729', '草莓人工授粉的方法', '1、用棉签或毛笔轻轻的刷外围的雄蕊，蘸取花粉，然后刷到雌蕊上。一般花开后，刷两三次坐果率高。 \r\n\r\n2、为保证坐果率，均匀的多刷几次，同种草莓的不同花朵之间相互授粉。', '1349290158897311745', '0', '0', '45', '\0', '\0', '0', '2022-04-12 17:12:16', '2022-04-27 13:06:16');
INSERT INTO `bms_post` VALUES ('1512014907548155905', '阳台如何养玫瑰', '玫瑰的生长需要光照，放在光线能充分照射的地方，夏季注意避开强光。它喜欢温暖，秋冬季节要做好措施，保证植株不受到冻伤。定期给水保证好生长需求，夏季早上和晚上各喷次水雾。根据生长需求，施加适量肥料。也要注意修剪，去除黄枝枯枝。\n', '1510931625813245953', '0', '0', '14', '\0', '\0', '0', '2022-04-07 10:30:20', null);
INSERT INTO `bms_post` VALUES ('1333432347031646209', '阳台的花招虫子了', '\r\n可以使用大蒜水！大蒜里含有大蒜素可以杀菌除虫，又不会对植物和人的健康产生影响，可以说是绝对的安全无毒无害的“绿色除虫杀菌剂”。大蒜里含有大蒜素可以杀菌除虫，又不会对植物和人的健康产生影响，可以说是绝对的安全无毒无害的“绿色除虫杀菌剂”。', '1349290158897311745', '0', '0', '9', '\0', '\0', '0', '2022-04-20 23:27:00', null);
INSERT INTO `bms_post` VALUES ('1333668258587750401', '阳台绿植除虫的好用的方法', '比如可以利用风油精、蚊香、烟丝水除虫。当然了，家里养的绿植，日常也要注意预防虫害，保持通风透气是一大关键。\n', '1349290158897311745', '0', '0', '10', '\0', '\0', '0', '2022-04-01 15:04:26', '2020-12-01 16:49:14');

-- ----------------------------
-- Table structure for bms_post_tag
-- ----------------------------
DROP TABLE IF EXISTS `bms_post_tag`;
CREATE TABLE `bms_post_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tag_id` varchar(20) NOT NULL COMMENT '标签ID',
  `topic_id` varchar(20) NOT NULL COMMENT '话题ID',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `tag_id` (`tag_id`) USING BTREE,
  KEY `topic_id` (`topic_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='话题-标签 中间表';

-- ----------------------------
-- Records of bms_post_tag
-- ----------------------------
INSERT INTO `bms_post_tag` VALUES ('36', '1332650453377708034', '1332650453142827009');
INSERT INTO `bms_post_tag` VALUES ('37', '1332681213568589825', '1332681213400817665');
INSERT INTO `bms_post_tag` VALUES ('38', '1332681213631504385', '1332681213400817665');
INSERT INTO `bms_post_tag` VALUES ('39', '1332682473218744321', '1332682473151635458');
INSERT INTO `bms_post_tag` VALUES ('40', '1332913064463794178', '1332913064396685314');
INSERT INTO `bms_post_tag` VALUES ('41', '1332913064530903041', '1332913064396685314');
INSERT INTO `bms_post_tag` VALUES ('42', '1333432347107143681', '1333432347031646209');
INSERT INTO `bms_post_tag` VALUES ('43', '1333432347107143682', '1333432347031646209');
INSERT INTO `bms_post_tag` VALUES ('44', '1333447953697177602', '1333447953558765569');
INSERT INTO `bms_post_tag` VALUES ('45', '1332913064463794178', '1333668258587750401');
INSERT INTO `bms_post_tag` VALUES ('46', '1333676096320106498', '1333676096156528641');
INSERT INTO `bms_post_tag` VALUES ('47', '1333695976742268930', '1333695976536748034');
INSERT INTO `bms_post_tag` VALUES ('48', '1334481725519429634', '1334481725322297346');
INSERT INTO `bms_post_tag` VALUES ('49', '1333447953697177602', '1335149981733449729');
INSERT INTO `bms_post_tag` VALUES ('50', '1349362401597775874', '1349362401438392322');
INSERT INTO `bms_post_tag` VALUES ('51', '1349631541306732545', '1349631541260595202');
INSERT INTO `bms_post_tag` VALUES ('52', '1511682171704750082', '1511682171595698177');
INSERT INTO `bms_post_tag` VALUES ('53', '1511682171704750082', '1512014907548155905');
INSERT INTO `bms_post_tag` VALUES ('54', '1511682171704750082', '1512022217087565826');

-- ----------------------------
-- Table structure for bms_promotion
-- ----------------------------
DROP TABLE IF EXISTS `bms_promotion`;
CREATE TABLE `bms_promotion` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(255) DEFAULT NULL COMMENT '广告标题',
  `link` varchar(255) DEFAULT NULL COMMENT '广告链接',
  `description` varchar(255) DEFAULT NULL COMMENT '说明',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='广告推广表';

-- ----------------------------
-- Records of bms_promotion
-- ----------------------------
INSERT INTO `bms_promotion` VALUES ('1', '开发者头条', 'https://juejin.cn/', '开发者头条');
INSERT INTO `bms_promotion` VALUES ('2', '并发编程网', 'https://juejin.cn/', '并发编程网');
INSERT INTO `bms_promotion` VALUES ('3', '掘金', 'https://juejin.cn/', '掘金');

-- ----------------------------
-- Table structure for bms_tag
-- ----------------------------
DROP TABLE IF EXISTS `bms_tag`;
CREATE TABLE `bms_tag` (
  `id` varchar(20) NOT NULL COMMENT '标签ID',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '标签',
  `topic_count` int(11) NOT NULL DEFAULT '0' COMMENT '关联话题',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='标签表';

-- ----------------------------
-- Records of bms_tag
-- ----------------------------
INSERT INTO `bms_tag` VALUES ('1332681213568589825', '满天星', '1');
INSERT INTO `bms_tag` VALUES ('1332681213631504385', '选种', '1');
INSERT INTO `bms_tag` VALUES ('1332913064463794178', '去虫', '2');
INSERT INTO `bms_tag` VALUES ('1333432347107143681', '驱虫', '1');
INSERT INTO `bms_tag` VALUES ('1333432347107143682', '大蒜', '1');
INSERT INTO `bms_tag` VALUES ('1333447953697177602', '授粉', '2');
INSERT INTO `bms_tag` VALUES ('1333676096320106498', '茉莉花', '1');
INSERT INTO `bms_tag` VALUES ('1349362401597775874', '新的一年', '1');
INSERT INTO `bms_tag` VALUES ('1349631541306732545', '技巧', '1');
INSERT INTO `bms_tag` VALUES ('1511682171704750082', '花', '3');

-- ----------------------------
-- Table structure for bms_tip
-- ----------------------------
DROP TABLE IF EXISTS `bms_tip`;
CREATE TABLE `bms_tip` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `content` varchar(1000) NOT NULL DEFAULT '' COMMENT '内容',
  `author` varchar(50) DEFAULT '' COMMENT '作者',
  `type` tinyint(4) NOT NULL COMMENT '1：使用，0：过期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='每日赠言';

-- ----------------------------
-- Records of bms_tip
-- ----------------------------
INSERT INTO `bms_tip` VALUES ('1', '多锉出快锯，多做长知识。', '佚名', '1');
INSERT INTO `bms_tip` VALUES ('2', '未来总留着什么给对它抱有信心的人。', '佚名', '1');
INSERT INTO `bms_tip` VALUES ('3', '一个人的智慧不够用，两个人的智慧用不完。', '谚语', '1');
INSERT INTO `bms_tip` VALUES ('4', '十个指头按不住十个跳蚤', '傣族', '1');
INSERT INTO `bms_tip` VALUES ('5', '言不信者，行不果。', '墨子', '1');
INSERT INTO `bms_tip` VALUES ('6', '攀援而登，箕踞而遨，则几数州之土壤，皆在衽席之下。', '柳宗元', '1');
INSERT INTO `bms_tip` VALUES ('7', '美德大都包含在良好的习惯之内。', '帕利克', '1');
INSERT INTO `bms_tip` VALUES ('8', '人有不及，可以情恕。', '《晋书》', '1');
INSERT INTO `bms_tip` VALUES ('9', '明·吴惟顺', '法不传六耳', '1');
INSERT INTO `bms_tip` VALUES ('10', '真正的朋友应该说真话，不管那话多么尖锐。', '奥斯特洛夫斯基', '1');
INSERT INTO `bms_tip` VALUES ('11', '时间是一切财富中最宝贵的财富。', '德奥弗拉斯多', '1');
INSERT INTO `bms_tip` VALUES ('12', '看人下菜碟', '民谚', '1');
INSERT INTO `bms_tip` VALUES ('13', '如果不是怕别人反感，女人决不会保持完整的严肃。', '拉罗什福科', '1');
INSERT INTO `bms_tip` VALUES ('14', '爱是春暖花开时对你满满的笑意', '佚名', '1');
INSERT INTO `bms_tip` VALUES ('15', '希望是坚韧的拐杖，忍耐是旅行袋，携带它们，人可以登上永恒之旅。', '罗素', '1');
INSERT INTO `bms_tip` VALUES ('18', '天国般的幸福，存在于对真爱的希望。', '佚名', '1');
INSERT INTO `bms_tip` VALUES ('19', '我们现在必须完全保持党的纪律，否则一切都会陷入污泥中。', '马克思', '1');
INSERT INTO `bms_tip` VALUES ('20', '在科学上没有平坦的大道，只有不畏劳苦沿着陡峭山路攀登的人，才有希望达到光辉的顶点。', '马克思', '1');
INSERT INTO `bms_tip` VALUES ('21', '懒惰的马嫌路远', '蒙古', '1');
INSERT INTO `bms_tip` VALUES ('22', '别忘记热水是由冷水烧成的', '非洲', '1');

-- ----------------------------
-- Table structure for flower
-- ----------------------------
DROP TABLE IF EXISTS `flower`;
CREATE TABLE `flower` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '标题',
  `content` text COLLATE utf8mb4_unicode_ci COMMENT '内容',
  `time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '发布时间',
  `user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '发布人',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '封面',
  `view` int(11) NOT NULL DEFAULT '0' COMMENT '浏览统计',
  `top` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否置顶，1-是，0-否',
  `essence` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否加精，1-是，0-否',
  `section_id` int(11) DEFAULT '0' COMMENT '专栏ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of flower
-- ----------------------------
INSERT INTO `flower` VALUES ('11', '自制仙人掌盆景的方法', '<p>自制仙人掌盆景的方法<br/><br/>种植仙人掌一点都不困难，但一定要注意不要浇水过量哟~<br/><br/>需要准备的材料：一个浅容器(当做花盆)、土壤、石头、仙人掌类植物。<br/><br/>将石头摆放在容器底部，自己喜爱的任意石头都可以哟。<br/><br/>然后将仙人掌植物摆放在石子上，要将植物根茎上的土尽量清理干净，这样根茎部位就会变得较平整，容易栽种在容器中。<br/><br/>摆放好植株后用栽培土铺满容器，稍微压实一些，然后再在土上摆放一些小石头，作为装饰。<br/><br/>漂亮的迷你仙人掌花园就大功告成了~</p>', '2022-05-05 21:00:58', 'zzz', 'http://localhost:8000/file/d7b7626886f54650ae4dd81e652d783e.jpg', '0', '\0', '\0', '0');
INSERT INTO `flower` VALUES ('12', '水仙花怎么养', '<p>水仙花又叫自恋花，为我国十大名花之一，我国民间的请供佳品，俗有“凌波仙子”之称。每过新年，人们都喜欢清供水仙，点缀做为年花。水仙只需用清水供养而不需土壤，其根如银丝，其叶碧绿葱翠传神，其花有如金盏银台，且花期长。<br/><br/>家居生活中养点水仙花陶冶情操是再正常不过了，因而水仙花怎么养是很多人都关心的问题，下面就跟大家分享水仙花的养殖方法吧。<br/><br/>水仙球的优劣决定着花开的多少和花香的是否浓郁。要想养一盆好的水仙花，必须从选择好水仙球茎开始。选择过后剥去鳞茎球外面一层褐色表皮，在鳞茎球的上半部左、右各1/3处，向下横切，再向上横切去2～3层鳞片，同时在芽的左右两侧正中向下纵切一刀，深至水仙球的半腰。<br/><br/>水仙花怎么养 水仙花的养殖方法 <br/><br/>用清水浸泡切好的鳞茎球1～2天，然后将水仙球内流出的胶液冲洗干净。浸好的鳞茎球需放在阳光下曝晒，最好放入容器内，覆盖一层砻糠。每天浇水一次，使砻糠保持温度和湿度。这时要注意防寒和光照过强，可以适当遮盖。<br/><br/>水仙花怎么养 水仙花的养殖方法 <br/><br/>水仙性喜阳光、温暖，要求空气湿度大，不甚耐寒，且怕炎热，营养生长期需要湿润而又不积水的沙质的土壤。水仙和其他宿类多年生草本花卉不同，它具有秋季开始生长，冬天开花，春季贮藏养分，夏季休眠的特点。<br/><br/>水仙花怎么养 水仙花的养殖方法<br/><br/>水培法即用浅盆水浸法培养。将经催芽处理后的水仙直立放入水仙浅盆中，加水淹没鳞茎三分之一的为宜。盆中可用石英砂 、鹅卵石等将鳞茎固定。<br/></p>', '2022-05-05 21:01:43', 'zzz', 'http://localhost:8000/file/9232cbe7a14243a9b891dc004a8acea1.jpg', '0', '\0', '', '0');
INSERT INTO `flower` VALUES ('13', '怎么能在自家窗台上种植香草植物', '<p>怎么能在自家窗台上种植香草植物<br/>       很多人都有或大或小窗台，可能养花太小。尤其是在城市里生活，下班回来更需要一抹绿色调节情绪。小编教大家一个好方法，既然小窗台不能种大型植物，种一些香草植物从可以吧？还不占空间，想吃了顺手摘一些，何乐而不为？下面小编就给大家简要介绍下怎么养让自己的窗台变成香草植物园！<br/>怎么能在自家窗台上种植香草植物<br/>       1、选择合适的容器<br/>       在窗台上可以选择常见的陶盆或塑料花盆，不需要太大，但是要保证排水性要好，最好带有托盘。<br/>       香草植物都是浅根植物，不需要很深的喷，像紫苏、薄荷、香菜、罗勒、百里香和莳萝等香草都是浅根植物。<br/>       2、土壤选择<br/>       土壤当然不能用粘土或黄泥土，只需要准备好疏松、肥沃的营养土或腐殖土，适当添加河沙保持排水性，容器的底部一定要带排水孔，没有排水孔的容器是养不好香草植物的。<br/>       用普通的营养土就能养好香草植物，它喜欢肥沃疏松和排水好的土壤，最好在土壤里面适当添加珍珠岩或河沙，堆肥土和腐叶土也是不错的选择，为了增加肥力，在盆底适当添加一些腐熟的有机肥也是不错的选择。<br/>       3、根据环境选择植物<br/>       如果光照不太充足，就不要想着种开花植物，种上一些芳香而美味的香草也是不错的。<br/>       如果散射光有3~6小时左右，那么就可以选择栽种迷迭香、罗勒、百里香、香草、鼠尾草和牛至之类的。如果散射光连3小时都不够，那么就可以考虑栽种一些欧芹、香蜂草和薄荷之类的。<br/>       4、后期养护<br/>       这些香草播种繁殖很简单，幼苗长到4片真叶移栽，期间都是保持水分充足，土壤微润，到了夏季要经常浇水，冬季就控制浇水。<br/>       想要香草盆栽长得更加茂盛，就需要薄肥勤施，定期施肥，最好是氮肥，氮肥可以促进叶子长得更茂盛，大约是半个月给肥一次。<br/>       5、修剪和收获<br/>       想要让香草盆栽长出更多的分枝，枝叶更加茂盛，那么就可以定期采摘香草，将过于茂盛的枝叶摘掉，这样才能促进枝叶健康、旺盛生长。</p>', '2022-05-05 21:02:18', 'zzz', 'http://localhost:8000/file/506eb4298b1b41d3bfa9ec7468686f53.jpg', '0', '\0', '\0', '0');
INSERT INTO `flower` VALUES ('14', '哪些盆栽花卉在家庭园艺中比较好养', '<p><br/>       家庭养花中有些盆栽花卉的确很娇贵，管理稍微有点不当就会出现很多的问题。下面这几种花卉盆栽是在家庭园艺中比较好养的种类，基本上有水就能活。下面我们来了解下都有哪些。<br/>       球兰<br/>       养护要点：叶面经常喷水，能保持叶色更加靓丽。冬天两个周左右换一次水即可。<br/>哪些盆栽花卉在家庭园艺中比较好养<br/>       非洲菊<br/>       养护要点：栽植时应避免叶子浸入水中，以免造成腐烂；放置在适宜的光照条件下，很快就能生根； 发现水少时添些水，以防根系干燥。水变得污浊时，取出植物，清洗容器，重新灌水就可以了。<br/>       常春藤<br/>       养护要点：水培时，可以选取叶片色彩丰富的进行水培，观赏性较高，夏季需要遮阴处理，冬季放在光照充足的地方即可，水质脏了即换水。<br/>       仙客来<br/>       养护要点：买回的仙客来盆花连同基质（花土）从盆中扣出，放在水龙头下用比 较和缓的水流将基质冲刷干净；<br/>       在去除 基质的整个过程中动作一定要轻，尽量避免使仙客来根系受到伤害。 水面高度要保持在球根以下。<br/>       一般，可根据水的蒸发情况，每周向容器 中加1－2次水，保持水面的高度。要放在室内阳光充足的桌面或窗台上<br/>       仙人球<br/>       养护要点：将仙人球体死根完全剪除，剪口平整。用清水把附着在根茎部的泥土冲洗干净，放在干燥处晾3天，伤口干燥后将少量根部浸入水中就可以啦。需要定期换上清水。<br/>       合果芋<br/>       养护要点：根据水质情况选择换水的时间，时间长了，合果芋会重新长出新的藤蔓，花友们可以适当的进行牵引，让它装饰我们的家。<br/>       朱顶红<br/>       养护要点：水的深度以浸没种球一半为宜，最后置于室内阳光充足处。及时换水，头半个月每隔2-3天换一次水，以后每隔4-5天换水一次，盆内水位始终保持在原来的水位线上<br/>       吊兰<br/>       养护要点：水培的吊兰要放在光线较好的地方，有利于生根，刚开始几天每天要换水，生根后待水质脏了再换就可以。<br/>       千年木<br/>       养护要点：千年木换水是起能否成功的关键，特别是刚插的时候，隔一天换水一次可以增加其含养量，直至根系长出，适应水养栽培后便可按季节每周或每月换水或加水一次。<br/>       吸毒草<br/>       养护要点：注意适宜的光照、温度及经常换水、添加些营养液或颗粒肥就可以了<br/>       红运当头<br/>       养护要点：叶面容易吸附灰尘，所以要经常擦洗，每次换水时，可以在它的筒状结构里面加一些水，但是注意不要淋到花朵上。<br/>       发财树<br/>       养护要点：水培的发财树要放到室内光线明亮的地方，长久荫蔽的环境会导致发财树叶片脱落。冬季温度不能低于5度。<br/>       铜钱草<br/>       养护要点：铜钱草要必须带根的，偶尔加一些营养液就可以了<br/></p>', '2022-05-05 21:03:10', 'zzz', 'http://localhost:8000/file/bae9cc2731e14c328a0059e3761ee3bb.jpg', '0', '\0', '\0', '0');
INSERT INTO `flower` VALUES ('15', '怎样使发财树叶子更绿更亮', '<p>怎样使发财树叶子更绿更亮<br/><br/>发财树是最常见的观叶植物之一，一般在室内摆放养植，要想让它的叶子更绿更亮，那就要做好日常养护工作，下面花匠大叔介绍具体措施： 图：发财树盆栽 1、摆放在室内向阳或稍荫，通风环境好的地方，如果想让发财树的茎节短一些，让株型更紧凑丰满，那就放在可...<br/><br/>发财树是最常见的观叶植物之一，一般在室内摆放养植，要想让它的叶子更绿更亮，那就要做好日常养护工作，下面花匠大叔介绍具体措施：<br/><br/>1、摆放在室内向阳或稍荫，通风环境好的地方，如果想让发财树的茎节短一些，让株型更紧凑丰满，那就放在可以全日照的地方，这样对发财树的干茎增粗也有好处，当然，要注意，不要放置在强光之下，否则可能造成发财树的叶片灼伤或焦边，会影响叶子的美观度。<br/><br/><br/>2、注意温度与湿度。发财树对温度和湿度的要求较高，如若温度较低或湿度缺失，常常会出现落叶现象，严重时枝条光秃，不仅有碍观赏，且极易造成植株死亡。因此，莳养时应注意保持15℃以上的温度，并经常给枝叶喷水，以增加必要的湿度。而在深秋和冬季，则应注意做好越冬防寒、防冻管护。<br/><br/>3、浇水是发财树养护管理过程中的非常重要的一个环节，水多或者水少对发财树的生长都会有影响，应遵循宁湿勿干的浇水原则，夏季高温季节多浇水冬季少浇，可以每间隔3-5天时间，用喷壶向叶片喷洒叶面水，让叶片更干净，这样既有利于发财树光合作用的进行，又可使枝叶更美观翠绿。<br/><br/>【小贴士】除了上述需要注意的几个事项外，要想让发财树叶子更绿更亮，还要注意施肥，保证发财树生长所学的养份，特别是不能缺失氮肥，这是发财树叶片翠绿油亮的保障。</p>', '2022-05-05 21:03:56', 'zzz', 'http://localhost:8000/file/0cd428d3d4854e21b3060eddb664ba7c.jpg', '0', '\0', '\0', '0');
INSERT INTO `flower` VALUES ('16', '半阴阳台适合种什么花 哪些花适合种在半阴阳台上', '<p>最近有朋友问花匠大叔半阴阳台适合种什么花这个问题，首先我们得知道什么样的阳台是半阴阳台，这样才能选择适合它的花卉品种进行种植，那么，到底什么是半阴阳台呢，在这样的阳台上我们可以种植哪些花卉品种呢？ 图：北向阳台花卉植物 一般来说，南向的阳台...<br/><br/>最近有朋友问花匠大叔半阴阳台适合种什么花这个问题，首先我们得知道什么样的阳台是半阴阳台，这样才能选择适合它的花卉品种进行种植，那么，到底什么是半阴阳台呢，在这样的阳台上我们可以种植哪些花卉品种呢？<br/><br/><br/>一般来说，南向的阳台，特别是那种凸形阳台宜选择喜阳耐温的花卉，东西向阳台则可以选择一些藤本和攀援花卉，而北向阳台就是我们今天要讲的半阴阳台了，这种阳台应该种些喜半阴或耐阴的花木。<br/><br/><br/>适合北向半阴阳台的花卉植物主要有：观赏蕨类、兰科花卉、苦苣苔科、凤梨科、天南星科、竹芋科及球海棠科等喜荫室内观叶植物，如绿萝、蔓绿绒、万年青类、龟背竹、文竹、棕竹、玉簪、橡皮树、杜鹃、君子兰等。<br/><br/><br/>【小贴士】阳台养花，需要根据阳台特点选择适宜生长的花卉种类，合理布局，巧用空间和细心养护，才能使花卉生长发育良好，充分显示其观赏效果。</p>', '2022-05-05 21:04:27', 'zzz', 'http://localhost:8000/file/78cd34adefd84cce93bedf25be56af1f.jpg', '0', '\0', '\0', '0');
INSERT INTO `flower` VALUES ('17', '无尽夏花后如何修剪 无尽夏开花后怎么修剪', '<p>无尽夏花是我们常说的绣球花，是在婚礼上常运用的花，所以比较受到广泛朋友的喜欢。无尽夏不仅花期长、花色美、花型也漂亮，如果进行合理修剪的话，下次花期可以欣赏到更多更美的花。 那么，无尽夏开花后如何修剪呢？无尽夏开花后怎么修剪呢？下面花匠大叔介...<br/><br/>无尽夏花是我们常说的绣球花，是在婚礼上常运用的花，所以比较受到广泛朋友的喜欢。无尽夏不仅花期长、花色美、花型也漂亮，如果进行合理修剪的话，下次花期可以欣赏到更多更美的花。那么，无尽夏开花后如何修剪呢？无尽夏开花后怎么修剪呢？下面花匠大叔介绍无尽夏开花后的修剪方法和注意事项。<br/><br/>1、不同季节分别修剪<br/><br/>因为无尽夏花的花期较长，可以从春天到夏天，有的秋天也会开放，所以，花后修剪要根据不同的季节分别修剪。如果是春花后修剪的话，要注意在靠近花的那一对芽上方，将残花剪去即可；而如果是秋花后修剪的话，则可以尽量剪得短一点。<br/><br/>2、区别不同品种分别修剪<br/><br/>无尽夏花大体上可分为土绣球和洋绣球。土绣球的话是老枝开花，主张在花后修剪，主要是剪去残花；而洋绣球的花后修剪，可以从株型考虑出发进行修剪，中间部分稍长些，边缘部分可以剪矮些，方便植株成球。<br/><br/><br/>3、注意随时进行修剪残花<br/><br/>对于无尽夏花来说，每个季节的开花后，都会有残花形成。这就需要随时进行残花的修剪了。一般残花的修剪，建议在花下的枝条上进行，不必过于向下修剪，以免植株变小。<br/><br/>4、修整无尽夏花的整株造型<br/><br/>不同的地区有不同的表现，如果南方的绣球花经历过冬天以后，可能会有残留的花苞提前开花并凋谢，这就要修整绣球花的整株造型，为后来陆续开花的绣球花提供必要的空间。<br/><br/><br/>5、及时修剪无尽夏花老残枝<br/><br/>随着种植时间的延长，无尽夏花在花后会有不同程度的老残枝出现。所以，要及时修剪绣球花的花后老残枝。特别是对于新枝开花的品种，一定要在根部修剪掉老残枝<br/><br/>【小贴士】无尽夏开花后会有不同程度的枯枝出现。这就需要经常观察发现，并进行合理的修剪枯枝了。发现枯枝后，要在健康的芽点上方，将枯枝修剪掉，确保健康芽点的正常成长。</p>', '2022-05-05 21:04:57', 'zzz', 'http://localhost:8000/file/4286d849ab0c4c8f9b1b41b755b628c1.jpg', '0', '\0', '', '0');
INSERT INTO `flower` VALUES ('18', '盆栽玫瑰花怎么养 盆栽玫瑰花的养殖方法和注意事项', '<p>一、盆栽玫瑰花的养殖方法<br/><br/>1、环境<br/><br/>玫瑰喜阳，室内养殖也放于阳光充足的阳台养护，盆栽玫瑰土壤要求疏松、肥沃、的排水良好。注意玫瑰在粘壤土中生长不良，开花不佳。宜栽植在通风良好、离墙壁较远的地方，以防日光反射，灼伤花苞，影响开花。<br/><br/>2、浇水<br/><br/>盆栽玫瑰浇水不宜太多。玫瑰是耐旱怕涝的植物，严格把握“不干不浇，浇则浇透”的原则以，如果频繁给玫瑰浇水（特别忌讳在湿度大蒸发量少的阴雨天过度浇水），很容易出现烂根死株。<br/><br/>3、施肥<br/><br/>盆栽玫瑰应施以清淡的肥料，忌施浓肥（特别是化肥）会导致局部烂根而死亡。根据植株和盆的大小，每1-1.5个月用20-40粒复合肥，均匀地施于盆边1寸土下，或者每月浇一至二次经充分发酵的淘米水。<br/><br/>4、修剪<br/><br/>平常不需修剪，对老株修去过密枝、凋谢枝、病虫枝即可。玫瑰着花，随开败随摘，摘后再开，不然只开1次花。要玫瑰花长得好、开花多，修剪是很重要的，一般越冬时，要齐地面10公分左右剪去全部枝条，使顺利越冬。<br/><br/>5、病虫防治<br/><br/>盆栽玫瑰花，主要虫害有青虫和介壳虫，青虫好治，介壳虫一旦发作，较难治理，会导致整株染虫，并导致病害，因此对介壳虫的防治是家养玫瑰花的重点。防治介壳虫，要把玫瑰花放在通风良好，光照好的地方，并剪去玫瑰花多的枝条，保留几个主枝，使内部通风。盆土保持湿润，但不要积水。<br/><br/>当发现玫瑰枝条上有白色斑点时，及时用竹片刮除，如果较严重，直接剪掉整个枝条甚至全部枝条，并结合喷洒杀介壳虫的药。<br/><br/><br/>二、盆栽玫瑰花的注意事项<br/><br/>首先是要知道玫瑰的上盆时间,最好是在初冬落叶后或早春萌芽前进行。然后就是施肥和浇水。玫瑰喜肥，盆栽服盆后应每隔10天施1次腐熟的有机液肥，花蕾形成期应施些含磷、钾的液肥。浇水应视天气状况进行浇水，炎热夏天需每天浇水，平时见盆土干即浇透水，开花后要及时摘掉残花。<br/><br/>最后就是需要有着定期的修剪和病虫害防治。由于在休眠期要进行修剪，这样可促使植株生长旺盛，延长开花年限。</p>', '2022-05-05 21:05:26', 'zzz', 'http://localhost:8000/file/2dd6b6eecbe444b2940039c93aee532b.jpg', '0', '\0', '', '0');
INSERT INTO `flower` VALUES ('19', '满天星盆栽怎么种植 满天星盆栽怎么养', '<p>满天星，原名为重瓣丝石竹，原产地中海沿岸。满天星一般用作主花的衬材，常被称作“伴娘花”，有了它的衬托，主花才变得更加华彩，且满天星常用于花束的装饰，而在如今生活中，人们也喜欢盆栽满天星。那么, 满天星盆栽怎么种植呢？满天星盆栽怎么养呢？下面花匠大叔介绍满天星盆栽的种植方法及养护方法。<br/><br/>满天星盆栽种子的种植方法<br/><br/>1、满天星由于在整个生长期比较怕热的，并且播种最适温度为15～20℃，故常在9月中下旬以后进行播种：先对播种用的基质进行消毒，最好的方法就是把它放到锅里炒热，进行高温杀菌。<br/><br/>2、选取松软土壤，先将土湿透，定型后撒种子，上覆一层薄薄的土，阳光、温度必不可少，浇水原则是干透浇透，脱离苗期应减少浇水量，随着满天星的成长，会出现徒长现象，需要不断加土固定，不可太密集。<br/><br/><br/>3、播种注意点：<br/><br/>（1）先把泥炭土浇湿，然后播种。<br/><br/>（2）要避光，要覆土(盖住种子即可）。<br/><br/>（3）盖上保鲜膜，膜上用牙签戳一些小洞。<br/><br/>（4）放到避光遮荫的地方，要注意保持通风<br/><br/>4、满天星换盆很容易死，但是如果带土移植，就比较容易成活，就是移植后浇水要非常小心，不能把小苗浇倒，如果是花盆的话，可以在底托中一直加水，慢慢向上吸水，直到土的表层湿润，把底托中的水倒掉。<br/><br/>5、栽后约20--35天，植株下部开始萌发侧芽，这时，可以保留下部3--4对叶打去主顶，让侧枝生长，以便能获得高产。一般每棵保留6--8个侧枝。多数品种从打顶到开花需要70--90天。不打顶也可以，但是产量会变低。<br/><br/>【小贴士】<br/><br/>（1）每过半月要加一次液肥，比例按1:300倍稀释，并要多发分枝。<br/><br/>（2）有可能会倒下，要立支架。<br/><br/><br/>满天星盆栽的养护方法<br/><br/>1、水肥管理：满天星盆景在生长季节应经常浇水，保持土壤的湿润。尤其在夏季更要注意，首先盆景不能太干燥，再是遇到暴雨天的话要注意不要使盆内积水。当然，在冬季就得少浇水了。满天星施肥实在每年开花前，施肥适量，并且不能施浓肥，一般15天左右使用1:300营养液一次。<br/><br/>2、光温要求：满天星属于亚热带树种，要切忌将盆栽放在强烈阳光下暴晒，因此夏季要注意遮阳。冬季在温暖的南方可使满天星在室外越冬；北方应将盆栽移入室内，保持室温5--12℃更有利于生长。<br/><br/>3、翻盆与修剪：给植物换土相当于让植物透透气，有利于植物更好的生长、发育。满天星通常隔1--2年翻盆换土1次，于春季2--3月或深秋期间进行，此时要换去全部旧土，并适当修剪根部。如果想要提高满天星的观赏价值，还可结合换盆进行提根，使其形成悬根，更具美观。<br/><br/>4、病虫害防治：满天星盆景的病虫害较少，但偶有蚜虫和蜗牛发生，一旦发生，应及时对症下药，进行防治，可以用百虫灵按1:800倍稀释。当然也不能使盆内过于潮湿或留有积水，否者会产生根腐病，应及时做好防治措施，可以用多菌灵按1:500-1000倍稀释。如果发生病虫危害，应立即将植物取出，移植到另外一个盆栽里，用新土培育，并减掉植物的病根，这样亦能使植物继续存活。<br/><br/>盆栽满天星种植的注意事项<br/><br/>1、盆栽满天星选土很重要，土壤以微碱性的石灰质壤土为佳。<br/><br/>2、不用每天都浇水，要看盆土干燥，表土发白以后才浇，夏天气温高可多洒水，冬天低温可少洒。要保证花盆排水良好。<br/><br/>3、满天星喜阳，要放到阳光充足和通风的地方，光照条件好，空气有一定湿度，才能充分地进行光合作用，这样才会开花。<br/><br/>4、满天星生长旺盛，要注意修剪，掉叶的地方可以随意剪掉，很快会长出新的枝叶。剪掉的越多，长出的新叶越丰满。<br/><br/>5、满天星长势强、花期也长，养分消耗的快，所以满天星喜肥，要经常给它搞点肥料。可以用复合肥，花店卖的营养液、花宝都行，施肥按少量多次的原则，每7--10天施一次，施肥后要浇水。<br/><br/><br/>6、通常隔1—2年翻盆换土1次，于春季2—3月或深秋期间进行，换去全部旧土，适当修剪根部，可结合换盆进行提根，使其形成悬根，提高观赏价值。<br/><br/>7、满天星易患的病害为灰霉病，此病主要为害叶片、花器。受害叶片表面出现褐色水渍状病斑，最后往往导致整个叶片枯死。此病在环境潮湿、气温低的情况下容易发生。发病时可每隔10天喷施50%的苯来特可湿性粉剂2500倍液一次，共用药2～3次。</p>', '2022-05-05 21:05:59', 'zzz', 'http://localhost:8000/file/6a9560664c4441ffacfc8ec086f3cf1c.jpg', '0', '\0', '\0', '0');

-- ----------------------------
-- Table structure for fruits
-- ----------------------------
DROP TABLE IF EXISTS `fruits`;
CREATE TABLE `fruits` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '标题',
  `content` text COLLATE utf8mb4_unicode_ci COMMENT '内容',
  `time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '发布时间',
  `user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '发布人',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '封面',
  `view` int(11) NOT NULL DEFAULT '0' COMMENT '浏览统计',
  `top` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否置顶，1-是，0-否',
  `essence` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否加精，1-是，0-否',
  `section_id` int(11) DEFAULT '0' COMMENT '专栏ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of fruits
-- ----------------------------
INSERT INTO `fruits` VALUES ('11', '你有没有想过在家里种一棵菠萝呢', '<p>现在开始种植菠萝的教程吧!<br/><br/>第一步：获取一个菠萝！<br/><br/>让我们到水果超市挑选一个大个头，健康的菠萝。我们检查一下冠芽的叶子是否坚挺翠绿，还有菠萝果实不要太青绿【那表示菠萝太生了】,我建议买两个以上，以备种植失败，呵呵。细心地检查一下叶丛中有没有虫蛀，还有轻轻的拉一下叶子，如果很轻易被你拔出来，那就证明这个菠萝太熟了，不适宜种植。<br/><br/><br/>第二步：准备种植冠芽！<br/><br/>所谓冠芽，就是菠萝果实顶部的那部分，它是最有营养的，所以用来种植最好!有些人会收购菠萝档削下来的冠芽用来种植。我们切下冠芽，在交界的地方下刀就好，不要留有果肉。你会看到切面有圆点，那是根原基，以后会从这些地方长出根来。【要比较成熟的菠萝才会有，甚至有冒出的根冠。】<br/><br/><br/>小心的撕下底部的小叶片，露出白色部分，尽量不要破坏叶痕下的根原基。然后把冠芽横放在通风的地方，晾放两天，直到切口干燥愈合。这样做是为了防止腐烂，千万不要心急哦。<br/><br/><br/>第三步：冠芽催根大法！<br/><br/>还记得多肉植物茎段扦插吗?对了，这次我们还是用瓶子催根的办法，这非常好使!我们把冠芽悬空搁置在瓶口，尽可能贴近水面但又避免接触【原作是直接浸泡在水里，但是会有腐烂的风险。】。<br/><br/><br/>如果用深色或不透明的的容器会更利于根的生长，不过要是作为水培植物来欣赏根，那么用普通的玻璃瓶也可以的，瞧，我用的只是个饮料瓶。<br/><br/><br/>催根的过程我犯了个疏忽的错误，直接暴晒了冠芽，结果现在虽然长出了根，不过叶子却焦尾了。所以大家尝试的时候最好要注意保湿和避晒。<br/><br/>到此为止，作为水培欣赏的步骤已经完成了，我真心缺少那个耐心等上一两年。有心的你还可以看下去，看看原作者的种植过程：<br/><br/>第四部：移植冠芽！<br/><br/>如果是土培的话，等根长到0.5cm的时候就可以准备移植了。种植基质需要排水良好的，可以用珍珠岩混合土。关于种植细节就不一一说明了。<br/><br/>在浇水方面，应始终是保持土壤稍润，但不能湿(这将促进腐烂)，也不能干燥。这将需要六到八周的时间让茎真正发出强壮的根。不要心急这个过程，避免勤浇水和施肥，在这一点上得注意。<br/><br/>约两个月后，菠萝的冠芽已经发展成新的植株。轻轻拉扯一下它，看看是否已经形成新根。如果看起来已经腐烂，那只好重新来过了。<br/><br/>你会注意到，慢慢的，原来菠萝冠芽的叶子会开始死亡，变成褐色，新叶开始长出。在次年的过程中，剪掉原来的叶子。在此期间，菠萝应浇水一周不超过一次。</p>', '2022-05-05 21:07:09', 'zzz', 'http://localhost:8000/file/32c559301da7465191ea8ba169e0e913.png', '0', '\0', '\0', '0');
INSERT INTO `fruits` VALUES ('12', '家庭园艺能在阳台上种火龙果吗', '<p>相信很多人都吃过火龙果，但是大家对火龙果是怎么长出来的是不是很好奇啊？不用好奇了，在自家阳台上就可以种了，下面就是阳台种植火龙果的过程和步骤，赶紧种上一盆，收获自己劳动的果实吧~~~<br/>实用：火龙果是长在什么上面的？家庭园艺能在阳台上种火龙果吗<br/>　　1.搜集枝条<br/>　　要想扦插的话，先要有枝条，枝条现在网上有卖的，大家可以买来种种试试，如果朋友有种的，可以砍根枝条回来，不用买。<br/>　　2.处理枝条<br/>　　扦插的枝条最好长一些，这样能更快结果，用砍刀把枝条下部斜切几下，漏出木质化的部分，大概指甲盖那么长就行。<br/>　　3.晾干枝条<br/>　　把处理好的扦插枝条放在阴凉通风的地方晾4-5天，等伤口愈合。<br/>　　4.准备土壤<br/>　　火龙果对土没啥要求，沥水透气就行。如果用花盆种的话，就准备一些比较透水的沙壤土，或者用园土掺点沙子，地栽直接种就行。<br/>　　5.入土扦插<br/>　　把晾干的火龙果枝条，漏出来的木质化一端，插入土中，保证枝条能稳住不倒。<br/>　　6.木棍稳固<br/>　　如果枝条比较长重心不稳，可以把木棍插土里，用胶带把枝条固定到木棍上，让枝条不至于倒下。<br/>　　7.刚种完别浇水<br/>　　种完后，把扦插火龙果枝条的花盆放在散光通风的地方，一个月以内，千万别浇水或淋雨，否则很容易烂。<br/>　　8.日常养护<br/>　　生根以后就可以浇水啦，同时多晒太阳，保证温度在8度以上，施点鸡粪、豆饼等有机肥，火龙果就会跟疯了似的长。<br/>　　9.如何授粉<br/>　　火龙果开花以后，要进行人工授粉，果子才能结得多，不同株的火龙果授粉，结果更大。<br/>　　人工授粉很简单，用棉签轻轻扫一圈雄蕊，让花粉掉落到盘子里，再把这些花粉扫到别的花中间的雌蕊上。<br/>　　10.收获果实<br/>　　火龙果结果之后，可以用个网兜罩住，防止蚊虫，等到果子红彤彤的时候，就可以摘下来大快朵颐啦!</p>', '2022-05-05 21:07:40', 'zzz', 'http://localhost:8000/file/8a6b2c3afdb9493bb2fc012916d88035.jpg', '0', '\0', '\0', '0');
INSERT INTO `fruits` VALUES ('13', '盆栽蓝莓苗种植要点', '<p>&nbsp; &nbsp;很多果友都在用栽培果树的方法栽培蓝莓，最终导致蓝莓死亡，盆栽蓝莓苗种植要点主要有三点，栽培土的通透性、栽培土的ph、栽培土的有机质。<br/> <br/>       1. 蓝莓的根系呈纤维状，穿透力弱，不耐肥、不耐涝、怕旱。因此，土壤要求疏松、通透。土壤以保持潮乎乎的就好。<br/> <br/>       2. 蓝莓要求栽培土呈酸性，PH 4.2 --- 5.8 之间，因此土壤中要求添加松针、碎松树皮、苔藓、杂草、烂树叶、碎农作物秸秆等，这些有机物物在腐烂时可以产生有机酸，可以保持土壤的酸性。<br/> <br/>       3. 有机质是蓝莓生长的必需，虽然蓝莓的产量与土壤有机质含量不成正相关，但土壤中的有机质含量低于 8% 时，蓝莓生长不良。在栽培土中有机质含在 8% 以上时，栽培蓝莓不需施肥。<br/> <br/>       栽培土中的有机质与土的比例为 2:1 或 3:2<br/> <br/>       在栽培土中添加了 2:1 或 3:2 的松针、碎松树皮、苔藓、杂草、烂树叶、碎农作物秸秆等有机物后，就可以满足以上三条。这样，蓝莓在栽培中一般就不会产生问题。<br/> <br/>       蓝莓施肥以生理酸性肥料为好：硫酸铵、硫酸钾、二铵、硫酸钾型三元复合肥等都可以使用。施肥要求稀、薄、淡，要求少施，不要勤施。</p>', '2022-05-05 21:08:12', 'zzz', 'http://localhost:8000/file/315d271d8e9b4ed69c99aabee31104c9.jpg', '0', '\0', '', '0');
INSERT INTO `fruits` VALUES ('14', '阳台上能盆栽种植葡萄吗？需要注意什么？', '<p>阳台上能盆栽种植葡萄吗？需要注意什么？<br/>阳台上栽植一盆葡萄，是很有创意的设想，也是切实可行的设想。只要 是南向阳台，或者是顶楼阁楼凉台，都可以栽植。<br/><br/>阳台上能盆栽种植葡萄吗？需要注意什么？<br/><br/>阳台栽植葡萄，有着很大的空间优势和条件，首先，南向阳台光照充足，透风性强，非常适合葡萄生长和果实成熟，再次，葡萄三季枝叶碧绿，两季观果极具观赏性，无论是室内欣赏还是室外观看，都是一道美丽的风景，第三，，在炎热的夏天，还有着遮阴降温避暑功效，冬季植株落叶，也不妨碍冬日暖阳的照射。<br/><br/>阳台栽种葡萄需要注意：<br/><br/>1，阳台栽种葡萄之硬件设施要求。最好是南向会者东向阳台，北向阳台和西向不宜栽种。如果阳台窗户安装防盗网，则是葡萄的生长最理想棚架。防盗网的设计，最好与窗户有三十到四十厘米的距离。没有防盗网的阳台，则需要在窗外搭建葡萄棚架，可用不锈钢或者铝合金管，搭建上下垂直棚架。这样，不会影响到下楼邻居的光照，也便于管理和采摘。<br/><br/>2，台内栽种台外长。台内栽种：栽种用盆需要大而深。要将花盆摆放在阳台西端靠近北墙的位置，不宜靠近前窗台，前窗台背阴，尤其是冬季不能接受光照，不利于植株越冬。为什么要将花盆置于西端，道理很简单，植物生长，都有趋光性，尤其是早上和上午的阳光，植株格外敏感，新生枝条，都朝着朝阳升起的方向生长。而在东端，植株逆光生长。<br/><br/>3，盆栽品种的选择。葡萄品种繁多，但是不是所有的品种都适合阳台盆栽。我们应该选择那些节间短，长势旺，枝条成熟早，容易形成花芽的品种栽种，如：巨峰、玫瑰香、白玫瑰等。巨峰和玫瑰香，果实为紫黑色，属于中期成熟品种，白玫瑰，果实为黄绿色，是晚熟品种。其中，巨峰葡萄，长势最旺，抗病、抗寒、抗污染和适应性等能力最强。<br/><br/>3，栽种管理养护要点。阳台栽种葡萄植株，不宜选用多年上老株葡萄，而最好选取二至三年生葡萄小苗。盆栽用土，需要疏松透水性较强，以葡萄园土最好。<br/><br/>阳台栽种葡萄换土，可两年 一次交替进行，换土不换盆，为盆栽换土，不能挖出植株，可挖出盆土的一般，填入新土，不要担心会伤害植株根部，盆内保存的另一半老根足以供应生长开花，而另一半，不要等到夏天，就会重新萌发健壮新根。换土时间宜在秋后植株即将进入休眠期。<br/><br/>修剪。阳台栽种葡萄的修剪，异于地栽葡萄的两点是，开始要培育独杆，以尽快将盆栽茎蔓引出窗户之外。坐果之后不宜为葡萄摘取叶片。其他管理措施与地栽葡萄相同。葡萄枝蔓完全可以在阳台外越冬。水肥管理主要应该注意控制浇水，少施氮肥。</p>', '2022-05-05 21:08:40', 'zzz', 'http://localhost:8000/file/f2fa17c056814aec856128a99ba2e1ae.jpg', '0', '\0', '\0', '0');
INSERT INTO `fruits` VALUES ('15', '阳台种植草莓', '<p>草莓 草莓生长不需要太大的地方，所以很适合阳台盆栽，而因为草莓有匍匐茎，因此又很适合阳台吊盆。草莓味道清香，长得也很好看，深受广大阳台盆栽人士的喜爱。 <br/><br/>首先是催芽，一般草莓种子在室温条件下，可保存2年左右。为了提高种子发芽率，播种前可将种子包在纱布内，浸湿24小时，在冰箱中经过0℃～3℃的低温处理15天左右，以打破种子的休眠，然后播种，萌发率较高。 没有耐心的朋友，也可以不经过冷冻处理，直接用下面这个方法对种子进行催芽，但是不经过低温打破休眠，可能会导致芽率降低。方法如下：先将种子倒入50～60℃温水中浸洗，并不停地搅动，直至水温降到25℃左右停止。继续浸泡2～3小时后，捞出用手轻轻揉搓，至种皮干净呈现光泽为止。然后用清水漂洗干净，用几层湿纱布盖好。（这么做是因为草莓取种的时候，上面有草莓酸，因此必须将这个洗掉）  放在25～30℃条件下进行催芽。每天三次（早、午、晚）用温水浸湿纱布，以保持种子的湿润环境。待60～70%种子露白后即可播种。<br/><br/>草莓种子的种植方法<br/>把营养土放在大一些的盆中把水浇透，等吸收1个小时左右再播种，把吸收好的营养土和土壤消毒剂拌匀放到花盆中。<br/><br/>草莓种子的种植方法<br/>再是播种，草莓种子较小，播种时必须精细。在土上均匀的撒上种子，再用喷壶喷洒一下种子让种子吸收一下水分，然后在种子上盖3毫米左右营养土，喷壶碰洒一下就可以了。<br/><br/>草莓种子的种植方法<br/>把播种好的放在有阳光处的室内最佳的，以后不干不浇水，干则浇透。种子没有发芽期间、不能使用任何肥料的。<br/><br/>草莓种子的种植方法<br/>在幼苗长出2片真叶时，进行分盆，3～5个叶片时，即可下地栽植。<br/><br/>草莓种子的种植方法<br/>小苗要注意保湿 叶面可以用小喷壶喷喷。水流大 苗要倒的，有时候沾在土里 ，常会变成扶不起的阿斗了。<br/><br/>一般苗出第二对真叶的时候可以稍施薄肥，这个时候主要是氮肥，使叶子变绿变强壮，之后慢慢地增加复合肥补充各方面营养。<br/><br/>一旦草莓开始结果，变红后，要注意不要让鸟啄食，因为鸟容易发现红色的东西。在草莓上接个网，或者用一个木筐罩在草莓上。但是如果家里有暖房，可以把草莓移到暖房中，这样会更好。草莓也更容易结果。等草莓结果期过后，可以把它们移出暖房，放在室外过冬。从某种角度说，如果草莓植株经受一些霜冻的话，更利于来年提高产量。 <br/><br/><br/>注意事项<br/>温、湿度。一般盆栽草莓要求温度为20-25℃，冬季室温保持在15℃以上。花盆要放在通风向阳处，盆土经常保持湿润为宜。</p>', '2022-05-05 21:09:14', 'zzz', 'http://localhost:8000/file/f30e8bf489214b8c99c85ea70d6e9e6e.jpg', '0', '\0', '', '0');
INSERT INTO `fruits` VALUES ('16', '阳台种植西瓜', '<p>西瓜 西瓜是很常见的水果，一到夏天随处可见。但是很多人还是喜欢自己阳台种植西瓜，因为自己种的绿色健康，且吃起来有着别样的乐趣。 <br/><br/>准备工作<br/>选盆备土<br/>准备一个较大的花盆，装上菜园土，选择疏松些的土壤，条件允许放些腐熟的有机肥。<br/><br/>选种<br/>阳台种植要买小型西瓜品种，如黑美人，黄小玉。如果你想用吃西瓜剩下的种子直接种植，长出来的绝对不一样，还是直接购买优良的品种吧！购买时问好商家，要小型西瓜，大型西瓜在阳台上很难长出来的。<br/><br/>种植<br/>浸种<br/>高温浸种，然种子更好的发芽。将种子浸泡在温水3~4小时，捞出后放在湿毛巾中2~3小时。<br/><br/>播种<br/>将处理好的种子直接洒在浇过水的土中，盖上1厘米厚的干土。4~5天后浇水，立即浇水，土壤容易板结。剩下的就是等小苗出土了。<br/><br/>养护<br/>生长：西瓜是藤蔓植物，瓜苗长大后让其朝一个方向生长，或者在旁边拉起一条竹竿或绳子，这样瓜苗就可以向上生长了！<br/><br/>施肥：平时施些复合肥，5~10天一次。多浇些淘米水。<br/><br/>授粉：西瓜需要授粉才能结瓜。西瓜本身有雌雄花，需要人工辅助授粉。即将雄花的花粉抹到雌花的柱头上，辅助授粉。<br/><br/>收获：瓜长大，并且皮上花纹变得清晰时就可以收获了。<br/><br/>特别提醒：种瓜不要贪多，一盆一株苗，看看这位花友的无心之作，浪费种子浪费感情。</p>', '2022-05-05 21:09:41', 'zzz', 'http://localhost:8000/file/70c017a6cc144688b99bd3c1de520cfc.jpg', '0', '\0', '', '0');

-- ----------------------------
-- Table structure for ums_role
-- ----------------------------
DROP TABLE IF EXISTS `ums_role`;
CREATE TABLE `ums_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '描述',
  `flag` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '唯一标识',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ums_role
-- ----------------------------
INSERT INTO `ums_role` VALUES ('1', '管理员', '管理员', 'ROLE_ADMIN');
INSERT INTO `ums_role` VALUES ('2', '用户', '用户', 'ROLE_CUSTOMER');

-- ----------------------------
-- Table structure for ums_user
-- ----------------------------
DROP TABLE IF EXISTS `ums_user`;
CREATE TABLE `ums_user` (
  `id` varchar(20) NOT NULL COMMENT '用户ID',
  `username` varchar(15) NOT NULL DEFAULT '' COMMENT '用户名',
  `alias` varchar(255) DEFAULT NULL COMMENT '用户昵称',
  `password` varchar(100) DEFAULT '' COMMENT '密码',
  `avatar` varchar(1000) DEFAULT NULL COMMENT '头像',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(255) DEFAULT NULL COMMENT '手机',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '积分',
  `token` varchar(255) DEFAULT '' COMMENT 'token',
  `bio` varchar(255) DEFAULT NULL COMMENT '个人简介',
  `active` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否激活，1：是，0：否',
  `status` bit(1) DEFAULT b'1' COMMENT '状态，1：使用，0：停用',
  `create_time` datetime NOT NULL COMMENT '加入时间',
  `modify_time` datetime DEFAULT NULL COMMENT '修改时间',
  `role_id` int(11) DEFAULT NULL COMMENT '用户角色',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `user_name` (`username`) USING BTREE,
  KEY `user_email` (`email`) USING BTREE,
  KEY `user_create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

-- ----------------------------
-- Records of ums_user
-- ----------------------------
INSERT INTO `ums_user` VALUES ('1349290158897311745', 'adtt', 'adtt', '$2a$10$8qx711TBg/2hxfL7N.sxf.0ROMhR/iuPhQx33IFqGd7PLgt5nGJTO', 'https://s3.ax1x.com/2020/12/01/DfHNo4.jpg', '23456@qq.com', null, '2', '', '自由职业者', '', '', '2021-01-13 17:40:17', null, '2');
INSERT INTO `ums_user` VALUES ('1349618748226658305', 'zhangsan', 'zhangsan', '$2a$10$7K3yYv8sMV5Xsc2facXTcuyDo8JQ4FJHvjZ7qtWYcJdei3Q6Fvqdm', 'https://s3.ax1x.com/2020/12/01/DfHNo4.jpg', '23456@qq.com', null, '0', '', '自由职业者', '', '', '2021-01-14 15:25:59', null, '2');
INSERT INTO `ums_user` VALUES ('1510931625813245953', '1234', '1234', 'e10adc3949ba59abbe56e057f20f883e', 'https://s3.ax1x.com/2020/12/01/DfHNo4.jpg', '1234567889@qq.com', null, '2', '', '自由职业者', '', '', '2022-04-04 10:45:46', null, '2');
INSERT INTO `ums_user` VALUES ('1512021994806231042', '10012', '10012', 'e10adc3949ba59abbe56e057f20f883e', 'https://s3.ax1x.com/2020/12/01/DfHNo4.jpg', '9874561223@qq.com', null, '1', '', '自由职业者', '', '', '2022-04-07 10:58:30', null, '2');
INSERT INTO `ums_user` VALUES ('1512345899789983746', 'zzz', 'zzz', 'e10adc3949ba59abbe56e057f20f883e', 'https://s3.ax1x.com/2020/12/01/DfHNo4.jpg', '1212111221@qq.com', '123456789', '1', '', '自由职业者', '', '', '2022-04-08 08:25:35', null, '1');

-- ----------------------------
-- Table structure for vegetable
-- ----------------------------
DROP TABLE IF EXISTS `vegetable`;
CREATE TABLE `vegetable` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '标题',
  `content` text COLLATE utf8mb4_unicode_ci COMMENT '内容',
  `time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '发布时间',
  `user` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '作者',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '封面',
  `view` int(11) NOT NULL DEFAULT '0' COMMENT '浏览统计',
  `top` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否置顶，1-是，0-否',
  `essence` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否加精，1-是，0-否',
  `section_id` int(11) DEFAULT '0' COMMENT '专栏ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of vegetable
-- ----------------------------
INSERT INTO `vegetable` VALUES ('13', '如何在家里用花盆养大蒜和姜怎', '<p>大蒜和生姜都是比较容易种，都可以在阳台用一个花盆搞定，即可以观赏绿植，还可以吃，种植方法也比较简单。<br/><br/>种大蒜的话，比较简单，周期也短。如果家里有没来得及吃有发芽的大蒜，会更好，如果没有也没有关系，一样可以种得活。首先，把大蒜一颗一颗掰开，然后插在疏松的泥土里，芽点向上，每颗蒜之间预留一些生长空间。也可以先用清水泡大蒜，注意水不要太多，刚刚好泡到一点大蒜就行，等到大蒜长芽了，再插入泥土中。<br/><br/>浇点水，保持泥土湿润，然后移到通风阴凉的地方，最好不要有直射光照射，培养一段时间，大概一周左右就能长出小苗了。这个时候就要移到阳光充足的地方，土干了要浇水，多浇水，可以适当施点肥，也可以不施肥。<br/><br/>等到蒜苗长到十几厘米长，就可以收割一波了。剪蒜苗的时候，要注意留下一到两厘米的茎，那样，蒜苗还能长出来。可以一直收割，直到长出来的蒜苗比较萎黄，根部发棕的时候，还可以收割大蒜。<br/><br/>种姜的话，比重大蒜稍微复杂一点，周期也比较长。要找一个深口一点的花盆，装好疏松的泥土，浇透水。然后把发芽的姜块，没发芽的也行，切成小块，每块都带有芽点。然后芽点向上，埋在土里面，上面盖一层泥土。移到通风阴凉的地方，尽量不要晒太阳。<br/><br/>土干的时候，我那个上面喷点水，保持泥土湿润，然后就是等待发芽。<br/><br/>这个周期可能要一到两周时间，才能发出芽。然后就可以移到阳光充足的地方。浇水不用太勤快，一次浇透，一周一次就可以了。夏天天气太热的时候，或者比较干的时候可以增加浇水频率。<br/><br/>如果长势比较好，有刚好在夏季，比较幸运的情况下，还能欣赏到姜花呢。我奶奶就是喜欢种生姜，观赏姜花的。但是她是种在地里面，一般都能开花，中在花盆就不好说了。<br/><br/>生姜的种植周期相对较长，等到上面的枝叶枯萎了，就可以收获生姜了，这个时候生姜变老了，作调料刚好。当然你也可以中途就收获生姜，不过那个时候的生姜还比较嫩。</p>', '2022-05-05 20:51:08', 'zzz', 'http://localhost:8000/file/525a4a33a9e4468bbed5e3c2090729c8.jpg', '0', '\0', '\0', '0');
INSERT INTO `vegetable` VALUES ('14', '家庭园艺如何种植甜椒?', '<p>甜椒，(别称灯笼椒、柿子椒、菜椒等)，它不但可以生吃还可以美化阳台，你看五颜六色的甜椒摆在阳台上多美。它能当水果一样生吃，是因为所含的维他命C远胜于其他柑橘类水果，所以你的食欲来了可以随手摘一个吃，满足你的味蕾。当然它也是配菜的好帮手，甜椒做出来的沙拉也不错哦。它还有降脂减肥的作用。 <br/><br/>甜椒简单的种植：<br/><br/>1、盆栽甜椒在春季3月中下旬开始育苗了，把种子放在40度左右的温水中泡4~6个小时，其间不时搅拌下有漂浮的种子捞出不要了。把盆里的土壤弄松，结块的不要，并把土壤浇透水，再把泡好的种子稀蔬(不要太密)撒在土壤上，(若点播则每穴2～3粒种子)，覆土约1厘米，保持土壤湿润。气温25～30度时约3～5天发芽，低于15℃则难以发芽。<br/><br/>2、 发芽后长到两片叶子时给点光照，控制水分以免徒长，一般不干则不浇水。长到8～1O片叶时，选温暖的晴天下午进行移栽定植，尽量多带泥土，每盆1株，种植深度以叶子齐土为宜，每7～1O天追施1次腐熟有机肥，浓度不宜过大；苗期间多点氮肥，开花及结果时不要浇氮肥了会造成甜椒落花，可以多浇磷钾肥。<br/><br/>3、长大后的盆裁甜椒留2个主枝，去掉侧枝，中间的分枝侧芽可适当留取，长到3~4片叶后摘顶，经常除去植株下部老黄叶保持通风透光环境。 <br/><br/>甜椒喜温不耐寒、不耐干忌积水。生长期白天温度为25~30度，夜间不低18度，开花结果期白天21~26度适当多浇水，夜间不低于15度，温度不足时采取增温措施，可将花盆移入室内。夏季天气炎热傍晚浇水。</p>', '2022-05-05 20:51:44', 'zzz', 'http://localhost:8000/file/d23bcf7a77a14b299ca37952948d53b6.jpg', '0', '\0', '\0', '0');
INSERT INTO `vegetable` VALUES ('15', '可以在家里种植生姜吗？种植生姜有哪些注意事项？', '<p>用花盆就能种出生姜来，一点不比买的差，甚至比买的还要新鲜，挖出来直接生吃都没事，大家如果感兴趣可以试试，就当是在家中养了盆花。<br/><br/>可以在家里种植生姜吗？种植生姜有哪些注意事项？<br/><br/>简单的跟大家说一说，为什么生姜能防止中暑，祛除火气，这个是有记载的，中医有本书叫做，《伤寒论》书中说：五月，人的阳气处在外表之下，但胃部内体中却处于虚冷状态，所以体内寒气重，阳气较少，不能耐寒，因此需要给体内补点热气。<br/><br/>然而到了每年的冬天的时候，与夏天相反，人体就会出现外冷内热的情况，阳气在内体中使人烦躁不安，容易上火，因此需要用凉性的食物降降火，萝卜就是当选之物。这就是冬天吃萝卜夏天吃姜的由来。<br/><br/>在种植之前，我们准备一个花盆，稍微深一点的花盆，然后准备一盆土，生姜不是植物花卉，对土壤的需求是不挑剔的，任何土壤都可以，适应环境的能力比较强，一块小姜芽，栽一花盆一年都不用买姜了。<br/><br/>小姜芽的准备，我们平常家中吃的生姜，把肉小的切下来，放在盘子里，有阳光的地方，每天用喷壶盆点水，一周的时间切下来的小姜块就能发芽，成活率几乎是百分之百，当小姜芽出现芽点了，说明已经成功了。然后我们将发芽的生姜块埋进土壤中，把发芽的小姜芽露在外面，这样就可以了，把小姜芽种好了以后，然后用水把花盆浇透了，让水从花盆底部的排水孔露出来。<br/><br/>生姜的习性：生姜喜欢湿润的环境，湿润的环境能让它长的更快，因此只要我们保证它在不腐烂的情况下，可以多浇水，多加湿，为它提供一个湿润的环境，刚开始的时候，我们可以用白色的塑料袋把花盆罩起来，保证温度的吸收。<br/><br/>摆放的位置可以在阳台上，晒太阳能让它的嫩芽长的更快，一般的情况下，半个月的时间，小姜芽的长度就能达到20-40厘米，长势是非常快的，生姜的枝条就跟富贵竹一样，直上直下的，非常的漂亮，叶子也是绿油油的。<br/><br/>在这期间的养护多晒太阳，多浇水就可以了，多晒太阳是为了增加光合作用，促进它的快速生长，生姜比植物要好养一些，30度的高温下也不用担心，自己就能进行调控。<br/><br/>受家中环境的印象，因为阳台的空间面积有限，生姜的枝条能长到两米的高度，避免枝条的过度生长，我们可以从中间剪断，不用担心，从中心的部位还会长出新的叶片来。<br/><br/>等到秋天生姜的叶子会自然的枯黄，发现叶子枯黄就不要浇水了，等到它的叶子自然的枯黄掉落，我们就可以把整个花盆搬到室外，把土壤清理干净，这时候就会收获一大盆生姜了，一年吃的就够了。</p>', '2022-05-05 20:52:24', 'zzz', 'http://localhost:8000/file/b95c206bb0c34384a592a776a1282102.jpg', '0', '\0', '', '0');
INSERT INTO `vegetable` VALUES ('16', '大蒜水培，一年四季都有蒜苗吃！', '<p>大蒜吃不完的放着可惜，学习下面的办法，一不小心就能中出一箩筐来！<br/><br/>       水培大蒜，根据时间上划分，9~10月底为秋茬，11月初~次年1月底为冬茬，次年2月初以后为春茬，其中秋茬最好，春茬最差。<br/><br/><br/><br/>       水培注意点：<br/><br/>       1、剥取蒜瓣水培的时候，蒜瓣最底部一定要带上，这个部位是它的鳞茎盘，如把鳞茎盘削掉，那麽水培就无意义了;因为，鳞茎盘是蒜生根、长叶的重点部位，没有它，则水培蒜无法成长!<br/><br/>       2、至于使用的容器，不限大小，透明、不透明也无所谓;还有深浅也没有过多的限製;小到饮料瓶底、大到不鏽钢盆子、脸盆等，都可以用。<br/><br/>       通常，秋冬茬水培大蒜的全程水培时间在60多天，而春茬，通常在40多天。<br/><br/>       若等其充分生长再採收(单株超5片叶)，通常能收两茬，这裡将的就是这个方法;若等单株长到2、3片叶子时候採收，那麽全程水培，收穫6、7茬，也是很有可能的。<br/><br/>       除了最后一茬，必须连根採收外(此时蒜瓣养分已经耗尽，继续水培意义不大)，其馀若干茬，隻要有蒜瓣在，则像割韭菜那样，留2、3厘米的茬口採收，即留茬採收，这种方法收穫后，日后能再发。<br/><br/>       全程养护简介<br/><br/>       温度：范围在10~25度之间，有充足的光照）。<br/><br/>       水培初期（0~5天）：<br/><br/>       主要就是让蒜瓣生根，隻添水，不换水，以免将其弄乱。<br/><br/>       一般情况下，水培5天之内，就能出齐苗。<br/><br/>       水培中期（5~45天）：<br/><br/>       这段时间，蒜根已经完全固定，养护起来很容易，隻需要定期换水就行了，建议5~7天换水一次。通常，水培两星期后，就能达到很好的观赏效果(蒜苗森林初步形成);如果让其充分生长，那麽水培25~35天期间，为最佳採收时间，採收头茬，留蒜瓣和蒜根，以后会再次萌发。<br/><br/>       水培后期（45天以后）：<br/><br/>       这段时间，一般是二茬蒜苗的生长时间(前提是充分生长后再採收);此时蒜根容易生绿藻，需要在换水的时候，附加清洗根系1~2次;还有，此时很容易会出现蒜瓣腐烂或萎缩的现象，如果发现，则及时去除!<br/><br/>       还有，此时也是水培蒜容易散发气味的时间，有效的处理方法是加大换水次数(原先5~7天一换，变为2~3天一换)，换水时，附带除去腐烂或萎缩的蒜瓣。<br/><br/>       通常，等最后一茬蒜苗充分生长后，连根彻底採收就行了。当连根採收后，这轮的水培蒜就完全结束了。<br/><br/>       水培蒜的时候，建议错时进行，每间隔一段时间，水培若干组，这样随时都能吃到新鲜的蒜苗，也能同时欣赏到不同阶段的成长过程!</p>', '2022-05-05 20:53:00', 'zzz', 'http://localhost:8000/file/029d265f947b4ef298d7e89e2bc5dd84.jpg', '0', '\0', '\0', '0');
INSERT INTO `vegetable` VALUES ('17', '樱桃萝卜如何种植', '<p>樱桃萝卜是一种小型萝卜，为中国的四季萝卜中的一种，因其外貌与樱桃相似，故取名为樱桃萝卜。樱桃萝卜具有品质细嫩，生长迅速，外形、色泽美观等特点，适于生吃。<br/><br/>樱桃萝卜-育苗<br/>①将盆土浇透水，再将种子撒播于土面，覆土约l厘米，保持土壤湿润，2O～25℃时约3～4天发芽。也可点播，每穴2～3粒种子，间距约5厘米。<br/>②苗期保持土壤湿润，不干则不浇水。第1片真叶长出时进行间苗．，除去过密或病弱的小苗。如果仍太密，可在长出第2片真叶时再间苗1次。<br/>③4～5片真叶时即可定植，株距约5厘米。<br/><br/><br/>樱桃萝卜-日常管理<br/>①生长期注意保持土壤湿润，尤其肉质根开始膨大时更要注意及时浇水。注意不要将植株冲歪，每次浇水要均匀，避免肉质根开裂。<br/>②适应性强，但叶片生长旺盛期和肉质根膨大期最好给予充分的光照，夏季暴晒时要适当遮阴，高温时容易生长不良。如果长势较弱，可适当施肥，否则无需施肥。<br/><br/><br/>樱桃萝卜-采收<br/>一般种植1个月左右，肉质根直径3～5厘米时即可采收。采收前适当减少浇水，收获时可先将土壤浇透水，然后整株拔出即可。<br/><br/><br/>樱桃萝卜-营养价值<br/>“冬吃萝卜夏吃姜，一年四季保安康。萝卜的营养价值自古以来就被广泛肯定，所含的多种营养成分能增强人体的免疫力。</p>', '2022-05-05 20:53:46', 'zzz', 'http://localhost:8000/file/b08972afa4e44cf48ce08b859e96d7a7.jpg', '0', '\0', '\0', '0');
INSERT INTO `vegetable` VALUES ('18', '如何种植黄瓜呢', '<p>黄瓜种植季节：春季青蛙开始叫后1-2周即可在地里栽植，在寒冷的地区，必须先在温室里育苗。育苗要提前2-4周。<br/>发芽天数：8-10天<br/>成熟天数：60-75天<br/>种子覆土深度：12毫米<br/> <br/>特性：<br/>　　原产于南亚热带地区的印度，是一种喜高温高湿和日照的植物。果实95%是水，加上叶面蒸发量大，是需水量非常大的蔬菜，但是根部不可积水。黄瓜也非常吃肥，需多多施肥。<br/>　　花分雄花、雌花，雄花多于雌花。日照太长，会造成落花，枝叶茂密可以减少落花。所以，幼苗时底肥要足，促使枝叶生长。<br/>育苗：<br/>　　用育苗盆育苗。每盆埋入3粒瓜子，待长出3-4片真叶后，间苗留下最健壮的一棵。幼苗需要多晒太阳，注意浇水和保温。<br/>定植：<br/>　　移栽：挖出定植穴，倒入堆肥或干粪，磷灰石粉和草木灰做基肥。盖上一层土，浇一些水。再把幼苗放入埋好。施一些液体肥，浇足水。周围铺上覆盖物。<br/>　　直接撒中栽种：用穴播法。用堆肥或干粪、磷灰石粉和草木灰做基肥。每穴撒上3粒种子。待幼苗长出3-4片真叶后，间苗留下最健壮的一棵。幼苗周围要铺上覆盖物。<br/>　　如果你菜园是免耕菜园，先撒基肥，然后把幼苗连盆放在上面，周围铺上堆肥，将幼苗埋好，周围铺上覆盖物。<br/>搭架：<br/>　　黄瓜需要搭架，棚架的高度以方便摘瓜为准。<br/>日常管理：<br/>　　黄瓜需水量很大，尤其是开花结果期间，更是需要水。要多浇水，注意覆盖。<br/>　　开花前后追施一些草木灰或是炉渣，可以促进开花。要将肥料埋入土中，注意不要让肥料碰到根或茎。结果期间，可以追施草木灰和海藻肥，促进果实生长和成熟。<br/>修理：<br/>　　移栽前开的花必须摘除，不然会影响后来结果。<br/>　　在幼苗上架之前，摘除所有侧芽，促进主藤生长，上架后，则任侧藤生长，主藤爬到架顶后，摘除主芯，以控制高度。病瓜要及时摘除。<br/>采收：<br/>　　黄瓜要趁嫩、表皮呈深绿色时采收，不要等瓜皮变黄。</p>', '2022-05-05 20:54:39', 'zzz', 'http://localhost:8000/file/d9e1be30e934491197e150f00ed4d45d.jpg', '0', '\0', '\0', '0');
INSERT INTO `vegetable` VALUES ('19', '姜能在家自己种植吗？自己种姜有哪些注意事项？', '<p>姜是我们生活中不可缺少的一种食材，但是不一定非要去市场超市买，自己在家都可以种。盆栽生姜，一来可以当观叶植物，二来可以食用。下面我们就来看看家庭盆栽种植姜是怎么种的吧~~~<br/>姜能在家自己种植吗？自己种姜有哪些注意事项？<br/>　　水培 将生姜放入水中，等待生姜发芽，或者直接购买多苞头发芽生姜。移栽进装满九分土的花盆中，然后再填满。第一次浇水一定要透。等待3天，就会有嫩嫩的小芽破土而出。过后看天气，炎热的话就一天一杯水，天气温和就3天一杯水。<br/>　　土培 生姜移植宜在立夏前后，选择粗壮，肥圆，无病无损伤，具有2-3芽的姜块。生姜喜肥，盆土宜用沤制一年的垃圾土，在适当掺些草木灰。选择健壮的嫩芽移栽在花盆里，生长长势较慢，在长叶之前记得早晚浇水，保持土壤半湿润状态。<br/>　　你以“姜山”为聘，许我一世安稳。我愿伴君一生白首不离。 下面小编为大家推荐几款超好养超实用的家居小盆栽，为你的爱巢增添点活力，让你的生活更加美好。</p>', '2022-05-05 20:55:33', 'zzz', 'http://localhost:8000/file/b83516aa17df4c6eb3dfa11dd2c15bd7.jpg', '0', '\0', '\0', '0');
INSERT INTO `vegetable` VALUES ('20', '生菜的种植方法', '<p><br/>生菜别名:叶用莴苣，按叶的生长形态生菜可分为散叶生菜、结球生菜两种。春、夏季播种时宜选择散叶生菜。<br/>结球生菜又称为西生菜、美国生菜，比散叶生菜较不耐热，播种期也较短，比较适合在秋，冬季播种。<br/>适宜地区：我国各省区均可种植。<br/>种植季节：9-10月（常年均可播种，但以春、秋两季为佳，北方冬季需在室内养护）。<br/><br/>生菜-育苗<br/>①通常育苗移栽，先将盆土浇透水，种子与细沙混匀后撒播于土面，覆土约0．5厘米，15～20℃时约3～5天发芽。<br/>气温高于25℃时发芽率偏低，故高温时播种需进行催芽，将种子浸泡于水中约6小时，捞出后用布包好，放入5℃左右的冰箱冷藏室催芽，约有3／4种子露白时再播种。<br/>②苜期忌干旱，也不宜浇水过多。2～3片真叶时间苗1次，株距约5厘米。<br/>③5～6片真叶时移栽，散叶生菜株距约15厘米，结球生菜株距约30厘米。一般在晴天下午进行，根部要全部埋入土中，并浇透水，成活后正常管理。<br/><br/><br/>生菜-日常管理<br/>①定植后1周，喷施1次以氮肥为主的腐熟有机肥；定植2周和1个月后，再各喷施1次腐熟有机肥，要求为氮磷钾全元素肥。若植株缺肥，视需要增加施肥次数，但采收前2周左右停止施肥。<br/>②生长期前期适当控水，叶片生长旺盛期留采收需水量较大，要求土壤保持湿润，但忌浸涝及水积存于叶间，一般2～3天浇水1次，高温时早、晚浇水，宜小水勤浇，采收前逐渐减少浇水量。<br/>③喜冷凉，生长适温1 5～20℃，高温时生长不良，夏季要注意遮阴降温。<br/><br/><br/>生菜-采收<br/>当植株充分长大而未老化时可适时采收，直接从土中拔出即可。<br/>若主茎快速拔高，则植株往往老化而不适合食用。<br/><br/><br/>生菜-营养价值<br/>被誉为“蔬菜皇后’’，富含各种维生素和微量元素；茎叶中含莴苣素，可镇痛催眠、降低胆固醇；含有干扰素诱生剂，可刺激人体产生抗病毒蛋白，有抑制病毒的功效。</p>', '2022-05-05 20:56:17', 'zzz', 'http://localhost:8000/file/848fb983651844ec9ae23c52de68b7ad.jpg', '0', '\0', '', '0');
INSERT INTO `vegetable` VALUES ('21', '南瓜的种植方法', '<p>南瓜的种植方法<br/><br/>种植季节：2-3月（南方地区秋季也可播种）<br/><br/>南瓜-育苗<br/>一般用育苗移栽的方法，温度低时可用温水适当浸泡催种，并覆膜保温。<br/>①常用点播法，每穴2～3粒，种子尖部朝下，覆土2～3厘米，浇透水，25～3 0 oc时约1～2周发芽。<br/>②有3～5片真叶时可在晴天下午选择健壮、无病虫害的小苗进行定植，每盆1株，种植深度以子叶平齐土面为宜，并浇透水。若为直播，则需疏去病弱的小苗，每穴留1株苗。<br/><br/><br/>南瓜-日常管理<br/>①定植后约10天，喷施1次稀薄有机肥，以氮肥为主。植株开始爬蔓后生长迅速，8～l0片真叶时进行第1次打顶，促使多萌发侧蔓，此时可提前搭设支架。<br/>②侧蔓长50厘米以上时可采集嫩茎尖及叶柄食用，注意保留约5片叶，并用稍大的土块压住留下的茎蔓促使萌发气生根。每次采摘后喷施1次以氮肥为主的稀薄腐熟有机肥。<br/>③当蔓在土面上沿盆绕一圈后，可牵引茎蔓攀爬支架，使叶片均匀分布，枝条不相互遮挡。<br/>④生长到一定阶段后植株进入开花期，初期以雄花为主，可在早晨花朵将开未开时将雄花连花梗一并摘下，可供食用。<br/>⑤雌花开始生长时，追施的腐熟有机肥以磷钾肥为主，并减少或停止采收嫩茎尖。必要时进行人工授粉，须在早上8点前进行。通常每株有3～5个瓜正常生长即可(大型瓜留1～2个，微型瓜可适当增加，视植株长势而定)，过多的幼瓜或雌花要疏去，并对茎蔓进行适当打顶，以免养分供应不足。较大的瓜可用网兜套好挂在牢固处，贴近地面的瓜可用泡沫塑料或木板等垫起与土壤隔离。<br/>⑥若前期不采集嫩茎尖食用，则应控制水分。开始结瓜后要保证水分充足，避免干旱，并注意摘除老叶、病叶，保证通风良好。<br/><br/><br/>南瓜-采收<br/>侧蔓长50厘米以上时可采集嫩茎尖及叶柄食用。食用嫩瓜的，开花后10～15天即可采收；<br/>食用老瓜的，需在开花后约5～7N，表皮硬而难以刻划、果梗木质化时再采收。充分成熟的瓜内的种子可留待来年播种，选取饱满而无病虫害的种子，洗净后在阴凉处晾干后贮存即可。<br/><br/><br/>南瓜-营养价值<br/>含有人体所需的17种氨基酸，以及维生素A、维生素B、维生素C、维生素E、胡萝卜素、叶黄素等多种营养成分，营养丰富且全面，高钙、高锌、高铁、低钠且脂肪含量低，尤其适合中老年人和高血压患者食用，有一定的降血糖、降低胆固醇的功效，还含有葫芦巴碱、南瓜籽碱等抗癌成分。</p>', '2022-05-05 20:56:46', 'zzz', 'http://localhost:8000/file/3cd802d8cb9049089e1a4fc41cc8576f.jpg', '0', '\0', '\0', '0');
INSERT INTO `vegetable` VALUES ('22', '西红柿的种植方法', '<p>西红柿的种植方法<br/><br/>种植季节：4-5月（北方春播可在室内提前播种育苗；也可秋播，一般在7月底到8月播种）<br/><br/>西红柿-育苗<br/>①通常用播种法。播种前应用热水浸泡法对种子进行消毒(方法如基础知识篇中所述)，然后用清水洗净，包在湿布中保持25～30~C催芽，当有2/3以上种子露白时进行播种。一般用撒播法，覆土约1厘米，20～25~C时约3～5天发芽。<br/>②苗期容易徒长，2～3片真叶时假植1次，可移人穴盆或塑料杯，也可间距约5厘米。<br/>③4～6片真叶时定植，浇透水，成活后即可正常管理。<br/><br/><br/>西红柿-日常管理<br/>①不甚耐旱，生长期必须注意控制水分均衡，保持土壤湿润即可，不能时多时少，否则果实容易开裂。准备采收果实前可适当减少浇水。<br/>②生长期应避免施氮肥过多而难以开花。番茄属白花授粉植物，若开花却不结果，应进行A z授粉，用干净毛笔轻扫花药即可。结果初期施腐熟有机肥1次，以磷钾肥为主，以后每采收1次则施肥1次。结果过多时应该进行疏果，一般每穗留4～6个果。<br/>③喜温喜光，生长适温l 5～25℃；怕冷而不耐热，高温时应遮阴避负。暴晒。若植株较高大或果实较重时最好用竹竿或木棍等加以支撑，小型品种则一般不需要。<br/><br/><br/>西红柿-采收<br/>果实成熟时随时摘下，一般整个果实完全变红或黄色时即成熟，因品种不同，果实颜色有差异。<br/><br/><br/>西红柿-营养价值<br/>西红柿是“蔬菜中的水果”，含有丰富的胡萝卜素、维生素B和维生素C，所含的番茄红素有抗心血管病的作用。<br/></p>', '2022-05-05 20:57:24', 'zzz', 'http://localhost:8000/file/41f00d2e6ebb4d2fbb15729a01bf167a.jpeg', '0', '\0', '', '0');
