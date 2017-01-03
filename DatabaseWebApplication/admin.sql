-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2017 at 04:03 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `password` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(1, 'nawakarn', 1234),
(2, 'golfzaptw', 1234);

-- --------------------------------------------------------

--
-- Table structure for table `aorder`
--

CREATE TABLE `aorder` (
  `idOrder` int(11) NOT NULL,
  `up_userId` int(20) NOT NULL,
  `up_nameUser` varchar(500) CHARACTER SET utf16 NOT NULL,
  `up_addressUser` varchar(1000) CHARACTER SET utf16 NOT NULL,
  `up_telUser` varchar(20) CHARACTER SET utf16 NOT NULL,
  `up_timeUser` varchar(100) CHARACTER SET utf16 NOT NULL,
  `up_productId` varchar(1000) CHARACTER SET utf16 NOT NULL,
  `up_Status` tinyint(1) NOT NULL,
  `up_bank` varchar(50) CHARACTER SET utf16 NOT NULL,
  `EMS` varchar(200) CHARACTER SET utf16 NOT NULL,
  `other` mediumtext CHARACTER SET utf16 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aorder`
--

INSERT INTO `aorder` (`idOrder`, `up_userId`, `up_nameUser`, `up_addressUser`, `up_telUser`, `up_timeUser`, `up_productId`, `up_Status`, `up_bank`, `EMS`, `other`) VALUES
(1, 19, 'นัทธพงศ์ ปัตโชติชัย', '393/160', '0857110853', '28-07-2016', '40,10,', 1, 'BK', 'E1234567890', 'อิดอก\r\n'),
(2, 19, 'นัทธพงศ์ ปัตโชติชัย', '393/160', '0857110853', '17-08-2016', '40,1,', 1, 'BK', 'ems01111', 'Moooo');

-- --------------------------------------------------------

--
-- Table structure for table `fb`
--

CREATE TABLE `fb` (
  `id` int(11) NOT NULL,
  `fbid` varchar(100) CHARACTER SET utf16 NOT NULL,
  `name` varchar(50) CHARACTER SET utf16 NOT NULL,
  `studentID` int(10) NOT NULL,
  `statusID` int(11) NOT NULL,
  `claim` int(11) NOT NULL,
  `idName` varchar(200) CHARACTER SET utf16 NOT NULL,
  `formal` varchar(50) CHARACTER SET utf16 NOT NULL,
  `teacher` int(11) NOT NULL,
  `link` varchar(200) CHARACTER SET utf16 NOT NULL DEFAULT '0',
  `nickName` varchar(100) CHARACTER SET utf16 NOT NULL,
  `bd` varchar(100) CHARACTER SET utf16 NOT NULL,
  `sex` varchar(20) CHARACTER SET utf16 NOT NULL,
  `year` int(11) NOT NULL DEFAULT '1',
  `email` varchar(100) CHARACTER SET utf16 NOT NULL,
  `address` varchar(100) CHARACTER SET utf16 NOT NULL,
  `tel` varchar(15) CHARACTER SET utf16 NOT NULL,
  `colorProfile` varchar(200) NOT NULL DEFAULT 'blue'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fb`
--

INSERT INTO `fb` (`id`, `fbid`, `name`, `studentID`, `statusID`, `claim`, `idName`, `formal`, `teacher`, `link`, `nickName`, `bd`, `sex`, `year`, `email`, `address`, `tel`, `colorProfile`) VALUES
(36, '1001402006612640', 'Keattisak Phompoung', 57022220, 1, 1, 'à¹€à¸à¸µà¸¢à¸£à¸•à¸´à¸¨à¸±à¸à¸”à¸´à¹Œ à¸žà¸¸à¹ˆà¸¡à¸žà¸§à¸‡', 'à¸™à¸²à¸¢', 0, '0', 'à¹€à¸™à¹‡à¸•', '27/11/2538', 'à¸Šà¸²à¸¢', 4, 'keattisak.phompoung@gmail.com', '6/3 à¸•.à¸™à¹‰à¸³à¸”à¸´à¸š à¸­.à¸›à¹ˆà¸‹à¸²à¸‡ à¸ˆ.à¸¥à¸³à¸žà¸¹à¸™', '0958157395', 'orange'),
(37, '1038164612925792', 'Pongv Asac', 57022433, 1, 1, 'à¸¡à¸‡à¸„à¸¥ à¸¡à¸“à¸µà¸§à¸£à¸£à¸“à¹Œ', 'à¸™à¸²à¸¢', 2, 'https://www.facebook.com/?stype=lo&jlou=AffsAUUmqDh4TXE7s-05tfjcbfNub3XbIHix0wLOxU28xasvAHF5agCCAjw5pKde97RfjNb6DcrZ9MmkyWSES9H_uYjrb3oqnw7jCyJ2cN8zHQ&smuh=17313&lh=Ac__StI2Z5PqVoiL', 'à¸žà¸·à¸Š', '16/06/2539', 'à¸Šà¸²à¸¢', 6, '-', '-', '-', 'orange'),
(44, '1063387353720754', 'à¸žà¸·à¸Š à¸žà¸·à¸Š', 57022433, 1, 1, 'à¸žà¸‡à¸©à¹Œà¸§à¸£à¸´à¸©à¸à¹Œ  à¸¡à¸“à¸µà¸§à¸£à¸£à¸“à¹Œ', 'à¸™à¸²à¸¢', 0, '0', 'à¸žà¸·à¸Š', '2539-05-16', 'à¸Šà¸²à¸¢', 3, 'pongvarid@gmail.com', '161 à¸¡.1 à¸•.à¹à¸ªà¸™à¸•à¸­ à¸­.à¸‚à¸²à¸“à¸¸à¸§à¸£à¸¥à¸±à¸à¸©à¸šà¸¸à¸£à¸µ à¸ˆà¸±à¸‡à¸«à¸§à¸±à¸”à¸', '0988203979', 'blue');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `UserID` int(3) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Email` varchar(150) NOT NULL,
  `Status` enum('ADMIN','USER') NOT NULL DEFAULT 'USER',
  `SID` varchar(32) NOT NULL,
  `Active` enum('Yes','No') NOT NULL DEFAULT 'No'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`UserID`, `Username`, `Password`, `Name`, `Email`, `Status`, `SID`, `Active`) VALUES
(1, 'win', 'win123', 'Weerachai Nukitram', 'is_php@hotmail.com', 'USER', 'fb8d397fe980c10c84f0c77e1749c3f0', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `d_id` int(10) NOT NULL,
  `o_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `d_qty` int(11) NOT NULL,
  `d_subtotal` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`d_id`, `o_id`, `p_id`, `d_qty`, `d_subtotal`) VALUES
(1, 1, 3, 2, 100),
(2, 1, 1, 1, 50),
(3, 1, 4, 2, 100);

-- --------------------------------------------------------

--
-- Table structure for table `order_head`
--

CREATE TABLE `order_head` (
  `o_id` int(10) NOT NULL,
  `o_dttm` datetime NOT NULL,
  `o_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `o_addr` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `o_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `o_phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_head`
--

INSERT INTO `order_head` (`o_id`, `o_dttm`, `o_name`, `o_addr`, `o_email`, `o_phone`) VALUES
(1, '2017-01-03 15:40:10', 'Nawakarn', 'ggg', 'softwareenginerr@up.ac.th', '012-3456789');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(30) CHARACTER SET utf16 NOT NULL,
  `price` int(11) NOT NULL,
  `pic_name` varchar(200) CHARACTER SET utf16 NOT NULL,
  `status` varchar(10) CHARACTER SET utf16 NOT NULL,
  `count` int(10) NOT NULL,
  `other` mediumtext CHARACTER SET utf16 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `pic_name`, `status`, `count`, `other`) VALUES
(45, 'Whitening Night Skin Care ', 390, '13720778_1125020727520445_2091529346_n.png', 'hot.png', 0, 'Whitening Night Skin Care ( 12 กรัม )\r\n\r\n\r\n( ครีมบำรุงลดรอยแดงสิว ป้องการกันติดเชื้อของสิว ลดการอักเสบของผิวหนังบนใบหน้า ฟื้นฟูผิวให้กระจ่างใส )\r\n\r\nราคา 390 บาท \r\nใช้ได้ 1 เดือน ใช้ได้ 1 เดือน 390/30=13 ตกวันละ 13 บาท \r\nการลงทุนที่คุ้มค่าา !! \r\n\r\n#ส่วนประกอบ\r\n\r\nสารสกัดจากรังนก \r\n\r\nช่วยให้เซลล์ผิวตอบรับการบำรุงต่างๆ ได้อย่างเต็มที่ ช่วยในการซึมสู้ชั้นผิวได้เร็วขึ้น ทำหน้าที่เป็นสารตั้งต้นในการฟื้นฟูเซลล์ผิว ลดเลือนริ้วรอยต่างๆ สมานแผลได้เป็นอย่างดี ชะลอการเสื่อมสภาพของเซลล์ผิวและริ้วรอยแห่งวัยได้เป็นอย่าง\r\n\r\nHYALURONIC ACID\r\n\r\nซ่อมแซมเซลล์ผิวที่ถูกทำลาย และเร่งขบวนการหายของแผล มีคุณสมบัติอุ้มน้ำได้ดีมาก ลดการสร้างอนุมูลอิสระและช่วยกรองรังสี UV\r\n\r\nStearic Acid \r\n\r\nกรดสเตียริก เป็นสารที่เกิดไขมันและน้ำมันจากสัตว์จึงค่อนข้างปลอดภัย มีคุณสมบัติช่วยสร้างความนุ่มนวล ลื่น เป็นประกายแวววาว\r\n\r\nกลีเซอรีนคือแอลกอฮอล์ (Alcohol) \r\n\r\nชนิดหนึ่ง เป็นของเหลวที่ไม่มีสี ไม่มีกลิ่น มีความหนืด และมีรสหวาน โดยปกติมาจากน้ำมันของพืช ซึ่งโดยทั่วไปคือ น้ำมันมะพร้าว และน้ำมันปาล์ม กลีเซอรีนสามารถละลายได้ดีในแอลกอฮอล์และน้ำ แต่ไม่ละลายในไขมัน สามารถฆ่าเชื้อแบคทีเรียบางชนิดได้\r\n\r\n\r\nAllantoin \r\n\r\nทำหน้าที่ ลด การระคายเคือง ต่อต้านการแพ้ต่างๆของผิว และเสริมสร้างการสร้างเนื้อเยื่อ ที่สมบูรณ์ขึ้นมาใหม่ ปลอดภัยและไร้ผลข้างเคียงสามารถใช้ได้แม้ในผลิตภัณฑ์สำหรับเด็กทารก นอกจากนี้ยังสามารถใช้ในผลิตภัณฑ์ดูแลเส้นผมและหนังศรีษะ ยับยั้งการเกิดรังแคบนหนังศีรษะ การซ่อมแซมหนังศรัษะที่ถูกสารเคมี หรือแสง UV\r\n\r\nMorus Alba Root Extract สารสกัดจากรากหม่อน\r\n\r\nสารสกัดจากรากหม่อน มีคุณสมบัติต้านอนุมูลอิสระ ออกฤทธิ์ยับยั้งเอนไซม์ tyrosinase ซึ่งเกี่ยวข้องในขบวนการสร้างเม็ดสีที่ผิวหนัง ลดความหมองคล้ำบนใบหน้า รวมทั้ง ฝ้า กระ และจุดด่างดำให้จางลงอย่างเห็นได้ชัด ป้องกันไม่ให้ผิวสูญเสียน้ำ ช่วยชะลอการเกิดริ้วรอยก่อนวัย ลดการอักเสบ ช่วยผลัดเซลล์ผิวที่เสื่อมสภาพ เผยผิวใหม่ที่สุขภาพดี\r\n\r\nKojic Acid\r\n\r\nเป็นผลพลอยได้ที่มาจากกระบวนการหมักบ่มสาเก ซึ่งมีประสิทธิภาพในการช่วยลดเลือนจุดด่างดำได้เป็นอย่างดี มีประสิทธิภาพในการลดเลือนเมลานินได้ถึง 60 % ใน 12 สัปดาห์\r\n\r\nNiacinamide\r\n\r\nกับการรักษาสิว การใช้สารฆ่าเชื้อในการรักษาสิว โดยทั่วไปอาจทำให้เกิดการระคายเคืองหรือแบคทีเรียเกิดการดื้อยาได้ จากการศึกษาของ Shalita Colleagues แสดงให้เห็นว่า Niacinamide 4% มีประสิทธิภาพในการรักาสิวเช่นเดียวกับการใช้ยา Clindamycin 1% และให้ประสิทธิภาพที่ดีกว่าด้วย\r\nนอกจากนี้ Niacinamide ยังช่วยเรื่องการต่อต้านอนุมูลอิสระ และยังช่วยลดการระคายเคืองอีกด้วยช่วยเพิ่ม fibrobrast และ collagen จึงเป็นสารที่ใช้ช่วยชลอริ้วรอยในผิวหนัง ช่วยทำให้ผิวขาว และมีสีผิวสม่ำเสมอ แสงแดดเป็นสาเหตุหลักอันหนึ่งที่ทำให้เกิดการสร้างเม็ดสีในผิวหนังมากกว่าปกติ (hyperpigmentation) โดย Melanocyte จะผลิต Melanosome ซึ่งมี melanin อยู่ภายใน แล้วปล่อยเข้าไปใน keratinocyte ที่อยู่รอบ ๆ จากนั้น keratinocyte ที่เคลื่อนสู่ผิวชั้นบนของหนังกำพร้า ไม่มีเม็ดสีที่มากผิดปกติ ผิวจึงดูขาว กระจ่างใส มีสีผิวสม่ำเสมอ เพิ่มความชุ่มชื้นให้กับผิว ชลอริ้วรอย เมื่อผิวเกิดริ้วรอยและเริ่มสูญเสียความยืดหยุ่น\r\n\r\n\r\nTocopherol\r\n\r\nช่วยลดอัตราการทำลายของแสงแดด ที่ทำให้เกิดรอยแดง\r\nลดอัตราการเกิดมะเร็งผิวหนังจากแสงแดด \r\nช่วยชลอความชราภาพของผิว ลดริ้วรอยเหี่ยวย่น แตกลาย\r\nการให้ความชุ่มชื้นและ ลดความหยาบกร้านของผิวพรรณ\r\n\r\nVitis vinifera (Grape) Callus Extract\r\n\r\nสามารถปกป้องสเต็มเซลของผิวจากการทำลายของรังสี UV ได้เป็นอย่างดีชะลอความชราของสเต็มเซลของผิว ซึ่งถือว่าเป็นเซลที่มีความสำคัญ ต่อสู้ กับ การเกิด photo-aging ซึ่งเป็นการทำลายผิวโดยการสัมผัสกับรังสี UV ต่อเนื่องกันเป็นเวลานาน ซี่ง photo-aging นั้น มีผลเร่งให้ผิวเกิดริ้วรอยได้เร็วขึ้น สารสกัดสเต็มเซลจากผลองุ่นมีผลต่อการเพิ่มขึ้นของ (CFE ) ของสเต็มเซลของผิว เมื่อ สเต็ม เซลของผิวที่ผ่านการใช้สารสกัดสเต็มเซลจากผลองุ่น สัมผัสกับรังสี UV พบว่าสามารถขัดขวางการทำลายสเต็มเซลของผิวได้อย่างสมบูรณ์แบบ \r\n\r\nJojoba oil \r\n\r\nมีสารคุณสมบัติเป็น Collagen ชนิดเดียวกับผิว ช่วยขจัดน้ำมันบนใบหน้าและสิวเสี้ยน สามารถนำไปล้างเครื่องสำอางบนใบหน้าได้ดีเยี่ยม และยังช่วยลดรอยแผลเป็นให้จางลงได้ ใช้บำรุงผิว ล้างเครื่องสำอาง และมีสารกันแดด SPF น้ำมันโจโจบามีคุณสมบัติพิเศษคือไม่ก่อให้เกิดปฏิกิริยาออกซิเดชั่นกับออกซิเจนในอากาศ จึงไม่มีกลิ่นเหม็นหืน และยังช่วยบำรุงให้ผิวชุ่มชื่น ช่วยโอบอุ้มน้ำใต้ผิวเปรียบเสมือนการสร้างเกราะป้องกันธรรมชาติให้ผิว\r\n\r\nVitamin C ผิวขาว\r\n\r\nมีสรรพคุณลดอาการอักเสบ ช่วยกระตุ้นการสร้างคอลลาเจนที่ผิวหนัง และยังช่วยลดการทำงานของเอนไซม์ที่ผลิตเม็ดสีผิว จึงช่วยในการลดริ้วรอย จุดด่างดำจากรอยแผลเป็น และรอยสิวต่างๆปรับสีผิวที่คล้ำจากแสงแดดให้ดูกระจ่างใสมากขึ้น ช่วยสมานแผลหายเร็วขึ้น เนื่องจากวิตามินซีช่วยให้ร่ายกายซ่อมแซมและรักษาตัวเองโดยไปเสริมสร้างผนังเซลล์ ทำให้เส้นเลือดฝอยแข็งแรง แผลจึงหายได้เร็วขึ้น \r\n\r\n\r\nสารกลูตาไธโอน\r\n\r\nเป็นโปรตีนชนิดหนึ่ง ประกอบด้วยกรดอมิโนที่สำคัญ 3 ชนิดรวมตัวกันอยู่ คือ ซิสเตอิน (Cystein) ไกลซิน (Glycine) และ กลูตาเมท (Glutamate) \r\nช่วยกระตุ้นการสร้างและซ่อมแซม ‘เซลล์และดีเอนเอที่สึกหรอ นับเป็นกุญแจสำคัญในการสังเคราะห์โปรตีนและไขมัน กระตุ้นการทำงานของเอ็นไซม์ชนิดต่างๆ\r\n\r\n#รีวิวสินค้า\r\nhttps://www.facebook.com/OurCrystal/posts/176566122759244\r\n\r\nสั่งซื้อ\r\n\r\nFacebook: fb.me/OurCrystal \r\nInbox: m.me/OurCrystal \r\nLine:http://line.me/ti/p/%40dms2484m'),
(44, 'Whitening Day SPF 50++', 390, '12329735_1344826662212351_1531800574_n.png', 'hot.png', 0, '1.Whitening Day SPF 50++ ( 12 กรัม )\r\n( "กันแดด+บำรุง 2In1" ฆ่าเชื้อแบคทีเรียที่เป็นต้นตอของสิว ช่วยให้ใบหน้าเนียนใส ลดความมันพร้อมปรับสมดุลให้ผิวหน้าชุ่มชื้น )\r\n\r\nราคา 390 บาท\r\nใช้ได้ 1 เดือน 390/30=13 ตกวันละ 13 บาท \r\nการลงทุนเพื่อใบหน้าที่คุ้มค่าา !!\r\n\r\nEMS เพิ่ม 50 บาท\r\n\r\n#ส่วนประกอบ\r\n\r\nสารสกัดจากรังนก \r\n\r\nช่วยให้เซลล์ผิวตอบรับการบำรุงต่างๆ ได้อย่างเต็มที่ ช่วยในการซึมสู่ชั้นผิวได้เร็วขึ้น ทำหน้าที่เป็นสารตั้งต้นในการฟื้นฟูเซลล์ผิว \r\nลดเลือนริ้วรอยต่างๆ สมานแผลได้เป็นอย่างดี ชะลอการเสื่อมสภาพของเซลล์ผิวและริ้วรอยแห่งวัย\r\n\r\nVitamin C ผิวขาว\r\n\r\nมีสรรพคุณลดอาการอักเสบ ช่วยกระตุ้นการสร้างคอลลาเจนที่ผิวหนัง และยังช่วยลดการทำงานของเอนไซม์ที่ผลิตเม็ดสีผิว จึงช่วยในการลดริ้วรอย จุดด่างดำจากรอยแผลเป็น และรอยสิวต่างๆปรับสีผิวที่คล้ำจากแสงแดดให้ดูกระจ่างใสมากขึ้น ช่วยสมานแผลหายเร็วขึ้น เนื่องจากวิตามินซีช่วยให้ร่ายกายซ่อมแซมและรักษาตัวเองโดยไปเสริมสร้างผนังเซลล์ ทำให้เส้นเลือดฝอยแข็งแรง แผลจึงหายได้เร็วขึ้น \r\n\r\nกรดไฮยาลูโร \r\n\r\nช่วยให้ผิวหนังสามารถกักเก็บความชุ่มชื่นได้มากกว่าปรกติ โดยที่ไม่เพิ่มความมันแบบไม่ดี บนผิวชั้นนอก เมื่อผิวหน้าชุ่มชื่นที่ดีเพียงพอ ผิวหน้าก็จะดูอ่อนกว่าเยาว์ และ กรดไฮยาลูรอนิคยังช่วยให้รักษาอาการบาดเจ็บของเซลล์ผิวหนังได้ เร็วกว่าเดิม 80% อีกด้วย นั่นหมายความว่าผิวสามารถที่จะสมานและฟื้นฟูตัวเองได้เร็วขึ้น \r\n\r\nTitanium Dioxide (TiO2)\r\n\r\nสามารถสะท้อนแดดได้ทั้ง UVA, UVB, Visible Light และ Infrared Light สารพวกนี้สามารถดูดซึมเข้าผิวหนังน้อยมาก ทำให้ไม่ค่อยเกิดอาการแพ้ แต่จะทำให้เกิดการทึบ แสง (ใบหน้าจะขาววอกนั่นเอง) แต่ในปัจจุบันจะมีตัวยา Micronized Titanium Dioxide เพิ่มเข้ามา เมื่อทาแล้วเกือบๆ จะเป็น Transparent ที่ไม่ทำให้หน้าวอกนั่นเอง\r\n\r\nNano Zinc Cote\r\n\r\nกลไกการออกฤทธิ์ของยาซิงค์ ออกไซด์คือ เป็นยาที่ส่งเสริมการสมานผิวหนัง ปกป้องผิวจากความร้อนและความเปียกชื้น รวมถึงช่วยต่อต้านเชื้อโรคได้ระดับหนึ่งเป็นสารอนุภาคเล็กมากระดับนาโนเมตรที่ได้จากแร่ธาตุทางธรรมชาติ กระจายคลุมผิวดี บางเบา และเกลี่ยง่าย ทำหน้าที่สะท้อนแดด และกระจายแดดที่ตกกระทบหน้าไม่ให้ลงไปสัมผัสผิวโดยตรง ปกป้องผิวจากรังสี UV-B ต้นเหตุของผิวเกรียมไหม้ ดำคล้ำและ UV-A ต้นเหตุของการเกิดการเหี่ยวย่นแก่ก่อนวัย และมะเร็งผิวหนัง\r\n\r\nCyclomethicone \r\n\r\nช่วยนำพาสาร active เข้าสู่ผิวหนังมีคุณสมบัติพิเศษคือไม่เหนอะหนะและให้ความรู้สึกนุ่มลื่น เมื่อใช้บนผิว\r\n\r\n\r\nสารกลูตาไธโอน\r\n\r\nเป็นโปรตีนชนิดหนึ่ง ประกอบด้วยกรดอมิโนที่สำคัญ 3 ชนิดรวมตัวกันอยู่ คือ ซิสเตอิน (Cystein) ไกลซิน (Glycine) และ กลูตาเมท (Glutamate) \r\nช่วยกระตุ้นการสร้างและซ่อมแซม ‘เซลล์และดีเอนเอที่สึกหรอ นับเป็นกุญแจสำคัญในการสังเคราะห์โปรตีนและไขมัน กระตุ้นการทำงานของเอ็นไซม์ชนิดต่างๆ\r\n\r\nสารสกัดจากใบบัวบก หรือ Centella asiatica\r\n\r\nมีฤทธิ์ในการยับยั้งอนุมูลอิสระลดรอย หมองคล้ำ รอยด่างดำของผิว รอยแดง รอยแผลเป็นต่างๆ ลดอาการบวมช้ำ โดยเฉาะรอยคล้ำใต้ตา จะเลือนหายไปในเวลาอันรวดเร็ว กระตุ้นการสร้าง collagen และ elastin ในชั้นผิวได้ดีเยี่ยมไม่แพ้สารอื่นๆ ซ่อมแซมเซลล์ผิวที่สึกหรอ ช่วยรักษาแผล มีฤทธิ์ฆ่าเชื้อแบคทีเรียที่ทำให้เกิดหนอง ฆ่าเชื้อรา ลดการอักเสบของแผล สร้างเซลล์ผิวใหม่ทำให้รอยแผลเป็นมีขนาดเล็กลง ยับยั้งกระบวนการเกิดแผลเป็นชนิดนูน ซึ่งทำให้ผิวมีความยืดหยุ่นและตึงกระชับ ลบริ้วรอยเหี่ยวย่นนอกจากนั้นในใบบัวบกยังมีสารที่เป็นตัวช่วยในการสมานแผล ซึ่งเป็นตัวเร่งให้เนื้อเยื่อทำงานได้เต็มที่สมานกันได้ดี และที่สำคัญคือมีฤทธิ์เป็น Anti-oxidant ที่สูงกว่าวิตามิน E ถึง 5 เท่า\r\n\r\nคอลลาเจนหรือ เคราติน\r\n\r\nเคราตินมีหน้าที่สร้างความแข็งแรงและความยืดหยุ่น เมื่อสารเคราตินในชั้นผิวลดลง จึงเกิดริ้วรอย (wringkle) บนชั้นผิว, นอกจากนี้ เคราตินมีหน้าที่สร้างความยืดหยุ่นให้ผนังหลอดเลือด มีส่วนช่วยในการสร้างเนื้อเยื่อใหม่ รวมทั้งยังเป็นส่วนประกอบของเยื่อกระจกตาและเลนส์ตาด้วย\r\n\r\nกลีเซอรีน คือแอลกอฮอล์ (Alcohol)\r\n\r\nชนิดหนึ่ง เป็นของเหลวที่ไม่มีสี ไม่มีกลิ่น มีความหนืด และมีรสหวาน โดยปกติมาจากน้ำมันของพืช ซึ่งโดยทั่วไปคือ น้ำมันมะพร้าว และน้ำมันปาล์ม กลีเซอรีนสามารถละลายได้ดีในแอลกอฮอล์และน้ำ แต่ไม่ละลายในไขมัน สามารถฆ่าเชื้อแบคทีเรียบางชนิดได้\r\n\r\n\r\nสารสกัดหม่อน (ใบ) (Mulberry extract) \r\n\r\nคืนความชุ่มชื้นให้แก่เซลล์ผิว บำรุงผิวให้นุ่ม ลบเลือนริ้วรอย และจุดด่างดำบนผิวหน้าได้\r\nZinc oxide ยาซิงค์ ออกไซด์ \r\nมีสรรพคุณบรรเทาอาการระคายเคืองของผิวหนัง ลมพิษ ผื่นคัน อันมีสาเหตุจากแมลงกัดต่อย ความร้อน รอยขีดข่วน รวมถึงอาการแพ้พืช กลไกการออกฤทธิ์ของยาซิงค์ ออกไซด์คือ เป็นยาที่ส่งเสริมการสมานผิวหนัง ปกป้องผิวจากความร้อนและความเปียกชื้น รวมถึงช่วยต่อต้านเชื้อโรคได้ระดับหนึ่ง\r\nสารสกัด ว่านหางจรเข้ (น้ำ) (Aloe Vera Extract)\r\nช่วยกระชับรูขุมขน บำรุงผิวพรรณให้ชุ่มชื้น ลดอาการอักเสบของผิว ทำให้ผิวหนังอุ้มน้ำและดูดซึมน้ำได้ดี กระตุ้นการสร้างคอลลาเจน ลดเลือดริ้มรอยจุดด่างดำต่างๆ และมีคุณสมบัติในการฆ่าเชื้อแบคทีเรีย\r\n\r\n\r\nJojoba oil \r\n\r\nมีสารคุณสมบัติเป็น Collagen ชนิดเดียวกับผิว ช่วยขจัดน้ำมันบนใบหน้าและสิวเสี้ยน สามารถนำไปล้างเครื่องสำอางบนใบหน้าได้ดีเยี่ยม และยังช่วยลดรอยแผลเป็นให้จางลงได้ ใช้บำรุงผิว ล้างเครื่องสำอาง และมีสารกันแดด SPF น้ำมันโจโจบามีคุณสมบัติพิเศษคือไม่ก่อให้เกิดปฏิกิริยาออกซิเดชั่นกับออกซิเจนในอากาศ จึงไม่มีกลิ่นเหม็นหืน และยังช่วยบำรุงให้ผิวชุ่มชื่น ช่วยโอบอุ้มน้ำใต้ผิวเปรียบเสมือนการสร้างเกราะป้องกันธรรมชาติให้ผิว\r\n\r\n\r\nคามู คามู\r\n\r\n(Camu-camu) เป็นพืชในวงศ์ตระกูล Myrtaceae มีประเภทเป็นหรือไม้ต้นขนาดเล็ก มีการกระจายตัวอยู่อาณาบริเวณที่น้ำท่วมถึงในประเทศบราซิล ไปจนกระทั่งถึงประเทศเปรู ใช้บรรเทาแผลเป็น\r\n\r\n\r\nTitanium Dioxide \r\n\r\nความสามารถในการต้านแบคทีเรีย ไม่เพียงแต่ฆ่าแบคทีเรีย (Bacteria) ได้เท่านั้น แต่ยังช่วยในการย่อยสลายซากของมันด้วย เพราะTitanium Dioxide ที่เป็นสารเร่งปฏิกิริยาด้วยแสงนั้น \r\nมีประสิทธิภาพสูงกว่าสารต้านแบคทีเรียชนิดอื่น ๆ \r\nเนื่องจากปฏิกิริยาจะทำงานเมื่อมีเซลล์แบคทีเรียสัมผัสกับพื้นผิว\r\n<img src="#ใส่ลิ้งรูปที่นี่#" class="img-responsive" >');

-- --------------------------------------------------------

--
-- Table structure for table `product_order`
--

CREATE TABLE `product_order` (
  `idOrder` int(20) NOT NULL,
  `up_userId` int(20) NOT NULL,
  `up_nameUser` varchar(500) CHARACTER SET utf16 NOT NULL,
  `up_addressUser` varchar(1000) CHARACTER SET utf16 NOT NULL,
  `up_telUser` varchar(20) CHARACTER SET utf16 NOT NULL,
  `up_timeUser` varchar(100) CHARACTER SET utf16 NOT NULL,
  `up_productId` varchar(1000) CHARACTER SET utf16 NOT NULL,
  `up_Status` tinyint(1) NOT NULL,
  `up_bank` varchar(50) CHARACTER SET utf16 NOT NULL,
  `EMS` varchar(200) CHARACTER SET utf16 NOT NULL,
  `other` mediumtext CHARACTER SET utf16 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_order`
--

INSERT INTO `product_order` (`idOrder`, `up_userId`, `up_nameUser`, `up_addressUser`, `up_telUser`, `up_timeUser`, `up_productId`, `up_Status`, `up_bank`, `EMS`, `other`) VALUES
(137, 19, 'นัทธพงศ์ ปัตโชติชัย', '393/160', '0857110853', '28-07-2016', '41,1,', 1, 'KT', 'ems191', 'อีบ้า'),
(138, 19, 'นัทธพงศ์ ปัตโชติชัย', '393/160', '0857110853', '28-07-2016', '40,1,', 1, 'BK', ' ems 3456', 'Hi'),
(139, 19, 'นัทธพงศ์ ปัตโชติชัย', '393/160', '0857110853', '28-07-2016', '41,1,', 1, 'BK', 'qw', 'qw'),
(135, 12, 'พงษ์วริษฐ์ มณีวรรณ์', '161 à¸¡.1', '0988203979', '28-07-2016', '40,1,41,1,', 1, 'KT', 'wer', 'wqe'),
(136, 12, 'พงษ์วริษฐ์ มณีวรรณ์', '161 à¸¡.1', '0988203979', '28-07-2016', '40,1,41,4,', 1, 'BK', 'wer', 'sdf'),
(140, 20, 'da dasdasd', 'asdasd', '564654654654654', '28-07-2016', '40,1,41,1,', 0, 'BK', '', ''),
(141, 20, 'da dasdasd', 'asdasd', '564654654654654', '28-07-2016', '41,123123123123,40,312312312321,', 1, 'BK', 'ems9999', 'ควยสั่งไรเยอะ'),
(142, 20, 'da dasdasd', 'asdasd', '564654654654654', '28-07-2016', '40,1,41,1,', 1, 'BK', 'Ems010', 'ควย'),
(143, 20, 'da dasdasd', 'asdasd', '564654654654654', '28-07-2016', '41,1454564566456456,40,14564564564564,', 1, 'BK', 'emsควย', '0'),
(144, 21, 'nickname surname', '-', '0921873785', '28-07-2016', '41,1,', 0, 'BK', '', ''),
(145, 20, 'da dasdasd', 'asdasdergserges', '564654654654654', '31-07-2016', '41,1,', 0, 'BK', '', ''),
(146, 12, 'พงษ์วริษฐ์ มณีวรรณ์', '161 à¸¡.1', '0988203979', '02-08-2016', '40,134,41,167,', 0, 'KT', '', ''),
(147, 19, 'นัทธพงศ์ ปัตโชติชัย', '393/160', '0857110853', '16-08-2016', '40,1,', 0, 'BK', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `name` varchar(5000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`id`, `name`) VALUES
(18, 'a2.png'),
(17, 'a1.png'),
(15, 'Slide1.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_image`
--

CREATE TABLE `tbl_image` (
  `image_id` tinyint(4) NOT NULL,
  `image_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_image`
--

INSERT INTO `tbl_image` (`image_id`, `image_name`) VALUES
(0, '184615110.jpg'),
(0, 'YYYYYYYYY.jpg'),
(0, 'YYYYYYYYY_1.jpg'),
(0, 'YYYYYYYYY_2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_image2`
--

CREATE TABLE `tbl_image2` (
  `image_id` tinyint(4) NOT NULL,
  `image_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_image2`
--

INSERT INTO `tbl_image2` (`image_id`, `image_name`) VALUES
(0, '1.jpg'),
(0, 'YYYYYYYYY.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_image3`
--

CREATE TABLE `tbl_image3` (
  `image_id` tinyint(4) NOT NULL,
  `image_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_image3`
--

INSERT INTO `tbl_image3` (`image_id`, `image_name`) VALUES
(0, '2.jpg'),
(0, '2_1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `userID` int(11) NOT NULL,
  `userName` varchar(20) NOT NULL,
  `userProfession` varchar(50) NOT NULL,
  `userPic` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`userID`, `userName`, `userProfession`, `userPic`) VALUES
(42, 'dwayne johnson', 'actor, wrestler', '380289.jpg'),
(43, 'justin bieber', 'singer', '995062.jpg'),
(44, 'chris hemsworth', 'actor', '171544.jpg'),
(41, 'john cena', 'wrestler', '549279.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `type1`
--

CREATE TABLE `type1` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `calorie` varchar(45) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `type1`
--

INSERT INTO `type1` (`id`, `name`, `type`, `calorie`, `price`) VALUES
(3, 'à¸•à¹‰à¸¡à¸¢à¸³à¸«à¸¡à¸¹', '30', '2000', 50),
(1, 'à¸•à¹‰à¸¡à¸¢à¸³à¸—à¸°à¹€à¸¥', '23', '3333', 50),
(2, 'à¸•à¹‰à¸¡à¸¢à¸³à¹„à¸à¹ˆ', '23', '3333', 50),
(4, 'à¸•à¹‰à¸¡à¸ˆà¸·à¸”', '30', '2000', 50);

-- --------------------------------------------------------

--
-- Table structure for table `type2`
--

CREATE TABLE `type2` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `calorie` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `type2`
--

INSERT INTO `type2` (`id`, `name`, `calorie`, `price`, `type`) VALUES
(1, 'à¸«à¸¡à¸¹à¸—à¸­à¸”', '500', 60, '10'),
(2, 'à¸‚à¸²à¸à¸šà¸—à¸­à¸”à¸à¸£à¸°à¹€à¸—à¸µà¸¢à¸¡', '333', 50, '23'),
(3, 'à¸‹à¸µà¹ˆà¹‚à¸„à¸£à¸‡à¸«à¸¡à¸¹à¸—à¸­à¸”', '500', 60, '15'),
(4, 'à¹„à¸à¹ˆà¸—à¸­à¸”à¸™à¹‰à¸³à¸›à¸¥à¸²', '5002', 30, '10');

-- --------------------------------------------------------

--
-- Table structure for table `type3`
--

CREATE TABLE `type3` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `calorie` varchar(45) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `type3`
--

INSERT INTO `type3` (`id`, `name`, `type`, `calorie`, `price`) VALUES
(1, 'à¹à¸à¸‡à¸ªà¹‰à¸¡', '12', '22', 22),
(2, 'à¹à¸à¸‡à¸«à¸¡à¸¹à¹€à¸—à¹‚à¸ž', '30', '2000', 40),
(3, 'à¹à¸à¸‡à¹€à¸«à¸¥à¸·à¸­à¸‡', '34', '33333', 33),
(4, 'à¹à¸à¸‡à¹€à¸‚à¸µà¸¢à¸§à¸«à¸§à¸²à¸™', '34', '3000', 34);

-- --------------------------------------------------------

--
-- Table structure for table `type4`
--

CREATE TABLE `type4` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `calorie` varchar(45) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `type4`
--

INSERT INTO `type4` (`id`, `name`, `type`, `calorie`, `price`) VALUES
(1, 'à¸à¸£à¸°à¹€à¸žà¸£à¸²à¸›à¸¥à¸²à¸«à¸¡à¸¶à¸', '23', '2323', 30),
(2, 'à¸œà¸±à¸”à¸à¸£à¸°à¹€à¸žà¸£à¸²à¸à¸¸à¹‰à¸‡', '20', '3000', 40),
(3, 'à¸œà¸±à¸”à¸à¸£à¸°à¹€à¸žà¸£à¸²à¸«à¸¡à¸¹', '20', '2000', 30),
(4, 'à¸œà¸±à¸”à¸à¸£à¸°à¹€à¸žà¸£à¸²à¸«à¸¡à¸¹à¹„à¸', '20', '2000', 35);

-- --------------------------------------------------------

--
-- Table structure for table `viporder`
--

CREATE TABLE `viporder` (
  `idOrder` int(11) NOT NULL,
  `up_userId` int(11) NOT NULL,
  `up_nameUser` varchar(500) CHARACTER SET utf16 NOT NULL,
  `up_addressUser` varchar(1000) CHARACTER SET utf16 NOT NULL,
  `up_telUser` varchar(20) CHARACTER SET utf16 NOT NULL,
  `up_timeUser` varchar(100) CHARACTER SET utf16 NOT NULL,
  `up_productId` varchar(1000) CHARACTER SET utf16 NOT NULL,
  `up_Status` varchar(10) CHARACTER SET utf16 NOT NULL,
  `up_bank` varchar(50) CHARACTER SET utf16 NOT NULL,
  `EMS` varchar(200) CHARACTER SET utf16 NOT NULL,
  `other` mediumtext CHARACTER SET utf16 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `viporder`
--

INSERT INTO `viporder` (`idOrder`, `up_userId`, `up_nameUser`, `up_addressUser`, `up_telUser`, `up_timeUser`, `up_productId`, `up_Status`, `up_bank`, `EMS`, `other`) VALUES
(1, 20, 'da dasdasd', 'asdasd', '564654654654654', '28-07-2016', '40,5,', '1', 'BK', 'หฟกฟห', 'ฟหกฟห'),
(2, 20, 'da dasdasd', 'asdasd', '564654654654654', '28-07-2016', '41,1,', '0', 'BK', '', ''),
(3, 20, 'da dasdasd', 'asdasd', '564654654654654', '28-07-2016', '40,1,', '0', 'BK', '', ''),
(4, 20, 'da dasdasd', 'asdasd', '564654654654654', '28-07-2016', '40,1,', '0', 'BK', '', ''),
(5, 20, 'da dasdasd', 'asdasd', '564654654654654', '28-07-2016', '40,2,', '0', 'BK', '', ''),
(6, 20, 'da dasdasd', 'asdasd', '564654654654654', '28-07-2016', '40,23423423424,', '0', 'BK', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aorder`
--
ALTER TABLE `aorder`
  ADD PRIMARY KEY (`idOrder`);

--
-- Indexes for table `fb`
--
ALTER TABLE `fb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `order_head`
--
ALTER TABLE `order_head`
  ADD PRIMARY KEY (`o_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_order`
--
ALTER TABLE `product_order`
  ADD PRIMARY KEY (`idOrder`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `type1`
--
ALTER TABLE `type1`
  ADD PRIMARY KEY (`name`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `type2`
--
ALTER TABLE `type2`
  ADD PRIMARY KEY (`name`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `type3`
--
ALTER TABLE `type3`
  ADD PRIMARY KEY (`name`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `type4`
--
ALTER TABLE `type4`
  ADD PRIMARY KEY (`name`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `viporder`
--
ALTER TABLE `viporder`
  ADD PRIMARY KEY (`idOrder`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `aorder`
--
ALTER TABLE `aorder`
  MODIFY `idOrder` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `fb`
--
ALTER TABLE `fb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `UserID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `d_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `order_head`
--
ALTER TABLE `order_head`
  MODIFY `o_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `product_order`
--
ALTER TABLE `product_order`
  MODIFY `idOrder` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;
--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `type1`
--
ALTER TABLE `type1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `type2`
--
ALTER TABLE `type2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `type3`
--
ALTER TABLE `type3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `type4`
--
ALTER TABLE `type4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `viporder`
--
ALTER TABLE `viporder`
  MODIFY `idOrder` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
