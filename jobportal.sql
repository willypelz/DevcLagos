-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2017 at 05:56 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `jobportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`id` int(255) NOT NULL,
  `adminid` varchar(300) NOT NULL,
  `username` varchar(300) NOT NULL,
  `password` varchar(64) NOT NULL,
  `salt` varchar(32) NOT NULL,
  `name` varchar(300) NOT NULL,
  `email` text NOT NULL,
  `imagelocation` text NOT NULL,
  `tokencode` text NOT NULL,
  `joined` datetime NOT NULL,
  `user_type` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `adminid`, `username`, `password`, `salt`, `name`, `email`, `imagelocation`, `tokencode`, `joined`, `user_type`) VALUES
(1, '1471436678', 'willypelz', 'c31b9f24bc330dc873cb756810b3442ef7f3f38fa9c6abad553114bf820ad7eb', 'Îgî_º²Eràêt\nPÇ¨+5Ýwú™_@-ì¯ìÿÂ', 'Asefon Michael', 'pelumiasefon@gmail.com', 'uploads/15100813290170117_150812.jpg', '', '2016-08-17 14:24:38', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bugs`
--

CREATE TABLE IF NOT EXISTS `bugs` (
`id` int(255) NOT NULL,
  `jobid` varchar(300) NOT NULL,
  `reporter` varchar(300) NOT NULL,
  `title` varchar(300) NOT NULL,
  `priority` varchar(300) NOT NULL,
  `severity` varchar(300) NOT NULL,
  `description` mediumtext NOT NULL,
  `reproducibility` mediumtext NOT NULL,
  `fixed` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bugs`
--

INSERT INTO `bugs` (`id`, `jobid`, `reporter`, `title`, `priority`, `severity`, `description`, `reproducibility`, `fixed`, `date_added`) VALUES
(3, '235342756190', '461111766379', 'Having issues with installing software', 'High', 'Show Stopper', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras sit amet imperdiet augue. Curabitur commodo suscipit enim at luctus. Ut imperdiet consequat lacus, in faucibus sapien rutrum eget.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras sit amet imperdiet augue. Curabitur commodo suscipit enim at luctus. Ut imperdiet consequat lacus, in faucibus sapien rutrum eget.', 0, '2016-12-28 14:27:21'),
(5, '235342756190', '228670680670', 'Code not working', 'Medium', 'Show Stopper', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean eget dapibus ante, ut tristique nisl. Mauris in felis faucibus, sagittis turpis nec, dignissim est.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean eget dapibus ante, ut tristique nisl. Mauris in felis faucibus, sagittis turpis nec, dignissim est. ', 0, '2017-01-06 13:20:44');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
`id` int(255) NOT NULL,
  `catid` varchar(300) NOT NULL,
  `icon` varchar(300) NOT NULL,
  `name` varchar(300) NOT NULL,
  `sub_category` mediumtext NOT NULL,
  `active` tinyint(4) NOT NULL,
  `delete_remove` tinyint(4) NOT NULL,
  `item_order` tinyint(4) NOT NULL,
  `date_added` varchar(300) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `catid`, `icon`, `name`, `sub_category`, `active`, `delete_remove`, `item_order`, `date_added`) VALUES
(10, '1510112156', 'fa-archive', 'others', 'coming back for you', 1, 0, 4, '2017-11-08 04:35:56'),
(11, '1510112186', 'fa-archive', 'Front-end developer', 'front end', 1, 0, 1, '2017-11-08 04:36:26'),
(12, '1510112205', 'fa-archive', 'Back-End developer', 'back end', 1, 0, 2, '2017-11-08 04:36:45'),
(13, '1510112237', 'fa-archive', 'Full Stack developer', 'full stack', 1, 0, 3, '2017-11-08 04:37:17');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
`id` int(255) NOT NULL,
  `clientid` varchar(300) NOT NULL,
  `username` varchar(300) NOT NULL,
  `password` varchar(64) NOT NULL,
  `salt` varchar(32) NOT NULL,
  `name` varchar(300) NOT NULL,
  `email` text NOT NULL,
  `phone` varchar(300) NOT NULL,
  `payment` varchar(300) NOT NULL,
  `imagelocation` text NOT NULL,
  `bgimage` text NOT NULL,
  `tokencode` text NOT NULL,
  `joined` datetime NOT NULL,
  `active` int(11) NOT NULL,
  `delete_remove` int(11) NOT NULL,
  `user_type` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `clientid`, `username`, `password`, `salt`, `name`, `email`, `phone`, `payment`, `imagelocation`, `bgimage`, `tokencode`, `joined`, `active`, `delete_remove`, `user_type`) VALUES
(3, '228670680670', 'Client', '44f83ef0489ddae8e947bdbc4b6d7a27ed91e5b273c6b15773f07a53559eafb5', '~J[Ÿ±†:d„µ¼ýðnÝ0«n@k	Åwo~', 'Asefon Michael', 'client@gmail.com', '08072065173', '', 'uploads/15105589190170125-WA0061.jpg', 'uploads/bg/1483153982-1.jpg', '', '2016-09-30 15:55:28', 1, 0, 1),
(4, '423889306001', 'Alex', 'a0713c6743b50cc5d0258b9cf1074922eb688f6fae2889b9033578b09a86fa2c', '„øÍìç=YÆJð<Úb:@:YÌQ£&ß¿QÓñÏØ$', 'Alex Garrate', 'alex@mail.com', '0704144041', '', 'uploads/1476966223.png', 'uploads/bg/1484141984-1428677361686-f9d23be145c9.jpg', '', '2016-10-20 15:23:43', 0, 1, 1),
(5, '313338960422', 'Christopher', 'e4f959602c741890bcdeafb5dd9647a35704091302a4ddca830b1e8127870560', 'Œ	îÐ’\n½{›·ÈaÍÈ€Œsúê¶ƒÔ,áÈÖ‚`h®x§', 'Christopher Di', 'christopher@gmail.com', '', '', 'uploads/default.png', '', '', '2017-01-05 13:35:02', 0, 1, 1),
(6, '209309377012', 'Griego', '47ca99883f129bfc25b027065e300dc66d438b362a376c2c2a0b46af1660cda3', 'ç³;£4®¿N¢%ŽYŒVÍÎYê,°ú*Œ"=''™X', 'Eric Griego', 'eric@gmail.com', '', '', 'uploads/default.png', '', '', '2017-02-07 14:25:07', 0, 1, 1),
(7, '986689491955', 'willypelz', '3ac49bd534757747d3368fa5d3e800068c93c21c59ca6d2ec523cff42dfc9f8e', 'ç3H¨~®ìÎ4¦ØGû}hP„‚³t‚ŽÞ²š\nš#€ï', 'Asefon Michael', 'pelumiasefon@gmail.com', '', '', 'uploads/default.png', '', '', '2017-11-07 21:02:08', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE IF NOT EXISTS `currency` (
`id` int(255) NOT NULL,
  `currency_code` varchar(300) NOT NULL,
  `currency_name` varchar(300) NOT NULL,
  `currency_symbol` varchar(300) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `currency_code`, `currency_name`, `currency_symbol`, `date_added`) VALUES
(1, 'USD', 'US Dollar', '$', '2017-01-06 18:10:14'),
(2, 'AUD', 'Australian dollar', '$', '2017-01-06 18:12:26'),
(3, 'BRL', 'Brazilian real', 'R$', '2017-01-06 18:13:42'),
(5, 'CAD', 'Canadian dollar', '$', '2017-01-06 18:28:49'),
(6, 'CLP', 'Chilean peso', '$', '2017-01-06 18:29:49'),
(7, 'CNY', 'Chinese yuan', 'Â¥', '2017-01-06 18:45:23'),
(8, 'DKK', 'Danish krone', 'kr', '2017-01-06 18:46:47'),
(9, 'EUR', 'Euro', 'â‚¬', '2017-01-06 18:47:35'),
(10, 'HKD', 'Hong Kong dollar', '$', '2017-01-06 18:48:36'),
(11, 'INR', 'Indian rupee', 'â‚¹', '2017-01-06 18:49:26'),
(12, 'IDR', 'Indonesian rupiah', 'Rp', '2017-01-06 21:51:54'),
(13, 'ILS', 'Israeli new shekel', 'â‚ª', '2017-01-06 21:53:09'),
(14, 'JPY', 'Japanese yen', 'Â¥', '2017-01-06 21:54:13'),
(15, 'KES', 'Kenyan shilling', 'Sh', '2017-01-06 21:55:20'),
(16, 'KPW', 'North Korean won', 'â‚©', '2017-01-06 21:56:20'),
(17, 'KRW', 'South Korean won', 'â‚©', '2017-01-06 21:57:08'),
(18, 'MYR', 'Malaysian ringgit', 'RM', '2017-01-06 21:58:22'),
(19, 'MXN', 'Mexican peso', '$', '2017-01-06 21:59:20'),
(20, 'NZD', 'New Zealand dollar', '$', '2017-01-06 22:00:34'),
(21, 'NOK', 'Norwegian krone', 'kr', '2017-01-06 22:01:32'),
(22, 'PKR', 'Pakistani rupee', 'â‚¨', '2017-01-06 22:02:35'),
(23, 'PLN', 'Polish zÅ‚oty', 'zÅ‚', '2017-01-06 22:03:32'),
(24, 'PHP', 'Philippine peso', 'â‚±', '2017-01-06 22:04:48'),
(25, 'RUB', 'Russian ruble', 'â‚½', '2017-01-06 22:08:42'),
(26, 'SGD', 'Singapore dollar', '$', '2017-01-06 22:09:47'),
(27, 'ZAR', 'South African rand', 'R', '2017-01-06 22:12:54'),
(28, 'SEK', 'Swedish krona', 'kr', '2017-01-06 22:13:58'),
(29, 'CHF', 'Swiss franc', 'Fr', '2017-01-06 22:14:41'),
(30, 'TWD', 'New Taiwan dollar', '$', '2017-01-06 22:15:53'),
(31, 'TRY', 'Turkish lira', 'â‚º', '2017-01-06 22:17:25'),
(32, 'AED', 'United Arab Emirates dirham', 'Ø¯.Ø¥', '2017-01-06 22:18:34'),
(33, 'Naira', 'Nigeria', '#', '2017-11-07 20:58:12');

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE IF NOT EXISTS `file` (
`id` int(255) NOT NULL,
  `jobid` varchar(300) NOT NULL,
  `freelancerid` varchar(300) NOT NULL,
  `title` varchar(300) NOT NULL,
  `description` mediumtext NOT NULL,
  `file_name` varchar(300) NOT NULL,
  `fileupload` varchar(300) NOT NULL,
  `type` varchar(300) NOT NULL,
  `extension` varchar(300) NOT NULL,
  `size` varchar(50) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `file`
--

INSERT INTO `file` (`id`, `jobid`, `freelancerid`, `title`, `description`, `file_name`, `fileupload`, `type`, `extension`, `size`, `date_added`) VALUES
(3, '235342756190', '461111766379', 'Basic Canvas', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis id ullamcorper erat, in ornare urna. Mauris sed dolor a elit eleifend semper. Integer congue sapien nec risus iaculis, ut lacinia velit malesuada.', '1482757956ess_Model_Canvas.pdf', 'uploads/files/1482757956ess_Model_Canvas.pdf', 'application/pdf', 'pdf', '448.7158203125', '2016-12-26 16:12:36'),
(4, '235342756190', '461111766379', 'PDF Test', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis id ullamcorper erat, in ornare urna. Mauris sed dolor a elit eleifend semper. Integer congue sapien nec risus iaculis, ut lacinia velit malesuada.', '1482761061ND MYSQL NOTES.pdf', 'uploads/files/1482761061ND MYSQL NOTES.pdf', 'application/pdf', 'pdf', '348.99609375', '2016-12-26 17:04:21'),
(5, '235342756190', '461111766379', 'Word Test', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis id ullamcorper erat, in ornare urna. Mauris sed dolor a elit eleifend semper. Integer congue sapien nec risus iaculis, ut lacinia velit malesuada.', '1482761323links.docx', 'uploads/files/1482761323links.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'docx', '2.8515625', '2016-12-26 17:08:43'),
(6, '235342756190', '461111766379', 'Powerpoint Test', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis id ullamcorper erat, in ornare urna. Mauris sed dolor a elit eleifend semper. Integer congue sapien nec risus iaculis, ut lacinia velit malesuada.', '1482761486and Css.pptx', 'uploads/files/1482761486and Css.pptx', 'application/vnd.openxmlformats-officedocument.presentationml.presentation', 'pptx', '62.4482421875', '2016-12-26 17:11:26'),
(7, '235342756190', '461111766379', 'Tallest Building in Chicago', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi maximus turpis neque, at varius lacus auctor nec. Ut sollicitudin vel ligula sit amet rhoncus.', '1482843859st_buildings_in_Chicago.png', 'uploads/files/1482843859st_buildings_in_Chicago.png', 'image/png', 'png', '109.8447265625', '2016-12-27 15:56:23'),
(8, '770864481184', '454243422562', 'Tallest Building in Chicago', 'Tallest Building in Chicago', '1486394619st_buildings_in_Chicago.png', 'uploads/files/1486394619st_buildings_in_Chicago.png', 'image/png', 'png', '109.8447265625', '2017-02-06 18:23:39'),
(9, '770864481184', '454243422562', 'PDF Test', 'PDF', '1486394758ce INV0009.pdf', 'uploads/files/1486394758ce INV0009.pdf', 'application/pdf', 'pdf', '43.26953125', '2017-02-06 18:25:58');

-- --------------------------------------------------------

--
-- Table structure for table `freelancer`
--

CREATE TABLE IF NOT EXISTS `freelancer` (
`id` int(255) NOT NULL,
  `freelancerid` varchar(300) NOT NULL,
  `username` varchar(300) NOT NULL,
  `password` varchar(64) NOT NULL,
  `salt` varchar(32) NOT NULL,
  `name` varchar(300) NOT NULL,
  `email` text NOT NULL,
  `phone` varchar(300) NOT NULL,
  `imagelocation` text NOT NULL,
  `bgimage` text NOT NULL,
  `tokencode` text NOT NULL,
  `joined` datetime NOT NULL,
  `active` int(11) NOT NULL,
  `delete_remove` int(11) NOT NULL,
  `user_type` int(11) NOT NULL,
  `membershipid` varchar(300) NOT NULL,
  `membership_bids` varchar(300) NOT NULL,
  `membership_date` datetime NOT NULL,
  `schedule_payments` varchar(300) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `freelancer`
--

INSERT INTO `freelancer` (`id`, `freelancerid`, `username`, `password`, `salt`, `name`, `email`, `phone`, `imagelocation`, `bgimage`, `tokencode`, `joined`, `active`, `delete_remove`, `user_type`, `membershipid`, `membership_bids`, `membership_date`, `schedule_payments`) VALUES
(7, '938550865197', 'willypelz4real', '116a64927fdd58d4e8259feb197176b9bd214c64b762ba50eaf9a295bc200240', 'þÛlÛ@„%R® øÒn.]aÂuhF/°-z¦', 'Williams Michael', 'asefonpelumi@yahoo.com', '', 'uploads/default.png', 'uploads/bg/default.jpg', '', '2017-11-08 11:49:18', 1, 0, 1, '178243489023', '30', '2017-11-08 11:49:18', '');

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE IF NOT EXISTS `job` (
`id` int(255) NOT NULL,
  `jobid` varchar(50) NOT NULL,
  `clientid` varchar(50) NOT NULL,
  `freelancerid` varchar(300) NOT NULL,
  `catid` varchar(50) NOT NULL,
  `title` varchar(300) NOT NULL,
  `slug` mediumtext NOT NULL,
  `country` varchar(300) NOT NULL,
  `description` longtext NOT NULL,
  `job_type` varchar(300) NOT NULL,
  `budget` varchar(50) NOT NULL,
  `start_date` varchar(300) NOT NULL,
  `end_date` varchar(300) NOT NULL,
  `skills` varchar(300) NOT NULL,
  `message` longtext NOT NULL,
  `active` tinyint(4) NOT NULL,
  `delete_remove` tinyint(4) NOT NULL,
  `public` tinyint(4) NOT NULL,
  `opened` tinyint(4) NOT NULL,
  `invite` tinyint(4) NOT NULL,
  `accepted` tinyint(4) NOT NULL,
  `completed` tinyint(4) NOT NULL,
  `featured` tinyint(4) NOT NULL,
  `featured_date` datetime NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`id`, `jobid`, `clientid`, `freelancerid`, `catid`, `title`, `slug`, `country`, `description`, `job_type`, `budget`, `start_date`, `end_date`, `skills`, `message`, `active`, `delete_remove`, `public`, `opened`, `invite`, `accepted`, `completed`, `featured`, `featured_date`, `date_added`) VALUES
(13, '125898416273', '986689491955', '', '1510112186', 'Front end devloper', 'front-end-devloper', 'Nigeria', '<p>react and .net dev needed</p>', 'Fixed Price', '50000', '08 November 2017', '11 November 2017', '.NET Framework ,React', '', 1, 0, 1, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '2017-11-08 05:49:04');

-- --------------------------------------------------------

--
-- Table structure for table `link`
--

CREATE TABLE IF NOT EXISTS `link` (
`id` int(255) NOT NULL,
  `jobid` varchar(300) NOT NULL,
  `freelancerid` varchar(300) NOT NULL,
  `title` varchar(300) NOT NULL,
  `description` mediumtext NOT NULL,
  `url` varchar(300) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `link`
--

INSERT INTO `link` (`id`, `jobid`, `freelancerid`, `title`, `description`, `url`, `date_added`) VALUES
(1, '235342756190', '461111766379', 'The Masha Brand', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'http://www.themashabrand.com', '2016-12-27 16:57:30'),
(2, '235342756190', '461111766379', 'Donald Trump', 'Donald Trump', 'http://www.donaldjtrump.com', '2016-12-27 21:11:51');

-- --------------------------------------------------------

--
-- Table structure for table `membership_agency`
--

CREATE TABLE IF NOT EXISTS `membership_agency` (
`id` int(255) NOT NULL,
  `membershipid` varchar(300) NOT NULL,
  `name` varchar(300) NOT NULL,
  `price` varchar(300) NOT NULL,
  `bids` varchar(300) NOT NULL,
  `rollover` tinyint(4) NOT NULL,
  `buy` tinyint(4) NOT NULL,
  `see` tinyint(4) NOT NULL,
  `team` tinyint(4) NOT NULL,
  `item_order` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `membership_agency`
--

INSERT INTO `membership_agency` (`id`, `membershipid`, `name`, `price`, `bids`, `rollover`, `buy`, `see`, `team`, `item_order`, `date_added`) VALUES
(4, '710629484048', 'Agency Basic', '20', '50', 1, 1, 1, 0, 1, '2017-01-08 15:30:47'),
(5, '162959556527', 'Agency Plus', '30', '60', 1, 1, 1, 1, 2, '2017-01-08 15:31:19');

-- --------------------------------------------------------

--
-- Table structure for table `membership_freelancer`
--

CREATE TABLE IF NOT EXISTS `membership_freelancer` (
`id` int(255) NOT NULL,
  `membershipid` varchar(300) NOT NULL,
  `name` varchar(300) NOT NULL,
  `price` varchar(300) NOT NULL,
  `bids` varchar(300) NOT NULL,
  `rollover` tinyint(4) NOT NULL,
  `buy` tinyint(4) NOT NULL,
  `see` tinyint(4) NOT NULL,
  `team` tinyint(4) NOT NULL,
  `item_order` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `membership_freelancer`
--

INSERT INTO `membership_freelancer` (`id`, `membershipid`, `name`, `price`, `bids`, `rollover`, `buy`, `see`, `team`, `item_order`, `date_added`) VALUES
(4, '178243489023', 'Freelancer Basic', '0', '30', 0, 0, 0, 0, 1, '2017-01-08 15:28:50'),
(5, '202297164357', 'Freelancer Plus', '10', '40', 1, 1, 1, 0, 2, '2017-01-08 15:29:22');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
`id` int(255) NOT NULL,
  `user_from` varchar(300) NOT NULL,
  `user_to` varchar(300) NOT NULL,
  `message` longtext NOT NULL,
  `opened` tinyint(4) NOT NULL,
  `active` tinyint(4) NOT NULL,
  `delete_remove` tinyint(4) NOT NULL,
  `bugid` int(11) NOT NULL,
  `disc` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_from`, `user_to`, `message`, `opened`, `active`, `delete_remove`, `bugid`, `disc`, `date_added`) VALUES
(1, '454243422562', '228670680670', '<p>Test Message                      	</p>', 1, 1, 0, 0, 0, '2016-10-21 10:03:36'),
(2, '454243422562', '423889306001', '<p>Test Message                      	</p>', 1, 1, 0, 0, 0, '2016-10-21 10:03:37'),
(3, '454243422562', '228670680670', '<p>Hi Client,<b><u><br></u></b></p><div>This is the initial draft to start with . <br></div><div>I trust you know better on how to integrate and make it interactive . <br></div><p><b><u>Business </u></b><br></p><div><ul><li>Dashboard - Adjust accordingly&nbsp;whatever you think&nbsp;should be with dashboard&nbsp;&nbsp;<br></li><li>Inbox<br></li><li>Business contacts/clients<br></li><li>Business ideas (with option to vote,like/unlike and comment )&nbsp;<br></li></ul></div><p><u>Categories -<b>Change to &nbsp;Community <br></b></u></p><div><ul><li>Member&nbsp;<br></li><li>Community Videos<br></li><li>Events&nbsp;<br></li><li>Forum&nbsp;<br></li><li>Photo<br></li><li>Quotes</li></ul></div><div><b><u>Work - Personal to the user</u></b></div><div><ul><li>To Do List&nbsp;<br></li><li>Goals List&nbsp;<br></li><li>Daily updates<br></li><li>Research Notes&nbsp;<br></li><li>Documentation&nbsp;<br></li></ul></div><div><b>Ideas <br></b></div><div><ul><li>Top ideator&nbsp;<br></li><li>Recent activity&nbsp;<br></li><li>Featured categories&nbsp;<br></li></ul></div><div>* community to include option to share on social media*</div><div>Lets chat if you have any question . <br></div><div>Thank you <br></div><p><br></p><p>                      	</p>', 1, 1, 0, 0, 0, '2016-10-22 11:10:06'),
(4, '228670680670', '454243422562', 'I think it''s working.', 1, 1, 0, 0, 0, '2016-11-29 23:11:07'),
(5, '228670680670', '454243422562', 'Yeah we good.', 1, 1, 0, 0, 0, '2016-11-29 23:12:30'),
(6, '228670680670', '454243422562', 'How long can you do the job..', 1, 1, 0, 0, 0, '2016-11-29 23:22:04'),
(10, '228670680670', '454243422562', '<p><u><b>Lorem ipsum dolor sit amet</b></u><br></p><h4>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque \nefficitur aliquam erat id imperdiet. In hac habitasse platea dictumst. \nEtiam nec dolor ut diam suscipit interdum quis non felis. Nam vel lacus \nsit amet urna eleifend pretium. Sed condimentum enim enim, quis \ntincidunt massa semper in. Mauris vitae ligula lorem. Nulla facilisi. \nSed vitae efficitur diam.\n<br></h4>', 1, 1, 0, 0, 0, '2016-11-30 07:18:32');
INSERT INTO `message` (`id`, `user_from`, `user_to`, `message`, `opened`, `active`, `delete_remove`, `bugid`, `disc`, `date_added`) VALUES
(13, '228670680670', '454243422562', '<p><img style="width: 780px;" src="data:image/jpeg;base64,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" data-filename="151223130123-donald-trump-ivanka-trump-july-30-2015-exlarge-169.jpg"><u><b><br></b></u></p><p><u><b><br></b></u></p><p><u><b>Lorem ipsum dolor sit amet</b></u><br></p><h4>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque \nefficitur aliquam erat id imperdiet. In hac habitasse platea dictumst. \nEtiam nec dolor ut diam suscipit interdum quis non felis. Nam vel lacus \nsit amet urna eleifend pretium. Sed condimentum enim enim, quis \ntincidunt massa semper in. Mauris vitae ligula lorem. Nulla facilisi. \nSed vitae efficitur diam.\n</h4><p><br></p>', 1, 1, 0, 0, 0, '2016-11-30 07:26:26');
INSERT INTO `message` (`id`, `user_from`, `user_to`, `message`, `opened`, `active`, `delete_remove`, `bugid`, `disc`, `date_added`) VALUES
(14, '228670680670', '454243422562', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque \nefficitur aliquam erat id imperdiet. In hac habitasse platea dictumst. \nEtiam nec dolor ut diam suscipit interdum quis non felis. Nam vel lacus \nsit amet urna eleifend pretium. Sed condimentum enim enim, quis \ntincidunt massa semper in. Mauris vitae ligula lorem. Nulla facilisi. \nSed vitae efficitur diam.\n</p><p><br></p><p><br></p><p><img style="width: 728px;" src="data:image/jpeg;base64,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" data-filename="AAiqVDO.img.jpg"><br></p>', 1, 1, 0, 0, 0, '2016-11-30 07:31:13');
INSERT INTO `message` (`id`, `user_from`, `user_to`, `message`, `opened`, `active`, `delete_remove`, `bugid`, `disc`, `date_added`) VALUES
(15, '228670680670', '454243422562', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque \nefficitur aliquam erat id imperdiet. In hac habitasse platea dictumst. \nEtiam nec dolor ut diam suscipit interdum quis non felis. Nam vel lacus \nsit amet urna eleifend pretium. Sed condimentum enim enim, quis \ntincidunt massa semper in. Mauris vitae ligula lorem. Nulla facilisi. \nSed vitae efficitur diam.\n</p><p><br></p><p><iframe src="//www.youtube.com/embed/b8m9zhNAgKs" class="note-video-clip" width="640" height="360" frameborder="0"></iframe><br></p>', 1, 1, 0, 0, 0, '2016-11-30 07:35:12'),
(17, '228670680670', '454243422562', '<p>Magamigi</p><p><br></p><p><img style="width: 728px;" src="data:image/jpeg;base64,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" data-filename="AAixB37.img.jpg"><br></p>', 1, 1, 0, 0, 0, '2016-11-30 12:38:36'),
(19, '454243422562', '228670680670', '<p>I would love to work for you.<br></p>', 1, 1, 0, 0, 0, '2016-12-01 15:46:19'),
(20, '454243422562', '228670680670', '<p>And now you are here<br></p>', 1, 1, 1, 0, 0, '2016-12-01 16:08:54'),
(21, '454243422562', '228670680670', '<p>Can I start work today.<br></p>', 1, 1, 0, 0, 0, '2016-12-02 15:01:06'),
(22, '454243422562', '228670680670', '<p>Please Sit down.<br></p>', 1, 1, 1, 0, 0, '2016-12-02 15:10:03'),
(23, '228670680670', '454243422562', '<p>Yes you may start today.<br></p>', 1, 1, 0, 0, 0, '2016-12-02 15:26:59'),
(24, '454243422562', '228670680670', '<h2>Hey</h2><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis feugiat \r\nfermentum elit, in aliquam orci tincidunt in. In sollicitudin turpis in \r\nnunc euismod porta. Sed luctus at arcu non pretium. Maecenas volutpat \r\nsapien sit amet turpis vulputate dictum. Praesent nec ullamcorper leo, \r\nac suscipit turpis.<br></p><p>                      	</p>', 1, 1, 0, 0, 0, '2016-12-03 09:28:52'),
(25, '454243422562', '423889306001', '<h2>Hey</h2><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis feugiat \r\nfermentum elit, in aliquam orci tincidunt in. In sollicitudin turpis in \r\nnunc euismod porta. Sed luctus at arcu non pretium. Maecenas volutpat \r\nsapien sit amet turpis vulputate dictum. Praesent nec ullamcorper leo, \r\nac suscipit turpis.<br></p><p>                      	</p>', 1, 1, 0, 0, 0, '2016-12-03 09:28:52'),
(26, '423889306001', '454243422562', '<p>Hey you.</p><p>When can you start work.<br></p>', 0, 1, 0, 0, 0, '2016-12-03 09:31:11'),
(27, '228670680670', '454243422562', '<p>Hey Freelancer..<br></p>', 0, 1, 0, 0, 0, '2016-12-13 15:57:17'),
(28, '228670680670', '454243422562', '<p>Magamigi kweli<br></p>', 0, 1, 1, 0, 0, '2016-12-13 15:58:15'),
(29, '461111766379', '228670680670', 'Hey Client Maureen, I would like a job.<br>                      	', 1, 1, 0, 0, 0, '2016-12-18 14:38:40'),
(30, '228670680670', '461111766379', '<p>Hey Magamigi.</p><p>Would you like a job.                      	</p>', 1, 1, 0, 0, 0, '2016-12-18 14:41:10'),
(31, '228670680670', '461111766379', 'Hey, you haven''t sent me the prototype yet.', 0, 1, 1, 0, 1, '2016-12-18 15:04:02'),
(32, '228670680670', '461111766379', 'Hey Chris..\n', 0, 1, 0, 0, 1, '2016-12-18 22:52:50'),
(33, '461111766379', '228670680670', 'Hey Client Maureen.', 1, 1, 1, 0, 1, '2016-12-19 16:05:29'),
(34, '461111766379', '228670680670', 'Hey Client Maureen. the project is coming just fine.', 1, 1, 0, 0, 1, '2016-12-19 16:10:14'),
(35, '461111766379', '228670680670', 'Hey\n', 1, 1, 0, 3, 2, '2016-12-29 07:00:05'),
(36, '461111766379', '228670680670', 'Hey I think this shall be solved.', 1, 1, 0, 3, 2, '2016-12-29 07:01:19'),
(39, '228670680670', '461111766379', 'Hey..\n', 0, 1, 1, 5, 2, '2017-01-06 14:01:08'),
(40, '228670680670', '461111766379', 'I think its working.', 0, 1, 1, 5, 2, '2017-01-06 14:02:58'),
(41, '228670680670', '461111766379', 'Hey test..', 0, 1, 0, 5, 2, '2017-01-06 14:13:58'),
(42, '461111766379', '228670680670', 'I will work on it soon..', 1, 1, 0, 5, 2, '2017-01-06 14:14:49'),
(43, '423889306001', '454243422562', 'Hey I have paid for the milestone.', 0, 1, 0, 0, 1, '2017-01-11 18:06:55');

-- --------------------------------------------------------

--
-- Table structure for table `milestone`
--

CREATE TABLE IF NOT EXISTS `milestone` (
`id` int(255) NOT NULL,
  `jobid` varchar(300) NOT NULL,
  `clientid` varchar(300) NOT NULL,
  `freelancerid` varchar(300) NOT NULL,
  `name` varchar(300) NOT NULL,
  `description` mediumtext NOT NULL,
  `budget` varchar(300) NOT NULL,
  `start_date` varchar(300) NOT NULL,
  `end_date` varchar(300) NOT NULL,
  `funded` tinyint(4) NOT NULL,
  `active` tinyint(4) NOT NULL,
  `delete_remove` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `milestone`
--

INSERT INTO `milestone` (`id`, `jobid`, `clientid`, `freelancerid`, `name`, `description`, `budget`, `start_date`, `end_date`, `funded`, `active`, `delete_remove`, `date_added`) VALUES
(1, '235342756190', '228670680670', '461111766379', 'Initial Plan', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus hendrerit bibendum velit, non tristique tortor venenatis at. Phasellus in auctor risus. Quisque sit amet quam efficitur massa luctus accumsan ac eu neque. Integer quis iaculis turpis, sit amet efficitur magna. Quisque ut euismod felis', '20', '12 December 2016', '13 December 2016', 1, 1, 0, '2016-12-11 18:40:33'),
(2, '235342756190', '228670680670', '461111766379', 'Product Concept', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus hendrerit bibendum velit, non tristique tortor venenatis at. Phasellus in auctor risus. Quisque sit amet quam efficitur massa luctus accumsan ac eu neque. Integer quis iaculis turpis, sit amet efficitur magna. Quisque ut euismod felis', '20', '12 December 2016', '13 December 2016', 1, 1, 0, '2016-12-11 18:43:07'),
(3, '235342756190', '228670680670', '461111766379', 'Basic Test', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam lobortis neque non purus pharetra molestie. Mauris at tempus leo, non sollicitudin felis.', '20', '21 December 2016', '25 December 2016', 1, 1, 0, '2016-12-21 10:28:11'),
(4, '235342756190', '228670680670', '461111766379', 'Basic Test', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis sapien turpis, ut semper enim rutrum sed. In eu commodo massa', '20', '10 January 2017', '12 January 2017', 1, 1, 0, '2017-01-08 22:21:07'),
(5, '364801871564', '423889306001', '454243422562', 'Design Front End', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis nec diam sed elit bibendum feugiat nec vel quam. Ut sed mauris orci. Ut vitae nunc eu nibh rhoncus vehicula', '10', '12 January 2017', '13 January 2017', 1, 1, 0, '2017-01-11 16:46:08'),
(9, '364801871564', '423889306001', '454243422562', 'Basic Test', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis nec diam sed elit bibendum feugiat nec vel quam. Ut sed mauris orci. Ut vitae nunc eu nibh rhoncus vehicula', '10', '13 January 2017', '14 January 2017', 1, 1, 0, '2017-01-11 17:25:05'),
(10, '770864481184', '228670680670', '454243422562', 'Initial Plan Test', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eu nibh sed ante tempor vestibulum vehicula sit amet ipsum. Nam malesuada non purus quis efficitur. Aliquam elementum, nulla at scelerisque viverra, massa ante malesuada sem, nec sollicitudin magna justo quis augue. Integer ultricies volutpat imperdiet. In condimentum id mauris sit amet sagittis. Sed pharetra eleifend tortor id lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin ullamcorper, enim vitae consequat imperdiet, eros leo venenatis neque, vel feugiat lectus nisl id neque', '10', '07 February 2017', '08 February 2017', 1, 1, 0, '2017-02-06 18:31:01');

-- --------------------------------------------------------

--
-- Table structure for table `payments_settings`
--

CREATE TABLE IF NOT EXISTS `payments_settings` (
`id` int(255) NOT NULL,
  `currency` varchar(300) NOT NULL,
  `paypal_client_id` mediumtext NOT NULL,
  `paypal_secret` mediumtext NOT NULL,
  `stripe_secret_key` mediumtext NOT NULL,
  `stripe_publishable_key` mediumtext NOT NULL,
  `membershipid` varchar(300) NOT NULL,
  `jobs_cost` varchar(300) NOT NULL,
  `jobs_pay_limit` varchar(300) NOT NULL,
  `bids_cost` varchar(300) NOT NULL,
  `bids_limit` varchar(300) NOT NULL,
  `jobs_percentage` varchar(300) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments_settings`
--

INSERT INTO `payments_settings` (`id`, `currency`, `paypal_client_id`, `paypal_secret`, `stripe_secret_key`, `stripe_publishable_key`, `membershipid`, `jobs_cost`, `jobs_pay_limit`, `bids_cost`, `bids_limit`, `jobs_percentage`) VALUES
(1, '33', 'AVyqLeVR8HUGf8VYkvIVxm1IB_DonJkaqomsnFO3z5p-WqfegX7Q9_kDSAcXYmsKnDnAGGjYC5jaC3G5', 'EJf34V7XQsuEYDQVfn1ZtxdTxVxTnAcrv5L8LzRAmTNtPuF03aZElzfl53RphEcaiD6pC8FSeCGqqviJ', 'sk_test_bo2PwdvJVfN0iVbs4m2kQeB1', 'pk_test_tjOml8BxMxYUMJGHmZBx90LP', '178243489023', '4', '4', '2', '4', '10');

-- --------------------------------------------------------

--
-- Table structure for table `pay_freelancer`
--

CREATE TABLE IF NOT EXISTS `pay_freelancer` (
`id` int(255) NOT NULL,
  `freelancerid` varchar(300) NOT NULL,
  `amount_sum` varchar(300) NOT NULL,
  `month_time` varchar(300) NOT NULL,
  `complete` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pay_freelancer`
--

INSERT INTO `pay_freelancer` (`id`, `freelancerid`, `amount_sum`, `month_time`, `complete`, `date_added`) VALUES
(1, '454243422562', '18', 'January', 1, '2017-02-08 16:40:15');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio`
--

CREATE TABLE IF NOT EXISTS `portfolio` (
`id` int(255) NOT NULL,
  `portfolioid` varchar(300) NOT NULL,
  `userid` varchar(300) NOT NULL,
  `title` varchar(300) NOT NULL,
  `date` varchar(50) NOT NULL,
  `client` varchar(50) NOT NULL,
  `website` varchar(300) NOT NULL,
  `description` longtext NOT NULL,
  `imagelocation` varchar(300) NOT NULL,
  `active` tinyint(4) NOT NULL,
  `delete_remove` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `portfolio`
--

INSERT INTO `portfolio` (`id`, `portfolioid`, `userid`, `title`, `date`, `client`, `website`, `description`, `imagelocation`, `active`, `delete_remove`, `date_added`) VALUES
(2, '324539743970', '454243422562', 'Website Design', 'January 14th 2016', 'WestRift Aviation School', 'www.westriftaviation.com', '<p>                      	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sapien risus, blandit at fringilla ac, varius sed dolor. Donec augue lacus, vulputate sed consectetur facilisis, interdum pharetra ligula. Nulla suscipit erat nibh, ut porttitor nisl dapibus eu.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sapien risus, blandit at fringilla ac, varius sed dolor. Donec augue lacus, vulputate sed consectetur facilisis, interdum pharetra ligula. Nulla suscipit erat nibh, ut porttitor nisl dapibus eu.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sapien risus, blandit at fringilla ac, varius sed dolor. Donec augue lacus, vulputate sed consectetur facilisis, interdum pharetra ligula. Nulla suscipit erat nibh, ut porttitor nisl dapibus eu.<br></p>', 'uploads/portfolio/1475872460.jpg', 1, 0, '2016-10-07 17:44:56'),
(3, '245783284815', '454243422562', 'Redesign Website', '26th August 2016', 'The Masha Brand', 'www.themashabrand.com', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sapien \r\nrisus, blandit at fringilla ac, varius sed dolor. Donec augue lacus, \r\nvulputate sed consectetur facilisis, interdum pharetra ligula. Nulla \r\nsuscipit erat nibh, ut porttitor nisl dapibus eu.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sapien \r\nrisus, blandit at fringilla ac, varius sed dolor. Donec augue lacus, \r\nvulputate sed consectetur facilisis, interdum pharetra ligula. Nulla \r\nsuscipit erat nibh, ut porttitor nisl dapibus eu.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sapien \r\nrisus, blandit at fringilla ac, varius sed dolor. Donec augue lacus, \r\nvulputate sed consectetur facilisis, interdum pharetra ligula. Nulla \r\nsuscipit erat nibh, ut porttitor nisl dapibus eu.                      	</p>', 'uploads/portfolio/1476619578.jpg', 1, 0, '2016-10-16 15:01:54'),
(4, '141696420366', '454243422562', 'Freelance Kafe', '10 October 2016', 'The Masha Brand', 'www.themashabrand.com', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sapien \r\nrisus, blandit at fringilla ac, varius sed dolor. Donec augue lacus, \r\nvulputate sed consectetur facilisis, interdum pharetra ligula. Nulla \r\nsuscipit erat nibh, ut porttitor nisl dapibus eu.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sapien \r\nrisus, blandit at fringilla ac, varius sed dolor. Donec augue lacus, \r\nvulputate sed consectetur facilisis, interdum pharetra ligula. Nulla \r\nsuscipit erat nibh, ut porttitor nisl dapibus eu.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sapien \r\nrisus, blandit at fringilla ac, varius sed dolor. Donec augue lacus, \r\nvulputate sed consectetur facilisis, interdum pharetra ligula. Nulla \r\nsuscipit erat nibh, ut porttitor nisl dapibus eu.                      	</p>', 'uploads/portfolio/1476619637.jpg', 1, 0, '2016-10-16 15:07:17');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE IF NOT EXISTS `profile` (
`id` int(255) NOT NULL,
  `profileid` varchar(50) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `location` varchar(300) NOT NULL,
  `city` varchar(300) NOT NULL,
  `country` varchar(300) NOT NULL,
  `rate` varchar(50) NOT NULL,
  `website` varchar(50) NOT NULL,
  `about` longtext NOT NULL,
  `education` longtext NOT NULL,
  `work` longtext NOT NULL,
  `awards` longtext NOT NULL,
  `skills` mediumtext NOT NULL,
  `active` tinyint(4) NOT NULL,
  `delete_remove` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `profileid`, `userid`, `location`, `city`, `country`, `rate`, `website`, `about`, `education`, `work`, `awards`, `skills`, `active`, `delete_remove`, `date_added`) VALUES
(1, '452863056657', '454243422562', 'Nairobi West', 'Nairobi', 'Kenya', '85', 'www.themashabrand.com', '                      	                      	                      	<p>I''m web designer &amp; front-end developer with 7 years of professional experience. I''m interested in all kinds of visual communication, but my major focus is on designing web, mobile &amp; tablet interfaces. I also have skills in other fields like branding, icon design or web development.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam varius \r\nquis mi et fermentum. Curabitur quis urna eget enim commodo tincidunt \r\nvitae ut tortor.<br></p>', '                      	                      	                      	                      	                      	                      	                      	                      	<h4>Master of Web Design</h4><p>St. Patrick University<br>3 Years Course</p><p>Graduating in May</p><h4>Bsc. in Computer Science\r\n			   </h4><p>Kabarak University</p><p>4 Years Course</p><p><b>May 2007 - December 2010</b></p>', '                      	                      	                      	<h4>                      	Front-end/Web UI/UX Designer</h4><h5>Envato</h5><h5>January 2014 - Current<br></h5><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae elit in sem malesuada finibus. Fusce efficitur ex non diam molestie efficitur. Fusce fringilla orci neque, vel tristique purus molestie sed. Integer ante lorem, sollicitudin ut neque sit amet, dapibus dictum justo. Nam commodo laoreet risus, sit amet commodo tortor vehicula vitae.</p><p><br></p><h4>Front End &amp; Back End Developer</h4><h5>The Masha Brand</h5><h5>April 2010 - December 2013</h5><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae elit in sem malesuada finibus. Fusce efficitur ex non diam molestie efficitur. Fusce fringilla orci neque, vel tristique purus molestie sed. Integer ante lorem, sollicitudin ut neque sit amet, dapibus dictum justo. Nam commodo laoreet risus, sit amet commodo tortor vehicula vitae.<br></p><p></p>', '                      	                      	                      	<h4>Designer of the Year</h4><h5>Awwwards Site</h5><h5>2013</h5><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae elit in sem malesuada finibus. Fusce efficitur ex non diam molestie efficitur. Fusce fringilla orci neque, vel tristique purus molestie sed. Integer ante lorem, sollicitudin ut neque sit amet, dapibus dictum justo. Nam commodo laoreet risus, sit amet commodo tortor vehicula vitae.</p><p><br></p><h4>Designer of the Month</h4><h5>www.cssdesignsawards.com</h5><h5>April 2016\r\n			   </h5><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae \r\nelit in sem malesuada finibus. Fusce efficitur ex non diam molestie \r\nefficitur. Fusce fringilla orci neque, vel tristique purus molestie sed.\r\n Integer ante lorem, sollicitudin ut neque sit amet, dapibus dictum \r\njusto. Nam commodo laoreet risus, sit amet commodo tortor vehicula \r\nvitae.<br></p>', '.NET Remoting ,2D Design ,3D Design ,3D Rendering ,3D Rigging ,Adobe LiveCycle Designer ,Adobe PageMaker ,Adobe Photoshop ,Adobe Photoshop Lightroom ,Adobe Photoshop Lightroom ,Adobe Premiere ,Adobe Premiere Pro ,Cisco Certified Network Professional (CCNP) ,cisco routers ,Database Modeling ,database programming ', 1, 0, '2016-10-06 13:14:33'),
(2, '410262130226', '461111766379', 'London', 'London', 'UK', '90', 'www.themashabrand.com', '<p>Pellentesque sed justo nulla. Sed interdum augue vel tristique \r\nullamcorper. Donec congue sapien eu ligula dapibus, vitae varius purus \r\nmolestie. Duis eros lacus, tempor vel sagittis quis, elementum eget \r\naugue. Cras sollicitudin dignissim felis vehicula egestas. Proin \r\npellentesque tellus auctor nisl venenatis, nec scelerisque lectus porta.\r\n Mauris vel nulla et justo convallis pretium. Praesent sed velit risus. \r\nSed sodales, velit nec blandit pulvinar, est nibh fermentum leo, id \r\nultrices lectus orci vitae nulla. Ut nibh quam, elementum in bibendum \r\nut, commodo et dui. Integer porttitor sagittis ipsum eget aliquet. Duis \r\nvitae leo orci. Nunc eu leo non elit tempus facilisis. Donec sapien ex, \r\nefficitur et eros a, pulvinar sagittis tortor.\r\n</p><p>\r\n</p><p>\r\nProin at condimentum magna. Integer elementum rutrum sapien, vel \r\ncondimentum metus. Proin lobortis ut tellus a facilisis. Aliquam erat \r\nvolutpat. Vivamus id magna massa. Nam ac porttitor magna, et gravida \r\ndui. Pellentesque laoreet nisl ut quam volutpat facilisis. Mauris non \r\nposuere ex. Nulla condimentum quam quis tellus suscipit rhoncus.\r\n</p><p>\r\n</p><p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent quis \r\nex dictum, blandit arcu et, eleifend diam. Maecenas cursus eros mattis \r\nnunc pharetra pellentesque. Proin quis nulla vitae odio laoreet \r\nconvallis. Maecenas lobortis lorem ligula, sit amet tincidunt diam \r\nsemper eu. Donec quis pharetra massa. Aenean a efficitur nisl, nec \r\nmaximus sapien. Quisque sapien elit, congue fermentum suscipit vel, \r\nultrices ut dolor. Mauris sed auctor risus. Proin vel cursus felis. \r\nPraesent facilisis ipsum semper, posuere ante non, efficitur libero. \r\nQuisque placerat eros ut justo aliquam facilisis.\r\n</p><p>                      	</p>', '', '', '', 'Bootstrap ,CSS,CSS3 ,HTML ,HTML5 ,Object Oriented PHP ,PHP ,phpMyAdmin ', 1, 0, '2016-12-10 11:21:56'),
(3, '140715178616', '691501275360', '', '', '', '', '', '', '', '', '', '2D Animation ,2D Design ,3D Animation ,3D Design ,3D Modeling ,3D Printing ,3D Rendering ,3D Rigging ,3D Scanning ,3D Systems ,3ds Max ', 1, 0, '2016-12-10 14:12:20'),
(4, '218735781251', '228670680670', 'Nairobi West', 'Nairobi', 'Kenya', '', '', '<p>\r\n\r\nCras euismod eget quam a mattis. Mauris ut tortor dolor. Fusce eleifend,\r\n justo ut ultrices efficitur, urna justo porta lectus, nec suscipit nisi\r\n magna a nibh. Aenean vel rhoncus ex. Praesent efficitur, lectus in \r\npharetra varius, orci diam dictum elit, non varius enim urna eget \r\ntortor. Nam fermentum ipsum quis odio ultricies, vitae lobortis dui \r\nrhoncus. Donec massa nunc, suscipit imperdiet nisi id, porttitor \r\nvolutpat dui. Aliquam erat volutpat. Phasellus mattis diam ligula, non \r\nmaximus urna finibus at. Suspendisse dignissim semper tortor. Morbi \r\naccumsan sagittis felis at convallis. Nunc enim elit, tempus in felis \r\nvitae, venenatis vestibulum risus</p><p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque \r\nblandit efficitur ante commodo aliquet. Maecenas porta cursus erat. Sed \r\ntempor velit tellus, sit amet eleifend lacus ullamcorper eu. Curabitur \r\nvel velit nec eros efficitur eleifend. Donec condimentum sapien eu massa\r\n tincidunt ornare. Phasellus egestas ante eu convallis pellentesque. \r\nEtiam non pellentesque sem. Etiam mi turpis, euismod sed accumsan in, \r\nporttitor at lacus. Nullam et fermentum lorem. Ut laoreet volutpat \r\nlaoreet. Fusce in justo metus. In vehicula ex sit amet nunc malesuada, \r\nid lacinia velit tincidunt. Nunc ut imperdiet tellus. Pellentesque \r\ntincidunt augue eget enim cursus cursus. Sed eleifend eleifend mauris ut\r\n mollis. Sed id porta urna.\r\n</p><p>                      	</p>', '', '', '', '', 1, 0, '2016-12-31 06:39:15'),
(5, '230739347815', '423889306001', 'London', 'London', 'UK', '', '', '<p>Nunc efficitur, odio non condimentum posuere, est tellus laoreet orci, \r\nvel tempus velit sapien sit amet nulla. Fusce dui metus, vestibulum a \r\nnisl vitae, tincidunt hendrerit turpis. Morbi at risus enim. Sed tortor \r\njusto, consectetur at erat id, mattis tristique nulla. Integer id neque \r\net nunc aliquam pharetra sit amet at ipsum. In vulputate lacus nisi, at \r\nhendrerit urna scelerisque et. Phasellus sodales nulla urna, fringilla \r\nviverra turpis dictum in. Aliquam sit amet tortor convallis, consectetur\r\n ante volutpat, convallis ante. Aliquam at ante feugiat, varius leo nec,\r\n pretium ante. Sed iaculis sem gravida leo ornare cursus. Ut at augue \r\nest. Donec elementum magna lorem, quis faucibus metus sagittis \r\ntincidunt.\r\n</p><p>\r\n</p><p>\r\nUt et suscipit lorem. Phasellus bibendum erat eget magna varius \r\nvehicula. Pellentesque ac magna id erat congue viverra id nec risus. Ut \r\nvel orci venenatis, mattis quam vel, pharetra mi. Vestibulum ultrices, \r\nnunc et dapibus tincidunt, diam nulla iaculis leo, sit amet efficitur \r\nsem nisl ac magna. In non pretium nisi. Sed lacinia tellus et tortor \r\neleifend lacinia. Nam semper sed ipsum eget viverra.\r\n</p><p>\r\n</p><p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi eleifend \r\nac orci vel placerat. Mauris sollicitudin, nibh cursus dignissim \r\nlaoreet, lacus diam volutpat elit, ut viverra ante massa quis nisl. \r\nDonec volutpat elit molestie, condimentum lectus ut, pharetra sapien. \r\nDuis sagittis ligula in ante ultrices porttitor at non magna. Aliquam \r\nerat volutpat. Aenean dapibus at sapien et tristique. Aliquam tincidunt \r\nmetus urna, at convallis neque varius vitae. Phasellus quam felis, \r\ntempus non sollicitudin id, mattis dignissim lectus. Phasellus volutpat \r\nerat a ligula egestas condimentum. Donec vehicula eros vitae metus \r\nrutrum congue. Nullam elementum semper congue. Praesent sit amet \r\ntristique purus. Curabitur urna lectus, elementum at ex ac, vehicula \r\nsollicitudin leo. Donec elementum felis at pellentesque fringilla.\r\n</p><p>                      	</p>', '', '', '', '', 1, 0, '2017-01-19 09:59:48');

-- --------------------------------------------------------

--
-- Table structure for table `proposal`
--

CREATE TABLE IF NOT EXISTS `proposal` (
`id` int(255) NOT NULL,
  `proposalid` varchar(300) NOT NULL,
  `jobid` varchar(300) NOT NULL,
  `freelancerid` varchar(300) NOT NULL,
  `budget` varchar(300) NOT NULL,
  `description` longtext NOT NULL,
  `accepted` tinyint(4) NOT NULL,
  `active` tinyint(4) NOT NULL,
  `delete_remove` tinyint(4) NOT NULL,
  `opened` tinyint(4) NOT NULL,
  `featured` tinyint(4) NOT NULL,
  `featured_date` datetime NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `proposal`
--

INSERT INTO `proposal` (`id`, `proposalid`, `jobid`, `freelancerid`, `budget`, `description`, `accepted`, `active`, `delete_remove`, `opened`, `featured`, `featured_date`, `date_added`) VALUES
(3, '146326404060', '235342756190', '454243422562', '90', '<p>i really need this job</p>', 0, 1, 0, 1, 0, '0000-00-00 00:00:00', '2016-12-08 11:39:56');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE IF NOT EXISTS `ratings` (
`id` int(255) NOT NULL,
  `jobid` varchar(300) NOT NULL,
  `clientid` varchar(300) NOT NULL,
  `freelancerid` varchar(300) NOT NULL,
  `star` varchar(300) NOT NULL,
  `message` mediumtext NOT NULL,
  `star_type` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `jobid`, `clientid`, `freelancerid`, `star`, `message`, `star_type`, `date_added`) VALUES
(2, '235342756190', '228670680670', '461111766379', '5', '', 1, '2017-01-16 16:48:45'),
(6, '235342756190', '228670680670', '461111766379', '5', '', 2, '2017-01-16 17:56:27'),
(7, '235342756190', '228670680670', '461111766379', '3', '', 3, '2017-01-16 22:01:58'),
(8, '235342756190', '228670680670', '461111766379', '4', '', 4, '2017-01-16 22:13:11'),
(9, '235342756190', '228670680670', '461111766379', '5', '', 5, '2017-01-16 22:21:41'),
(10, '235342756190', '228670680670', '461111766379', '2', '', 6, '2017-01-16 22:47:00'),
(12, '235342756190', '228670680670', '461111766379', '0', 'Does a great job and I like working with him.', 7, '2017-01-17 09:49:49');

-- --------------------------------------------------------

--
-- Table structure for table `ratings_client`
--

CREATE TABLE IF NOT EXISTS `ratings_client` (
`id` int(255) NOT NULL,
  `jobid` varchar(300) NOT NULL,
  `freelancerid` varchar(300) NOT NULL,
  `clientid` varchar(300) NOT NULL,
  `star` varchar(300) NOT NULL,
  `message` mediumtext NOT NULL,
  `star_type` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ratings_client`
--

INSERT INTO `ratings_client` (`id`, `jobid`, `freelancerid`, `clientid`, `star`, `message`, `star_type`, `date_added`) VALUES
(1, '235342756190', '461111766379', '228670680670', '4', '', 1, '2017-01-17 12:05:56'),
(2, '235342756190', '461111766379', '228670680670', '3', '', 2, '2017-01-17 12:06:09'),
(3, '235342756190', '461111766379', '228670680670', '4', '', 3, '2017-01-17 12:06:12'),
(4, '235342756190', '461111766379', '228670680670', '4', '', 4, '2017-01-17 12:06:14'),
(5, '235342756190', '461111766379', '228670680670', '3', '', 5, '2017-01-17 12:06:15'),
(6, '235342756190', '461111766379', '228670680670', '3', '', 6, '2017-01-17 12:06:17'),
(7, '235342756190', '461111766379', '228670680670', '0', 'The job requirements were specific and this helped me in doing the job.', 7, '2017-01-17 12:13:38'),
(8, '219157946841', '461111766379', '228670680670', '4', '', 1, '2017-01-20 10:07:13'),
(9, '219157946841', '461111766379', '228670680670', '5', '', 2, '2017-01-20 10:07:16'),
(10, '219157946841', '461111766379', '228670680670', '5', '', 3, '2017-01-20 10:07:18'),
(11, '219157946841', '461111766379', '228670680670', '5', '', 4, '2017-01-20 10:07:19'),
(12, '219157946841', '461111766379', '228670680670', '4', '', 5, '2017-01-20 10:07:20'),
(13, '219157946841', '461111766379', '228670680670', '4', '', 6, '2017-01-20 10:07:23'),
(14, '219157946841', '461111766379', '228670680670', '0', 'The Client was really great, I couldn''t ask for more.', 7, '2017-01-20 10:07:58');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE IF NOT EXISTS `report` (
`id` int(255) NOT NULL,
  `messageid` varchar(300) NOT NULL,
  `by_userid` varchar(300) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`id`, `messageid`, `by_userid`, `date_added`) VALUES
(1, '1', '228670680670', '2016-11-30 05:58:09'),
(2, '3', '228670680670', '2016-11-30 17:01:37');

-- --------------------------------------------------------

--
-- Table structure for table `section_client`
--

CREATE TABLE IF NOT EXISTS `section_client` (
`id` int(255) NOT NULL,
  `title` mediumtext NOT NULL,
  `description` longtext NOT NULL,
  `imagelocation` varchar(300) NOT NULL,
  `imagename` varchar(300) NOT NULL,
  `item_order` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `section_client`
--

INSERT INTO `section_client` (`id`, `title`, `description`, `imagelocation`, `imagename`, `item_order`, `date_added`) VALUES
(1, 'Hire The Right Freelancers For The Job', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id erat nisi. Donec condimentum mi eget est auctor pellentesque. Donec ultrices consequat neque at consectetur. Nunc venenatis lorem quis auctor vulputate. Donec et sagittis nulla, mollis cursus leo. Phasellus a ante ut neque consequat interdum. Aenean eget tortor elit. Morbi a magna vitae justo aliquet porta eu ut quam.', 'uploads/how/1483469717faces-icons-square.svg', '1483469717faces-icons-square.svg', 1, '2017-01-03 21:55:18'),
(2, 'Manage Jobs From Anywhere.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id erat nisi. Donec condimentum mi eget est auctor pellentesque. Donec ultrices consequat neque at consectetur. Nunc venenatis lorem quis auctor vulputate. Donec et sagittis nulla, mollis cursus leo. Phasellus a ante ut neque consequat interdum. Aenean eget tortor elit. Morbi a magna vitae justo aliquet porta eu ut quam.', 'uploads/how/14834711282.png', '14834711282.png', 2, '2017-01-03 22:18:48'),
(3, 'Pay Only For A Job Well Done', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id erat nisi. Donec condimentum mi eget est auctor pellentesque. Donec ultrices consequat neque at consectetur. Nunc venenatis lorem quis auctor vulputate. Donec et sagittis nulla, mollis cursus leo. Phasellus a ante ut neque consequat interdum. Aenean eget tortor elit. Morbi a magna vitae justo aliquet porta eu ut quam.', 'uploads/how/1483518210-with-red-bag-and-successful-payment_1134-661.jpg', '1483518210-with-red-bag-and-successful-payment_1134-661.jpg', 3, '2017-01-04 11:23:30');

-- --------------------------------------------------------

--
-- Table structure for table `section_freelancer`
--

CREATE TABLE IF NOT EXISTS `section_freelancer` (
`id` int(255) NOT NULL,
  `title` mediumtext NOT NULL,
  `description` longtext NOT NULL,
  `imagelocation` varchar(300) NOT NULL,
  `imagename` varchar(300) NOT NULL,
  `item_order` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `section_freelancer`
--

INSERT INTO `section_freelancer` (`id`, `title`, `description`, `imagelocation`, `imagename`, `item_order`, `date_added`) VALUES
(1, 'Find Work, Get Hired', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id erat nisi. Donec condimentum mi eget est auctor pellentesque. Donec ultrices consequat neque at consectetur. Nunc venenatis lorem quis auctor vulputate. Donec et sagittis nulla, mollis cursus leo. Phasellus a ante ut neque consequat interdum. Aenean eget tortor elit. Morbi a magna vitae justo aliquet porta eu ut quam.', 'uploads/how/1483521113ess-background-design_1200-17.jpg', '1483521113ess-background-design_1200-17.jpg', 1, '2017-01-04 12:11:53'),
(2, 'Manage Your Work From Anywhere.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id erat nisi. Donec condimentum mi eget est auctor pellentesque. Donec ultrices consequat neque at consectetur. Nunc venenatis lorem quis auctor vulputate. Donec et sagittis nulla, mollis cursus leo. Phasellus a ante ut neque consequat interdum. Aenean eget tortor elit. Morbi a magna vitae justo aliquet porta eu ut quam.', 'uploads/how/14835212292.png', '14835212292.png', 2, '2017-01-04 12:13:49'),
(3, 'Get Paid Quickly & Securely.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id erat nisi. Donec condimentum mi eget est auctor pellentesque. Donec ultrices consequat neque at consectetur. Nunc venenatis lorem quis auctor vulputate. Donec et sagittis nulla, mollis cursus leo. Phasellus a ante ut neque consequat interdum. Aenean eget tortor elit. Morbi a magna vitae justo aliquet porta eu ut quam.', 'uploads/how/1483521305ess-profit_23-2147510200.jpg', '1483521305ess-profit_23-2147510200.jpg', 3, '2017-01-04 12:15:05');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE IF NOT EXISTS `service` (
`id` int(255) NOT NULL,
  `serviceid` varchar(300) NOT NULL,
  `userid` varchar(300) NOT NULL,
  `catid` varchar(300) NOT NULL,
  `title` varchar(300) NOT NULL,
  `rate` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `active` tinyint(4) NOT NULL,
  `delete_remove` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `serviceid`, `userid`, `catid`, `title`, `rate`, `description`, `active`, `delete_remove`, `date_added`) VALUES
(1, '212679740281', '454243422562', '1453200138', 'Programming', '85', '<p>                      	Lorem ipsum dolor sit amet, lorem quaestio similique has at, possit \r\nvivendum ne nam. Unum saepe ea vim, ius sensibus volutpat et, eum legere\r\n nostrum explicari ei. Sed ex legere hendrerit. Ei saperet officiis has,\r\n eu usu prompta mandamus. Vix dicat electram ei, ne sea aeterno ornatus \r\nperpetua, ne cum omnis voluptua iracundia.</p><p>\r\n		  </p><p>Pro munere assueverit id, debitis scaevola omittantur vim ex, qui\r\n meis tantas et. Vivendo ponderum id pro. Vidit offendit quaerendum est \r\net, no eos prima tamquam, eu duo ludus noster praesent. Sea cu quod \r\nillum. Affert munere ut vis, ponderum gubergren sit ne. Nam at magna \r\nhomero feugait.</p><p>\r\n		  </p><p>Odio laoreet vivendum ex vis. At mentitum assueverit nam, mel ex \r\ndolorem tacimates praesent. Saepe nemore duo te, no nec cetero eligendi \r\nmnesarchum. Ne congue similique eloquentiam has. Wisi omittantur \r\ndefinitiones vis in.</p><p>\r\n		  </p><p>Pertinacia neglegentur vix ne. Illum accusata id quo, vis ex \r\nmucius iisque aliquid. Eos meliore interesset id. Ne has fabellas \r\nelaboraret.</p><p>\r\n		  </p><p>Ne iriure reprimique vel. Ex alii pericula pri, idque veritus ius\r\n id. Etiam doctus aperiam cu mea, vel cibo dicunt ad, vim luptatum \r\ndelicatissimi eu. Diam mentitum explicari no vim, tantas nominavi eos \r\nin. Ei pri omnis verterem antiopam.</p><p>\r\n			</p><p>Ut quis ex vel sapien lobortis auctor. Mauris pulvinar erat \r\naliquet, eleifend tellus venenatis, tempus justo. Nunc et massa in ipsum\r\n condimentum accumsan a nec lacus. Nam vel nulla quis sapien placerat \r\negestas at quis eros. Fusce venenatis nibh a velit pretium egestas. \r\nInteger finibus diam diam, a vestibulum ligula commodo a. Curabitur \r\nultricies porta viverra. Ut eleifend ipsum hendrerit, fringilla ex quis,\r\n dictum dui. Phasellus consequat consectetur tristique. Nulla efficitur,\r\n elit quis laoreet bibendum, diam felis sollicitudin lectus, dignissim \r\nauctor arcu libero non velit. Nam vitae odio ut elit blandit varius. \r\nPhasellus ac nunc ut nibh mollis ultricies eget non nulla. Donec porta \r\ntellus at justo pulvinar scelerisque.</p><p>\r\n			</p><p>Donec sed lacinia lectus, a hendrerit ex. Mauris faucibus tortor \r\neu turpis ultricies hendrerit. Sed massa ligula, sodales at eros sit \r\namet, lacinia facilisis turpis. Mauris in blandit diam. Cras gravida sem\r\n blandit urna vehicula, eu tempus nibh vulputate. Nunc lacinia eu metus \r\nquis mollis. Morbi sed arcu ex. Etiam non ultricies nibh.</p><p><br></p><h4>Lorem Ipsum</h4><ul class="square"><li>Pro munere assueverit id, debitis scaevola omittantur vim ex, qui meis tantas et. Vivendo ponderum id pro!</li><li>Pro munere assueverit id, debitis scaevola omittantur vim ex, qui meis tantas et. Vivendo ponderum id pro.</li><li>Pro munere assueverit id, debitis scaevola omittantur vim ex, qui meis tantas et. Vivendo ponderum id pro.</li><li>Pro munere assueverit id, debitis scaevola omittantur vim ex, qui meis tantas et. Vivendo ponderum id pro!</li></ul><p>\r\n          \r\n		  <br></p><h4>Lorem Ipsum</h4><ul class="square"><li>Ne iriure reprimique vel. Ex alii pericula pri, idque veritus ius\r\n id. Etiam doctus aperiam cu mea, vel cibo dicunt ad, vim luptatum \r\ndelicatissimi eu.</li><li>Ne iriure reprimique vel. Ex alii pericula pri, idque veritus ius\r\n id. Etiam doctus aperiam cu mea, vel cibo dicunt ad, vim luptatum \r\ndelicatissimi eu.</li><li>Ne iriure reprimique vel. Ex alii pericula pri, idque veritus ius\r\n id. Etiam doctus aperiam cu mea, vel cibo dicunt ad, vim luptatum \r\ndelicatissimi eu.</li><li>Ne iriure reprimique vel. Ex alii pericula pri, idque veritus ius\r\n id. Etiam doctus aperiam cu mea, vel cibo dicunt ad, vim luptatum \r\ndelicatissimi eu.</li></ul><p><br></p><p>                      	</p><p></p>', 1, 0, '2016-10-08 12:08:18');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
`id` int(255) NOT NULL,
  `title` text NOT NULL,
  `use_icon` tinyint(4) NOT NULL,
  `site_icon` varchar(300) NOT NULL,
  `tagline` text NOT NULL,
  `url` text NOT NULL,
  `description` text NOT NULL,
  `keywords` text NOT NULL,
  `author` varchar(300) NOT NULL,
  `mail` text NOT NULL,
  `mailpass` text NOT NULL,
  `bgimage` text NOT NULL,
  `job_limit` tinyint(4) NOT NULL,
  `service_limit` tinyint(4) NOT NULL,
  `proposal_limit` tinyint(4) NOT NULL,
  `top_title` varchar(300) NOT NULL,
  `show_downtitle` tinyint(4) NOT NULL,
  `down_title` varchar(300) NOT NULL,
  `searchterm` varchar(300) NOT NULL,
  `header_img` text NOT NULL,
  `cattagline` varchar(300) NOT NULL,
  `testtagline` varchar(300) NOT NULL,
  `statstagline` varchar(300) NOT NULL,
  `about_top_title` varchar(300) NOT NULL,
  `about_hello` longtext NOT NULL,
  `about_header_img` text NOT NULL,
  `about_whitebg` mediumtext NOT NULL,
  `teamtagline` varchar(300) NOT NULL,
  `timelinetagline` varchar(300) NOT NULL,
  `how_top_title` varchar(300) NOT NULL,
  `how_header_img` text NOT NULL,
  `faq_top_title` varchar(300) NOT NULL,
  `faq_header_img` mediumtext NOT NULL,
  `faq_hello` longtext NOT NULL,
  `contact_top_title` varchar(300) NOT NULL,
  `contact_header_img` mediumtext NOT NULL,
  `contact_location` mediumtext NOT NULL,
  `contact_phone` mediumtext NOT NULL,
  `contact_email` mediumtext NOT NULL,
  `contact_map` mediumtext NOT NULL,
  `footer_about` mediumtext NOT NULL,
  `facebook` varchar(300) NOT NULL,
  `twitter` varchar(300) NOT NULL,
  `google` varchar(300) NOT NULL,
  `instagram` varchar(300) NOT NULL,
  `linkedin` varchar(300) NOT NULL,
  `pricing_top_title` varchar(300) NOT NULL,
  `pricing_header_img` mediumtext NOT NULL,
  `services_header_img` varchar(300) NOT NULL,
  `jobs_header_img` varchar(300) NOT NULL,
  `google_analytics` longtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `use_icon`, `site_icon`, `tagline`, `url`, `description`, `keywords`, `author`, `mail`, `mailpass`, `bgimage`, `job_limit`, `service_limit`, `proposal_limit`, `top_title`, `show_downtitle`, `down_title`, `searchterm`, `header_img`, `cattagline`, `testtagline`, `statstagline`, `about_top_title`, `about_hello`, `about_header_img`, `about_whitebg`, `teamtagline`, `timelinetagline`, `how_top_title`, `how_header_img`, `faq_top_title`, `faq_header_img`, `faq_hello`, `contact_top_title`, `contact_header_img`, `contact_location`, `contact_phone`, `contact_email`, `contact_map`, `footer_about`, `facebook`, `twitter`, `google`, `instagram`, `linkedin`, `pricing_top_title`, `pricing_header_img`, `services_header_img`, `jobs_header_img`, `google_analytics`) VALUES
(1, 'TechJobPortal', 1, 'fa-briefcase', 'TechJobPortal', 'http://localhost/projects/workspace/TechJobPortal/', 'Tech. Job Portal connecting people together.', 'Tech Marketplace, TechJobPortal Freelance Marketplace, TechJobPortal Marketplace', 'TechJobPortal Team', 'info@TechJobPortal.com', 'password', 'assets/img/bg/1475740653.jpg', 4, 2, 2, 'Find & Hire talented people.', 1, 'You need people who can make your business thrive.', 'Tell us what freelance service you need e.g Design a Company Logo', 'assets/img/header/1510083889.jpg', 'Here''s the most popular categories.', 'We are going to work to attain the highest project success rate in the tech industry. Here''s what some of our tech guys are saying.', 'Here is our site statistics ', 'How we grew into what we are today.', '<p><font face="Source Sans Pro, sans-serif"><span style="font-size: 24px;">TechJobportal.&nbsp;</span></font></p><p>we evolve from the challenge hosted by a community (facebook developer circle).</p><p><br></p>', 'assets/img/about/1510084240silicon-valley-new-employees-onboard-welcome-orientation.jpg', 'We bring the application so that skill of developers will not be wasted and the dream of client will not just be a dream but REALITY', 'Our Brilliant and Harworking Team.', 'Our Story told in a few lines.', 'Get the job done right.', 'assets/img/how/1483453827.jpg', 'Frequently Asked Questions.', 'assets/img/faq/1483523347.jpg', '<p>\r\n\r\n      </p><section>\r\n        <div class="container">\r\n\r\n          <h3>Faq section for</h3><p>frequently asked question</p></div></section><p></p>', 'Get in touch with us.', 'assets/img/contact/1483528957.jpg', 'Lagos, Nigeria', '+2348072065173', 'pelumiasefon@gmail.com', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15856.49653157944!2d3.361695017223192!3d6.505967044315403!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x103b8c8c358b3f4b%3A0x5552cfbd43df8434!2sYaba%2C+Oworonshoki!5e0!3m2!1sen!2sng!4v1510132583318" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', 'We work hard to build a great product that is beautifully designed, simple to use, user friendly with great focus on user experience', 'http://www.facebook.com/TechJobPortal', 'http://www.twitter.com/TechJobPortal', 'http://www.google.com/TechJobPortal', 'http://www.instagram.com/TechJobPortal', 'http://www.linkedin.com/TechJobPortal', 'Membership & Bids', 'assets/img/pricing/1483793380.jpg', 'assets/img/service/1510084296silicon-valley-new-employees-onboard-welcome-orientation.jpg', 'assets/img/jobs/1510422176rtal.jpg', '<script>\r\n  (function(i,s,o,g,r,a,m){i[''GoogleAnalyticsObject'']=r;i[r]=i[r]||function(){\r\n  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),\r\n  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)\r\n  })(window,document,''script'',''https://www.google-analytics.com/analytics.js'',''ga'');\r\n\r\n  ga(''create'', ''UA-79656468-4'', ''auto'');\r\n  ga(''send'', ''pageview'');\r\n\r\n</script>');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE IF NOT EXISTS `skills` (
`id` int(255) NOT NULL,
  `name` varchar(300) NOT NULL,
  `active` tinyint(4) NOT NULL,
  `delete_remove` tinyint(4) NOT NULL,
  `date_added` varchar(300) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2670 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `name`, `active`, `delete_remove`, `date_added`) VALUES
(1, 'Zurb Foundation', 1, 0, '2016-01-19 17:21:03'),
(2, 'Zope', 1, 0, '2016-01-19 17:21:27'),
(3, 'Zoomla', 1, 0, '2016-01-19 17:21:36'),
(4, 'Zoho CRM', 1, 0, '2016-01-19 17:21:50'),
(5, 'Zoho Creator', 1, 0, '2016-01-19 17:22:09'),
(6, 'ZK', 1, 0, '2016-01-19 17:22:18'),
(7, 'Zimbra Development', 1, 0, '2016-01-19 17:22:34'),
(8, 'Zimbra Administration', 1, 0, '2016-01-19 17:22:59'),
(9, 'Zimbra Marketing', 1, 0, '2016-01-19 17:23:16'),
(10, 'Zennolab ZennoPoster', 1, 0, '2016-01-19 17:23:48'),
(11, 'Zendesk API Development ', 1, 0, '2016-01-19 17:24:09'),
(12, 'Zendesk', 1, 0, '2016-01-19 17:25:51'),
(13, 'Zend Studio', 1, 0, '2016-01-19 17:26:20'),
(14, 'Zend Framework', 1, 0, '2016-01-19 17:26:38'),
(15, 'Zen Cart', 1, 0, '2016-01-19 17:26:56'),
(16, 'Zaxwerks', 1, 0, '2016-01-19 17:27:18'),
(17, 'zapier', 1, 0, '2016-01-19 17:27:35'),
(18, 'Zabbix', 1, 0, '2016-01-19 17:27:57'),
(19, 'YUI Library ', 1, 0, '2016-01-19 17:28:25'),
(20, 'YouTube Marketing', 1, 0, '2016-01-19 17:28:41'),
(21, 'YouTube Development ', 1, 0, '2016-01-19 17:29:24'),
(22, 'Yola ', 1, 0, '2016-01-19 17:29:38'),
(23, 'Yoga', 1, 0, '2016-01-19 17:29:54'),
(24, 'Yii', 1, 0, '2016-01-19 17:30:10'),
(25, 'Yandex MatrixNet', 1, 0, '2016-01-19 17:30:25'),
(26, 'Yandex API ', 1, 0, '2016-01-19 17:30:47'),
(27, 'YAML', 1, 0, '2016-01-19 17:31:03'),
(28, 'Yahoo! Store', 1, 0, '2016-01-19 17:31:51'),
(29, 'Yahoo! Search Marketing', 1, 0, '2016-01-19 17:32:07'),
(30, 'Yahoo! Query Language', 1, 0, '2016-01-19 17:32:23'),
(31, 'Yahoo! Messenger ', 1, 0, '2016-01-19 17:32:44'),
(32, 'Yahoo! Merchant Solutions ', 1, 0, '2016-01-19 17:32:59'),
(33, 'Yahoo Developer Skills', 1, 0, '2016-01-19 17:33:15'),
(34, 'Yahoo! Advertising Solutions', 1, 0, '2016-01-19 17:33:31'),
(35, 'XUL', 1, 0, '2016-01-19 17:34:03'),
(36, 'XSLT', 1, 0, '2016-01-19 17:34:21'),
(37, 'XSL', 1, 0, '2016-01-19 17:34:39'),
(38, 'XSD', 1, 0, '2016-01-19 17:34:57'),
(39, 'XRumer', 1, 0, '2016-01-19 17:35:13'),
(40, 'XQuery ', 1, 0, '2016-01-19 17:37:33'),
(41, 'XPath', 1, 0, '2016-01-19 17:37:47'),
(42, 'XOOPS', 1, 0, '2016-01-19 17:38:04'),
(43, 'XMPP', 1, 0, '2016-01-19 18:04:12'),
(44, 'xml web services', 1, 0, '2016-01-19 18:04:25'),
(45, 'XML-RPC', 1, 0, '2016-01-19 18:04:46'),
(46, 'XML', 1, 0, '2016-01-19 18:05:03'),
(47, 'Xlinesoft PHPRunner', 1, 0, '2016-01-19 18:05:14'),
(48, 'Xilinx', 1, 0, '2016-01-19 18:05:25'),
(49, 'XHTML', 1, 0, '2016-01-19 18:05:37'),
(50, 'Xero', 1, 0, '2016-01-19 18:05:55'),
(51, 'XenForo', 1, 0, '2016-01-19 18:06:07'),
(52, 'Xen Hypervisor', 1, 0, '2016-01-19 18:06:19'),
(53, 'Xen Cloud Platform', 1, 0, '2016-01-19 18:06:33'),
(54, 'SAP Xcelsius', 1, 0, '2016-01-19 18:06:50'),
(55, 'Xbox', 1, 0, '2016-01-19 18:07:04'),
(56, 'Xara Xtreme', 1, 0, '2016-01-19 18:07:17'),
(57, 'XAMPP', 1, 0, '2016-01-19 18:07:32'),
(58, 'XAML', 1, 0, '2016-01-19 18:07:44'),
(59, 'Xamarin', 1, 0, '2016-01-19 18:07:55'),
(60, 'Xactimate', 1, 0, '2016-01-19 18:08:06'),
(61, 'X86 assembly language', 1, 0, '2016-01-19 18:08:42'),
(62, 'X-Cart', 1, 0, '2016-01-19 18:08:54'),
(63, 'WxWidgets', 1, 0, '2016-01-19 18:09:11'),
(64, 'Wu', 1, 0, '2016-01-19 18:09:26'),
(65, 'Slang-style Writing', 1, 0, '2016-01-19 18:09:38'),
(66, 'Writing', 1, 0, '2016-01-19 18:09:50'),
(67, 'Wrap Advertising', 1, 0, '2016-01-19 18:10:04'),
(68, 'Windows Presentation Foundation (WPF) ', 1, 0, '2016-01-19 18:10:40'),
(69, 'WordPress e-Commerce', 1, 0, '2016-01-19 18:10:52'),
(70, 'Wowza Media Server', 1, 0, '2016-01-19 18:11:20'),
(71, 'Worldspan', 1, 0, '2016-01-19 18:11:31'),
(72, 'Worldbuilding', 1, 0, '2016-01-19 18:11:44'),
(73, 'Workshop Facilities', 1, 0, '2016-01-19 18:11:58'),
(74, 'Workforce Management', 1, 0, '2016-01-19 18:12:26'),
(75, 'Worketc', 1, 0, '2016-01-19 18:12:39'),
(76, 'Wordpress Plugin', 1, 0, '2016-01-19 18:12:58'),
(77, 'WordPress', 1, 0, '2016-01-19 18:13:13'),
(78, 'Wordperfect', 1, 0, '2016-01-19 18:13:35'),
(79, 'Wordfast', 1, 0, '2016-01-19 18:13:47'),
(80, 'Word processing', 1, 0, '2016-01-19 18:14:02'),
(81, 'Word-of-Mouth', 1, 0, '2016-01-19 18:14:15'),
(82, 'Woocommerce', 1, 0, '2016-01-19 18:14:28'),
(83, 'WML Script ', 1, 0, '2016-01-19 18:14:48'),
(84, 'WiX', 1, 0, '2016-01-19 18:15:09'),
(85, 'Wireless Security', 1, 0, '2016-01-19 18:15:22'),
(86, 'Wireless Network Implementation', 1, 0, '2016-01-19 19:02:16'),
(87, 'Wireframing', 1, 0, '2016-01-19 19:02:31'),
(88, 'Winsock', 1, 0, '2016-01-19 19:02:52'),
(89, 'WinRunner', 1, 0, '2016-01-19 19:03:08'),
(90, 'Windows XP Administration', 1, 0, '2016-01-19 19:03:24'),
(91, 'Microsoft Windows Workflow Foundation', 1, 0, '2016-01-19 19:03:40'),
(92, 'Windows Vista', 1, 0, '2016-01-19 19:03:53'),
(93, 'Microsoft Windows Template Library', 1, 0, '2016-01-19 19:04:06'),
(94, 'Microsoft Windows Phone 7 App Development ', 1, 0, '2016-01-19 19:04:23'),
(95, 'Windows Phone', 1, 0, '2016-01-19 19:04:37'),
(96, 'Windows NT Administration ', 1, 0, '2016-01-19 19:04:55'),
(97, 'Microsoft Windows Movie Maker', 1, 0, '2016-01-19 19:05:11'),
(98, 'Windows Mobile', 1, 0, '2016-01-19 19:05:23'),
(99, 'microsoft windows media connect', 1, 0, '2016-01-19 19:05:37'),
(100, 'Windows Forms Development', 1, 0, '2016-01-19 19:05:50'),
(101, 'Microsoft Windows Azure', 1, 0, '2016-01-19 19:06:06'),
(102, 'Windows App Development', 1, 0, '2016-01-19 19:06:21'),
(103, 'Windows Administration', 1, 0, '2016-01-19 19:06:38'),
(104, 'Windows 8 App Development ', 1, 0, '2016-01-19 19:06:50'),
(105, 'Windows 8 Administration ', 1, 0, '2016-01-19 19:07:03'),
(106, 'Windows 7 Administration', 1, 0, '2016-01-19 19:07:16'),
(107, 'WinDev Mobile', 1, 0, '2016-01-19 19:07:32'),
(108, 'WinDev ', 1, 0, '2016-01-19 19:07:45'),
(109, 'Wind Power Consulting', 1, 0, '2016-01-19 19:08:07'),
(110, 'WinAutomation', 1, 0, '2016-01-19 19:08:18'),
(111, 'Win32 App Development', 1, 0, '2016-01-19 19:09:48'),
(112, 'WiMAX', 1, 0, '2016-01-19 19:09:59'),
(113, 'Wilcom EmbroideryStudio', 1, 0, '2016-01-19 19:10:11'),
(114, 'Wilcom Embroidery Digitization', 1, 0, '2016-01-19 19:10:22'),
(115, 'Wikipedia', 1, 0, '2016-01-19 19:12:18'),
(116, 'Wiki', 1, 0, '2016-01-19 19:12:34'),
(117, 'Wicket', 1, 0, '2016-01-19 19:12:51'),
(118, 'Wi-Fi', 1, 0, '2016-01-19 19:13:03'),
(119, 'WHMCS Development', 1, 0, '2016-01-19 19:13:14'),
(120, 'WebHost Manager (WHM) ', 1, 0, '2016-01-19 19:13:31'),
(121, 'Whiteboard Animation', 1, 0, '2016-01-19 19:13:45'),
(122, 'White Paper Writing', 1, 0, '2016-01-19 19:13:56'),
(123, 'Westlaw', 1, 0, '2016-01-19 19:14:07'),
(124, 'Welsh', 1, 0, '2016-01-19 19:14:17'),
(125, 'Welding', 1, 0, '2016-01-19 19:14:28'),
(126, 'Weka', 1, 0, '2016-01-19 19:14:44'),
(127, 'Weebly', 1, 0, '2016-01-19 19:14:57'),
(128, 'Website Wireframing', 1, 0, '2016-01-19 19:15:11'),
(129, 'Website Prototyping', 1, 0, '2016-01-19 19:15:22'),
(130, 'Website Development', 1, 0, '2016-01-20 05:39:14'),
(131, 'Website Baker', 1, 0, '2016-01-20 05:39:27'),
(132, 'Website Analytics', 1, 0, '2016-01-20 05:39:41'),
(133, 'WebRTC', 1, 0, '2016-01-20 05:39:53'),
(134, 'Oracle WebLogic', 1, 0, '2016-01-20 05:40:05'),
(135, 'Webisode Production', 1, 0, '2016-01-20 05:40:20'),
(136, 'Webisode Presentation', 1, 0, '2016-01-20 05:40:35'),
(137, 'WebGL', 1, 0, '2016-01-20 05:40:47'),
(138, 'Webflow', 1, 0, '2016-01-20 05:41:05'),
(139, 'webERP', 1, 0, '2016-01-20 05:41:20'),
(140, 'webeeh', 1, 0, '2016-01-20 05:41:54'),
(141, 'WebApp Pentesting', 1, 0, '2016-01-20 05:42:06'),
(142, 'Web Testing', 1, 0, '2016-01-20 05:42:21'),
(143, 'Web Services Development', 1, 0, '2016-01-20 05:42:35'),
(144, 'Web Services', 1, 0, '2016-01-20 05:42:49'),
(145, 'Web scraping', 1, 0, '2016-01-20 05:43:09'),
(146, 'Web Programming', 1, 0, '2016-01-20 05:43:20'),
(147, 'Palm webOS Application Development', 1, 0, '2016-01-20 05:43:37'),
(148, 'Web Hosting', 1, 0, '2016-01-20 05:43:51'),
(149, 'Web Host Manager', 1, 0, '2016-01-20 05:44:06'),
(150, 'Web design', 1, 0, '2016-01-20 05:44:18'),
(151, 'Web Crawler', 1, 0, '2016-01-20 05:44:31'),
(152, 'Content Management', 1, 0, '2016-01-20 05:44:45'),
(153, 'Web Analytics', 1, 0, '2016-01-20 05:44:59'),
(154, 'Windows Communication Foundation (WCF)', 1, 0, '2016-01-20 05:45:13'),
(155, 'Wave Accounting', 1, 0, '2016-01-20 06:02:47'),
(156, 'Watercolor Painting', 1, 0, '2016-01-20 06:02:59'),
(157, 'Wardrobe Styling', 1, 0, '2016-01-20 06:03:11'),
(158, 'WAN Optimization', 1, 0, '2016-01-20 06:03:24'),
(159, 'WAN', 1, 0, '2016-01-20 06:03:42'),
(160, 'WAMP', 1, 0, '2016-01-20 06:03:54'),
(161, 'W3C Widget API', 1, 0, '2016-01-20 06:04:06'),
(162, 'VxWorks', 1, 0, '2016-01-20 06:04:22'),
(163, 'Vulnerability assessment', 1, 0, '2016-01-20 06:04:37'),
(164, 'Vugen Scripting', 1, 0, '2016-01-20 06:04:49'),
(165, 'VTK', 1, 0, '2016-01-20 06:04:59'),
(166, 'vtiger Development', 1, 0, '2016-01-20 06:05:13'),
(167, 'vtiger Adminstration', 1, 0, '2016-01-20 06:05:24'),
(168, 'VSS', 1, 0, '2016-01-20 06:05:36'),
(169, 'Virtual storage access method (VSAM)', 1, 0, '2016-01-20 06:05:57'),
(170, 'V-Ray', 1, 0, '2016-01-20 06:06:08'),
(171, 'VPN', 1, 0, '2016-01-20 06:06:19'),
(172, 'volusion', 1, 0, '2016-01-20 06:06:29'),
(173, 'Volleyball', 1, 0, '2016-01-20 06:06:41'),
(174, 'Voldemort', 1, 0, '2016-01-20 06:06:54'),
(175, 'VOIP Software', 1, 0, '2016-01-20 06:07:12'),
(176, 'VOIP Administration', 1, 0, '2016-01-20 06:07:24'),
(177, 'VoiceXML', 1, 0, '2016-01-20 06:07:35'),
(178, 'Voice Talent', 1, 0, '2016-01-20 06:07:47'),
(179, 'Voice Over ', 1, 0, '2016-01-20 06:07:58'),
(180, 'VMware ESX Server', 1, 0, '2016-01-20 06:08:09'),
(181, 'VMware Administration', 1, 0, '2016-01-20 06:08:27'),
(182, 'VLSI', 1, 0, '2016-01-20 06:08:38'),
(183, 'VLookup Tables', 1, 0, '2016-01-20 06:08:50'),
(184, 'VKontakte API', 1, 0, '2016-01-20 06:09:01'),
(185, 'Vizrt', 1, 0, '2016-01-20 06:09:15'),
(186, 'Visualization', 1, 0, '2016-01-20 06:09:26'),
(187, 'visualforce', 1, 0, '2016-01-20 06:09:38'),
(188, 'Visual Merchandising', 1, 0, '2016-01-20 06:09:50'),
(189, 'Visual FoxPro', 1, 0, '2016-01-20 06:10:03'),
(190, 'Visual Dataflex', 1, 0, '2016-01-20 06:10:18'),
(191, 'Visual Basic', 1, 0, '2016-01-20 06:10:31'),
(192, 'Visual Arts', 1, 0, '2016-01-20 06:10:47'),
(193, 'virus removal', 1, 0, '2016-01-20 06:10:58'),
(194, 'Virtuoso', 1, 0, '2016-01-20 06:11:10'),
(195, 'VirtueMart', 1, 0, '2016-01-20 06:11:27'),
(196, 'Virtualization', 1, 0, '2016-01-20 06:11:39'),
(197, 'Virtual Private Server (VPS)', 1, 0, '2016-01-20 06:11:52'),
(198, 'Virtual Machine', 1, 0, '2016-01-20 06:12:07'),
(199, 'Virtual Currency', 1, 0, '2016-01-20 06:12:19'),
(200, 'Virtual Assistant', 1, 0, '2016-01-20 06:12:31'),
(201, 'Viral marketing', 1, 0, '2016-01-20 06:12:43'),
(202, 'Violin Performance', 1, 0, '2016-01-20 06:12:54'),
(203, 'Violin Composition', 1, 0, '2016-01-20 06:13:05'),
(204, 'Vim', 1, 0, '2016-01-20 06:13:17'),
(205, 'Vietnamese', 1, 0, '2016-01-20 06:13:35'),
(206, 'VIDVOX VDMX', 1, 0, '2016-01-20 06:13:55'),
(207, 'Videography', 1, 0, '2016-01-20 06:14:09'),
(208, 'Video Upload', 1, 0, '2016-01-20 06:14:20'),
(209, 'Video Streaming', 1, 0, '2016-01-20 06:14:31'),
(210, 'Video Sales Letter', 1, 0, '2016-01-20 06:14:43'),
(211, 'Video Ripping', 1, 0, '2016-01-20 06:14:54'),
(212, 'Video Publishing', 1, 0, '2016-01-20 06:15:08'),
(213, 'Video production', 1, 0, '2016-01-20 06:15:20'),
(214, 'Video Post Editing', 1, 0, '2016-01-20 06:15:33'),
(215, 'Video editing', 1, 0, '2016-01-20 06:16:02'),
(216, 'Video Conversion', 1, 0, '2016-01-20 06:16:15'),
(217, 'vicidial', 1, 0, '2016-01-20 06:16:27'),
(218, 'VHDL', 1, 0, '2016-01-20 06:16:41'),
(219, 'VFX Design', 1, 0, '2016-01-20 06:16:57'),
(220, 'VFX Animation', 1, 0, '2016-01-20 06:17:11'),
(221, 'Vertica', 1, 0, '2016-01-20 06:17:23'),
(222, 'Version Control', 1, 0, '2016-01-20 06:17:34'),
(223, 'Verilog / VHDL', 1, 0, '2016-01-20 06:17:45'),
(224, 'Venture Capital Consulting', 1, 0, '2016-01-20 06:17:57'),
(225, 'Vendor Management Systems', 1, 0, '2016-01-20 06:18:10'),
(226, 'Velocity Template Engine', 1, 0, '2016-01-20 06:18:27'),
(227, 'Veeam', 1, 0, '2016-01-20 06:18:38'),
(228, 'VectorWorks', 1, 0, '2016-01-20 06:18:50'),
(229, 'vCita', 1, 0, '2016-01-20 06:19:02'),
(230, 'VBulletin', 1, 0, '2016-01-20 06:19:14'),
(231, 'vbseo', 1, 0, '2016-01-20 06:19:26'),
(232, 'VBScript', 1, 0, '2016-01-20 06:20:01'),
(233, 'VBA', 1, 0, '2016-01-20 06:20:11'),
(234, 'VB.NET', 1, 0, '2016-01-20 06:20:23'),
(235, 'Varnish Cache', 1, 0, '2016-01-20 06:20:35'),
(236, 'Valgrind', 1, 0, '2016-01-20 06:20:48'),
(237, 'Vagrant', 1, 0, '2016-01-20 06:21:02'),
(238, 'Vaadin Framework', 1, 0, '2016-01-20 06:21:15'),
(239, 'UV Mapping', 1, 0, '2016-01-20 06:21:51'),
(240, 'Users Guide Writing', 1, 0, '2016-01-20 06:23:46'),
(241, 'User Experience Design', 1, 0, '2016-01-20 06:24:11'),
(242, 'User acceptance testing', 1, 0, '2016-01-20 06:24:23'),
(243, 'USB Electronics', 1, 0, '2016-01-20 06:24:38'),
(244, 'Usability testing', 1, 0, '2016-01-20 06:24:50'),
(245, 'Urdu', 1, 0, '2016-01-20 06:25:02'),
(246, 'Urban Design', 1, 0, '2016-01-20 06:25:15'),
(247, 'UnrealScript', 1, 0, '2016-01-20 06:25:29'),
(248, 'Unreal Engine', 1, 0, '2016-01-20 06:25:46'),
(249, 'Unix System Administration', 1, 0, '2016-01-20 06:25:58'),
(250, 'Unix shell', 1, 0, '2016-01-20 06:26:09'),
(251, 'Unix', 1, 0, '2016-01-20 06:26:23'),
(252, 'Unity', 1, 0, '2016-01-20 06:26:34'),
(253, 'Unit Testing', 1, 0, '2016-01-20 06:26:46'),
(254, 'Unify Corporation', 1, 0, '2016-01-20 06:27:00'),
(255, 'Unify SQLBase', 1, 0, '2016-01-20 06:27:12'),
(256, 'Unify', 1, 0, '2016-01-20 06:27:27'),
(257, 'Unified Threat Management', 1, 0, '2016-01-20 06:27:42'),
(258, 'Underwriting', 1, 0, '2016-01-20 06:27:54'),
(259, 'unbounce', 1, 0, '2016-01-20 06:28:10'),
(260, 'UML', 1, 0, '2016-01-20 06:28:26'),
(261, 'Umbraco', 1, 0, '2016-01-20 06:28:38'),
(262, 'Ulead VideoStudio', 1, 0, '2016-01-20 06:28:52'),
(263, 'Ulead COOL 3D', 1, 0, '2016-01-20 06:29:04'),
(264, 'Ukrainian', 1, 0, '2016-01-20 06:29:15'),
(265, 'User interface design', 1, 0, '2016-01-20 06:29:28'),
(266, 'Ubuntu', 1, 0, '2016-01-20 06:29:42'),
(267, 'Ubercart', 1, 0, '2016-01-20 06:29:53'),
(268, 'U.S. Culture', 1, 0, '2016-01-20 06:30:10'),
(269, 'Typography', 1, 0, '2016-01-20 06:30:23'),
(270, 'TYPO3', 1, 0, '2016-01-20 06:30:34'),
(271, 'Typing', 1, 0, '2016-01-20 06:30:46'),
(272, 'Typesetting', 1, 0, '2016-01-20 06:30:57'),
(273, 'TypePad', 1, 0, '2016-01-20 06:31:10'),
(274, 'Twitter Marketing', 1, 0, '2016-01-20 06:31:23'),
(275, 'Bootstrap', 1, 0, '2016-01-20 06:31:36'),
(276, 'twitter api', 1, 0, '2016-01-20 06:31:48'),
(277, 'Twilio API', 1, 0, '2016-01-20 06:32:01'),
(278, 'Twig', 1, 0, '2016-01-20 06:32:13'),
(279, 'TV Broadcasting', 1, 0, '2016-01-20 06:32:29'),
(280, 'Turkish', 1, 0, '2016-01-20 06:32:41'),
(281, 'Turbo C', 1, 0, '2016-01-20 06:32:53'),
(282, 'Tumblr', 1, 0, '2016-01-20 06:33:04'),
(283, 'TSR', 1, 0, '2016-01-20 06:33:15'),
(284, 'TSM Administration', 1, 0, '2016-01-20 06:33:29'),
(285, 'Trusts Estates and Wills', 1, 0, '2016-01-20 06:33:42'),
(286, 'Tropo', 1, 0, '2016-01-20 06:33:54'),
(287, 'Trixbox', 1, 0, '2016-01-20 06:34:06'),
(288, 'Triakis VSIL', 1, 0, '2016-01-20 06:34:19'),
(289, 'Travel Writing', 1, 0, '2016-01-20 06:35:52'),
(290, 'Travel Planning', 1, 0, '2016-01-20 06:36:04'),
(291, 'Travel Agent', 1, 0, '2016-01-20 06:36:17'),
(292, 'Translation Yiddish English', 1, 0, '2016-01-20 06:36:37'),
(293, 'Translation Welsh English', 1, 0, '2016-01-20 06:36:49'),
(294, 'Translation Vietnamese English', 1, 0, '2016-01-20 06:37:01'),
(295, 'Translation Urdu English', 1, 0, '2016-01-20 06:37:18'),
(296, 'Translation Ukrainian English', 1, 0, '2016-01-20 06:37:30'),
(297, 'Translation Turkish English', 1, 0, '2016-01-20 06:37:44'),
(298, 'Translation Thai English', 1, 0, '2016-01-20 06:37:57'),
(299, 'Translation Telugu English', 1, 0, '2016-01-20 06:38:10'),
(300, 'Translation Tamil English', 1, 0, '2016-01-20 06:38:25'),
(301, 'Translation Tagalog English ', 1, 0, '2016-01-20 06:38:44'),
(302, 'Translation Swedish English', 1, 0, '2016-01-20 06:38:57'),
(303, 'Translation Swahili English', 1, 0, '2016-01-20 06:39:13'),
(304, 'Translation Spanish French', 1, 0, '2016-01-20 06:39:27'),
(305, 'Translation Spanish English', 1, 0, '2016-01-20 06:39:42'),
(306, 'Translation Slovenian English', 1, 0, '2016-01-20 06:39:59'),
(307, 'Translation Slovak English', 1, 0, '2016-01-20 06:40:11'),
(308, 'Translation Serbian English', 1, 0, '2016-01-20 06:40:23'),
(309, 'Translation Russian English', 1, 0, '2016-01-20 06:40:36'),
(310, 'Translation Romanian English', 1, 0, '2016-01-20 06:40:50'),
(311, 'Translation Portuguese English', 1, 0, '2016-01-20 06:41:03'),
(312, 'Translation Polish German', 1, 0, '2016-01-20 06:41:18'),
(313, 'Translation Polish English', 1, 0, '2016-01-20 06:41:34'),
(314, 'Translation Persian English', 1, 0, '2016-01-20 06:41:47'),
(315, 'Translation Norwegian English', 1, 0, '2016-01-20 06:41:59'),
(316, 'Translation Mandarin English', 1, 0, '2016-01-20 06:42:12'),
(317, 'Translation Maltese English', 1, 0, '2016-01-20 06:42:26'),
(318, 'Translation Malay English', 1, 0, '2016-01-20 06:42:42'),
(319, 'Translation Macedonian English', 1, 0, '2016-01-20 06:42:55'),
(320, 'Translation Lithuanian English', 1, 0, '2016-01-20 06:43:10'),
(321, 'Translation Latvian English', 1, 0, '2016-01-20 06:43:23'),
(322, 'Translation Latin English', 1, 0, '2016-01-20 06:43:34'),
(323, 'Translation Korean English', 1, 0, '2016-01-20 06:43:58'),
(324, 'Translation Kannada English', 1, 0, '2016-01-20 06:44:10'),
(325, 'Translation Japanese English', 1, 0, '2016-01-20 06:44:23'),
(326, 'Translation Italian English', 1, 0, '2016-01-20 06:44:36'),
(327, 'Translation Irish English', 1, 0, '2016-01-20 06:44:47'),
(328, 'Translation Indonesian English', 1, 0, '2016-01-20 06:44:59'),
(329, 'Translation Icelandic English', 1, 0, '2016-01-20 06:45:17'),
(330, 'Translation Hungarian English', 1, 0, '2016-01-20 06:45:30'),
(331, 'Translation Hindi English', 1, 0, '2016-01-20 06:45:42'),
(332, 'Translation Hebrew English', 1, 0, '2016-01-20 06:45:57'),
(333, 'Translation Haitian Creole English', 1, 0, '2016-01-20 06:46:11'),
(334, 'Translation Gujarati English', 1, 0, '2016-01-20 06:46:24'),
(335, 'Translation Greek English', 1, 0, '2016-01-20 06:46:38'),
(336, 'Translation German Polish', 1, 0, '2016-01-20 06:47:09'),
(337, 'Translation German French', 1, 0, '2016-01-20 06:47:47'),
(338, 'Translation German English', 1, 0, '2016-01-20 06:48:03'),
(339, 'Translation Georgian English', 1, 0, '2016-01-20 06:48:16'),
(340, 'Translation Galician English', 1, 0, '2016-01-20 06:48:35'),
(341, 'Translation French Spanish', 1, 0, '2016-01-20 06:48:52'),
(342, 'Translation French German', 1, 0, '2016-01-20 06:49:15'),
(343, 'Translation French English', 1, 0, '2016-01-20 06:49:26'),
(344, 'Translation Finnish English', 1, 0, '2016-01-20 06:49:43'),
(345, 'Translation Filipino English', 1, 0, '2016-01-20 06:50:04'),
(346, 'Translation Estonian English', 1, 0, '2016-01-20 06:50:16'),
(347, 'Translation English Yiddish', 1, 0, '2016-01-20 06:50:32'),
(348, 'Translation English Welsh', 1, 0, '2016-01-20 06:50:59'),
(349, 'Translation English Vietnamese', 1, 0, '2016-01-20 06:52:01'),
(350, 'Translation English Urdu', 1, 0, '2016-01-20 06:52:14'),
(351, 'Translation English Ukrainian', 1, 0, '2016-01-20 06:52:40'),
(352, 'Translation English Turkish', 1, 0, '2016-01-20 06:52:52'),
(353, 'Translation English Thai', 1, 0, '2016-01-20 06:53:05'),
(354, 'Translation English Telugu', 1, 0, '2016-01-20 06:53:18'),
(355, 'Translation English Tamil', 1, 0, '2016-01-20 06:53:32'),
(356, 'Translation English Tagalog', 1, 0, '2016-01-20 06:53:44'),
(357, 'Translation English Swedish', 1, 0, '2016-01-20 06:54:02'),
(358, 'Translation English Swahili', 1, 0, '2016-01-20 06:54:15'),
(359, 'Translation English Spanish', 1, 0, '2016-01-20 06:54:30'),
(360, 'Translation English Slovenian', 1, 0, '2016-01-20 06:54:48'),
(361, 'Translation English Slovak', 1, 0, '2016-01-20 06:55:01'),
(362, 'Translation English Serbian', 1, 0, '2016-01-20 06:55:15'),
(363, 'Translation English Russian', 1, 0, '2016-01-20 06:55:36'),
(364, 'Translation English Romanian', 1, 0, '2016-01-20 06:56:07'),
(365, 'Translation English Portuguese', 1, 0, '2016-01-20 06:56:27'),
(366, 'Translation English Polish', 1, 0, '2016-01-20 06:56:41'),
(367, 'Translation English Persian', 1, 0, '2016-01-20 06:57:03'),
(368, 'Translation English Norwegian', 1, 0, '2016-01-20 06:57:18'),
(369, 'Translation English Mandarin', 1, 0, '2016-01-20 06:57:31'),
(370, 'Translation English Maltese', 1, 0, '2016-01-20 06:58:03'),
(371, 'Translation English Malay', 1, 0, '2016-01-20 06:58:15'),
(372, 'Translation English Macedonian', 1, 0, '2016-01-20 06:58:28'),
(373, 'Translation English Lithuanian', 1, 0, '2016-01-20 06:58:49'),
(374, 'Translation English Latvian', 1, 0, '2016-01-20 06:59:03'),
(375, 'Translation English Latin', 1, 0, '2016-01-20 06:59:15'),
(376, 'Translation English Kyrgyz', 1, 0, '2016-01-20 06:59:27'),
(377, 'Translation English Korean', 1, 0, '2016-01-20 06:59:39'),
(378, 'Translation English Kannada', 1, 0, '2016-01-20 06:59:53'),
(379, 'Translation English Japanese', 1, 0, '2016-01-20 07:00:19'),
(380, 'Translation English Italian', 1, 0, '2016-01-20 07:00:39'),
(381, 'Translation English Irish', 1, 0, '2016-01-20 07:00:52'),
(382, 'Translation English Indonesian', 1, 0, '2016-01-20 07:01:08'),
(383, 'Translation English Icelandic', 1, 0, '2016-01-20 07:01:20'),
(384, 'Translation English Hungarian', 1, 0, '2016-01-20 07:01:34'),
(385, 'Translation English Hindi', 1, 0, '2016-01-20 07:01:56'),
(386, 'Translation English Hebrew', 1, 0, '2016-01-20 07:02:14'),
(387, 'Translation English Haitian Creole', 1, 0, '2016-01-20 07:02:31'),
(388, 'Translation English Gujarati', 1, 0, '2016-01-20 07:02:58'),
(389, 'Translation English Greek', 1, 0, '2016-01-20 07:03:16'),
(390, 'Translation English German', 1, 0, '2016-01-20 07:03:30'),
(391, 'Translation English Georgian', 1, 0, '2016-01-20 07:03:44'),
(392, 'Translation English Galician', 1, 0, '2016-01-20 07:04:04'),
(393, 'Translation English French', 1, 0, '2016-01-20 07:04:17'),
(394, 'Translation English Finnish', 1, 0, '2016-01-20 07:04:31'),
(395, 'Translation English Filipino', 1, 0, '2016-01-20 07:04:46'),
(396, 'Translation English Estonian', 1, 0, '2016-01-20 07:05:00'),
(397, 'Translation English Dutch', 1, 0, '2016-01-20 07:05:12'),
(398, 'Translation English Danish', 1, 0, '2016-01-20 07:05:27'),
(399, 'Translation English Czech', 1, 0, '2016-01-20 07:05:40'),
(400, 'Translation English Croatian', 1, 0, '2016-01-20 07:06:20'),
(401, 'Translation English Chinese', 1, 0, '2016-01-20 07:06:33'),
(402, 'Translation English Catalan', 1, 0, '2016-01-20 07:06:45'),
(403, 'Translation English Bulgarian', 1, 0, '2016-01-20 07:06:57'),
(404, 'Translation English Brazilian Portuguese', 1, 0, '2016-01-20 07:07:15'),
(405, 'Translation English Bengali', 1, 0, '2016-01-20 07:07:29'),
(406, 'Translation English Belariusan', 1, 0, '2016-01-20 07:07:42'),
(407, 'Translation English Armenian', 1, 0, '2016-01-20 07:08:02'),
(408, 'Translation English Arabic', 1, 0, '2016-01-20 07:08:16'),
(409, 'Translation English Albanian', 1, 0, '2016-01-20 07:08:32'),
(410, 'Translation English Afrikaans', 1, 0, '2016-01-20 07:08:44'),
(411, 'Translation Dutch English', 1, 0, '2016-01-20 07:09:01'),
(412, 'Translation Danish English', 1, 0, '2016-01-20 07:09:15'),
(413, 'Translation Czech English', 1, 0, '2016-01-20 07:09:39'),
(414, 'Translation Croatian English', 1, 0, '2016-01-20 07:09:56'),
(415, 'Translation Chinese English', 1, 0, '2016-01-20 07:10:10'),
(416, 'Translation Catalan English', 1, 0, '2016-01-20 07:10:27'),
(417, 'Translation Bulgarian English', 1, 0, '2016-01-20 07:10:58'),
(418, 'Translation Brazilian Portuguese English', 1, 0, '2016-01-20 07:11:13'),
(419, 'Translation Bengali English', 1, 0, '2016-01-20 07:11:31'),
(420, 'Translation Belarusian English', 1, 0, '2016-01-20 07:11:45'),
(421, 'Translation Armenian English', 1, 0, '2016-01-20 07:11:59'),
(422, 'Translation Arabic English', 1, 0, '2016-01-20 07:12:15'),
(423, 'Translation Albanian English', 1, 0, '2016-01-20 07:12:30'),
(424, 'Translation Afrikaans English', 1, 0, '2016-01-20 07:12:44'),
(425, 'Translation', 1, 0, '2016-01-20 07:12:58'),
(426, 'Transcription', 1, 0, '2016-01-20 07:13:11'),
(427, 'Transcreation', 1, 0, '2016-01-20 07:13:24'),
(428, 'Transaction Processing', 1, 0, '2016-01-20 07:13:40'),
(429, 'traffic geyser', 1, 0, '2016-01-20 07:13:57'),
(430, 'Trademark Consulting', 1, 0, '2016-01-20 07:14:16'),
(431, 'trade2bharat', 1, 0, '2016-01-20 07:14:36'),
(432, 'Trade Show Exhibition Design', 1, 0, '2016-01-20 07:14:54'),
(433, 'Trade marketing', 1, 0, '2016-01-20 07:15:07'),
(434, 'Trade Law', 1, 0, '2016-01-20 07:15:21'),
(435, 'Trac', 1, 0, '2016-01-20 07:15:33'),
(436, 'TQM', 1, 0, '2016-01-20 07:15:45'),
(437, 'Tourism', 1, 0, '2016-01-20 07:15:58'),
(438, 'Tortoise SVN', 1, 0, '2016-01-20 07:16:11'),
(439, 'Torque Game Engine', 1, 0, '2016-01-20 07:16:24'),
(440, 'Tornado', 1, 0, '2016-01-20 07:16:39'),
(441, 'Toon Boom Studio', 1, 0, '2016-01-20 07:16:55'),
(442, 'Toon Boom Harmony', 1, 0, '2016-01-20 07:17:15'),
(443, 'Toktumi', 1, 0, '2016-01-20 07:17:41'),
(444, 'Tk', 1, 0, '2016-01-20 07:17:55'),
(445, 'Tizen', 1, 0, '2016-01-20 07:18:29'),
(446, 'Time Management', 1, 0, '2016-01-20 07:18:43'),
(447, 'TIBCO ActiveMatrix BusinessWorks', 1, 0, '2016-01-20 07:19:04'),
(448, 'Theology', 1, 0, '2016-01-20 07:19:16'),
(449, 'The Pixel Farm PFTrack', 1, 0, '2016-01-20 07:19:28'),
(450, 'The Foundry NUKE', 1, 0, '2016-01-20 07:19:43'),
(451, 'Thai', 1, 0, '2016-01-20 07:20:20'),
(452, 'Team Foundation Server', 1, 0, '2016-01-20 07:20:38'),
(453, 'Texture Artist', 1, 0, '2016-01-20 07:20:53'),
(454, 'Textpattern ', 1, 0, '2016-01-20 07:21:04'),
(455, 'Textile Engineering', 1, 0, '2016-01-20 07:21:26'),
(456, 'Testopia', 1, 0, '2016-01-20 07:21:37'),
(457, 'Testing Framework', 1, 0, '2016-01-20 07:21:49'),
(458, 'TestLodge', 1, 0, '2016-01-20 07:22:16'),
(459, 'TestLink', 1, 0, '2016-01-20 07:22:32'),
(460, 'TestComplete', 1, 0, '2016-01-20 07:22:46'),
(461, 'Test Driven Development', 1, 0, '2016-01-20 07:23:06'),
(462, 'Test Case Design', 1, 0, '2016-01-20 07:23:17'),
(463, 'Test Automation', 1, 0, '2016-01-20 07:23:28'),
(464, 'Tesseract', 1, 0, '2016-01-20 07:23:44'),
(465, 'Teradata', 1, 0, '2016-01-20 07:23:57'),
(466, 'Templates', 1, 0, '2016-01-20 07:24:09'),
(467, 'Telugu', 1, 0, '2016-01-20 07:24:28'),
(468, 'Telerik', 1, 0, '2016-01-20 07:24:48'),
(469, 'Telephone Handling', 1, 0, '2016-01-20 07:24:59'),
(470, 'Telemarketing', 1, 0, '2016-01-20 07:25:27'),
(471, 'Telecommunications Engineering', 1, 0, '2016-01-20 07:25:38'),
(472, 'Tekla Structures', 1, 0, '2016-01-20 07:25:55'),
(473, 'Technical writing', 1, 0, '2016-01-20 07:27:45'),
(474, 'Technical Translation ', 1, 0, '2016-01-20 07:28:11'),
(475, 'Technical Support ', 1, 0, '2016-01-20 07:28:22'),
(476, 'Technical Recruiter ', 1, 0, '2016-01-20 07:28:39'),
(477, 'Technical Editing', 1, 0, '2016-01-20 07:28:51'),
(478, 'Technical Documentation ', 1, 0, '2016-01-20 07:29:05'),
(479, 'technical analysis', 1, 0, '2016-01-20 10:14:53'),
(480, 'TeamViewer', 1, 0, '2016-01-20 10:15:05'),
(481, 'Tealeaf cxImpact', 1, 0, '2016-01-20 10:15:17'),
(482, 'Teaching Physics', 1, 0, '2016-01-20 10:15:36'),
(483, 'Teaching Mathematics', 1, 0, '2016-01-20 10:15:52'),
(484, 'Teaching English', 1, 0, '2016-01-20 10:16:04'),
(485, 'Teaching Algebra', 1, 0, '2016-01-20 10:16:17'),
(486, 'TCP/IP', 1, 0, '2016-01-20 10:16:30'),
(487, 'Tcl/Tk', 1, 0, '2016-01-20 10:16:42'),
(488, 'Taxonomy', 1, 0, '2016-01-20 10:16:55'),
(489, 'Tax preparation', 1, 0, '2016-01-20 10:17:12'),
(490, 'Tax Law', 1, 0, '2016-01-20 10:17:24'),
(491, 'Tastypie', 1, 0, '2016-01-20 10:17:36'),
(492, 'TAPI', 1, 0, '2016-01-20 10:17:55'),
(493, 'Tapestry', 1, 0, '2016-01-20 10:18:07'),
(494, 'Tamil', 1, 0, '2016-01-20 10:18:20'),
(495, 'Tally .ERP', 1, 0, '2016-01-20 10:18:32'),
(496, 'Tally Shoper', 1, 0, '2016-01-20 10:18:45'),
(497, 'Talend Open Studio', 1, 0, '2016-01-20 10:19:04'),
(498, 'Tagalog', 1, 0, '2016-01-20 10:19:19'),
(499, 'Tableau Software', 1, 0, '2016-01-20 10:19:32'),
(500, 'Transact-SQL', 1, 0, '2016-01-20 10:19:46'),
(501, 'T-Shirt Design', 1, 0, '2016-01-20 10:19:59'),
(502, 'Systems Development', 1, 0, '2016-01-20 10:20:17'),
(503, 'System Programming', 1, 0, '2016-01-20 10:20:31'),
(504, 'System Automation', 1, 0, '2016-01-20 10:20:45'),
(505, 'System Analysis', 1, 0, '2016-01-20 10:20:59'),
(506, 'System Administration', 1, 0, '2016-01-20 10:21:14'),
(507, 'Synthetic Aperture Color Finesse', 1, 0, '2016-01-20 10:21:30'),
(508, 'Synopsis Writing', 1, 0, '2016-01-20 10:21:44'),
(509, 'Syncsort', 1, 0, '2016-01-20 10:21:56'),
(510, 'Symfony', 1, 0, '2016-01-20 10:22:08'),
(511, 'Symbian Development', 1, 0, '2016-01-20 10:22:20'),
(512, 'Sybase Programming', 1, 0, '2016-01-20 10:22:40'),
(513, 'SWT', 1, 0, '2016-01-20 10:22:53'),
(514, 'SWiSH Max', 1, 0, '2016-01-20 10:23:06'),
(515, 'Swing', 1, 0, '2016-01-20 10:23:23'),
(516, 'Swift', 1, 0, '2016-01-20 10:23:37'),
(517, 'Swedish', 1, 0, '2016-01-20 10:23:51'),
(518, 'Software Configuration Management ', 1, 0, '2016-01-20 10:24:11'),
(519, 'Apache Subversion (SVN) ', 1, 0, '2016-01-20 10:24:40'),
(520, 'Sustainable Energy ', 1, 0, '2016-01-20 10:24:50'),
(521, 'SurveyMonkey', 1, 0, '2016-01-20 10:25:05'),
(522, 'Survey Design ', 1, 0, '2016-01-20 10:25:17'),
(523, 'Supply chain management ', 1, 0, '2016-01-20 10:25:37'),
(524, 'supervisory skills', 1, 0, '2016-01-20 10:25:49'),
(525, 'Supervised learning ', 1, 0, '2016-01-20 10:26:04'),
(526, 'SunGard ', 1, 0, '2016-01-20 10:26:16'),
(527, 'SugarCRM Development ', 1, 0, '2016-01-20 10:26:25'),
(528, 'Subversion', 1, 0, '2016-01-20 10:26:39'),
(529, 'Subtitling ', 1, 0, '2016-01-20 10:26:58'),
(530, 'Style Guide Development ', 1, 0, '2016-01-20 10:27:16'),
(531, 'Structured Cabling', 1, 0, '2016-01-20 10:27:38'),
(532, 'Structural Engineering ', 1, 0, '2016-01-20 10:27:46'),
(533, 'Structural Analysis ', 1, 0, '2016-01-20 10:27:59'),
(534, 'StrongMail ', 1, 0, '2016-01-20 10:28:08'),
(535, 'Stripe ', 1, 0, '2016-01-20 10:28:22'),
(536, 'Stress Management ', 1, 0, '2016-01-20 10:28:31'),
(537, 'Stream Processing ', 1, 0, '2016-01-20 10:29:14'),
(538, 'Strategic planning ', 1, 0, '2016-01-20 10:29:23'),
(539, 'Stratasys ', 1, 0, '2016-01-20 10:29:37'),
(540, 'Storyboarding ', 1, 0, '2016-01-20 10:29:45'),
(541, 'Stored Procedure Development ', 1, 0, '2016-01-20 10:29:59'),
(542, 'Stock Management ', 1, 0, '2016-01-20 10:30:07'),
(543, 'Standard Template Library (STL) ', 1, 0, '2016-01-20 10:30:37'),
(544, 'Still Life Painting ', 1, 0, '2016-01-20 10:30:46'),
(545, 'Sticker Design ', 1, 0, '2016-01-20 10:30:55'),
(546, 'Stereoscopy ', 1, 0, '2016-01-20 10:31:04'),
(547, 'stenography ', 1, 0, '2016-01-20 10:31:12'),
(548, 'Steinberg WaveLab ', 1, 0, '2016-01-20 10:31:23'),
(549, 'Steinberg Cubase ', 1, 0, '2016-01-20 10:31:37'),
(550, 'Statpoint Statgraphics ', 1, 0, '2016-01-20 10:31:48'),
(551, 'Statistics ', 1, 0, '2016-01-20 10:32:00'),
(552, 'Statistical Computing ', 1, 0, '2016-01-20 10:32:13'),
(553, 'Stationery Design ', 1, 0, '2016-01-20 10:32:23'),
(554, 'Stata ', 1, 0, '2016-01-20 10:32:41'),
(555, 'Startup Consulting ', 1, 0, '2016-01-20 10:32:49'),
(556, 'Stakeholder Management ', 1, 0, '2016-01-20 10:32:57'),
(557, 'STAAD ', 1, 0, '2016-01-20 10:33:05'),
(558, 'SSL ', 1, 0, '2016-01-20 10:33:16'),
(559, 'SQL Server Integration Services (SSIS) ', 1, 0, '2016-01-20 10:33:57'),
(560, 'SSI ', 1, 0, '2016-01-20 10:34:09'),
(561, 'SSH ', 1, 0, '2016-01-20 10:34:22'),
(562, 'Squid ', 1, 0, '2016-01-20 10:34:30'),
(563, 'SquareSpace ', 1, 0, '2016-01-20 10:34:39'),
(564, 'SQR ', 1, 0, '2016-01-20 10:34:48'),
(565, 'Sqoop ', 1, 0, '2016-01-20 10:34:57'),
(566, 'SQLite Programming ', 1, 0, '2016-01-20 10:35:09'),
(567, 'SQLite Administration ', 1, 0, '2016-01-20 10:35:17'),
(568, 'SQL Programming ', 1, 0, '2016-01-20 10:35:30'),
(569, 'SQL CLR ', 1, 0, '2016-01-20 10:35:39'),
(570, 'SQL Azure ', 1, 0, '2016-01-20 10:35:50'),
(571, 'SQL', 1, 0, '2016-01-20 10:36:03'),
(572, 'SQA', 1, 0, '2016-01-20 10:38:18'),
(573, 'Spring Security ', 1, 0, '2016-01-20 10:38:28'),
(574, 'Spring Framework ', 1, 0, '2016-01-20 10:38:37'),
(575, 'Spree ', 1, 0, '2016-01-20 10:38:45'),
(576, 'Spreadsheets ', 1, 0, '2016-01-20 10:38:53'),
(577, 'Sports Writing ', 1, 0, '2016-01-20 10:39:06'),
(578, 'Special Purpose Machines Design ', 1, 0, '2016-01-20 10:39:15'),
(579, 'Splunk ', 1, 0, '2016-01-20 10:39:24'),
(580, 'Spiral Graphics Genetica ', 1, 0, '2016-01-20 10:39:33'),
(581, 'Spine JS', 1, 0, '2016-01-20 10:39:45'),
(582, 'Sphinx ', 1, 0, '2016-01-20 10:39:54'),
(583, 'Speech Writing ', 1, 0, '2016-01-20 10:40:03'),
(584, 'Sparx Systems Enterprise Architect ', 1, 0, '2016-01-20 10:40:14'),
(585, 'Spanish ', 1, 0, '2016-01-20 10:40:26'),
(586, 'SpamAssassin ', 1, 0, '2016-01-20 10:40:35'),
(587, 'Spacewalk ', 1, 0, '2016-01-20 10:40:43'),
(588, 'Soundtrack Pro', 1, 0, '2016-01-20 10:40:54'),
(589, 'Sound Forge ', 1, 0, '2016-01-20 10:41:05'),
(590, 'Sound Effects', 1, 0, '2016-01-20 10:41:17'),
(591, 'sound editing', 1, 0, '2016-01-20 10:41:29'),
(592, 'Sound Design', 1, 0, '2016-01-20 10:41:40'),
(593, 'Sony Vegas', 1, 0, '2016-01-20 10:41:52'),
(594, 'ACID Pro', 1, 0, '2016-01-20 10:42:05'),
(595, 'SolidWorks ', 1, 0, '2016-01-20 10:42:53'),
(596, 'Solid Edge ', 1, 0, '2016-01-20 10:43:03'),
(597, 'Solaris Administration ', 1, 0, '2016-01-20 10:43:12'),
(598, 'Software Testing ', 1, 0, '2016-01-20 10:43:21'),
(599, 'Software QA Testing ', 1, 0, '2016-01-20 10:43:31'),
(600, 'Software Licensing ', 1, 0, '2016-01-20 10:43:41'),
(601, 'Software Documentation ', 1, 0, '2016-01-20 10:43:51'),
(602, 'Software Defined Networking (SDN) ', 1, 0, '2016-01-20 10:43:59'),
(603, 'Software Debugging ', 1, 0, '2016-01-20 10:44:29'),
(604, 'Socket Programming', 1, 0, '2016-01-20 10:44:38'),
(605, 'SocialEngine', 1, 0, '2016-01-20 10:44:49'),
(606, 'Social Networking Development ', 1, 0, '2016-01-20 10:44:59'),
(607, 'Social Network Administration ', 1, 0, '2016-01-20 10:45:10'),
(608, 'Social Media Optimization (SMO) ', 1, 0, '2016-01-20 10:45:19'),
(609, 'Social Media Marketing', 1, 0, '2016-01-20 10:45:29'),
(610, 'Social Media Management ', 1, 0, '2016-01-20 10:46:11'),
(611, 'Social bookmarking ', 1, 0, '2016-01-20 10:46:23'),
(612, 'soapUI', 1, 0, '2016-01-20 10:46:34'),
(613, 'SOAP', 1, 0, '2016-01-20 10:46:45'),
(614, 'Snort ', 1, 0, '2016-01-20 10:46:55'),
(615, 'SNMP', 1, 0, '2016-01-20 10:47:06'),
(616, 'SnagIt ', 1, 0, '2016-01-20 10:47:19'),
(617, 'SMTP ', 1, 0, '2016-01-20 10:47:27'),
(618, 'SMS Gateway ', 1, 0, '2016-01-20 10:47:35'),
(619, 'SMS ', 1, 0, '2016-01-20 10:47:44'),
(620, 'SMPP ', 1, 0, '2016-01-20 10:47:53'),
(621, 'SMO', 1, 0, '2016-01-20 10:48:08'),
(622, 'Smarty', 1, 0, '2016-01-20 10:48:17'),
(623, 'SmartFoxServer', 1, 0, '2016-01-20 10:48:28'),
(624, 'Smalltalk ', 1, 0, '2016-01-20 10:48:38'),
(625, 'Slovenian', 1, 0, '2016-01-20 10:48:48'),
(626, 'Slovakian', 1, 0, '2016-01-20 10:49:02'),
(627, 'Slogans ', 1, 0, '2016-01-20 10:49:10'),
(628, 'skype development', 1, 0, '2016-01-20 10:49:20'),
(629, 'Skype', 1, 0, '2016-01-20 10:49:35'),
(630, 'Sketching', 1, 0, '2016-01-20 10:49:48'),
(631, 'Sketch', 1, 0, '2016-01-20 10:49:57'),
(632, 'Skeleton ', 1, 0, '2016-01-20 10:50:07'),
(633, 'SkaDate', 1, 0, '2016-01-20 10:50:57'),
(634, 'Six Sigma', 1, 0, '2016-01-20 10:51:06'),
(635, 'SiteScope', 1, 0, '2016-01-20 10:51:18'),
(636, 'Telerik Sitefinity CMS ', 1, 0, '2016-01-20 10:51:34'),
(637, 'Sitecore', 1, 0, '2016-01-20 10:51:44'),
(638, 'SiteBuildIt ', 1, 0, '2016-01-20 10:51:52'),
(639, 'SIP ', 1, 0, '2016-01-20 10:52:00'),
(640, 'Sinhala ', 1, 0, '2016-01-20 10:52:09'),
(641, 'Singing', 1, 0, '2016-01-20 10:52:24'),
(642, 'Sinatra Framework ', 1, 0, '2016-01-20 10:52:31'),
(643, 'Simulink', 1, 0, '2016-01-20 10:52:41'),
(644, 'Simplified Chinese', 1, 0, '2016-01-20 10:52:50'),
(645, 'SimpleDB', 1, 0, '2016-01-20 10:52:59'),
(646, 'Simple DirectMedia Layer', 1, 0, '2016-01-20 10:53:10'),
(647, 'SilverStripe', 1, 0, '2016-01-20 10:53:37'),
(648, 'Silex Framework ', 1, 0, '2016-01-20 10:53:44'),
(649, 'SigmaPlot ', 1, 0, '2016-01-20 10:53:52'),
(650, 'Siemens NX ', 1, 0, '2016-01-20 10:54:00'),
(651, 'Sibelius', 1, 0, '2016-01-20 10:54:12'),
(652, 'SHOUTcast ', 1, 0, '2016-01-20 10:54:20'),
(653, 'Short Story Writing ', 1, 0, '2016-01-20 10:54:29'),
(654, 'Shopify Templates ', 1, 0, '2016-01-20 10:54:39'),
(655, 'Shopify', 1, 0, '2016-01-20 10:54:53'),
(656, 'ShiVa3D ', 1, 0, '2016-01-20 10:55:01'),
(657, 'Microsoft SharePoint Designer ', 1, 0, '2016-01-20 10:55:16'),
(658, 'Session Description Protocol ', 1, 0, '2016-01-20 10:55:23'),
(659, 'Servoy ', 1, 0, '2016-01-20 10:55:35'),
(660, 'Servlet ', 1, 0, '2016-01-20 10:55:45'),
(661, 'Service Level Management', 1, 0, '2016-01-20 10:55:55'),
(662, 'Service Cloud Development', 1, 0, '2016-01-20 10:56:05'),
(663, 'Service Cloud Administration ', 1, 0, '2016-01-20 10:56:15'),
(664, 'Sermon', 1, 0, '2016-01-20 10:56:25'),
(665, 'Serialization ', 1, 0, '2016-01-20 10:56:34'),
(666, 'Serial Port Interfacing ', 1, 0, '2016-01-20 10:56:47'),
(667, 'Serenic Navigator ', 1, 0, '2016-01-20 10:56:56'),
(668, 'Serbian', 1, 0, '2016-01-20 10:57:08'),
(669, 'Sequential Art ', 1, 0, '2016-01-20 10:57:30'),
(670, 'SEOMoz ', 1, 0, '2016-01-20 10:57:38'),
(671, 'SEO Writing ', 1, 0, '2016-01-20 10:57:46'),
(672, 'SEO Keyword Research ', 1, 0, '2016-01-20 10:57:55'),
(673, 'SEO Backlinking', 1, 0, '2016-01-20 10:58:04'),
(674, 'SEO Audit ', 1, 0, '2016-01-20 10:58:49'),
(675, 'Search Engine Optimization (SEO) ', 1, 0, '2016-01-20 10:58:57'),
(676, 'SENuke X ', 1, 0, '2016-01-20 10:59:06'),
(677, 'Sentiment analysis ', 1, 0, '2016-01-20 10:59:18'),
(678, 'sensable claytrix ', 1, 0, '2016-01-20 10:59:27'),
(679, 'Sendmail ', 1, 0, '2016-01-20 10:59:36'),
(680, 'Sencha GXT ', 1, 0, '2016-01-20 10:59:53'),
(681, 'Sencha Touch ', 1, 0, '2016-01-20 11:00:01'),
(682, 'Semiconductor ', 1, 0, '2016-01-20 11:00:08'),
(683, 'Search engine marketing (SEM)', 1, 0, '2016-01-20 11:00:22'),
(684, 'Selling ', 1, 0, '2016-01-20 11:00:34'),
(685, 'Selenium WebDriver ', 1, 0, '2016-01-20 11:00:41'),
(686, 'Selenium ', 1, 0, '2016-01-20 11:00:51'),
(687, 'Security Infrastructure', 1, 0, '2016-01-20 11:01:01'),
(688, 'Security Engineering ', 1, 0, '2016-01-20 11:01:11'),
(689, 'Security Analysis ', 1, 0, '2016-01-20 11:01:19'),
(690, 'Internet Security ', 1, 0, '2016-01-20 11:01:27'),
(691, 'Section 508 Compliance ', 1, 0, '2016-01-20 11:01:42'),
(692, 'SDLX ', 1, 0, '2016-01-20 11:02:00'),
(693, 'SDL Trados ', 1, 0, '2016-01-20 11:02:21'),
(694, 'SDL Passolo', 1, 0, '2016-01-20 11:02:34'),
(695, 'Sculpture', 1, 0, '2016-01-20 11:02:45'),
(696, 'Sculpting ', 1, 0, '2016-01-20 11:02:53'),
(697, 'ScrumWorks ', 1, 0, '2016-01-20 11:03:02'),
(698, 'Scrum', 1, 0, '2016-01-20 11:03:13'),
(699, 'Scripts & Utilities', 1, 0, '2016-01-20 11:03:23'),
(700, 'Scripting ', 1, 0, '2016-01-20 11:03:32'),
(701, 'Script.aculo.us ', 1, 0, '2016-01-20 11:03:52'),
(702, 'Screenwriting ', 1, 0, '2016-01-20 11:04:00'),
(703, 'Scrapy ', 1, 0, '2016-01-20 11:04:07'),
(704, 'scrapebox ', 1, 0, '2016-01-20 11:04:14'),
(705, 'SCORM', 1, 0, '2016-01-20 11:04:26'),
(706, 'Scientific Writing ', 1, 0, '2016-01-20 11:04:36'),
(707, 'Scientific Research ', 1, 0, '2016-01-20 11:04:45'),
(708, 'Scientific Computation', 1, 0, '2016-01-20 11:04:55'),
(709, 'Scheme ', 1, 0, '2016-01-20 11:05:03'),
(710, 'Scenario Planning', 1, 0, '2016-01-20 11:05:15'),
(711, 'Scalr ', 1, 0, '2016-01-20 11:05:24'),
(712, 'Scale Modeling ', 1, 0, '2016-01-20 11:05:34'),
(713, 'Scalable transaction processing ', 1, 0, '2016-01-20 11:05:42'),
(714, 'Scala', 1, 0, '2016-01-20 11:05:53'),
(715, 'SCADA', 1, 0, '2016-01-20 11:06:02'),
(716, 'Savant3 ', 1, 0, '2016-01-20 11:06:35'),
(717, 'Satire ', 1, 0, '2016-01-20 11:06:44'),
(718, 'sassie mystery shopping', 1, 0, '2016-01-20 11:06:52'),
(719, 'Sass', 1, 0, '2016-01-20 11:07:02'),
(720, 'SAS', 1, 0, '2016-01-20 11:07:25'),
(721, 'SilverStripe', 1, 0, '2016-01-20 11:07:35'),
(722, 'SAP Warehouse Management', 1, 0, '2016-01-20 11:07:43'),
(723, 'SAP Web Dynpro', 1, 0, '2016-01-20 11:07:54'),
(724, 'SAP Sybase Adaptive Server Enterprise ', 1, 0, '2016-01-20 11:08:02'),
(725, 'SAP Solution Manager ', 1, 0, '2016-01-20 11:08:10'),
(726, 'SAP SD', 1, 0, '2016-01-20 11:08:19'),
(727, 'SAP Programming', 1, 0, '2016-01-20 11:08:31'),
(728, 'SAP NetWeaver', 1, 0, '2016-01-20 11:08:40'),
(729, 'SAP Materials Management', 1, 0, '2016-01-20 11:08:48'),
(730, 'SAP Manufacturing Execution ', 1, 0, '2016-01-20 11:08:54'),
(731, 'SAP Logistics Execution ', 1, 0, '2016-01-20 11:09:01'),
(732, 'SAP Hana', 1, 0, '2016-01-20 11:09:12'),
(733, 'SAP AG', 1, 0, '2016-01-20 11:09:21'),
(734, 'SAP ERP HCM ', 1, 0, '2016-01-20 11:09:30'),
(735, 'SAP ERP', 1, 0, '2016-01-20 11:09:42'),
(736, 'SAP CRM', 1, 0, '2016-01-20 11:09:52'),
(737, 'SAP BusinessOne', 1, 0, '2016-01-20 11:10:03'),
(738, 'SAP Business Objects', 1, 0, '2016-01-20 11:10:12'),
(739, 'SAP BSP', 1, 0, '2016-01-20 11:10:21'),
(740, 'SAP BASIS ', 1, 0, '2016-01-20 11:10:36'),
(741, 'SAP Analysis', 1, 0, '2016-01-20 11:10:48'),
(742, 'SAP ABAP ', 1, 0, '2016-01-20 11:10:55'),
(743, 'SAP2000 ', 1, 0, '2016-01-20 11:11:02'),
(744, 'SAP', 1, 0, '2016-01-20 11:11:11'),
(745, 'Samba', 1, 0, '2016-01-20 11:11:26'),
(746, 'Salesgenie.com ', 1, 0, '2016-01-20 11:11:36'),
(747, 'Salesforce.com ', 1, 0, '2016-01-20 11:11:50'),
(748, 'Salesforce App Development ', 1, 0, '2016-01-20 11:11:57'),
(749, 'Salesforce Apex ', 1, 0, '2016-01-20 11:12:04'),
(750, 'Sales Writing ', 1, 0, '2016-01-20 11:12:11'),
(751, 'Sales Promotion ', 1, 0, '2016-01-20 11:12:19'),
(752, 'Sales management ', 1, 0, '2016-01-20 11:12:32'),
(753, 'Sales Letters ', 1, 0, '2016-01-20 11:12:42'),
(754, 'Sales ', 1, 0, '2016-01-20 11:12:53'),
(755, 'Salary Surveys ', 1, 0, '2016-01-20 11:13:00'),
(756, 'SAI ', 1, 0, '2016-01-20 11:13:08'),
(757, 'Sage Peachtree Complete Accounting ', 1, 0, '2016-01-20 11:13:23'),
(758, 'Sage ERP Accpac ', 1, 0, '2016-01-20 11:13:32'),
(759, 'Sabre ', 1, 0, '2016-01-20 11:14:13'),
(760, 'Sassu ', 1, 0, '2016-01-20 11:14:21'),
(761, 'SaaS ', 1, 0, '2016-01-20 11:14:28'),
(762, 'S ', 1, 0, '2016-01-20 11:14:38'),
(763, 'Russian Language ', 1, 0, '2016-01-20 11:20:25'),
(764, 'Rational Unified Process (RUP) ', 1, 0, '2016-01-20 11:20:34'),
(765, 'Ruby on Rails ', 1, 0, '2016-01-20 11:20:44'),
(766, 'Ruby ', 1, 0, '2016-01-20 11:20:54'),
(767, 'RTOS ', 1, 0, '2016-01-20 11:21:04'),
(768, 'RTML ', 1, 0, '2016-01-20 11:21:11'),
(769, 'RTLinux ', 1, 0, '2016-01-20 11:21:18'),
(770, 'RTL ', 1, 0, '2016-01-20 11:21:27'),
(771, 'RSS ', 1, 0, '2016-01-20 11:21:37'),
(772, 'RSpec ', 1, 0, '2016-01-20 11:21:44'),
(773, 'RPG Writing ', 1, 0, '2016-01-20 11:21:51'),
(774, 'RPG (OS/400) ', 1, 0, '2016-01-20 11:22:01'),
(775, 'RPG Development ', 1, 0, '2016-01-20 11:22:16'),
(776, 'Rotoscoping ', 1, 0, '2016-01-20 11:22:24'),
(777, 'Robotscope ', 1, 0, '2016-01-20 11:22:32'),
(778, 'Root Cause Analysis ', 1, 0, '2016-01-20 11:22:38'),
(779, 'Roomorama API ', 1, 0, '2016-01-20 11:22:45'),
(780, 'Romanian ', 1, 0, '2016-01-20 11:22:53'),
(781, 'Robotics ', 1, 0, '2016-01-20 11:23:00'),
(782, 'Robot Framework ', 1, 0, '2016-01-20 11:23:11'),
(783, 'Java Remote Method Invocation (Java RMI) ', 1, 0, '2016-01-20 11:23:22'),
(784, 'Risk management ', 1, 0, '2016-01-20 11:23:35'),
(785, 'RightScale ', 1, 0, '2016-01-20 11:23:42'),
(786, 'Richfaces ', 1, 0, '2016-01-20 11:23:48'),
(787, 'Rhodes Framework ', 1, 0, '2016-01-20 11:23:55'),
(788, 'Rhino Service Bus ', 1, 0, '2016-01-20 11:24:02'),
(789, 'RhinoScript ', 1, 0, '2016-01-20 11:24:12'),
(790, 'Rhinoceros 3D ', 1, 0, '2016-01-20 11:24:23'),
(791, 'Red Hat Enterprise Linux (RHEL) ', 1, 0, '2016-01-20 11:24:38'),
(792, 'Red Hat Certified Engineer (RHCE) ', 1, 0, '2016-01-20 11:24:47'),
(793, 'RFID ', 1, 0, '2016-01-20 11:27:42'),
(794, 'Autodesk Revit Architecture ', 1, 0, '2016-01-20 11:27:50'),
(795, 'Reviews ', 1, 0, '2016-01-20 11:28:03'),
(796, 'Reverse engineering ', 1, 0, '2016-01-20 11:28:15'),
(797, 'RETS ', 1, 0, '2016-01-20 11:28:25'),
(798, 'Retail Ops Management ', 1, 0, '2016-01-20 11:28:32'),
(799, 'Retail Merchandising ', 1, 0, '2016-01-20 11:28:41'),
(800, 'Resume Writing ', 1, 0, '2016-01-20 11:28:58'),
(801, 'REST ', 1, 0, '2016-01-20 11:29:08'),
(802, 'Responsys Marketing ', 1, 0, '2016-01-20 11:29:25'),
(803, 'Responsys Development ', 1, 0, '2016-01-20 11:29:33'),
(804, 'Responsys Administration ', 1, 0, '2016-01-20 11:30:41'),
(805, 'Responsive Web Design ', 1, 0, '2016-01-20 11:30:49'),
(806, 'Resource Description Framework (RDF) ', 1, 0, '2016-01-20 11:30:58'),
(807, 'Resin ', 1, 0, '2016-01-20 11:31:05'),
(808, 'Research Papers ', 1, 0, '2016-01-20 11:31:12'),
(809, 'Research ', 1, 0, '2016-01-20 11:31:22'),
(810, 'Requirements analysis ', 1, 0, '2016-01-20 11:31:35'),
(811, 'Requirement Management ', 1, 0, '2016-01-20 11:31:44'),
(812, 'Reputation Management ', 1, 0, '2016-01-20 11:31:55'),
(813, 'RepRap ', 1, 0, '2016-01-20 11:32:03'),
(814, 'report writing ', 1, 0, '2016-01-20 11:32:10'),
(815, 'Remoting ', 1, 0, '2016-01-20 11:32:17'),
(816, 'Remote Sensing ', 1, 0, '2016-01-20 11:32:24'),
(817, 'Relationship Management ', 1, 0, '2016-01-20 11:32:38'),
(818, 'Relational Databases ', 1, 0, '2016-01-20 11:32:46'),
(819, 'Regular Expressions ', 1, 0, '2016-01-20 11:32:54'),
(820, 'Regression testing ', 1, 0, '2016-01-20 11:33:05'),
(821, 'Refinery CMS ', 1, 0, '2016-01-20 11:33:13'),
(822, 'Redmine ', 1, 0, '2016-01-20 11:33:20'),
(823, 'Redis ', 1, 0, '2016-01-20 11:33:36'),
(824, 'Red Hat Administration ', 1, 0, '2016-01-20 11:33:43'),
(825, 'Red5 ', 1, 0, '2016-01-20 11:33:57'),
(826, 'Recruiting ', 1, 0, '2016-01-20 11:34:05'),
(827, 'Records Management ', 1, 0, '2016-01-20 11:34:11'),
(828, 'Recommender Systems ', 1, 0, '2016-01-20 11:34:20'),
(829, 'Recipe Writing ', 1, 0, '2016-01-20 11:34:27'),
(830, 'Receptionist Skills ', 1, 0, '2016-01-20 11:34:36'),
(831, 'Receipt Parsing ', 1, 0, '2016-01-20 11:34:44'),
(832, 'Realist Painting ', 1, 0, '2016-01-20 11:34:53'),
(833, 'Realbasic ', 1, 0, '2016-01-20 11:35:02'),
(834, 'Real time stream processing ', 1, 0, '2016-01-20 11:35:13'),
(835, 'Real Estate Management ', 1, 0, '2016-01-20 11:35:19'),
(836, 'Real Estate Law ', 1, 0, '2016-01-20 11:35:28'),
(837, 'Real Estate IDX ', 1, 0, '2016-01-20 11:35:36'),
(838, 'Real Estate Appraisal ', 1, 0, '2016-01-20 11:35:45'),
(839, 'Razor Template Engine ', 1, 0, '2016-01-20 11:35:55'),
(840, 'IBM Rational Rose ', 1, 0, '2016-01-20 11:36:20'),
(841, 'Retail Sales Management ', 1, 0, '2016-01-20 11:36:27'),
(842, 'Raspberry Pi ', 1, 0, '2016-01-20 11:36:35'),
(843, 'RapidWorks ', 1, 0, '2016-01-20 11:36:47'),
(844, 'Rapid Prototyping ', 1, 0, '2016-01-20 11:36:55'),
(845, 'Rapid Miner ', 1, 0, '2016-01-20 11:37:02'),
(846, 'Raphael JS ', 1, 0, '2016-01-20 11:37:09'),
(847, 'RAID Administration ', 1, 0, '2016-01-20 11:37:17'),
(848, 'RADIUS ', 1, 0, '2016-01-20 11:37:27'),
(849, 'Radio personality ', 1, 0, '2016-01-20 11:37:35'),
(850, 'Radio Broadcasting ', 1, 0, '2016-01-20 11:37:42'),
(851, 'Radiant Zemax ', 1, 0, '2016-01-20 11:37:50'),
(852, 'Radiant CMS ', 1, 0, '2016-01-20 11:38:00'),
(853, 'Rackspace Cloud Servers ', 1, 0, '2016-01-20 11:38:08'),
(854, 'Rackspace ', 1, 0, '2016-01-20 11:38:16'),
(855, 'RabbitMQ ', 1, 0, '2016-01-20 11:38:24'),
(856, 'R-Hadoop ', 1, 0, '2016-01-20 11:38:34'),
(857, 'R ', 1, 0, '2016-01-20 11:38:44'),
(858, 'QuickFIX ', 1, 0, '2016-01-20 11:41:41'),
(859, 'quick sales system ', 1, 0, '2016-01-20 11:41:47'),
(860, 'Quartz Composer ', 1, 0, '2016-01-20 11:41:55'),
(861, 'quartz ', 1, 0, '2016-01-20 11:42:03'),
(862, 'Quark Xpress ', 1, 0, '2016-01-20 11:42:11'),
(863, 'Quantity Surveying ', 1, 0, '2016-01-20 11:42:19'),
(864, 'Quantitative Analysis ', 1, 0, '2016-01-20 11:42:26'),
(865, 'Qualitative Research ', 1, 0, '2016-01-20 11:42:37'),
(866, 'Qt ', 1, 0, '2016-01-20 11:42:45'),
(867, 'QS Cad ', 1, 0, '2016-01-20 11:42:52'),
(868, 'Qooxdoo ', 1, 0, '2016-01-20 11:43:12'),
(869, 'QNX ', 1, 0, '2016-01-20 11:43:19'),
(870, 'Qmail ', 1, 0, '2016-01-20 11:43:30'),
(871, 'QlikTech QlikView ', 1, 0, '2016-01-20 11:43:36'),
(872, 'qhse ', 1, 0, '2016-01-20 11:43:43'),
(873, 'QGIS ', 1, 0, '2016-01-20 11:43:50'),
(874, 'Qcodo ', 1, 0, '2016-01-20 11:43:57'),
(875, 'QA Management ', 1, 0, '2016-01-20 11:44:04'),
(876, 'QA Engineering ', 1, 0, '2016-01-20 11:44:13'),
(877, 'Quality of Service (Q-oS) ', 1, 0, '2016-01-20 11:44:23'),
(878, 'Q ', 1, 0, '2016-01-20 11:44:31'),
(879, 'Python SciPy ', 1, 0, '2016-01-20 11:46:18'),
(880, 'Python Numpy ', 1, 0, '2016-01-20 11:46:24'),
(881, 'Python ', 1, 0, '2016-01-20 11:46:33'),
(882, 'pyro ', 1, 0, '2016-01-20 11:46:40'),
(883, 'PyQt ', 1, 0, '2016-01-20 11:48:01'),
(884, 'Pylons ', 1, 0, '2016-01-20 11:48:07'),
(885, 'Pyjamas ', 1, 0, '2016-01-20 11:48:16'),
(886, 'Pure Data ', 1, 0, '2016-01-20 11:48:31'),
(887, 'Purchasing Management ', 1, 0, '2016-01-20 11:48:38'),
(888, 'Puppet Administration ', 1, 0, '2016-01-20 11:48:50'),
(889, 'Punjabi ', 1, 0, '2016-01-20 11:48:57'),
(890, 'punching ', 1, 0, '2016-01-20 11:49:17'),
(891, 'Punch Home Design Studio Pro ', 1, 0, '2016-01-20 11:49:26'),
(892, 'Publishing Fundamentals ', 1, 0, '2016-01-20 11:49:32'),
(893, 'Public speaking ', 1, 0, '2016-01-20 11:49:40'),
(894, 'Public Relations ', 1, 0, '2016-01-20 11:49:46'),
(895, 'PTGui ', 1, 0, '2016-01-20 11:49:54'),
(896, 'PTC Creo Elements/Pro ', 1, 0, '2016-01-20 11:50:27'),
(897, 'Psychometric Examination ', 1, 0, '2016-01-20 11:50:37'),
(898, 'PSPICE ', 1, 0, '2016-01-20 11:50:48'),
(899, 'PSD2CMS ', 1, 0, '2016-01-20 11:50:55'),
(900, 'PSD to XHTML ', 1, 0, '2016-01-20 11:51:02'),
(901, 'PSD to Wordpress ', 1, 0, '2016-01-20 11:51:23'),
(902, 'PSD to MailChimp ', 1, 0, '2016-01-20 11:51:31'),
(903, 'psd to html ', 1, 0, '2016-01-20 11:51:41'),
(904, 'Prototype Javascript Framework ', 1, 0, '2016-01-20 11:51:50'),
(905, 'Protoshare ', 1, 0, '2016-01-20 11:51:58'),
(906, 'ProTools ', 1, 0, '2016-01-20 11:52:50'),
(907, 'Proposal Writing ', 1, 0, '2016-01-20 11:52:59'),
(908, 'Property Tax ', 1, 0, '2016-01-20 11:53:11'),
(909, 'Property Management ', 1, 0, '2016-01-20 11:53:20'),
(910, 'Property Development ', 1, 0, '2016-01-20 11:53:30'),
(911, 'Propellerhead Reason ', 1, 0, '2016-01-20 11:53:38'),
(912, 'Proofreading ', 1, 0, '2016-01-20 11:53:46'),
(913, 'Prolog ', 1, 0, '2016-01-20 11:53:57'),
(914, 'Project Scheduling ', 1, 0, '2016-01-20 11:54:05'),
(915, 'Project Planning ', 1, 0, '2016-01-20 11:54:12'),
(916, 'Project Management professional ', 1, 0, '2016-01-20 11:54:23'),
(917, 'Project management ', 1, 0, '2016-01-20 11:54:58'),
(918, 'Program Management ', 1, 0, '2016-01-20 11:55:08'),
(919, 'Pro-E ', 1, 0, '2016-01-20 11:55:17'),
(920, 'Product management ', 1, 0, '2016-01-20 11:55:28'),
(921, 'Product Liability ', 1, 0, '2016-01-20 11:55:35'),
(922, 'Product Development ', 1, 0, '2016-01-20 11:55:42'),
(923, 'Product Design ', 1, 0, '2016-01-20 11:55:53'),
(924, 'Product Descriptions ', 1, 0, '2016-01-20 11:56:00'),
(925, 'Processing ', 1, 0, '2016-01-20 11:56:08'),
(926, 'Process improvement ', 1, 0, '2016-01-20 11:56:15'),
(927, 'Process architecture ', 1, 0, '2016-01-20 11:56:22'),
(928, 'Private Clouds ', 1, 0, '2016-01-20 11:56:57'),
(929, 'Privacy ', 1, 0, '2016-01-20 11:57:04');
INSERT INTO `skills` (`id`, `name`, `active`, `delete_remove`, `date_added`) VALUES
(930, 'Print Layout Design ', 1, 0, '2016-01-20 11:57:11'),
(931, 'Print design ', 1, 0, '2016-01-20 11:57:18'),
(932, 'Print Advertising ', 1, 0, '2016-01-20 11:57:28'),
(933, 'PrimeFaces ', 1, 0, '2016-01-20 11:57:36'),
(934, 'Oracle Primavera ', 1, 0, '2016-01-20 11:57:43'),
(935, 'Prezi ', 1, 0, '2016-01-20 11:57:50'),
(936, 'PrestaShop ', 1, 0, '2016-01-20 11:57:57'),
(937, 'Press Release Writing ', 1, 0, '2016-01-20 11:58:08'),
(938, 'Press Advertising ', 1, 0, '2016-01-20 11:58:20'),
(939, 'PreSonus Studio One ', 1, 0, '2016-01-20 11:58:36'),
(940, 'Presentations ', 1, 0, '2016-01-20 11:58:43'),
(941, 'Presentation Design ', 1, 0, '2016-01-20 11:58:50'),
(942, 'Predictive Analytics ', 1, 0, '2016-01-20 12:00:25'),
(943, 'Prepress ', 1, 0, '2016-01-20 12:00:40'),
(944, 'PRADO PHP Framework ', 1, 0, '2016-01-20 12:00:46'),
(945, 'Pay Per Click Advertising ', 1, 0, '2016-01-20 12:00:54'),
(946, 'Windows PowerShell ', 1, 0, '2016-01-20 12:01:01'),
(947, 'Power Builder ', 1, 0, '2016-01-20 12:01:08'),
(948, 'PostScript ', 1, 0, '2016-01-20 12:01:20'),
(949, 'PostgreSQL Programming ', 1, 0, '2016-01-20 12:01:30'),
(950, 'PostgreSQL Administration ', 1, 0, '2016-01-20 12:01:41'),
(951, 'Postfix SMTP Server ', 1, 0, '2016-01-20 12:01:49'),
(952, 'Posterous ', 1, 0, '2016-01-20 12:01:57'),
(953, 'Poster Design ', 1, 0, '2016-01-20 12:02:06'),
(954, 'Poser ', 1, 0, '2016-01-20 12:02:17'),
(955, 'POS Terminal Development ', 1, 0, '2016-01-20 12:02:24'),
(956, 'Portuguese ', 1, 0, '2016-01-20 12:02:33'),
(957, 'Portlets ', 1, 0, '2016-01-20 12:02:41'),
(958, 'Portfolio Performance Modeling ', 1, 0, '2016-01-20 12:02:51'),
(959, 'Portrait Painting ', 1, 0, '2016-01-20 12:02:59'),
(960, 'Pomodoro Technique ', 1, 0, '2016-01-20 12:03:11'),
(961, 'Polymer Clay Sculpting ', 1, 0, '2016-01-20 12:03:19'),
(962, 'Polish ', 1, 0, '2016-01-20 12:03:30'),
(963, 'Policy Writing ', 1, 0, '2016-01-20 12:03:39'),
(964, 'Poetry ', 1, 0, '2016-01-20 12:03:52'),
(965, 'Podio ', 1, 0, '2016-01-20 12:04:15'),
(966, 'Pocket PC ', 1, 0, '2016-01-20 12:04:29'),
(967, 'PMDS ', 1, 0, '2016-01-20 12:04:37'),
(968, 'Plumbing ', 1, 0, '2016-01-20 12:04:44'),
(969, 'Plone ', 1, 0, '2016-01-20 12:04:54'),
(970, 'Plivo ', 1, 0, '2016-01-20 12:05:01'),
(971, 'Pligg ', 1, 0, '2016-01-20 12:05:08'),
(972, 'Plesk ', 1, 0, '2016-01-20 12:05:16'),
(973, 'PLC Programming ', 1, 0, '2016-01-20 12:05:24'),
(974, 'PLC & SCADA ', 1, 0, '2016-01-20 12:05:33'),
(975, 'Play Framework ', 1, 0, '2016-01-20 12:05:41'),
(976, 'Platform Migration ', 1, 0, '2016-01-20 12:05:54'),
(977, 'Pixologic Zbrush ', 1, 0, '2016-01-20 12:06:06'),
(978, 'Pinterest Marketing ', 1, 0, '2016-01-20 12:06:13'),
(979, 'Pinnacle Studio ', 1, 0, '2016-01-20 12:06:21'),
(980, 'Pig ', 1, 0, '2016-01-20 12:06:28'),
(981, 'Piano Performance ', 1, 0, '2016-01-20 12:06:37'),
(982, 'Piano Composition ', 1, 0, '2016-01-20 12:06:48'),
(983, 'Physics ', 1, 0, '2016-01-20 12:06:59'),
(984, 'Physical Fitness ', 1, 0, '2016-01-20 12:07:15'),
(985, 'PHP-Nuke ', 1, 0, '2016-01-20 12:07:23'),
(986, 'phpMyDirectory ', 1, 0, '2016-01-20 12:07:30'),
(987, 'phpMyAdmin ', 1, 0, '2016-01-20 12:07:41'),
(988, 'phpfox ', 1, 0, '2016-01-20 12:07:51'),
(989, 'PhpBB ', 1, 0, '2016-01-20 12:08:00'),
(990, 'PHP ', 1, 0, '2016-01-20 12:08:10'),
(991, 'PhotoScape ', 1, 0, '2016-01-20 12:08:56'),
(992, 'Photography ', 1, 0, '2016-01-20 12:09:04'),
(993, 'Photograph Color Correction ', 1, 0, '2016-01-20 12:09:11'),
(994, 'Photo Retouching ', 1, 0, '2016-01-20 12:09:18'),
(995, 'Photo Manipulation ', 1, 0, '2016-01-20 12:09:28'),
(996, 'Photo Editing ', 1, 0, '2016-01-20 12:09:37'),
(997, 'PhoneGap ', 1, 0, '2016-01-20 12:09:43'),
(998, 'Phone Support ', 1, 0, '2016-01-20 12:09:56'),
(999, 'Phing ', 1, 0, '2016-01-20 12:10:05'),
(1000, 'PfSense ', 1, 0, '2016-01-20 12:10:15'),
(1001, 'Petroleum Engineering ', 1, 0, '2016-01-20 12:10:27'),
(1002, 'PESTEL ', 1, 0, '2016-01-20 12:10:37'),
(1003, 'Pervasive Software ', 1, 0, '2016-01-20 12:10:44'),
(1004, 'Personal Development ', 1, 0, '2016-01-20 12:10:52'),
(1005, 'Persian ', 1, 0, '2016-01-20 12:11:01'),
(1006, 'PerlDancer ', 1, 0, '2016-01-20 12:11:07'),
(1007, 'Perl Mojolicious ', 1, 0, '2016-01-20 12:11:15'),
(1008, 'Perl Catalyst ', 1, 0, '2016-01-20 12:11:22'),
(1009, 'Perl ', 1, 0, '2016-01-20 12:11:40'),
(1010, 'Performing arts ', 1, 0, '2016-01-20 12:11:50'),
(1011, 'Performance Tuning ', 1, 0, '2016-01-20 12:11:57'),
(1012, 'Performance testing ', 1, 0, '2016-01-20 12:12:05'),
(1013, 'Perforce ', 1, 0, '2016-01-20 12:12:17'),
(1014, 'Oracle Peoplesoft Development ', 1, 0, '2016-01-20 12:12:24'),
(1015, 'Oracle Peoplesoft Administration ', 1, 0, '2016-01-20 12:12:31'),
(1016, 'PeopleCode ', 1, 0, '2016-01-20 12:12:39'),
(1017, 'Pentaho ', 1, 0, '2016-01-20 12:12:47'),
(1018, 'Penetration Testing ', 1, 0, '2016-01-20 12:12:54'),
(1019, 'PEAR ', 1, 0, '2016-01-20 12:13:02'),
(1020, 'Peachtree Accounting ', 1, 0, '2016-01-20 12:13:09'),
(1021, 'PDF Conversion ', 1, 0, '2016-01-20 12:13:17'),
(1022, 'PCI Compliance ', 1, 0, '2016-01-20 12:13:27'),
(1023, 'PCB Design ', 1, 0, '2016-01-20 12:13:38'),
(1024, 'PCAP ', 1, 0, '2016-01-20 12:13:47'),
(1025, 'PBworks Development ', 1, 0, '2016-01-20 12:13:55'),
(1026, 'PBwiki ', 1, 0, '2016-01-20 12:14:07'),
(1027, 'Payroll Processing ', 1, 0, '2016-01-20 12:14:14'),
(1028, 'Paypal Integration ', 1, 0, '2016-01-20 12:14:20'),
(1029, 'PayPal Development ', 1, 0, '2016-01-20 12:14:28'),
(1030, 'Payment Processing ', 1, 0, '2016-01-20 12:14:35'),
(1031, 'Payment Gateway Integration ', 1, 0, '2016-01-20 12:14:47'),
(1032, 'Pay per click ', 1, 0, '2016-01-20 12:14:56'),
(1033, 'Pattern recognition ', 1, 0, '2016-01-20 12:15:27'),
(1034, 'Patent Law ', 1, 0, '2016-01-20 12:15:34'),
(1035, 'Pashto ', 1, 0, '2016-01-20 12:15:42'),
(1036, 'Pascal ', 1, 0, '2016-01-20 12:15:48'),
(1037, 'ParticleIllusion ', 1, 0, '2016-01-20 12:15:55'),
(1038, 'Parse Mobile App Platform ', 1, 0, '2016-01-20 12:16:07'),
(1039, 'Pardot Marketing ', 1, 0, '2016-01-20 12:16:15'),
(1040, 'Pardot Development ', 1, 0, '2016-01-20 12:16:25'),
(1041, 'Pardot Development ', 1, 0, '2016-01-20 12:16:34'),
(1042, 'Pardot Administration ', 1, 0, '2016-01-20 12:16:41'),
(1043, 'Parallels Virtual Desktop ', 1, 0, '2016-01-20 12:16:48'),
(1044, 'Paralegal Services ', 1, 0, '2016-01-20 12:16:56'),
(1045, 'Papervision3D ', 1, 0, '2016-01-20 12:17:04'),
(1046, 'Papercraft ', 1, 0, '2016-01-20 12:17:11'),
(1047, 'Panoramic Stitching ', 1, 0, '2016-01-20 12:17:19'),
(1048, 'Palm App Development ', 1, 0, '2016-01-20 12:17:28'),
(1049, 'Palm', 1, 0, '2016-01-20 12:17:40'),
(1050, 'Paint.NET ', 1, 0, '2016-01-20 12:17:49'),
(1051, 'Packaging Design ', 1, 0, '2016-01-20 12:17:56'),
(1052, 'P-CAD ', 1, 0, '2016-01-20 12:18:04'),
(1053, 'Outbound Sales ', 1, 0, '2016-01-20 12:20:13'),
(1054, 'OSPF ', 1, 0, '2016-01-20 12:20:21'),
(1055, 'OSGi ', 1, 0, '2016-01-20 12:20:31'),
(1056, 'OsCommerce ', 1, 0, '2016-01-20 12:20:44'),
(1057, 'osclass ', 1, 0, '2016-01-20 12:20:49'),
(1058, 'OS/2 ', 1, 0, '2016-01-20 12:21:00'),
(1059, 'ORMLite ', 1, 0, '2016-01-20 12:21:08'),
(1060, 'ORM ', 1, 0, '2016-01-20 12:21:17'),
(1061, 'Organizational Development ', 1, 0, '2016-01-20 12:21:25'),
(1062, 'Organizational Behavior ', 1, 0, '2016-01-20 12:21:37'),
(1063, 'Order processing ', 1, 0, '2016-01-20 12:21:45'),
(1064, 'Order Entry ', 1, 0, '2016-01-20 12:21:52'),
(1065, 'Orchard CMS ', 1, 0, '2016-01-20 12:22:00'),
(1066, 'OrCAD ', 1, 0, '2016-01-20 12:22:07'),
(1067, 'OrangeCRM ', 1, 0, '2016-01-20 12:22:14'),
(1068, 'Oracle User Productivity Kit ', 1, 0, '2016-01-20 12:22:29'),
(1069, 'Oracle Upgrade ', 1, 0, '2016-01-20 12:22:36'),
(1070, 'Oracle Unified Method ', 1, 0, '2016-01-20 12:22:44'),
(1071, 'Oracle Universal Content Management ', 1, 0, '2016-01-20 12:22:51'),
(1072, 'Oracle Transportation Management ', 1, 0, '2016-01-20 12:22:59'),
(1073, 'Oracle Team Productivity Center ', 1, 0, '2016-01-20 12:23:43'),
(1074, 'Oracle Taleo ', 1, 0, '2016-01-20 12:23:51'),
(1075, 'Oracle Sun Ray ', 1, 0, '2016-01-20 12:24:34'),
(1076, 'Oracle SOA Suite ', 1, 0, '2016-01-20 12:24:44'),
(1077, 'Oracle Siebel ', 1, 0, '2016-01-20 12:24:52'),
(1078, 'Oracle RightNow ', 1, 0, '2016-01-20 12:25:03'),
(1079, 'Oracle Reports ', 1, 0, '2016-01-20 12:25:13'),
(1080, 'Oracle Real Application Clusters (RAC) ', 1, 0, '2016-01-20 12:25:23'),
(1081, 'Oracle Programming ', 1, 0, '2016-01-20 12:25:30'),
(1082, 'Oracle Primavera ', 1, 0, '2016-01-20 12:26:07'),
(1083, 'Oracle Policy Automation', 1, 0, '2016-01-20 12:26:18'),
(1084, 'Oracle PLSQL ', 1, 0, '2016-01-20 12:26:25'),
(1085, 'Oracle PL/SQL ', 1, 0, '2016-01-20 12:26:33'),
(1086, 'oracle performance tuning ', 1, 0, '2016-01-20 12:26:41'),
(1087, 'Oracle Patching ', 1, 0, '2016-01-20 12:27:35'),
(1088, 'Orace OBIEE Plus ', 1, 0, '2016-01-20 12:27:50'),
(1089, 'Oracle Java EE ', 1, 0, '2016-01-20 12:27:57'),
(1090, 'Oracle Hyperion Planning ', 1, 0, '2016-01-20 12:28:04'),
(1091, 'Oracle Global Trade Management ', 1, 0, '2016-01-20 12:28:11'),
(1092, 'Oracle Fusion Middleware ', 1, 0, '2016-01-20 12:28:18'),
(1093, 'Oracle Fusion Applications ', 1, 0, '2016-01-20 12:28:25'),
(1094, 'Oracle Forms ', 1, 0, '2016-01-20 12:28:33'),
(1095, 'Oracle Financials Applications ', 1, 0, '2016-01-20 12:28:40'),
(1096, 'Oracle Enterprise Service Bus', 1, 0, '2016-01-20 12:28:49'),
(1097, 'Oracle Endeca ', 1, 0, '2016-01-20 12:28:57'),
(1098, 'Oracle E-Business Suite ', 1, 0, '2016-01-20 12:29:09'),
(1099, 'Oracle Demantra ', 1, 0, '2016-01-20 12:29:41'),
(1100, 'Oracle Database Administration ', 1, 0, '2016-01-20 12:30:06'),
(1101, 'Oracle database ', 1, 0, '2016-01-20 12:30:14'),
(1102, 'Oracle Data Guard ', 1, 0, '2016-01-20 12:30:22'),
(1103, 'Oracle CRM On Demand ', 1, 0, '2016-01-20 12:31:02'),
(1104, 'Oracle Complex Events Processing ', 1, 0, '2016-01-20 12:31:10'),
(1105, 'Oracle BRM ', 1, 0, '2016-01-20 12:31:21'),
(1106, 'Oracle ATG Web Commerce ', 1, 0, '2016-01-20 12:31:28'),
(1107, 'Oracle Application Server ', 1, 0, '2016-01-20 12:31:38'),
(1108, 'Oracle Application Framework ', 1, 0, '2016-01-20 12:31:46'),
(1109, 'Oracle APEX ', 1, 0, '2016-01-20 12:31:53'),
(1110, 'Oracle Agile ', 1, 0, '2016-01-20 12:32:00'),
(1111, 'Oracle Administration ', 1, 0, '2016-01-20 12:32:09'),
(1112, 'Optimizepress ', 1, 0, '2016-01-20 12:32:33'),
(1113, 'Optimizely ', 1, 0, '2016-01-20 12:32:40'),
(1114, 'Operations Research ', 1, 0, '2016-01-20 12:32:47'),
(1115, 'Operations Management ', 1, 0, '2016-01-20 12:32:55'),
(1116, 'Operating Systems Development ', 1, 0, '2016-01-20 12:33:02'),
(1117, 'OpenX ', 1, 0, '2016-01-20 12:33:14'),
(1118, 'OpenWrt ', 1, 0, '2016-01-20 12:34:31'),
(1119, 'OpenVZ ', 1, 0, '2016-01-20 12:34:39'),
(1120, 'OpenVPN ', 1, 0, '2016-01-20 12:34:47'),
(1121, 'OpenVMS ', 1, 0, '2016-01-20 12:34:54'),
(1122, 'OpenVBX ', 1, 0, '2016-01-20 12:35:01'),
(1123, 'OpenType ', 1, 0, '2016-01-20 12:35:08'),
(1124, 'OpenTok Development ', 1, 0, '2016-01-20 12:35:15'),
(1125, 'opentext ', 1, 0, '2016-01-20 12:35:23'),
(1126, 'openSUSE ', 1, 0, '2016-01-20 12:35:35'),
(1127, 'OpenStack ', 1, 0, '2016-01-20 12:35:54'),
(1128, 'OpenSocial ', 1, 0, '2016-01-20 12:36:01'),
(1129, 'OpenSIPS ', 1, 0, '2016-01-20 12:36:08'),
(1130, 'OpenLayers ', 1, 0, '2016-01-20 12:36:15'),
(1131, 'OpenGL ES ', 1, 0, '2016-01-20 12:36:23'),
(1132, 'OpenGL ', 1, 0, '2016-01-20 12:36:30'),
(1133, 'Openflow ', 1, 0, '2016-01-20 12:36:59'),
(1134, 'OpenERP Development ', 1, 0, '2016-01-20 12:37:05'),
(1135, 'OpenERP Administration ', 1, 0, '2016-01-20 12:37:11'),
(1136, 'openemm ', 1, 0, '2016-01-20 12:37:19'),
(1137, 'OpenCV ', 1, 0, '2016-01-20 12:37:27'),
(1138, 'OpenCL ', 1, 0, '2016-01-20 12:37:50'),
(1139, 'OpenCart ', 1, 0, '2016-01-20 12:38:02'),
(1140, 'OpenBSD ', 1, 0, '2016-01-20 12:38:08'),
(1141, 'OpenBravo PoS ', 1, 0, '2016-01-20 12:38:15'),
(1142, 'OpenACS ', 1, 0, '2016-01-20 12:38:21'),
(1143, 'OpenOffice ', 1, 0, '2016-01-20 12:38:30'),
(1144, 'ooVoo Development ', 1, 0, '2016-01-20 12:38:51'),
(1145, 'OOPS ', 1, 0, '2016-01-20 12:39:03'),
(1146, 'Object Oriented Programming (OOP) ', 1, 0, '2016-01-20 12:39:34'),
(1147, 'Online Writing ', 1, 0, '2016-01-20 12:39:41'),
(1148, 'Online Help ', 1, 0, '2016-01-20 12:39:48'),
(1149, 'Online Community Management ', 1, 0, '2016-01-20 12:39:55'),
(1150, 'On-Page Optimization ', 1, 0, '2016-01-20 12:40:01'),
(1151, 'OmniGraffle ', 1, 0, '2016-01-20 12:40:09'),
(1152, 'Online Transaction Processing (OLTP) ', 1, 0, '2016-01-20 12:40:18'),
(1153, 'OLE Automation ', 1, 0, '2016-01-20 12:40:25'),
(1154, 'OLAP ', 1, 0, '2016-01-20 12:40:32'),
(1155, 'Oil painting ', 1, 0, '2016-01-20 12:40:45'),
(1156, 'OGRE ', 1, 0, '2016-01-20 12:40:54'),
(1157, 'Office Administration ', 1, 0, '2016-01-20 12:41:01'),
(1158, 'Off-page Optimization ', 1, 0, '2016-01-20 12:41:08'),
(1159, 'Odoo ', 1, 0, '2016-01-20 12:41:18'),
(1160, 'odesk api ', 1, 0, '2016-01-20 12:41:27'),
(1161, 'ODBC ', 1, 0, '2016-01-20 12:41:35'),
(1162, 'OCX ', 1, 0, '2016-01-20 12:41:54'),
(1163, 'GNU Octave ', 1, 0, '2016-01-20 12:42:03'),
(1164, 'OCR Tesseract ', 1, 0, '2016-01-20 12:42:15'),
(1165, 'OCR algorithms ', 1, 0, '2016-01-20 12:42:22'),
(1166, 'Occupational Health ', 1, 0, '2016-01-20 12:42:36'),
(1167, 'OCaml ', 1, 0, '2016-01-20 12:42:44'),
(1168, 'Objective-J ', 1, 0, '2016-01-20 12:42:52'),
(1169, 'Objective-C ', 1, 0, '2016-01-20 12:43:01'),
(1170, 'Object Pascal ', 1, 0, '2016-01-20 12:43:09'),
(1171, 'Object Oriented PHP ', 1, 0, '2016-01-20 12:43:19'),
(1172, 'Object oriented design ', 1, 0, '2016-01-20 12:43:27'),
(1173, 'OAuth ', 1, 0, '2016-01-20 12:43:34'),
(1174, 'NVIDIA Mental Ray ', 1, 0, '2016-01-20 13:04:34'),
(1175, 'Nutrition ', 1, 0, '2016-01-20 13:04:41'),
(1176, 'Nursing ', 1, 0, '2016-01-20 13:04:48'),
(1177, 'NUKE ', 1, 0, '2016-01-20 13:04:58'),
(1178, 'Nuendo ', 1, 0, '2016-01-20 13:05:04'),
(1179, 'nservicebus ', 1, 0, '2016-01-20 13:05:11'),
(1180, 'Novell NetWare ', 1, 0, '2016-01-20 13:05:59'),
(1181, 'Notary public ', 1, 0, '2016-01-20 13:06:07'),
(1182, 'NoSQL ', 1, 0, '2016-01-20 13:06:14'),
(1183, 'Norwegian ', 1, 0, '2016-01-20 13:06:22'),
(1184, 'NopCommerce ', 1, 0, '2016-01-20 13:06:44'),
(1185, 'Non-linear editing system ', 1, 0, '2016-01-20 13:06:51'),
(1186, 'Non-Fiction Writing ', 1, 0, '2016-01-20 13:07:02'),
(1187, 'Non-disclosure Agreements ', 1, 0, '2016-01-20 13:07:10'),
(1188, 'Node.js ', 1, 0, '2016-01-20 13:07:18'),
(1189, 'Ning Marketing ', 1, 0, '2016-01-20 13:07:26'),
(1190, 'Ning Development ', 1, 0, '2016-01-20 13:07:33'),
(1191, 'NI Multisim ', 1, 0, '2016-01-20 13:07:43'),
(1192, 'NHibernate ', 1, 0, '2016-01-20 13:07:55'),
(1193, 'Nginx ', 1, 0, '2016-01-20 13:08:04'),
(1194, 'ngcore ', 1, 0, '2016-01-20 13:08:10'),
(1195, 'NFS Implementation ', 1, 0, '2016-01-20 13:08:16'),
(1196, 'NFS Administration ', 1, 0, '2016-01-20 13:08:23'),
(1197, 'Nextengine ', 1, 0, '2016-01-20 13:08:29'),
(1198, 'Next Limit RealFlow', 1, 0, '2016-01-20 13:09:21'),
(1199, 'Next Limit Maxwell Render ', 1, 0, '2016-01-20 13:09:28'),
(1200, 'Nexmo ', 1, 0, '2016-01-20 13:09:34'),
(1201, 'Newsletter Writing ', 1, 0, '2016-01-20 13:09:43'),
(1202, 'News Writing Style ', 1, 0, '2016-01-20 13:09:50'),
(1203, 'Neuro-linguistic programming ', 1, 0, '2016-01-20 13:09:58'),
(1204, 'Network Security ', 1, 0, '2016-01-20 13:10:08'),
(1205, 'Network Programming ', 1, 0, '2016-01-20 13:10:15'),
(1206, 'Network Planning ', 1, 0, '2016-01-20 13:10:23'),
(1207, 'Network Pentesting ', 1, 0, '2016-01-20 13:10:29'),
(1208, 'Network Monitoring ', 1, 0, '2016-01-20 13:10:37'),
(1209, 'Network Engineering ', 1, 0, '2016-01-20 13:10:44'),
(1210, 'Network Design ', 1, 0, '2016-01-20 13:10:54'),
(1211, 'Network Analysis ', 1, 0, '2016-01-20 13:11:01'),
(1212, 'Network Administration ', 1, 0, '2016-01-20 13:11:18'),
(1213, 'NetSuite Development ', 1, 0, '2016-01-20 13:11:26'),
(1214, 'NetSuite Administration ', 1, 0, '2016-01-20 13:11:33'),
(1215, 'Netfabb ', 1, 0, '2016-01-20 13:11:41'),
(1216, 'Netezza ', 1, 0, '2016-01-20 13:11:47'),
(1217, 'NetBSD ', 1, 0, '2016-01-20 13:11:54'),
(1218, 'NetBeans ', 1, 0, '2016-01-20 13:12:03'),
(1219, 'Neo4j ', 1, 0, '2016-01-20 13:12:11'),
(1220, 'Negotiation ', 1, 0, '2016-01-20 13:12:19'),
(1221, 'Navigation System Implementation ', 1, 0, '2016-01-20 13:12:26'),
(1222, 'Navigation System Design', 1, 0, '2016-01-20 13:12:36'),
(1223, 'Natural language processing ', 1, 0, '2016-01-20 13:12:46'),
(1224, 'Narration ', 1, 0, '2016-01-20 13:12:55'),
(1225, 'Nanotechnology ', 1, 0, '2016-01-20 13:13:01'),
(1226, 'Nagios ', 1, 0, '2016-01-20 13:13:08'),
(1227, 'n2cms ', 1, 0, '2016-01-20 13:13:15'),
(1228, 'MySQL Programming ', 1, 0, '2016-01-20 13:15:24'),
(1229, 'MySQL Administration ', 1, 0, '2016-01-20 13:15:31'),
(1230, 'Myspace Marketing ', 1, 0, '2016-01-20 13:15:37'),
(1231, 'MySpace API ', 1, 0, '2016-01-20 13:15:43'),
(1232, 'MYOB Administration ', 1, 0, '2016-01-20 13:15:50'),
(1233, 'MXML ', 1, 0, '2016-01-20 13:15:58'),
(1234, 'Model View ViewModel (MVVT) ', 1, 0, '2016-01-20 13:16:06'),
(1235, 'MVC Framework ', 1, 0, '2016-01-20 13:16:13'),
(1236, 'Music Producing ', 1, 0, '2016-01-20 13:16:28'),
(1237, 'Music engraving ', 1, 0, '2016-01-20 13:16:35'),
(1238, 'Music Dubbing ', 1, 0, '2016-01-20 13:16:43'),
(1239, 'Musical composition ', 1, 0, '2016-01-20 13:16:48'),
(1240, 'Music Arrangement ', 1, 0, '2016-01-20 13:16:55'),
(1241, 'Music', 1, 0, '2016-01-20 13:17:19'),
(1242, 'Murals ', 1, 0, '2016-01-20 13:17:28'),
(1243, 'Munin ', 1, 0, '2016-01-20 13:17:36'),
(1244, 'Multithreaded Programming ', 1, 0, '2016-01-20 13:17:44'),
(1245, 'Multi-touch Hardware Programming ', 1, 0, '2016-01-20 13:17:50'),
(1246, 'Multi-touch Hardware Development ', 1, 0, '2016-01-20 13:18:00'),
(1247, 'Multi Level Marketing (MLM) ', 1, 0, '2016-01-20 13:18:11'),
(1248, 'mtek ', 1, 0, '2016-01-20 13:18:19'),
(1249, 'Microsoft adCenter ', 1, 0, '2016-01-20 13:18:27'),
(1250, 'Microsoft Visual Studio LightSwitch ', 1, 0, '2016-01-20 13:18:33'),
(1251, 'MS Office 365 ', 1, 0, '2016-01-20 13:19:59'),
(1252, 'MS-DOS Administration ', 1, 0, '2016-01-20 13:20:05'),
(1253, 'Multi Router Traffic Grapher (MRTG) ', 1, 0, '2016-01-20 13:20:15'),
(1254, 'MQL 4', 1, 0, '2016-01-20 13:20:27'),
(1255, 'Multiprotocol Label Switching (MPLS) ', 1, 0, '2016-01-20 13:20:39'),
(1256, 'MPD ', 1, 0, '2016-01-20 13:20:48'),
(1257, 'Mozenda Scraper ', 1, 0, '2016-01-20 13:20:55'),
(1258, 'MovableType ', 1, 0, '2016-01-20 13:21:02'),
(1259, 'Motivational Speaking ', 1, 0, '2016-01-20 13:21:13'),
(1260, 'Motion graphics ', 1, 0, '2016-01-20 13:21:20'),
(1261, 'Microsoft Office SharePoint Server ', 1, 0, '2016-01-20 13:21:27'),
(1262, 'morae ', 1, 0, '2016-01-20 13:21:39'),
(1263, 'Mootools ', 1, 0, '2016-01-20 13:21:45'),
(1264, 'MoonScript ', 1, 0, '2016-01-20 13:21:53'),
(1265, 'Moonfruit SiteMaker ', 1, 0, '2016-01-20 13:22:00'),
(1266, 'Moodle ', 1, 0, '2016-01-20 13:22:07'),
(1267, 'Mono ', 1, 0, '2016-01-20 13:22:13'),
(1268, 'Mongrel ', 1, 0, '2016-01-20 13:22:20'),
(1269, 'MongoDB ', 1, 0, '2016-01-20 13:22:28'),
(1270, 'Molecule Editors ', 1, 0, '2016-01-20 13:22:34'),
(1271, 'MODx ', 1, 0, '2016-01-20 13:22:40'),
(1272, 'Modul8 ', 1, 0, '2016-01-20 13:22:47'),
(1273, 'Model Sheet Drawing ', 1, 0, '2016-01-20 13:22:54'),
(1274, 'Model Sheet Design ', 1, 0, '2016-01-20 13:23:05'),
(1275, 'Mockito ', 1, 0, '2016-01-20 13:23:15'),
(1276, 'Mocha ', 1, 0, '2016-01-20 13:23:22'),
(1277, 'Mobile UI Design ', 1, 0, '2016-01-20 13:23:31'),
(1278, 'Mobile Programming ', 1, 0, '2016-01-20 13:23:37'),
(1279, 'Mobile Development Framework ', 1, 0, '2016-01-20 13:23:47'),
(1280, 'Mobile App Testing ', 1, 0, '2016-01-20 13:23:53'),
(1281, 'Mobile App Development ', 1, 0, '2016-01-20 13:24:00'),
(1282, 'Mobile Advertising ', 1, 0, '2016-01-20 13:24:07'),
(1283, 'mobi ', 1, 0, '2016-01-20 13:24:23'),
(1284, 'MLS Consulting ', 1, 0, '2016-01-20 13:24:32'),
(1285, 'Mixpanel ', 1, 0, '2016-01-20 13:24:39'),
(1286, 'Miva Merchant ', 1, 0, '2016-01-20 13:24:51'),
(1287, 'Minitab ', 1, 0, '2016-01-20 13:24:58'),
(1288, 'Mining Engineering ', 1, 0, '2016-01-20 13:25:05'),
(1289, 'Minecraft ', 1, 0, '2016-01-20 13:25:25'),
(1290, 'MindTouch ', 1, 0, '2016-01-20 13:25:31'),
(1291, 'Mind Mapping ', 1, 0, '2016-01-20 13:25:38'),
(1292, 'Mikrotik RouterOS ', 1, 0, '2016-01-20 13:25:44'),
(1293, 'Mikrotik RouterBOARD ', 1, 0, '2016-01-20 13:25:51'),
(1294, 'MIDI ', 1, 0, '2016-01-20 13:25:58'),
(1295, 'MicroStrategy ', 1, 0, '2016-01-20 13:26:05'),
(1296, 'Microstock Photography ', 1, 0, '2016-01-20 13:26:11'),
(1297, 'Microstration v8 ', 1, 0, '2016-01-20 13:26:24'),
(1298, 'Microsoft Word ', 1, 0, '2016-01-20 13:26:34'),
(1299, 'Microsoft Windows Server ', 1, 0, '2016-01-20 13:26:48'),
(1300, 'Microsoft Windows Powershell ', 1, 0, '2016-01-20 13:26:54'),
(1301, 'Microsoft Visual Studio ', 1, 0, '2016-01-20 13:27:01'),
(1302, 'Microsoft Visual C++ ', 1, 0, '2016-01-20 13:27:45'),
(1303, 'Visual Basic ', 1, 0, '2016-01-20 13:27:57'),
(1304, 'Microsoft Visio ', 1, 0, '2016-01-20 13:28:06'),
(1305, 'Microsoft Virtual Server ', 1, 0, '2016-01-20 13:28:24'),
(1306, 'Microsoft Transaction Server (MTS) ', 1, 0, '2016-01-20 13:28:35'),
(1307, 'Microsoft SQL SSRS ', 1, 0, '2016-01-20 13:28:45'),
(1308, 'Microsoft SQL SSAS ', 1, 0, '2016-01-20 13:28:52'),
(1309, 'Microsoft SQL Server Service Broker ', 1, 0, '2016-01-20 13:29:03'),
(1310, 'Microsoft SQL Server Notification Services ', 1, 0, '2016-01-20 13:29:09'),
(1311, 'Microsoft SQL Server Programming ', 1, 0, '2016-01-20 13:29:16'),
(1312, 'Microsoft SQL Server Administration ', 1, 0, '2016-01-20 13:29:26'),
(1313, 'Microsoft SQL CE ', 1, 0, '2016-01-20 13:29:36'),
(1314, 'Microsoft Small Business Server Administration ', 1, 0, '2016-01-20 13:30:16'),
(1315, 'Microsoft Silverlight ', 1, 0, '2016-01-20 13:30:25'),
(1316, 'Microsoft SharePoint Development ', 1, 0, '2016-01-20 13:30:35'),
(1317, 'Microsoft SharePoint Administration ', 1, 0, '2016-01-20 13:30:42'),
(1318, 'Microsoft Server ', 1, 0, '2016-01-20 13:30:50'),
(1319, 'Microsoft SCVMM ', 1, 0, '2016-01-20 13:30:57'),
(1320, 'Microsoft SCCM ', 1, 0, '2016-01-20 13:31:09'),
(1321, 'Microsoft Publisher ', 1, 0, '2016-01-20 13:31:18'),
(1322, 'Microsoft Project ', 1, 0, '2016-01-20 13:31:32'),
(1323, 'Microsoft PowerPoint ', 1, 0, '2016-01-20 13:31:43'),
(1324, 'Microsoft Outlook Development ', 1, 0, '2016-01-20 13:31:50'),
(1325, 'Microsoft Outlook ', 1, 0, '2016-01-20 13:31:59'),
(1326, 'Microsoft OneNote ', 1, 0, '2016-01-20 13:32:07'),
(1327, 'Microsoft Office ', 1, 0, '2016-01-20 13:32:17'),
(1328, 'Microsoft Message Queue Server (MMSQ) ', 1, 0, '2016-01-20 13:32:31'),
(1329, 'Microsoft MapPoint ', 1, 0, '2016-01-20 13:32:40'),
(1330, 'Microsoft Lync Server ', 1, 0, '2016-01-20 13:32:51'),
(1331, 'Microsoft Kinect Development ', 1, 0, '2016-01-20 13:32:58'),
(1332, 'Microsoft Infopath ', 1, 0, '2016-01-20 13:33:06'),
(1333, 'Microsoft Hyper-V Server ', 1, 0, '2016-01-20 13:33:16'),
(1334, 'Microsoft Hyper V ', 1, 0, '2016-01-20 13:33:28'),
(1335, 'Microsoft Dynamics GP ', 1, 0, '2016-01-20 13:34:09'),
(1336, 'Microsoft Expression Studio ', 1, 0, '2016-01-20 13:34:16'),
(1337, 'Microsoft Exchange Server ', 1, 0, '2016-01-20 13:34:26'),
(1338, 'Microsoft Excel PowerPivot ', 1, 0, '2016-01-20 13:34:33'),
(1339, 'Microsoft Excel ', 1, 0, '2016-01-20 13:34:47'),
(1340, 'Microsoft Entity Framework ', 1, 0, '2016-01-20 13:34:58'),
(1341, 'Microsoft Dynamics ERP ', 1, 0, '2016-01-20 13:35:08'),
(1342, 'Microsoft Dynamics Development ', 1, 0, '2016-01-20 13:35:15'),
(1343, 'Microsoft Dynamics CRM ', 1, 0, '2016-01-20 13:35:24'),
(1344, 'Microsoft Dynamics Administration ', 1, 0, '2016-01-20 13:35:32'),
(1345, 'Windows Media Connect ', 1, 0, '2016-01-20 13:36:57'),
(1346, 'Microsoft Commerce Server ', 1, 0, '2016-01-20 13:37:28'),
(1347, 'Microsoft Certified Information Technology Professional (MCITP) ', 1, 0, '2016-01-20 13:37:40'),
(1348, 'Microsoft Business Intelligence Studio ', 1, 0, '2016-01-20 13:37:47'),
(1349, 'Microsoft Active Directory ', 1, 0, '2016-01-20 13:38:01'),
(1350, 'Microsoft Access Programming ', 1, 0, '2016-01-20 13:38:09'),
(1351, 'Microsoft Access Administration ', 1, 0, '2016-01-20 13:38:14'),
(1352, 'Microcontroller Programming ', 1, 0, '2016-01-20 13:44:29'),
(1353, 'Microcontroller Design ', 1, 0, '2016-01-20 13:44:37'),
(1354, 'Microsoft Foundation Classes (MFC) ', 1, 0, '2016-01-20 13:44:45'),
(1355, 'Methods Engineering ', 1, 0, '2016-01-20 13:44:54'),
(1356, 'Meteor ', 1, 0, '2016-01-20 13:45:02'),
(1357, 'MetaTrader 4 (MT4) ', 1, 0, '2016-01-20 13:45:12'),
(1358, 'Merise ', 1, 0, '2016-01-20 13:45:23'),
(1359, 'Mercurial ', 1, 0, '2016-01-20 13:45:31'),
(1360, 'MerchantRun GlobalLink ', 1, 0, '2016-01-20 13:45:38'),
(1361, 'MerchantRun ', 1, 0, '2016-01-20 13:45:48'),
(1362, 'Menu Design ', 1, 0, '2016-01-20 13:45:55'),
(1363, 'Memcached ', 1, 0, '2016-01-20 13:46:02'),
(1364, 'Meego Development ', 1, 0, '2016-01-20 13:46:09'),
(1365, 'Medical Writing ', 1, 0, '2016-01-20 13:46:17'),
(1366, 'Medical Translation ', 1, 0, '2016-01-20 13:46:24'),
(1367, 'Medical transcription ', 1, 0, '2016-01-20 13:46:33'),
(1368, 'Medical Records Research ', 1, 0, '2016-01-20 13:48:13'),
(1369, 'Medical Law ', 1, 0, '2016-01-20 13:48:25'),
(1370, 'Medical Informatics ', 1, 0, '2016-01-20 13:48:33'),
(1371, 'Medical Imaging ', 1, 0, '2016-01-20 13:48:41'),
(1372, 'Medical Illustration ', 1, 0, '2016-01-20 13:48:52'),
(1373, 'Medical Billing and Coding ', 1, 0, '2016-01-20 13:49:03'),
(1374, 'MediaWiki ', 1, 0, '2016-01-20 13:49:10'),
(1375, 'Media relations ', 1, 0, '2016-01-20 13:49:17'),
(1376, 'Media buying ', 1, 0, '2016-01-20 13:49:24'),
(1377, 'Mechatronics ', 1, 0, '2016-01-20 13:49:32'),
(1378, 'Mechanical Engineering ', 1, 0, '2016-01-20 13:49:39'),
(1379, 'Mechanical Design ', 1, 0, '2016-01-20 13:50:09'),
(1380, 'MCP ', 1, 0, '2016-01-20 13:50:21'),
(1381, 'Multi-Criteria Decision Analysis ', 1, 0, '2016-01-20 13:50:29'),
(1382, 'McAfee VirusScan ', 1, 0, '2016-01-20 13:50:38'),
(1383, 'McAfee SAAS ', 1, 0, '2016-01-20 13:50:49'),
(1384, 'McAfee ePolicy Orchestrator ', 1, 0, '2016-01-20 13:50:56'),
(1385, 'Maxon Cinema 4D ', 1, 0, '2016-01-20 13:51:04'),
(1386, 'Maxon BodyPaint 3D ', 1, 0, '2016-01-20 13:51:17'),
(1387, 'Max ', 1, 0, '2016-01-20 13:51:26'),
(1388, 'Apache Maven ', 1, 0, '2016-01-20 13:51:34'),
(1389, 'MATLAB', 1, 0, '2016-01-20 13:51:57'),
(1390, 'Mathematics ', 1, 0, '2016-01-20 13:52:50'),
(1391, 'Mathematica ', 1, 0, '2016-01-20 13:53:35'),
(1392, 'MathCad ', 1, 0, '2016-01-20 13:53:44'),
(1393, 'Materials Engineering ', 1, 0, '2016-01-20 13:53:58'),
(1394, 'Mastercam ', 1, 0, '2016-01-20 13:54:08'),
(1395, 'Master Production Schedule ', 1, 0, '2016-01-20 13:54:17'),
(1396, 'Martial Arts ', 1, 0, '2016-01-20 13:54:42'),
(1397, 'Marriage Counseling ', 1, 0, '2016-01-20 13:54:51'),
(1398, 'Marketo ', 1, 0, '2016-01-20 13:55:01'),
(1399, 'Marketing strategy ', 1, 0, '2016-01-20 13:55:12'),
(1400, 'Marketing Cloud Marketing ', 1, 0, '2016-01-20 13:56:19'),
(1401, 'Marketing Cloud Development ', 1, 0, '2016-01-20 13:56:31'),
(1402, 'Marketing Cloud Administration ', 1, 0, '2016-01-20 13:56:50'),
(1403, 'Marketing Automation ', 1, 0, '2016-01-20 13:57:00'),
(1404, 'Market research ', 1, 0, '2016-01-20 13:57:12'),
(1405, 'Marathi ', 1, 0, '2016-01-20 13:57:29'),
(1406, 'MapReduce ', 1, 0, '2016-01-20 13:59:03'),
(1407, 'Mapr ', 1, 0, '2016-01-20 13:59:22'),
(1408, 'Maple ', 1, 0, '2016-01-20 13:59:32'),
(1409, 'Mapinfo ', 1, 0, '2016-01-20 13:59:43'),
(1410, 'MAPI ', 1, 0, '2016-01-20 13:59:55'),
(1411, 'Manufacturing Design ', 1, 0, '2016-01-20 14:00:13'),
(1412, 'Manufacturing ', 1, 0, '2016-01-20 14:00:44'),
(1413, 'Manual Test Execution ', 1, 0, '2016-01-20 14:01:32'),
(1414, 'Mantis ', 1, 0, '2016-01-20 14:02:43'),
(1415, 'Manga ', 1, 0, '2016-01-20 14:03:00'),
(1416, 'Mandarin ', 1, 0, '2016-01-20 14:03:10'),
(1417, 'Management Skills ', 1, 0, '2016-01-20 14:03:23'),
(1418, 'Management Development ', 1, 0, '2016-01-20 14:03:38'),
(1419, 'Management Consulting ', 1, 0, '2016-01-20 14:04:30'),
(1420, 'ManageEngine ', 1, 0, '2016-01-20 14:04:47'),
(1421, 'Mambo ', 1, 0, '2016-01-20 14:04:59'),
(1422, 'Malware ', 1, 0, '2016-01-20 14:05:11'),
(1423, 'Malayalam ', 1, 0, '2016-01-20 14:05:23'),
(1424, 'Malay ', 1, 0, '2016-01-20 14:05:37'),
(1425, 'Makerbot ', 1, 0, '2016-01-20 14:05:50'),
(1426, 'Make Build Script ', 1, 0, '2016-01-20 14:06:13'),
(1427, 'MailEnable ', 1, 0, '2016-01-20 14:06:26'),
(1428, 'mailchimp ', 1, 0, '2016-01-20 14:06:43'),
(1429, 'Mail Server Implementation ', 1, 0, '2016-01-20 14:06:54'),
(1430, 'Mail Merge ', 1, 0, '2016-01-20 14:07:46'),
(1431, 'Magic Tricks ', 1, 0, '2016-01-20 14:08:00'),
(1432, 'Magic Bullet Looks ', 1, 0, '2016-01-20 14:08:09'),
(1433, 'Magic Bullet Colorista ', 1, 0, '2016-01-20 14:08:29'),
(1434, 'Magento ', 1, 0, '2016-01-20 14:08:46'),
(1435, 'Magazine Layout ', 1, 0, '2016-01-20 14:09:02'),
(1436, 'Maemo ', 1, 0, '2016-01-20 14:09:21'),
(1437, 'MadCap Software ', 1, 0, '2016-01-20 14:09:37'),
(1438, 'Machine learning ', 1, 0, '2016-01-20 14:09:48'),
(1439, 'Machine Design ', 1, 0, '2016-01-20 14:10:09'),
(1440, 'Macedonian ', 1, 0, '2016-01-20 14:11:10'),
(1441, 'Macaw ', 1, 0, '2016-01-20 14:11:30'),
(1442, 'Mac OSX Administration ', 1, 0, '2016-01-20 14:11:53'),
(1443, 'Mac OS App Development ', 1, 0, '2016-01-20 14:12:05'),
(1444, 'm0n0wall ', 1, 0, '2016-01-20 14:12:15'),
(1445, 'Lyrics Writing ', 1, 0, '2016-01-20 14:12:40'),
(1446, 'Lucene Search ', 1, 0, '2016-01-20 14:12:50'),
(1447, 'Lua ', 1, 0, '2016-01-20 14:13:00'),
(1448, 'Loyalty Marketing ', 1, 0, '2016-01-20 14:13:12'),
(1449, 'Lotus Notes ', 1, 0, '2016-01-20 14:13:26'),
(1450, 'IBM Lotus Domino ', 1, 0, '2016-01-20 14:13:51'),
(1451, 'Lotus Approach ', 1, 0, '2016-01-20 14:14:01'),
(1452, 'Logo Design ', 1, 0, '2016-01-20 14:14:13'),
(1453, 'LogMeIn Rescue ', 1, 0, '2016-01-20 14:14:27'),
(1454, 'LogMeIn Hamachi ', 1, 0, '2016-01-20 14:15:57'),
(1455, 'LogiXML ', 1, 0, '2016-01-20 14:16:08'),
(1456, 'Logistics & Shipping ', 1, 0, '2016-01-20 14:16:23'),
(1457, 'Logic Pro ', 1, 0, '2016-01-20 14:16:57'),
(1458, 'Log4j ', 1, 0, '2016-01-20 14:17:07'),
(1459, 'Localization ', 1, 0, '2016-01-20 14:17:28'),
(1460, 'LoadRunner ', 1, 0, '2016-01-20 14:17:46'),
(1461, 'Load testing ', 1, 0, '2016-01-20 14:18:05'),
(1462, 'Load Balancing ', 1, 0, '2016-01-20 14:18:18'),
(1463, 'Learning Management System (LMS) ', 1, 0, '2016-01-20 14:18:36'),
(1464, 'LivePerson ', 1, 0, '2016-01-20 14:18:54'),
(1465, 'Live Chat Software ', 1, 0, '2016-01-20 14:19:11'),
(1466, 'Live Chat Operator ', 1, 0, '2016-01-20 14:19:22'),
(1467, 'Litigation ', 1, 0, '2016-01-20 14:19:38'),
(1468, 'Lithuanian ', 1, 0, '2016-01-20 14:19:52'),
(1469, 'Lithium Framework ', 1, 0, '2016-01-20 14:20:02'),
(1470, 'Literature Review ', 1, 0, '2016-01-20 14:20:53'),
(1471, 'Lisp ', 1, 0, '2016-01-20 14:21:03'),
(1472, 'LiquidPlanner ', 1, 0, '2016-01-20 14:21:22'),
(1473, 'Linux System Administration ', 1, 0, '2016-01-20 14:21:35'),
(1474, 'Slackware Linux ', 1, 0, '2016-01-20 14:21:44'),
(1475, 'linq to sql ', 1, 0, '2016-01-20 14:21:52'),
(1476, 'linq to entities ', 1, 0, '2016-01-20 14:22:00'),
(1477, 'LINQ ', 1, 0, '2016-01-20 14:22:11'),
(1478, 'Linkvana ', 1, 0, '2016-01-20 14:22:20'),
(1479, 'LinkedIn Recruiting ', 1, 0, '2016-01-20 14:23:35'),
(1480, 'LinkedIn Development ', 1, 0, '2016-01-20 14:23:53'),
(1481, 'Link Wheel ', 1, 0, '2016-01-20 14:24:02'),
(1482, 'Link Building ', 1, 0, '2016-01-20 14:24:13'),
(1483, 'Linguistics ', 1, 0, '2016-01-20 14:24:29'),
(1484, 'lingo ', 1, 0, '2016-01-20 14:24:42'),
(1485, 'Linear Programming ', 1, 0, '2016-01-20 14:24:59'),
(1486, 'LimeSurvey ', 1, 0, '2016-01-20 14:25:08'),
(1487, 'LimeJS ', 1, 0, '2016-01-20 14:25:17'),
(1488, 'Lightworks ', 1, 0, '2016-01-20 14:25:25'),
(1489, 'Lightwave 3d ', 1, 0, '2016-01-20 14:25:35'),
(1490, 'Lighttpd ', 1, 0, '2016-01-20 14:25:45'),
(1491, 'Lighting Design ', 1, 0, '2016-01-20 14:25:55'),
(1492, 'Liferay ', 1, 0, '2016-01-20 14:26:03'),
(1493, 'Licensing ', 1, 0, '2016-01-20 14:26:12'),
(1494, 'LibreOffice ', 1, 0, '2016-01-20 14:26:20'),
(1495, 'libGDX ', 1, 0, '2016-01-20 14:26:29'),
(1496, 'libcurl ', 1, 0, '2016-01-20 14:26:37'),
(1497, 'LexisNexis Practice Advisor ', 1, 0, '2016-01-20 14:26:45'),
(1498, 'LexisNexis Accurint ', 1, 0, '2016-01-20 14:26:55'),
(1499, 'Level Design ', 1, 0, '2016-01-20 14:27:03'),
(1500, 'Lettering ', 1, 0, '2016-01-20 14:27:25'),
(1501, 'Letter Writing ', 1, 0, '2016-01-20 14:27:36'),
(1502, 'Lesson Plan Writing ', 1, 0, '2016-01-20 14:27:46'),
(1503, 'LESS ', 1, 0, '2016-01-20 14:27:59'),
(1504, 'Leptonica ', 1, 0, '2016-01-20 14:28:11'),
(1505, 'LemonStand ', 1, 0, '2016-01-20 14:28:20'),
(1506, 'Legal writing ', 1, 0, '2016-01-20 14:28:31'),
(1507, 'Legal Translation ', 1, 0, '2016-01-20 14:28:50'),
(1508, 'Legal Transcription ', 1, 0, '2016-01-20 14:29:04'),
(1509, 'Legal research ', 1, 0, '2016-01-20 14:29:17'),
(1510, 'Legal Consulting ', 1, 0, '2016-01-20 14:30:08'),
(1511, 'Lectora ', 1, 0, '2016-01-20 14:30:32'),
(1512, 'Lean Consulting ', 1, 0, '2016-01-20 14:30:52'),
(1513, 'Lead generation ', 1, 0, '2016-01-20 14:31:02'),
(1514, 'LDAP ', 1, 0, '2016-01-20 14:31:11'),
(1515, 'Latvian ', 1, 0, '2016-01-20 14:31:22'),
(1516, 'LaTeX ', 1, 0, '2016-01-20 14:35:36'),
(1517, 'Lasso ', 1, 0, '2016-01-20 14:35:48'),
(1518, 'laser engraving ', 1, 0, '2016-01-20 14:36:04'),
(1519, 'Laravel Framework ', 1, 0, '2016-01-20 14:36:13'),
(1520, 'Filipino - Visayan Dialect ', 1, 0, '2016-01-20 14:36:21'),
(1521, 'Landscape design ', 1, 0, '2016-01-20 14:36:29'),
(1522, 'Landing Pages ', 1, 0, '2016-01-20 14:36:49'),
(1523, 'LANDesk ', 1, 0, '2016-01-20 14:37:07'),
(1524, 'LAN Implementation ', 1, 0, '2016-01-20 14:37:14'),
(1525, 'LAN Administration ', 1, 0, '2016-01-20 14:37:30'),
(1526, 'LAMP Administration ', 1, 0, '2016-01-20 14:37:39'),
(1527, 'LabWindows/CVI ', 1, 0, '2016-01-20 14:37:47'),
(1528, 'LabVIEW ', 1, 0, '2016-01-20 14:37:58'),
(1529, 'Label and Package Design ', 1, 0, '2016-01-20 14:38:14'),
(1530, 'Kyrgyz ', 1, 0, '2016-01-20 14:40:05'),
(1531, 'KVM Virtualization ', 1, 0, '2016-01-20 14:40:18'),
(1532, 'KVM Switches ', 1, 0, '2016-01-20 14:40:47'),
(1533, 'KVM ', 1, 0, '2016-01-20 14:41:00'),
(1534, 'Korn shell ', 1, 0, '2016-01-20 14:41:14'),
(1535, 'Korean ', 1, 0, '2016-01-20 14:41:24'),
(1536, 'Kohana ', 1, 0, '2016-01-20 14:41:33'),
(1537, 'KnockoutJS ', 1, 0, '2016-01-20 14:41:41'),
(1538, 'KiXtart ', 1, 0, '2016-01-20 14:41:49'),
(1539, 'KitchenDraw ', 1, 0, '2016-01-20 14:42:00'),
(1540, 'KISSMetrics ', 1, 0, '2016-01-20 14:42:09'),
(1541, 'Kindle Fire Apps ', 1, 0, '2016-01-20 14:42:18'),
(1542, 'Kindle Fire ', 1, 0, '2016-01-20 14:42:27'),
(1543, 'Kindle App Development ', 1, 0, '2016-01-20 14:42:35'),
(1544, 'Kickstarter Marketing ', 1, 0, '2016-01-20 14:42:45'),
(1545, 'Keynote ', 1, 0, '2016-01-20 14:42:53'),
(1546, 'Keyboarding ', 1, 0, '2016-01-20 14:44:42'),
(1547, 'Key/Value Stores ', 1, 0, '2016-01-20 14:44:54'),
(1548, 'Kernel ', 1, 0, '2016-01-20 14:45:03'),
(1549, 'Kerkythea ', 1, 0, '2016-01-20 14:45:18'),
(1550, 'Kerberos ', 1, 0, '2016-01-20 14:45:30'),
(1551, 'Kentico CMS ', 1, 0, '2016-01-20 14:45:42'),
(1552, 'Kendo UI ', 1, 0, '2016-01-20 14:45:53'),
(1553, 'Kannada ', 1, 0, '2016-01-20 14:46:02'),
(1554, 'Kaltura ', 1, 0, '2016-01-20 14:46:14'),
(1555, 'Kajabi ', 1, 0, '2016-01-20 14:46:19'),
(1556, 'Kaizen ', 1, 0, '2016-01-20 14:46:27'),
(1557, 'Junos ', 1, 0, '2016-01-20 14:46:37'),
(1558, 'JUnit ', 1, 0, '2016-01-20 14:46:54'),
(1559, 'Juniper Routers ', 1, 0, '2016-01-20 14:47:02'),
(1560, 'JSTL ', 1, 0, '2016-01-20 14:47:11'),
(1561, 'JSP ', 1, 0, '2016-01-20 14:47:19'),
(1562, 'json ', 1, 0, '2016-01-20 14:47:29'),
(1563, 'Jsharp ', 1, 0, '2016-01-20 14:47:37'),
(1564, 'JavaServer Faces (JSF) ', 1, 0, '2016-01-20 14:47:45'),
(1565, 'JQuery Mobile ', 1, 0, '2016-01-20 14:47:53'),
(1566, 'jQuery ', 1, 0, '2016-01-20 14:48:02'),
(1567, 'JPA ', 1, 0, '2016-01-20 14:48:11'),
(1568, 'Joomla Migration ', 1, 0, '2016-01-20 14:53:08'),
(1569, 'Joomla Fabrik ', 1, 0, '2016-01-20 14:53:42'),
(1570, 'Joomla! ', 1, 0, '2016-01-20 14:53:52'),
(1571, 'JOnAS ', 1, 0, '2016-01-20 14:53:59'),
(1572, 'JomSocial Development ', 1, 0, '2016-01-20 14:54:06'),
(1573, 'Job Description Writing ', 1, 0, '2016-01-20 14:54:14'),
(1574, 'Job Definition Format (JDF) ', 1, 0, '2016-01-20 14:54:22'),
(1575, 'Job Costing ', 1, 0, '2016-01-20 14:54:30'),
(1576, 'JNDI ', 1, 0, '2016-01-20 14:54:43'),
(1577, 'JNCIA-Junos ', 1, 0, '2016-01-20 14:54:53'),
(1578, 'JMS ', 1, 0, '2016-01-20 14:55:01'),
(1579, 'JMeter ', 1, 0, '2016-01-20 14:55:08'),
(1580, 'Jinja2 ', 1, 0, '2016-01-20 14:55:15'),
(1581, 'Jingle Program Production ', 1, 0, '2016-01-20 14:55:24'),
(1582, 'Jimdo ', 1, 0, '2016-01-20 14:55:31'),
(1583, 'Jig and Fixture Design ', 1, 0, '2016-01-20 14:55:39'),
(1584, 'JFC ', 1, 0, '2016-01-20 14:55:47'),
(1585, 'Jewish Theology ', 1, 0, '2016-01-20 14:55:55'),
(1586, 'Jewelry Design ', 1, 0, '2016-01-20 14:56:11'),
(1587, 'JetPack ', 1, 0, '2016-01-20 14:56:20'),
(1588, 'Jenkins ', 1, 0, '2016-01-20 14:56:27'),
(1589, 'JDeveloper ', 1, 0, '2016-01-20 14:56:35'),
(1590, 'JDBC ', 1, 0, '2016-01-20 14:56:42'),
(1591, 'Oracle JD Edwards EnterpriseOne ', 1, 0, '2016-01-20 14:56:59'),
(1592, 'JCL ', 1, 0, '2016-01-20 14:57:09'),
(1593, 'JBPM ', 1, 0, '2016-01-20 14:57:15'),
(1594, 'JBoss Seam ', 1, 0, '2016-01-20 14:57:24'),
(1595, 'JBoss ', 1, 0, '2016-01-20 14:57:32'),
(1596, 'JAXB ', 1, 0, '2016-01-20 14:57:40'),
(1597, 'JavaScript ', 1, 0, '2016-01-20 14:57:48'),
(1598, 'Javanese ', 1, 0, '2016-01-20 14:58:05'),
(1599, 'JavaFX ', 1, 0, '2016-01-20 14:58:14'),
(1600, 'Java Servlets Development ', 1, 0, '2016-01-20 14:58:24'),
(1601, 'Java ME ', 1, 0, '2016-01-20 14:58:39'),
(1602, 'Java EE ', 1, 0, '2016-01-20 14:58:47'),
(1603, 'Java ', 1, 0, '2016-01-20 14:58:54'),
(1604, 'JasperReports ', 1, 0, '2016-01-20 14:59:03'),
(1605, 'Japanese ', 1, 0, '2016-01-20 14:59:11'),
(1606, 'J2SE ', 1, 0, '2016-01-20 14:59:20'),
(1607, 'J2ME ', 1, 0, '2016-01-20 14:59:28'),
(1608, 'J2EE ', 1, 0, '2016-01-20 14:59:36'),
(1609, 'IT Service Management ', 1, 0, '2016-01-20 18:45:33'),
(1610, 'ITK ', 1, 0, '2016-01-20 18:45:43'),
(1611, 'ITIL ', 1, 0, '2016-01-20 18:45:50'),
(1612, 'iTextSharp ', 1, 0, '2016-01-20 18:45:57'),
(1613, 'Italian ', 1, 0, '2016-01-20 18:46:06'),
(1614, 'IT Management ', 1, 0, '2016-01-20 18:46:15'),
(1615, 'Issue Tracking Systems ', 1, 0, '2016-01-20 18:47:56'),
(1616, 'ISO 9001 ', 1, 0, '2016-01-20 18:48:07'),
(1617, 'ISO 9000 ', 1, 0, '2016-01-20 18:48:16'),
(1618, 'Islamic theology ', 1, 0, '2016-01-20 18:48:23'),
(1619, 'Islamic Banking ', 1, 0, '2016-01-20 18:48:31'),
(1620, 'ISEB ', 1, 0, '2016-01-20 18:48:38'),
(1621, 'ISA Server ', 1, 0, '2016-01-20 18:48:49'),
(1622, 'IRM Income Tax Audits ', 1, 0, '2016-01-20 18:48:57'),
(1623, 'IronPython ', 1, 0, '2016-01-20 18:49:30'),
(1624, 'ireport ', 1, 0, '2016-01-20 18:49:38'),
(1625, 'IRC Server Administration ', 1, 0, '2016-01-20 18:49:46'),
(1626, 'Iptables ', 1, 0, '2016-01-20 18:50:01'),
(1627, 'IPsec ', 1, 0, '2016-01-20 18:50:10'),
(1628, 'IPMI ', 1, 0, '2016-01-20 18:50:36'),
(1629, 'iPhone UI Design ', 1, 0, '2016-01-20 18:50:44'),
(1630, 'iPhone App Development ', 1, 0, '2016-01-20 18:50:51'),
(1631, 'iPad UI Design ', 1, 0, '2016-01-20 18:51:05'),
(1632, 'iPad App Development ', 1, 0, '2016-01-20 18:51:13'),
(1633, 'iOS Development ', 1, 0, '2016-01-20 18:51:20'),
(1634, 'Ionic Framework ', 1, 0, '2016-01-20 18:51:28'),
(1635, 'Invoicing ', 1, 0, '2016-01-20 18:51:36'),
(1636, 'Invitation Design ', 1, 0, '2016-01-20 18:51:45'),
(1637, 'Investment Research ', 1, 0, '2016-01-20 18:51:53'),
(1638, 'Investigative Reporting ', 1, 0, '2016-01-20 18:52:01'),
(1639, 'Inventory Management ', 1, 0, '2016-01-20 18:52:11'),
(1640, 'Intuit Quicken ', 1, 0, '2016-01-20 18:52:21'),
(1641, 'Intuit QuickBooks ', 1, 0, '2016-01-20 18:52:30'),
(1642, 'Intuit Lacerte Tax ', 1, 0, '2016-01-20 18:52:44'),
(1643, 'Intranet Implementation ', 1, 0, '2016-01-20 18:52:51'),
(1644, 'Intranet Architecture ', 1, 0, '2016-01-20 18:54:06'),
(1645, 'Interviewing ', 1, 0, '2016-01-20 18:54:14'),
(1646, 'Intersystems Cache ', 1, 0, '2016-01-20 18:54:21'),
(1647, 'interspire ', 1, 0, '2016-01-20 18:54:28'),
(1648, 'Interprise Suite ERP ', 1, 0, '2016-01-20 18:54:37'),
(1649, 'internet surveys ', 1, 0, '2016-01-20 18:54:49'),
(1650, 'Internet Security ', 1, 0, '2016-01-20 18:55:06'),
(1651, 'Internet research ', 1, 0, '2016-01-20 18:55:22'),
(1652, 'Internet Marketing ', 1, 0, '2016-01-20 18:55:29'),
(1653, 'International taxation ', 1, 0, '2016-01-20 18:55:37'),
(1654, 'International Law ', 1, 0, '2016-01-20 18:55:58'),
(1655, 'Internal Auditing ', 1, 0, '2016-01-20 18:56:06'),
(1656, 'Interior design ', 1, 0, '2016-01-20 18:56:26'),
(1657, 'InterBase ', 1, 0, '2016-01-20 18:56:34'),
(1658, 'Interactive Voice Response ', 1, 0, '2016-01-20 18:56:44'),
(1659, 'Interaction design ', 1, 0, '2016-01-20 18:56:55'),
(1660, 'IntelliJ IDEA ', 1, 0, '2016-01-20 18:57:03'),
(1661, 'IntelliCred ', 1, 0, '2016-01-20 18:57:11'),
(1662, 'Intellectual Property Law ', 1, 0, '2016-01-20 18:57:21'),
(1663, 'Integrated Circuits ', 1, 0, '2016-01-20 18:57:31'),
(1664, 'Insurance Consulting ', 1, 0, '2016-01-20 18:57:40'),
(1665, 'Instrumentation ', 1, 0, '2016-01-20 18:58:04'),
(1666, 'Instructional design ', 1, 0, '2016-01-20 18:58:25'),
(1667, 'InstallShield ', 1, 0, '2016-01-20 18:58:35'),
(1668, 'Installer Development ', 1, 0, '2016-01-20 18:58:44'),
(1669, 'Instagram Marketing ', 1, 0, '2016-01-20 18:58:52'),
(1670, 'Instagram API ', 1, 0, '2016-01-20 18:59:03'),
(1671, 'Inno Setup ', 1, 0, '2016-01-20 18:59:12'),
(1672, 'Inkscape ', 1, 0, '2016-01-20 18:59:21'),
(1673, 'ingress filtering ', 1, 0, '2016-01-20 18:59:29'),
(1674, 'Ingress ', 1, 0, '2016-01-20 18:59:38'),
(1675, 'InfusionSoft Marketing ', 1, 0, '2016-01-20 18:59:50'),
(1676, 'Infusionsoft Development ', 1, 0, '2016-01-20 18:59:59'),
(1677, 'Infusionsoft Administration ', 1, 0, '2016-01-20 19:00:07'),
(1678, 'Infragistics ', 1, 0, '2016-01-20 19:00:18'),
(1679, 'Informix Programming ', 1, 0, '2016-01-20 19:00:27'),
(1680, 'Informix Administration ', 1, 0, '2016-01-20 19:00:45'),
(1681, 'informatique ', 1, 0, '2016-01-20 19:01:00'),
(1682, 'Information Security ', 1, 0, '2016-01-20 19:01:08'),
(1683, 'Information Management ', 1, 0, '2016-01-20 19:01:22'),
(1684, 'Information design ', 1, 0, '2016-01-20 19:01:31'),
(1685, 'Information Builders WebFOCUS ', 1, 0, '2016-01-20 19:02:31'),
(1686, 'Information Architecture ', 1, 0, '2016-01-20 19:02:40'),
(1687, 'Informatica ', 1, 0, '2016-01-20 19:02:53'),
(1688, 'Infographics ', 1, 0, '2016-01-20 19:03:01'),
(1689, 'Industrial Engineering ', 1, 0, '2016-01-20 19:03:21'),
(1690, 'Industrial design ', 1, 0, '2016-01-20 19:03:31'),
(1691, 'Indonesian ', 1, 0, '2016-01-20 19:03:52'),
(1692, 'Indexing ', 1, 0, '2016-01-20 19:04:01'),
(1693, 'Inbound marketing ', 1, 0, '2016-01-20 19:06:03'),
(1694, 'In-Game Advertising ', 1, 0, '2016-01-20 19:06:12'),
(1695, 'IMS ', 1, 0, '2016-01-20 19:06:21'),
(1696, 'Immigration Law ', 1, 0, '2016-01-20 19:06:30'),
(1697, 'Imaging ', 1, 0, '2016-01-20 19:06:42'),
(1698, 'Image Processing', 1, 0, '2016-01-20 19:06:58'),
(1699, 'Image Editing ', 1, 0, '2016-01-20 19:07:07'),
(1700, 'IMacros', 1, 0, '2016-01-20 19:07:30'),
(1701, 'Illustration', 1, 0, '2016-01-20 19:07:40'),
(1702, 'Internet Information Services (IIS) ', 1, 0, '2016-01-20 19:07:50'),
(1703, 'ifbyphone API Development ', 1, 0, '2016-01-20 19:11:57'),
(1704, 'ifbyphone Administration ', 1, 0, '2016-01-20 19:12:08'),
(1705, 'IDRISI ', 1, 0, '2016-01-20 19:12:16'),
(1706, 'IdeaBlade DevForce ', 1, 0, '2016-01-20 19:12:31'),
(1707, 'IContact ', 1, 0, '2016-01-20 19:12:39'),
(1708, 'Icon Design ', 1, 0, '2016-01-20 19:12:47'),
(1709, 'IClone ', 1, 0, '2016-01-20 19:12:55'),
(1710, 'Icefaces ', 1, 0, '2016-01-20 19:13:02'),
(1711, 'ICD Coding ', 1, 0, '2016-01-20 19:13:29'),
(1712, 'IBM z/VM Administration ', 1, 0, '2016-01-20 19:13:35'),
(1713, 'IBM System x ', 1, 0, '2016-01-20 19:14:57'),
(1714, 'IBM WebSphere ', 1, 0, '2016-01-20 19:15:55'),
(1715, 'IBM Watson ', 1, 0, '2016-01-20 20:12:17'),
(1716, 'IBM Tivoli Framework ', 1, 0, '2016-01-20 20:12:36'),
(1717, 'IBM System Storage ', 1, 0, '2016-01-20 20:13:46'),
(1718, 'IBM SPSS ', 1, 0, '2016-01-20 20:13:55'),
(1719, 'IBM SmartCloud ', 1, 0, '2016-01-20 20:14:02'),
(1720, 'IBM SameTime ', 1, 0, '2016-01-20 20:14:15'),
(1721, 'IBM System p ', 1, 0, '2016-01-20 20:15:20'),
(1722, 'IBM PowerPC Programming ', 1, 0, '2016-01-20 20:15:27'),
(1723, 'IBM Lotus Symphony ', 1, 0, '2016-01-20 20:15:34'),
(1724, 'IBM Lotus Notes Traveler ', 1, 0, '2016-01-20 20:15:41'),
(1725, 'IBM DB2 Programming ', 1, 0, '2016-01-20 20:15:48'),
(1726, 'IBM DB2 Administration ', 1, 0, '2016-01-20 20:15:55'),
(1727, 'IBATIS ', 1, 0, '2016-01-20 20:16:07'),
(1728, 'Hypnosis ', 1, 0, '2016-01-20 20:16:23'),
(1729, 'Hybris ', 1, 0, '2016-01-20 20:16:38'),
(1730, 'Hardware Prototyping ', 1, 0, '2016-01-20 20:16:47'),
(1731, 'HVAC System Design ', 1, 0, '2016-01-20 20:16:53'),
(1732, 'Hungarian ', 1, 0, '2016-01-20 20:17:04'),
(1733, 'Humor Writing ', 1, 0, '2016-01-20 20:17:12'),
(1734, 'Human Sciences ', 1, 0, '2016-01-20 20:17:19'),
(1735, 'Human Resource Management ', 1, 0, '2016-01-20 20:17:34'),
(1736, 'HubSpot ', 1, 0, '2016-01-20 20:17:47'),
(1737, 'HTML5 ', 1, 0, '2016-01-20 20:17:54'),
(1738, 'HTML ', 1, 0, '2016-01-20 20:18:03'),
(1739, 'HRM ', 1, 0, '2016-01-20 20:18:11'),
(1740, 'Human Resource Information Systems ', 1, 0, '2016-01-20 20:18:18'),
(1741, 'HR Benefits ', 1, 0, '2016-01-20 20:18:25'),
(1742, 'HP-UX Administration ', 1, 0, '2016-01-20 20:18:33'),
(1743, 'HP-UX ', 1, 0, '2016-01-20 20:18:47'),
(1744, 'HP Quality Center ', 1, 0, '2016-01-20 20:18:56'),
(1745, 'HP QuickTest Professional (HPQTP) ', 1, 0, '2016-01-20 20:19:06'),
(1746, 'HP Network Management Center (HPNMC) ', 1, 0, '2016-01-20 20:19:16'),
(1747, 'HP Cloud ', 1, 0, '2016-01-20 20:19:26'),
(1748, 'Houdini ', 1, 0, '2016-01-20 20:19:33'),
(1749, 'HotDog ', 1, 0, '2016-01-20 20:19:40'),
(1750, 'Hospitality ', 1, 0, '2016-01-20 20:19:46'),
(1751, 'HootSuite ', 1, 0, '2016-01-20 20:19:53'),
(1752, 'Home Design ', 1, 0, '2016-01-20 20:20:02'),
(1753, 'Home Automation ', 1, 0, '2016-01-20 20:20:16'),
(1754, 'History ', 1, 0, '2016-01-20 20:20:23'),
(1755, 'Hindi ', 1, 0, '2016-01-20 20:20:31'),
(1756, 'Highcharts ', 1, 0, '2016-01-20 20:20:38'),
(1757, 'Hibernate ', 1, 0, '2016-01-20 20:20:47'),
(1758, 'hi5 ', 1, 0, '2016-01-20 20:20:58'),
(1759, 'Heroku ', 1, 0, '2016-01-20 20:21:10'),
(1760, 'Helpdesk ', 1, 0, '2016-01-20 20:21:18'),
(1761, 'Hebrew ', 1, 0, '2016-01-20 20:21:26'),
(1762, 'Health Level 7 ', 1, 0, '2016-01-20 20:21:35'),
(1763, 'headus UVLayout ', 1, 0, '2016-01-20 20:21:48'),
(1764, 'HBase ', 1, 0, '2016-01-20 20:22:00'),
(1765, 'HaXe ', 1, 0, '2016-01-20 20:22:08'),
(1766, 'Haitian Creole ', 1, 0, '2016-01-20 20:22:19'),
(1767, 'Haskell ', 1, 0, '2016-01-20 20:22:27'),
(1768, 'Hardware Troubleshooting ', 1, 0, '2016-01-20 20:22:34'),
(1769, 'haproxy ', 1, 0, '2016-01-20 20:22:42'),
(1770, 'HAML ', 1, 0, '2016-01-20 20:22:49'),
(1771, 'Hadoop ', 1, 0, '2016-01-20 20:23:01'),
(1772, 'Fuzzing ', 1, 0, '2016-01-20 20:23:18'),
(1773, 'Fusebox ', 1, 0, '2016-01-20 20:23:26'),
(1774, 'Fundraising ', 1, 0, '2016-01-20 20:23:34'),
(1775, 'Functional testing ', 1, 0, '2016-01-20 20:23:41'),
(1776, 'Full-text Search Engines ', 1, 0, '2016-01-20 20:23:49'),
(1777, 'fuel cms ', 1, 0, '2016-01-20 20:23:56'),
(1778, 'FTP ', 1, 0, '2016-01-20 20:24:21'),
(1779, 'Microsoft FrontPage ', 1, 0, '2016-01-20 20:24:36'),
(1780, 'Frontend Development ', 1, 0, '2016-01-20 20:24:44'),
(1781, 'Friendster ', 1, 0, '2016-01-20 20:24:54'),
(1782, 'French ', 1, 0, '2016-01-20 20:25:02'),
(1783, 'Freeswitch ', 1, 0, '2016-01-20 20:25:10'),
(1784, 'FreePBX ', 1, 0, '2016-01-20 20:25:26'),
(1785, 'FreeMarker ', 1, 0, '2016-01-20 20:25:34'),
(1786, 'Freelance Marketing ', 1, 0, '2016-01-20 20:25:41'),
(1787, 'FreeBSD ', 1, 0, '2016-01-20 20:25:54'),
(1788, 'Fraud Mitigation ', 1, 0, '2016-01-20 20:26:01'),
(1789, 'Fraud Analysis ', 1, 0, '2016-01-20 20:26:09'),
(1790, 'Franchise Consulting ', 1, 0, '2016-01-20 20:26:17'),
(1791, 'Field-Programmable Gate Array (FPGA) ', 1, 0, '2016-01-20 20:26:29'),
(1792, 'FoxPro Programming ', 1, 0, '2016-01-20 20:26:36'),
(1793, 'FoxPro Administration ', 1, 0, '2016-01-20 20:26:46'),
(1794, 'FourSquare Development ', 1, 0, '2016-01-20 20:26:54'),
(1795, 'Forum Posting ', 1, 0, '2016-01-20 20:27:06'),
(1796, 'Forum Moderation ', 1, 0, '2016-01-20 20:27:15'),
(1797, 'Forum Development ', 1, 0, '2016-01-20 20:27:23'),
(1798, 'Fortran ', 1, 0, '2016-01-20 20:27:37'),
(1799, 'Format & Layout ', 1, 0, '2016-01-20 20:27:47'),
(1800, 'Form-Z ', 1, 0, '2016-01-20 20:28:01'),
(1801, 'Foreign Exchange Trading ', 1, 0, '2016-01-20 20:28:09'),
(1802, 'FontForge ', 1, 0, '2016-01-20 20:28:16'),
(1803, 'Font Development ', 1, 0, '2016-01-20 20:28:24'),
(1804, 'Flyer Design ', 1, 0, '2016-01-20 20:28:36'),
(1805, 'Flowcharts ', 1, 0, '2016-01-20 20:28:43'),
(1806, 'Flask ', 1, 0, '2016-01-20 20:28:51'),
(1807, 'Flash 3D ', 1, 0, '2016-01-20 20:29:00'),
(1808, 'FL Studio ', 1, 0, '2016-01-20 20:29:08'),
(1809, 'Five9 ', 1, 0, '2016-01-20 20:29:16'),
(1810, 'First aid ', 1, 0, '2016-01-20 20:29:24'),
(1811, 'Firewall ', 1, 0, '2016-01-20 20:29:32'),
(1812, 'Firefox Plugin Development ', 1, 0, '2016-01-20 20:29:43'),
(1813, 'Firebird ', 1, 0, '2016-01-20 20:29:50'),
(1814, 'Fire Protection Engineering ', 1, 0, '2016-01-20 20:29:56'),
(1815, 'Fire OS Development ', 1, 0, '2016-01-20 20:30:04'),
(1816, 'Finnish ', 1, 0, '2016-01-20 20:30:12'),
(1817, 'Finite Element Analysis ', 1, 0, '2016-01-20 20:30:19'),
(1818, 'Financial Writing ', 1, 0, '2016-01-20 20:30:28'),
(1819, 'Financial Reporting ', 1, 0, '2016-01-20 20:30:37'),
(1820, 'Financial Prospectus Writing ', 1, 0, '2016-01-20 20:30:46'),
(1821, 'Financial modeling ', 1, 0, '2016-01-20 20:31:00'),
(1822, 'Financial Management ', 1, 0, '2016-01-20 20:31:12'),
(1823, 'Financial Forecasting ', 1, 0, '2016-01-20 20:31:26'),
(1824, 'Financial analysis ', 1, 0, '2016-01-20 20:31:34'),
(1825, 'Financial Accounting ', 1, 0, '2016-01-20 20:31:43'),
(1826, 'Finale ', 1, 0, '2016-01-20 20:31:51'),
(1827, 'Final Draft ', 1, 0, '2016-01-20 20:32:05'),
(1828, 'Final Cut Pro X ', 1, 0, '2016-01-20 20:32:12'),
(1829, 'Final Cut Pro ', 1, 0, '2016-01-20 20:32:21'),
(1830, 'Film Production ', 1, 0, '2016-01-20 20:32:28'),
(1831, 'Film Dubbing ', 1, 0, '2016-01-20 20:32:35'),
(1832, 'Film Direction ', 1, 0, '2016-01-20 20:32:44'),
(1833, 'Film criticism ', 1, 0, '2016-01-20 20:32:52'),
(1834, 'Filipino ', 1, 0, '2016-01-20 20:33:02'),
(1835, 'Filing ', 1, 0, '2016-01-20 20:33:10'),
(1836, 'FileMaker ', 1, 0, '2016-01-20 20:33:17'),
(1837, 'Field-Map ', 1, 0, '2016-01-20 20:33:25'),
(1838, 'Fiction Writing ', 1, 0, '2016-01-20 20:33:32'),
(1839, 'Fiber Optics ', 1, 0, '2016-01-20 20:33:40'),
(1840, 'FFmpeg ', 1, 0, '2016-01-20 20:33:51'),
(1841, 'Fetchmail ', 1, 0, '2016-01-20 20:34:00'),
(1842, 'Fedora ', 1, 0, '2016-01-20 20:36:21'),
(1843, 'Federal Acquisition Regulations ', 1, 0, '2016-01-20 20:36:29'),
(1844, 'Feature Writing ', 1, 0, '2016-01-20 20:36:37'),
(1845, 'FBML ', 1, 0, '2016-01-20 20:36:46'),
(1846, 'Facebook Javascript (FBJS) ', 1, 0, '2016-01-20 20:37:02');
INSERT INTO `skills` (`id`, `name`, `active`, `delete_remove`, `date_added`) VALUES
(1847, 'Fax ', 1, 0, '2016-01-20 20:37:09'),
(1848, 'Fashion Modeling ', 1, 0, '2016-01-20 20:37:16'),
(1849, 'Fashion design ', 1, 0, '2016-01-20 20:37:24'),
(1850, 'Family Law ', 1, 0, '2016-01-20 20:37:31'),
(1851, 'Fact Checking ', 1, 0, '2016-01-20 20:37:42'),
(1852, 'Facelets ', 1, 0, '2016-01-20 20:37:50'),
(1853, 'Facebook Marketing ', 1, 0, '2016-01-20 20:37:57'),
(1854, 'facebook games development ', 1, 0, '2016-01-20 20:38:08'),
(1855, 'Facebook Development ', 1, 0, '2016-01-20 20:38:16'),
(1856, 'FAAC ', 1, 0, '2016-01-20 20:38:23'),
(1857, 'F# ', 1, 0, '2016-01-20 20:38:56'),
(1858, 'eZ Publish ', 1, 0, '2016-01-20 20:39:06'),
(1859, 'Eyeon Fusion ', 1, 0, '2016-01-20 20:55:16'),
(1860, 'Ext JS ', 1, 0, '2016-01-20 20:55:25'),
(1861, 'Expression Engine ', 1, 0, '2016-01-20 20:55:33'),
(1862, 'Express Scribe ', 1, 0, '2016-01-20 20:55:40'),
(1863, 'Exim ', 1, 0, '2016-01-20 20:55:48'),
(1864, 'Excel VBA ', 1, 0, '2016-01-20 20:55:55'),
(1865, 'ExactTarget ', 1, 0, '2016-01-20 20:56:02'),
(1866, 'evolus pencil ', 1, 0, '2016-01-20 20:56:10'),
(1867, 'EViews ', 1, 0, '2016-01-20 20:56:18'),
(1868, 'Event planning ', 1, 0, '2016-01-20 20:56:25'),
(1869, 'Event Management ', 1, 0, '2016-01-20 20:56:33'),
(1870, 'Eucalyptus Cloud ', 1, 0, '2016-01-20 20:56:43'),
(1871, 'Etsy Administration ', 1, 0, '2016-01-20 20:56:51'),
(1872, '"Extract, Transform and Load (ETL)" ', 0, 1, '2016-01-20 20:57:01'),
(1873, 'ETABS ', 1, 0, '2016-01-20 20:57:09'),
(1874, 'Essbase ', 1, 0, '2016-01-20 20:57:16'),
(1875, 'Essay Writing ', 1, 0, '2016-01-20 20:57:23'),
(1876, 'ESL Teaching ', 1, 0, '2016-01-20 20:57:36'),
(1877, 'Erwin ', 1, 0, '2016-01-20 20:57:43'),
(1878, 'Enterprise Resource Planning (ERP) ', 1, 0, '2016-01-20 20:57:52'),
(1879, 'Erotica Writing ', 1, 0, '2016-01-20 20:58:01'),
(1880, 'Erlang ', 1, 0, '2016-01-20 20:58:08'),
(1881, 'ERDAS IMAGINE ', 1, 0, '2016-01-20 20:59:57'),
(1882, 'Environmental science ', 1, 0, '2016-01-20 21:00:05'),
(1883, 'Environmental Law ', 1, 0, '2016-01-20 21:00:23'),
(1884, 'Entrepreneurship ', 1, 0, '2016-01-20 21:00:31'),
(1885, 'Entity Framework ', 1, 0, '2016-01-20 21:00:39'),
(1886, 'ADO.NET Entity Framework ', 1, 0, '2016-01-20 21:00:48'),
(1887, 'english tutoring ', 1, 0, '2016-01-20 21:01:01'),
(1888, 'English Spelling ', 1, 0, '2016-01-20 21:01:09'),
(1889, 'English Punctuation ', 1, 0, '2016-01-20 21:01:17'),
(1890, 'English Proofreading ', 1, 0, '2016-01-20 21:01:25'),
(1891, 'English Grammar ', 1, 0, '2016-01-20 21:01:34'),
(1892, 'English ', 1, 0, '2016-01-20 21:01:45'),
(1893, 'Engineering drawing ', 1, 0, '2016-01-20 21:01:53'),
(1894, 'Engineering Design ', 1, 0, '2016-01-20 21:02:00'),
(1895, 'Energy Engineering ', 1, 0, '2016-01-20 21:02:09'),
(1896, 'Employment Law ', 1, 0, '2016-01-20 21:02:20'),
(1897, 'EMC Symmetrix ', 1, 0, '2016-01-20 21:02:35'),
(1898, 'embroidery digitization ', 1, 0, '2016-01-20 21:02:51'),
(1899, 'Embroidery ', 1, 0, '2016-01-20 21:02:59'),
(1900, 'Ember.js ', 1, 0, '2016-01-20 21:03:11'),
(1901, 'Embedded Systems ', 1, 0, '2016-01-20 21:03:18'),
(1902, 'Embedded Linux ', 1, 0, '2016-01-20 21:03:30'),
(1903, 'Embedded C ', 1, 0, '2016-01-20 21:03:41'),
(1904, 'Email Technical Support ', 1, 0, '2016-01-20 21:03:49'),
(1905, 'Email Marketing ', 1, 0, '2016-01-20 21:03:57'),
(1906, 'Email Handling ', 1, 0, '2016-01-20 21:04:06'),
(1907, 'Email Etiquette ', 1, 0, '2016-01-20 21:04:15'),
(1908, 'Email Deliverability ', 1, 0, '2016-01-20 21:04:29'),
(1909, 'Eloqua ', 1, 0, '2016-01-20 21:04:37'),
(1910, 'Elliptic Curve Cryptography (ECC) ', 1, 0, '2016-01-20 21:04:48'),
(1911, 'Elgg ', 1, 0, '2016-01-20 21:04:56'),
(1912, 'Electronics ', 1, 0, '2016-01-20 21:05:04'),
(1913, 'Electronic Workbench ', 1, 0, '2016-01-20 21:05:12'),
(1914, 'Electronic funds transfer ', 1, 0, '2016-01-20 21:05:19'),
(1915, 'Electronic Design ', 1, 0, '2016-01-20 21:05:27'),
(1916, 'Electrical engineering ', 1, 0, '2016-01-20 21:05:35'),
(1917, 'Electrical Drawing ', 1, 0, '2016-01-20 21:05:44'),
(1918, 'Elastix ', 1, 0, '2016-01-20 21:05:52'),
(1919, 'Elasticsearch ', 1, 0, '2016-01-20 21:06:00'),
(1920, 'Elance ', 1, 0, '2016-01-20 21:06:19'),
(1921, 'Ektron ', 1, 0, '2016-01-20 21:06:29'),
(1922, 'Ekiga ', 1, 0, '2016-01-20 21:06:38'),
(1923, 'Enterprise JavaBeans (EJB) ', 1, 0, '2016-01-20 21:06:47'),
(1924, 'Edufire ', 1, 0, '2016-01-20 21:06:55'),
(1925, 'Education Technology ', 1, 0, '2016-01-20 21:07:04'),
(1926, 'Edius ', 1, 0, '2016-01-20 21:08:30'),
(1927, 'Editorial Writing ', 1, 0, '2016-01-20 21:08:43'),
(1928, 'Editing ', 1, 0, '2016-01-20 21:08:52'),
(1929, 'Electronic data interchange (EDI) ', 1, 0, '2016-01-20 21:09:04'),
(1930, 'EDGE ', 1, 0, '2016-01-20 21:09:14'),
(1931, 'Economics ', 1, 0, '2016-01-20 21:09:23'),
(1932, 'Economic Analysis ', 1, 0, '2016-01-20 21:09:33'),
(1933, 'Econometrics ', 1, 0, '2016-01-20 21:09:41'),
(1934, 'Ecommerce Platform Development ', 1, 0, '2016-01-20 21:09:49'),
(1935, 'ECMAScript ', 1, 0, '2016-01-20 21:09:58'),
(1936, 'Eclipse ', 1, 0, '2016-01-20 21:10:11'),
(1937, 'eBooks ', 1, 0, '2016-01-20 21:10:19'),
(1938, 'ebook Writing ', 1, 0, '2016-01-20 21:10:26'),
(1939, 'eBook Design ', 1, 0, '2016-01-20 21:10:34'),
(1940, 'eBay Web Services ', 1, 0, '2016-01-20 21:10:42'),
(1941, 'eBay Motors ', 1, 0, '2016-01-20 21:10:51'),
(1942, 'eBay Marketing ', 1, 0, '2016-01-20 21:10:59'),
(1943, 'eBay Listing/Writing ', 1, 0, '2016-01-20 21:11:07'),
(1944, 'eBay API ', 1, 0, '2016-01-20 21:11:17'),
(1945, 'Eagle ', 1, 0, '2016-01-20 21:11:28'),
(1946, 'E4X ', 1, 0, '2016-01-20 21:11:42'),
(1947, 'ePub ', 1, 0, '2016-01-20 21:11:52'),
(1948, 'eLearning ', 1, 0, '2016-01-20 21:12:02'),
(1949, 'EHealth ', 1, 0, '2016-01-20 21:12:11'),
(1950, 'Dwolla API ', 1, 0, '2016-01-20 21:12:25'),
(1951, 'DVD Studio Pro ', 1, 0, '2016-01-20 21:12:32'),
(1952, 'dvd mastering ', 1, 0, '2016-01-20 21:12:40'),
(1953, 'Dutch ', 1, 0, '2016-01-20 21:12:49'),
(1954, 'Dundas Chart Controls ', 1, 0, '2016-01-20 21:14:17'),
(1955, 'DTS ', 1, 0, '2016-01-20 21:14:25'),
(1956, 'DSL Troubleshooting ', 1, 0, '2016-01-20 21:14:32'),
(1957, 'Drupal ', 1, 0, '2016-01-20 21:14:41'),
(1958, 'Drums ', 1, 0, '2016-01-20 21:14:50'),
(1959, 'Dropbox API ', 1, 0, '2016-01-20 21:14:58'),
(1960, 'Drop Shipping ', 1, 0, '2016-01-20 21:15:11'),
(1961, 'Drones ', 1, 0, '2016-01-20 21:15:20'),
(1962, 'Driving ', 1, 0, '2016-01-20 21:15:29'),
(1963, 'Device Driver Development ', 1, 0, '2016-01-20 21:15:41'),
(1964, 'Drawing ', 1, 0, '2016-01-20 21:16:32'),
(1965, 'Drafting ', 1, 0, '2016-01-20 21:16:42'),
(1966, 'DotNetNuke ', 1, 0, '2016-01-20 21:16:53'),
(1967, 'DOS ', 1, 0, '2016-01-20 21:17:02'),
(1968, 'Domain Migration ', 1, 0, '2016-01-20 21:17:10'),
(1969, 'Dojo Toolkit ', 1, 0, '2016-01-20 21:17:18'),
(1970, 'Document review ', 1, 0, '2016-01-20 21:17:27'),
(1971, 'Document Object Model ', 1, 0, '2016-01-20 21:17:35'),
(1972, 'Document Conversion ', 1, 0, '2016-01-20 21:17:44'),
(1973, 'Document Control ', 1, 0, '2016-01-20 21:20:50'),
(1974, 'Doctrine ORM ', 1, 0, '2016-01-20 21:20:57'),
(1975, 'Docker ', 1, 0, '2016-01-20 21:21:11'),
(1976, 'DocBook ', 1, 0, '2016-01-20 21:21:22'),
(1977, 'DNSsec ', 1, 0, '2016-01-20 21:21:30'),
(1978, 'DNS ', 1, 0, '2016-01-20 21:21:39'),
(1979, 'dmaic ', 1, 0, '2016-01-20 21:21:46'),
(1980, 'Django ', 1, 0, '2016-01-20 21:21:54'),
(1981, 'DJing ', 1, 0, '2016-01-20 21:22:01'),
(1982, 'Distributed computing ', 1, 0, '2016-01-20 21:22:08'),
(1983, 'Distance Education ', 1, 0, '2016-01-20 21:22:18'),
(1984, 'Display Ads ', 1, 0, '2016-01-20 21:22:27'),
(1985, 'Disaster recovery ', 1, 0, '2016-01-20 21:22:35'),
(1986, 'DirectX ', 1, 0, '2016-01-20 21:22:47'),
(1987, 'DirectShow ', 1, 0, '2016-01-20 21:22:54'),
(1988, 'Directory Submission ', 1, 0, '2016-01-20 21:23:02'),
(1989, 'Direct marketing ', 1, 0, '2016-01-20 21:23:10'),
(1990, 'Dinamica Ego ', 1, 0, '2016-01-20 21:23:17'),
(1991, 'Dimdim Development ', 1, 0, '2016-01-20 21:23:25'),
(1992, 'Digital Signal Processing ', 1, 0, '2016-01-20 21:23:35'),
(1993, 'Digital Sculpting ', 1, 0, '2016-01-20 21:23:43'),
(1994, 'Digital scrapbooking ', 1, 0, '2016-01-20 21:23:52'),
(1995, 'Digital Photography ', 1, 0, '2016-01-20 21:24:00'),
(1996, 'Digital painting ', 1, 0, '2016-01-20 21:24:09'),
(1997, 'Digital Ocean ', 1, 0, '2016-01-20 21:24:19'),
(1998, 'Digital Mapping ', 1, 0, '2016-01-20 21:24:30'),
(1999, 'Digital Engineering ', 1, 0, '2016-01-20 21:24:42'),
(2000, 'Digital Electronics ', 1, 0, '2016-01-20 21:24:49'),
(2001, 'Digital Access Pass ', 1, 0, '2016-01-20 21:25:10'),
(2002, 'Diffbot ', 1, 0, '2016-01-20 21:25:19'),
(2003, 'Dietetics ', 1, 0, '2016-01-20 21:25:28'),
(2004, 'Dialux ', 1, 0, '2016-01-20 21:25:37'),
(2005, 'DHTML ', 1, 0, '2016-01-20 21:25:46'),
(2006, 'DHCP ', 1, 0, '2016-01-20 21:27:10'),
(2007, 'DevOps ', 1, 0, '2016-01-20 21:27:26'),
(2008, 'DevExpress ', 1, 0, '2016-01-20 21:27:40'),
(2009, 'DevExpress Reporting ', 1, 0, '2016-01-20 21:27:49'),
(2010, 'Desktop Support ', 1, 0, '2016-01-20 21:27:57'),
(2011, 'Desktop Publishing ', 1, 0, '2016-01-20 21:28:05'),
(2012, 'Desktop Applications ', 1, 0, '2016-01-20 21:28:13'),
(2013, 'Desk.com Development ', 1, 0, '2016-01-20 21:28:23'),
(2014, 'Desk.com Administration ', 1, 0, '2016-01-20 21:28:30'),
(2015, 'Derivatives ', 1, 0, '2016-01-20 21:28:38'),
(2016, 'Dental Technology ', 1, 0, '2016-01-20 21:28:46'),
(2017, 'Demandware ', 1, 0, '2016-01-20 21:28:53'),
(2018, 'Delphi ', 1, 0, '2016-01-20 21:29:01'),
(2019, 'DELFTship ', 1, 0, '2016-01-20 21:29:10'),
(2020, 'Deja Vu ', 1, 0, '2016-01-20 21:29:20'),
(2021, 'Defect Tracking ', 1, 0, '2016-01-20 21:29:28'),
(2022, 'Debian OS ', 1, 0, '2016-01-20 21:29:37'),
(2023, 'DCOM ', 1, 0, '2016-01-20 21:29:45'),
(2024, 'DBMS ', 1, 0, '2016-01-20 21:29:52'),
(2025, 'dBase Programming ', 1, 0, '2016-01-20 21:30:04'),
(2026, 'dBase Administration ', 1, 0, '2016-01-20 21:30:11'),
(2027, 'IBM InfoSphere DataStage ', 1, 0, '2016-01-20 21:30:19'),
(2028, 'DataLife Engine ', 1, 0, '2016-01-20 21:30:27'),
(2029, 'Database testing ', 1, 0, '2016-01-20 21:30:35'),
(2030, 'database programming ', 1, 0, '2016-01-20 21:30:43'),
(2031, 'Database Modeling ', 1, 0, '2016-01-20 21:30:50'),
(2032, 'database management ', 1, 0, '2016-01-20 21:31:00'),
(2033, 'Database design ', 1, 0, '2016-01-20 21:31:12'),
(2034, 'Database Cataloguing ', 1, 0, '2016-01-20 21:31:23'),
(2035, 'Database Caching ', 1, 0, '2016-01-20 21:31:33'),
(2036, 'Database Administration ', 1, 0, '2016-01-20 21:31:41'),
(2037, 'Data Warehousing ', 1, 0, '2016-01-20 21:32:02'),
(2038, 'Data Visualization ', 1, 0, '2016-01-20 21:32:10'),
(2039, 'Data Sufficiency ', 1, 0, '2016-01-20 21:32:19'),
(2040, 'Data Structures ', 1, 0, '2016-01-20 21:32:27'),
(2041, 'Data Sheet Writing ', 1, 0, '2016-01-20 21:32:35'),
(2042, 'Data scraping ', 1, 0, '2016-01-20 21:32:44'),
(2043, 'Data Science ', 1, 0, '2016-01-20 21:32:52'),
(2044, 'Data Recovery ', 1, 0, '2016-01-20 21:33:01'),
(2045, 'Data Protection ', 1, 0, '2016-01-20 21:33:12'),
(2046, 'Data Modeling ', 1, 0, '2016-01-20 21:33:21'),
(2047, 'Data mining ', 1, 0, '2016-01-20 21:33:29'),
(2048, 'Data Logistics ', 1, 0, '2016-01-20 21:33:37'),
(2049, 'Data Interpretation ', 1, 0, '2016-01-20 21:33:45'),
(2050, 'Data Ingestion ', 1, 0, '2016-01-20 21:33:58'),
(2051, 'Data Entry ', 1, 0, '2016-01-20 21:34:06'),
(2052, 'Data Engineering ', 1, 0, '2016-01-20 21:34:14'),
(2053, 'Data Encoding ', 1, 0, '2016-01-20 21:34:22'),
(2054, 'Data Cleansing ', 1, 0, '2016-01-20 21:34:30'),
(2055, 'Data Center Operations ', 1, 0, '2016-01-20 21:36:33'),
(2056, 'Data Backup ', 1, 0, '2016-01-20 21:36:42'),
(2057, 'Data Analytics ', 1, 0, '2016-01-20 21:36:51'),
(2058, 'DART ', 1, 0, '2016-01-20 21:36:59'),
(2059, 'Danish ', 1, 0, '2016-01-20 21:37:40'),
(2060, 'Dancing ', 1, 0, '2016-01-20 21:37:48'),
(2061, 'DaVinci Resolve ', 1, 0, '2016-01-20 21:37:55'),
(2062, 'd3.js ', 1, 0, '2016-01-20 21:38:04'),
(2063, 'D Programming Language ', 1, 0, '2016-01-20 21:38:16'),
(2064, 'Czech ', 1, 0, '2016-01-20 21:38:23'),
(2065, 'CVS ', 1, 0, '2016-01-20 21:38:31'),
(2066, 'Customer support ', 1, 0, '2016-01-20 21:38:39'),
(2067, 'Customer service ', 1, 0, '2016-01-20 21:38:47'),
(2068, 'Custom CMS ', 1, 0, '2016-01-20 21:38:55'),
(2069, 'Curriculum Development ', 1, 0, '2016-01-20 21:39:02'),
(2070, 'CURL ', 1, 0, '2016-01-20 21:39:10'),
(2071, 'CUDA ', 1, 0, '2016-01-20 21:39:19'),
(2072, 'Cucumber ', 1, 0, '2016-01-20 21:39:26'),
(2073, 'Cubecart ', 1, 0, '2016-01-20 21:39:37'),
(2074, 'CSU/DSU ', 1, 0, '2016-01-20 21:39:46'),
(2075, 'CSS3 ', 1, 0, '2016-01-20 21:39:53'),
(2076, 'CSS', 1, 0, '2016-01-20 21:40:02'),
(2077, 'CS-Cart ', 1, 0, '2016-01-20 21:40:23'),
(2078, 'SAP Crystal Reports ', 1, 0, '2016-01-20 21:41:09'),
(2079, 'Cryptography ', 1, 0, '2016-01-20 21:42:11'),
(2080, 'Crowdfunding ', 1, 0, '2016-01-20 21:43:34'),
(2081, 'Croatian ', 1, 0, '2016-01-20 21:43:42'),
(2082, 'CRM ', 1, 0, '2016-01-20 21:43:54'),
(2083, 'Criminal Law ', 1, 0, '2016-01-20 21:44:01'),
(2084, 'CRE Loaded ', 1, 0, '2016-01-20 21:44:09'),
(2085, 'Creative writing ', 1, 0, '2016-01-20 21:44:17'),
(2086, 'Creative & Talent ', 1, 0, '2016-01-20 21:44:28'),
(2087, 'Web Crawling ', 1, 0, '2016-01-20 21:44:36'),
(2088, 'CPU Design ', 1, 0, '2016-01-20 21:44:46'),
(2089, 'CppUnit ', 1, 0, '2016-01-20 21:44:55'),
(2090, 'CPanel ', 1, 0, '2016-01-20 21:45:02'),
(2091, 'Covers & Packaging ', 1, 0, '2016-01-20 21:45:10'),
(2092, 'Cover Letter Writing ', 1, 0, '2016-01-20 21:45:19'),
(2093, 'Cover Design ', 1, 0, '2016-01-20 21:45:30'),
(2094, 'Counseling Psychology ', 1, 0, '2016-01-20 21:45:37'),
(2095, 'CouchDB ', 1, 0, '2016-01-20 21:45:44'),
(2096, 'Cost accounting ', 1, 0, '2016-01-20 21:45:56'),
(2097, 'Cosmos OS ', 1, 0, '2016-01-20 21:46:03'),
(2098, 'COSMO-RS Chemical Engineering ', 1, 0, '2016-01-20 21:46:11'),
(2099, 'Corporate Taxes ', 1, 0, '2016-01-20 21:46:18'),
(2100, 'Corporate Strategy ', 1, 0, '2016-01-20 21:46:26'),
(2101, 'Corporate Law ', 1, 0, '2016-01-20 21:46:40'),
(2102, 'Corporate Finance ', 1, 0, '2016-01-20 21:46:47'),
(2103, 'Corporate Brand Identity ', 1, 0, '2016-01-20 21:46:55'),
(2104, 'Corona ', 1, 0, '2016-01-20 21:47:06'),
(2105, 'Corel Ventura ', 1, 0, '2016-01-20 21:47:16'),
(2106, 'Corel Painter ', 1, 0, '2016-01-20 21:47:27'),
(2107, 'Corel Paint Shop Pro ', 1, 0, '2016-01-20 21:47:35'),
(2108, 'CorelDRAW ', 1, 0, '2016-01-20 21:47:44'),
(2109, 'Core Java ', 1, 0, '2016-01-20 21:47:57'),
(2110, 'CORBA ', 1, 0, '2016-01-20 21:48:04'),
(2111, 'Copywriting ', 1, 0, '2016-01-20 21:48:13'),
(2112, 'Copyright ', 1, 0, '2016-01-20 21:48:20'),
(2113, 'Copy editing ', 1, 0, '2016-01-20 21:48:27'),
(2114, 'Cooking ', 1, 0, '2016-01-20 21:48:35'),
(2115, 'Conversion Rate Optimization ', 1, 0, '2016-01-20 21:49:42'),
(2116, 'Contract Manufacturing ', 1, 0, '2016-01-20 21:49:49'),
(2117, 'Contract Law ', 1, 0, '2016-01-20 21:49:57'),
(2118, 'Contract Drafting ', 1, 0, '2016-01-20 21:50:04'),
(2119, 'Continuous Integration ', 1, 0, '2016-01-20 21:50:11'),
(2120, 'Content Writing ', 1, 0, '2016-01-20 21:50:20'),
(2121, 'Content Moderation ', 1, 0, '2016-01-20 21:50:33'),
(2122, 'Content Management System ', 1, 0, '2016-01-20 21:50:42'),
(2123, 'Contao CMS ', 1, 0, '2016-01-20 21:50:54'),
(2124, 'Consumer Protection ', 1, 0, '2016-01-20 21:51:01'),
(2125, 'Construction Monitoring ', 1, 0, '2016-01-20 21:51:10'),
(2126, 'Construction ', 1, 0, '2016-01-20 21:51:20'),
(2127, 'Constant Contact ', 1, 0, '2016-01-20 21:51:28'),
(2128, 'Conflict Resolution ', 1, 0, '2016-01-20 21:51:36'),
(2129, 'Concrete5 CMS ', 1, 0, '2016-01-20 21:51:47'),
(2130, 'ConceptShare Development ', 1, 0, '2016-01-20 21:51:57'),
(2131, 'Concept Software InPage ', 1, 0, '2016-01-20 21:52:05'),
(2132, 'Concept Design ', 1, 0, '2016-01-20 21:52:14'),
(2133, 'Concept Artistry ', 1, 0, '2016-01-20 21:52:23'),
(2134, 'COMSOL Multiphysics ', 1, 0, '2016-01-20 21:52:30'),
(2135, 'comsat ', 1, 0, '2016-01-20 21:52:38'),
(2136, 'Computer vision ', 1, 0, '2016-01-20 21:52:46'),
(2137, 'Computer Skills ', 1, 0, '2016-01-20 21:52:55'),
(2138, 'Computer Repair ', 1, 0, '2016-01-20 21:53:02'),
(2139, 'Computer Networking ', 1, 0, '2016-01-20 21:53:10'),
(2140, 'Comptuer Maintenance ', 1, 0, '2016-01-20 21:54:11'),
(2141, 'Computer Hardware Installation ', 1, 0, '2016-01-20 21:54:18'),
(2142, 'Computer Hardware Design ', 1, 0, '2016-01-20 21:54:25'),
(2143, 'Computer Graphics ', 1, 0, '2016-01-20 21:54:34'),
(2144, 'Computer Engineering ', 1, 0, '2016-01-20 21:54:42'),
(2145, 'Computer Assembly ', 1, 0, '2016-01-20 21:54:51'),
(2146, 'Computer Aided Manufacturing (CAM) ', 1, 0, '2016-01-20 21:55:00'),
(2147, 'Computational Linguistics ', 1, 0, '2016-01-20 21:55:08'),
(2148, 'Computational Fluid Dynamics (CFD) ', 1, 0, '2016-01-20 21:55:20'),
(2149, 'Compositing ', 1, 0, '2016-01-20 21:55:27'),
(2150, 'Compliance ', 1, 0, '2016-01-20 21:55:36'),
(2151, 'Complaint Management ', 1, 0, '2016-01-20 21:55:43'),
(2152, 'Compiler ', 1, 0, '2016-01-20 21:55:51'),
(2153, 'Compensation ', 1, 0, '2016-01-20 21:56:05'),
(2154, 'Communications ', 1, 0, '2016-01-20 21:56:14'),
(2155, 'Common Language Runtime ', 1, 0, '2016-01-20 21:56:33'),
(2156, 'Commercials ', 1, 0, '2016-01-20 21:56:41'),
(2157, 'Commercial Lending ', 1, 0, '2016-01-20 21:56:56'),
(2158, 'Comic Writing ', 1, 0, '2016-01-20 21:57:06'),
(2159, 'Comic Art ', 1, 0, '2016-01-20 21:57:16'),
(2160, 'Comet ', 1, 0, '2016-01-20 21:57:26'),
(2161, 'Comedy Writing ', 1, 0, '2016-01-20 21:57:44'),
(2162, 'Component Object Model (Microsoft COM) ', 1, 0, '2016-01-20 21:58:01'),
(2163, 'Collection Agencies ', 1, 0, '2016-01-20 21:58:08'),
(2164, 'Collaborative filtering ', 1, 0, '2016-01-20 21:58:16'),
(2165, 'CollabNet TeamForge ', 1, 0, '2016-01-20 21:58:24'),
(2166, 'ColdFusion ', 1, 0, '2016-01-20 21:58:36'),
(2167, 'Cold calling ', 1, 0, '2016-01-20 21:58:44'),
(2168, 'Cognos ', 1, 0, '2016-01-20 21:58:51'),
(2169, 'CoffeeScript ', 1, 0, '2016-01-20 21:58:58'),
(2170, 'CodeWarrior ', 1, 0, '2016-01-20 21:59:05'),
(2171, 'CoDeSys ', 1, 0, '2016-01-20 21:59:13'),
(2172, 'CodeIgniter ', 1, 0, '2016-01-20 21:59:20'),
(2173, 'Code Refactoring ', 1, 0, '2016-01-20 21:59:32'),
(2174, 'Cocos2d ', 1, 0, '2016-01-20 21:59:41'),
(2175, 'Cocoa Touch ', 1, 0, '2016-01-20 21:59:49'),
(2176, 'Cocoa ', 1, 0, '2016-01-20 21:59:58'),
(2177, 'COBOL ', 1, 0, '2016-01-20 22:00:07'),
(2178, 'CNC Programming ', 1, 0, '2016-01-20 22:00:14'),
(2179, 'CMS Development ', 1, 0, '2016-01-20 22:00:22'),
(2180, 'Cluster Computing ', 1, 0, '2016-01-20 22:00:29'),
(2181, 'CloudForge ', 1, 0, '2016-01-20 22:00:37'),
(2182, 'Cloudera ', 1, 0, '2016-01-20 22:00:44'),
(2183, 'Cloud Security Framework ', 1, 0, '2016-01-20 22:00:52'),
(2184, 'Clojure ', 1, 0, '2016-01-20 22:00:59'),
(2185, 'Clipping Path ', 1, 0, '2016-01-20 22:01:06'),
(2186, 'Climate Sciences ', 1, 0, '2016-01-20 22:01:13'),
(2187, 'ClickBank', 1, 0, '2016-01-20 22:03:00'),
(2188, 'clerical skills ', 1, 0, '2016-01-20 22:03:13'),
(2189, 'ClearQuest ', 1, 0, '2016-01-20 22:03:21'),
(2190, 'Clear Books ', 1, 0, '2016-01-20 22:03:28'),
(2191, 'Clean Technology ', 1, 0, '2016-01-20 22:03:37'),
(2192, 'Classifieds Posting ', 1, 0, '2016-01-20 22:03:44'),
(2193, 'ClamAV ', 1, 0, '2016-01-20 22:03:51'),
(2194, 'Civil Law ', 1, 0, '2016-01-20 22:03:58'),
(2195, 'Civil Engineering ', 1, 0, '2016-01-20 22:04:06'),
(2196, 'CiviCRM ', 1, 0, '2016-01-20 22:04:14'),
(2197, 'Citrix XenServer ', 1, 0, '2016-01-20 22:04:21'),
(2198, 'Citrix NetScaler ', 1, 0, '2016-01-20 22:04:32'),
(2199, 'Cisco CallManager ', 1, 0, '2016-01-20 22:04:39'),
(2200, 'cisco routers ', 1, 0, '2016-01-20 22:06:03'),
(2201, 'Cisco PIX ', 1, 0, '2016-01-20 22:06:11'),
(2202, 'Cisco IOS ', 1, 0, '2016-01-20 22:06:18'),
(2203, 'Cisco Certified Network Associate (CCNA) ', 1, 0, '2016-01-20 22:06:25'),
(2204, 'Cisco Certified Internetwork Expert (CCIE) ', 1, 0, '2016-01-20 22:06:37'),
(2205, 'Cisco Certified Entry Networking Technician (CCENT) ', 1, 0, '2016-01-20 22:06:46'),
(2206, 'Cisco Certified Design Professional (CCDP) ', 1, 0, '2016-01-20 22:07:03'),
(2207, 'Cisco Certified Design Expert (CCDE) ', 1, 0, '2016-01-20 22:07:14'),
(2208, 'Cisco Certified Design Associate (CCDA) ', 1, 0, '2016-01-20 22:07:28'),
(2209, 'Cisco ASA ', 1, 0, '2016-01-20 22:07:39'),
(2210, 'Circuit Design ', 1, 0, '2016-01-20 22:07:46'),
(2211, 'Cinematography ', 1, 0, '2016-01-20 22:07:56'),
(2212, 'Customer Information Control System (CICS) ', 1, 0, '2016-01-20 22:08:04'),
(2213, 'Chrome OS ', 1, 0, '2016-01-20 22:08:11'),
(2214, 'Chrome Extension ', 1, 0, '2016-01-20 22:08:19'),
(2215, 'Chroma key ', 1, 0, '2016-01-20 22:08:26'),
(2216, 'Christian theology ', 1, 0, '2016-01-20 22:08:35'),
(2217, 'Chinese ', 1, 0, '2016-01-20 22:08:43'),
(2218, 'Childrens Writing ', 1, 0, '2016-01-20 22:09:42'),
(2219, 'Child Counseling ', 1, 0, '2016-01-20 22:10:02'),
(2220, 'Chicago Manual of Style ', 1, 0, '2016-01-20 22:10:09'),
(2221, 'Chemistry ', 1, 0, '2016-01-20 22:10:19'),
(2222, 'Chemical Engineering ', 1, 0, '2016-01-20 22:10:29'),
(2223, 'Check Point ', 1, 0, '2016-01-20 22:10:40'),
(2224, 'chat support ', 1, 0, '2016-01-20 22:10:50'),
(2225, 'Chart.js ', 1, 0, '2016-01-20 22:10:59'),
(2226, 'Character Design ', 1, 0, '2016-01-20 22:11:08'),
(2227, 'Chaos Group V-Ray ', 1, 0, '2016-01-20 22:11:15'),
(2228, 'Change Management ', 1, 0, '2016-01-20 22:11:23'),
(2229, 'CGI ', 1, 0, '2016-01-20 22:11:32'),
(2230, 'CG Artwork ', 1, 0, '2016-01-20 22:11:41'),
(2231, 'Certified Public Accountant (CPA) ', 1, 0, '2016-01-20 22:11:51'),
(2232, 'Certified Information Systems Security Professional (CISSP) ', 1, 0, '2016-01-20 22:11:59'),
(2233, 'Centreon ', 1, 0, '2016-01-20 22:12:07'),
(2234, 'Central Reservation Systems ', 1, 0, '2016-01-20 22:12:14'),
(2235, 'Central Desktop Development ', 1, 0, '2016-01-20 22:12:27'),
(2236, 'CentOS ', 1, 0, '2016-01-20 22:12:34'),
(2237, 'Violoncello ', 1, 0, '2016-01-20 22:12:42'),
(2238, 'Celemony Melodyne ', 1, 0, '2016-01-20 22:12:50'),
(2239, 'CDMA ', 1, 0, '2016-01-20 22:12:57'),
(2240, 'Cisco Certified Network Professional (CCNP) ', 1, 0, '2016-01-20 22:13:04'),
(2241, 'Cavium OCTEON Plus MIPS64 ', 1, 0, '2016-01-20 22:13:12'),
(2242, 'Cavium Octeon Fusion ', 1, 0, '2016-01-20 22:13:20'),
(2243, 'CATIA ', 1, 0, '2016-01-20 22:13:31'),
(2244, 'Catholic Theology ', 1, 0, '2016-01-20 22:13:52'),
(2245, 'Catch Phrases ', 1, 0, '2016-01-20 22:14:00'),
(2246, 'Catalan ', 1, 0, '2016-01-20 22:14:10'),
(2247, 'Apache Cassandra ', 1, 0, '2016-01-20 22:14:19'),
(2248, 'Caspio Programming ', 1, 0, '2016-01-20 22:14:32'),
(2249, 'Caspio Administration ', 1, 0, '2016-01-20 22:14:39'),
(2250, 'Cartooning ', 1, 0, '2016-01-20 22:14:47'),
(2251, 'Cartography & Maps ', 1, 0, '2016-01-20 22:14:54'),
(2252, 'Caricature Drawing ', 1, 0, '2016-01-20 22:15:01'),
(2253, 'Carbide.c++ ', 1, 0, '2016-01-20 22:15:09'),
(2254, 'Capture NX2 ', 1, 0, '2016-01-20 22:15:16'),
(2255, 'Capistrano ', 1, 0, '2016-01-20 22:15:23'),
(2256, 'Cantonese ', 1, 0, '2016-01-20 22:15:31'),
(2257, 'Camtasia ', 1, 0, '2016-01-20 22:15:38'),
(2258, 'Calligraphy ', 1, 0, '2016-01-20 22:15:45'),
(2259, 'Call Handling ', 1, 0, '2016-01-20 22:15:52'),
(2260, 'Call Center Management ', 1, 0, '2016-01-20 22:15:59'),
(2261, 'Calendar Management ', 1, 0, '2016-01-20 22:16:09'),
(2262, 'Calculus ', 1, 0, '2016-01-20 22:16:18'),
(2263, 'Cakewalk Sonar ', 1, 0, '2016-01-20 22:16:26'),
(2264, 'CakePHP ', 1, 0, '2016-01-20 22:16:34'),
(2265, 'Cairngorm ', 1, 0, '2016-01-20 22:16:43'),
(2266, 'Cadence Platform ', 1, 0, '2016-01-20 22:16:52'),
(2267, 'Computer-Aided Design ', 1, 0, '2016-01-20 22:17:00'),
(2268, 'Cache Management ', 1, 0, '2016-01-20 22:17:08'),
(2269, 'C Shell ', 1, 0, '2016-01-20 22:17:17'),
(2270, 'C++ ', 1, 0, '2016-01-20 22:17:26'),
(2271, 'C# ', 1, 0, '2016-01-20 22:17:35'),
(2272, 'C ', 1, 0, '2016-01-20 22:17:45'),
(2273, 'Business Writing ', 1, 0, '2016-01-21 05:27:12'),
(2274, 'Business valuation ', 1, 0, '2016-01-21 05:27:21'),
(2275, 'Business Scenario Development ', 1, 0, '2016-01-21 05:27:28'),
(2276, 'Business Proposal Writing ', 1, 0, '2016-01-21 05:27:35'),
(2277, 'Business Process Reengineering ', 1, 0, '2016-01-21 05:27:44'),
(2278, 'Business Process Modeling ', 1, 0, '2016-01-21 05:27:55'),
(2279, 'Business Planning ', 1, 0, '2016-01-21 05:28:04'),
(2280, 'Business Modeling ', 1, 0, '2016-01-21 05:28:12'),
(2281, 'Business Mathematics ', 1, 0, '2016-01-21 05:28:21'),
(2282, 'Business Management ', 1, 0, '2016-01-21 05:28:30'),
(2283, 'Business IT Alignment ', 1, 0, '2016-01-21 05:28:38'),
(2284, 'Business intelligence ', 1, 0, '2016-01-21 05:28:47'),
(2285, 'Business Development ', 1, 0, '2016-01-21 05:29:00'),
(2286, 'Business Continuity Planning ', 1, 0, '2016-01-21 05:29:09'),
(2287, 'Business Coaching ', 1, 0, '2016-01-21 05:29:19'),
(2288, 'Business Card Design ', 1, 0, '2016-01-21 05:29:28'),
(2289, 'Business Analysis ', 1, 0, '2016-01-21 05:29:36'),
(2290, 'Bulk Marketing ', 1, 0, '2016-01-21 05:29:45'),
(2291, 'Bulgarian ', 1, 0, '2016-01-21 05:29:57'),
(2292, 'Buildium ', 1, 0, '2016-01-21 05:30:07'),
(2293, 'Building Regulations ', 1, 0, '2016-01-21 05:30:18'),
(2294, 'Building Estimation ', 1, 0, '2016-01-21 05:30:27'),
(2295, 'Bugzilla ', 1, 0, '2016-01-21 05:30:35'),
(2296, 'Budgeting & Forecasting ', 1, 0, '2016-01-21 05:30:44'),
(2297, 'BuddyPress ', 1, 0, '2016-01-21 05:30:59'),
(2298, 'Brochure Design ', 1, 0, '2016-01-21 05:31:06'),
(2299, 'BroadVision QuickSilver ', 1, 0, '2016-01-21 05:31:14'),
(2300, 'BroadVision ClearVale ', 1, 0, '2016-01-21 05:31:23'),
(2301, 'Broadcast Engineering ', 1, 0, '2016-01-21 05:31:34'),
(2302, 'Broadcast Advertising ', 1, 0, '2016-01-21 05:32:23'),
(2303, 'BREW ', 1, 0, '2016-01-21 05:32:35'),
(2304, 'Brand Ambassador ', 1, 0, '2016-01-21 05:32:42'),
(2305, 'Brand Management ', 1, 0, '2016-01-21 05:32:51'),
(2306, 'Brand Licensing ', 1, 0, '2016-01-21 05:32:59'),
(2307, 'Brand Consulting ', 1, 0, '2016-01-21 05:33:06'),
(2308, 'BPO IT services ', 1, 0, '2016-01-21 05:33:13'),
(2309, 'BPO Call Center ', 1, 0, '2016-01-21 05:33:21'),
(2310, 'Business Process Execution Language (BPEL) ', 1, 0, '2016-01-21 05:33:30'),
(2311, 'BPCS ', 1, 0, '2016-01-21 05:33:49'),
(2312, 'Box2D ', 1, 0, '2016-01-21 05:33:57'),
(2313, 'Box.net Development ', 1, 0, '2016-01-21 05:34:05'),
(2314, 'Bosnian ', 1, 0, '2016-01-21 05:34:13'),
(2315, 'Borland SilkTest ', 1, 0, '2016-01-21 05:34:26'),
(2316, 'Borland C++ Builder ', 1, 0, '2016-01-21 05:34:34'),
(2317, 'Bootstrap ', 1, 0, '2016-01-21 05:34:42'),
(2318, 'Boost ', 1, 0, '2016-01-21 05:34:51'),
(2319, 'BoonEx Dolphin ', 1, 0, '2016-01-21 05:35:03'),
(2320, 'Bookkeeping ', 1, 0, '2016-01-21 05:35:11'),
(2321, 'Book Writing ', 1, 0, '2016-01-21 05:35:24'),
(2322, 'Book Cover Design ', 1, 0, '2016-01-21 05:35:37'),
(2323, 'BuildMyRank Writing ', 1, 0, '2016-01-21 05:35:47'),
(2324, 'Bluetooth ', 1, 0, '2016-01-21 05:36:00'),
(2325, 'blue.box ', 1, 0, '2016-01-21 05:36:08'),
(2326, 'Blog Writing ', 1, 0, '2016-01-21 05:36:17'),
(2327, 'Blog Development ', 1, 0, '2016-01-21 05:36:26'),
(2328, 'Blog Commenting ', 1, 0, '2016-01-21 05:36:35'),
(2329, 'Blitz BASIC ', 1, 0, '2016-01-21 05:36:44'),
(2330, 'Blender3D ', 1, 0, '2016-01-21 05:36:51'),
(2331, 'BlazeDS ', 1, 0, '2016-01-21 05:36:59'),
(2332, 'Blackboard ', 1, 0, '2016-01-21 05:37:08'),
(2333, 'BlackBerry JDE ', 1, 0, '2016-01-21 05:37:16'),
(2334, 'Blackberry app development ', 1, 0, '2016-01-21 05:37:24'),
(2335, 'Black Box Testing ', 1, 0, '2016-01-21 05:37:32'),
(2336, 'BizTalk Server ', 1, 0, '2016-01-21 05:37:45'),
(2337, 'BitRock Installbuilder ', 1, 0, '2016-01-21 05:37:54'),
(2338, 'Bitrix Intranet ', 1, 0, '2016-01-21 05:38:02'),
(2339, 'Bitrix ', 1, 0, '2016-01-21 05:38:11'),
(2340, 'Bitcoin ', 1, 0, '2016-01-21 05:38:20'),
(2341, 'BIRT ', 1, 0, '2016-01-21 05:38:30'),
(2342, 'Biotechnology ', 1, 0, '2016-01-21 05:38:39'),
(2343, 'Biostatistics ', 1, 0, '2016-01-21 05:38:47'),
(2344, 'Biology ', 1, 0, '2016-01-21 05:38:57'),
(2345, 'Biography Writing ', 1, 0, '2016-01-21 05:39:05'),
(2346, 'Bioinformatics ', 1, 0, '2016-01-21 05:39:13'),
(2347, 'Bing Ads ', 1, 0, '2016-01-21 05:39:40'),
(2348, 'BigCommerce ', 1, 0, '2016-01-21 05:39:48'),
(2349, 'Big Data ', 1, 0, '2016-01-21 05:39:55'),
(2350, 'Border Gateway Protocol ', 1, 0, '2016-01-21 05:40:02'),
(2351, 'BGL Simple Fund ', 1, 0, '2016-01-21 05:40:10'),
(2352, 'Betfair ', 1, 0, '2016-01-21 05:40:20'),
(2353, 'BeOS ', 1, 0, '2016-01-21 05:40:28'),
(2354, 'Bentley Microstation ', 1, 0, '2016-01-21 05:40:36'),
(2355, 'Bengali ', 1, 0, '2016-01-21 05:41:20'),
(2356, 'Benefits Law ', 1, 0, '2016-01-21 05:41:34'),
(2357, 'Belle Nuit Subtitler ', 1, 0, '2016-01-21 05:41:42'),
(2358, 'Behavioral Event Interviewing ', 1, 0, '2016-01-21 05:41:49'),
(2359, 'Behavior Driven Development (BDD) ', 1, 0, '2016-01-21 05:42:00'),
(2360, 'bbPress ', 1, 0, '2016-01-21 05:42:13'),
(2361, 'Bassoon ', 1, 0, '2016-01-21 05:42:21'),
(2362, 'Basque ', 1, 0, '2016-01-21 05:42:29'),
(2363, 'Basic ', 1, 0, '2016-01-21 05:42:39'),
(2364, 'Bash shell scripting ', 1, 0, '2016-01-21 05:42:49'),
(2365, 'Bash ', 1, 0, '2016-01-21 05:42:57'),
(2366, 'Basecamp ', 1, 0, '2016-01-21 05:43:07'),
(2367, 'Business Activity Monitoring ', 1, 0, '2016-01-21 05:43:15'),
(2368, 'Bartending ', 1, 0, '2016-01-21 05:43:29'),
(2369, 'Banner Ad Design ', 1, 0, '2016-01-21 05:43:33'),
(2370, 'Banner Ads ', 1, 0, '2016-01-21 05:43:52'),
(2371, 'Bankruptcy ', 1, 0, '2016-01-21 05:43:59'),
(2372, 'Bank Reconciliation ', 1, 0, '2016-01-21 05:44:06'),
(2373, 'Balsamiq ', 1, 0, '2016-01-21 05:44:15'),
(2374, 'Baking ', 1, 0, '2016-01-21 05:44:22'),
(2375, 'Bada ', 1, 0, '2016-01-21 05:44:33'),
(2376, 'Bacula ', 1, 0, '2016-01-21 05:44:42'),
(2377, 'Backbone.js ', 1, 0, '2016-01-21 05:44:51'),
(2378, 'B2B Marketing ', 1, 0, '2016-01-21 05:45:18'),
(2379, 'Axure RP ', 1, 0, '2016-01-21 06:09:49'),
(2380, 'Axiom Productivity Tools ', 1, 0, '2016-01-21 06:09:55'),
(2381, 'Axiom MicroStation Productivity Toolkit ', 1, 0, '2016-01-21 06:10:02'),
(2382, 'Axiis ', 1, 0, '2016-01-21 06:10:09'),
(2383, 'Axapta ', 1, 0, '2016-01-21 06:10:22'),
(2384, 'Abstract Window Toolkit (AWT) ', 1, 0, '2016-01-21 06:10:31'),
(2385, 'Awk ', 1, 0, '2016-01-21 06:10:39'),
(2386, 'aWeber ', 1, 0, '2016-01-21 06:10:50'),
(2387, 'Away3D ', 1, 0, '2016-01-21 06:10:57'),
(2388, 'Avid Pro Tools ', 1, 0, '2016-01-21 06:11:06'),
(2389, 'Avid ', 1, 0, '2016-01-21 06:11:14'),
(2390, 'Aviation ', 1, 0, '2016-01-21 06:11:22'),
(2391, 'AVEVA PDMS ', 1, 0, '2016-01-21 06:11:29'),
(2392, 'Avaya ', 1, 0, '2016-01-21 06:11:36'),
(2393, 'Avactis ', 1, 0, '2016-01-21 06:11:52'),
(2394, 'Automotive Engineering ', 1, 0, '2016-01-21 06:11:59'),
(2395, 'Automation ', 1, 0, '2016-01-21 06:12:07'),
(2396, 'Automated Testing ', 1, 0, '2016-01-21 06:12:18'),
(2397, 'Automated Call Distribution ', 1, 0, '2016-01-21 06:12:25'),
(2398, 'AutoLISP ', 1, 0, '2016-01-21 06:12:32'),
(2399, 'Autoit ', 1, 0, '2016-01-21 06:12:39'),
(2400, 'AutoHotKey ', 1, 0, '2016-01-21 06:12:46'),
(2401, 'Autodys AcceliCAD ', 1, 0, '2016-01-21 06:12:53'),
(2402, 'Autodesk Softimage ', 1, 0, '2016-01-21 06:13:05'),
(2403, 'Autodesk Sketchbook Pro ', 1, 0, '2016-01-21 06:13:12'),
(2404, 'Autodesk Revit ', 1, 0, '2016-01-21 06:13:21'),
(2405, 'Autodesk Navisworks ', 1, 0, '2016-01-21 06:13:29'),
(2406, 'Autodesk Mudbox ', 1, 0, '2016-01-21 06:13:36'),
(2407, 'Autodesk Maya ', 1, 0, '2016-01-21 06:13:47'),
(2408, 'Autodesk Inventor ', 1, 0, '2016-01-21 06:13:56'),
(2409, 'Autodesk Autocad Civil3D ', 1, 0, '2016-01-21 06:14:04'),
(2410, 'Autodesk 3D Studio Max ', 1, 0, '2016-01-21 06:14:13'),
(2411, 'Autodesk ', 1, 0, '2016-01-21 06:14:51'),
(2412, 'AutoCAD ', 1, 0, '2016-01-21 06:15:01'),
(2413, 'Authorize.Net Development ', 1, 0, '2016-01-21 06:15:12'),
(2414, 'Author-It ', 1, 0, '2016-01-21 06:15:21'),
(2415, 'Augmented Reality ', 1, 0, '2016-01-21 06:15:29'),
(2416, 'Autodesk Architecture ', 1, 0, '2016-01-21 06:15:37'),
(2417, 'Auditing ', 1, 0, '2016-01-21 06:15:46'),
(2418, 'Audio Restoration ', 1, 0, '2016-01-21 06:15:52'),
(2419, 'Audio Production ', 1, 0, '2016-01-21 06:16:00'),
(2420, 'Audio Postediting ', 1, 0, '2016-01-21 06:16:11'),
(2421, 'Audio Post Production ', 1, 0, '2016-01-21 06:16:18'),
(2422, 'Audio Mixing ', 1, 0, '2016-01-21 06:16:26'),
(2423, 'Audio Mastering ', 1, 0, '2016-01-21 06:16:33'),
(2424, 'Audio Engineering ', 1, 0, '2016-01-21 06:16:40'),
(2425, 'Audio Editing ', 1, 0, '2016-01-21 06:16:49'),
(2426, 'Audio Design ', 1, 0, '2016-01-21 06:17:00'),
(2427, 'Audacity ', 1, 0, '2016-01-21 06:17:07'),
(2428, 'Auctiva ', 1, 0, '2016-01-21 06:17:15'),
(2429, 'Atom ', 1, 0, '2016-01-21 06:17:23'),
(2430, 'Atmel AVR ', 1, 0, '2016-01-21 06:17:32'),
(2431, 'ATM Implementation ', 1, 0, '2016-01-21 06:17:39'),
(2432, 'Atlassian JIRA ', 1, 0, '2016-01-21 06:17:46'),
(2433, 'Atlassian GreenHopper ', 1, 0, '2016-01-21 06:18:05'),
(2434, 'Atlassian Confluence ', 1, 0, '2016-01-21 06:18:13'),
(2435, 'Atlas ', 1, 0, '2016-01-21 06:18:21'),
(2436, 'ATL ', 1, 0, '2016-01-21 06:18:34'),
(2437, 'Asynchronous I/O ', 1, 0, '2016-01-21 06:18:43'),
(2438, 'Astrophysics ', 1, 0, '2016-01-21 06:18:54'),
(2439, 'Astrology ', 1, 0, '2016-01-21 06:19:02'),
(2440, 'Asterisk ', 1, 0, '2016-01-21 06:19:10'),
(2441, 'Assembly Language ', 1, 0, '2016-01-21 06:19:19'),
(2442, 'Assembla ', 1, 0, '2016-01-21 06:19:27'),
(2443, 'Aspen HYSYS ', 1, 0, '2016-01-21 06:19:33'),
(2444, 'AspectJS ', 1, 0, '2016-01-21 06:19:41'),
(2445, 'AspDotNetStorefront ', 1, 0, '2016-01-21 06:19:49'),
(2446, 'ASP.NET MVC ', 1, 0, '2016-01-21 06:20:02'),
(2447, 'ASP.NET ', 1, 0, '2016-01-21 06:20:10'),
(2448, 'ASP ', 1, 0, '2016-01-21 06:20:19'),
(2449, 'ASIO ', 1, 0, '2016-01-21 06:20:27'),
(2450, 'IBM AS/400 Control Language ', 1, 0, '2016-01-21 06:22:50'),
(2451, 'Arts & Crafts ', 1, 0, '2016-01-21 06:23:00'),
(2452, 'ArtRage ', 1, 0, '2016-01-21 06:23:16'),
(2453, 'Artlantis Studio ', 1, 0, '2016-01-21 06:23:23'),
(2454, 'Artlantis Render ', 1, 0, '2016-01-21 06:23:31'),
(2455, 'Artisteer ', 1, 0, '2016-01-21 06:23:39'),
(2456, 'ArtiosCAD ', 1, 0, '2016-01-21 06:23:48'),
(2457, 'Artificial Neural Networks ', 1, 0, '2016-01-21 06:23:56'),
(2458, 'Artificial Intelligence ', 1, 0, '2016-01-21 06:24:08'),
(2459, 'Articulate Studio ', 1, 0, '2016-01-21 06:24:16'),
(2460, 'Articulate Storyline ', 1, 0, '2016-01-21 06:24:23'),
(2461, 'Articulate Presenter ', 1, 0, '2016-01-21 06:24:37'),
(2462, 'Articulate Engage ', 1, 0, '2016-01-21 06:24:44'),
(2463, 'Articulate ', 1, 0, '2016-01-21 06:24:52'),
(2464, 'Article Writing ', 1, 0, '2016-01-21 06:24:59'),
(2465, 'Article Submission ', 1, 0, '2016-01-21 06:25:07'),
(2466, 'Article Spinning ', 1, 0, '2016-01-21 06:25:15'),
(2467, 'Article Rewriting ', 1, 0, '2016-01-21 06:25:23'),
(2468, 'Article curation ', 1, 0, '2016-01-21 06:25:32'),
(2469, 'Art Direction ', 1, 0, '2016-01-21 06:25:39'),
(2470, 'Art curation ', 1, 0, '2016-01-21 06:25:50'),
(2471, 'ARM ', 1, 0, '2016-01-21 06:26:05'),
(2472, 'Arduino ', 1, 0, '2016-01-21 06:26:12'),
(2473, 'ARCserve ', 1, 0, '2016-01-21 06:26:20'),
(2474, 'ArcScene ', 1, 0, '2016-01-21 06:26:27'),
(2475, 'Architectural Rendering ', 1, 0, '2016-01-21 06:26:34'),
(2476, 'Architecture ', 1, 0, '2016-01-21 06:26:42'),
(2477, 'ArchiCAD ', 1, 0, '2016-01-21 06:26:49'),
(2478, 'ArcGIS ', 1, 0, '2016-01-21 06:26:56'),
(2479, 'Arbitration ', 1, 0, '2016-01-21 06:27:03'),
(2480, 'Arabic ', 1, 0, '2016-01-21 06:27:11'),
(2481, 'Appointment Setting ', 1, 0, '2016-01-21 06:27:19'),
(2482, 'Application Server ', 1, 0, '2016-01-21 06:27:28'),
(2483, 'Application Programming ', 1, 0, '2016-01-21 06:27:53'),
(2484, 'Application Lifecycle Management ', 1, 0, '2016-01-21 06:28:01'),
(2485, 'Applicant Tracking Systems ', 1, 0, '2016-01-21 06:28:13'),
(2486, 'AppleScript ', 1, 0, '2016-01-21 06:28:20'),
(2487, 'Apple Xcode ', 1, 0, '2016-01-21 06:28:28'),
(2488, 'Apple WebObjects ', 1, 0, '2016-01-21 06:28:36'),
(2489, 'Apple UIKit Framework ', 1, 0, '2016-01-21 06:28:44'),
(2490, 'Apple Motion ', 1, 0, '2016-01-21 06:28:52'),
(2491, 'Apple iWork ', 1, 0, '2016-01-21 06:28:59'),
(2492, 'Apple iWeb ', 1, 0, '2016-01-21 06:29:07'),
(2493, 'iOS Jailbreaking ', 1, 0, '2016-01-21 06:29:17'),
(2494, 'Apple iMovie ', 1, 0, '2016-01-21 06:29:24'),
(2495, 'Apple iBooks ', 1, 0, '2016-01-21 06:29:32'),
(2496, 'Appian BPM Suite ', 1, 0, '2016-01-21 06:29:44'),
(2497, 'Appian ', 1, 0, '2016-01-21 06:29:52'),
(2498, 'AppFuse ', 1, 0, '2016-01-21 06:30:00'),
(2499, 'Appcelerator Titanium ', 1, 0, '2016-01-21 06:30:06'),
(2500, 'App Usability Analysis ', 1, 0, '2016-01-21 06:30:14'),
(2501, 'App Store ', 1, 0, '2016-01-21 06:30:22'),
(2502, 'Apollo ', 1, 0, '2016-01-21 06:30:29'),
(2503, 'API Documentation ', 1, 0, '2016-01-21 06:30:36'),
(2504, 'API Development ', 1, 0, '2016-01-21 06:31:00'),
(2505, 'Apache Tomcat ', 1, 0, '2016-01-21 06:31:08'),
(2506, 'Apache Tiles ', 1, 0, '2016-01-21 06:31:16'),
(2507, 'Apache Thrift ', 1, 0, '2016-01-21 06:31:23'),
(2508, 'Apache Struts ', 1, 0, '2016-01-21 06:31:31'),
(2509, 'Apache Spark ', 1, 0, '2016-01-21 06:31:39'),
(2510, 'Apache Solr ', 1, 0, '2016-01-21 06:32:06'),
(2511, 'Apache Shirol ', 1, 0, '2016-01-21 06:32:15'),
(2512, 'Apache Jakarta POI ', 1, 0, '2016-01-21 06:32:24'),
(2513, 'Apache OFBiz ', 1, 0, '2016-01-21 06:32:32'),
(2514, 'Apache Nutch ', 1, 0, '2016-01-21 06:32:45'),
(2515, 'Apache Mahout ', 1, 0, '2016-01-21 06:33:04'),
(2516, 'Apache Kafka ', 1, 0, '2016-01-21 06:33:15'),
(2517, 'Apache Hive ', 1, 0, '2016-01-21 06:33:22'),
(2518, 'Apache Flume ', 1, 0, '2016-01-21 06:33:30'),
(2519, 'Apache CXF ', 1, 0, '2016-01-21 06:33:37'),
(2520, 'Apache Cordova ', 1, 0, '2016-01-21 06:33:50'),
(2521, 'Apache Cocoon ', 1, 0, '2016-01-21 06:33:58'),
(2522, 'Apache CloudStack ', 1, 0, '2016-01-21 06:34:05'),
(2523, 'Apache Click ', 1, 0, '2016-01-21 06:34:12'),
(2524, 'Apache Camel ', 1, 0, '2016-01-21 06:34:23'),
(2525, 'Apache Avro ', 1, 0, '2016-01-21 06:34:31'),
(2526, 'Apache Ant ', 1, 0, '2016-01-21 06:34:38'),
(2527, 'Apache administration ', 1, 0, '2016-01-21 06:34:45'),
(2528, 'AP Style Writing ', 1, 0, '2016-01-21 06:34:53'),
(2529, 'Antitrust ', 1, 0, '2016-01-21 06:35:00'),
(2530, 'Antispam and Antivirus ', 1, 0, '2016-01-21 06:35:08'),
(2531, 'Antenna Design ', 1, 0, '2016-01-21 06:35:15'),
(2532, 'ANSYS ', 1, 0, '2016-01-21 06:35:23'),
(2533, 'ANSI C ', 1, 0, '2016-01-21 06:35:35'),
(2534, 'Anime Studio ', 1, 0, '2016-01-21 06:35:42'),
(2535, 'Animation ', 1, 0, '2016-01-21 06:35:51'),
(2536, 'AngularJS ', 1, 0, '2016-01-21 06:35:59'),
(2537, 'Android SDK ', 1, 0, '2016-01-21 06:36:10'),
(2538, 'Android App Development ', 1, 0, '2016-01-21 06:36:18'),
(2539, 'Android ', 1, 0, '2016-01-21 06:36:27'),
(2540, 'Analytics ', 1, 0, '2016-01-21 06:37:04'),
(2541, 'Analog Electronics ', 1, 0, '2016-01-21 06:37:11'),
(2542, 'AMQP ', 1, 0, '2016-01-21 06:37:19'),
(2543, 'Amplifiers and Filters ', 1, 0, '2016-01-21 06:37:26'),
(2544, 'American Sign Language ', 1, 0, '2016-01-21 06:37:34'),
(2545, 'aMember ', 1, 0, '2016-01-21 06:37:47'),
(2546, 'Amazon Webstore ', 1, 0, '2016-01-21 06:37:55'),
(2547, 'Amazon Web Services ', 1, 0, '2016-01-21 06:38:03'),
(2548, 'Amazon S3 ', 1, 0, '2016-01-21 06:38:11'),
(2549, 'Amazon Relational Database Service ', 1, 0, '2016-01-21 06:38:19'),
(2550, 'Amazon MWS ', 1, 0, '2016-01-21 06:38:27'),
(2551, 'Mechanical Turk API ', 1, 0, '2016-01-21 06:38:35'),
(2552, 'Amazon EC2 ', 1, 0, '2016-01-21 06:38:42'),
(2553, 'Amazon Appstore ', 1, 0, '2016-01-21 06:38:49'),
(2554, 'Amanda Backup ', 1, 0, '2016-01-21 06:38:57'),
(2555, 'Amadeus ', 1, 0, '2016-01-21 06:39:04'),
(2556, 'Altium Designer ', 1, 0, '2016-01-21 06:39:12'),
(2557, 'Alternative Dispute Resolution ', 1, 0, '2016-01-21 06:39:19'),
(2558, 'Alternative3D ', 1, 0, '2016-01-21 06:39:30'),
(2559, 'Alpha ', 1, 0, '2016-01-21 06:39:38'),
(2560, 'Alibre Design ', 1, 0, '2016-01-21 06:39:47'),
(2561, 'Algorithms ', 1, 0, '2016-01-21 06:39:55'),
(2562, 'Algorithm Development ', 1, 0, '2016-01-21 06:40:12'),
(2563, 'Alfresco user ', 1, 0, '2016-01-21 06:40:19'),
(2564, 'Alfresco development ', 1, 0, '2016-01-21 06:40:28'),
(2565, 'Album Cover Design ', 1, 0, '2016-01-21 06:40:36'),
(2566, 'Albanian ', 1, 0, '2016-01-21 06:40:45'),
(2567, 'Akka ', 1, 0, '2016-01-21 06:40:57'),
(2568, 'AJAX ', 1, 0, '2016-01-21 06:41:09'),
(2569, 'AIX ', 1, 0, '2016-01-21 06:41:17'),
(2570, 'Amharic Language ', 1, 0, '2016-01-21 06:41:33'),
(2571, 'Agriculture ', 1, 0, '2016-01-21 06:41:41'),
(2572, 'Agile software developmennt ', 1, 0, '2016-01-21 06:41:48'),
(2573, 'Afrikaans ', 1, 0, '2016-01-21 06:41:58'),
(2574, 'Affiliate Marketing ', 1, 0, '2016-01-21 06:42:06'),
(2575, 'Advertising ', 1, 0, '2016-01-21 06:42:15'),
(2576, 'Advanced Business Application Programming (ABAP) ', 1, 0, '2016-01-21 06:42:29'),
(2577, 'ADVA ', 1, 0, '2016-01-21 06:42:38'),
(2578, 'Adobe Wallaby ', 1, 0, '2016-01-21 06:42:46'),
(2579, 'Adobe Soundbooth ', 1, 0, '2016-01-21 06:43:04'),
(2580, 'Adobe RoboHelp ', 1, 0, '2016-01-21 06:43:15'),
(2581, 'Adobe Premiere Pro ', 1, 0, '2016-01-21 06:43:24'),
(2582, 'Adobe Premiere Elements ', 1, 0, '2016-01-21 06:43:32'),
(2583, 'Adobe Premiere ', 1, 0, '2016-01-21 06:43:39'),
(2584, 'Adobe Photoshop Lightroom ', 1, 0, '2016-01-21 06:43:55'),
(2585, 'Adobe Photoshop ', 1, 0, '2016-01-21 06:44:03'),
(2586, 'Adobe PDF ', 1, 0, '2016-01-21 06:44:11'),
(2587, 'Adobe PageMaker ', 1, 0, '2016-01-21 06:44:18'),
(2588, 'Adobe Muse ', 1, 0, '2016-01-21 06:44:26'),
(2589, 'Adobe LiveCycle Designer ', 1, 0, '2016-01-21 06:44:33'),
(2590, 'Adobe Photoshop Lightroom ', 1, 0, '2016-01-21 06:44:43'),
(2591, 'Adobe Insight ', 1, 0, '2016-01-21 06:45:02'),
(2592, 'Adobe InDesign ', 1, 0, '2016-01-21 06:45:09'),
(2593, 'Adobe InCopy ', 1, 0, '2016-01-21 06:45:17'),
(2594, 'Adobe Imageready ', 1, 0, '2016-01-21 06:45:24'),
(2595, 'Adobe Illustrator ', 1, 0, '2016-01-21 06:45:37'),
(2596, 'AGAL ', 1, 0, '2016-01-21 06:45:45'),
(2597, 'Adobe GoLive ', 1, 0, '2016-01-21 06:45:52'),
(2598, 'Adobe FreeHand ', 1, 0, '2016-01-21 06:46:00'),
(2599, 'Adobe Framemaker ', 1, 0, '2016-01-21 06:46:07'),
(2600, 'Adobe Flex ', 1, 0, '2016-01-21 06:46:16'),
(2601, 'Adobe Flash ', 1, 0, '2016-01-21 06:46:26'),
(2602, 'Adobe Fireworks ', 1, 0, '2016-01-21 06:46:33'),
(2603, 'Adobe Encore ', 1, 0, '2016-01-21 06:46:40'),
(2604, 'Adobe eLearning Suite ', 1, 0, '2016-01-21 06:46:48'),
(2605, 'Adobe Dreamweaver ', 1, 0, '2016-01-21 06:46:59'),
(2606, 'Adobe Director ', 1, 0, '2016-01-21 06:47:07'),
(2607, 'Adobe Digital Marketing Suite ', 1, 0, '2016-01-21 06:47:18'),
(2608, 'Adobe Creative Suite ', 1, 0, '2016-01-21 06:47:27'),
(2609, 'Adobe Contribute ', 1, 0, '2016-01-21 06:47:37'),
(2610, 'Adobe Content Server ', 1, 0, '2016-01-21 06:47:44'),
(2611, 'Adobe Captivate ', 1, 0, '2016-01-21 06:47:51'),
(2612, 'Adobe Business Catalyst ', 1, 0, '2016-01-21 06:48:00'),
(2613, 'Adobe Audition ', 1, 0, '2016-01-21 06:48:13'),
(2614, 'Adobe Analytics ', 1, 0, '2016-01-21 06:48:20'),
(2615, 'Adobe AIR ', 1, 0, '2016-01-21 06:48:31'),
(2616, 'Adobe After Effects ', 1, 0, '2016-01-21 06:48:41'),
(2617, 'Adobe Acrobat ', 1, 0, '2016-01-21 06:48:48'),
(2618, 'ADO.NET ', 1, 0, '2016-01-21 06:48:56'),
(2619, 'ActiveX Data Objects (ADO) ', 1, 0, '2016-01-21 06:49:03'),
(2620, 'Administrative Support ', 1, 0, '2016-01-21 06:49:16'),
(2621, 'ADK ', 1, 0, '2016-01-21 06:49:24'),
(2622, 'Adaptive Algorithms ', 1, 0, '2016-01-21 06:49:31'),
(2623, 'Adaco ', 1, 0, '2016-01-21 06:49:38'),
(2624, 'Ada ', 1, 0, '2016-01-21 06:49:56'),
(2625, 'Ad Servers ', 1, 0, '2016-01-21 06:50:03'),
(2626, 'Ad Posting ', 1, 0, '2016-01-21 06:50:10'),
(2627, 'Ad Planning & Buying ', 1, 0, '2016-01-21 06:50:17'),
(2628, 'ActiveX ', 1, 0, '2016-01-21 06:50:25'),
(2629, 'ActiveCollab ', 1, 0, '2016-01-21 06:50:34'),
(2630, 'Active Listening ', 1, 0, '2016-01-21 06:50:41'),
(2631, 'Active Directory ', 1, 0, '2016-01-21 06:50:49'),
(2632, 'ActionScript 3 ', 1, 0, '2016-01-21 06:51:00'),
(2633, 'ActionScript ', 1, 0, '2016-01-21 06:51:11'),
(2634, 'Actian ', 1, 0, '2016-01-21 06:51:23'),
(2635, 'ACT! ', 1, 0, '2016-01-21 06:51:33'),
(2636, 'Acrylic Painting ', 1, 0, '2016-01-21 06:51:40'),
(2637, 'Acronis ', 1, 0, '2016-01-21 06:51:47'),
(2638, 'Acquisitions ', 1, 0, '2016-01-21 06:51:54'),
(2639, 'ACPI ', 1, 0, '2016-01-21 06:52:01'),
(2640, 'ACDSee ', 1, 0, '2016-01-21 06:52:08'),
(2641, 'Accounts Receivable Management ', 1, 0, '2016-01-21 06:52:15'),
(2642, 'Accounts Payable Management ', 1, 0, '2016-01-21 06:52:23'),
(2643, 'AccountMate ', 1, 0, '2016-01-21 06:52:31'),
(2644, 'Accounting ', 1, 0, '2016-01-21 06:52:42'),
(2645, 'Account Management ', 1, 0, '2016-01-21 06:52:49'),
(2646, 'Academic Writing ', 1, 0, '2016-01-21 06:52:59'),
(2647, 'Absynth ', 1, 0, '2016-01-21 06:53:06'),
(2648, 'Ableton Live ', 1, 0, '2016-01-21 06:53:14'),
(2649, 'AbleCommerce ', 1, 0, '2016-01-21 06:53:26'),
(2650, 'Abaqus ', 1, 0, '2016-01-21 06:53:33'),
(2651, 'A/B Testing ', 1, 0, '2016-01-21 06:53:41'),
(2652, 'Ab Initio ', 1, 0, '2016-01-21 06:53:47'),
(2653, 'A2Billing ', 1, 0, '2016-01-21 06:53:57'),
(2654, '3ds Max ', 1, 0, '2016-01-21 06:54:04'),
(2655, '3D Systems ', 1, 0, '2016-01-21 06:54:11'),
(2656, '3D Scanning ', 1, 0, '2016-01-21 06:54:23'),
(2657, '3D Rigging ', 1, 0, '2016-01-21 06:54:30'),
(2658, '3D Rendering ', 1, 0, '2016-01-21 06:54:38'),
(2659, '3D Printing ', 1, 0, '2016-01-21 06:54:48'),
(2660, '3D Modeling ', 1, 0, '2016-01-21 06:54:56'),
(2661, '3D Design ', 1, 0, '2016-01-21 06:55:03'),
(2662, '3D Animation ', 1, 0, '2016-01-21 06:55:10'),
(2663, '2D Design ', 1, 0, '2016-01-21 06:55:40'),
(2664, '2D Animation ', 1, 0, '2016-01-21 06:55:49'),
(2665, '1ShoppingCart ', 1, 0, '2016-01-21 06:55:57'),
(2666, '.NET Remoting ', 1, 0, '2016-01-21 06:56:05'),
(2667, '.NET Framework ', 1, 0, '2016-01-21 06:56:14'),
(2668, 'NET Compact Framework ', 1, 0, '2016-01-21 06:56:22'),
(2669, 'React', 1, 0, '2017-11-08 04:39:26');

-- --------------------------------------------------------

--
-- Table structure for table `star`
--

CREATE TABLE IF NOT EXISTS `star` (
`id` int(255) NOT NULL,
  `messageid` varchar(300) NOT NULL,
  `userid` varchar(300) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `star`
--

INSERT INTO `star` (`id`, `messageid`, `userid`, `date_added`) VALUES
(22, '14', '454243422562', '2016-12-01 23:05:28'),
(28, '17', '454243422562', '2016-12-02 06:28:45'),
(30, '19', '454243422562', '2016-12-02 12:14:54'),
(33, '21', '228670680670', '2016-12-03 12:47:20'),
(34, '17', '228670680670', '2016-12-03 12:55:36');

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE IF NOT EXISTS `task` (
`id` int(255) NOT NULL,
  `jobid` varchar(300) NOT NULL,
  `name` varchar(300) NOT NULL,
  `milestoneid` varchar(300) NOT NULL,
  `freelancerid` varchar(300) NOT NULL,
  `description` mediumtext NOT NULL,
  `progress` varchar(50) NOT NULL,
  `start_date` varchar(300) NOT NULL,
  `end_date` varchar(300) NOT NULL,
  `active` tinyint(4) NOT NULL,
  `delete_remove` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`id`, `jobid`, `name`, `milestoneid`, `freelancerid`, `description`, `progress`, `start_date`, `end_date`, `active`, `delete_remove`, `date_added`) VALUES
(1, '235342756190', 'Design Front End', '2', '461111766379', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eget volutpat dui. Aliquam porta scelerisque turpis ac venenatis. Mauris et lectus risus.', '30', '23 December 2016', '24 December 2016', 1, 0, '2016-12-23 12:04:12');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE IF NOT EXISTS `team` (
`id` int(255) NOT NULL,
  `teamid` varchar(300) NOT NULL,
  `userid` varchar(300) NOT NULL,
  `name` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` mediumtext NOT NULL,
  `facebook` varchar(300) NOT NULL,
  `twitter` varchar(300) NOT NULL,
  `linkedin` varchar(300) NOT NULL,
  `imagelocation` varchar(300) NOT NULL,
  `imagename` varchar(300) NOT NULL,
  `testimony` tinyint(4) NOT NULL,
  `active` tinyint(4) NOT NULL,
  `delete_remove` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `teamid`, `userid`, `name`, `title`, `description`, `facebook`, `twitter`, `linkedin`, `imagelocation`, `imagename`, `testimony`, `active`, `delete_remove`, `date_added`) VALUES
(1, '175564819653', '461111766379', 'Marrie Doi Test', 'Co-founder/ Operations', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'http://www.themashabrand.com', 'http://www.themashabrand.com', 'http://www.themashabrand.com', 'uploads/team/57f94850b7ec01475954768.png', '', 0, 1, 0, '2016-10-08 22:26:08'),
(2, '658239842863', '461111766379', 'Christopher Di', 'Co-founder/ Projects', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'http://www.themashabrand.com', 'http://www.themashabrand.com', 'http://www.themashabrand.com', 'uploads/team/58022793ab5701476536211.png', '', 0, 1, 0, '2016-10-15 15:56:51'),
(3, '386896997184', '461111766379', 'Heather H', 'Co-founder/ Marketing', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'http://www.themashabrand.com', 'http://www.themashabrand.com', 'http://www.themashabrand.com', 'uploads/team/58022ac3c711f1476537027.png', '', 0, 1, 0, '2016-10-15 16:10:27'),
(7, '', '1471436678', 'willytech limited', 'willyFoundation', 'testimonies goes here', '', '', '', 'uploads/testimony/1483350701.png', '1483350701.png', 1, 1, 0, '2017-01-02 11:37:32'),
(8, '', '1471436678', 'Vtpass', 'Vtpass limited', 'testimonies goes here', '', '', '', 'uploads/testimony/1483349860ne.png', '1483349860ne.png', 1, 1, 0, '2017-01-02 11:38:33'),
(9, '', '1471436678', 'Broadshift', 'broadshift technologies limited', 'it is goood and save using this platform', '', '', '', 'uploads/testimony/1483350183han.png', '1483350183han.png', 1, 1, 0, '2017-01-02 12:43:03'),
(13, '', '1471436678', 'Asefon Michael', 'Software Developer', 'Software Developer', 'www.facebook.com/asefonpelumi', 'www.twitter.com/asefonpelumi', 'www.twitter.com/asefonpelumi', 'uploads/team/15101141070170117_150941.jpg', '15101141070170117_150941.jpg', 2, 1, 0, '2017-11-08 04:59:06');

-- --------------------------------------------------------

--
-- Table structure for table `timeline`
--

CREATE TABLE IF NOT EXISTS `timeline` (
`id` int(255) NOT NULL,
  `icon` varchar(300) NOT NULL,
  `title` varchar(300) NOT NULL,
  `description` mediumtext NOT NULL,
  `item_order` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timeline`
--

INSERT INTO `timeline` (`id`, `icon`, `title`, `description`, `item_order`, `date_added`) VALUES
(2, 'fa-code', '8th, November 2017', 'COMING SOON', 2, '2017-01-03 12:08:10');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE IF NOT EXISTS `transactions` (
`id` int(255) NOT NULL,
  `membershipid` varchar(300) NOT NULL,
  `freelancerid` varchar(300) NOT NULL,
  `paymentid` varchar(300) NOT NULL,
  `hash` varchar(300) NOT NULL,
  `payment` varchar(300) NOT NULL,
  `complete` tinyint(4) NOT NULL,
  `transaction_type` tinyint(4) NOT NULL,
  `paypal` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `membershipid`, `freelancerid`, `paymentid`, `hash`, `payment`, `complete`, `transaction_type`, `paypal`, `date_added`) VALUES
(2, '202297164357', '461111766379', '4', '4', '10', 1, 1, 0, '2017-01-09 16:55:35'),
(4, '162959556527', '461111766379', 'PAY-6D3928737M957550FLB2JM3A', '41a5596773966d5ead7aaad607ef9d6a', '30', 1, 1, 1, '2017-01-10 11:08:09'),
(6, '4', '461111766379', 'PAY-4EA83675P5367351JLB22EHA', '785fc4e33517fbc96682131fbdd26ee8', '2', 1, 2, 1, '2017-01-11 06:10:17'),
(7, '355990638868', '228670680670', '4', '4', '4', 1, 3, 0, '2017-01-11 11:20:08'),
(8, '770864481184', '228670680670', 'PAY-3XM043742H9895334LB27C3A', '678756af11483e256f9e5b7911c9df4c', '4', 1, 3, 1, '2017-01-11 11:48:41'),
(11, '5', '423889306001', 'PAY-32V93376HX600245FLB3EFSI', '6b80646bf83f73dfc6afbc6eb08642d4', '10', 1, 4, 1, '2017-01-11 17:35:50'),
(13, '9', '423889306001', '4', '4', '10', 1, 4, 0, '2017-01-11 18:06:21'),
(14, '1', '228670680670', '4', '4', '20', 1, 4, 0, '2017-01-12 06:39:34'),
(15, '2', '228670680670', 'PAY-4H706525X1226950DLB6FUVA', '5c32c5d9ead06dc3d07489793bc9d91a', '20', 1, 4, 1, '2017-01-16 08:29:54'),
(16, '3', '228670680670', '4', '4', '20', 1, 4, 0, '2017-01-17 14:18:14'),
(17, '4', '228670680670', 'PAY-2SF99322NN979521NLB7BAVA', '4db1fdf7b1a324a483177f2a5d7439f2', '20', 1, 4, 1, '2017-01-17 15:38:42'),
(18, '10', '228670680670', '4', '4', '10', 1, 4, 0, '2017-02-06 18:47:31');

-- --------------------------------------------------------

--
-- Table structure for table `trash`
--

CREATE TABLE IF NOT EXISTS `trash` (
`id` int(255) NOT NULL,
  `messageid` varchar(300) NOT NULL,
  `userid` varchar(300) NOT NULL,
  `delete_remove` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trash`
--

INSERT INTO `trash` (`id`, `messageid`, `userid`, `delete_remove`, `date_added`) VALUES
(4, '22', '454243422562', 0, '2016-12-02 15:16:52'),
(8, '23', '454243422562', 0, '2016-12-02 15:34:47'),
(23, '20', '454243422562', 0, '2016-12-02 18:32:51'),
(26, '28', '228670680670', 0, '2016-12-13 16:16:32'),
(27, '31', '228670680670', 0, '2016-12-18 15:04:52'),
(28, '33', '461111766379', 0, '2016-12-19 16:09:12'),
(30, '39', '228670680670', 0, '2017-01-06 14:13:41'),
(31, '40', '228670680670', 0, '2017-01-06 14:13:43');

-- --------------------------------------------------------

--
-- Table structure for table `users_session`
--

CREATE TABLE IF NOT EXISTS `users_session` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `hash` varchar(64) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_session`
--

INSERT INTO `users_session` (`id`, `user_id`, `hash`) VALUES
(1, 2147483647, '9f87762274d1353af35801397869a0054214a92d53542741acdca14514b8413f'),
(2, 2147483647, '72153ebeeb85cc87988b582dd22f0d944d9b0fdfdd8566adf6a935d7a36f1624');

-- --------------------------------------------------------

--
-- Table structure for table `withdraw`
--

CREATE TABLE IF NOT EXISTS `withdraw` (
`id` int(255) NOT NULL,
  `freelancerid` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `confirm_email` varchar(300) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `withdraw`
--

INSERT INTO `withdraw` (`id`, `freelancerid`, `email`, `confirm_email`, `type`, `date_added`) VALUES
(1, '461111766379', 'danielkibet@gmail.com', 'danielkibet@gmail.com', 1, '2017-02-07 16:25:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bugs`
--
ALTER TABLE `bugs`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `file`
--
ALTER TABLE `file`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `freelancer`
--
ALTER TABLE `freelancer`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `link`
--
ALTER TABLE `link`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `membership_agency`
--
ALTER TABLE `membership_agency`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `membership_freelancer`
--
ALTER TABLE `membership_freelancer`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `milestone`
--
ALTER TABLE `milestone`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments_settings`
--
ALTER TABLE `payments_settings`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_freelancer`
--
ALTER TABLE `pay_freelancer`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolio`
--
ALTER TABLE `portfolio`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `proposal`
--
ALTER TABLE `proposal`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings_client`
--
ALTER TABLE `ratings_client`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section_client`
--
ALTER TABLE `section_client`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section_freelancer`
--
ALTER TABLE `section_freelancer`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `star`
--
ALTER TABLE `star`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timeline`
--
ALTER TABLE `timeline`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trash`
--
ALTER TABLE `trash`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_session`
--
ALTER TABLE `users_session`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw`
--
ALTER TABLE `withdraw`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `bugs`
--
ALTER TABLE `bugs`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `freelancer`
--
ALTER TABLE `freelancer`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `link`
--
ALTER TABLE `link`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `membership_agency`
--
ALTER TABLE `membership_agency`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `membership_freelancer`
--
ALTER TABLE `membership_freelancer`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `milestone`
--
ALTER TABLE `milestone`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `payments_settings`
--
ALTER TABLE `payments_settings`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pay_freelancer`
--
ALTER TABLE `pay_freelancer`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `portfolio`
--
ALTER TABLE `portfolio`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `proposal`
--
ALTER TABLE `proposal`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `ratings_client`
--
ALTER TABLE `ratings_client`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `section_client`
--
ALTER TABLE `section_client`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `section_freelancer`
--
ALTER TABLE `section_freelancer`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2670;
--
-- AUTO_INCREMENT for table `star`
--
ALTER TABLE `star`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `timeline`
--
ALTER TABLE `timeline`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `trash`
--
ALTER TABLE `trash`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `users_session`
--
ALTER TABLE `users_session`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `withdraw`
--
ALTER TABLE `withdraw`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
