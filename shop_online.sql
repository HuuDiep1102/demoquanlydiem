-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 11, 2018 lúc 05:05 AM
-- Phiên bản máy phục vụ: 10.1.31-MariaDB
-- Phiên bản PHP: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `doan2`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `maadmin` int(11) NOT NULL,
  `tenadmin` varchar(100) NOT NULL,
  `gioitinh` int(11) NOT NULL,
  `ngaysinh` date NOT NULL,
  `diachi` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `lienhe` varchar(100) NOT NULL,
  `taikhoan` varchar(100) NOT NULL,
  `matkhau` varchar(100) NOT NULL,
  `trangthai` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`maadmin`, `tenadmin`, `gioitinh`, `ngaysinh`, `diachi`, `email`, `lienhe`, `taikhoan`, `matkhau`, `trangthai`) VALUES
(1, 'Nguyễn Thương', 1, '2017-07-04', 'Hà Nội', 'ad@gmail.com', '0123456789', 'admin', '123', 1),
(2, 'Nguyễn A', 1, '2018-05-01', 'Bắc Ninh', 'ad@gmail.com', '0123456789', 'admin1', '123', 1),
(3, 'Nguyễn B', 0, '1987-05-01', 'Bắc Ninh', 'ad@gmail.com', '0123456789', 'admin2', '123', 1),
(4, 'Nguyễn C', 1, '2018-05-01', 'Bắc Ninh', 'ad@gmail.com', '0123456789', 'admin3', '123', 1),
(5, 'Nguyễn D', 0, '1988-05-01', 'Bắc Ninh', 'ad@gmail.com', '0123456789', 'admin4', '123', 1),
(6, 'Nguyễn E', 1, '2018-05-01', 'Bắc Ninh', 'ad@gmail.com', '0123456789', 'admin5', '123', 1),
(7, 'Nguyễn F', 0, '2011-05-01', 'Bắc Ninh', 'ad@gmail.com', '0123456789', 'admin6', '123', 1),
(8, 'Nguyễn G', 1, '2018-05-01', 'Bắc Ninh', 'ad@gmail.com', '0123456789', 'admin7', '123', 1),
(9, 'Nguyễn H', 0, '2018-05-01', 'Bắc Ninh', 'ad@gmail.com', '0123456789', 'admin8', '123', 1),
(10, 'Nguyễn I', 0, '2018-05-01', 'Bắc Ninh', 'ad@gmail.com', '0123456789', 'admin9', '123', 1),
(11, 'Nguyễn J', 1, '2018-05-01', 'Bắc Ninh', 'ad@gmail.com', '0123456789', 'admin10', '123', 1),
(12, 'Nguyễn K', 1, '2018-05-01', 'Bắc Ninh', 'ad@gmail.com', '0123456789', 'admin11', '123', 1),
(15, 'Ahihih', 0, '2018-05-16', 'ad', 'ad@gmail.com', '0123456789', 'admin30', '123', 1),
(16, 'Nguyễn Đạt', 0, '2018-05-05', 'Hà Nội', 'ad@gmail.com', '0123456789', 'admin31', '123', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chuyennganh`
--

CREATE TABLE `chuyennganh` (
  `machuyennganh` int(11) NOT NULL,
  `tenchuyennganh` varchar(30) NOT NULL,
  `trangthai` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `chuyennganh`
--

INSERT INTO `chuyennganh` (`machuyennganh`, `tenchuyennganh`, `trangthai`) VALUES
(1, 'Lập trình viên', 1),
(2, 'Quản trị mạng', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chuyennganh_monhoc`
--

CREATE TABLE `chuyennganh_monhoc` (
  `malienket` int(11) NOT NULL,
  `machuyennganh` int(11) NOT NULL,
  `mamonhoc` int(11) DEFAULT NULL,
  `trangthai` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `chuyennganh_monhoc`
--

INSERT INTO `chuyennganh_monhoc` (`malienket`, `machuyennganh`, `mamonhoc`, `trangthai`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 1),
(3, 2, 3, 1),
(4, 2, 4, 1),
(5, 2, 5, 1),
(6, 1, 8, 1),
(7, 1, 9, 1),
(8, 2, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diem`
--

CREATE TABLE `diem` (
  `malich` int(11) NOT NULL,
  `masinhvien` int(11) NOT NULL,
  `skillmot` float NOT NULL,
  `finalmot` float NOT NULL,
  `skillhai` float DEFAULT NULL,
  `finalhai` float DEFAULT NULL,
  `ketqua` int(11) NOT NULL,
  `trangthai` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `diem`
--

INSERT INTO `diem` (`malich`, `masinhvien`, `skillmot`, `finalmot`, `skillhai`, `finalhai`, `ketqua`, `trangthai`) VALUES
(4, 1, 7, 6, NULL, NULL, 0, 1),
(4, 3, 9, 9, NULL, NULL, 0, 1),
(4, 7, 4, 4, NULL, NULL, 3, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giaovien`
--

CREATE TABLE `giaovien` (
  `magiaovien` int(11) NOT NULL,
  `tengiaovien` varchar(50) NOT NULL,
  `gioitinh` int(11) NOT NULL,
  `ngaysinh` date NOT NULL,
  `lienhe` varchar(50) NOT NULL,
  `diachi` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `taikhoan` varchar(30) NOT NULL,
  `matkhau` varchar(50) NOT NULL,
  `trangthai` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `giaovien`
--

INSERT INTO `giaovien` (`magiaovien`, `tengiaovien`, `gioitinh`, `ngaysinh`, `lienhe`, `diachi`, `email`, `taikhoan`, `matkhau`, `trangthai`) VALUES
(1, 'Nguyễn Văn A', 0, '2018-05-29', '0123456789', 'Hà Nội', 'ad@gmail.com', 'gv1', '123', 1),
(2, 'Nguyễn Văn B', 1, '2018-05-29', '0123456789', 'Hà Nội', 'ad@gmail.com', 'gv2', '123', 1),
(5, 'Nguyễn Văn C', 0, '2018-05-29', '0123456789', 'Hà Nội', 'ad@gmail.com', 'gv3', '123', 1),
(6, 'Nguyễn Văn D', 1, '2018-05-15', '0123456789', 'Hà Nội', 'ad@gmail.com', 'gv4', '123', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lichhoc`
--

CREATE TABLE `lichhoc` (
  `malich` int(11) NOT NULL,
  `magiaovien` int(11) NOT NULL,
  `mamonhoc` int(11) NOT NULL,
  `malop` int(11) NOT NULL,
  `thoigianbatdau` date NOT NULL,
  `thoigianketthuc` date NOT NULL,
  `trangthai` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `lichhoc`
--

INSERT INTO `lichhoc` (`malich`, `magiaovien`, `mamonhoc`, `malop`, `thoigianbatdau`, `thoigianketthuc`, `trangthai`) VALUES
(4, 1, 1, 1, '2018-05-16', '2018-05-26', 1),
(5, 2, 2, 1, '2018-05-05', '2018-05-25', 1),
(6, 1, 3, 2, '2018-06-08', '2018-06-28', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lop`
--

CREATE TABLE `lop` (
  `malop` int(11) NOT NULL,
  `tenlop` varchar(30) NOT NULL,
  `machuyennganh` int(11) NOT NULL,
  `trangthai` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `lop`
--

INSERT INTO `lop` (`malop`, `tenlop`, `machuyennganh`, `trangthai`) VALUES
(1, 'BKC01', 1, 1),
(2, 'BKC02', 2, 1),
(3, 'BKC03', 1, 1),
(4, 'BKC04', 2, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `monhoc`
--

CREATE TABLE `monhoc` (
  `mamonhoc` int(11) NOT NULL,
  `tenmonhoc` varchar(40) NOT NULL,
  `trangthai` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `monhoc`
--

INSERT INTO `monhoc` (`mamonhoc`, `tenmonhoc`, `trangthai`) VALUES
(1, 'Java cơ bản', 1),
(2, 'Python', 1),
(3, 'C cơ bản', 1),
(4, 'PHP cơ bản', 1),
(5, 'C# cơ bản', 1),
(8, 'C++', 1),
(9, 'Database Cơ bản', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sinhvien`
--

CREATE TABLE `sinhvien` (
  `masinhvien` int(11) NOT NULL,
  `tensinhvien` varchar(50) NOT NULL,
  `gioitinh` int(11) NOT NULL,
  `ngaysinh` date NOT NULL,
  `diachi` varchar(100) NOT NULL,
  `lienhe` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `malop` int(11) NOT NULL,
  `taikhoan` varchar(30) NOT NULL,
  `matkhau` varchar(40) NOT NULL,
  `trangthai` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sinhvien`
--

INSERT INTO `sinhvien` (`masinhvien`, `tensinhvien`, `gioitinh`, `ngaysinh`, `diachi`, `lienhe`, `email`, `malop`, `taikhoan`, `matkhau`, `trangthai`) VALUES
(1, 'Nguyễn Đạt', 0, '2018-05-17', 'Băc Ninh', '0123456789', 'ad@gmail.com', 1, 'sv1', '123', 1),
(2, 'Nguyễn A', 1, '2018-05-12', 'Bắc Ninh', '0123456789', 'ad@gmail.com', 3, 'sv2', '123', 1),
(3, 'Nguyễn Quyền', 0, '2018-05-14', 'Bắc Ninh', '0123456789', 'ad@gmail.com', 1, 'sv3', '123', 1),
(4, 'Nguyễn C', 1, '2018-05-15', 'Hà Nội', '0123456789', 'ad@gmail.com', 2, 'sv', '123', 1),
(5, 'Nguyễn D', 0, '2018-05-15', 'Hà Nội', '0123456789', 'ad@gmail.com', 4, 'sv5', '123', 1),
(6, 'Nguyễn E', 0, '2018-05-15', 'Hà Nội', '0123456789', 'ad@gmail.com', 2, 'sv6', '123', 1),
(7, 'Nguyễn F', 1, '2018-05-15', 'Hà Nội', '0123456789', 'ad@gmail.com', 1, 'sv7', '123', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongke`
--

CREATE TABLE `thongke` (
  `masinhvien` int(11) NOT NULL,
  `mamonhoc` int(11) NOT NULL,
  `final` float NOT NULL,
  `skill` float NOT NULL,
  `trungbinh` float NOT NULL,
  `trangthai` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`maadmin`),
  ADD UNIQUE KEY `taikhoan` (`taikhoan`);

--
-- Chỉ mục cho bảng `chuyennganh`
--
ALTER TABLE `chuyennganh`
  ADD PRIMARY KEY (`machuyennganh`);

--
-- Chỉ mục cho bảng `chuyennganh_monhoc`
--
ALTER TABLE `chuyennganh_monhoc`
  ADD PRIMARY KEY (`malienket`),
  ADD KEY `machuyennganh` (`machuyennganh`),
  ADD KEY `mamonhoc` (`mamonhoc`);

--
-- Chỉ mục cho bảng `giaovien`
--
ALTER TABLE `giaovien`
  ADD PRIMARY KEY (`magiaovien`),
  ADD UNIQUE KEY `taikhoan` (`taikhoan`);

--
-- Chỉ mục cho bảng `lichhoc`
--
ALTER TABLE `lichhoc`
  ADD PRIMARY KEY (`malich`);

--
-- Chỉ mục cho bảng `lop`
--
ALTER TABLE `lop`
  ADD PRIMARY KEY (`malop`),
  ADD KEY `lop_ibfk_1` (`machuyennganh`);

--
-- Chỉ mục cho bảng `monhoc`
--
ALTER TABLE `monhoc`
  ADD PRIMARY KEY (`mamonhoc`);

--
-- Chỉ mục cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD PRIMARY KEY (`masinhvien`),
  ADD UNIQUE KEY `taikhoan` (`taikhoan`),
  ADD KEY `malop` (`malop`);

--
-- Chỉ mục cho bảng `thongke`
--
ALTER TABLE `thongke`
  ADD KEY `masinhvien` (`masinhvien`),
  ADD KEY `mamonhoc` (`mamonhoc`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `maadmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `chuyennganh`
--
ALTER TABLE `chuyennganh`
  MODIFY `machuyennganh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `chuyennganh_monhoc`
--
ALTER TABLE `chuyennganh_monhoc`
  MODIFY `malienket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `giaovien`
--
ALTER TABLE `giaovien`
  MODIFY `magiaovien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `lichhoc`
--
ALTER TABLE `lichhoc`
  MODIFY `malich` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `lop`
--
ALTER TABLE `lop`
  MODIFY `malop` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `monhoc`
--
ALTER TABLE `monhoc`
  MODIFY `mamonhoc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  MODIFY `masinhvien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
