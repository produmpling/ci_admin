-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- 主机: 127.0.0.1
-- 生成日期: 2011 年 12 月 05 日 16:03
-- 服务器版本: 5.5.13
-- PHP 版本: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `qiugonglue`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `uid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(24) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `group` tinyint(3) NOT NULL DEFAULT '0',
  `logintime` int(10) NOT NULL DEFAULT '0',
  `loginip` varchar(20) NOT NULL DEFAULT '',
  `logincount` int(10) unsigned NOT NULL DEFAULT '0',
  `token` varchar(64) NOT NULL,
  `activated` int(10) NOT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `adminname` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `admin`
--

INSERT INTO `admin` (`uid`, `username`, `password`, `email`, `group`, `logintime`, `loginip`, `logincount`, `token`, `activated`) VALUES
(1, 'cgeek', '73e317b7e931dcda0da98e26de555196', 'cgeek.share@gmail.com', 1, 1312196787, '127.0.0.1', 174, '', 1323071991),
(2, 'admin', '0192023a7bbd73250516f069df18b500', 'admin@locoy.com', 1, 1250401024, '10.16.12.38', 6, '', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
