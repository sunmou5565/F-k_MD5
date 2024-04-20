-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主机： 192.168.1.68
-- 生成日期： 2024-04-20 12:03:32
-- 服务器版本： 8.2.0
-- PHP 版本： 8.2.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `fmd`
--
CREATE DATABASE IF NOT EXISTS `fmd` DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci;
USE `fmd`;

-- --------------------------------------------------------

--
-- 表的结构 `tb_fd`
--

CREATE TABLE `tb_fd` (
  `id` int NOT NULL,
  `Md` text,
  `Tex` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- 转存表中的数据 `tb_fd`
--

INSERT INTO `tb_fd` (`id`, `Md`, `Tex`) VALUES
(1, 'E10ADC3949BA59ABBE56E057F20F883E', '123456');


--
-- 转储表的索引
--

--
-- 表的索引 `tb_fd`
--
ALTER TABLE `tb_fd`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `tb_fd`
--
ALTER TABLE `tb_fd`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5212868;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
