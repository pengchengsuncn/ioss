-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2014 年 05 月 24 日 09:56
-- 服务器版本: 5.5.20
-- PHP 版本: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `ioss`
--
CREATE DATABASE `ioss` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `ioss`;

-- --------------------------------------------------------

--
-- 表的结构 `goods`
--

CREATE TABLE IF NOT EXISTS `goods` (
  `gods_id` int(11) NOT NULL AUTO_INCREMENT,
  `bar_code` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `gods_name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `gods_type` int(11) DEFAULT NULL,
  `gods_price` float(6,2) DEFAULT NULL,
  `gods_amount` int(11) DEFAULT NULL,
  `gods_vendor` int(11) DEFAULT NULL,
  `in_operator` int(11) DEFAULT NULL,
  `in_date` date DEFAULT NULL,
  `sell_flag` char(1) COLLATE utf8_bin DEFAULT NULL,
  `gods_desc` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`gods_id`),
  UNIQUE KEY `bar_code` (`bar_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `goods`
--

INSERT INTO `goods` (`gods_id`, `bar_code`, `gods_name`, `gods_type`, `gods_price`, `gods_amount`, `gods_vendor`, `in_operator`, `in_date`, `sell_flag`, `gods_desc`) VALUES
(1, '78945514', '小瓶和其正', 2, 2.50, 123, 3, 1, '2014-05-23', 'Y', '清热解渴，你值得 拥有！'),
(2, '5425631', '唐僧超级辣条', 1, 1.03, 25, 1, 1, '2014-05-23', 'Y', '很好吃的哦'),
(3, '01234567', '田字格作业本', 5, 1.20, 36, 3, 1, '2014-05-23', 'Y', '小学生用的哦');

-- --------------------------------------------------------

--
-- 表的结构 `goods_type`
--

CREATE TABLE IF NOT EXISTS `goods_type` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(20) COLLATE utf8_bin NOT NULL,
  `type_desc` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`type_id`),
  UNIQUE KEY `type_name` (`type_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `goods_type`
--

INSERT INTO `goods_type` (`type_id`, `type_name`, `type_desc`) VALUES
(1, '小食品', '这里的小食品好好吃啊'),
(2, '饮料类', '你渴了没有啊，来喝点吧'),
(4, '儿童玩具', '好好玩玩吧，你是最棒的'),
(5, '图书类型', '知识修养，就看你了'),
(6, '家用电气额', '大家电、小家电，这里都有销售。');

-- --------------------------------------------------------

--
-- 表的结构 `supplier`
--

CREATE TABLE IF NOT EXISTS `supplier` (
  `sup_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '供应商编号',
  `sup_name` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '未知供应商' COMMENT '供应商姓名',
  `sup_tel` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `sup_addr` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `sup_desc` varchar(300) COLLATE utf8_bin NOT NULL DEFAULT '暂无描述信息',
  `create_date` date NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`sup_id`),
  UNIQUE KEY `sup_name` (`sup_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='供应商表' AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `supplier`
--

INSERT INTO `supplier` (`sup_id`, `sup_name`, `sup_tel`, `sup_addr`, `sup_desc`, `create_date`) VALUES
(2, '新奇食品', '13655458964', '深圳市福田区酒仙桥28号', '送货速度挺快的!', '2014-05-24'),
(3, '上好佳食品', '15895412568', '广州市马驹桥文化路3号', '供货价格便宜!', '2014-05-24');

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `usr_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `usr_name` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '无名氏' COMMENT '用户姓名',
  `sign_pwd` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '123456' COMMENT '系统登录密码',
  `usr_role` varchar(3) COLLATE utf8_bin NOT NULL DEFAULT 'emp' COMMENT '用户角色',
  `create_date` date NOT NULL COMMENT '创建日期',
  PRIMARY KEY (`usr_id`),
  UNIQUE KEY `usr_name` (`usr_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户信息表' AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`usr_id`, `usr_name`, `sign_pwd`, `usr_role`, `create_date`) VALUES
(1, '海亮王', '123', 'adm', '2014-05-18'),
(2, '张三丰', '123', 'usr', '2014-05-23'),
(3, '李四', '1234', 'usr', '2014-05-23');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
