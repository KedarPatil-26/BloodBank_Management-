-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2023 at 10:16 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bbdms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'abc', '2020-09-12 14:28:52');

-- --------------------------------------------------------

--
-- Table structure for table `tblblooddonars`
--

CREATE TABLE `tblblooddonars` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(15) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `BloodGroup` varchar(20) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblblooddonars`
--

INSERT INTO `tblblooddonars` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Gender`, `Age`, `BloodGroup`, `Address`, `Message`, `PostingDate`, `status`) VALUES
(10, 'Kedar', '+917000248001', 'kedar@gmail.com', 'Male', 21, 'A+', 'India', ' ', '2020-09-11 16:43:55', 1),
(13, 'Ajay Kumar', '9787897457', '', 'Male', 20, 'O-', 'Navi Mumbai', ' ', '2020-09-12 08:33:15', 1),
(15, 'Ashir Durar', '+919702294455', 'duragkarashir@gmail.com', 'Male', 20, 'A+', '102, New Horizon, Plot No.1, Sector 46', ' ', '2020-09-13 10:29:54', 1),
(17, 'Austin Monteiro', '9876543423', 'austinrox@gmail.com', 'Male', 20, 'O+', 'Navi Mumbai', ' Bloodless is cool!', '2020-09-13 12:30:41', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblbloodgroup`
--

CREATE TABLE `tblbloodgroup` (
  `id` int(11) NOT NULL,
  `BloodGroup` varchar(20) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbloodgroup`
--

INSERT INTO `tblbloodgroup` (`id`, `BloodGroup`, `PostingDate`) VALUES
(1, 'A-', '2020-09-10 09:33:50'),
(2, 'A+', '2020-09-10 09:34:00'),
(3, 'O-', '2020-09-10 09:34:05'),
(4, 'O+', '2020-09-10 09:34:10'),
(5, 'AB-', '2020-09-10 09:34:13'),
(6, 'AB+', '2017-07-01 09:34:18');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Ashir Duragkar																						', 'duragkarashir@gmail.com', '9996664441');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(6, 'Ashir Duragkar', 'duragkarashir@gmail.com', '+9197022944', 'hi', '2020-09-11 17:22:56', 1),
(7, 'Ashir Duragkar', 'duragkarashir@gmail.com', '+9197022944', 'give me blood', '2020-09-11 17:23:10', 1),
(8, 'Ashir Duragkar', 'duragkarashir@gmail.com', '+9197022944', 'Contact Me', '2020-09-12 08:36:05', NULL),
(9, 'Vishal', 'abs@gmail.com', '100', 'akljhdfa', '2020-09-12 14:30:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(2, 'Why Become Donor', 'donor', '																																								<span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;\">Donating blood</span><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;\"><span style=\"font-weight: bold;\">&nbsp;</span>regularly is beneficial to prevent and reduce heart attacks and liver ailment. The isk of heart and liver related problem is caused by the iron overload in the body. Donating blood</span><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;\"><span style=\"font-weight: bold;\">&nbsp;</span>helps in maintaining the iron level in the body and thus reduce those risk. Cancer is the most feared and deadly donation.</span>\r\n										<div><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;\"><br></span></div><div><p style=\"padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\"><span style=\"font-weight: 700;\">1. Reduce risk of heart attacks and liver ailment</span></p><p style=\"padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\">Donating blood regularly is beneficial to prevent and reduce heart attacks and liver ailment. The risk of heart and liver related problem is caused by the iron overload in the body. Donating blood helps in maintaining the iron level in the body and thus reduce those risk.</p><p style=\"padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\"><span style=\"font-weight: 700;\">2. Lower the risk of cancer</span></p><p style=\"padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\">Cancer is the most feared and deadly disease. Blood donation helps in lowering the risk of cancer. By donating blood regularly the iron level in the blood is balanced and the risk of cancer-related to the liver, lungs, and intestine gets lower.</p><p style=\"padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\"><span style=\"font-weight: 700;\">3. New blood cells</span></p><p style=\"padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\">Once we donate blood, the body tries to restore the blood loss. This helps in the production of the new blood cells and maintain good health.</p><p style=\"padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\"><span style=\"font-weight: 700;\">4. Reduced risk of hemochromatosis</span></p><p style=\"padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\">Hemochromatosis is a disease that occurs due to increase in the absorption of iron by the body. Blood donation helps in reducing iron overload in the body and prevent Hemochromatosis.</p><p style=\"padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\"><span style=\"font-weight: 700;\">5. Maintain Weight</span></p><p style=\"padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\">It is recommended to donate blood for those who are overweight. Regularly donating blood helps in weight loss and burn fat up to 650 calories.</p><p style=\"padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\"><span style=\"font-weight: 700;\">6. Helps prevent premature ageing.</span></p><p style=\"padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\">While donating blood, you not only lose weight but it also helps in reducing stress. Stress is one of the reasons that triggers premature ageing. Blood donation helps in reducing stress on your mind and body. Also, keeps the skin tight and wrinkle-free.</p><p style=\"padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\"><span style=\"font-weight: 700;\">7.&nbsp;</span><span style=\"font-weight: 700;\">Speeds up healing process</span></p><p style=\"padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\">The body tries to adjust to the loss of red blood the cells we donate blood, these adjustments also help in accelerating the wound healing process.</p><p style=\"padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\"><span style=\"font-weight: 700;\">8. Lower cholesterol level</span></p><p style=\"padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\">Blood contains iron, if the iron in blood is overloaded it can increase the chances of blockage in blood vessels. Blood donation can help to reduce the amount of iron in the blood thus helps in lower cholesterol.</p><p style=\"padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\"><span style=\"font-weight: 700;\">9. Free Medical checkup</span></p><p style=\"padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\">Every donor goes through a routine checkup prior to donation. Body temperature is checked along with blood pressure, hemoglobin and pulse. Blood is tested for 13 infectious disease like HIV, West Nile Virus, hepatitis B and C and Syphilis. It gives you a cost free quick look into your health.</p><p style=\"padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\"><span style=\"font-weight: 700;\">10. Live a longer life</span></p><p style=\"padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\">The people who involve in the altruistic work have proven to live a longer life. Blood donation is altruistic works so it not only save lives of other but also helps you live longer and healthier.</p><p style=\"padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\"><span style=\"font-weight: 700;\">11. Psychological Upliftment</span></p><p style=\"padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\">Beside all the heathy benefits that we obtain by donating blood, we also get the powerful benefit psychologically by helping the one in need.</p><p style=\"padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\"><span style=\"font-weight: 700;\">12. Blood storage</span></p><p style=\"padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\">There is no other method to manufacture blood; the only way to collect blood is from the people who are willing to donate. The blood that we donate is also stored at the blood bank after their usage and used in future when needed. Some chemicals are added to it in order to preserve it for long time and use it in future when needed.</p><p style=\"padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\"><span style=\"font-weight: 700;\">13.&nbsp;</span><span style=\"font-weight: 700;\">Save lives</span></p><p style=\"padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\">Every time we donate one pint of blood it helps save three lives, so if we donate four times in a year we end up saving 12 lives. We don’t have to be a superhero to save someone, a simple act of donating blood can also save lives.</p></div>\r\n										'),
(3, 'About Us ', 'aboutus', '										<div style=\"text-align: justify;\"><span id=\"docs-internal-guid-b4d0497c-7fff-f29e-f6c8-4ea3ceea3b09\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">The Blood Donation software is created inorder to help our nation as every&nbsp; year&nbsp; our&nbsp; nation&nbsp; requires&nbsp; about&nbsp; 4&nbsp; Cr. units of blood, out of which only 5 Lakh units of blood are available. It is not that people do not want to donate blood. Often they are unaware of the need and also they do not have a proper facility to enquire about it. As a result, needy people end up going through a lot of pain. India has many blood banks, all-functioning in a decentralized fashion. In the current system, individual hospitals have their own blood banks and there is no interaction between blood banks.</span></p><br><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">Online Blood Donation Management System project is aimed at developing an online Blood Donation Information. The entire Online Blood Donation management System project has been developed keeping in view of the distributed client server computing technology, in mind. The Blood Donation Agent is to create an e-Information about the donor and organization that are related to donating the blood. Through this Online Blood Donation management System application any person who is interested in donating the blood can register himself in the same way if any organization wants to register itself with this site that can also register. Any general consumer can make a request from this site by registering a query. Admin is the main authority who can do addition, deletion, and modification if required.</span></p><div><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\"><br></span></div></span></div>\r\n										');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblblooddonars`
--
ALTER TABLE `tblblooddonars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbloodgroup`
--
ALTER TABLE `tblbloodgroup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblblooddonars`
--
ALTER TABLE `tblblooddonars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tblbloodgroup`
--
ALTER TABLE `tblbloodgroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
