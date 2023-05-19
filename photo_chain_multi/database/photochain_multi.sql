-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 30, 2023 at 06:20 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `photochain_multi`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `ds_contact`
--

CREATE TABLE `ds_contact` (
  `id` int(11) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `cname` varchar(20) NOT NULL,
  `status` int(11) NOT NULL,
  `date_time` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ds_contact`
--

INSERT INTO `ds_contact` (`id`, `uname`, `cname`, `status`, `date_time`) VALUES
(1, 'raj', 'dinesh', 1, '2023-02-04 17:46:51'),
(2, 'dinesh', 'raj', 1, '2023-02-04 17:47:07');

-- --------------------------------------------------------

--
-- Table structure for table `ds_face`
--

CREATE TABLE `ds_face` (
  `id` int(11) NOT NULL,
  `vid` int(11) NOT NULL,
  `vface` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ds_face`
--


-- --------------------------------------------------------

--
-- Table structure for table `ds_post`
--

CREATE TABLE `ds_post` (
  `id` int(11) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `detail` text NOT NULL,
  `photo` varchar(100) NOT NULL,
  `rdate` varchar(20) NOT NULL,
  `dtime` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL,
  `photo_mode` int(11) NOT NULL,
  `pimage` varchar(100) NOT NULL,
  `dstatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ds_post`
--

INSERT INTO `ds_post` (`id`, `uname`, `detail`, `photo`, `rdate`, `dtime`, `status`, `photo_mode`, `pimage`, `dstatus`) VALUES
(1, 'raj', 'hi', 'FP1hh1.jpg', '30-04-2023', '2023-04-30 22:07:36', 0, 1, 'P1hh1.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ds_post1`
--

CREATE TABLE `ds_post1` (
  `id` int(11) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `text_post` varchar(200) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `rdate` varchar(15) NOT NULL,
  `status` int(11) NOT NULL,
  `user` varchar(20) NOT NULL,
  `pre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ds_post1`
--

INSERT INTO `ds_post1` (`id`, `uname`, `text_post`, `photo`, `rdate`, `status`, `user`, `pre_id`) VALUES
(1, 'kishore', 'hi', 'P1brochure.jpg', '30-04-2023', 0, '', 0),
(2, 'kishore', 'ji', 'S2pineapple-jam.jpg', '30-04-2023', 0, '', 0),
(3, 'kishore', 'hi', 'S3hh1.jpg', '30-04-2023', 1, 'raj', 1),
(4, 'kishore', 'hello', 'S4hh1.jpg', '30-04-2023', 1, 'raj', 1),
(5, 'kishore', 'hi', 'S5hh1.jpg', '30-04-2023', 1, 'raj', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ds_register`
--

CREATE TABLE `ds_register` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `aadhar` varchar(20) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `create_date` varchar(20) NOT NULL,
  `profile_st` int(11) NOT NULL,
  `block_key` varchar(20) NOT NULL,
  `date_time` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `dstatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ds_register`
--

INSERT INTO `ds_register` (`id`, `name`, `gender`, `dob`, `email`, `aadhar`, `uname`, `pass`, `create_date`, `profile_st`, `block_key`, `date_time`, `dstatus`) VALUES
(1, 'Raj', 'Male', '1995-08-15', 'raj@gmail.com', '246813571123', 'raj', '1234', '04-02-2023', 1, 'Ra181246', '2023-02-05 14:37:47', 0),
(2, 'Dinesh', 'Male', '1998-12-18', 'dinesh@gmail.com', '432156784321', 'dinesh', '1234', '04-02-2023', 0, 'Di278432', '2023-02-04 17:46:29', 0),
(3, 'Vijay', 'Male', '1992-04-22', 'vijay@gmail.com', '678967896789', 'vijay', '1234', '04-02-2023', 1, 'Vi389678', '2023-02-05 14:38:39', 0),
(4, 'Kishore', 'Male', '1994-03-23', 'kishore@gmail.com', '235689235689', 'kishore', '1234', '30-04-2023', 0, 'Ki470235', '2023-04-30 21:10:22', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ds_register1`
--

CREATE TABLE `ds_register1` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `location` varchar(30) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `rdate` varchar(15) NOT NULL,
  `profession` varchar(30) NOT NULL,
  `aadhar` varchar(20) NOT NULL,
  `photo` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `dstatus` int(11) NOT NULL,
  PRIMARY KEY  (`uname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ds_register1`
--

INSERT INTO `ds_register1` (`id`, `name`, `gender`, `dob`, `mobile`, `email`, `location`, `uname`, `pass`, `rdate`, `profession`, `aadhar`, `photo`, `status`, `dstatus`) VALUES
(1, 'Kishore', 'Male', '1994-03-02', 8527419635, 'kishore@gmail.com', 'DD', 'kishore', '1234', '30-04-2023', 'Software', '235689235689', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ds_request`
--

CREATE TABLE `ds_request` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `cname` varchar(20) NOT NULL,
  `status` int(11) NOT NULL,
  `dtime` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ds_request`
--

