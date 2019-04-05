-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 28, 2018 at 11:29 PM
-- Server version: 5.6.35
-- PHP Version: 7.0.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `com2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` mediumint(9) NOT NULL COMMENT '管理员id',
  `name` varchar(30) NOT NULL COMMENT '管理员名称',
  `password` char(32) NOT NULL COMMENT '管理员密码'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(30, 'admin', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` mediumint(9) NOT NULL COMMENT '文章id',
  `title` varchar(60) NOT NULL COMMENT '文章标题',
  `keywords` varchar(100) NOT NULL COMMENT '关键词',
  `desc` varchar(255) NOT NULL COMMENT '描述',
  `author` varchar(30) NOT NULL COMMENT '作者',
  `thumb` varchar(160) NOT NULL COMMENT '缩略图',
  `content` text NOT NULL COMMENT '内容',
  `click` mediumint(9) NOT NULL DEFAULT '0' COMMENT '点击数',
  `zan` mediumint(9) NOT NULL DEFAULT '0' COMMENT '点赞数',
  `rec` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:不推荐 1：推荐',
  `time` int(10) NOT NULL COMMENT '发布时间',
  `cateid` mediumint(9) NOT NULL COMMENT '所属栏目'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `title`, `keywords`, `desc`, `author`, `thumb`, `content`, `click`, `zan`, `rec`, `time`, `cateid`) VALUES
(22, 'ceshi', '', '', 'author', '', '<p>&nbsp;侧首</p>', 4, 0, 0, 1543391074, 1),
(23, '测试文章标题测试文章标题测试文章标题测试文章标题', '', '', '测试', '', '<p>测试文章</p>', 7, 0, 0, 1543401841, 1),
(24, '测试文章标题测试文章标题测试文章标题测试文章标题', '', '', 'author', '', '<p>测试文章标题测试文章标题测试文章标题测试文章标题测试文章标题测试文章标题测试文章标题测试文章标题测试文章标题测试文章标题测试文章标题测试文章标题测试文章标题测试文章标题测试文章标题测试文章标题测试文章标题测试文章标题测试文章标题测试文章标题测试文章标题测试文章标题测试文章标题测试文章标题测试文章标题测试文章标题测试文章标题测试文章标题测试文章标题测试文章标题测试文章标题测试文章标题</p>', 0, 0, 0, 1543402262, 2),
(25, '测试文章标题测试文章标题测试文章标题测试文章标题', '', '', 'author', '/center/public/uploads/20181128/6ae70775c223da2b607bd047f05fa3f1.jpg', '<p style=\"box-sizing: border-box; margin-top: 10px; margin-bottom: 10px; position: relative; color: rgb(62, 71, 76); font-family: &quot;Open Sans&quot;, &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(242, 244, 249);\">12月6日下午15：30，江苏省团省委书记王伟、副书记司勇一行莅临创客梦工场参观指导。我校党委书记芮鸿岩、副校长崔益虎及校团委、教学事务部等相关职能部门负责同志陪同参观。</p><p style=\"box-sizing: border-box; margin-top: 10px; margin-bottom: 10px; position: relative; color: rgb(62, 71, 76); font-family: &quot;Open Sans&quot;, &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(242, 244, 249);\">&nbsp;&nbsp;&nbsp; 创客梦工场学生管理员朱敏带领大家参观了节能减排、虚拟仿真、工业设计、智能制造、智能控制、新媒体与文化创意等区域，每到一处，学生们纷纷向莅临参观领导介绍自己的研发作品和正在开展的创新活动。VR虚拟现实教学团队向大家介绍了VR在教学中实践的理念，模拟了临床解剖、细胞和病原体仿真；“南工匠心”团队向大家展示了激光雕刻机的原理并演示了激光雕刻机的使用，并赠送了5套刻有南工校训和校徽的书签作为纪念；四旋翼飞行器创新团队向参观人员展示了飞行器的定高控制，介绍了飞行器在室内采用超声波测距仪、室外采用气压传感器测反馈的气压值的原理。此外，化工设计、机械制造团队、VR虚拟现实教学团队、虚拟交通四个团队在创客交流会上进行PPT汇报，从项目介绍，项目创新、项目成果等方面进行全方位的展示。</p><p style=\"box-sizing: border-box; margin-top: 10px; margin-bottom: 10px; position: relative; color: rgb(62, 71, 76); font-family: &quot;Open Sans&quot;, &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(242, 244, 249);\">&nbsp;&nbsp;&nbsp; 参观期间，团省委书记王伟饶有兴致的体验了大学生创新作品地铁拉手自助式装置，并给与好评，他对创客梦工场校园文化、创新创业教育工作所取得的成绩给予了充分的肯定，认为这对于不断培养大学生的创新意识和创业精神，增强大学生的创新能力，以及形成良好的协同创新育人环境具有很大作用。</p><p style=\"box-sizing: border-box; margin-top: 10px; margin-bottom: 10px; position: relative; color: rgb(62, 71, 76); font-family: &quot;Open Sans&quot;, &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(242, 244, 249);\">&nbsp;&nbsp;&nbsp; 创客梦工场是我校开展创新创业教育和创新实践活动的重要场所，也是深入贯彻落实国家“大众创业，万众创新”精神的重要方式和重要体现。创客梦工场将以此次团省委领导调研考察为契机，自加压力，积极组织实施“创客百千万”工程，搭建跨专业、跨学科、跨领域的实现知识、信息、技术交融的实践平台，着力打造“有创意、能创新、善创业”的高素质复合型创新创业人才，为建设创新型国家提供源源不断的人才支撑。(教学事务部)</p><p><br/></p>', 5, 0, 1, 1543412971, 1),
(26, '文章测试文章测试文章测试文章测试', '', '', 'author', '/center/public/uploads/20181128/d7fa2fe65a87fd8f13cfcc92e0b50303.jpg', '<p><span style=\"color: rgb(151, 172, 195); font-family: &quot;Open Sans&quot;, &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 15px; background-color: rgb(39, 68, 114);\">南京工业大学创客梦工场是我校开展创新创业教育和创新实践活动的重要场所。秉持“开放、包容、协同”的理念，按照“一场多地”的建设思路，跨接国家大学科技园和江苏省大学生创业园两个创新创业基地，构建了大学生“创新意识、创新精神和创新能力”三位一体培养体系。创客梦工场紧扣国家发展战略，落实“大众创业，万众创新”精神，积极组织实施“创客百千万”工程，着力打造“有创意、能创新、善创业”的复合型人才，为建设创新型国家提供源源不断的人才支撑。</span></p>', 7, 0, 1, 1543415498, 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `title` char(100) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` char(80) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `title`, `status`, `rules`) VALUES
(5, '超级管理员', 1, '21');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_access`
--

CREATE TABLE `auth_group_access` (
  `uid` mediumint(8) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_group_access`
--

INSERT INTO `auth_group_access` (`uid`, `group_id`) VALUES
(30, 5);

-- --------------------------------------------------------

--
-- Table structure for table `auth_rule`
--

CREATE TABLE `auth_rule` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` char(80) NOT NULL DEFAULT '',
  `title` char(20) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `condition` char(100) NOT NULL DEFAULT '',
  `pid` mediumint(9) NOT NULL DEFAULT '0',
  `level` tinyint(1) NOT NULL DEFAULT '0',
  `sort` int(5) NOT NULL DEFAULT '50'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_rule`
--

INSERT INTO `auth_rule` (`id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `level`, `sort`) VALUES
(21, 'admin', '超级管理员', 1, 1, '', 0, 0, 50);

-- --------------------------------------------------------

--
-- Table structure for table `cate`
--

CREATE TABLE `cate` (
  `id` mediumint(9) NOT NULL COMMENT '栏目id',
  `catename` varchar(30) NOT NULL COMMENT '栏目名称',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '栏目类型：1:文章列表栏目 2:单页栏目3：图片列表',
  `keywords` varchar(255) NOT NULL COMMENT '栏目关键词',
  `desc` varchar(255) NOT NULL COMMENT '栏目描述',
  `content` text NOT NULL COMMENT '栏目内容',
  `rec_index` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:不推荐 1：推荐',
  `rec_bottom` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:不推荐 1：推荐',
  `pid` mediumint(9) NOT NULL DEFAULT '0' COMMENT '上级栏目id',
  `sort` mediumint(9) NOT NULL DEFAULT '50' COMMENT '排序',
  `url` varchar(255) NOT NULL COMMENT '其它系统链接'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cate`
--

INSERT INTO `cate` (`id`, `catename`, `type`, `keywords`, `desc`, `content`, `rec_index`, `rec_bottom`, `pid`, `sort`, `url`) VALUES
(37, '中心介绍', 1, '', '', '<p style=\"text-align: center;\"><video class=\"edui-upload-video  vjs-default-skin video-js\" controls=\"\" preload=\"none\" width=\"690\" height=\"383\" src=\"/ueditor/php/upload/video/20181128/1543389617829267.mp4\" data-setup=\"{}\"></video></p>', 0, 0, 0, 50, ''),
(38, '申报专栏', 1, '', '', '<p style=\"text-align: center\"><img src=\"/ueditor/php/upload/image/20181128/1543389821702757.png\" title=\"1543389821702757.png\" alt=\"屏幕快照 2018-11-28 12.54.53.png\" width=\"576\" height=\"341\"/></p><p><br/></p>', 0, 0, 0, 50, ''),
(39, '规章制度', 1, '', '', '<p>规章制度规章制度规章制度规章制度规章制度规章制度规章制度规章制度规章制度</p><p><br/></p><div style=\"position: absolute; width: 1px; height: 1px; overflow: hidden; left: -1000px; white-space: nowrap; top: 35px;\"><span style=\"white-space: normal;\">规章制度</span><br/></div>', 0, 0, 0, 50, ''),
(40, '实施方案', 1, '', '', '<p>培养方案培养方案培养方案培养方案培养方案培养方案培养方案培养方案培养方案培养方案培养方案</p><p>培养方案培养方案培养方案培养方案培养方案培养方案培养方案</p><p>培养方案培养方案培养方案培养方案培养方案培养方案培养方案培养方案培养方案</p>', 0, 0, 0, 50, ''),
(41, '大创项目', 1, '', '', '<p>培养方案培养方案培养方案</p>', 0, 0, 0, 50, ''),
(42, '双创课程', 1, '', '', '<p>双创课程</p>', 0, 0, 0, 50, ''),
(43, '成果展示', 1, '', '', '<p>成果展示<br/></p>', 0, 0, 0, 50, ''),
(44, '联系我们', 1, '', '', '<p>email：</p><p>phone：</p>', 0, 0, 0, 50, '');

-- --------------------------------------------------------

--
-- Table structure for table `conf`
--

CREATE TABLE `conf` (
  `id` mediumint(9) NOT NULL COMMENT '配置项id',
  `cnname` varchar(50) NOT NULL COMMENT '配置中文名称',
  `enname` varchar(50) NOT NULL COMMENT '英文名称',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '配置类型 1：单行文本框 2：多行文本 3：单选按钮 4：复选按钮 5：下拉菜单',
  `value` varchar(255) NOT NULL COMMENT '配置值',
  `values` varchar(255) NOT NULL COMMENT '配置可选值',
  `sort` smallint(6) NOT NULL DEFAULT '50' COMMENT '配置项排序'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE `file` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `thumb` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `file`
--

INSERT INTO `file` (`id`, `title`, `thumb`) VALUES
(4, '立项申报材料', '/center/public/uploads/20181128/87567ba79c0ea00f76c6dac0433fefa9.pdf'),
(5, '创新创业实践教育中心介绍', '/center/public/uploads/20181128/75a2f29791c263aa290c0c88ea734992.pdf'),
(6, '相关政策措施和规章制度', '/center/public/uploads/20181128/222d4ca73f684e26f13c06bb06260a67.pdf'),
(7, '创新创业培养方案', '/center/public/uploads/20181128/e057c7c5e5692831a57ced575b0cf06a.pdf'),
(8, '创新创业训练项目', '/center/public/uploads/20181128/f33bdd44fb4814a2291bcbbb17ad750f.pdf'),
(9, '创新创业课程信息', '/center/public/uploads/20181128/ee473c7f46f35f37f7d55574e3bdaca9.pdf'),
(10, '创新创业成果展示', '/center/public/uploads/20181128/2c196aefd43f0816f22cd728656f166f.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `link`
--

CREATE TABLE `link` (
  `id` mediumint(9) NOT NULL COMMENT '链接id',
  `title` varchar(60) NOT NULL COMMENT '链接标题',
  `desc` varchar(255) NOT NULL COMMENT '链接描述',
  `url` varchar(160) NOT NULL COMMENT '链接地址',
  `sort` mediumint(9) NOT NULL DEFAULT '50' COMMENT '链接排序'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `link`
--

INSERT INTO `link` (`id`, `title`, `desc`, `url`, `sort`) VALUES
(12, '创客梦工场', '创客梦工场', 'maker.njtech.edu.cn', 50);

-- --------------------------------------------------------

--
-- Table structure for table `zan`
--

CREATE TABLE `zan` (
  `id` mediumint(9) NOT NULL,
  `ip` char(20) NOT NULL,
  `artid` mediumint(9) NOT NULL,
  `num` mediumint(9) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_group_access`
--
ALTER TABLE `auth_group_access`
  ADD UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  ADD KEY `uid` (`uid`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `cate`
--
ALTER TABLE `cate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conf`
--
ALTER TABLE `conf`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `link`
--
ALTER TABLE `link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zan`
--
ALTER TABLE `zan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT COMMENT '管理员id', AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT COMMENT '文章id', AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `auth_rule`
--
ALTER TABLE `auth_rule`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `cate`
--
ALTER TABLE `cate`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT COMMENT '栏目id', AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `conf`
--
ALTER TABLE `conf`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT COMMENT '配置项id', AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `link`
--
ALTER TABLE `link`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT COMMENT '链接id', AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `zan`
--
ALTER TABLE `zan`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
