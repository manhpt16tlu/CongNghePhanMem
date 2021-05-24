-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 24, 2021 lúc 05:35 PM
-- Phiên bản máy phục vụ: 10.4.18-MariaDB
-- Phiên bản PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `cuahangbandogiadung`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluansp`
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
-- Đang đổ dữ liệu cho bảng `binhluansp`
--

INSERT INTO `binhluansp` (`id_Bl`, `id_tk`, `id_sp`, `sosao`, `hinhanh`, `ND`, `ngaybinhluan`) VALUES
(65, 6, 17, 5, '', 'hello', '2021-05-24'),
(67, 6, 19, 5, '1200px-18_Months_old_Norwegian_forest_cat..jpg', 'sản phẩm rất tốt ', '2021-05-24'),
(68, 6, 19, 5, '1200px-18_Months_old_Norwegian_forest_cat..jpg', 'sản phẩm rất tốt ', '2021-05-24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiet_dh`
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
-- Cấu trúc bảng cho bảng `danhmucsp`
--

CREATE TABLE `danhmucsp` (
  `id_Dsp` int(11) NOT NULL,
  `id_Nsp` int(11) NOT NULL,
  `name_Nsp` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `danhmucsp`
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
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `id_dh` int(11) NOT NULL,
  `id_kh` int(11) NOT NULL,
  `ngay_dat` date NOT NULL,
  `ngay_giao` date NOT NULL,
  `ghi_chu` varchar(100) NOT NULL,
  `tinhtrang_tt` tinyint(4) NOT NULL,
  `tinhtrang_gh` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `image`
--

CREATE TABLE `image` (
  `id_i` int(11) NOT NULL,
  `id_sp` int(11) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `id_kh` int(11) NOT NULL,
  `ten_kh` varchar(50) NOT NULL,
  `id_tk` int(11) NOT NULL,
  `Ho_ten` varchar(50) NOT NULL,
  `Ngay_sinh` date NOT NULL,
  `gioi_tinh` varchar(10) NOT NULL,
  `diachi` varchar(50) NOT NULL,
  `sdt` varchar(20) NOT NULL,
  `ngaydangky` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhom_sp`
--

CREATE TABLE `nhom_sp` (
  `id_Nsp` int(11) NOT NULL,
  `name_sp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `nhom_sp`
--

INSERT INTO `nhom_sp` (`id_Nsp`, `name_sp`) VALUES
(1, 'phòng bếp');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id_sp` int(11) NOT NULL,
  `id_Dsp` int(11) NOT NULL,
  `ten_sp` varchar(50) NOT NULL,
  `mo_ta` varchar(1000) NOT NULL,
  `xuat_xu` varchar(50) NOT NULL,
  `gia_sp` float NOT NULL,
  `soluong_ton` int(11) NOT NULL,
  `anh_sp` varchar(100) NOT NULL,
  `soluotxem` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id_sp`, `id_Dsp`, `ten_sp`, `mo_ta`, `xuat_xu`, `gia_sp`, `soluong_ton`, `anh_sp`, `soluotxem`) VALUES
(16, 10, 'Tủ Lạnh SAMSUNG Inverter Family Hub 641L RS64T5', 'Sản phẩm phân phối chính hãng tại moon house\r\nSản phẩm bảo đảm an toàn và còn hạn sử dụng', 'TP. Hồ Chí Minh', 34990000, 100, 'https://hangdienmaygiare.com/images/products/2019/09/03/large/tu-lanh-panasonic-550-lit-nr-dz600gkvn', 90),
(17, 5, 'CHẢO ĐÁ ĐÁY SUNHOUSE SHG1228MMA', 'Chảo Chống Dính Happy Time Size 28 28cmđược Nhập Khẩu Nguyên Chiếc Từ Việt Nam', 'TP. Hồ Chí Minh', 2990000, 1000, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzAC7rmDIh8FjuLfkfY1Wr3k3m_kl2GGdYig&usqp=CAU', 150),
(18, 2, 'Bộ nồi Inox 3 đáy GOLDSUN SHG2303MSA', 'Giới Thiệu Bộ Nồi Chảo Inox 304 3 Lớp Đáy Liền Cao Cấp Elmich Trimax El3742 - 4 Chiếc Size 18cm, 20cm, 26cm Và Chảo 26cm', 'Hà Nội', 490000, 2000, 'https://tvshopping.vn/image/cache/data/Anh%20gia%20dung/sh891-1200x1200.jpg', 190),
(19, 2, 'BỘ NỒI 6 SẢN PHẨM 10180-C MEYER - ANH', 'Bộ Xoong Nồi Từ Có 13 Món Gồm: 1 Chảo 21,5 Có Chống Dính 1 Chảo 25,4 Có Chống Dính 1 Chảo 30,4 Có Chống Dính 1 Nồi Bé 0,9l ', 'TP. Hồ Chí Minh', 1900000, 10000, 'https://i0.wp.com/hangnhattoday.com/wp-content/uploads/2019/09/CIRCULON.jpg?resize=600%2C570&ssl=1', 200),
(20, 2, 'Xoong nồi FAGOR PROFESSIONAL 20cm', 'Bộ Nồi Silit Toskana 4 Món Giá Chỉ 3,300,000₫, Gồm: 1 Nồi To (có Nắp Kính Ø 24 Cm, 6 Lít, Chiều Cao 13,5cm), 1 Nồi Vừa (có Nắp Kính Ø 20 Cm, 3,4L, Chiều Cao 11,5 Cm)', 'Hà Nội', 1450000, 2000, 'https://osm.com.vn/media/image/1e/75/e3/dcn_fag_professional-20cm.jpg', 80),
(21, 3, 'Quạt đứng công nghiệp Sumika ST650', 'Tính Năng Nổi Bật Thiết Kế Kiểu Dáng Công Nghiệp, động Cơ Chất Lượng Cao. Lưới Quạt Thiết Kế An Toàn. Cánh được Chế Tạo Từ Hợp Kim Nhôm Cao Cấp', 'Hà Nội', 1440000, 5000, 'https://s.meta.com.vn/Data/image/2018/10/04/quat-dung-cong-nghiep-sumika-st650-anh500.jpg', 350),
(22, 3, 'Quạt treo tường công nghiệp Fukada KD750T', 'Loại Quạt Quạt Treo Tường Công Nghiệp Sải Cánh 650mm (26 Inch) Lượng Gió 205 (m3/min) Công Suất 250W Điện áp 220V; 50HZ Động Cơ Dây đồng 100%', 'Hà Nội', 1750000, 2000, 'https://vinafat.vn/uploads/images/san-pham/Qu%E1%BA%A1t_treo_tr%C6%B0%E1%BB%9Dng_Fukada_KD650T1.jpg', 100);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tai_khoan`
--

CREATE TABLE `tai_khoan` (
  `id_tk` int(11) NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(100) NOT NULL,
  `quyendn` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tai_khoan`
--

INSERT INTO `tai_khoan` (`id_tk`, `email`, `pass`, `quyendn`) VALUES
(6, 'thanh@gmail.com', '2309eaf753d1d8d19589a20d519f080b', 0),
(7, 'root@gmail.com', '5690dddfa28ae085d23518a035707282', 1),
(8, 'phong@gmail.com', 'e919fa7f54ef5892792d9aa0d2f3ce7c', 0),
(9, 'nhat@gmail.com', '33f284c9c8cf9424d891f12fb8714c2b', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thanhtoan`
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
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binhluansp`
--
ALTER TABLE `binhluansp`
  ADD PRIMARY KEY (`id_Bl`),
  ADD KEY `id_BL` (`id_sp`),
  ADD KEY `fk_tk` (`id_tk`);

--
-- Chỉ mục cho bảng `chitiet_dh`
--
ALTER TABLE `chitiet_dh`
  ADD PRIMARY KEY (`id_ctdh`),
  ADD KEY `id_dh` (`id_dh`,`id_sp`),
  ADD KEY `id_sp` (`id_sp`);

--
-- Chỉ mục cho bảng `danhmucsp`
--
ALTER TABLE `danhmucsp`
  ADD PRIMARY KEY (`id_Dsp`),
  ADD KEY `id_Nsp` (`id_Nsp`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id_dh`),
  ADD KEY `id_kh` (`id_kh`);

--
-- Chỉ mục cho bảng `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id_i`),
  ADD KEY `id_sp` (`id_sp`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`id_kh`),
  ADD KEY `id_tk` (`id_tk`);

--
-- Chỉ mục cho bảng `nhom_sp`
--
ALTER TABLE `nhom_sp`
  ADD PRIMARY KEY (`id_Nsp`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id_sp`),
  ADD KEY `id_Dsp` (`id_Dsp`);

--
-- Chỉ mục cho bảng `tai_khoan`
--
ALTER TABLE `tai_khoan`
  ADD PRIMARY KEY (`id_tk`);

--
-- Chỉ mục cho bảng `thanhtoan`
--
ALTER TABLE `thanhtoan`
  ADD PRIMARY KEY (`id_tt`),
  ADD KEY `id_tk` (`id_tk`,`id_dh`),
  ADD KEY `id_dh` (`id_dh`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binhluansp`
--
ALTER TABLE `binhluansp`
  MODIFY `id_Bl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT cho bảng `chitiet_dh`
--
ALTER TABLE `chitiet_dh`
  MODIFY `id_ctdh` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `danhmucsp`
--
ALTER TABLE `danhmucsp`
  MODIFY `id_Dsp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id_dh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `image`
--
ALTER TABLE `image`
  MODIFY `id_i` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `id_kh` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nhom_sp`
--
ALTER TABLE `nhom_sp`
  MODIFY `id_Nsp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id_sp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `tai_khoan`
--
ALTER TABLE `tai_khoan`
  MODIFY `id_tk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `thanhtoan`
--
ALTER TABLE `thanhtoan`
  MODIFY `id_tt` int(11) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `binhluansp`
--
ALTER TABLE `binhluansp`
  ADD CONSTRAINT `binhluansp_ibfk_1` FOREIGN KEY (`id_sp`) REFERENCES `sanpham` (`id_sp`),
  ADD CONSTRAINT `fk_tk` FOREIGN KEY (`id_tk`) REFERENCES `tai_khoan` (`id_tk`);

--
-- Các ràng buộc cho bảng `chitiet_dh`
--
ALTER TABLE `chitiet_dh`
  ADD CONSTRAINT `chitiet_dh_ibfk_1` FOREIGN KEY (`id_dh`) REFERENCES `donhang` (`id_dh`),
  ADD CONSTRAINT `chitiet_dh_ibfk_2` FOREIGN KEY (`id_sp`) REFERENCES `sanpham` (`id_sp`);

--
-- Các ràng buộc cho bảng `danhmucsp`
--
ALTER TABLE `danhmucsp`
  ADD CONSTRAINT `danhmucsp_ibfk_1` FOREIGN KEY (`id_Nsp`) REFERENCES `nhom_sp` (`id_Nsp`);

--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`id_kh`) REFERENCES `khachhang` (`id_kh`);

--
-- Các ràng buộc cho bảng `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `image_ibfk_1` FOREIGN KEY (`id_sp`) REFERENCES `sanpham` (`id_sp`);

--
-- Các ràng buộc cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD CONSTRAINT `khachhang_ibfk_1` FOREIGN KEY (`id_tk`) REFERENCES `tai_khoan` (`id_tk`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`id_Dsp`) REFERENCES `danhmucsp` (`id_Dsp`);

--
-- Các ràng buộc cho bảng `thanhtoan`
--
ALTER TABLE `thanhtoan`
  ADD CONSTRAINT `thanhtoan_ibfk_1` FOREIGN KEY (`id_tk`) REFERENCES `tai_khoan` (`id_tk`),
  ADD CONSTRAINT `thanhtoan_ibfk_2` FOREIGN KEY (`id_dh`) REFERENCES `donhang` (`id_dh`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
