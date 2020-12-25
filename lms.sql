-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 24, 2020 at 09:25 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `bookID` varchar(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `publisher` varchar(100) DEFAULT NULL,
  `price` varchar(10) DEFAULT NULL,
  `publisherYear` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`bookID`, `name`, `publisher`, `price`, `publisherYear`) VALUES
('1', '1', 'asd', '1230tk', '2019'),
('2', 'Green', 'RK', '150tk', '2018'),
('20', 'Corona Virus', 'Washi', '1000$', '2020'),
('5', 'White', 'Arnob Ahmed', '140$', '2015');

-- --------------------------------------------------------

--
-- Table structure for table `issue`
--

CREATE TABLE `issue` (
  `bookID` varchar(10) DEFAULT NULL,
  `studentID` varchar(10) DEFAULT NULL,
  `issueDate` varchar(20) DEFAULT NULL,
  `dueDate` varchar(20) DEFAULT NULL,
  `returnBook` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `issue`
--

INSERT INTO `issue` (`bookID`, `studentID`, `issueDate`, `dueDate`, `returnBook`) VALUES
('1', '123', '03-12-2020', '05-12-2020', 'NO'),
('20', '10', '10-12-2020', '12-12-2020', 'NO');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `studentID` varchar(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `fatherName` varchar(100) DEFAULT NULL,
  `courseName` varchar(200) DEFAULT NULL,
  `branchName` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`studentID`, `name`, `fatherName`, `courseName`, `branchName`) VALUES
('10', 'Inzamul', 'Abdur', 'B.Tech', 'IT'),
('12', 'Arnob', 'X', 'B.Tech', 'CSE'),
('123', 'Iftekhar', 'Abdur', 'B.Tech', 'CSE'),
('13', 'I', 'X', 'Software Project', 'CSE'),
('15', 'Sifat', 'Rahim', 'Software Project', 'IT'),
('33', 'Fahad', 'Washi', 'Software Project', 'CIVIL');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`bookID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`studentID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
