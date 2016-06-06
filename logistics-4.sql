-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2016-06-06 16:10:39
-- 服务器版本： 10.1.8-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `logistics`
--
CREATE DATABASE IF NOT EXISTS `logistics` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `logistics`;

-- --------------------------------------------------------

--
-- 表的结构 `accept`
--

CREATE TABLE `accept` (
  `a_id` varchar(20) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `order_num` varchar(30) NOT NULL,
  `accept_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `start_distrubution` timestamp NULL DEFAULT NULL,
  `end_distrubution` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `accept`
--

INSERT INTO `accept` (`a_id`, `user_name`, `order_num`, `accept_time`, `status`, `start_distrubution`, `end_distrubution`) VALUES
('TT0016032600001', 'lida', '201603081216461174', '2016-03-26 11:58:07', 3, NULL, NULL),
('TT0016032600002', 'lida', '201603081222589125', '2016-03-26 11:58:17', 3, NULL, NULL),
('TT0016032600003', 'lida', '201603171040269348', '2016-03-26 12:02:01', 3, NULL, NULL),
('TT0016032600004', 'lida', '201603081218187007', '2016-03-26 12:04:17', 3, NULL, NULL),
('TT0016032600005', 'lida', '201603081216461174', '2016-03-26 12:05:49', 3, NULL, NULL),
('TT0016032600006', 'lida', '201603091427311346', '2016-03-26 12:35:23', 3, NULL, NULL),
('TT0016032600007', 'lida', '201603081218357308', '2016-03-26 12:35:31', 3, NULL, NULL),
('TT0016042000001', 'lida ', '201603091427311346', '2016-04-20 13:22:59', 0, NULL, NULL),
('TT0016042300001', 'lida ', '201603081218357308', '2016-04-23 08:28:30', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `carstatus`
--

CREATE TABLE `carstatus` (
  `driver_name` varchar(30) NOT NULL,
  `T_range` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `carstatus`
--

INSERT INTO `carstatus` (`driver_name`, `T_range`) VALUES
('李达', 21);

-- --------------------------------------------------------

--
-- 表的结构 `driver`
--

CREATE TABLE `driver` (
  `user_name` varchar(20) NOT NULL,
  `true_name` char(30) DEFAULT NULL,
  `phone_num` char(11) DEFAULT NULL,
  `e_mail` varchar(20) DEFAULT NULL,
  `d_pwd` char(16) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `driver`
--

INSERT INTO `driver` (`user_name`, `true_name`, `phone_num`, `e_mail`, `d_pwd`) VALUES
('zhangqiang', '张强', '13935871212', '13935871212', '11'),
('songxiaojun', '孙晓军', '13934056421', '13934056421@163.com', '11'),
('kongqingfei', '孔庆飞', '13633421112', '13633421112@126.com', '11'),
('liumingming', '刘明明', '13523218723', '13523218723@126.com', '11'),
('lida', '李达', '13822316565', '13822316565@163.com', '11'),
('liguanhua', '李光华', '13676546565', '13676546565@163.com', '11'),
('lizhenhai', '李振海', '13477653434', '13477653434@126.com', '11'),
('wangxiaosong', '王晓松', '13923877676', '13923877676@126.com', '11'),
('zhangyong', '张勇', '13665287656', '13665287656@126.com', '11');

-- --------------------------------------------------------

--
-- 表的结构 `logistics_admin`
--

CREATE TABLE `logistics_admin` (
  `user_id` varchar(20) NOT NULL,
  `l_pwd` char(16) DEFAULT NULL,
  `name` char(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `logistics_admin`
--

INSERT INTO `logistics_admin` (`user_id`, `l_pwd`, `name`) VALUES
('zhangzhilin', '11', '张轾林'),
('caizhili', '11', '蔡智立'),
('dengli', '11', '邓丽');

-- --------------------------------------------------------

--
-- 表的结构 `order_form`
--

CREATE TABLE `order_form` (
  `order_num` varchar(30) NOT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `no` tinyint(4) DEFAULT NULL,
  `user_id` varchar(20) DEFAULT NULL,
  `destination_station` varchar(100) DEFAULT NULL,
  `starting_station` varchar(100) DEFAULT NULL,
  `time_range` tinyint(4) DEFAULT NULL,
  `T_range` tinyint(4) DEFAULT NULL,
  `deliverd_quantity` int(11) DEFAULT NULL,
  `sender` varchar(100) DEFAULT NULL,
  `remark` varchar(320) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `content` varchar(2000) DEFAULT NULL,
  `phone_num` char(15) DEFAULT NULL,
  `contacts` char(20) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `order_form`
--

INSERT INTO `order_form` (`order_num`, `createTime`, `no`, `user_id`, `destination_station`, `starting_station`, `time_range`, `T_range`, `deliverd_quantity`, `sender`, `remark`, `title`, `content`, `phone_num`, `contacts`, `status`) VALUES
('201603081222589125', '2016-03-14 13:41:55', 6, 'zhangzhilin', '大连', '北京', 2, 1, 8, '大连东软信息学院后勤部', '这批药要怎么样怎么样怎么样怎么样怎么样怎么样怎么样怎么样怎么样', '急送物品', '医药若干', '13342232190', '蔡经理', 0),
('201603081216461174', '2016-03-14 13:41:55', 4, 'caizhili', '上海', '广州', 7, 3, 4, '大连国际安利集团', '我是备注', '我是抬头', '我是内容', '13342232199', '蔡总', 0),
('201603081217145370', '2016-03-14 13:41:55', 2, 'caizhili', '深圳', '汕头', 3, 3, 6, '大连东软信息学院医药部', NULL, '我是标题', '我是内容', '13342232198', '蔡副总', 0),
('201603081217559163', '2016-02-01 13:41:55', 1, 'dengli', '锦州', '大连', 4, 2, 6, '中国智研中心医药部', NULL, '大量疫苗急需运送', '我是内容', '13342232188', '蔡大总', 0),
('201603081218187007', '2016-03-14 13:41:55', 1, 'dengli', '吉林', '盘锦', 6, 1, 8, '我是发货商家1', '我是备注1', '我是抬头，title的抬，title的头1', '我是content的content1', '13342232177', '蔡大总', 0),
('201603081218357308', '2016-03-14 13:41:58', 3, 'dengli', '吉林', '哈尔滨', 5, 4, 8, '大连安利集团医药有限公司', '我是mark', '我是titleeeeeeeeeeeeeeeeeeeeeeee', '我是内容啊', '13342232199', '李忠', 1),
('201603091427311346', '2016-03-14 13:41:59', 1, 'caizhili', '葫芦岛00', '大连甘井子区软件园路8号00', 2, 2, 3, '我是商家的商家', 'mark', '我是抬头', '我是内容', '13342232190', '联系人', 1),
('201603171040269348', '2016-03-17 09:41:18', 1, 'caizhili', '大连', '上海莆田区', 4, 1, 8, '我是送的人啊', '我是长长的备注注注注注注注注注注注注注注注注注注注注的备注注注注注注注注注注注注注注注注注注注注', '头头头头头头头头头头', '内容内容内容内容内容内容内容内容内容内容', '13342232199', '赵云', 0);

-- --------------------------------------------------------

--
-- 表的结构 `vaccine_type`
--

CREATE TABLE `vaccine_type` (
  `no` tinyint(4) NOT NULL DEFAULT '0',
  `type_name` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `vaccine_type`
--

INSERT INTO `vaccine_type` (`no`, `type_name`) VALUES
(1, '流感疫苗'),
(2, '新生儿必打疫苗'),
(3, '肺炎疫苗'),
(4, '病理用品'),
(5, '狂犬疫苗'),
(6, '普通疫苗');

-- --------------------------------------------------------

--
-- 表的结构 `vehicle`
--

CREATE TABLE `vehicle` (
  `car_id` char(10) NOT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  `carload` tinyint(4) DEFAULT NULL,
  `car_type` tinyint(4) DEFAULT NULL,
  `car_temperature` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `vehicle`
--

INSERT INTO `vehicle` (`car_id`, `user_name`, `carload`, `car_type`, `car_temperature`) VALUES
('辽A·76651', 'zhangqiang', 2, 4, 2),
('辽B·10225', 'songxiaojun', 1, 1, 1),
('辽A·L0212', 'kongqingfei', 1, 1, 1),
('晋K·L0112', 'liumingming', 5, 1, 8),
('辽A·C2773', 'lida', 5, 2, 1),
('晋K·P7665', 'liguanhua', 1, 1, 0),
('辽A·X5321', 'lizhenhai', 5, 1, 4),
('辽B·W7665', 'wangxiaosong', 2, 4, 3),
('晋K·32111', 'zhangyong', 4, 1, 2),
('辽B·10221', 't2', 1, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accept`
--
ALTER TABLE `accept`
  ADD UNIQUE KEY `a_id` (`a_id`),
  ADD KEY `FK_accept` (`order_num`),
  ADD KEY `FK_accept2` (`user_name`);

--
-- Indexes for table `carstatus`
--
ALTER TABLE `carstatus`
  ADD PRIMARY KEY (`driver_name`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`user_name`);

--
-- Indexes for table `logistics_admin`
--
ALTER TABLE `logistics_admin`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `order_form`
--
ALTER TABLE `order_form`
  ADD PRIMARY KEY (`order_num`),
  ADD KEY `FK_release` (`user_id`),
  ADD KEY `FK_belong` (`no`);

--
-- Indexes for table `vaccine_type`
--
ALTER TABLE `vaccine_type`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`car_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
