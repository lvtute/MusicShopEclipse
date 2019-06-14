-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: musicshop
-- ------------------------------------------------------
-- Server version	5.7.25-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bill` (
  `bill_id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  `payment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` longtext COLLATE utf8_unicode_ci,
  `date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bill_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
INSERT INTO `bill` VALUES (1488468815884,1,9000000,'Bank transfer','25 Nguyễn Xuân Ôn, P.2, Q.Bình Thạnh','2017-03-23 14:03:25',NULL,NULL),(1490686629467,3,29300000,'Bank transfer','abc','2017-03-28 07:37:09','abc','0935526224'),(1490687358000,1,20900000,'Bank transfer','tự tìm google nha','2017-03-28 07:49:18','tên gì kệ tui','0935526224'),(1490687595700,3,3865000,'Live','việt nam, trái đất, hệ mặt trời','2017-03-28 07:53:15','quang siêu cute','09999999999'),(1490683071125,1,55440000,'Bank transfer','test','2017-03-28 06:37:51','test','0935526224'),(1556816992484,1490249636892,8500000,'Live','338/12 no trang long binh thanh','2019-05-02 17:09:52','luong van thuan','032211');
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill_detail`
--

DROP TABLE IF EXISTS `bill_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bill_detail` (
  `bill_detail_id` bigint(20) NOT NULL,
  `bill_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`bill_detail_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill_detail`
--

LOCK TABLES `bill_detail` WRITE;
/*!40000 ALTER TABLE `bill_detail` DISABLE KEYS */;
INSERT INTO `bill_detail` VALUES (0,1488468815884,2,9000000,1),(1490683071143,1490683071125,14,55440000,1),(1490687358050,1490687358000,6,20900000,1),(1555654548559,1555654548486,1,8500000,1),(1555654548734,1555654548486,2,8150000,1),(1555654548843,1555654548486,3,29300000,1),(1555654548900,1555654548486,4,138000000,1),(1555654548976,1555654548486,5,3865000,1),(1555654549063,1555654548486,6,20900000,1),(1555654549145,1555654548486,7,9910000,1),(1555654549215,1555654548486,8,49430000,1),(1555654549278,1555654548486,9,21080000,1),(1555654549367,1555654548486,10,63800000,1),(1555654549467,1555654548486,11,3800000,1),(1555654549533,1555654548486,12,13400000,1),(1555654549652,1555654548486,13,50000000,1),(1555654549722,1555654548486,14,55440000,1),(1555654549792,1555654548486,15,15000000,1),(1555654549839,1555654548486,16,317000000,1),(1555654549936,1555654548486,17,1370000,1),(1555654550810,1555654548486,18,870000,1),(1555654550913,1555654548486,19,520000,1),(1555654550996,1555654548486,20,23800000,1),(1555654551062,1555654548486,21,46100000,1),(1555654551122,1555654548486,22,22660000,1),(1555654551185,1555654548486,23,83600000,1),(1555654551256,1555654548486,24,60420000,1),(1556816992567,1556816992484,1,8500000,1);
/*!40000 ALTER TABLE `bill_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brand` (
  `brand_id` bigint(20) NOT NULL,
  `brand_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES (1,'Taylor'),(2,'Fender'),(3,'Takamine'),(4,'Epiphone'),(5,'Gibson'),(6,'Roland'),(7,'Casio'),(8,'Kawai'),(1490664585545,'SViet'),(9,'Yamaha'),(10,'Suzuki'),(11,'Deviser');
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `category_id` bigint(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Guitar Acoustic'),(2,'Guitar Bass'),(3,'Guitar Classic'),(4,'Guitar Electric'),(5,'Ukulele'),(6,'Piano'),(7,'Organ');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact` (
  `contact_id` bigint(20) NOT NULL,
  `contact_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_web` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_message` longtext COLLATE utf8_unicode_ci,
  `contact_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (1490503630308,'test','test','dangquangkdc@gmail.com','test',' test','2017-03-26 04:47:10');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletter`
--

DROP TABLE IF EXISTS `newsletter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newsletter` (
  `newsletter_id` bigint(20) NOT NULL,
  `newsletter_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`newsletter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletter`
--

LOCK TABLES `newsletter` WRITE;
/*!40000 ALTER TABLE `newsletter` DISABLE KEYS */;
INSERT INTO `newsletter` VALUES (1556818426848,'asdsad@demo.com','2019-05-02 17:33:47');
/*!40000 ALTER TABLE `newsletter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `product_id` bigint(20) NOT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `brand_id` bigint(20) DEFAULT NULL,
  `product_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_image_forward` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_image_back` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_price` decimal(10,0) DEFAULT NULL,
  `product_description` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,1,'Guitar Baby Taylor',1,'images/pr.jpg','images/pr.jpg','images/pr1.jpg',8500000,'Trong những năm trước, cây đàn Baby Taylor với kích thước ¾ đã làm nên danh mục đàn dành cho du lịch thêm hoàn hảo và hôm nay càng trở nên phổ biến hơn bao giờ hết. Tâm điểm của cây đàn là âm thanh guitar thực thụ và mời gọi sự trải nghiệm chơi đàn. Với gỗ sapele mặt sau và các mặt bên, và mặt top gỗ spruce (hoặc mahogany). Luôn thú vị khi bạn dùng cây đàn này.'),(2,1,'Guitar Fender Stratacoustic',2,'images/pr2.jpg','images/pr2.jpg','images/pr3.jpg',8150000,'Fender® Stratacoustic™ có thùng đàn dáng Stratocaster® bắt mắt, thiết kế đầu đàn và cần đàn hình chữ C hoàn hảo cho những tay guitar điện đang tìm kiếm một nhạc cụ đa năng. Những đặc điểm khác gồm preamp  Fishman® với tuner tích hợp, cần đàn hoàn hảo bằng gỗ phong và được lựa chọn qua 2 phiên bản: Black hoặc Walnut Stain'),(3,1,'Guitar Takamine P4DC',3,'images/pr4.jpg','images/pr4.jpg','images/pr5.jpg',29300000,'Đàn guitar Takamine là một thương hiệu Guitar của Nhật Bản. Takamine  Janpan được biết đến với các dòng sản phẩm Acoustic Guitar và Classical/ Nylon-string Guitar.'),(4,6,'Piano Kawai K-300',8,'images/pr6.jpg','images/pr6.jpg','images/pr7.jpg',138000000,'Piano Kawai K-300: Kế thừa cây đàn upright piano từng đạt giải thưởng cao cấp\r\nPiano Kawai K-300 được chế tạo dựa trên thành công của cây đàn K-3 thế hệ trước từng được vinh dự nhận giải thưởng “Đàn piano cơ của năm” trong 4 năm liên tiếp. K-300 tự hào kế thừa di sản vẻ vang này.'),(5,7,'Organ Casio CTK-3200',7,'images/pr8.jpg','images/pr8.jpg','images/pr9.jpg',3865000,'Đàn Organ Casio CTK-3200 mới 100% Chính hãng - Chỉ còn 2.965.000 vnd Rẻ Nhất Thị Trường\r\nĐàn Organ Casio CTK-3200 là một dòng đàn organ giá rẻ dành cho những người mới học và dành cho các cơ sở giáo dục. Organ CTK-3200 có 61 phím cảm âm, 150 điệu mẫu, 110 bài hát mẫu, chức năng sampling (tự dạy học) và bộ máy hiện đại, cây đàn giúp người chơi thể hiện cảm xúc của mình cho mọi người xung quanh. Hệ thống kết nối với CD hay máy nghe nhạc MP3 được cải thiện tối tân. Và những bài nhạc mà bạn ưa thích sẽ được chơi trên bàn phím cảm âm thực thụ và có thể lưu lại được'),(6,6,'Piano Roland FP-30',6,'images/pr10.jpg','images/pr10.jpg','images/pr11.jpg',20900000,'Nhẹ nhàng và dễ di chuyển, sản phẩm này rất lý tưởng cho các buổi biểu diễn cũng như các lớp học âm nhạc. Thêm vào đó, nhiều âm thanh vượt trội, được xây dựng  các chức năng thực hành và ghi âm, hỗ trợ  Bluetooth để hoạt động với các ứng dụng âm nhạc phổ biến, Roland FP -30 thực sự cung cấp một trải nghiệm âm nhạc cao cấp.'),(7,2,'FENDER DELUXE ACTIVE',2,'images/bass5.jpg','images/bass5.jpg','images/bass6.jpg',9910000,'The Deluxe Active Jazz Bass® V guitar was designed for the working five-string bassist, with classic styling and modern features including an alder body, \"C\"-shaped maple neck with rosewood fretboard, two dual-coil ceramic Noiseless™ five-string Jazz Bass pickups with nickel-plated pole pieces, three-band active EQ with treble, mid and bass boost/cut, four-ply brown shell pickguard and a variety of finishes (see specifications).'),(8,2,'FENDER AMERICAN ELITE',2,'images/bass3.jpg','images/bass3.jpg','images/bass4.jpg',49430000,'Packed to the gills with our latest revolutionary innovations, the American Elite Jazz Bass V is an active 5-string bass for the modern bassist who demands cutting-edge tone technology along with timeless style and fast, smooth playing feel.'),(9,2,'Fender AERODYNE™ Jazz',2,'images/bass1.jpg','images/bass1.jpg','images/bass2.jpg',21080000,'Những tay chơi bass vượt trội tìm kiếm cây bass nhẹ chơi nhạc tốt với mẫu mã bắt mắt sẽ yêu thích cây guitar Aerodyne™Jazz Bass®. Mẫu Jazz Bass đặc biệt này có biên thân đàn gỗ basswood với biên màu kem khắc phần trên và không có pickguard. Cần đàn gỗ maple có bàn phím gỗ rosewood, đầu đàn cùng màu sơn và dát đốm chỉ mặt bên.'),(10,4,'Gibson ES 175',5,'images/bb1.png','images/bb1.png','images/bb1.png',63800000,'Một trong những cây đàn guitar được sử dụng rộng rãi nhất trong nhạc jazz, ES-175 là một cây đàn guitar bán mộc, mặt cong, thân rỗng được trang bị tới hai pick-up humbucking. Độ sâu của thân đàn ES-175 tạo ra các âm thanh dày, sâu mà các nghệ sĩ nhạc jazz yêu thích; còn độ mỏng của cần đàn cho phép chạy hợp âm và solo nhanh hơn. Pick-up ở ngựa đàn (bridge) có thể tạo ra âm thanh mỏng hơn, ít chất jazz hơn, nhờ đó, và ES-175s cũng có thể được sử dụng trong nhạc blues và rock.'),(11,4,'Epiphone Les Paul',4,'images/bb.png','images/bb.png','images/bb.png',3800000,'Được thiết kế theo dòng đàn huyền thoại Les Paul Custom 1961. Năm 1961, hầu như bất cứ ai chọn dòng nhạc hard rock, metal lúc bây giờ mới thịnh hành đều yêu quý và muốn sỡ hữu một cây Les Paul Custom. Giờ đây, G-400 Custom đã hồi sinh lại dòng đàn này cho những ai thích sưu tầm hay biểu diễn'),(12,4,'Epiphone Custom Pro Ltd SB',4,'images/electric1.png','images/electric1.png','images/electric1.png',13400000,'Được thiết kế theo dòng đàn huyền thoại Les Paul Custom 1961. Năm 1961, hầu như bất cứ ai chọn dòng nhạc hard rock, metal lúc bây giờ mới thịnh hành đều yêu quý và muốn sỡ hữu một cây Les Paul Custom. Giờ đây, G-400 Custom đã hồi sinh lại dòng đàn này cho những ai thích sưu tầm hay biểu diễn'),(13,4,'Electric Guitar Red',4,'images/electric2.png','images/electric2.png','images/electric2.png',50000000,'Được thiết kế theo dòng đàn huyền thoại Les Paul Custom 1961. Năm 1961, hầu như bất cứ ai chọn dòng nhạc hard rock, metal lúc bây giờ mới thịnh hành đều yêu quý và muốn sỡ hữu một cây Les Paul Custom. Giờ đây, G-400 Custom đã hồi sinh lại dòng đàn này cho những ai thích sưu tầm hay biểu diễn'),(14,6,'PIANO ROLAND FP-80',6,'images/piano4.jpg','images/piano4.jpg','images/piano5.jpg',55440000,'Thời trang và tính di động cao, đàn piano Điện Roland FP-80 mang lại một trải nghiệm âm nhạc phong phú và bổ ích cho những ai yêu thích piano. Công nghệ âm thanh Piano SuperNATURAL nổi tiếng và Ivory Feel-S Keyboard tạo nên cảm hứng và giai điệu đích thực, trong khi đó hệ thống loa đa kênh được trang bị với công nghệ Acoustic Projection của Roland mang lại cho bạn âm thanh lôi cuốn.Với nhiều tính năng nhịp điệu thông minh làm cho nó trở nên đơn giản hơn nhằm tạo ra âm nhạc tuyệt vời, cung cấp sự năng động và mạnh mẽ cho bài biểu diễn của bạn trong thời gian thực. '),(15,6,'PIANO YAMAHA P-115',9,'images/piano2.jpg','images/piano2.jpg','images/piano3.jpg',15000000,'Dòng P-115 được hãng Yamaha phát triển từ thành công của những dòng piano điện P –series. Dòng piano này sở hữu nhiều tính năng độc đáo như bàn phím chuẩn GHS (Graded Hammer Standard) - Phím cảm ứng với lực đánh của người chơi; tính năng Pianist Style hỗ trợ người chơi, giúp phần trình diễn trở nên nhiều màu sắc hơn như thể đang chơi song tấu; kết nối ngoài đa dạng.'),(16,6,'PIANO YAMAHA GB1K ',9,'images/piano1.jpg','images/piano1.jpg','images/piano1.jpg',317000000,'Đàn piano grand Yamaha GB1K có dáng hình nhỏ gọn cùng mức giá phải chăng sẽ là một lựa chọn lý tưởng nhất, phù hợp cho các địa điểm có không gian hạn chế. GB1K mang đầy đủ âm sắc cộng hưởng, khả năng chơi nhạc của nó có thể sánh ngang bằng các model đàn piano grand có kích thước lớn hơn.'),(17,5,'Suzuki Ukulele SUK-5',10,'images/ukulele1.jpg','images/ukulele1.jpg','images/ukulele1.jpg',1370000,'UKULELE SUK-5một cây đàn nổi bật với thiết kế nhỏ gọn, chức năng đơn giản, cây đàn Ukulele được xem là một lựa chọn tuyệt vời cho những người yêu nhạc và thích học đàn.'),(18,5,'DEVISER UKULELE UK-24-30',11,'images/ukulele2.jpg','images/ukulele2.jpg','images/ukulele2.jpg',870000,'Ukulele Soprano Deviser UK-24-30 là cây đàn được yêu thích nhất hiện nay, bằng gỗ mahogany, có chiều dài 60cm (24inch), thích hợp với người có bàn tay khá lớn. Dây đàn được làm bằng sợi nilon cao cấp, lỗ thoát âm trang trí bắt mắt.'),(19,5,'DEVISER UKULELE UK-21-20',11,'images/ukulele3.jpg','images/ukulele2.jpg','images/ukulele2.jpg',520000,'Đàn Ukulele Soprano Deviser UK-21-20 có chiều dài 53cm (21inch), thích hợp với người mới tập chơi uke, người có bàn tay nhỏ và trẻ em. Soprano là giọng nữ có âm vực cao nhất trong tất cả các loại giọng và dòng đàn uke soprano này cũng vậy. Đây là cây ukulele hoàn hảo cho người mới bắt đầu học ukulele với một ngân sách tiết kiệm tối đa.'),(20,3,'Guitar Takamine H5',3,'images/classic1.jpg','images/classic1.jpg','images/classic1.jpg',23800000,'The H5 Hirade concert classic is handcrafted in our pro series facility that has been building precision quality instruments over five decades.\r\n\r\nA sterling example of the luthier’s art, these classical guitars that bear the name of Master Luthier Mass Hirade are still built by hand in our Takamine pro facility in Japan. This guitar features a solid cedar top for warmth and broad dynamic range and a solid rosewood back for excellent projection. These instruments are designed and built to stand beside the finest classical guitars made today.'),(21,1,'Guitar Taylor 314CE',1,'images/acoustic1.jpg','images/acoustic1.jpg','images/acoustic2.jpg',46100000,'Cây guitar Taylor 314ce đáp ứng nhiều phong cách chơi nhạc đa nhạc nhờ vào thiết kế body medium-size Grand Aditoritum. Với gỗ Sapele mang lại phản ứng âm sống động, cùng với mặt top gỗ Sitka Spruce, mang lại độ sáng và rõ rang, cung cấp âm sắc dứt khoát.\r\n\r\nÂm sắc từ dây đàn Elixir® HD Light mang lại âm thanh vượt trội ở âm vực cao, âm vực thấp đầy đủ hơn, và độ cân bằng ấm áp. Các chi tiết trang trí bao gồm viền đen, pickquard đen, các họa tiết khảm hình diamond trên fretboard.'),(22,7,'Organ Roland XPS-30',6,'images/organ1.jpg','images/organ2.jpg','images/organ3.jpg',22660000,'Keyboard Roland XPS-30 bắt đầu với thiết lập tính năng tuyệt vời của XPS-10 và bổ sung thêm nhiều cải tiến mạnh mẽ mà chắc chắn người chơi sẽ rất yêu thích. Các yếu tố cần thiết như tiếng acoustic và piano điện tốt hơn, thiết lập dạng sóng nội bộ có thể dễ dàng mở rộng với các bộ sưu tập âm thanh miễn phí từ trang website Axial.roland.com của Roland.'),(23,1,'Guitar Taylor 614CE',1,'images/tayloracoustic1.jpg','images/tayloracoustic1.jpg','images/tayloracoustic2.jpg',83600000,'Đặc điểm chung Đàn Guitar Taylor 614CE\r\nBắt mắt, âm thanh tuyệt hảo, cây guitar làm từ gỗ như một chỉ huy ấn tượng trên sân khấu. Giai điệu tươi sáng, rõ ràng khiến những cây guitar thuộc series này trở thành sản phẩm ưc thích trong bất kì buổi diễn hay ban nhạc nào, trong khi sự đa dạng về màu sắc và tùy chọn sunburst phục vụ tốt hơn để nâng cao con âm thanh tự nhiên. Những dấu ấn nổi bật khác bao gồm viền trắng sắc nét và cần đàn khảm họa tiết Twisted Oval. Đặc điểm: Hình dạng: Grand Auditorium – hoàn hảo cho mọi mục đích chơi acoustic Khung: Forward Shifted với Relief Rout Loại gỗ: Big Leaf Maple: tươi sang, sắt nét và hoàn mỹ Đường cắt: phong cách Venice: đường cắt phổ biến, cong dịu dàng Điện tử: hệ thống Expression: khuếch trương độ trầm âm thanh acoustic. Các bố trí: 600 Series: các chi tiết, khả năng chơi nhạc và các chi tiết trang trí xác định rõ trong từng series'),(24,1,'Guitar Takamine P7NC',3,'images/acoustic5.jpg','images/acoustic3.jpg','images/acoustic4.jpg',60420000,'Built with the performer in mind, the P7NC features Takamine’s proprietary CTP-3 Cool Tube™ preamp system paired with the unique Palathetic™ under-saddle pickup for peerless amplified response. The dual-channel CTP-3 provides low-voltage tube tone, variable from bright and brilliant to thick and warm, three-band EQ with semi-parametric midrange, auxiliary input and volume (for use when a second pickup is added), and an onboard chromatic tuner.');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review` (
  `review_id` bigint(20) NOT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `review_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `review_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `review_star` int(11) DEFAULT NULL,
  `review_message` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`review_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1490445318522,3,'Vô danh','mail@mail.com',5,' Sản phẩm cũng được :3'),(1490661562334,21,'test','dangquangkdc@gmail.com',2,' cũng được');
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `useradmin`
--

DROP TABLE IF EXISTS `useradmin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `useradmin` (
  `user_ad_id` bigint(20) NOT NULL,
  `user_ad_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_ad_pass` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_ad_role` bit(1) DEFAULT NULL,
  PRIMARY KEY (`user_ad_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useradmin`
--

LOCK TABLES `useradmin` WRITE;
/*!40000 ALTER TABLE `useradmin` DISABLE KEYS */;
INSERT INTO `useradmin` VALUES (1,'admin','123','');
/*!40000 ALTER TABLE `useradmin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` bigint(20) NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_pass` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_role` bit(1) DEFAULT NULL,
  `user_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1556815851187,'vvv','vv','vvv','\0','vv'),(1490249636892,'a','a','a','\0','a'),(1490249751501,'b','b','b','\0','b'),(1490263429251,'test','a','a','\0','a'),(1556815801540,'yyy','yy','yyy','\0','yy'),(1556815330464,'zzz','aaa','zzz','\0','12312'),(1555600141414,'aaa','asda','xxx','\0','a21321'),(1555601926860,'xx','xx','xx','\0','xx');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'musicshop'
--

--
-- Dumping routines for database 'musicshop'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-14 14:14:22
