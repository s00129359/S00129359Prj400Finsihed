-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2016 at 03:36 PM
-- Server version: 10.1.8-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `repairsystem0`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `fName` varchar(50) NOT NULL,
  `sName` varchar(50) NOT NULL,
  `address1` varchar(50) NOT NULL,
  `address2` varchar(50) DEFAULT NULL,
  `county` varchar(10) NOT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `email` varchar(320) DEFAULT NULL,
  `landline` varchar(13) DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `fName`, `sName`, `address1`, `address2`, `county`, `mobile`, `email`, `landline`, `created`) VALUES
(1, 'cormac', 'hallinan', 'ballikilcash', '', 'sligo', '0879719321', 's00129359@mail.itsligo.ie', '09647442', '2015-12-02 10:12:55'),
(2, 'John', 'Doe', 'easky', '', 'sligo', '08748573847', 'john@hotmail.com', '', '2015-12-13 16:07:40'),
(3, 'una', 'fdafs', 'sDF', 'fasdf', 'fdasf', '08791844738', '', '', '2015-12-15 12:27:34'),
(4, 'Betty', 'Price', '6587 Armistice Pass', 'Di Loreto', 'Ampelákia', '30-(172)367', 'bprice3@deliciousdays.com', 'bprice3@paral', '0000-00-00 00:00:00'),
(5, 'George', 'Young', '671 Towne Court', 'Morning', 'Ti?n H?i', '84-(353)567', 'gyoung4@usda.gov', 'gyoung4@daily', '0000-00-00 00:00:00'),
(6, 'Helen', 'Young', '177 American Pass', 'Daystar', 'Ikalamavon', '261-(584)64', 'hyoung5@google.com', 'hyoung5@poste', '0000-00-00 00:00:00'),
(7, 'Anne', 'Chapman', '0 Scofield Way', 'Dryden', 'Jinhe', '86-(437)456', 'achapman6@shutterfly.com', 'achapman6@nym', '0000-00-00 00:00:00'),
(8, 'Gary', 'Nguyen', '8 Evergreen Parkway', 'Cardinal', 'Mendenrejo', '62-(145)115', 'gnguyen7@posterous.com', 'gnguyen7@t-on', '0000-00-00 00:00:00'),
(9, 'Fred', 'Morris', '497 Dunning Point', 'Merrick', 'Zbytków', '48-(464)655', 'fmorris8@si.edu', 'fmorris8@lulu', '0000-00-00 00:00:00'),
(10, 'Gary', 'Mills', '37 Melvin Circle', 'Dayton', 'Amangarh', '92-(478)792', 'gmills9@webeden.co.uk', 'gmills9@alter', '0000-00-00 00:00:00'),
(11, 'Annie', 'Knight', '28 Veith Place', 'Anthes', 'Situsari', '62-(383)747', 'aknighta@last.fm', 'aknighta@sena', '0000-00-00 00:00:00'),
(12, 'Clarence', 'Austin', '3 Kenwood Avenue', 'Hudson', 'Qingguang', '86-(880)431', 'caustinb@opensource.org', 'caustinb@naro', '0000-00-00 00:00:00'),
(13, 'Linda', 'Peterson', '841 Columbus Court', 'Hooker', 'Siuna', '505-(995)74', 'lpetersonc@earthlink.net', 'lpetersonc@bl', '0000-00-00 00:00:00'),
(14, 'Rose', 'Alvarez', '3002 Hollow Ridge Plaza', 'Longview', 'Bykivka', '380-(663)32', 'ralvarezd@unc.edu', 'ralvarezd@typ', '0000-00-00 00:00:00'),
(15, 'Jonathan', 'Gutierrez', '708 Talisman Point', 'Cascade', 'Lubuagan', '63-(427)154', 'jgutierreze@cbc.ca', 'jgutierreze@a', '0000-00-00 00:00:00'),
(16, 'Gary', 'Montgomery', '6471 Rieder Hill', 'Magdeline', 'Nîmes', '33-(686)456', 'gmontgomeryf@dailymail.co.uk', 'gmontgomeryf@', '0000-00-00 00:00:00'),
(17, 'Joyce', 'Dixon', '95 Rockefeller Way', 'Havey', 'Mayhan', '976-(961)44', 'jdixong@nasa.gov', 'jdixong@desde', '0000-00-00 00:00:00'),
(18, 'Patricia', 'Chavez', '402 Hagan Point', 'Bowman', 'Minador do', '55-(831)635', 'pchavezh@t.co', 'pchavezh@sour', '0000-00-00 00:00:00'),
(19, 'Denise', 'Oliver', '135 Artisan Lane', 'Roth', 'Arnhem', '31-(217)718', 'doliveri@cnet.com', 'doliveri@amaz', '0000-00-00 00:00:00'),
(20, 'Kathleen', 'Riley', '8 Atwood Court', 'Starling', 'Huaiya', '86-(167)346', 'krileyj@sciencedaily.com', 'krileyj@java.', '0000-00-00 00:00:00'),
(21, 'Brenda', 'Burns', '03267 Harbort Junction', 'Bobwhite', 'Pingding', '86-(703)144', 'bburnsk@phoca.cz', 'bburnsk@pen.i', '0000-00-00 00:00:00'),
(22, 'Steve', 'Ramirez', '865 Donald Road', 'Miller', 'Anwen', '86-(863)987', 'sramirezl@about.me', 'sramirezl@moz', '0000-00-00 00:00:00'),
(23, 'Teresa', 'Ryan', '29215 Vidon Parkway', 'Hollow Ridge', 'Liborina', '57-(456)675', 'tryanm@infoseek.co.jp', 'tryanm@jugem.', '0000-00-00 00:00:00'),
(24, 'Brian', 'Turner', '0907 Nelson Park', 'Michigan', 'Staronizhe', '7-(555)664-', 'bturnern@privacy.gov.au', 'bturnern@ramb', '0000-00-00 00:00:00'),
(25, 'Ralph', 'Medina', '78168 Larry Drive', 'Cambridge', 'Doumen', '86-(749)624', 'rmedinao@google.com.au', 'rmedinao@euro', '0000-00-00 00:00:00'),
(26, 'Margaret', 'Garrett', '8 Sloan Terrace', 'Sheridan', 'Orkney', '27-(746)103', 'mgarrettp@google.com', 'mgarrettp@npr', '0000-00-00 00:00:00'),
(27, 'Bonnie', 'Miller', '0555 Rockefeller Parkway', 'Artisan', 'Pevek', '7-(255)471-', 'bmillerq@goodreads.com', 'bmillerq@goog', '0000-00-00 00:00:00'),
(28, 'Randy', 'Harper', '8420 Carpenter Place', 'Talmadge', 'Amberd', '374-(746)53', 'rharperr@qq.com', 'rharperr@tele', '0000-00-00 00:00:00'),
(29, 'Keith', 'Carr', '46 Corscot Way', 'Fuller', 'Spanish We', '1-(487)207-', 'kcarrs@washington.edu', 'kcarrs@dell.c', '0000-00-00 00:00:00'),
(30, 'Sharon', 'Lawrence', '06 Maryland Circle', 'Jana', 'Jetis', '62-(346)754', 'slawrencet@ehow.com', 'slawrencet@go', '0000-00-00 00:00:00'),
(31, 'Terry', 'Gardner', '69 Bartillon Way', 'Summer Ridge', 'Almenara', '55-(211)791', 'tgardneru@squarespace.com', 'tgardneru@yol', '0000-00-00 00:00:00'),
(32, 'Diana', 'Montgomery', '590 Londonderry Way', 'Thompson', 'Libacao', '63-(366)589', 'dmontgomeryv@amazonaws.com', 'dmontgomeryv@', '0000-00-00 00:00:00'),
(33, 'Johnny', 'Garcia', '326 Corry Alley', 'Mallard', 'Ketanggi', '62-(651)816', 'jgarciaw@parallels.com', 'jgarciaw@stat', '0000-00-00 00:00:00'),
(34, 'Marilyn', 'Ortiz', '1 Claremont Park', 'Monterey', 'Alverca do', '351-(845)86', 'mortizx@constantcontact.com', 'mortizx@disco', '0000-00-00 00:00:00'),
(35, 'Angela', 'Perkins', '65 Kingsford Road', 'Comanche', 'Dabao', '86-(296)926', 'aperkinsy@cpanel.net', 'aperkinsy@fc2', '0000-00-00 00:00:00'),
(36, 'Ruby', 'Baker', '79732 Novick Parkway', 'Magdeline', 'Chantilly', '33-(982)204', 'rbakerz@themeforest.net', 'rbakerz@theat', '0000-00-00 00:00:00'),
(37, 'Aaron', 'Stewart', '88 Pierstorff Pass', 'Westridge', 'Pedra Fura', '351-(682)48', 'astewart10@netlog.com', 'astewart10@sa', '0000-00-00 00:00:00'),
(38, 'Beverly', 'Hill', '23672 Anderson Lane', 'Becker', 'Vidoši', '387-(597)16', 'bhill11@google.fr', 'bhill11@amazo', '0000-00-00 00:00:00'),
(39, 'Stephen', 'Duncan', '3359 Anthes Trail', 'Bartillon', 'Funehikima', '81-(648)201', 'sduncan12@google.fr', 'sduncan12@goo', '0000-00-00 00:00:00'),
(40, 'Alice', 'Berry', '27604 Novick Court', 'High Crossing', 'Gabao', '63-(435)897', 'aberry13@merriam-webster.com', 'aberry13@usa.', '0000-00-00 00:00:00'),
(41, 'Paul', 'Cole', '04 Pine View Road', 'Harbort', 'Pengbu', '86-(617)620', 'pcole14@bing.com', 'pcole14@alexa', '0000-00-00 00:00:00'),
(42, 'Marilyn', 'Parker', '025 Shoshone Avenue', 'John Wall', 'Reriz', '351-(914)99', 'mparker15@deviantart.com', 'mparker15@ted', '0000-00-00 00:00:00'),
(43, 'Daniel', 'Stephens', '5877 Onsgard Avenue', 'Ludington', 'Sosnovka', '7-(836)403-', 'dstephens16@amazonaws.com', 'dstephens16@g', '0000-00-00 00:00:00'),
(44, 'Marilyn', 'Ramos', '93 Oakridge Hill', 'Corscot', 'San Nicola', '63-(572)820', 'mramos17@ucsd.edu', 'mramos17@cnet', '0000-00-00 00:00:00'),
(45, 'Peter', 'Duncan', '507 Waubesa Hill', 'Golden Leaf', 'Yeyik', '86-(933)979', 'pduncan18@wikispaces.com', 'pduncan18@vim', '0000-00-00 00:00:00'),
(46, 'Lois', 'Robinson', '84203 Dottie Avenue', 'Vermont', 'Th? Tr?n N', '84-(956)180', 'lrobinson19@google.nl', 'lrobinson19@g', '0000-00-00 00:00:00'),
(47, 'George', 'Bradley', '63298 Atwood Plaza', 'Grim', 'Nizhnyaya ', '7-(619)329-', 'gbradley1a@addtoany.com', 'gbradley1a@go', '0000-00-00 00:00:00'),
(48, 'Gerald', 'Warren', '26293 Delladonna Trail', 'Randy', 'D?bie', '48-(258)550', 'gwarren1b@washingtonpost.com', 'gwarren1b@smu', '0000-00-00 00:00:00'),
(49, 'Alice', 'Rodriguez', '1743 Hayes Park', 'Bobwhite', 'Östersund', '46-(352)159', 'arodriguez1c@reuters.com', 'arodriguez1c@', '0000-00-00 00:00:00'),
(50, 'Andrew', 'Vasquez', '587 Merrick Plaza', 'Meadow Valley', 'Alingsås', '46-(620)657', 'avasquez1d@hexun.com', 'avasquez1d@dm', '0000-00-00 00:00:00'),
(51, 'Albert', 'Carter', '891 Bartillon Avenue', 'Lillian', 'Panguruan', '62-(158)153', 'acarter1e@ustream.tv', 'acarter1e@blo', '0000-00-00 00:00:00'),
(52, 'Denise', 'Porter', '24 Dunning Street', 'Sutteridge', 'Sagaing', '95-(880)450', 'dporter1f@usa.gov', 'dporter1f@cnb', '0000-00-00 00:00:00'),
(53, 'Justin', 'Phillips', '0635 6th Trail', 'Cambridge', 'Phatthana ', '66-(822)131', 'jphillips1g@twitpic.com', 'jphillips1g@s', '0000-00-00 00:00:00'),
(54, 'William', 'Oliver', '27 Meadow Valley Alley', 'Sycamore', 'Hor', '86-(486)646', 'woliver1h@posterous.com', 'woliver1h@wuf', '0000-00-00 00:00:00'),
(55, 'Heather', 'Riley', '03802 Sheridan Avenue', 'Daystar', 'Cherkassko', '7-(104)376-', 'hriley1i@wordpress.org', 'hriley1i@buzz', '0000-00-00 00:00:00'),
(56, 'Brandon', 'Martinez', '287 Marquette Terrace', 'Bunker Hill', 'Pedroso', '351-(566)76', 'bmartinez1j@discuz.net', 'bmartinez1j@g', '0000-00-00 00:00:00'),
(57, 'Joan', 'Cruz', '17934 Hudson Plaza', 'Crest Line', 'Nîmes', '33-(546)126', 'jcruz1k@kickstarter.com', 'jcruz1k@about', '0000-00-00 00:00:00'),
(58, 'Larry', 'Stewart', '9660 Crescent Oaks Crossing', 'Cody', 'Krajan Keb', '62-(428)998', 'lstewart1l@pbs.org', 'lstewart1l@sc', '0000-00-00 00:00:00'),
(59, 'Barbara', 'Hunter', '1020 Packers Point', 'International', 'Türkmenaba', '993-(340)33', 'bhunter1m@baidu.com', 'bhunter1m@sho', '0000-00-00 00:00:00'),
(60, 'Cheryl', 'Wilson', '5563 Green Ridge Crossing', 'Harbort', 'Remscheid', '49-(466)744', 'cwilson1n@uiuc.edu', 'cwilson1n@cam', '0000-00-00 00:00:00'),
(61, 'Joshua', 'Frazier', '536 New Castle Pass', 'Del Mar', 'Tairua', '64-(165)400', 'jfrazier1o@biblegateway.com', 'jfrazier1o@yo', '0000-00-00 00:00:00'),
(62, 'Gloria', 'Berry', '6 Northland Junction', 'Crescent Oaks', 'Gansa', '86-(532)228', 'gberry1p@ihg.com', 'gberry1p@ning', '0000-00-00 00:00:00'),
(63, 'Denise', 'Hudson', '53930 Buhler Park', 'Golf Course', 'Japeri', '55-(559)509', 'dhudson1q@un.org', 'dhudson1q@liv', '0000-00-00 00:00:00'),
(64, 'Lillian', 'Wright', '1220 Dryden Drive', 'Mendota', 'Janikowo', '48-(793)991', 'lwright1r@berkeley.edu', 'lwright1r@pri', '0000-00-00 00:00:00'),
(65, 'Carl', 'Mitchell', '2404 Basil Junction', 'Milwaukee', 'Guaramirim', '55-(887)719', 'cmitchell1s@mayoclinic.com', 'cmitchell1s@u', '0000-00-00 00:00:00'),
(66, 'Alice', 'Hansen', '354 Granby Way', 'Derek', 'Chernyshko', '7-(603)302-', 'ahansen1t@comsenz.com', 'ahansen1t@cyb', '0000-00-00 00:00:00'),
(67, 'Gloria', 'Williams', '35733 Rockefeller Pass', 'Grayhawk', 'Odemira', '351-(259)54', 'gwilliams1u@usgs.gov', 'gwilliams1u@y', '0000-00-00 00:00:00'),
(68, 'Joan', 'Ford', '6 Novick Plaza', 'Green', 'Presidente', '55-(639)354', 'jford1v@sfgate.com', 'jford1v@tripa', '0000-00-00 00:00:00'),
(69, 'Ernest', 'Hansen', '1443 Southridge Hill', 'Waxwing', 'Piracanjub', '55-(849)746', 'ehansen1w@tinyurl.com', 'ehansen1w@dyn', '0000-00-00 00:00:00'),
(70, 'Keith', 'Cooper', '1 Helena Center', 'Graceland', 'Sabana Gra', '1-(893)634-', 'kcooper1x@pcworld.com', 'kcooper1x@hat', '0000-00-00 00:00:00'),
(71, 'Nicholas', 'Ward', '30 Sherman Place', 'Michigan', 'Ivanovo', '7-(204)713-', 'nward1y@google.com.hk', 'nward1y@phpbb', '0000-00-00 00:00:00'),
(72, 'Margaret', 'Andrews', '2672 Main Center', 'Hudson', 'Dayr S?mit', '970-(180)29', 'mandrews1z@usgs.gov', 'mandrews1z@go', '0000-00-00 00:00:00'),
(73, 'Frank', 'Mason', '4 Kim Circle', 'Everett', 'Rymättylä', '358-(762)51', 'fmason20@who.int', 'fmason20@goog', '0000-00-00 00:00:00'),
(74, 'Ernest', 'Arnold', '46 Bunting Park', 'New Castle', 'Ituberá', '55-(427)678', 'earnold21@tmall.com', 'earnold21@yel', '0000-00-00 00:00:00'),
(75, 'Dorothy', 'Fields', '8 Dapin Court', 'Monica', 'Kameoka', '81-(972)670', 'dfields22@wix.com', 'dfields22@unc', '0000-00-00 00:00:00'),
(76, 'Alice', 'Collins', '291 Sugar Circle', 'Towne', 'Haozhai', '86-(884)701', 'acollins23@oaic.gov.au', 'acollins23@sk', '0000-00-00 00:00:00'),
(77, 'Teresa', 'Kennedy', '64010 Cordelia Plaza', 'Marcy', 'Taoyuan', '86-(367)703', 'tkennedy24@jimdo.com', 'tkennedy24@e-', '0000-00-00 00:00:00'),
(78, 'Joan', 'Cooper', '05119 Troy Junction', 'Bobwhite', 'Baraguá', '53-(462)597', 'jcooper25@utexas.edu', 'jcooper25@ban', '0000-00-00 00:00:00'),
(79, 'Denise', 'Jackson', '55 Springs Park', 'Algoma', 'Tešanj', '387-(536)29', 'djackson26@imdb.com', 'djackson26@bi', '0000-00-00 00:00:00'),
(80, 'Alan', 'Graham', '52 Upham Terrace', 'Thackeray', 'Timashëvsk', '7-(914)506-', 'agraham27@house.gov', 'agraham27@ama', '0000-00-00 00:00:00'),
(81, 'Patricia', 'Wallace', '187 Talmadge Crossing', 'Carberry', 'Kyrenia', '357-(865)13', 'pwallace28@springer.com', 'pwallace28@co', '0000-00-00 00:00:00'),
(82, 'Rebecca', 'Hunter', '4 Alpine Crossing', 'Oak Valley', 'Bundibugyo', '256-(855)69', 'rhunter29@seattletimes.com', 'rhunter29@elp', '0000-00-00 00:00:00'),
(83, 'Clarence', 'Richardson', '66009 Springview Street', 'Jay', 'Jargalant', '976-(580)41', 'crichardson2a@odnoklassniki.ru', 'crichardson2a', '0000-00-00 00:00:00'),
(84, 'Joe', 'Walker', '02450 Green Ridge Plaza', 'Oneill', 'Gy?da', '81-(689)774', 'jwalker2b@home.pl', 'jwalker2b@sho', '0000-00-00 00:00:00'),
(85, 'George', 'Gray', '59 Loeprich Junction', 'Ryan', 'Kurów', '48-(379)200', 'ggray2c@kickstarter.com', 'ggray2c@usnew', '0000-00-00 00:00:00'),
(86, 'Jean', 'Martinez', '52101 Fremont Court', 'Oriole', 'Volot', '7-(148)327-', 'jmartinez2d@marketwatch.com', 'jmartinez2d@a', '0000-00-00 00:00:00'),
(87, 'Helen', 'Daniels', '7331 Melby Center', 'Dorton', 'Balangonan', '63-(226)359', 'hdaniels2e@theglobeandmail.com', 'hdaniels2e@me', '0000-00-00 00:00:00'),
(88, 'Phillip', 'Baker', '1 Sullivan Road', 'Quincy', 'Himanka', '358-(757)67', 'pbaker2f@nasa.gov', 'pbaker2f@stat', '0000-00-00 00:00:00'),
(89, 'Evelyn', 'Montgomery', '7651 Eliot Court', 'Barby', 'Cravinhos', '55-(968)650', 'emontgomery2g@wunderground.com', 'emontgomery2g', '0000-00-00 00:00:00'),
(90, 'Shawn', 'Ramirez', '53211 Columbus Junction', 'Drewry', 'Žaclé?', '420-(335)40', 'sramirez2h@gnu.org', 'sramirez2h@jo', '0000-00-00 00:00:00'),
(91, 'Kathy', 'Mendoza', '2444 Macpherson Junction', 'Lukken', 'Al ?udayda', '967-(316)30', 'kmendoza2i@virginia.edu', 'kmendoza2i@ba', '0000-00-00 00:00:00'),
(92, 'Maria', 'Peters', '6 John Wall Parkway', 'Crescent Oaks', 'Mapiripán', '57-(449)304', 'mpeters2j@cnn.com', 'mpeters2j@liv', '0000-00-00 00:00:00'),
(93, 'Joshua', 'Rice', '43995 Portage Road', 'Corscot', 'Lenchwe Le', '267-(607)11', 'jrice2k@jigsy.com', 'jrice2k@pagin', '0000-00-00 00:00:00'),
(94, 'Rachel', 'Martin', '0883 Carey Park', 'Raven', 'Jeffrey’s ', '27-(103)656', 'rmartin2l@squidoo.com', 'rmartin2l@goo', '0000-00-00 00:00:00'),
(95, 'Lawrence', 'Anderson', '4 New Castle Place', 'Oak', 'Azua', '1-(490)649-', 'landerson2m@ucoz.ru', 'landerson2m@g', '0000-00-00 00:00:00'),
(96, 'Pamela', 'Jones', '886 Memorial Drive', 'Glendale', 'Montbrison', '33-(616)504', 'pjones2n@eepurl.com', 'pjones2n@php.', '0000-00-00 00:00:00'),
(97, 'Brian', 'Martinez', '188 Manufacturers Point', 'Transport', 'Apatin', '381-(828)94', 'bmartinez2o@flickr.com', 'bmartinez2o@q', '0000-00-00 00:00:00'),
(98, 'Arthur', 'Griffin', '16043 Miller Trail', 'Scott', 'San Andrés', '502-(785)73', 'agriffin2p@fotki.com', 'agriffin2p@oa', '0000-00-00 00:00:00'),
(99, 'Bruce', 'Perry', '13740 Harper Avenue', 'Forest', 'Shejiang', '86-(815)796', 'bperry2q@wp.com', 'bperry2q@answ', '0000-00-00 00:00:00'),
(100, 'Carolyn', 'Wagner', '07834 Fulton Road', 'Park Meadow', 'Paris 15', '33-(884)140', 'cwagner2r@joomla.org', 'cwagner2r@exa', '0000-00-00 00:00:00'),
(101, 'john', 'smith', 'mayo', '', 'mayo', '', 'john123@hotmail.com', '', '2016-03-06 20:42:25'),
(102, 'pat', 'doe', 'bally', '', 'mayo', '', 'csdf@hotmail.com', '', '2016-03-06 20:52:15'),
(103, 'pat', 'doe', 'bally', '', 'mayo', '', 'csfdf@hotmail.com', '', '2016-03-06 20:53:29'),
(104, 'john', 'smith', 'dad', '', 'sligo', '', 'johnnny@ymail.com', '', '2016-03-12 13:46:53'),
(105, 'john', 'smith', 'dad', '', 'sligo', '', 'johnnny12@ymail.com', '', '2016-03-12 13:48:00'),
(106, 'john', 'smith', 'dad', '', 'sligo', '', 'johwnnny12@ymail.com', '', '2016-03-12 13:49:52'),
(107, 'john', 'smith', 'dad', '', 'sligo', '', 'johnnny12wc@ymail.com', '', '2016-03-12 13:56:45'),
(108, 'pat', 'doe', 'hk', '', 'sligo', '', 'pat@hotmail.com', '', '2016-03-12 13:58:02'),
(109, 'caha', 'hallinan', 'mayo', '', 'slgio', '', 'hall@hotmail.com', '', '2016-03-12 13:59:37'),
(110, 'john', 'mcgee', 'ssds', '', 'mayo', '', 'mc@ymail.com', '', '2016-03-12 14:00:20'),
(111, 'john', 'mcgee', 'ssds', '', 'mayo', '', 'mc1@ymail.com', '', '2016-03-12 14:02:21'),
(112, 'paddy', 'mcha', 'ball', '', 'mayo', '', 'mcha@hotmail.com', '', '2016-03-12 14:03:23'),
(113, 'paddy', 'mcha', 'ball', '', 'mayo', '', 'mcha32@hotmail.com', '', '2016-03-12 14:03:43'),
(114, 'john', 'mcglogh', 'the road', '', 'sligo', '', 'jmg@ymail.com', '', '2016-03-12 14:06:57'),
(115, 'pat', 'devaney', 'csf', '', 'Sligo', '', 'dev@hotmail.com', '', '2016-03-12 14:09:19'),
(116, 'pat', 'devaney', 'csf', '', 'Sligo', '', 'dev1@hotmail.com', '', '2016-03-12 14:09:51'),
(117, 'pat', 'mcgee', 'dromore', '', 'Sligo', '', 'Pato@hotmail.com', '', '2016-03-12 14:13:17'),
(118, 'mary', 'smith', 'eask', '', 'Sligo', '', 'mm@hotmail.com', '', '2016-03-12 14:17:32'),
(119, 'pat', 'neary', 'knocka', '', 'Sligo', '', 'neary@hotmail.com', '', '2016-03-12 14:27:48'),
(120, 'pat', 'ma', 'road', '', 'Sligo', '', 'pa@hotmail.com', '', '2016-03-12 22:19:35'),
(121, 'john', 'sic', 'mall', '', 'Sligo', '', 'jo@hotmail.com', '', '2016-03-12 22:23:45'),
(122, 'cormac', 'con', 'dsad', '', 'ds', '', 'co@hotmail.com', '', '2016-03-12 22:30:04'),
(123, 'john', 'pat', 'mayp', '', 'sligo', '', 'patmato@hotmail.com', '', '2016-03-26 14:08:30'),
(124, 'pat', 'smith', 'bsf', '', 'Sligo', '08797485938', 'f@mail.di', '', '2016-04-07 12:32:35'),
(125, 'john', 'doe', 'ball', '', 'Mayo', '085968573', 'john123fgvs@hotmail.com', '', '2016-04-07 12:42:04'),
(126, 'Joe', 'Doe', 'sfs', '', 'Sligo', '0873849504', 'joedoe123@hotmail.com', '', '2016-04-07 12:48:56'),
(127, 'pat', 'lam', 'kj', '', 'sligo', '0880', 'dsd@ema.cs', '', '2016-04-29 04:01:54'),
(128, 'fred', 'mcgee', 'kjn', '', 'leitrim', '0938495849', 'gjkg@fd.fd', '', '2016-04-29 04:02:47');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `Id` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`Id`, `Name`) VALUES
(0, 'PC'),
(1, 'Laptop'),
(2, 'Mobile');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL,
  `equipment` varchar(50) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `accessories` varchar(50) DEFAULT NULL,
  `notes` text,
  `priority` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `finished` tinyint(1) NOT NULL DEFAULT '0',
  `collected` tinyint(1) NOT NULL DEFAULT '0',
  `conclusion` text,
  `completed_date` datetime DEFAULT NULL,
  `paid_status` tinyint(1) DEFAULT '0',
  `amount_due` double DEFAULT NULL,
  `sms_list` tinyint(1) DEFAULT NULL,
  `email_list` tinyint(1) DEFAULT NULL,
  `smsSendDate` datetime DEFAULT NULL,
  `emailSendDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `user_id`, `customer_id`, `items_id`, `equipment`, `brand`, `description`, `accessories`, `notes`, `priority`, `created`, `modified`, `finished`, `collected`, `conclusion`, `completed_date`, `paid_status`, `amount_due`, `sms_list`, `email_list`, `smsSendDate`, `emailSendDate`) VALUES
(1, 1, 1, 0, 'Laptop', 'Lenovo', 'Una looked at this at it is good. edit', 'none', '', 0, '2015-12-13 19:14:56', '2016-04-29 04:37:48', 1, 0, '', NULL, 0, 2.5, 1, 1, NULL, NULL),
(7, 1, 2, 0, 'Ipad', 'Apple ', 'szfzs', '', '', 1, '2015-12-13 19:48:47', '2016-04-06 20:37:35', 1, 0, '', '2016-01-08 00:00:00', 0, NULL, 0, 0, NULL, NULL),
(11, 2, 2, 0, 'Laptop', 'Compaq', 'f eafafaae', '', '', 0, '2015-12-13 21:51:11', '2016-02-05 09:34:25', 0, 0, '', NULL, 0, NULL, 0, 1, NULL, NULL),
(12, 2, 1, 0, 'Laptop', 'Lenovo', 'sfc as vafd vvas', '', '', 0, '2015-12-13 23:30:23', '2016-03-31 17:13:19', 0, 0, '', NULL, 0, NULL, 0, 0, NULL, NULL),
(13, 1, 3, 0, 'laptop', 'lenovo', 'description', '', '', 0, '2016-01-31 17:12:57', '2016-02-05 09:34:13', 0, 0, '', NULL, 0, NULL, 0, 0, NULL, NULL),
(14, 1, 33, 0, 'Laptop', 'Dell', 'Clean up', '', '', 0, '2016-02-04 23:55:41', '2016-02-04 23:55:41', 0, 0, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL),
(15, 1, 68, 0, 'Ipad', 'Apple', 'Home button broke', '', '', 0, '2016-02-04 23:57:38', '2016-02-04 23:57:38', 1, 0, NULL, '2016-02-06 23:57:38', NULL, NULL, 0, 1, NULL, NULL),
(16, 1, 14, 0, 'Laptop', 'HP', 'Remove malwayre', '', '', 1, '2016-02-05 00:03:22', '2016-02-05 00:07:15', 0, 0, '', NULL, 0, NULL, 0, 1, NULL, NULL),
(17, 1, 47, 0, 'Laptop', 'Acer', 'wont power on', '', '', 0, '2016-02-05 00:04:56', '2016-02-05 00:07:03', 0, 0, '', NULL, 0, NULL, 0, 1, NULL, NULL),
(18, 1, 6, 0, 'Tablet', 'Samsung', 'gone slow', '', '', 0, '2016-02-05 00:06:29', '2016-02-05 00:07:55', 1, 0, '', '2016-02-15 00:07:55', 0, NULL, 0, 1, NULL, NULL),
(19, 2, 70, 0, 'Laptop', 'Lenovo', 'Gone slow', '', '', 0, '2016-02-05 00:08:42', '2016-02-05 00:08:42', 1, 0, NULL, '2016-03-02 00:00:00', NULL, NULL, 0, 1, NULL, NULL),
(20, 1, 31, 0, 'Laptop', 'Acer', 'Add SSD', '', '', 0, '2016-02-05 00:15:21', '2016-02-05 00:15:21', 1, 0, NULL, '2016-04-01 00:00:00', NULL, NULL, 0, 1, NULL, NULL),
(21, 2, 55, 0, 'Laptop', 'Dell', 'Gone slow', '', '', 0, '2016-02-05 00:16:14', '2016-02-05 00:16:14', 1, 0, NULL, '2016-03-22 00:00:00', NULL, NULL, 0, 0, NULL, NULL),
(22, 2, 58, 0, 'Laptop', 'Hp', 'automatically shutting down', '', 'could be malwayre? Password : 12345', 0, '2016-02-05 00:18:33', '2016-02-05 00:18:33', 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL),
(23, 1, 74, 0, 'Laptop', 'Acer', 'Gone slow', '', '', 0, '2016-02-05 00:20:51', '2016-02-05 00:20:51', 1, 0, NULL, '2016-03-08 06:13:21', NULL, NULL, 0, 0, NULL, NULL),
(24, 1, 18, 0, 'Laptop', 'Acer', 'Broke', '', '', 0, '2016-02-05 09:36:00', '2016-02-05 09:36:00', 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL),
(25, 1, 69, 0, 'Laptop', 'Lenovo', 'Add SSD', '', '', 0, '2016-02-05 09:36:46', '2016-02-05 09:36:46', 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL),
(26, 1, 16, 0, 'Laptop', 'HP', 'wont turn of properly ', '', '', 0, '2016-02-05 09:37:46', '2016-02-05 11:11:47', 0, 0, '', NULL, 0, NULL, 0, 0, NULL, NULL),
(27, 1, 1, 0, 'Laptop', 'Acer', 'Very Slow!!!', '', '', 0, '2016-02-05 11:10:46', '2016-04-29 04:34:41', 1, 0, '', NULL, 0, NULL, 1, 0, NULL, NULL),
(28, 1, 28, 0, 'Laptop', 'Hp', 'General cleanup', '', '', 0, '2016-02-05 11:11:23', '2016-02-05 11:11:23', 1, 0, NULL, '2016-03-18 08:16:10', NULL, NULL, 0, 0, NULL, NULL),
(29, 1, 85, 0, 'iPad', 'Apple', 'Wont turn on', '', '', 0, '2016-02-05 11:12:31', '2016-02-05 11:12:31', 1, 0, NULL, '2016-04-03 05:00:00', NULL, NULL, 0, 0, NULL, NULL),
(30, 2, 93, 0, 'Laptop', 'Lenovo', 'check for malwayre', '', '', 0, '2016-02-05 11:13:25', '2016-03-31 17:00:10', 1, 1, '', '2016-04-04 06:07:10', 0, NULL, 0, 0, NULL, NULL),
(31, 1, 81, 0, 'Laptop', 'Apple', 'Gone slow', '', '', 0, '2016-04-06 20:31:36', '2016-04-06 20:31:36', 0, 0, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL),
(32, 1, 125, 0, 'Laptop', 'Samsung', 'Malwayre and gone slow', '', '', 0, '2016-04-07 12:43:11', '2016-04-07 12:43:11', 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL),
(33, 1, 126, 0, 'Laptop', 'Samsung', 'Malwayre and going slow', '', '', 0, '2016-04-07 12:49:34', '2016-04-07 12:51:28', 1, 1, 'complete', '2016-04-08 00:00:00', 0, 20, 0, 0, NULL, NULL),
(34, 1, 1, 0, 'laptop', 'acer', 'favcdfs', '', '', 0, '2016-04-07 16:23:10', '2016-04-07 16:23:10', 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL),
(35, 1, 13, 0, 'laptop', 'lenovo', 'broke', '', '', 0, '2016-04-07 16:33:56', '2016-04-07 16:33:56', 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL),
(36, 1, 36, 0, 'Laptop', 'apple', 'dgs', '', '', 1, '2016-04-07 16:50:51', '2016-04-07 16:50:51', 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL),
(37, 1, 1, 0, 'Laptop', 'acer', 'ad', '', '', 0, '2016-04-07 16:54:33', '2016-04-07 16:54:33', 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL),
(38, 1, 20, 0, 'Laptop', 'Toshiba', 'dfsdg', '', '', 0, '2016-04-07 16:57:29', '2016-04-07 16:57:29', 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL),
(39, 1, 60, 0, 'Laptop', 'HP', 'old and slow', '', 'try and open chrome it never loads ', 1, '2016-04-22 15:30:38', '2016-04-23 20:32:53', 0, 0, '', NULL, 0, NULL, 0, 0, NULL, NULL),
(40, 1, 48, 0, 'PC', 'Acer', 'spilled a cup of tea on keyboard. will need to open dry keyboard', '', 'happened less than an hour before arrival', 0, '2016-04-29 03:49:27', '2016-04-29 03:49:48', 0, 0, '', NULL, 0, NULL, 0, 1, NULL, NULL),
(41, 1, 48, 0, 'PC', 'Samsung', 'spilled a cup of tea on keyboard. will need to open dry keyboard', '', 'happened less than an hour before arrival', 0, '2016-04-29 03:49:28', '2016-04-29 03:49:28', 0, 0, NULL, NULL, 0, NULL, 0, 1, NULL, NULL),
(42, 1, 1, 0, 'PC', 'fddf', 'fd', '', '', 0, '2016-04-29 03:55:03', '2016-04-29 04:53:44', 0, 0, '', NULL, 0, NULL, 1, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `customerId` int(11) DEFAULT NULL,
  `email` varchar(320) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `fName` varchar(50) DEFAULT NULL,
  `sName` varchar(50) DEFAULT NULL,
  `role` varchar(10) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `customerId`, `email`, `password`, `fName`, `sName`, `role`, `created`, `modified`) VALUES
(1, 0, 'cormachallinan123@hotmail.com', '$2y$10$5AxDNXbpTRXozCsB7OnWTeNFN1oOItA56ArN17Sa8YFcv3A5FcZYa', 'Cormac', 'Hallinan', 'admin', '2015-12-02 10:11:55', '2016-02-20 16:26:17'),
(2, 0, 'cormac_hallinan@hotmail.com', '$2y$10$5AxDNXbpTRXozCsB7OnWTeNFN1oOItA56ArN17Sa8YFcv3A5FcZYa', 'John', 'Doe', 'employee', '2015-12-13 21:45:19', '2015-12-29 18:42:36'),
(3, 1, 's00129359@mail.itsligo.ie', '$2y$10$5AxDNXbpTRXozCsB7OnWTeNFN1oOItA56ArN17Sa8YFcv3A5FcZYa', '', NULL, 'customer', NULL, NULL),
(4, NULL, 'cormac@hotmail.com', '$2y$10$Cxw/dor0Y.7OIlptkYhoX.K0UrqDD/HzH97gjaxorlf6VxatLwauy', '', '', 'employee', '2016-03-05 22:11:58', '2016-03-05 22:11:58'),
(5, 120, 'pa@hotmail.com', '$2y$10$1Gy0rHBj3ngosqgEwUvy.OTyoYSkqRUwIuahm8JzGLAzU6lCJ/pfm', NULL, NULL, 'customer', '2016-03-12 22:19:43', '2016-03-12 22:19:43'),
(6, NULL, 'jo@hotmail.com', '$2y$10$a0uYc1Rqb5RSjUrGNtwfiugyAWS2awoCyAwSo5d4okTld3hSAAKti', NULL, NULL, NULL, '2016-03-12 22:27:40', '2016-03-12 22:27:40'),
(7, 122, 'co@hotmail.com', '$2y$10$a0uYc1Rqb5RSjUrGNtwfiugyAWS2awoCyAwSo5d4okTld3hSAAKti', NULL, NULL, 'customer', '2016-03-12 22:30:32', '2016-03-12 22:30:32'),
(8, 123, 'patmato@hotmail.com', '$2y$10$uJ5td9e3XI8zBkxzQ97Hz.2FhSSD.HmelQvwqVGFuoQsCCEJi0xEK', NULL, NULL, 'customer', '2016-03-26 14:09:00', '2016-03-26 14:09:00'),
(9, 124, 'f@mail.di', '$2y$10$2icCdDLUYBKosHv6tjmvSOP/zXpJyhKYll8PCwpghwGocKIv87Q4S', NULL, NULL, 'customer', '2016-04-07 12:32:50', '2016-04-07 12:32:50'),
(10, NULL, 'hello@hotmail.com', '$2y$10$dEqDQ.Z0ca6NM.72YLeZIeLrtH6GnsRLlkZUXkoKQFCONDLgsP6oK', 'new', 'employee', 'admin', '2016-04-07 12:57:19', '2016-04-07 12:57:19'),
(11, NULL, '123@hotmail.com', '$2y$10$Y0JXGx0PWtxE8UmyqAmILeBX95flYbqois.9i3kpyjSqMBLIB186q', '123', '456', 'employee', '2016-04-07 13:00:33', '2016-04-07 13:00:33'),
(12, NULL, 'fsd@hotmail.com', NULL, 'steve', 'long', 'customer', '2016-04-29 03:58:28', '2016-04-29 03:58:28'),
(13, 128, 'gjkg@fd.fd', '$2y$10$i6Grwfy6DJLcGRUrYOnC6.PFh69mL5lLeNOaJtTT4pKucI6decmEK', NULL, NULL, 'customer', '2016-04-29 04:02:56', '2016-04-29 04:02:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Id` (`Id`),
  ADD KEY `Id_2` (`Id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`) USING BTREE,
  ADD KEY `customer_id` (`customer_id`) USING BTREE,
  ADD KEY `customer_id_2` (`customer_id`),
  ADD KEY `item_id_2` (`items_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;
--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `cust_key` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `item_key` FOREIGN KEY (`items_id`) REFERENCES `items` (`Id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
