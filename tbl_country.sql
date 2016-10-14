-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2016-10-14 18:41:17
-- 服务器版本： 10.0.27-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `warranty_ticwear`
--

-- --------------------------------------------------------

--
-- 表的结构 `tbl_country`
--

DROP TABLE IF EXISTS `tbl_country`;
CREATE TABLE IF NOT EXISTS `tbl_country` (
  `id` int(11) NOT NULL COMMENT '序号',
  `country_name` varchar(100) NOT NULL COMMENT '国家名',
  `country_code` int(11) NOT NULL COMMENT '国家编号',
  `position` int(11) DEFAULT NULL COMMENT '显示顺序'
) ENGINE=InnoDB AUTO_INCREMENT=241 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tbl_country`
--

INSERT INTO `tbl_country` (`id`, `country_name`, `country_code`, `position`) VALUES
(1, 'Afghanistan', 93, 0),
(2, 'Albania', 355, 1),
(3, 'Algeria', 213, 2),
(4, 'American Samoa', 1, 3),
(5, 'Andorra', 376, 4),
(6, 'Angola', 244, 5),
(7, 'Anguilla', 1, 6),
(8, 'Antarctica', 672, 7),
(9, 'Antigua and Barbuda', 1, 8),
(10, 'Argentina', 54, 9),
(11, 'Armenia', 374, 10),
(12, 'Aruba', 297, 11),
(13, 'Australia', 61, 12),
(14, 'Austria', 43, 13),
(15, 'Azerbaijan', 994, 14),
(16, 'Bahamas', 1, 15),
(17, 'Bahrain', 973, 16),
(18, 'Bangladesh', 880, 17),
(19, 'Barbados', 1, 18),
(20, 'Belarus', 375, 19),
(21, 'Belgium', 32, 20),
(22, 'Belize', 501, 21),
(23, 'Benin', 229, 22),
(24, 'Bermuda', 1, 23),
(25, 'Bhutan', 975, 24),
(26, 'Bolivia', 591, 25),
(27, 'Bosnia and Herzegovina', 387, 26),
(28, 'Botswana', 267, 27),
(29, 'Brazil', 55, 28),
(30, 'British Indian Ocean Territory', 246, 29),
(31, 'British Virgin Islands', 1, 30),
(32, 'Brunei', 673, 31),
(33, 'Bulgaria', 359, 32),
(34, 'Burkina Faso', 226, 33),
(35, 'Burundi', 257, 34),
(36, 'Cambodia', 855, 35),
(37, 'Cameroon', 237, 36),
(38, 'Canada', 1, 37),
(39, 'Cape Verde', 238, 38),
(40, 'Cayman Islands', 1, 39),
(41, 'Central African Republic', 236, 40),
(42, 'Chad', 235, 41),
(43, 'Chile', 56, 42),
(44, 'China', 86, 43),
(45, 'Christmas Island', 61, 44),
(46, 'Cocos Islands', 61, 45),
(47, 'Colombia', 57, 46),
(48, 'Comoros', 269, 47),
(49, 'Cook Islands', 682, 48),
(50, 'Costa Rica', 506, 49),
(51, 'Croatia', 385, 50),
(52, 'Cuba', 53, 51),
(53, 'Curacao', 599, 52),
(54, 'Cyprus', 357, 53),
(55, 'Czech Republic', 420, 54),
(56, 'Democratic Republic of the Congo', 243, 55),
(57, 'Denmark', 45, 56),
(58, 'Djibouti', 253, 57),
(59, 'Dominica', 1, 58),
(60, 'Dominican Republic', 1, 59),
(61, 'East Timor', 670, 60),
(62, 'Ecuador', 593, 61),
(63, 'Egypt', 20, 62),
(64, 'El Salvador', 503, 63),
(65, 'Equatorial Guinea', 240, 64),
(66, 'Eritrea', 291, 65),
(67, 'Estonia', 372, 66),
(68, 'Ethiopia', 251, 67),
(69, 'Falkland Islands', 500, 68),
(70, 'Faroe Islands', 298, 69),
(71, 'Fiji', 679, 70),
(72, 'Finland', 358, 71),
(73, 'France', 33, 72),
(74, 'French Polynesia', 689, 73),
(75, 'Gabon', 241, 74),
(76, 'Gambia', 220, 75),
(77, 'Georgia', 995, 76),
(78, 'Germany', 49, 77),
(79, 'Ghana', 233, 78),
(80, 'Gibraltar', 350, 79),
(81, 'Greece', 30, 80),
(82, 'Greenland', 299, 81),
(83, 'Grenada', 1, 82),
(84, 'Guam', 1, 83),
(85, 'Guatemala', 502, 84),
(86, 'Guernsey', 44, 85),
(87, 'Guinea', 224, 86),
(88, 'Guinea-Bissau', 245, 87),
(89, 'Guyana', 592, 88),
(90, 'Haiti', 509, 89),
(91, 'Honduras', 504, 90),
(92, 'Hong Kong', 852, 91),
(93, 'Hungary', 36, 92),
(94, 'Iceland', 354, 93),
(95, 'India', 91, 94),
(96, 'Indonesia', 62, 95),
(97, 'Iran', 98, 96),
(98, 'Iraq', 964, 97),
(99, 'Ireland', 353, 98),
(100, 'Isle of Man', 44, 99),
(101, 'Israel', 972, 100),
(102, 'Italy', 39, 101),
(103, 'Ivory Coast', 225, 102),
(104, 'Jamaica', 1, 103),
(105, 'Japan', 81, 104),
(106, 'Jersey', 44, 105),
(107, 'Jordan', 962, 106),
(108, 'Kazakhstan', 7, 107),
(109, 'Kenya', 254, 108),
(110, 'Kiribati', 686, 109),
(111, 'Kosovo', 383, 110),
(112, 'Kuwait', 965, 111),
(113, 'Kyrgyzstan', 996, 112),
(114, 'Laos', 856, 113),
(115, 'Latvia', 371, 114),
(116, 'Lebanon', 961, 115),
(117, 'Lesotho', 266, 116),
(118, 'Liberia', 231, 117),
(119, 'Libya', 218, 118),
(120, 'Liechtenstein', 423, 119),
(121, 'Lithuania', 370, 120),
(122, 'Luxembourg', 352, 121),
(123, 'Macau', 853, 122),
(124, 'Macedonia', 389, 123),
(125, 'Madagascar', 261, 124),
(126, 'Malawi', 265, 125),
(127, 'Malaysia', 60, 126),
(128, 'Maldives', 960, 127),
(129, 'Mali', 223, 128),
(130, 'Malta', 356, 129),
(131, 'Marshall Islands', 692, 130),
(132, 'Mauritania', 222, 131),
(133, 'Mauritius', 230, 132),
(134, 'Mayotte', 262, 133),
(135, 'Mexico', 52, 134),
(136, 'Micronesia', 691, 135),
(137, 'Moldova', 373, 136),
(138, 'Monaco', 377, 137),
(139, 'Mongolia', 976, 138),
(140, 'Montenegro', 382, 139),
(141, 'Montserrat', 1, 140),
(142, 'Morocco', 212, 141),
(143, 'Mozambique', 258, 142),
(144, 'Myanmar', 95, 143),
(145, 'Namibia', 264, 144),
(146, 'Nauru', 674, 145),
(147, 'Nepal', 977, 146),
(148, 'Netherlands', 31, 147),
(149, 'Netherlands Antilles', 599, 148),
(150, 'New Caledonia', 687, 149),
(151, 'New Zealand', 64, 150),
(152, 'Nicaragua', 505, 151),
(153, 'Niger', 227, 152),
(154, 'Nigeria', 234, 153),
(155, 'Niue', 683, 154),
(156, 'North Korea', 850, 155),
(157, 'Northern Mariana Islands', 1, 156),
(158, 'Norway', 47, 157),
(159, 'Oman', 968, 158),
(160, 'Pakistan', 92, 159),
(161, 'Palau', 680, 160),
(162, 'Palestine', 970, 161),
(163, 'Panama', 507, 162),
(164, 'Papua New Guinea', 675, 163),
(165, 'Paraguay', 595, 164),
(166, 'Peru', 51, 165),
(167, 'Philippines', 63, 166),
(168, 'Pitcairn', 64, 167),
(169, 'Poland', 48, 168),
(170, 'Portugal', 351, 169),
(171, 'Puerto Rico', 1, 170),
(172, 'Qatar', 974, 171),
(173, 'Republic of the Congo', 242, 172),
(174, 'Reunion', 262, 173),
(175, 'Romania', 40, 174),
(176, 'Russia', 7, 175),
(177, 'Rwanda', 250, 176),
(178, 'Saint Barthelemy', 590, 177),
(179, 'Saint Helena', 290, 178),
(180, 'Saint Kitts and Nevis', 1, 179),
(181, 'Saint Lucia', 1, 180),
(182, 'Saint Martin', 590, 181),
(183, 'Saint Pierre and Miquelon', 508, 182),
(184, 'Saint Vincent and the Grenadines', 1, 183),
(185, 'Samoa', 685, 184),
(186, 'San Marino', 378, 185),
(187, 'Sao Tome and Principe', 239, 186),
(188, 'Saudi Arabia', 966, 187),
(189, 'Senegal', 221, 188),
(190, 'Serbia', 381, 189),
(191, 'Seychelles', 248, 190),
(192, 'Sierra Leone', 232, 191),
(193, 'Singapore', 65, 192),
(194, 'Sint Maarten', 1, 193),
(195, 'Slovakia', 421, 194),
(196, 'Slovenia', 386, 195),
(197, 'Solomon Islands', 677, 196),
(198, 'Somalia', 252, 197),
(199, 'South Africa', 27, 198),
(200, 'South Korea', 82, 199),
(201, 'South Sudan', 211, 200),
(202, 'Spain', 34, 201),
(203, 'Sri Lanka', 94, 202),
(204, 'Sudan', 249, 203),
(205, 'Suriname', 597, 204),
(206, 'Svalbard and Jan Mayen', 47, 205),
(207, 'Swaziland', 268, 206),
(208, 'Sweden', 46, 207),
(209, 'Switzerland', 41, 208),
(210, 'Syria', 963, 209),
(211, 'Taiwan', 886, 210),
(212, 'Tajikistan', 992, 211),
(213, 'Tanzania', 255, 212),
(214, 'Thailand', 66, 213),
(215, 'Togo', 228, 214),
(216, 'Tokelau', 690, 215),
(217, 'Tonga', 676, 216),
(218, 'Trinidad and Tobago', 1, 217),
(219, 'Tunisia', 216, 218),
(220, 'Turkey', 90, 219),
(221, 'Turkmenistan', 993, 220),
(222, 'Turks and Caicos Islands', 1, 221),
(223, 'Tuvalu', 688, 222),
(224, 'U.S. Virgin Islands', 1, 223),
(225, 'Uganda', 256, 224),
(226, 'Ukraine', 380, 225),
(227, 'United Arab Emirates', 971, 226),
(228, 'United Kingdom', 44, 227),
(229, 'United States', 1, 228),
(230, 'Uruguay', 598, 229),
(231, 'Uzbekistan', 998, 230),
(232, 'Vanuatu', 678, 231),
(233, 'Vatican', 379, 232),
(234, 'Venezuela', 58, 233),
(235, 'Vietnam', 84, 234),
(236, 'Wallis and Futuna', 681, 235),
(237, 'Western Sahara', 212, 236),
(238, 'Yemen', 967, 237),
(239, 'Zambia', 260, 238),
(240, 'Zimbabwe', 263, 239);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_country`
--
ALTER TABLE `tbl_country`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_country`
--
ALTER TABLE `tbl_country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',AUTO_INCREMENT=241;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
