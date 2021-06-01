-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2021 at 05:22 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cuahangbandogiadung`
--

-- --------------------------------------------------------

--
-- Table structure for table `binhluansp`
--

CREATE TABLE `binhluansp` (
  `id_Bl` int(11) NOT NULL,
  `id_tk` int(11) NOT NULL,
  `id_sp` int(11) NOT NULL,
  `sosao` int(11) NOT NULL,
  `hinhanh` varchar(255) NOT NULL,
  `ND` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ngaybinhluan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `binhluansp`
--

INSERT INTO `binhluansp` (`id_Bl`, `id_tk`, `id_sp`, `sosao`, `hinhanh`, `ND`, `ngaybinhluan`) VALUES
(65, 6, 17, 5, '', 'hello', '2021-05-24'),
(67, 6, 19, 5, '1200px-18_Months_old_Norwegian_forest_cat..jpg', 'sản phẩm rất tốt ', '2021-05-24'),
(68, 6, 19, 5, '1200px-18_Months_old_Norwegian_forest_cat..jpg', 'sản phẩm rất tốt ', '2021-05-24'),
(69, 10, 16, 5, '', 'dsdsds', '2021-05-27'),
(70, 10, 16, 4, '', 'dsdsds', '2021-05-27'),
(71, 11, 16, 3, '', 'dsdsds', '2021-05-27');

-- --------------------------------------------------------

--
-- Table structure for table `chitiet_dh`
--

CREATE TABLE `chitiet_dh` (
  `id_ctdh` int(11) NOT NULL,
  `id_dh` int(11) NOT NULL,
  `id_sp` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `giaban` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `chitiet_gh`
--

CREATE TABLE `chitiet_gh` (
  `id_gh` int(11) NOT NULL,
  `id_sp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chitiet_gh`
--

INSERT INTO `chitiet_gh` (`id_gh`, `id_sp`) VALUES
(1, 16),
(1, 21),
(1, 22),
(3, 16),
(3, 17),
(3, 50);

-- --------------------------------------------------------

--
-- Table structure for table `danhmucsp`
--

CREATE TABLE `danhmucsp` (
  `id_Dsp` int(11) NOT NULL,
  `id_Nsp` int(11) NOT NULL,
  `name_Nsp` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `danhmucsp`
--

INSERT INTO `danhmucsp` (`id_Dsp`, `id_Nsp`, `name_Nsp`) VALUES
(2, 1, 'Xoong nồi'),
(3, 1, 'Quạt'),
(4, 1, 'Ấm điện'),
(5, 1, 'Chảo'),
(6, 1, 'Nồi cơm điện'),
(7, 1, 'Máy xay sinh tố'),
(8, 1, 'Lò vi sóng'),
(9, 1, 'Bếp ga'),
(10, 1, 'Tủ lạnh'),
(11, 1, 'Máy giặt');

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `id_dh` int(11) NOT NULL,
  `id_kh` int(11) NOT NULL,
  `ngay_dat` varchar(30) NOT NULL,
  `ghi_chu` varchar(400) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tinhtrang_gh` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`id_dh`, `id_kh`, `ngay_dat`, `ghi_chu`, `tinhtrang_gh`) VALUES
(31, 3, 'Friday,May,28,2021', ' [1] Tủ Lạnh SAMSUNG Inverter Family Hub 641L RS64T5  tổng tiền là: 34990000đ', 'đang giao'),
(32, 5, 'Friday,May,28,2021', ' [3] Tủ Lạnh SAMSUNG Inverter Family Hub 641L RS64T5  [1] CHẢO ĐÁ ĐÁY SUNHOUSE SHG1228MMA  tổng tiền là: 107960000đ', 'đang giao'),
(33, 5, 'Friday,May,28,2021', ' [3] Tủ Lạnh SAMSUNG Inverter Family Hub 641L RS64T5  [1] CHẢO ĐÁ ĐÁY SUNHOUSE SHG1228MMA  tổng tiền là: 107960000đ', 'đang giao'),
(34, 5, 'Friday,May,28,2021', ' [3] Tủ Lạnh SAMSUNG Inverter Family Hub 641L RS64T5  [1] CHẢO ĐÁ ĐÁY SUNHOUSE SHG1228MMA  tổng tiền là: 107960000đ', 'đang giao'),
(35, 6, 'Friday,May,28,2021', ' [1] CHẢO ĐÁ ĐÁY SUNHOUSE SHG1228MMA  [1] Quạt đứng công nghiệp Sumika ST650  tổng tiền là: 4430000đ', 'đang giao'),
(36, 6, 'Friday,May,28,2021', ' [1] CHẢO ĐÁ ĐÁY SUNHOUSE SHG1228MMA  [1] Quạt đứng công nghiệp Sumika ST650  tổng tiền là: 4430000đ', 'đang giao'),
(37, 7, 'Friday,May,28,2021', ' [5] Bộ nồi Inox 3 đáy GOLDSUN SHG2303MSA  tổng tiền là: 2450000đ', 'đang giao'),
(38, 7, 'Friday,May,28,2021', ' [2] Bộ nồi Inox 3 đáy GOLDSUN SHG2303MSA  tổng tiền là: 980000đ', 'đang giao'),
(39, 7, 'Friday,May,28,2021', ' [2] Bộ nồi Inox 3 đáy GOLDSUN SHG2303MSA  tổng tiền là: 980000đ', 'đang giao'),
(40, 7, 'Friday,May,28,2021', ' [2] Bộ nồi Inox 3 đáy GOLDSUN SHG2303MSA  tổng tiền là: 980000đ', 'đang giao'),
(41, 7, 'Friday,May,28,2021', ' [2] Bộ nồi Inox 3 đáy GOLDSUN SHG2303MSA  tổng tiền là: 980000đ', 'đang giao'),
(42, 7, 'Friday,May,28,2021', ' [1] Bộ nồi Inox 3 đáy GOLDSUN SHG2303MSA  tổng tiền là: 490000đ', 'đang giao'),
(43, 7, 'Friday,May,28,2021', ' [1] Bộ nồi Inox 3 đáy GOLDSUN SHG2303MSA  tổng tiền là: 490000đ', 'đang giao'),
(44, 7, 'Friday,May,28,2021', ' [1] Bộ nồi Inox 3 đáy GOLDSUN SHG2303MSA  tổng tiền là: 490000đ', 'đang giao'),
(45, 7, 'Friday,May,28,2021', ' [3] Quạt đứng công nghiệp Sumika ST650  [5] Tủ Lạnh SAMSUNG Inverter Family Hub 641L RS64T5  tổng tiền là: 179270000đ', 'đang giao'),
(46, 1, 'Sunday,May,30,2021', ' [2] Tủ lạnh Samsung Inverter 208 lít RT20HAR8DBU  tổng tiền là: 10980000đ', 'đang giao'),
(47, 1, 'Monday,May,31,2021', ' [1] Tủ Lạnh SAMSUNG Inverter Family Hub 641L RS64T5  tổng tiền là: 34990000đ', 'đang giao'),
(48, 1, 'Monday,May,31,2021', ' [1] Tủ Lạnh SAMSUNG Inverter Family Hub 641L RS64T5  tổng tiền là: 34990000đ', 'đang giao'),
(49, 1, 'Tuesday,June,1,2021', ' [1] Xoong nồi FAGOR PROFESSIONAL 20cm  [1] CHẢO ĐÁ ĐÁY SUNHOUSE SHG1228MMA  tổng tiền là: 4440000đ', 'đang giao'),
(50, 1, 'Tuesday,June,1,2021', ' [1] Quạt đứng công nghiệp Sumika ST650  tổng tiền là: 1440000đ', 'đang giao');

-- --------------------------------------------------------

--
-- Table structure for table `gio_hang`
--

CREATE TABLE `gio_hang` (
  `id_gh` int(11) NOT NULL,
  `id_tk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gio_hang`
--

INSERT INTO `gio_hang` (`id_gh`, `id_tk`) VALUES
(1, 10),
(2, 19),
(3, 20);

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id_i` int(11) NOT NULL,
  `id_sp` int(11) NOT NULL,
  `image` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id_i`, `id_sp`, `image`) VALUES
(1, 16, 'https://images.samsung.com/is/image/samsung/vn-side-by-side-rs64t5f01b4-rs64t5f01b4-sv-lperspectiveblack-266821179?$684_547_PNG$'),
(2, 16, 'https://images.samsung.com/is/image/samsung/vn-side-by-side-rs64t5f01b4-rs64t5f01b4-sv-frontopenwithoutfoodblack-266821187?$684_547_PNG$'),
(3, 16, 'https://images.samsung.com/is/image/samsung/vn-side-by-side-rs64t5f01b4-rs64t5f01b4-sv-detailallaroundcoolingblack-266821183?$684_547_PNG$'),
(4, 16, 'https://images.samsung.com/is/image/samsung/vn-side-by-side-rs64t5f01b4-rs64t5f01b4-sv-detaildispenserblack-266821182?$684_547_PNG$'),
(5, 17, 'https://cdn.tgdd.vn/Products/Images/2403/210372/chao-sau-nhom-chong-dinh-day-tu-28cm-sunhouse-shg1-9.jpg'),
(6, 17, 'https://sunhouse.com.vn/pic/product/images/chao_da_hoa_cuong_day_tu_shm30d-001.jpg'),
(7, 17, 'https://cdn.tgdd.vn/Products/Images/2403/210372/chao-sau-nhom-chong-dinh-day-tu-28cm-sunhouse-shg1-10.jpg'),
(8, 17, 'https://sunhouse.com.vn/pic/thumb/large/product/sunhouse-sfp24b_00117.jpg'),
(9, 18, 'https://sunhouse.com.vn/pic/product/images/image-20191115113457-1.jpeg'),
(10, 18, 'https://vn-live-01.slatic.net/p/d51bdc8c81978aae795b24e51f33d7cc.jpg'),
(11, 18, 'https://vn-live-01.slatic.net/p/70853ebddbafd28972b9dc32f3842fd8.jpg'),
(12, 18, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQb-yQCAR1AdgOHr5hgnoziRCocQ-hrg1UMjA&usqp=CAU'),
(13, 22, 'https://s.meta.com.vn/img/thumb.ashx/498x500x95/Data/image/2019/06/16/quat-treo-tuong-cong-nghiep-haiki-hk750t.jpg'),
(14, 22, 'https://img.websosanh.vn/v2/users/wss/images/quat-treo-tuong-cong-nghiep/qpzda7go4vtn3.jpg?compress=85&width=220'),
(15, 22, 'https://nakami.com.vn/wp-content/uploads/2020/04/Qu%E1%BA%A1t-treo-t%C6%B0%E1%BB%9Dng-c%C3%B4ng-nghi%E1%BB%87p-NAT65A-NAT75A-01.jpg'),
(16, 22, 'https://i.imgur.com/PPLjJIOl.jpg'),
(17, 19, 'https://homeeco.com.vn/wp-content/uploads/2020/12/ezgif-1-08f72d97fd4a.jpg'),
(18, 19, 'https://eurohomes.com.vn/wp-content/uploads/2020/04/anh-bo-noi-bep-tu-Hafele-6-mon.jpg'),
(19, 19, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXtWnxTBN9a9dr13THCBpV-hACjP3IeMflIw&usqp=CAU'),
(20, 19, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQobHQaDcmk8YbqIeB4CYyDv5uC-uOuo-D26w&usqp=CAU'),
(21, 20, 'https://thuvienmuasam.com/uploads/default/original/2X/f/fff13128d6efdb4a3448f2f617e6cdf223594c1e.jpeg'),
(22, 20, 'https://osm.com.vn/media/image/1e/75/e3/dcn_fag_professional-20cm.jpg'),
(23, 20, 'https://hanggiadungduc.com/wp-content/uploads/2019/06/bo-xoong-noi-duc-xach-tay-gia-chi-tu-3300000%E2%82%AB-1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `id_kh` int(11) NOT NULL,
  `ten_kh` varchar(50) NOT NULL,
  `id_tk` int(11) NOT NULL,
  `diachi` varchar(50) NOT NULL,
  `sdt` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`id_kh`, `ten_kh`, `id_tk`, `diachi`, `sdt`) VALUES
(1, 'manh', 10, 'hn', '03333333333'),
(2, 'manh nguyen', 9, 'hn', '01111111111'),
(3, 'ben', 11, 'n02 chùa láng láng thượng đống đa hà nội việt nam', '0154777777'),
(4, 'cycle', 12, 'n02 chùa láng láng thượng đống đa hà nội việt nam', '0154777777'),
(5, 'manh nguyen', 13, 'td tt pt', '01111111111111111111'),
(6, 'manh nguyen', 14, 'td tt pt', '1'),
(7, 'manh nguyen', 15, 'n02 chùa láng láng thượng đống đa hà nội việt nam', '0154777777');

-- --------------------------------------------------------

--
-- Table structure for table `nhom_sp`
--

CREATE TABLE `nhom_sp` (
  `id_Nsp` int(11) NOT NULL,
  `name_sp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nhom_sp`
--

INSERT INTO `nhom_sp` (`id_Nsp`, `name_sp`) VALUES
(1, 'phòng bếp');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `id_sp` int(11) NOT NULL,
  `id_Dsp` int(11) NOT NULL,
  `ten_sp` varchar(50) NOT NULL,
  `mo_ta` varchar(1000) NOT NULL,
  `xuat_xu` varchar(50) NOT NULL,
  `gia_sp` float NOT NULL,
  `soluong_ton` int(11) NOT NULL,
  `anh_sp` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `daban` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id_sp`, `id_Dsp`, `ten_sp`, `mo_ta`, `xuat_xu`, `gia_sp`, `soluong_ton`, `anh_sp`, `daban`) VALUES
(16, 10, 'Tủ Lạnh SAMSUNG Inverter Family Hub 641L RS64T5', 'Sản phẩm phân phối chính hãng tại moon house\r\nSản phẩm bảo đảm an toàn và còn hạn sử dụng', 'TP. Hồ Chí Minh', 34990000, 93, 'https://www.electrolux.vn/globalassets/d2c-vn/refrigerators/vn-d2c-ehe6879a-b_angl_cl-1500x1500.png?', 97),
(17, 5, 'CHẢO ĐÁ ĐÁY SUNHOUSE SHG1228MMA', 'Chảo Chống Dính Happy Time Size 28 28cmđược Nhập Khẩu Nguyên Chiếc Từ Việt Nam', 'TP. Hồ Chí Minh', 2990000, 999, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzAC7rmDIh8FjuLfkfY1Wr3k3m_kl2GGdYig&usqp=CAU', 151),
(18, 2, 'Bộ nồi Inox 3 đáy GOLDSUN SHG2303MSA', 'Giới Thiệu Bộ Nồi Chảo Inox 304 3 Lớp Đáy Liền Cao Cấp Elmich Trimax El3742 - 4 Chiếc Size 18cm, 20cm, 26cm Và Chảo 26cm', 'Hà Nội', 490000, 1999, 'https://tvshopping.vn/image/cache/data/Anh%20gia%20dung/sh891-1200x1200.jpg', 191),
(19, 2, 'BỘ NỒI 6 SẢN PHẨM 10180-C MEYER - ANH', 'Bộ Xoong Nồi Từ Có 13 Món Gồm: 1 Chảo 21,5 Có Chống Dính 1 Chảo 25,4 Có Chống Dính 1 Chảo 30,4 Có Chống Dính 1 Nồi Bé 0,9l ', 'TP. Hồ Chí Minh', 1900000, 10000, 'https://i0.wp.com/hangnhattoday.com/wp-content/uploads/2019/09/CIRCULON.jpg?resize=600%2C570&ssl=1', 200),
(20, 2, 'Xoong nồi FAGOR PROFESSIONAL 20cm', 'Bộ Nồi Silit Toskana 4 Món Giá Chỉ 3,300,000₫, Gồm: 1 Nồi To (có Nắp Kính Ø 24 Cm, 6 Lít, Chiều Cao 13,5cm), 1 Nồi Vừa (có Nắp Kính Ø 20 Cm, 3,4L, Chiều Cao 11,5 Cm)', 'Hà Nội', 1450000, 1999, 'https://osm.com.vn/media/image/1e/75/e3/dcn_fag_professional-20cm.jpg', 81),
(21, 3, 'Quạt đứng công nghiệp Sumika ST650', 'Tính Năng Nổi Bật Thiết Kế Kiểu Dáng Công Nghiệp, động Cơ Chất Lượng Cao. Lưới Quạt Thiết Kế An Toàn. Cánh được Chế Tạo Từ Hợp Kim Nhôm Cao Cấp', 'Hà Nội', 1440000, 4996, 'https://s.meta.com.vn/Data/image/2018/10/04/quat-dung-cong-nghiep-sumika-st650-anh500.jpg', 354),
(22, 3, 'Quạt treo tường công nghiệp Fukada KD750T', 'Loại Quạt Quạt Treo Tường Công Nghiệp Sải Cánh 650mm (26 Inch) Lượng Gió 205 (m3/min) Công Suất 250W Điện áp 220V; 50HZ Động Cơ Dây đồng 100%', 'Hà Nội', 1750000, 2000, 'https://vinafat.vn/uploads/images/san-pham/Qu%E1%BA%A1t_treo_tr%C6%B0%E1%BB%9Dng_Fukada_KD650T1.jpg', 100),
(50, 10, 'Tủ lạnh Samsung Inverter 208 lít RT20HAR8DBU bla', 'Dung tích 208 lít thích hợp cho gia đình từ 2 - 4 thành viên', 'SAMSUNG VIỆT NAM ', 5490000, 98, 'https://s.meta.com.vn/Data/image/2020/04/29/tu-lanh-samsung-inverter-208-lit-rt20har8dbu-sv-sl1.jpg', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tai_khoan`
--

CREATE TABLE `tai_khoan` (
  `id_tk` int(11) NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(100) NOT NULL,
  `quyendn` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tai_khoan`
--

INSERT INTO `tai_khoan` (`id_tk`, `email`, `pass`, `quyendn`) VALUES
(6, 'thanh@gmail.com', '2309eaf753d1d8d19589a20d519f080b', 0),
(7, 'root@gmail.com', '5690dddfa28ae085d23518a035707282', 0),
(8, 'phong@gmail.com', 'e919fa7f54ef5892792d9aa0d2f3ce7c', 0),
(9, 'nhat@gmail.com', '33f284c9c8cf9424d891f12fb8714c2b', 0),
(10, 'toanquyen16112@gmail.com', 'c9f8a04f11069aa2ec01ebfd9ff421f8', 1),
(11, 'manhnguyen16112@gmail.com', 'c9f8a04f11069aa2ec01ebfd9ff421f8', 0),
(12, 'test@gmail.com', 'c9f8a04f11069aa2ec01ebfd9ff421f8', 0),
(13, 'abc@gmail.com', 'c9f8a04f11069aa2ec01ebfd9ff421f8', 0),
(14, '1@gmail.com', 'c9f8a04f11069aa2ec01ebfd9ff421f8', 0),
(15, '2@gmail.com', 'c9f8a04f11069aa2ec01ebfd9ff421f8', 0),
(19, 'admin@gmail.com', 'c9f8a04f11069aa2ec01ebfd9ff421f8', 0),
(20, 'leader@gmail.com', 'c9f8a04f11069aa2ec01ebfd9ff421f8', 0);

-- --------------------------------------------------------

--
-- Table structure for table `thanhtoan`
--

CREATE TABLE `thanhtoan` (
  `id_tt` int(11) NOT NULL,
  `id_tk` int(11) NOT NULL,
  `id_dh` int(11) NOT NULL,
  `ngay_tt` int(11) NOT NULL,
  `so_tien` float NOT NULL,
  `trang_thai` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `binhluansp`
--
ALTER TABLE `binhluansp`
  ADD PRIMARY KEY (`id_Bl`),
  ADD KEY `id_BL` (`id_sp`),
  ADD KEY `fk_tk` (`id_tk`);

--
-- Indexes for table `chitiet_dh`
--
ALTER TABLE `chitiet_dh`
  ADD PRIMARY KEY (`id_ctdh`),
  ADD KEY `id_dh` (`id_dh`,`id_sp`),
  ADD KEY `id_sp` (`id_sp`);

--
-- Indexes for table `chitiet_gh`
--
ALTER TABLE `chitiet_gh`
  ADD PRIMARY KEY (`id_gh`,`id_sp`),
  ADD KEY `id_sp` (`id_sp`);

--
-- Indexes for table `danhmucsp`
--
ALTER TABLE `danhmucsp`
  ADD PRIMARY KEY (`id_Dsp`),
  ADD KEY `id_Nsp` (`id_Nsp`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id_dh`),
  ADD KEY `id_kh` (`id_kh`);

--
-- Indexes for table `gio_hang`
--
ALTER TABLE `gio_hang`
  ADD PRIMARY KEY (`id_gh`),
  ADD KEY `id_tk` (`id_tk`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id_i`),
  ADD KEY `id_sp` (`id_sp`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`id_kh`),
  ADD KEY `id_tk` (`id_tk`);

--
-- Indexes for table `nhom_sp`
--
ALTER TABLE `nhom_sp`
  ADD PRIMARY KEY (`id_Nsp`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id_sp`),
  ADD KEY `id_Dsp` (`id_Dsp`);

--
-- Indexes for table `tai_khoan`
--
ALTER TABLE `tai_khoan`
  ADD PRIMARY KEY (`id_tk`);

--
-- Indexes for table `thanhtoan`
--
ALTER TABLE `thanhtoan`
  ADD PRIMARY KEY (`id_tt`),
  ADD KEY `id_tk` (`id_tk`,`id_dh`),
  ADD KEY `id_dh` (`id_dh`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `binhluansp`
--
ALTER TABLE `binhluansp`
  MODIFY `id_Bl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `chitiet_dh`
--
ALTER TABLE `chitiet_dh`
  MODIFY `id_ctdh` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `danhmucsp`
--
ALTER TABLE `danhmucsp`
  MODIFY `id_Dsp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id_dh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `gio_hang`
--
ALTER TABLE `gio_hang`
  MODIFY `id_gh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id_i` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `id_kh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `nhom_sp`
--
ALTER TABLE `nhom_sp`
  MODIFY `id_Nsp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id_sp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `tai_khoan`
--
ALTER TABLE `tai_khoan`
  MODIFY `id_tk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `thanhtoan`
--
ALTER TABLE `thanhtoan`
  MODIFY `id_tt` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `binhluansp`
--
ALTER TABLE `binhluansp`
  ADD CONSTRAINT `binhluansp_ibfk_1` FOREIGN KEY (`id_sp`) REFERENCES `sanpham` (`id_sp`),
  ADD CONSTRAINT `fk_tk` FOREIGN KEY (`id_tk`) REFERENCES `tai_khoan` (`id_tk`);

--
-- Constraints for table `chitiet_dh`
--
ALTER TABLE `chitiet_dh`
  ADD CONSTRAINT `chitiet_dh_ibfk_1` FOREIGN KEY (`id_dh`) REFERENCES `donhang` (`id_dh`),
  ADD CONSTRAINT `chitiet_dh_ibfk_2` FOREIGN KEY (`id_sp`) REFERENCES `sanpham` (`id_sp`);

--
-- Constraints for table `chitiet_gh`
--
ALTER TABLE `chitiet_gh`
  ADD CONSTRAINT `chitiet_gh_ibfk_1` FOREIGN KEY (`id_gh`) REFERENCES `gio_hang` (`id_gh`),
  ADD CONSTRAINT `chitiet_gh_ibfk_2` FOREIGN KEY (`id_sp`) REFERENCES `sanpham` (`id_sp`);

--
-- Constraints for table `danhmucsp`
--
ALTER TABLE `danhmucsp`
  ADD CONSTRAINT `danhmucsp_ibfk_1` FOREIGN KEY (`id_Nsp`) REFERENCES `nhom_sp` (`id_Nsp`);

--
-- Constraints for table `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`id_kh`) REFERENCES `khachhang` (`id_kh`);

--
-- Constraints for table `gio_hang`
--
ALTER TABLE `gio_hang`
  ADD CONSTRAINT `gio_hang_ibfk_1` FOREIGN KEY (`id_tk`) REFERENCES `tai_khoan` (`id_tk`);

--
-- Constraints for table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `image_ibfk_1` FOREIGN KEY (`id_sp`) REFERENCES `sanpham` (`id_sp`);

--
-- Constraints for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD CONSTRAINT `khachhang_ibfk_1` FOREIGN KEY (`id_tk`) REFERENCES `tai_khoan` (`id_tk`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`id_Dsp`) REFERENCES `danhmucsp` (`id_Dsp`);

--
-- Constraints for table `thanhtoan`
--
ALTER TABLE `thanhtoan`
  ADD CONSTRAINT `thanhtoan_ibfk_1` FOREIGN KEY (`id_tk`) REFERENCES `tai_khoan` (`id_tk`),
  ADD CONSTRAINT `thanhtoan_ibfk_2` FOREIGN KEY (`id_dh`) REFERENCES `donhang` (`id_dh`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
