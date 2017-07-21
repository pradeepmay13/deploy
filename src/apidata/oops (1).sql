-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2017 at 11:54 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oops`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `Departmenttid` int(11) NOT NULL,
  `DepartmentName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`Departmenttid`, `DepartmentName`) VALUES
(1, 'Accounts'),
(2, 'Admin'),
(3, 'HR'),
(4, 'Technology'),
(5, 'IT Team');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `Empid` int(11) NOT NULL,
  `EmpNumber` varchar(255) NOT NULL,
  `EmpFirstName` varchar(255) NOT NULL,
  `EmpLastName` varchar(255) NOT NULL,
  `EmpEmail` varchar(255) NOT NULL,
  `Managerid` varchar(255) NOT NULL,
  `Departmentid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Empid`, `EmpNumber`, `EmpFirstName`, `EmpLastName`, `EmpEmail`, `Managerid`, `Departmentid`) VALUES
(1, 'A001', 'Samir', 'Singh', 'samir@abc.com', '2', 2),
(2, 'A002', 'Amit', 'Kumar', 'amit@abc.com', '1', 1),
(3, 'A003', 'Neha', 'Sharma', 'neha@abc.com', '1', 2),
(4, 'A004', 'Vivek', 'Kumar', 'vivek@abc.com', '1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `page_type` enum('page','post') NOT NULL DEFAULT 'post',
  `parent_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(2) NOT NULL,
  `d_status` int(2) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `post_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `page_type`, `parent_id`, `name`, `slug`, `status`, `d_status`, `created_by`, `post_date`) VALUES
(1, 'post', 0, 'Home', '', 1, 0, '1', '2015-12-01 04:00:00'),
(8, 'post', 0, 'Test', '', 1, 0, '1', '2015-12-02 16:52:29'),
(30, 'post', 1, 'Test for Home', '', 1, 0, '1', '2015-12-02 16:52:29'),
(31, 'post', 0, 'Clothes', '', 1, 0, '1', '2015-12-02 16:52:29'),
(32, 'post', 0, 'Ola Cabs', '', 1, 0, '1', '2015-12-02 18:37:24'),
(33, 'post', 0, 'UBER', '', 1, 1, '1', '2015-12-02 18:38:20'),
(34, 'post', 0, 'Cabb', '', 1, 1, '1', '2015-12-02 18:38:37'),
(35, 'post', 0, 'Maruti', '', 1, 1, '1', '2015-12-02 18:39:18'),
(36, 'post', 0, 'Capegemini', '', 1, 1, '1', '2015-12-02 18:39:35'),
(37, 'post', 0, 'Cognigent', '', 1, 1, '1', '2015-12-02 18:39:46'),
(41, 'post', 0, 'Test1566', '', 0, 1, '1', '2015-12-04 12:24:36'),
(42, 'post', 24, 'Dsfdsfdsfdsf', '', 1, 0, '1', '2015-12-28 18:31:22'),
(43, 'post', 31, 'fdsadsf', '', 1, 0, '1', '2015-12-28 18:31:44'),
(44, 'post', 31, 'Test56', '', 1, 0, '1', '2015-12-28 18:42:15'),
(45, 'post', 31, 'yiuyuiyu', '', 1, 1, '1', '2015-12-28 18:42:42'),
(46, 'post', 31, 'yiuyuiyu', '', 1, 1, '1', '2015-12-28 18:51:01'),
(47, 'post', 31, '656465465464', '', 1, 0, '1', '2015-12-28 18:56:37'),
(48, 'post', 0, 'Test New', '', 1, 1, '1', '2015-12-28 23:01:20'),
(49, 'post', 47, 'Pradeep Slug Menu', 'pradeep-slug-menu', 1, 0, '1', '2015-12-28 23:33:18'),
(50, 'post', 44, 'PRADEEP KUMAR', 'pradeep-kumar', 1, 1, '1', '2016-01-01 22:30:55'),
(51, 'post', 8, 'xbcvbcvb', 'xbcvbcvb', 1, 1, '1', '2016-01-01 22:31:05'),
(52, 'post', 29, 'Woodland', 'woodland', 1, 0, '1', '2016-01-03 02:40:07'),
(53, 'post', 29, 'Lee Cooper', 'lee-cooper', 1, 0, '1', '2016-01-03 02:49:54'),
(54, 'post', 0, 'Dfgdf', 'dfgdf', 0, 0, '1', '2016-01-03 13:49:41'),
(55, 'post', 47, '546546546', '546546546', 1, 0, '1', '2016-03-23 09:37:46'),
(56, 'post', 0, '543654654', '543654654', 1, 0, '1', '2016-03-23 09:38:16');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contents`
--

CREATE TABLE `tbl_contents` (
  `id` int(11) NOT NULL,
  `content_type` enum('page','post') NOT NULL DEFAULT 'page',
  `category_ids` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `excerpt` longtext NOT NULL,
  `description` longtext NOT NULL,
  `status` int(2) NOT NULL,
  `d_status` int(2) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `post_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_contents`
--

INSERT INTO `tbl_contents` (`id`, `content_type`, `category_ids`, `title`, `slug`, `excerpt`, `description`, `status`, `d_status`, `created_by`, `post_date`) VALUES
(1, 'page', '', 'fdgdf', 'fdgdf', 'dfgdf', '<p>dfdfg</p>\r\n', 1, 0, '1', '2016-01-04 08:52:16'),
(3, 'page', '', 'About us', 'about-us', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla. ', '<p><img alt=\\"\\" src=\\"http://localhost/backup/oops/upload_file/editorfiles/images/Cute%20girl%20and%20little%20gray%20rabbit%20Wallpapers%20HD%201280x720.jpg\\" style=\\"width: 200px; height: 113px; margin: 5px; float: left;\\" /></p>\r\n\r\n<p><span style=\\"color: rgb(0, 0, 0); font-family: Arial, Helvetica, Tahoma, Verdana, sans-serif; font-size: 12px; line-height: normal;\\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla. Aenean dictum lacinia tortor. Nunc iaculis, nibh non iaculis aliquam, orci felis euismod neque, sed ornare massa mauris sed velit. Nulla pretium mi et risus. Fusce mi pede, tempor id, cursus ac, ullamcorper nec, enim. Sed tortor. Curabitur molestie. Duis velit augue, condimentum at, ultrices a, luctus ut, orci. Donec pellentesque egestas eros. Integer cursus, augue in cursus faucibus, eros pede bibendum sem, in tempus tellus justo quis ligula. Etiam eget tortor. Vestibulum rutrum, est ut placerat elementum, lectus nisl aliquam velit, tempor aliquam eros nunc nonummy metus. In eros metus, gravida a, gravida sed, lobortis id, turpis. Ut ultrices, ipsum at venenatis fringilla, sem nulla lacinia tellus, eget aliquet turpis mauris non enim. Nam turpis. Suspendisse lacinia. Curabitur ac tortor ut ipsum egestas elementum. Nunc imperdiet gravida mauris.Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla. Aenean dictum lacinia tortor. Nunc iaculis, nibh non iaculis aliquam, orci felis euismod neque, sed ornare massa mauris sed velit. Nulla pretium mi et risus. Fusce mi pede, tempor id, cursus ac, ullamcorper nec, enim. Sed tortor. Curabitur molestie. Duis velit augue, condimentum at, ultrices a, luctus ut, orci. Donec pellentesque egestas eros. Integer cursus, augue in cursus faucibus, eros pede bibendum sem, in tempus tellus justo quis ligula. Etiam eget tortor. Vestibulum rutrum, est ut placerat elementum, lectus nisl aliquam velit, tempor aliquam eros nunc nonummy metus. In eros metus, gravida a, gravida sed, lobortis id, turpis. Ut ultrices, ipsum at venenatis fringilla, sem nulla lacinia tellus, eget aliquet turpis mauris non enim. Nam turpis. Suspendisse lacinia. Curabitur ac tortor ut ipsum egestas elementum. Nunc imperdiet gravida mauris.</span></p>\r\n', 1, 0, '1', '2016-01-04 08:52:53'),
(5, 'page', '', 'dsgdd454 44 5454', 'dsgdd454-44-5454', 'vcbcvcvbdg dg df fd df ', '<p>sd dfgdf gdfg</p>\r\n', 1, 0, '1', '2016-01-10 11:52:00'),
(9, 'post', '47,49', 'dsfds', 'dsfds', 'fdsf', '<p>dsfds</p>\r\n', 1, 0, '1', '2016-01-11 08:07:19'),
(17, 'post', '', 'try', 'try', 'try', '<p>trytry</p>\r\n', 1, 0, '1', '2016-01-15 10:00:40'),
(18, 'post', '', '658768', '658768', '858768', '<p>8678678</p>\r\n', 1, 0, '1', '2016-01-15 12:52:15'),
(21, 'page', '', 'Ddf443535', 'ddf443535', 'gfd gfd gfdg', '<p>fdg fdgfdgfd</p>\r\n', 1, 0, '1', '2016-01-25 09:09:35'),
(23, 'page', '', 'erger', 'erger', 'tert', '<p>erterterter</p>\r\n', 1, 0, '1', '2016-02-09 14:38:23'),
(24, 'page', '', 'ertert', 'ertert', 'ertert', '<p>ertertert</p>\r\n', 1, 0, '1', '2016-02-09 14:38:27'),
(26, 'page', '', 'Test 123 Test123 Test123', 'test-123-test123-test123', 'Test 123 Test123 Test123Test 123 Test123 Test123Test 123 Test123 Test123Test 123 Test123 Test123Test 123 Test123 Test123Test 123 Test123 Test123Test 123 Test123 Test123Test 123 Test123 Test123Test 123 Test123 Test123Test 123 Test123 Test123Test 123 Test123 Test123', '<p><span style=\\"line-height: 20.8px;\\">Test 123 Test123 Test123Test 123 Test123 Test123Test 123 Test123 Test123Test 123 Test123 Test123Test 123 Test123 Test123Test 123 Test123 Test123Test 123 Test123 Test123Test 123 Test123 Test123Test 123 Test123 Test123Test 123 Test123 Test123Test 123 Test123 Test123Test 123 Test123 Test123Test 123 Test123 Test123Test 123 Test123 Test123Test 123 Test123 Test123Test 123 Test123 Test123Test 123 Test123 Test123</span></p>\r\n', 1, 0, '1', '2016-02-09 14:38:42'),
(27, 'page', '', 'fdgdf', 'fdgdf', 'dfgdf', '<p>dfdfg</p>\r\n', 1, 0, '1', '2016-01-04 08:52:16'),
(28, 'page', '', 'fdgdf', 'fdgdf', 'dfgdf', '<p>dfdfg</p>\r\n', 1, 0, '1', '2016-01-04 08:52:16'),
(29, 'page', '', 'fdgdf', 'fdgdf', 'dfgdf', '<p>dfdfg</p>\r\n', 1, 0, '1', '2016-01-04 08:52:16'),
(30, 'page', '', 'fdgdf', 'fdgdf', 'dfgdf', '<p>dfdfg</p>\r\n', 0, 0, '1', '2016-01-04 08:52:16'),
(31, 'page', '', 'fdgdf', 'fdgdf', 'dfgdf', '<p>dfdfg</p>\r\n', 1, 0, '1', '2016-01-04 08:52:16'),
(32, 'page', '', 'fdgdf', 'fdgdf', 'dfgdf', '<p>dfdfg</p>\r\n', 1, 0, '1', '2016-01-04 08:52:16'),
(33, 'page', '', 'fdgdf', 'fdgdf', 'dfgdf', '<p>dfdfg</p>\r\n', 1, 0, '1', '2016-01-04 08:52:16'),
(34, 'page', '', 'fdgdf', 'fdgdf', 'dfgdf', '<p>dfdfg</p>\r\n', 1, 0, '1', '2016-01-04 08:52:16'),
(36, 'page', '', 'fdgdf', 'fdgdf', 'dfgdf', '<p>dfdfg</p>\r\n', 1, 0, '1', '2016-01-04 08:52:16'),
(39, 'page', '', 'fdgdf', 'fdgdf', 'dfgdf', '<p>dfdfg</p>\r\n', 1, 0, '1', '2016-01-04 08:52:16');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `id` int(11) NOT NULL,
  `user_image` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email_id` varchar(255) NOT NULL,
  `contact_no` varchar(12) NOT NULL,
  `category_privileges` longtext NOT NULL,
  `action_privileges` varchar(20) NOT NULL,
  `status` int(2) NOT NULL,
  `d_status` int(2) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `post_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`id`, `user_image`, `fullname`, `designation`, `username`, `password`, `email_id`, `contact_no`, `category_privileges`, `action_privileges`, `status`, `d_status`, `created_by`, `post_date`) VALUES
(1, '', 'Pradeep', 'Software Developer', 'pradeep', 'pradeep', 'pradeep@mgial.com', '', '31,29,32', '0.2.3.4', 1, 0, '', '2015-07-10 09:15:23'),
(2, '', 'Naveen Tripathi', 'Software Developer', 'naveen', 'naveen', 'test@gmail.com', '43643645654', '', '', 1, 0, '1', '2015-07-10 09:15:23'),
(3, '', 'Dhirendra', 'Software Developer', 'dhirendra', 'dhirendra', 'dhir@gmail.com', '8787878787', '', '', 1, 1, '1', '2015-07-10 09:15:23'),
(4, '', 'Ram', 'Software Developer', 'ram', 'ram12345', 'ram@gmail.com', '656565656565', '', '', 1, 1, '1', '2015-07-10 09:15:23'),
(5, '', 'fdsgfdgf', 'Software Developer', 'dsfsdf', '1234546', 'pradeepmay13@gmail.com', '43643645654', '', '', 1, 1, '1', '2015-07-10 09:15:23'),
(6, 'e3e1b075bdd05b9ec2885eaa41a6c403.jpg', 'Dhirendra', 'Software Developer', 'dhirendra1', 'dhirendra', 'dhir@gmail.com', '43643645654', '', '', 1, 1, '1', '2015-07-10 09:15:23'),
(7, '865011f2e441e0f3f4037f61190f57b4.jpg', 'Ramashrey Patel', 'Software Developer', 'ram1', '12345', 'pradeepmay13@gmail.com', '43643645654', '', '', 1, 1, '1', '2015-07-10 09:15:23'),
(8, '7f79862690a087ed086e4a96e0d267ce.jpg', 'Sunesh Pandita', 'Software Developer', 'sunesh', 'sunesh', 'sunesh@gmail.com', '43643645654', '31,29,32', '', 1, 0, '1', '2015-07-10 09:15:23'),
(9, 'd7a80ef26f21e478791062c79ec45a5e.jpg', 'sriniwas', 'Software Developer', 'sriniwas', 'sriniwas', 'sriniwas@gmail.com', '43643645654', '31,29,32', '0.1.2.3', 1, 0, '1', '2015-07-10 09:15:23'),
(10, '', 'pk', 'Software Developer', 'pk', '12345', 'pradeepmay13@gmail.com', '8787878787', '', '', 1, 1, '1', '2015-07-10 09:15:23'),
(11, '325faf69b864f9df34aad307edbbd6d9.jpg', 'Balvinder Banga', 'Software Developer', 'bbanga', 'temporary123', 'test@gmail.com', '43643645654', '31,29,1', '0.1.2.3', 1, 0, '1', '2015-07-10 09:15:23'),
(12, '853db6d59c64f445b6caae4580700f5f.jpg', 'root', 'Software Developer', 'pradeepmay13@gmail.com', '8768768768', 'dsfds@gmail.com', '768678768', '', '', 1, 1, '1', '2015-07-10 09:15:23'),
(13, 'd2d9f0c36bf0675b13765d18c02a0727.jpg', '657657', 'Software Developer', '65567', '657565756', 'pradeepmay13@gmail.com', '43643645654', '31,29,1,32,25,8', '0.1.2.3.4', 0, 0, '1', '2015-07-10 09:15:23'),
(14, '', '', 'Software Developer', '', '', '', '', '', '', 1, 1, '1', '2015-07-10 09:15:23');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menus`
--

CREATE TABLE `tbl_menus` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `d_status` int(11) NOT NULL,
  `post_date` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_menus`
--

INSERT INTO `tbl_menus` (`id`, `title`, `slug`, `status`, `d_status`, `post_date`, `created_by`) VALUES
(1, 'xcvxcv', 'xcvxcv', 1, 1, '2016-01-10 15:11:48', '1'),
(2, 'ffgdf', 'ffgdf', 1, 0, '2016-01-10 15:19:28', '1'),
(3, 'aaa', 'aaa', 1, 1, '2016-01-10 15:19:40', '1'),
(4, 'Test Menu', 'test-menu', 1, 0, '2016-01-11 08:08:01', '1'),
(5, '658678', '658678', 1, 0, '2016-02-10 13:03:45', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nav_manager`
--

CREATE TABLE `tbl_nav_manager` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `parent_id` varchar(255) NOT NULL,
  `item_id` varchar(255) NOT NULL,
  `depth` int(11) NOT NULL,
  `left` varchar(255) NOT NULL,
  `right` varchar(255) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `modified_on` datetime NOT NULL,
  `seq` int(11) NOT NULL,
  `post_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `category_id` varchar(255) NOT NULL,
  `sub_category_id` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '0',
  `pdt_sku` varchar(255) NOT NULL,
  `pdt_price` float(11,2) NOT NULL,
  `pdt_excerpt` varchar(255) NOT NULL,
  `pdt_desc` longtext NOT NULL,
  `status` int(2) NOT NULL,
  `d_status` int(2) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `post_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`id`, `slug`, `category_id`, `sub_category_id`, `name`, `pdt_sku`, `pdt_price`, `pdt_excerpt`, `pdt_desc`, `status`, `d_status`, `created_by`, `post_date`) VALUES
(35, '', '1', '20', 'Test', '765', 456546.00, '', '', 1, 1, '1', '2015-12-23 08:55:21'),
(36, '', '1', '30', 'tuyttyu', '765', 456546.00, '', '', 1, 1, '1', '2015-12-23 09:09:11'),
(37, '', '1', '20', '567657', '6575', 567.00, '', '', 1, 1, '1', '2015-12-23 09:09:21'),
(38, '', '1', '20', '65765', '657657', 456546.00, '', '', 1, 0, '1', '2015-12-23 09:09:51'),
(39, '', '1', '20', '657657', '65657', 657567680.00, '', '', 1, 0, '1', '2015-12-23 09:13:33'),
(40, '', '1', '20', 'Test', '54645', 456456.00, '', '', 1, 0, '1', '2015-12-23 09:14:36'),
(41, '', '1', '20', '546464', '645654', 654.00, '', '', 1, 0, '1', '2015-12-23 09:15:16'),
(42, 'test-pradeep-1', '1', '30', 'test pradeep 1', '6456547654', 657.00, 'test pradeep 1', '<p>Lorem ipsum dolor sit amet, pro prima omnium officiis at, ius wisi expetenda at, pro ei minimum signiferumque. Habeo alterum instructior te sed, has stet delicata omittantur no. In case melius inimicus pri, pri et integre inimicus, quo at nostro equidem accusata. Noluisse copiosae cu vix.</p>\r\n\r\n<p>Cum ex summo aliquip, et vel velit gloriatur, te nec mundi regione posidonium. Pri utroque verterem cu, debitis vocibus sensibus eum eu, rebum vivendo sit ex. Vim te dicam consequat, id pri tibique principes tincidunt. Vel adipisci adversarium liberavisse eu, vim id choro iisque.</p>\r\n\r\n<p>Nominati hendrerit voluptatum sed in. Idque corrumpit ius ei, nam id mollis delicata recteque. Has putent efficiantur et, cu eos audire salutandi, imperdiet scribentur et sit. Ei mea cetero principes, ne choro denique consectetuer has. Vivendo percipitur pri no. Mel eruditi ponderum ea.</p>\r\n\r\n<p>Pro id quem sanctus, graeci impetus interesset te eum, ea eum maiorum suavitate voluptaria. An vel choro placerat sadipscing. No munere ceteros noluisse pro, erat sale eirmod at nec. Altera verterem est an, dico error ludus at cum, quo oratio definitiones at. Nisl audiam eligendi in pri, altera fabellas praesent te vel, no quod munere repudiare est. Delenit nonumes accumsan mea ei.</p>\r\n\r\n<p>Ut eum volumus indoctum, fierent convenire disputando nec eu, cu fabellas rationibus pro. Pri ei agam melius temporibus, vim ex prompta habemus volumus. Tale dolores verterem eu per, pri suavitate conceptam et. Ea eum phaedrum persecuti comprehensam.</p>\r\n', 1, 0, '1', '2015-12-23 09:58:08'),
(43, 'test-pradeep-1.1', '1', '30', 'test Pradeep 1.1', '6456544', 456546.00, 'test Pradeep 1.1', '<p><img alt=\\"\\" src=\\"http://localhost/backup/oops/upload_file/editorfiles/images/Hydrangeas.jpg\\" style=\\"width: 300px; height: 225px; margin: 5px; float: left;\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, pro prima omnium officiis at, ius wisi expetenda at, pro ei minimum signiferumque. Habeo alterum instructior te sed, has stet delicata omittantur no. In case melius inimicus pri, pri et integre inimicus, quo at nostro equidem accusata. Noluisse copiosae cu vix.</p>\r\n\r\n<p>Cum ex summo aliquip, et vel velit gloriatur, te nec mundi regione posidonium. Pri utroque verterem cu, debitis vocibus sensibus eum eu, rebum vivendo sit ex. Vim te dicam consequat, id pri tibique principes tincidunt. Vel adipisci adversarium liberavisse eu, vim id choro iisque.</p>\r\n\r\n<p>Nominati hendrerit voluptatum sed in. Idque corrumpit ius ei, nam id mollis delicata recteque. Has putent efficiantur et, cu eos audire salutandi, imperdiet scribentur et sit. Ei mea cetero principes, ne choro denique consectetuer has. Vivendo percipitur pri no. Mel eruditi ponderum ea.</p>\r\n\r\n<p>Pro id quem sanctus, graeci impetus interesset te eum, ea eum maiorum suavitate voluptaria. An vel choro placerat sadipscing. No munere ceteros noluisse pro, erat sale eirmod at nec. Altera verterem est an, dico error ludus at cum, quo oratio definitiones at. Nisl audiam eligendi in pri, altera fabellas praesent te vel, no quod munere repudiare est. Delenit nonumes accumsan mea ei.</p>\r\n\r\n<p>Ut eum volumus indoctum, fierent convenire disputando nec eu, cu fabellas rationibus pro. Pri ei agam melius temporibus, vim ex prompta habemus volumus. Tale dolores verterem eu per, pri suavitate conceptam et. Ea eum phaedrum persecuti comprehensam.</p>\r\n', 1, 0, '1', '2015-12-23 09:59:00'),
(44, 'test', '1', '30', 'Test', '645654768', 456546.00, 'test pradeep 1', '<p>&nbsp;</p>\r\n', 0, 0, '1', '2015-12-23 10:37:25'),
(45, 'dsfsdf', '1', '30', 'dsfsdf', 'sdfsdf', 54654.00, '54 64 54 54', '<p>54 546</p>\r\n', 1, 1, '1', '2015-12-28 17:19:35'),
(46, 'test', '31', '43', 'Test', '64565445556565', 456546.00, ' 546454654rfgy ', '<p>rttrtr tr ytr ytr</p>\r\n', 1, 0, '1', '2015-12-28 18:37:38'),
(47, 'htytrytry', '1', '20', 'htytrytry', 'FDG65465554', 546.00, 'GFH FHGFH', '<p>GF HTF HFGHGFH</p>\r\n', 1, 1, '1', '2015-12-28 18:59:58'),
(48, 'safdsfsdf', '1', '30', 'safdsfsdf', '543534534', 565.00, 'sad as asd', '<p>as dasdasdas</p>\r\n', 1, 1, '1', '2016-01-03 00:48:35'),
(49, 'dfsdf', '1', '20', 'Dfsdf', '8665665643434', 565.00, 'ewr ewewrwe', '<p>&nbsp;ewrew wer</p>\r\n', 1, 0, '1', '2016-01-03 00:52:26'),
(50, '654645', '31', '47', '654645', '5656', 456546.00, 'rth tr trytr', '<p><img alt=\\"\\" src=\\"http://localhost/backup/oops/upload_file/editorfiles/images/Desert.jpg\\" style=\\"width: 200px; height: 150px; float: left; margin: 5px;\\" /><span style=\\"color: rgb(0, 0, 0); font-family: Arial, Helvetica, Tahoma, Verdana, sans-serif; font-size: 12px; line-height: normal;\\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla. Aenean dictum lacinia tortor. Nunc iaculis, nibh non iaculis aliquam, orci felis euismod neque, sed ornare massa mauris sed velit. Nulla pretium mi et risus. Fusce mi pede, tempor id, cursus ac, ullamcorper nec, enim. Sed tortor. Curabitur molestie. Duis velit augue, condimentum at, ultrices a, luctus ut, orci. Donec pellentesque egestas eros. Integer cursus, augue in cursus faucibus, eros pede bibendum sem, in tempus tellus justo quis ligula. Etiam eget tortor. Vestibulum rutrum, est ut placerat elementum, lectus nisl aliquam velit, tempor aliquam eros nunc nonummy metus. In eros metus, gravida a, gravida sed, lobortis id, turpis. Ut ultrices, ipsum at venenatis fringilla, sem nulla lacinia tellus, eget aliquet turpis mauris non enim. Nam turpis. Suspendisse lacinia. Curabitur ac tortor ut ipsum egestas elementum. Nunc imperdiet gravida mauris.Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla. Aenean dictum lacinia tortor. Nunc iaculis, nibh non iaculis aliquam, orci felis euismod neque, sed ornare massa mauris sed velit. Nulla pretium mi et risus. Fusce mi pede, tempor id, cursus ac, ullamcorper nec, enim. Sed tortor. Curabitur molestie. Duis velit augue, condimentum at, ultrices a, luctus ut, orci. Donec pellentesque egestas eros. Integer cursus, augue in cursus faucibus, eros pede bibendum sem, in tempus tellus justo quis ligula. Etiam eget tortor. Vestibulum rutrum, est ut placerat elementum, lectus nisl aliquam velit, tempor aliquam eros nunc nonummy metus. In eros metus, gravida a, gravida sed, lobortis id, turpis. Ut ultrices, ipsum at venenatis fringilla, sem nulla lacinia tellus, eget aliquet turpis mauris non enim. Nam turpis. Suspendisse lacinia. Curabitur ac tortor ut ipsum egestas elementum. Nunc imperdiet gravida mauris.</span></p>\r\n', 1, 0, '1', '2016-01-04 08:21:11'),
(51, 'dsfdsf', '29', '53', 'dsfdsf', '9657547', 3656546.00, '546 54646', '<p>457 654 767</p>\r\n', 1, 0, '1', '2016-01-11 08:07:47'),
(52, '89769', '8', '18', '89769', '789879', 879879.00, '87987987', '<p>879879879</p>\r\n', 1, 0, '1', '2016-02-03 10:23:24');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email_id` varchar(255) NOT NULL,
  `contact_no` bigint(10) NOT NULL,
  `status` int(2) NOT NULL,
  `userid` int(11) NOT NULL,
  `user_download` varchar(255) NOT NULL,
  `d_status` int(2) NOT NULL,
  `created_by` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `first_name`, `last_name`, `email_id`, `contact_no`, `status`, `userid`, `user_download`, `d_status`, `created_by`) VALUES
(443, 'fesadsa', 'sfsdf', 'dsfds@gmail.com', 43643645654, 0, 0, '', 0, '1'),
(444, 'fesadsa', 'sfsdf', 'dsfds@gmail.com', 43643645654, 0, 0, '', 0, '1'),
(445, 'fesadsa', 'sfsdf', 'dsfds@gmail.com', 43643645654, 0, 0, '', 0, '1'),
(446, 'fesadsa', 'sfsdf', 'dsfds@gmail.com', 43643645654, 0, 0, '', 0, '1'),
(450, 'fesadsa', 'sfsdf', 'dsfds@gmail.com', 43643645654, 0, 0, '', 0, '1'),
(451, 'fesadsa', 'sfsdf', 'dsfds@gmail.com', 43643645654, 0, 0, '', 0, '1'),
(452, 'fesadsa', 'sfsdf', 'dsfds@gmail.com', 43643645654, 0, 0, '', 0, '1'),
(453, 'fesadsa', 'sfsdf', 'dsfds@gmail.com', 43643645654, 0, 0, '', 0, '1'),
(454, 'fesadsa', 'sfsdf', 'dsfds@gmail.com', 43643645654, 0, 0, '', 0, '1'),
(455, 'fesadsa', 'sfsdf', 'dsfds@gmail.com', 43643645654, 1, 0, '', 0, '1'),
(456, 'fesadsa', 'sfsdf', 'dsfds@gmail.com', 43643645654, 1, 0, '', 0, '1'),
(457, 'fesadsa', 'sfsdf', 'dsfds@gmail.com', 43643645654, 0, 0, '', 0, '1'),
(458, 'fesadsa', 'sfsdf', 'dsfds@gmail.com', 43643645654, 1, 0, '', 0, '1'),
(459, 'fesadsa', 'sfsdf', 'dsfds@gmail.com', 43643645654, 1, 0, '', 0, '1'),
(460, 'fesadsa', 'sfsdf', 'dsfds@gmail.com', 43643645654, 1, 0, '', 0, '1'),
(461, 'fesadsa', 'sfsdf', 'dsfds@gmail.com', 43643645654, 1, 0, '', 0, '1'),
(462, 'fesadsa', 'sfsdf', 'dsfds@gmail.com', 43643645654, 1, 0, '', 0, '1'),
(463, 'Test', 'Tdfds', 'dsfds@gmail.com', 9675756765, 1, 0, 'c6f3bcff30cdd7ea047d2d9e1b369afc.jpg', 0, '1'),
(464, 'fesadsa', 'sfsdf', 'dsfds@gmail.com', 43643645654, 1, 0, '', 1, '1'),
(465, 'fesadsa', 'sfsdf', 'dsfds@gmail.com', 43643645654, 1, 0, '', 1, '1'),
(466, 'fesadsa', 'sfsdf', 'dsfds@gmail.com', 43643645654, 1, 0, '', 1, '1'),
(467, 'Pradeep', 'sfsdf', 'dsfds@gmail.com', 43643645654, 1, 0, '', 1, '1'),
(468, 'fdhgfh', 'fghfg', 'fghfgh', 6767676767676, 1, 0, '99ab79eab82eda81a4edd2db065aa73b.jpg', 1, '1'),
(469, '657', '65756', '6556', 43643645654, 1, 0, '8aad0e6c0f3bf22ab4904e4ead8af7d7.jpg', 1, '1'),
(470, 'ewwerewr', 'ewrewrewr', 'pradeepmay13@gmail.com', 45534534543, 1, 0, '155dee12f4a0d39a196bc751d68088f3.jpg', 1, '1'),
(471, 'kkkl', 'ewrewrewr', 'pradeepmay13@gmail.com', 45534534543, 1, 0, '12e5f106909ed319aa68b0ab594dfee7.jpg', 0, '1'),
(472, 'kkkl', 'ewrewrewr', 'pradeepmay13@gmail.com', 45534534543, 1, 0, '640236011b8d54106acdda04495aa7f8.jpg', 0, '1'),
(473, 'dsdf', 'ewrewrewr', 'pradeepmay13@gmail.com', 45534534543, 1, 0, 'cf34d87366216d0afc837699ddbd1fd4.jpg', 0, '1'),
(474, 'Test', 'ewrewrewr', 'pradeepmay13@gmail.com', 45534534543, 1, 0, 'a1292eb10592fac33ffae7346535d515.jpg', 0, '1'),
(475, 'kkkl', 'Tdfds', 'pradeepmay13@gmail.com', 45534534543, 1, 0, 'f8eac61579f9dac29868aa4986020dc0.jpg', 0, '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`Departmenttid`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Empid`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contents`
--
ALTER TABLE `tbl_contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_menus`
--
ALTER TABLE `tbl_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_nav_manager`
--
ALTER TABLE `tbl_nav_manager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `Departmenttid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `Empid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `tbl_contents`
--
ALTER TABLE `tbl_contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `tbl_menus`
--
ALTER TABLE `tbl_menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_nav_manager`
--
ALTER TABLE `tbl_nav_manager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=476;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
