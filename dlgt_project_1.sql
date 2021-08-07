-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2021 at 07:43 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dlgt_project_1`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `commentId` int(11) NOT NULL,
  `postId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `commentDescription` varchar(200) DEFAULT NULL,
  `commentWritingTime` varchar(200) DEFAULT NULL,
  `commentVote` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`commentId`, `postId`, `userId`, `commentDescription`, `commentWritingTime`, `commentVote`) VALUES
(60000, 40, 10003, 'commentDescription	', 'commentWritingTime	', 2),
(60001, 26, 10020, 'menendex has the pmcs', '12:33 PM', 3);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `postId` int(50) NOT NULL,
  `userId` int(50) NOT NULL,
  `postDescription` varchar(200) NOT NULL,
  `postInsertedTime` varchar(200) NOT NULL,
  `postUpdatedTime` varchar(200) NOT NULL,
  `postUserName` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`postId`, `userId`, `postDescription`, `postInsertedTime`, `postUpdatedTime`, `postUserName`) VALUES
(26, 10009, 'contest is over', '7:35 PM', '', 'Crosby'),
(27, 10009, 'we are outnumbered mason', '7:35 PM', '', 'Crosby'),
(30, 10009, 'meet me at the nexus checkpoint', '7:43 PM', '', 'Crosby'),
(35, 10009, 'all instruction will be broadcasted from the rusalka', '8:53 PM', '', 'Crosby'),
(36, 10007, 'Farid opned the CRC room', '8:58 PM', '', 'Section'),
(37, 10009, 'Meeting is in a go', '11:02 PM', '', 'Crosby'),
(38, 10009, 'Hola', '11:16 AM', '', 'Crosby'),
(39, 10009, 'okay may be it\'s working', '11:36 AM', '', 'Crosby'),
(40, 10009, 'DP is OP', '12:26 PM', '', 'Crosby'),
(41, 10009, 'asdasdasd', '4:16 PM', '', 'Crosby'),
(42, 10009, 'Test run is a go', '4:17 PM', '', 'Crosby');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `ID` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`ID`, `name`, `address`) VALUES
(1000, 'cow', 'asasd'),
(1001, 'amir', 'bangladesh');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` int(50) NOT NULL,
  `userHandle` varchar(200) NOT NULL,
  `userPassword` varchar(200) NOT NULL,
  `userName` varchar(200) NOT NULL,
  `userPhoneNumber` varchar(200) NOT NULL,
  `userInsertedTime` varchar(200) NOT NULL,
  `userUpdatedTime` varchar(200) NOT NULL,
  `userEmailAddress` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `userHandle`, `userPassword`, `userName`, `userPhoneNumber`, `userInsertedTime`, `userUpdatedTime`, `userEmailAddress`) VALUES
(10000, 'userHandle', 'userPassword', 'userName', 'userPhoneNumber', 'userInsertedTime', 'userUpdatedTime', 'userEmailAddress'),
(10001, 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd'),
(10002, 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd'),
(10003, '', '', '', '', '', '', ''),
(10004, 'qwer', '12', 'asdasd', 'fdcdc', '8:10 PM', '', 'q@q'),
(10005, 'qwer', '12', 'asdasd', 'fdcdc', '8:10 PM', '', 'q@q'),
(10006, '', '', '', '', '', '', ''),
(10007, 'Section', '12345', 'David Mason', '32567', '11:20 PM', '', 'masondavid2025@gmail.com'),
(10008, '', '', '', '', '', '', ''),
(10009, 'Crosby', 'asd', 'Mike Harper', '90009', '11:25 PM', '', 'harper345@gmail.com'),
(10010, '', '', '', '', '', '', ''),
(10011, 'Shalazar', 'tyu', 'Y Shalazar', '456789', '11:25 PM', '', 'sh@gmail.com'),
(10012, 'hghfgbfg', 'bnm', 'bbfgbfgb', 'fgfdg', '11:31 PM', '', 'fg@sfgfdgd'),
(10013, 'hghfgbfg', 'bnm', 'bbfgbfgb', 'fgfdg', '11:31 PM', '', 'fg@sfgfdgd'),
(10014, 'ytuiyyu', 'fg', 'iyuiuyiuy', 'fsfdfdsfdsf', '11:34 PM', '', 'b@b'),
(10015, 'ytuiyyu', 'fg', 'iyuiuyiuy', 'fsfdfdsfdsf', '11:34 PM', '', 'b@b'),
(10016, 'tggfgh', 'fg', 'vcvxcvdv', 'sdfsdcdsc', '11:35 PM', '', 'nmnbm@slknncvv'),
(10017, 'tggfgh', 'fg', 'vcvxcvdv', 'sdfsdcdsc', '11:35 PM', '', 'nmnbm@slknncvv'),
(10018, 'fdgfdgfd', 'asdf', 'fdgdfvdfv', 'fvzvcv', '11:39 PM', '', 'gdfgdfg@vfdvfvvd'),
(10019, 'ujnhbn', 'bg', 'ghgvdfvbzfv', 'bghfbgfb', '11:51 PM', '', 'i@p'),
(10020, 'Farid', '1998', 'Sheikh Farid', '909090', '11:37 AM', '', 'farid@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`commentId`),
  ADD KEY `postId` (`postId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`postId`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `commentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60002;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `postId` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1002;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10021;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`postId`) REFERENCES `posts` (`postId`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
