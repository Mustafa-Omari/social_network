-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2021 at 06:53 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social_network`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_body` text NOT NULL,
  `posted_by` varchar(60) NOT NULL,
  `posted_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `removed` varchar(3) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_body`, `posted_by`, `posted_to`, `date_added`, `removed`, `post_id`) VALUES
(1, 'sd', 'Mustafa_Omari_1', 'Omar_Omari', '2021-06-11 05:20:54', 'no', 5),
(2, 'oki bro ', 'Mustafa_Omari_1', 'Omar_Omari', '2021-06-11 05:21:43', 'no', 5),
(3, 'oki oki ', 'Mustafa_Omari_1', 'Mustafa_Omari_1', '2021-06-11 05:22:24', 'no', 4),
(4, 'oki micky', 'Mustafa_Omari_1', 'Micky_Mouse', '2021-06-11 05:22:30', 'no', 2),
(5, 'i love you to bro ', 'Mustafa_Omari_1', 'Omar_Omari', '2021-06-11 05:23:51', 'no', 5),
(6, 'hhello ', 'Mustafa_Omari_1', 'Mustafa_Omari_1', '2021-06-11 05:31:20', 'no', 4),
(7, 'nice first post \r\n', 'Mustafa_Omari_1', 'Micky_Mouse', '2021-06-11 05:38:48', 'no', 1),
(8, 'never mind', 'Mustafa_Omari_1', 'Mustafa_Omari_1', '2021-06-11 06:25:11', 'no', 4),
(9, 'oki baby  ', 'Mustafa_Omari_1', 'Micky_Mouse', '2021-06-12 11:17:53', 'no', 2),
(10, 'love you much ', 'Mustafa_Omari_1', 'Omar_Omari', '2021-06-15 17:06:19', 'no', 42),
(11, 'asdasd', 'Mustafa_Omari_1', 'Omar_Omari', '2021-06-20 13:35:39', 'no', 5),
(12, 'hello', 'Mustafa_Omari_1', 'Mrr_Ben', '2021-06-24 13:41:04', 'no', 52),
(13, 'hii', 'Mustafa_Omari_1', 'Mrr_Ben', '2021-06-24 13:41:40', 'no', 52),
(14, 'sdasdas', 'Omar_Omari', 'Omar_Omari', '2021-06-25 11:32:39', 'no', 42),
(15, 'sdasdas', 'Omar_Omari', 'Omar_Omari', '2021-06-25 11:32:39', 'no', 42),
(16, 'as', 'Omar_Omari', 'Mrr_Ben', '2021-06-25 11:33:02', 'no', 52),
(17, 'ssss', 'Omar_Omari', 'Mrr_Ben', '2021-06-25 11:33:09', 'no', 52),
(18, 'nice', 'Omar_Omari', 'Micky_Mouse', '2021-06-25 11:33:21', 'no', 2),
(19, 'LOL!!', 'Mustafa_Omari_1', 'Omar_Omari', '2021-06-25 12:11:17', 'no', 55);

-- --------------------------------------------------------

--
-- Table structure for table `friend_requests`
--

CREATE TABLE `friend_requests` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `friend_requests`
--

INSERT INTO `friend_requests` (`id`, `user_to`, `user_from`) VALUES
(11, 'mrr_ben', 'Mrr_Ben'),
(12, 'Mustafa_Omari_1', 'Hommer_Simpson'),
(14, 'Hommer_Simpson', 'Bart_Simpson'),
(15, 'Mustafa_Omari_1', 'Naroto_Naroto'),
(16, 'Mustafa_Omari_1', 'Minions_Minions'),
(18, 'Bart_Simpson', 'Omar_Omari'),
(19, 'Naroto_Naroto', 'Omar_Omari'),
(20, 'Hommer_Simpson', 'Omar_Omari'),
(21, 'Mrr_Ben', 'Omar_Omari'),
(22, 'Micky_Mouse', 'Omar_Omari'),
(23, 'Minions_Minions', 'Omar_Omari');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `username`, `post_id`) VALUES
(6, 'Mustafa_Omari_1', 28),
(9, 'Mustafa_Omari_1', 4),
(10, 'Mustafa_Omari_1', 48),
(15, 'Mustafa_Omari_1', 52),
(16, 'Mustafa_Omari_1', 2),
(17, 'Mustafa_Omari_1', 50),
(18, 'Mustafa_Omari_1', 5),
(19, 'Omar_Omari', 54),
(20, 'Omar_Omari', 53),
(21, 'Omar_Omari', 47),
(22, 'Mustafa_Omari_1', 55),
(23, 'Omar_Omari', 71),
(24, 'Mustafa_Omari_1', 77),
(25, 'Omar_Omari', 78);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `body` text NOT NULL,
  `date` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_to`, `user_from`, `body`, `date`, `opened`, `viewed`, `deleted`) VALUES
(9, 'Mustafa_Omari_1', 'Omar_Omari', 'Hey Bro ', '2021-06-21 16:26:23', 'yes', 'yes', 'no'),
(10, 'Mustafa_Omari_1', 'Omar_Omari', 'I will see you tomorrow ', '2021-06-21 16:26:42', 'yes', 'yes', 'no'),
(11, 'Mustafa_Omari_1', 'Omar_Omari', 'you are bust ? ', '2021-06-21 16:26:49', 'yes', 'yes', 'no'),
(12, 'Mustafa_Omari_1', 'Omar_Omari', 'BOO!', '2021-06-21 16:26:53', 'yes', 'yes', 'no'),
(13, 'Omar_Omari', 'Mustafa_Omari_1', 'Oki bro i am exited  to see you bro  <3', '2021-06-21 16:28:15', 'yes', 'yes', 'no'),
(14, 'Omar_Omari', 'Mustafa_Omari_1', 'i waiting you ', '2021-06-21 16:28:29', 'yes', 'yes', 'no'),
(15, 'Omar_Omari', 'Mustafa_Omari_1', 'lol \r\n', '2021-06-21 18:35:03', 'yes', 'yes', 'no'),
(16, 'Omar_Omari', 'Mustafa_Omari_1', ' im in the place  ', '2021-06-21 18:35:44', 'yes', 'yes', 'no'),
(17, 'Omar_Omari', 'Mustafa_Omari_1', 'where are you ', '2021-06-21 18:35:49', 'yes', 'yes', 'no'),
(18, 'Mustafa_Omari_1', 'Omar_Omari', 'im in the place too ', '2021-06-21 18:36:46', 'yes', 'yes', 'no'),
(19, 'Mustafa_Omari_1', 'Omar_Omari', 'and i dont see you bro ', '2021-06-21 18:36:58', 'yes', 'yes', 'no'),
(20, 'Mustafa_Omari_1', 'Omar_Omari', 'where are you  !!! ', '2021-06-21 18:37:15', 'yes', 'yes', 'no'),
(21, 'Mustafa_Omari_1', 'Omar_Omari', 'im near the Mcdonalds', '2021-06-21 18:37:35', 'yes', 'yes', 'no'),
(22, 'Omar_Omari', 'Mustafa_Omari_1', 'you can watch me in the TV ', '2021-06-21 18:38:11', 'yes', 'yes', 'no'),
(23, 'Omar_Omari', 'Mustafa_Omari_1', 'hahahahah', '2021-06-21 18:38:20', 'yes', 'yes', 'no'),
(24, 'Omar_Omari', 'Mustafa_Omari_1', 'Just kidding lol ', '2021-06-21 18:38:37', 'yes', 'yes', 'no'),
(25, 'Omar_Omari', 'Mustafa_Omari_1', ':)', '2021-06-21 18:38:47', 'yes', 'yes', 'no'),
(26, 'Omar_Omari', 'Mustafa_Omari_1', 'aaaaaaa', '2021-06-21 18:39:35', 'yes', 'yes', 'no'),
(27, 'Omar_Omari', 'Mustafa_Omari_1', 'lol', '2021-06-21 18:42:46', 'yes', 'yes', 'no'),
(28, 'Omar_Omari', 'Mustafa_Omari_1', 'lol', '2021-06-21 20:06:17', 'yes', 'yes', 'no'),
(29, 'Micky_Mouse', 'Mustafa_Omari_1', 'Hey Micky \r\n', '2021-06-21 20:22:37', 'yes', 'no', 'no'),
(30, 'Mrr_Ben', 'Mustafa_Omari_1', 'Hey Mr Bin ', '2021-06-21 20:29:38', 'yes', 'no', 'no'),
(31, 'Omar_Omari', 'Mustafa_Omari_1', 'oki oki ', '2021-06-21 20:31:12', 'yes', 'yes', 'no'),
(32, 'Omar_Omari', 'Mustafa_Omari_1', 'sssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss\r\n', '2021-06-22 04:08:03', 'yes', 'yes', 'no'),
(33, 'Omar_Omari', 'Mustafa_Omari_1', 'sssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss\r\n', '2021-06-22 04:08:54', 'yes', 'yes', 'no'),
(34, 'Omar_Omari', 'Mustafa_Omari_1', 'sssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss\r\n', '2021-06-22 04:14:37', 'yes', 'yes', 'no'),
(35, 'Omar_Omari', 'Mustafa_Omari_1', '00\r\n', '2021-06-22 04:17:17', 'yes', 'yes', 'no'),
(36, 'Micky_Mouse', 'Mustafa_Omari_1', 'Hello Micky!! How are you ?  ', '2021-06-22 04:19:02', 'yes', 'no', 'no'),
(37, 'Mustafa_Omari_1', 'Micky_Mouse', 'hey!', '2021-06-22 04:20:22', 'yes', 'yes', 'no'),
(38, 'Micky_Mouse', 'Mustafa_Omari', 'Hello Micky ', '2021-06-22 07:44:44', 'no', 'no', 'no'),
(39, 'Mustafa_Omari', 'Mustafa_Omari', 'a', '2021-06-22 07:48:03', 'yes', 'no', 'no'),
(40, 'Micky_Mouse', 'Mustafa_Omari', 'do you mind me  ? ', '2021-06-22 07:48:27', 'no', 'no', 'no'),
(41, 'Mustafa_Omari_1', 'Mrr_Ben', 'hello ', '2021-06-22 07:57:51', 'yes', 'yes', 'no'),
(42, 'Micky_Mouse', 'Mrr_Ben', 'hello ', '2021-06-22 07:58:29', 'no', 'no', 'no'),
(43, 'Omar_Omari', 'Mustafa_Omari_1', 'hello', '2021-06-22 08:58:44', 'yes', 'yes', 'no'),
(44, 'Omar_Omari', 'Mustafa_Omari_1', 'hi there ', '2021-06-22 09:07:59', 'yes', 'yes', 'no'),
(45, 'Omar_Omari', 'Mustafa_Omari_1', 'Wow!!', '2021-06-22 09:09:21', 'yes', 'yes', 'no'),
(46, 'Omar_Omari', 'Mustafa_Omari_1', 'WOWOWOW!!!!', '2021-06-22 09:09:51', 'yes', 'yes', 'no'),
(47, 'Omar_Omari', 'Mustafa_Omari_1', 'I like it ', '2021-06-22 09:10:19', 'yes', 'yes', 'no'),
(48, 'Omar_Omari', 'Mustafa_Omari_1', 'LOL LOL LOL LOL LOL :LOL LOL LOL LOL LOL ::::: LOL LOL LOL LOL LOL LOL ::::: LOL LOL LOL LOL LOL LOL :::::: LOL LOL LOL LOL ::: ', '2021-06-22 09:21:31', 'yes', 'yes', 'no'),
(49, 'Omar_Omari', 'Mustafa_Omari_1', 'LOL \r\n\r\n\r\nLOL \r\n\r\nLOL \r\n\r\nLOL ', '2021-06-22 09:21:46', 'yes', 'yes', 'no'),
(50, 'Mustafa_Omari_1', 'Hommer_Simpson', 'hello ', '2021-06-23 13:35:23', 'no', 'yes', 'no'),
(51, 'Mustafa_Omari_1', 'Bart_Simpson', 'Hello', '2021-06-23 13:37:56', 'no', 'yes', 'no'),
(52, 'Mustafa_Omari_1', 'Naroto_Naroto', 'hello', '2021-06-23 13:39:13', 'yes', 'yes', 'no'),
(53, 'Mustafa_Omari_1', 'Minions_Minions', 'hello', '2021-06-23 13:43:11', 'yes', 'yes', 'no'),
(54, 'Mustafa_Omari_1', 'Minions_Minions', 'heey ', '2021-06-23 15:00:26', 'yes', 'yes', 'no'),
(55, 'Mustafa_Omari_1', 'Naroto_Naroto', 'lol', '2021-06-25 14:30:43', 'yes', 'yes', 'no'),
(56, 'Naroto_Naroto', 'Naroto_Naroto', 'l\r\n', '2021-06-25 14:31:06', 'yes', 'no', 'no'),
(57, 'Naroto_Naroto', 'Omar_Omari', 'hello man ', '2021-06-29 17:21:59', 'no', 'no', 'no'),
(58, 'Naroto_Naroto', 'Omar_Omari', 'i want to fight you ', '2021-06-29 17:22:10', 'no', 'no', 'no'),
(59, 'Naroto_Naroto', 'Omar_Omari', 'in the morning', '2021-06-29 17:22:16', 'no', 'no', 'no'),
(60, 'Minions_Minions', 'Omar_Omari', 'are you stuped ? ', '2021-06-29 17:22:36', 'no', 'no', 'no'),
(61, 'Mrr_Ben', 'Omar_Omari', 'are you funny ? ', '2021-06-29 17:22:50', 'no', 'no', 'no'),
(62, 'Micky_Mouse', 'Omar_Omari', 'hello ', '2021-06-29 17:23:03', 'no', 'no', 'no'),
(63, 'Micky_Mouse', 'Omar_Omari', 'are you make the carton  for children ? ', '2021-06-29 17:23:19', 'no', 'no', 'no'),
(64, 'Hommer_Simpson', 'Omar_Omari', 'hello ', '2021-06-29 17:23:44', 'no', 'no', 'no'),
(65, 'Hommer_Simpson', 'Omar_Omari', 'how are you are son bart ? ', '2021-06-29 17:23:54', 'no', 'no', 'no'),
(66, 'Bart_Simpson', 'Omar_Omari', 'hello ', '2021-06-29 17:24:02', 'no', 'no', 'no'),
(67, 'Bart_Simpson', 'Omar_Omari', 'your father is Hommer Simpson ? ', '2021-06-29 17:24:22', 'no', 'no', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `link` varchar(100) NOT NULL,
  `datetime` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_to`, `user_from`, `message`, `link`, `datetime`, `opened`, `viewed`) VALUES
(2, 'Micky_Mouse', 'Mustafa_Omari_1', 'Mustafa Omari posted on your profile', 'post.php?id=54', '2021-06-24 13:40:16', 'no', 'no'),
(3, 'Mrr_Ben', 'Mustafa_Omari_1', 'Mustafa Omari liked your post', 'post.php?id=52', '2021-06-24 13:40:43', 'no', 'no'),
(4, 'Mrr_Ben', 'Mustafa_Omari_1', 'Mustafa Omari commented on your post', 'post.php?id=52', '2021-06-24 13:41:40', 'no', 'no'),
(5, 'Micky_Mouse', 'Mustafa_Omari_1', 'Mustafa Omari commented on your profile post', 'post.php?id=52', '2021-06-24 13:41:40', 'no', 'no'),
(6, 'Micky_Mouse', 'Mustafa_Omari_1', 'Mustafa Omari liked your post', 'post.php?id=2', '2021-06-24 13:42:11', 'no', 'no'),
(7, 'Omar_Omari', 'Mustafa_Omari_1', 'Mustafa Omari liked your post', 'post.php?id=5', '2021-06-24 13:43:12', 'yes', 'yes'),
(8, 'Mustafa_Omari_1', 'Omar_Omari', 'Omar Omari liked your post', 'post.php?id=54', '2021-06-24 13:45:05', 'yes', 'yes'),
(9, 'Mustafa_Omari_1', 'Omar_Omari', 'Omar Omari posted on your profile', 'post.php?id=55', '2021-06-24 13:45:52', 'no', 'yes'),
(10, 'Mustafa_Omari_1', 'Omar_Omari', 'Omar Omari liked your post', 'post.php?id=53', '2021-06-25 11:24:07', 'no', 'yes'),
(11, 'Mustafa_Omari_1', 'Omar_Omari', 'Omar Omari posted on your profile', 'post.php?id=56', '2021-06-25 11:24:28', 'yes', 'yes'),
(12, 'Mustafa_Omari_1', 'Omar_Omari', 'Omar Omari liked your post', 'post.php?id=47', '2021-06-25 11:24:34', 'no', 'yes'),
(13, 'Mustafa_Omari_1', 'Omar_Omari', 'Omar Omari commented on your profile post', 'post.php?id=42', '2021-06-25 11:32:39', 'yes', 'yes'),
(14, 'Mustafa_Omari_1', 'Omar_Omari', 'Omar Omari commented on your profile post', 'post.php?id=42', '2021-06-25 11:32:40', 'yes', 'yes'),
(15, 'Mrr_Ben', 'Omar_Omari', 'Omar Omari commented on your post', 'post.php?id=52', '2021-06-25 11:33:02', 'no', 'no'),
(16, 'Micky_Mouse', 'Omar_Omari', 'Omar Omari commented on your profile post', 'post.php?id=52', '2021-06-25 11:33:03', 'no', 'no'),
(17, 'Mustafa_Omari_1', 'Omar_Omari', 'Omar Omari commented on a post you commented on', 'post.php?id=52', '2021-06-25 11:33:03', 'yes', 'yes'),
(18, 'Mrr_Ben', 'Omar_Omari', 'Omar Omari commented on your post', 'post.php?id=52', '2021-06-25 11:33:09', 'no', 'no'),
(19, 'Micky_Mouse', 'Omar_Omari', 'Omar Omari commented on your profile post', 'post.php?id=52', '2021-06-25 11:33:09', 'no', 'no'),
(20, 'Mustafa_Omari_1', 'Omar_Omari', 'Omar Omari commented on a post you commented on', 'post.php?id=52', '2021-06-25 11:33:09', 'yes', 'yes'),
(21, 'Micky_Mouse', 'Omar_Omari', 'Omar Omari commented on your post', 'post.php?id=2', '2021-06-25 11:33:21', 'no', 'no'),
(22, 'Mustafa_Omari_1', 'Omar_Omari', 'Omar Omari commented on a post you commented on', 'post.php?id=2', '2021-06-25 11:33:21', 'no', 'yes'),
(23, 'Omar_Omari', 'Mustafa_Omari_1', 'Mustafa Omari liked your post', 'post.php?id=55', '2021-06-25 12:11:13', 'yes', 'yes'),
(24, 'Omar_Omari', 'Mustafa_Omari_1', 'Mustafa Omari commented on your post', 'post.php?id=55', '2021-06-25 12:11:17', 'yes', 'yes'),
(25, 'Mustafa_Omari_1', 'Bart_Simpson', 'Bart Simpson posted on your profile', 'post.php?id=57', '2021-06-25 12:32:26', 'no', 'yes'),
(26, 'Mustafa_Omari_1', 'Naroto_Naroto', 'Naroto Naroto posted on your profile', 'post.php?id=58', '2021-06-25 14:30:34', 'no', 'yes'),
(27, 'Omar_Omari', 'Mustafa_Omari_1', 'Mustafa Omari liked your post', 'post.php?id=77', '2021-06-30 12:07:21', 'yes', 'yes'),
(28, 'Naroto_Naroto', 'Mustafa_Omari_1', 'Mustafa Omari posted on your profile', 'post.php?id=80', '2021-06-30 16:16:16', 'no', 'no'),
(29, 'Mustafa_Omari_1', 'Omar_Omari', 'Omar Omari liked your post', 'post.php?id=78', '2021-07-04 13:59:10', 'no', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL,
  `added_by` varchar(60) NOT NULL,
  `user_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL,
  `likes` int(11) NOT NULL,
  `image` varchar(500) NOT NULL,
  `privacy` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `body`, `added_by`, `user_to`, `date_added`, `user_closed`, `deleted`, `likes`, `image`, `privacy`) VALUES
(1, 'This Is the first post ', 'Micky_Mouse', 'none', '2021-06-02 15:51:12', 'no', 'no', 0, '', 'no'),
(2, 'This is the second post :)', 'Micky_Mouse', 'none', '2021-06-02 15:51:57', 'no', 'no', 1, '', 'no'),
(3, 'oki bro ', 'Mustafa_Omari', 'none', '2021-06-03 16:00:43', 'no', 'no', 0, '', 'no'),
(4, 'hey every one ', 'Mustafa_Omari_1', 'none', '2021-06-03 16:02:06', 'no', 'no', 1, '', 'no'),
(5, 'I love all ', 'Omar_Omari', 'none', '2021-06-03 16:02:50', 'no', 'no', 1, '', 'yes'),
(6, 'Good Morining Baby\r\n', 'Mustafa_Omari', 'none', '2021-06-05 12:59:35', 'no', 'no', 0, '', 'no'),
(7, 'Hello Good Morning I miss you bro ', 'Mustafa_Omari', 'none', '2021-06-05 12:59:49', 'no', 'no', 0, '', 'no'),
(8, 'Good Evening i miss you more bro ', 'Mustafa_Omari', 'none', '2021-06-05 13:00:10', 'no', 'no', 0, '', 'no'),
(9, 'How Are YOu ', 'Mustafa_Omari', 'none', '2021-06-05 13:00:16', 'no', 'no', 0, '', 'no'),
(10, 'im fine and you ', 'Mustafa_Omari', 'none', '2021-06-05 13:00:21', 'no', 'no', 0, '', 'no'),
(11, 'im fine to ', 'Mustafa_Omari', 'none', '2021-06-05 13:00:25', 'no', 'no', 0, '', 'no'),
(12, 'i will see you after night  ', 'Mustafa_Omari', 'none', '2021-06-05 13:00:39', 'no', 'no', 0, '', 'no'),
(13, 'qedfasfas', 'Mustafa_Omari', 'none', '2021-06-05 14:05:31', 'no', 'no', 0, '', 'no'),
(14, 'sadfsf', 'Mustafa_Omari', 'none', '2021-06-05 15:08:50', 'no', 'no', 0, '', 'no'),
(15, 'asdsgdfgd', 'Mustafa_Omari', 'none', '2021-06-05 15:08:52', 'no', 'no', 0, '', 'no'),
(16, 'asgsdgsf', 'Mustafa_Omari', 'none', '2021-06-05 15:08:54', 'no', 'no', 0, '', 'no'),
(17, 'safsdgasdvf', 'Mustafa_Omari', 'none', '2021-06-05 15:08:55', 'no', 'no', 0, '', 'no'),
(28, 'Im Done ', 'Mustafa_Omari_1', 'none', '2021-06-12 16:44:17', 'no', 'yes', 1, '', 'no'),
(37, 'im not done', 'Mustafa_Omari_1', 'none', '2021-06-15 16:34:41', 'no', 'no', 0, '', 'no'),
(42, 'I love you bro!!', 'Omar_Omari', 'Mustafa_Omari_1', '2021-06-15 17:04:16', 'no', 'no', 0, '', 'no'),
(43, 'Love you bro ', 'Mustafa_Omari_1', 'Omar_Omari', '2021-06-16 09:52:00', 'no', 'no', 0, '', 'no'),
(44, 'Give me some dounats \r\n', 'Mustafa_Omari_1', 'none', '2021-06-16 11:04:25', 'no', 'no', 0, '', 'no'),
(47, 'Oki babyyyyyy!!!!!', 'Mustafa_Omari_1', 'none', '2021-06-16 11:05:37', 'no', 'no', 1, '', 'no'),
(48, 'sfasfadsfsa', 'Mustafa_Omari_1', 'none', '2021-06-20 13:35:17', 'no', 'yes', 1, '', 'no'),
(49, 'fdffds', 'Mustafa_Omari_1', 'Omar_Omari', '2021-06-21 15:28:34', 'no', 'yes', 0, '', 'no'),
(50, 'Hey Micky  i will see you tomorrow if you don\'t busy  \r\n ', 'Mustafa_Omari_1', 'Micky_Mouse', '2021-06-21 15:32:32', 'no', 'no', 1, '', 'no'),
(51, 'I am  Mr Bean ', 'Mrr_Ben', 'none', '2021-06-22 07:57:36', 'no', 'no', 0, '', 'no'),
(52, 'Hello ', 'Mrr_Ben', 'Micky_Mouse', '2021-06-22 07:58:41', 'no', 'no', 2, '', 'no'),
(53, 'Hey Mr Bean ', 'Mustafa_Omari_1', 'Mrr_Ben', '2021-06-24 12:54:29', 'no', 'no', 1, '', 'no'),
(54, 'Hello Mickey \r\n', 'Mustafa_Omari_1', 'Micky_Mouse', '2021-06-24 13:40:16', 'no', 'no', 1, '', 'no'),
(55, 'Haha', 'Omar_Omari', 'Mustafa_Omari_1', '2021-06-24 13:45:52', 'no', 'no', 1, '', 'no'),
(56, 'Lol!!', 'Omar_Omari', 'Mustafa_Omari_1', '2021-06-25 11:24:28', 'no', 'no', 0, '', 'yes'),
(57, 'Hello Mustafa i was send to you a friend requests \r\nand you dont accept me  !!!!', 'Bart_Simpson', 'Mustafa_Omari_1', '2021-06-25 12:32:26', 'no', 'no', 0, '', 'no'),
(58, 'why you dont replay my message  in inbox bro ', 'Naroto_Naroto', 'Mustafa_Omari_1', '2021-06-25 14:30:34', 'no', 'no', 0, '', 'yes'),
(59, 'https://www.youtube.com/watch?v=MU8xhYgHT0U&t=16s', 'Omar_Omari', 'none', '2021-06-29 11:39:28', 'no', 'yes', 0, '', 'no'),
(60, 'https://www.youtube.com/watch?v=MU8xhYgHT0U&t=16s', 'Omar_Omari', 'none', '2021-06-29 11:40:32', 'no', 'yes', 0, '', 'no'),
(61, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/MU8xhYgHT0U&t=16s\'><iframe><br>', 'Omar_Omari', 'none', '2021-06-29 11:55:40', 'no', 'yes', 0, '', 'no'),
(62, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/MU8xhYgHT0U&t=16s\'><iframe><br>', 'Omar_Omari', 'none', '2021-06-29 12:02:44', 'no', 'yes', 0, '', 'no'),
(63, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/MU8xhYgHT0U&t=16s\'><iframe><br>', 'Omar_Omari', 'none', '2021-06-29 12:02:53', 'no', 'yes', 0, '', 'no'),
(64, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/MU8xhYgHT0U&t=16s\'><iframe><br>', 'Omar_Omari', 'none', '2021-06-29 12:03:03', 'no', 'yes', 0, '', 'no'),
(65, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/MU8xhYgHT0U&t=16s\'><iframe><br>', 'Omar_Omari', 'none', '2021-06-29 12:03:45', 'no', 'yes', 0, '', 'no'),
(66, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/MU8xhYgHT0U\'><iframe><br>', 'Omar_Omari', 'none', '2021-06-29 12:07:00', 'no', 'no', 0, '', 'no'),
(67, '<br><iframe width=\'420\' height=\'315\' src=\'\'><iframe><br>', 'Omar_Omari', 'none', '2021-06-29 12:21:31', 'no', 'yes', 0, '', 'no'),
(68, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/Zhw_o6sne2w\'><iframe><br>', 'Omar_Omari', 'none', '2021-06-29 12:22:25', 'no', 'no', 0, '', 'no'),
(69, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/JmDFaxb6reo\'><iframe><br>', 'Omar_Omari', 'none', '2021-06-29 12:22:47', 'no', 'yes', 0, '', 'no'),
(70, 'Hello guys!! I\'m looking forward to the Superbow!!!!', 'Omar_Omari', 'none', '2021-06-29 13:17:58', 'no', 'no', 0, '', 'no'),
(71, 'Hello', 'Omar_Omari', 'none', '2021-06-29 13:18:19', 'no', 'no', 1, '', 'yes'),
(72, 'image ', 'Omar_Omari', 'none', '2021-06-29 16:59:48', 'no', 'no', 0, '', 'no'),
(73, 'Test Image ', 'Omar_Omari', 'none', '2021-06-29 17:02:14', 'no', 'yes', 0, 'assets/images/posts/60db7c46a3542avatar.png', 'no'),
(74, 'Test Image ', 'Omar_Omari', 'none', '2021-06-29 17:10:16', 'no', 'yes', 0, 'assets/images/posts/60db7e28950dfavatar.png', 'no'),
(75, 'test Image ', 'Omar_Omari', 'none', '2021-06-29 17:20:29', 'no', 'yes', 0, 'assets/images/posts/60db808d7a216WhatsApp Image 2020-12-10 at 10.59.03 AM.jpeg', 'no'),
(76, 'test Image ', 'Omar_Omari', 'none', '2021-06-29 17:20:40', 'no', 'yes', 0, 'assets/images/posts/60db80984d470WhatsApp Image 2020-12-10 at 10.59.03 AM.jpeg', 'no'),
(77, 'test Image ', 'Omar_Omari', 'none', '2021-06-29 17:20:48', 'no', 'no', 1, 'assets/images/posts/60db80a0d0c7dWhatsApp Image 2020-12-10 at 10.59.03 AM.jpeg', 'no'),
(78, 'yes ', 'Mustafa_Omari_1', 'none', '2021-06-30 16:13:17', 'no', 'no', 1, '', 'no'),
(79, 'sad', 'Mustafa_Omari_1', 'none', '2021-06-30 16:16:00', 'no', 'no', 0, '', 'yes'),
(80, 'Oki bro !!! ', 'Mustafa_Omari_1', 'Naroto_Naroto', '2021-06-30 16:16:16', 'no', 'no', 0, '', 'yes'),
(81, 'Anyone have Iphone, And want to sell it ? ', 'Omar_Omari', 'none', '2021-07-02 11:23:03', 'no', 'no', 0, '', 'yes'),
(82, 'lol\r\n', 'Mustafa_Omari_1', 'none', '2021-07-03 16:06:44', 'no', 'no', 0, '', 'yes'),
(83, 'lol\r\n', 'Mustafa_Omari_1', 'none', '2021-07-03 16:07:06', 'no', 'no', 0, '', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `trends`
--

CREATE TABLE `trends` (
  `title` varchar(50) NOT NULL,
  `hints` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trends`
--

INSERT INTO `trends` (`title`, `hints`) VALUES
('Hello', 2),
('Guys', 1),
('Looking', 1),
('Forward', 1),
('Superbow', 1),
('Image', 6),
('Test', 5),
('Sad', 1),
('Oki', 1),
('Bro', 1),
('Iphone', 1),
('Sell', 1),
('Lolrn', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `signup_date` date NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `num_posts` int(11) NOT NULL,
  `num_likes` int(11) NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `friend_array` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `signup_date`, `profile_pic`, `num_posts`, `num_likes`, `user_closed`, `friend_array`) VALUES
(1, 'Mustafa', 'Omari', 'Mustafa_Omari', 'mustafa@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2021-02-03', 'assets/images/profile_pics/Mustafa_Omarie497bd702a593c4ce9571e0a86b7032bn.jpeg', 14, 0, 'no', ',Micky_Mouse,'),
(2, 'Mustafa', 'Omari', 'Mustafa_Omari_1', 'Mustafa@gmail.com22', 'e10adc3949ba59abbe56e057f20f883e', '2021-05-27', 'assets/images/profile_pics/Mustafa_Omari_1cbe137c0e43e99ef35898143b26b1942n.jpeg', 37, 8, 'no', ',Omar_Omari,Micky_Mouse,Mrr_Ben,'),
(3, 'Omar', 'Omari', 'Omar_Omari', 'Omar@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2021-05-27', 'assets/images/profile_pics/Omar_Omari4befbb94c72a8fb96048cf6ba314bc88n.jpeg', 24, 4, 'no', ',Mustafa_Omari_1,'),
(4, 'Micky', 'Mouse', 'Micky_Mouse', 'Micky@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2021-05-27', 'assets/images/profile_pics/Micky_Mouse0040ac40491c9cd1c9ee6ee089ae2a5dn.jpeg', 3, 1, 'no', ',Mustafa_Omari,Mrr_Ben,Mustafa_Omari_1,'),
(5, 'Lucky', 'Mouse', 'Lucky_Mouse', 'Lucky@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2021-05-27', 'assets/images/profile_pics/defaults/head_red.png', 0, 0, 'no', ','),
(6, 'Mrr', 'Ben', 'Mrr_Ben', 'Mrben@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2021-05-28', 'assets/images/profile_pics/Mrr_Ben225be594d556699f7517cddb68be3577n.jpeg', 2, 2, 'no', ',Micky_Mouse,Mustafa_Omari_1,'),
(7, 'Hommer', 'Simpson', 'Hommer_Simpson', 'Hommersimpson@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2021-06-23', 'assets/images/profile_pics/Hommer_Simpson0a66a0f0134987bd97ed2403ee91c775n.jpeg', 0, 0, 'no', ','),
(8, 'Bart', 'Simpson', 'Bart_Simpson', 'Bartsimpson@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2021-06-23', 'assets/images/profile_pics/Bart_Simpson1b79f6d1d4387894f323ae411631b01dn.jpeg', 1, 0, 'no', ','),
(9, 'Naroto', 'Naroto', 'Naroto_Naroto', 'Naroto@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2021-06-23', 'assets/images/profile_pics/Naroto_Naroto93d2263033f731b121cab0062f757880n.jpeg', 1, 0, 'no', ','),
(10, 'Minions', 'Minions', 'Minions_Minions', 'Minions@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2021-06-23', 'assets/images/profile_pics/Minions_Minions726cee5abfdd4144a968b6923d03cdeen.jpeg', 0, 0, 'no', ',');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friend_requests`
--
ALTER TABLE `friend_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `friend_requests`
--
ALTER TABLE `friend_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
