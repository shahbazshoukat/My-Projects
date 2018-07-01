-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2017 at 08:31 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admissionportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminID` int(6) NOT NULL,
  `adminPassword` varchar(50) NOT NULL,
  `entryTestdate` varchar(50) NOT NULL,
  `meritListdate` varchar(50) NOT NULL,
  `notification` varchar(250) NOT NULL,
  `uploadEntryTest` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminID`, `adminPassword`, `entryTestdate`, `meritListdate`, `notification`, `uploadEntryTest`) VALUES
(1, '1478963', '5-June-2017', '22-June-2017', 'subha ajao...!', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `entrytest`
--

CREATE TABLE `entrytest` (
  `qID` int(6) NOT NULL,
  `question` varchar(200) NOT NULL,
  `A` varchar(150) NOT NULL,
  `B` varchar(150) NOT NULL,
  `C` varchar(150) NOT NULL,
  `D` varchar(150) NOT NULL,
  `correctOption` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `entrytest`
--

INSERT INTO `entrytest` (`qID`, `question`, `A`, `B`, `C`, `D`, `correctOption`) VALUES
(1, 'CNG stands for?', 'Converted Natural Gas', 'Conduced Natural Gas', 'Conducted Natural Gas', 'Compressed Natural Gas', 'd'),
(2, 'When white light is passed through a prism, it splits into __________ colours.', '5', '6', '7', '8', 'b'),
(3, 'The speed of light is', '280,000 km/s', '300,000 km/s', '320,000 km/s', 'none of these', 'b'),
(4, 'who is founder of Pakistan.?', 'quaid-e-azem', 'zardari', 'imran khan', 'nawaz sharif', 'a'),
(5, 'The United Nations was founded on', 'March 24, 1945', 'October 24, 1945', 'March 24, 1949', 'October 24, 1950', 'b'),
(6, 'Which country from the following is NOT the member of UNO?', 'Vatican City', 'Afghanistan', 'North Korea', 'Vaitnam', 'b'),
(7, 'The International Court of Justice is located in ', 'New York', 'Washigton', 'Geneva', 'The Hague', 'a'),
(8, 'There are __________ members of SAARC.', '5', '6', '7', '8', 'c'),
(9, 'There are _________ non-permanent members of the security council.', '5', '7', '10', '12', 'a'),
(10, 'The currency of Indonesia is _________.', 'rupiah', 'dinar', 'rangit', 'riyal', 'd'),
(11, 'The D-8 is an organization of eight ________ countries.\";', 'developed', 'Asian', 'developing', 'African', 'c'),
(12, 'The headquarter of NATO is located in _________.', 'New York', 'Geneva', 'Paris', 'Brussels', 'a'),
(13, 'When white light is passed through a prism, it splits into __________ colours.', '5', '6', '7', '8', 'b'),
(14, 'When white light is passed through a prism, it splits into __________ colours.', '5', '6', '7', '8', 'c'),
(15, 'World Trade Organization was established in', '1990', '1980', '1985', '1995', 'd'),
(16, 'The motto of UNO is _________.', 'a', 'b', 'c', 'd', 'd'),
(17, 'The motto of UNO is _________.', 'Its your world', 'Peace', 'Life for All', 'Love and Peace', 'b'),
(18, 'Which country, on the map of world, appears as (Long Shoe)?', 'Portugal', 'Italy', 'Greece', 'Hungary', 'a'),
(19, 'Which from the following countries is NOT a member of D-8', 'india', 'pakistan', 'nepal', 'turkey', 'd'),
(20, 'The largest ocean of the world is __________.', 'Atlantic', 'Pacific', 'Indian', 'none', 'a'),
(21, 'The first Nobel Prize was awarded in __________ .', '1895', '1901', '1907', '1915', 'a'),
(22, 'CNG stands for?', 'Converted Natural Gas', 'Conduced Natural Gas', 'Conducted Natural Gas', 'Compressed Natural Gas', 'd'),
(23, 'The speed of light is', '280,000 km/s', '300,000 km/s', '320,000 km/s', '310,000 km/s', 'c'),
(24, 'who is founder of Pakistan.?', 'quaid-e-azem', 'zardari', 'imran khan', 'nawaz sharif', 'a'),
(25, 'The United Nations was founded on', '1990', '1980', '1945', '1915', 'a'),
(26, 'When white light is passed through a prism, it splits into __________ colours.', '5', '6', '7', '8', 'b'),
(27, 'total no.of rooms in KBW hostel?', '220', '222', '116', '174', 'b'),
(28, 'World Trade Organization was established in', '1990', '1901', '1907', '1915', 'a'),
(29, 'Total no.of rivers in Pakistan?', '2', '3', '4', '5', 'd'),
(30, '2X2= ?', '2', '4', '6', '8', 'b'),
(31, 'PU stands for?', 'Punjab University', 'Pakistan University', 'Public University', 'None', 'a'),
(32, 'Who is PM of pakistan?', 'Nawaz Sharif', 'Shahbaz Sharif', 'Zardari', 'Imaran Khan', 'a'),
(33, 'Total no.of months in year?', '10', '12', '11', '16', 'b'),
(34, 'No.of Days in week?', '7', '6', '5', '8', 'a'),
(35, 'Who is captain of Pakistan cricket team? ', 'Sarfraz', 'Misbah', 'Afridi', 'Javed', 'a'),
(36, 'Pakistan won World Cup in', '1992', '1983', '1999', '1996', 'a'),
(37, '3-3 = ?', '0', '3', '2', '1', 'a'),
(38, '5+5=?', '10', '0', '12', '15', 'a'),
(39, '4x3=?', '12', '21', '22', '7', 'a'),
(40, 'who is founder of Pakistan.?', 'quaid-e-azem', 'zardari', 'imran khan', 'nawaz sharif', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `meritlist_cs_a`
--

CREATE TABLE `meritlist_cs_a` (
  `meritID` int(11) NOT NULL,
  `stdID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meritlist_cs_m`
--

CREATE TABLE `meritlist_cs_m` (
  `meritID` int(11) NOT NULL,
  `stdID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meritlist_it_a`
--

CREATE TABLE `meritlist_it_a` (
  `meritID` int(11) NOT NULL,
  `stdID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meritlist_it_m`
--

CREATE TABLE `meritlist_it_m` (
  `meritID` int(11) NOT NULL,
  `stdID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meritlist_se_a`
--

CREATE TABLE `meritlist_se_a` (
  `meritID` int(11) NOT NULL,
  `stdID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meritlist_se_m`
--

CREATE TABLE `meritlist_se_m` (
  `meritID` int(11) NOT NULL,
  `stdID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `preference`
--

CREATE TABLE `preference` (
  `pID` int(11) NOT NULL,
  `stdID` int(11) NOT NULL,
  `p1` varchar(30) NOT NULL,
  `p2` varchar(30) NOT NULL,
  `p3` varchar(30) NOT NULL,
  `p4` varchar(30) NOT NULL,
  `p5` varchar(30) NOT NULL,
  `p6` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `preference`
--

INSERT INTO `preference` (`pID`, `stdID`, `p1`, `p2`, `p3`, `p4`, `p5`, `p6`) VALUES
(1, 1, 'SE Morning', 'SE Afternoon', 'CS Morning', 'CS Afternoon', 'IT Morning', 'IT Afternoon'),
(5, 5, 'SE Morning', 'CS Morning', 'IT Morning', 'SE Afternoon', 'CS Afternoon', 'IT Afternoon'),
(6, 6, 'IT Morning', 'CS Morning', 'SE Morning', 'IT Afternoon', 'SE Afternoon', 'SE Afternoon'),
(7, 7, 'SE Morning', 'CS Morning', 'IT Morning', 'SE Afternoon', 'CS Afternoon', 'IT Afternoon'),
(9, 9, 'SE Morning', 'CS Morning', 'IT Morning', 'SE Afternoon', 'CS Afternoon', 'IT Afternoon'),
(10, 9, 'SE Morning', 'CS Morning', 'IT Morning', 'SE Afternoon', 'CS Afternoon', 'IT Afternoon'),
(11, 11, 'CS Morning', 'CS Morning', 'SE Morning', 'CS Morning', 'CS Morning', 'CS Morning'),
(12, 12, 'CS Morning', 'CS Afternoon', 'IT Morning', 'CS Morning', 'CS Morning', 'IT Morning');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `resultID` int(11) NOT NULL,
  `stdID` int(11) NOT NULL,
  `q1` varchar(5) NOT NULL,
  `q2` varchar(5) NOT NULL,
  `q3` varchar(5) NOT NULL,
  `q4` varchar(5) NOT NULL,
  `q5` varchar(5) NOT NULL,
  `q6` varchar(5) NOT NULL,
  `q7` varchar(5) NOT NULL,
  `q8` varchar(5) NOT NULL,
  `q9` varchar(5) NOT NULL,
  `q10` varchar(5) NOT NULL,
  `q11` varchar(5) NOT NULL,
  `q12` varchar(5) NOT NULL,
  `q13` varchar(5) NOT NULL,
  `q14` varchar(5) NOT NULL,
  `q15` varchar(5) NOT NULL,
  `q16` varchar(5) NOT NULL,
  `q17` varchar(5) NOT NULL,
  `q18` varchar(5) NOT NULL,
  `q19` varchar(5) NOT NULL,
  `q20` varchar(5) NOT NULL,
  `q21` varchar(5) NOT NULL,
  `q22` varchar(5) NOT NULL,
  `q23` varchar(5) NOT NULL,
  `q24` varchar(5) NOT NULL,
  `q25` varchar(5) NOT NULL,
  `q26` varchar(5) NOT NULL,
  `q27` varchar(5) NOT NULL,
  `q28` varchar(5) NOT NULL,
  `q29` varchar(5) NOT NULL,
  `q30` varchar(5) NOT NULL,
  `q31` varchar(5) NOT NULL,
  `q32` varchar(5) NOT NULL,
  `q33` varchar(5) NOT NULL,
  `q34` varchar(5) NOT NULL,
  `q35` varchar(5) NOT NULL,
  `q36` varchar(5) NOT NULL,
  `q37` varchar(5) NOT NULL,
  `q38` varchar(5) NOT NULL,
  `q39` varchar(5) NOT NULL,
  `q40` varchar(5) NOT NULL,
  `obtainMarks` float NOT NULL,
  `aggregate` float NOT NULL,
  `degree` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`resultID`, `stdID`, `q1`, `q2`, `q3`, `q4`, `q5`, `q6`, `q7`, `q8`, `q9`, `q10`, `q11`, `q12`, `q13`, `q14`, `q15`, `q16`, `q17`, `q18`, `q19`, `q20`, `q21`, `q22`, `q23`, `q24`, `q25`, `q26`, `q27`, `q28`, `q29`, `q30`, `q31`, `q32`, `q33`, `q34`, `q35`, `q36`, `q37`, `q38`, `q39`, `q40`, `obtainMarks`, `aggregate`, `degree`) VALUES
(1, 1, 'd', 'b', 'b', 'a', 'b', 'd', 'a', 'c', 'b', 'c', 'c', 'd', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'c', 'b', 'd', 'b', 'a', 'c', 'c', 'b', 'b', 'd', 'b', 'a', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 22.5, 90.95, ''),
(2, 6, 'd', 'b', 'b', 'a', 'b', 'd', 'a', 'c', 'a', 'c', 'b', 'a', 'b', 'b', 'c', 'b', 'a', 'a', 'b', 'c', 'b', 'd', 'b', 'a', 'c', 'b', 'b', 'b', 'd', 'b', 'a', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 23.75, 80.95, ''),
(3, 5, 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'c', 'b', 'b', 'a', 'a', 'b', 'a', 'b', 'c', 'c', 'b', 'c', 'c', 'd', 'b', 'a', 'b', 'b', 'a', 'b', 'b', 'b', 'b', 'd', 'a', 'c', 'c', 'c', 'b', 'b', 'a', 'c', 1.25, 85.95, '');

-- --------------------------------------------------------

--
-- Table structure for table `result1`
--

CREATE TABLE `result1` (
  `resultID1` int(11) NOT NULL,
  `stdID` int(11) NOT NULL,
  `obtainMarks` float NOT NULL,
  `aggregate` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result1`
--

INSERT INTO `result1` (`resultID1`, `stdID`, `obtainMarks`, `aggregate`) VALUES
(1, 1, 35, 90.95),
(2, 6, 23.75, 80.95),
(3, 5, 1.25, 85.95);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `stdID` int(6) NOT NULL,
  `CNIC` varchar(13) NOT NULL,
  `email` varchar(70) NOT NULL,
  `password` varchar(30) NOT NULL,
  `stdName` varchar(50) NOT NULL,
  `fatherName` varchar(50) NOT NULL,
  `fatherCNIC` varchar(13) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `DOB` varchar(30) NOT NULL,
  `nationality` varchar(30) NOT NULL,
  `religion` varchar(30) NOT NULL,
  `domicile` varchar(30) NOT NULL,
  `phoneNo1` varchar(20) NOT NULL,
  `phoneNo2` varchar(20) NOT NULL,
  `homeAddress` varchar(120) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `matricYear` int(4) NOT NULL,
  `matricBoard` varchar(30) NOT NULL,
  `matricRollNo` varchar(30) NOT NULL,
  `matricStatus` varchar(30) NOT NULL,
  `matricTotalMarks` int(30) NOT NULL,
  `matricObtainMarks` int(30) NOT NULL,
  `matricMajors` varchar(30) NOT NULL,
  `intermediateYear` int(4) NOT NULL,
  `intermediateBoard` varchar(30) NOT NULL,
  `intermediateRollNo` varchar(30) NOT NULL,
  `intermediateStatus` varchar(30) NOT NULL,
  `intermediateTotalMarks` int(30) NOT NULL,
  `intermediateObtainMarks` int(30) NOT NULL,
  `intermediateMajors` varchar(30) NOT NULL,
  `entryTestStatus` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stdID`, `CNIC`, `email`, `password`, `stdName`, `fatherName`, `fatherCNIC`, `gender`, `DOB`, `nationality`, `religion`, `domicile`, `phoneNo1`, `phoneNo2`, `homeAddress`, `city`, `state`, `country`, `matricYear`, `matricBoard`, `matricRollNo`, `matricStatus`, `matricTotalMarks`, `matricObtainMarks`, `matricMajors`, `intermediateYear`, `intermediateBoard`, `intermediateRollNo`, `intermediateStatus`, `intermediateTotalMarks`, `intermediateObtainMarks`, `intermediateMajors`, `entryTestStatus`) VALUES
(1, '3520187240883', 'bsef15m019@pucit.edu.pk', '1133557799', 'Arslan', 'Ishfaq', '1234567891234', 'Male', '12-April-1996', 'pakistan', 'islam', 'punjab', '03213220124', '03014255300', 'street#55,home#664,mujahidabad mughalpura lahore', 'lahore', 'punjab', 'pakistan', 2013, 'Lahore', '24682468', 'annual', 1050, 1006, 'science', 2015, 'Lahore', '1357913579', 'annual', 1100, 970, 'fsc', 'yes'),
(5, '3520111629431', 'student@pucit.com', 'student', 'Shahbaz', 'shoukat', '0987431237890', 'Male', '18-April-1996', 'pakistan', 'islam', 'punjab', '03084929198', '03054115601', 'Kacha road Kahna nau Lahore', 'lahore', 'punjab', 'pakistan', 2013, 'Lahore', '24682468', 'annual', 1050, 986, 'science', 2015, 'Lahore', '364366', 'annual', 1100, 987, 'fsc', 'yes'),
(6, '3520187156333', 'mehranalihcc@gmail.com', '1234567', 'Mehran', 'Ishfaq', '1234567891011', 'Male', '12-February-1995', 'pakistan', 'islam', 'punjab', '03014255300', '030248453290', 'h # 664, st # 55, Muhala mujahidabad mughal pura lahore.', 'lahore', 'punjab', 'pakistan', 2011, 'Lahore', '123', 'annual', 1050, 851, 'Science', 2013, 'Lahore', '123', 'annual', 1100, 800, 'I.Com', 'yes'),
(7, '3510207305345', 'bsef15m016@pucit.edu.pk', 'ss11ss22', 'Sohaib', 'Asghar', '1234567891234', 'Male', '16-janaury-1996', 'pakistan', 'islam', 'punjab', '03017047305', '03017047305', 'dholan hithar d/t kasur', 'kasur', 'punjab', 'pakistan', 2013, 'Lahore', '154520', 'annual', 1050, 1010, 'Science', 2015, 'Lahore', '3755', 'annual', 1100, 970, 'F.S.C', 'no'),
(9, '3520187240883', 'mehranishfaq1122@gmail.com', 'asdfghjkl', 'Umer', 'ijaz', '1234567891234', 'Male', '15-Octuber-1996', 'pakistan', 'islam', 'punjab', '03014255300', '03054115601', 'House No 14 Bashir Town SAHIWAL', 'lahore', 'punjab', 'pakistan', 2013, 'Lahore', '100000', 'annual', 1050, 999, 'Science', 2015, 'Lahore', '200000', 'annual', 1100, 999, 'F.S.C', 'no'),
(10, '3520187240883', 'mehranishfaq1122@gmail.com', 'asdfghjkl', 'Umer', 'ijaz', '1234567891234', 'Male', '17-November-1997', 'pakistan', 'islam', 'punjab', '03213220124', '030248453290', 'Kacha road Kahna nau Lahore', 'lahore', 'punjab', 'pakistan', 2013, 'Lahore', '100000', 'annual', 1050, 986, 'Science', 2015, 'Lahore', '3755', 'annual', 1100, 970, 'F.S.C', 'no'),
(11, '3520111629431', 'mehranishfaq1122@gmail.com', '11111111', 'Arslan', 'Ishfaq', '0987431237890', 'Male', '15-November-1997', 'pakistan', 'islam', 'balochistan', '03213220124', '03014255300', 'Kacha road Kahna nau Lahore', 'kasur', 'punjab', 'pakistan', 2017, 'Lahore', '24682468', 'annual', 1050, 1006, 'Science', 2012, 'Lahore', '1357913579', 'annual', 1100, 987, 'F.S.C', 'no'),
(12, '3650276716331', 'mehranishfaq1122@gmail.com', '11111111', 'Umer', 'Niaz Ahmad', '0987431237890', 'Male', '13-June-1995', 'pakistan', 'islam', 'KPK', '03084929198', '030248453290', 'House No 14 Bashir Town SAHIWAL', 'lahore', 'punjab', 'pakistan', 2016, 'Lahore', '24682468', 'annual', 1050, 1006, 'Science', 2010, 'Lahore', '3755', 'annual', 1100, 987, 'F.S.C', 'no');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminID`);

--
-- Indexes for table `entrytest`
--
ALTER TABLE `entrytest`
  ADD PRIMARY KEY (`qID`);

--
-- Indexes for table `meritlist_cs_a`
--
ALTER TABLE `meritlist_cs_a`
  ADD PRIMARY KEY (`meritID`),
  ADD KEY `stdID` (`stdID`);

--
-- Indexes for table `meritlist_cs_m`
--
ALTER TABLE `meritlist_cs_m`
  ADD PRIMARY KEY (`meritID`),
  ADD KEY `stdID` (`stdID`);

--
-- Indexes for table `meritlist_it_a`
--
ALTER TABLE `meritlist_it_a`
  ADD PRIMARY KEY (`meritID`),
  ADD KEY `stdID` (`stdID`);

--
-- Indexes for table `meritlist_it_m`
--
ALTER TABLE `meritlist_it_m`
  ADD PRIMARY KEY (`meritID`),
  ADD KEY `stdID` (`stdID`);

--
-- Indexes for table `meritlist_se_a`
--
ALTER TABLE `meritlist_se_a`
  ADD PRIMARY KEY (`meritID`),
  ADD KEY `stdID` (`stdID`);

--
-- Indexes for table `meritlist_se_m`
--
ALTER TABLE `meritlist_se_m`
  ADD PRIMARY KEY (`meritID`),
  ADD KEY `stdID` (`stdID`);

--
-- Indexes for table `preference`
--
ALTER TABLE `preference`
  ADD PRIMARY KEY (`pID`),
  ADD KEY `stdID` (`stdID`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`resultID`),
  ADD KEY `stdID` (`stdID`);

--
-- Indexes for table `result1`
--
ALTER TABLE `result1`
  ADD PRIMARY KEY (`resultID1`),
  ADD KEY `stdID` (`stdID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`stdID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `entrytest`
--
ALTER TABLE `entrytest`
  MODIFY `qID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `meritlist_cs_a`
--
ALTER TABLE `meritlist_cs_a`
  MODIFY `meritID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meritlist_cs_m`
--
ALTER TABLE `meritlist_cs_m`
  MODIFY `meritID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meritlist_it_a`
--
ALTER TABLE `meritlist_it_a`
  MODIFY `meritID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meritlist_it_m`
--
ALTER TABLE `meritlist_it_m`
  MODIFY `meritID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meritlist_se_a`
--
ALTER TABLE `meritlist_se_a`
  MODIFY `meritID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meritlist_se_m`
--
ALTER TABLE `meritlist_se_m`
  MODIFY `meritID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `preference`
--
ALTER TABLE `preference`
  MODIFY `pID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `resultID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `result1`
--
ALTER TABLE `result1`
  MODIFY `resultID1` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `stdID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `meritlist_cs_a`
--
ALTER TABLE `meritlist_cs_a`
  ADD CONSTRAINT `meritlist_cs_a_ibfk_1` FOREIGN KEY (`stdID`) REFERENCES `result1` (`stdID`);

--
-- Constraints for table `meritlist_cs_m`
--
ALTER TABLE `meritlist_cs_m`
  ADD CONSTRAINT `meritlist_cs_m_ibfk_1` FOREIGN KEY (`stdID`) REFERENCES `result1` (`stdID`);

--
-- Constraints for table `meritlist_it_a`
--
ALTER TABLE `meritlist_it_a`
  ADD CONSTRAINT `meritlist_it_a_ibfk_1` FOREIGN KEY (`stdID`) REFERENCES `result1` (`stdID`);

--
-- Constraints for table `meritlist_it_m`
--
ALTER TABLE `meritlist_it_m`
  ADD CONSTRAINT `meritlist_it_m_ibfk_1` FOREIGN KEY (`stdID`) REFERENCES `result1` (`stdID`);

--
-- Constraints for table `meritlist_se_a`
--
ALTER TABLE `meritlist_se_a`
  ADD CONSTRAINT `meritlist_se_a_ibfk_1` FOREIGN KEY (`stdID`) REFERENCES `result1` (`stdID`);

--
-- Constraints for table `meritlist_se_m`
--
ALTER TABLE `meritlist_se_m`
  ADD CONSTRAINT `meritlist_se_m_ibfk_1` FOREIGN KEY (`stdID`) REFERENCES `result1` (`stdID`);

--
-- Constraints for table `preference`
--
ALTER TABLE `preference`
  ADD CONSTRAINT `preference_ibfk_1` FOREIGN KEY (`stdID`) REFERENCES `student` (`stdID`);

--
-- Constraints for table `result`
--
ALTER TABLE `result`
  ADD CONSTRAINT `result_ibfk_1` FOREIGN KEY (`stdID`) REFERENCES `student` (`stdID`);

--
-- Constraints for table `result1`
--
ALTER TABLE `result1`
  ADD CONSTRAINT `result1_ibfk_1` FOREIGN KEY (`stdID`) REFERENCES `student` (`stdID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
