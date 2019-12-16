-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 16, 2019 at 02:11 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_card`
--

DROP TABLE IF EXISTS `tbl_card`;
CREATE TABLE IF NOT EXISTS `tbl_card` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(60) COLLATE utf8_bin NOT NULL,
  `CompanyName` varchar(30) COLLATE utf8_bin NOT NULL,
  `Logo` varchar(200) COLLATE utf8_bin NOT NULL,
  `Category` varchar(60) COLLATE utf8_bin NOT NULL,
  `avatar` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tbl_card`
--

INSERT INTO `tbl_card` (`ID`, `Name`, `CompanyName`, `Logo`, `Category`, `avatar`) VALUES
(1, 'The Beatles: Album Cover', 'The Beatles', 'beatles_album_cover.jpg', 'Package Design', 'beatles_album_cover.jpg'),
(2, 'Beaver Valley Brewing Co.', 'Beaver Valley Ski Club', 'beaver_valley_brewing.jpg', 'Branding, Package Design', 'beaver_valley_brewing.jpg'),
(3, 'Boston Whaler', 'Boston Whaler', 'boston_whaler.jpg', 'Advertising Campaign', 'boston_whaler.jpg'),
(4, 'On-Track Fitness', 'On-Track Fitness', 'on-track.jpg', 'Branding', 'on-track.jpg'),
(5, 'Overwatch Hero Counters', 'Blizzard Entertainment', 'overwatch.jpg', 'Graphic Design', 'overwatch.jpg'),
(6, 'ThermoSecurity', 'Housecom', 'thermosecurity.jpg', 'Branding, UI', 'thermosecurity.jpg'),
(7, 'Thames River Anglers Association', 'TRAA', 'traa.jpg', 'Web Design', 'traa.jpg'),
(8, 'Westjet: Go West', 'Westjet', 'westjet.jpg', 'Advertising Campaign', 'westjet.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_content`
--

DROP TABLE IF EXISTS `tbl_content`;
CREATE TABLE IF NOT EXISTS `tbl_content` (
  `ID` tinyint(4) NOT NULL AUTO_INCREMENT,
  `favID` tinyint(4) DEFAULT NULL,
  `bio` varchar(1000) DEFAULT NULL,
  `team` varchar(100) DEFAULT NULL,
  `featuredImg1` varchar(60) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `featuredImg2` varchar(60) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `featuredImg3` varchar(60) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `featuredImg4` varchar(60) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `projectLink` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_content`
--

INSERT INTO `tbl_content` (`ID`, `favID`, `bio`, `team`, `featuredImg1`, `featuredImg2`, `featuredImg3`, `featuredImg4`, `projectLink`) VALUES
(1, 1, 'By focusing on the minimal design of their earlier covers, I designed a “Greatest Hits” album which focuses on how much each member has changed since they have started. I aim to use a combination of photos from their earlier days in the Beatles and photos from now/before they died. I’m going to use primarily black and white as they used to but also throw in the colours that each individual band member wore on the Sgt. Pepper’s album cover (Paul blue, John yellow, George red and Ringo pink). On the main album cover, all of the Beatles are displayed with the Abbey Road silhouettes in their respective colours. The album will also have legacy covers which display one band member on each cover.', 'Alec Riddick', 'beatles-featured1.jpg', 'beatles-featured2.jpg', 'beatles-featured3.jpg', 'beatles-featured4.jpg', NULL),
(2, 2, 'The recently released cans for Beaver Valley Ski Club were met with approval by the majority of people that I talked to because of the minimal design, the legible text, and the colours were very representative of the ski club. The problem I found was that the club going to need to come up with new flavours to keep up the excitement. BVSC has a very active community of members and staff with races, competitions and events always happening. I tapped into this by taking a few of the more popular events and creating custom cans and flavours for each event. The flavours that I came up with were invented by a friend of mine who is a brew-master. Flavours like hard cider, dry Irish stout and pale ale are very popular right now, especially with the certain age groups.', 'Alec Riddick', 'bvsc-featured1.jpg', 'bvsc-featured2.jpg', 'bvsc-featured3.jpg', 'bvsc-featured4.jpg', NULL),
(3, 3, 'For our advertising campaign, we wanted to focus on the core feature of the Boston Whaler boats which is the durability of the boats which has lead to many promotional stunts, including one where a Whaler was cut in half and driven around. Keeping with this idea, we decided to create two bus shelter ads and one print ad. Our target audience are 70% males and 30% females between the ages of 40 to 55. They care about the reputation that comes from the purchases they make and tend to spend time up at the cottage or live in rural areas and commute to the city. The majority of our visuals rely on showing the Boston Whaler in area that most boats cannot travel, or cheekily relying on the unsinkable characteristics of the boat to remain consistent with the brand. ', 'Alec Riddick, Ian Dunlop', 'boston-featured1.jpg', 'boston-featured2.jpg', 'boston-featured3.jpg', NULL, NULL),
(4, 4, 'On-Track Fitness is a boutique gym located in Meaford, Ontario. Set to open in February 2019, OTF targets an older generation of clients who are aged 50 to 84\r\nyears old. We will mainly focus on adults located in Meaford but also extend our reach to the surrounding municipality and small town of Thornbury. The fitness\r\nindustry is worth a lot of money and is only going to increase. The baby boomer generation is also approaching the ages of 50 to 60 which creates a niche for a\r\nfitness market. We intend to compete with large franchises like YMCA, which has a facility in Owen Sound, by being close and convenient to our clients while\r\noffering personalized services for them to experience. OTF focuses on keeping clients healthy and happy and we want to work with our clients to help them achieve their goals.', 'Alec Riddick', NULL, NULL, NULL, NULL, 'biz_plan.pdf'),
(5, 5, 'I decided to break down the multitude of characters in the videogame, Overwatch and show the appropriate counters for each hero. In Overwatch, you and 5 other people fight against a team of 6 players for control of various objectives. You can choose any character you want, but there is an element of strategy when it comes to choosing because of the roles (damage, tank, healers), even if you can switch mid-game. When you spawn in, you don’t know who the enemy team has selected to play as, but once you encounter them, there might be a particular hero that is causing your team a lot of problems. By having the main hero icon down the center with their name underneath, the strengths and weaknesses can extend out to either side of the icon.', 'Alec Riddick', 'overwatch-featured1.jpg', NULL, NULL, NULL, NULL),
(6, 6, 'HouseCom™ ThermoSecurity™ System is a fully digital, hardwired and wireless (WiFi, Bluetooth) enabled home personal and secure environment control system. All communications with the central system are accessible and controlled through the wall unit, product app. and the secured portal on the parent website. Our team designed a parent site, an outer casing for the product (the structure was given to us), and a fully responsive UI design across Desktop, Tablet, Mobile, and SmartWatch screens. For more information on the product, check out the screenshots below!', 'Alec Riddick, Dana Marin-Garcia, Ife Obasa, Prahbjot Kaur, Prahbjot Kaur', 'thermo-featured1.jpg', 'thermo-featured2.jpg', 'thermo-featured3.jpg', 'thermo-featured4.jpg', NULL),
(7, 7, 'The TRAA is a volunteer organization, governed by a formal constitution and by-laws. An elected Executive, with the guidance of the General Membership, sets the policies and direction for the TRAA. The TRAA has a history of always having a core group of active members supported by those who just want to be part of the solution. Our concept for the design was based around condensing all of the information on their current site into optional flyout menus and smaller areas to allow for a more seamless scrolling experience. Users can now find exactly what they want faster and can choose what sections they want to learn more about.', 'Alec Riddick, Dana Marin-Garcia', 'traa-featured1.jpg', 'traa-featured2.jpg', 'traa-featured3.jpg', 'traa-featured4.jpg', NULL),
(8, 8, 'My plan for this was to effectively use a metaphorical execution to convey the reliability of WestJet’s services. I used a background location shot that is easily recognizable (Big Ben, Statue of Liberty, Peace Tower) with a cellphone taking a picture of the landmark along with a headline that states “Canada Wide Coverage on the Most Reliable Network” to give the initial impression that this is a cell phone advertisement. On closer inspection, you can see the WestJet plane flying in the sky near the landmark and the flight path is stated at the bottom with the WestJet logo.', 'Alec Riddick', 'west-featured1.jpg', 'west-featured2.jpg', 'west-featured3.jpg', 'west-featured4.jpg', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
