-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3325
-- Thời gian đã tạo: Th12 29, 2021 lúc 04:45 PM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `nhomnoname`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `comment` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `name`, `email`, `comment`) VALUES
(1, 'Truong Hai', 'email@email.com', 'San pham su dung rat tuyet voi.'),
(2, 'abc', 'admin@localhost.com', '\'\r\n'),
(3, 'Phan Nhat Quy', 'phanQuy@gmail.com', 'good job.'),
(4, 'ABC', 'abc@gmail.com', 'ABC'),
(11, 'quy dep trai', 'phannhatquy.tdc2019@gmail.com', 'sản phẩm sử dụng rất tốt');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `manufactures`
--

CREATE TABLE `manufactures` (
  `manu_id` int(11) NOT NULL,
  `manu_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `manufactures`
--

INSERT INTO `manufactures` (`manu_id`, `manu_name`) VALUES
(7, 'Cà Mau');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `ID` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manu_id` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `pro_image` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `feature` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`ID`, `name`, `manu_id`, `type_id`, `price`, `pro_image`, `description`, `feature`, `created_at`) VALUES
(80, 'Khô cá đù 1 nắng', 7, 7, 500000, 'kho-ca-du-xe-1n-747_thumb_500x0.jpg', ' Khô cá đù 1 nắng vừa ăn mềm vị lạt.\r\nCó loại xẻ rút xương và loại nguyên con.\r\nKhông hóa chất - Không phẩm màu.', 1, '2021-12-28 19:12:20'),
(78, 'Chả tôm Cà Mau', 7, 7, 99000, 'cha-tom-ca-mau-2-470_thumb_500x0.jpg', ' Chả tôm tươi, Đặc sản Cà Mau\r\nLàm 100% từ tôm tươi vùng sinh thái Cà Mau', 0, '2021-12-28 19:12:28'),
(79, 'Khô rắn đồng', 7, 7, 450000, 'kho-ran-dong-ag-584_thumb_500x0.jpg', ' \r\nKhô rắn đồng loại đặc biệt 100% rắn tự nhiên\r\nĐược làm tự rắn nước rắn bông súng vùng An Giang.\r\nĐặc sản trứ danh vùng sông nước.', 1, '2021-12-28 19:12:43'),
(76, 'Rượu trái giác', 7, 8, 220000, 'ruou-trai-giac-514_thumb_500x0.jpg', ' Rượu trái giác đặc sản trứ danh Cà Mau.\r\nChai 19% vol: 220.000đ; chai 30% vol: 250.000đ\r\nXuất xứ: rừng U Minh hạ, Cà Mau', 1, '2021-12-28 19:12:45'),
(77, 'Mắm tép trộn đu đủ', 7, 7, 250000, 'mam-tep-ca-mau-tron-du-du-877_thumb_500x0.jpg', ' Mắm tép trộn đu đủ Cà Mau thơm ngon.\r\nNguyên liệu: 1 nửa mắm tép, 1 nửa đu đủ.\r\nMắm tép chua ngọt đậm mùi tôm Cà Mau.\r\nĂn cực ngon cùng cơm trắng và các món khác.', 1, '2021-12-28 19:12:00'),
(75, 'Mắm ba khía', 7, 7, 140000, 'mam-ba-khia-800_thumb_500x0.jpg', ' \r\nMắm ba khía Rạch Gốc - Cà Mau\r\nLoại nguyên con chưa trộn 180.000đ/hũ 1kg.\r\nLoại đã trộn hũ nhỏ 140.000đ/hũ 700gr.\r\nLoại đã trộn hũ lớn 210.000đ/hũ 1,2kg', 1, '2021-12-28 19:12:01'),
(74, 'Mật ong Cà Mau', 7, 7, 250000, 'mat-ong-rung-u-minh-387_thumb_500x0.jpg', ' Xuất xứ: rừng tràm U Minh Hạ - Cà Mau.\r\nMật ong thật 100%; Hoàn tiền nếu mật giả.\r\nLấy trực tiếp từ nông dân sống tại rừng U Minh.\r\nThích hợp cho việc làm đẹp và tốt cho sức khỏe.', 1, '2021-12-28 19:12:59'),
(73, 'Tôm khô Cà Mau', 7, 7, 1145000, 'hop-tom-kho-357_thumb_500x0.jpg', ' Tôm được làm THỦ CÔNG từ tôm đất sống\r\nXuất xứ: Rạch Gốc - Cà Mau\r\nMàu sắc tự nhiên KHÔNG phẩm màu.\r\nTôm đảm bảo, Hoàn tiền nếu khách không vừa ý.\r\nĐóng gói - Hút chân - Bao bì để gửi đi nước ngoài.', 1, '2021-12-28 19:12:12'),
(71, 'Mắm cá lóc', 7, 7, 250000, 'mam-ca-loc-511_thumb_500x0.jpg', ' Mắm cá lóc đồng U Minh - Cà Mau\r\nHũ 1kg giá 250.000đ; hũ nửa ký 130.000đ\r\nLàm từ cá lóc đồng chính gốc U Minh', 0, '2021-12-28 19:12:20'),
(72, 'Chà bông cá lóc', 7, 7, 450000, 'cha-bong-ca-loc-dong-700_thumb_500x0.jpg', ' Làm từ 100% cá lóc đồng sống.\r\nKHÔNG hóa chất - KHÔNG phẩm màu.\r\nĐược làm Thủ Công theo bí quyết gia truyền.\r\nLuộc bằng nước dừa tươi trong quá trình chế biến.', 0, '2021-12-28 19:12:07'),
(70, 'Tôm đất khô nguyên vỏ', 7, 7, 750000, 'tom-kho-nguyen-vo-187_thumb_500x0.jpg', ' Làm từ 100% tôm đất sống vùng sinh thái.\r\nThích hợp làm mồi nhắm rượu bia.\r\nSản phẩm đẹp - ngon thích hợp làm quà biếu.\r\nLàm thủ công, nguyên liệu tươi sống.', 0, '2021-12-28 19:12:27'),
(68, 'Khô mực Cà Mau', 7, 7, 999000, 'kho-muc-song-doc-loai-1-784_thumb_500x0.jpg', ' Xuất xứ: Sông Đốc Cà Mau.\r\nLà loại khô câu, ngon nhất Cà Mau.\r\nMực con TO - DÀY - NGỌT THỊT.\r\nLàm từ mực tươi sống - Khô chế biến thủ công.', 0, '2021-12-28 19:12:18'),
(69, 'Khô cá sặc trứng', 7, 7, 200000, 'kho-ca-sac-trung-1-nang-108_thumb_500x0.jpg', ' Khô cá sặc trứng 1 nắng loại vừa ăn ngon.\r\nLoại to 6 - 8 con/kg giá 200.000đ\r\nXuất xứ: Huyện U Minh, Cà Mau.', 0, '2021-12-28 19:12:18'),
(65, 'CÁ KHÔ BỔI', 7, 7, 34000, 'KHO BOI BA DUC - TVT.png', ' Khối lượng: 500gr, 1kg\r\nThành phần: Cá bổi tươi, muối', 0, '2021-12-28 19:12:48'),
(66, 'NƯỚC MẮM MẠCH LONG', 7, 7, 21000, 'NUOC MAM MACH LONG-CN.png', ' Khối lượng: 300ml, 500ml\r\nThành phần: Cá, nước muối, monosodium glutamate, sucralose (E955), I+G (E635), acid citirc, vitamin C (acid ascorbic)\r\nCông dụng: Dùng để chấm', 0, '2021-12-28 19:12:39'),
(67, 'KHÔ CÁ ĐÙ', 7, 7, 43000, 'kho-ca-du-nn-818_thumb_500x0.jpg', ' Quy cách đóng gói	500gr/gói hút chân không\r\nXuất xứ	Nhà Bè, Long An\r\nNguyên liệu	Cá đù tươi 100% không qua đá hoặc đông', 0, '2021-12-28 19:12:55'),
(63, 'GẠO SINH THÁI', 7, 7, 89000, 'GAO TU TAM - TB.png', ' Bảo quản: Thoán mát, khô ráo\r\nThời hạn sử dụng: 06 tháng kể từ ngày sản xuất', 0, '2021-12-28 18:12:41'),
(64, 'NƯỚC MẮM NGỌC TRÂN', 7, 7, 16000, 'NUOC MAM NGOC TRAN - PT.png', ' Khối lượng: 500 ml.\r\nThành phần: Cá cơm tươi, muối hạt.', 0, '2021-12-28 19:12:11'),
(60, 'CUA BIỂN NĂM CĂN', 7, 7, 13000, 'CUA NAM CAN.png', ' Khối lượng: 250 - 750 gram.\r\nThành phần: Cua biển 100%.', 0, '2021-12-28 18:12:11'),
(61, 'GẠO HOÀNG YẾN', 7, 7, 78000, 'TRI LUC 2.png', ' Bảo quản: Thoán mát, khô ráo\r\nThời hạn sử dụng: 06 tháng kể từ ngày sản xuất', 0, '2021-12-28 18:12:38'),
(62, 'MẮM CÁ MÀO GÀ', 7, 7, 56000, 'MAM CA MAO GA.png', ' Khối lượng: 500gr, 1kg\r\nThành phần: Cá mào gà 95&, gia vị (thính gạo, muối, đường) 5%\r\nCông dụng: Dùng để làm thực phẩm', 0, '2021-12-28 18:12:09'),
(58, 'BA KHÍA MUỐI', 7, 7, 42000, 'ba-khia-dam-doi- (1).png', ' Khối lượng: 500 gr, 1 kg\r\nThành phần: Ba khía tươi, muối trắng, nước ngọt\r\nCông dụng: Dùng làm thức ăn', 0, '2021-12-28 18:12:35'),
(59, 'TÔM KHÔ SINH THÁITÔM KHÔ SINH THÁI', 7, 7, 13000, 'TTP FARM.png', ' Thành phần: 100% thịt tôm sinh thái, muối, tiêu, hành lá.', 0, '2021-12-28 18:12:22'),
(57, 'CHẢ CÁ PHI', 7, 7, 23000, 'BAY THO.png', ' Khối lượng: 500 gram\r\nThành phần: Cá phi, muối, tiêu, hành, bột ngọt, tỏi sấy, dầu ăn\r\nCông dụng: Dùng làm thực phẩm', 0, '2021-12-28 18:12:47'),
(55, 'DƯA BỒN BỒN', 7, 7, 45000, 'Dua BB 1 (1).png', ' Khối lượng: 300gr, 500rg\r\nThành phần: Bồn bồn + Nước gạo lên men', 0, '2021-12-28 18:12:45'),
(56, 'TÔM RANGTÔM RANG', 7, 7, 25000, 'TOM RANG NGOC GIAU.png', ' Khối lượng: 250 gr, 500gr\r\nThành phần: Tôm (đất, bạc, thẻ, sú), gia vị (đường, muối)\r\nCông dụng: Nguồn thực phẩm mang lại dưỡng chất dồi dào cho cơ t: hểnhư vitamin A, E, B6, B12, sắt, canxi, magiê, kali... giúp xương và răng chắc khỏe, giúp nâng cao sự hiểu biết, tăng cường trí nhớ và sự tập trung khi học tập cũng như làm việc.B ên cạnh đó, tôm rất cần thiết cho sự phát triển não của bé khi còn trong bụng mẹ và khi mới sinh. Ngoài ra còn chứa astaxanthin, giúp giảm tình trạng mỏi mắt và cải thiện hoạt động của bộ nhớ. giảm nguy cơ mắc bệnh viêm não.', 0, '2021-12-28 18:12:52'),
(52, 'GẠO SẠCH TOÀN TÂM', 7, 7, 81000, 'MINH TAM 2.png', ' Thành phần: Gạo trắng 100%.\r\nCách chế biến: Vo gạo, đổ nước vào nồi cho ngập nước từ 1 - 2 cm, nấu cho sôi không cần đảo xới gạo để hạt gạo khi chín thành cơm hạt được giữ nguyên.\r\n.Chỉ tiêu chất lượng: Độ ẩm ≤ 14.5 % ;Tỷ lệ tấm ≤ 5%.', 0, '2021-12-28 18:12:46'),
(53, 'CHẢ CÁ PHI', 7, 7, 88000, 'CAI BAT.png', ' Khối lượng: 500 gram\r\nThành phần: Thịt cá phi 96%, gia vị (muối, bột ngọt, hành, tiêu) 4%', 0, '2021-12-28 18:12:47'),
(54, 'GẠO SẠCH ÔNG MUỘNGẠO SẠCH ÔNG MUỘN', 7, 7, 56000, 'OM 1.png', ' Khối lượng: 5 kg.\r\nThành phần: Gạo trắng 100%.', 0, '2021-12-28 18:12:48'),
(50, 'TÔM KHÔ ROXA', 7, 7, 45000, 'RONG XANH 1.png', ' Khối lượng: 200 gr, 500 gr.\r\nThành phần: Tôm thẻ tươi quảng canh.', 0, '2021-12-28 18:12:22'),
(51, 'TÔM XẺ ROXA', 7, 7, 75000, 'rong xanh.png', ' Khối lượng: 200 gr, 500 gr.\r\nThành phần: Tôm thẻ tươi quảng canh.', 0, '2021-12-28 18:12:43'),
(49, 'RƯỢU HƯƠNG LÚA', 7, 8, 200000, 'HLXD 2.png', ' Khối lượng: 750 ml.\r\nThành phần: Rượu trắng trưng cất từ gạo đạt chuẩn VietGAP.\r\nCông dụng: Có thể giúp đẩy lùi bệnh tật như giảm bệnh tuyến tiền liệt, chống lão hóa, phòng chống loãng xương, sát trùng, trị mụn nhọt, hạ sốt, chống sốc, giảm cân,... rượu còn là chất giúp bạn tăng chất lượng \"yêu\" hiệu quả.\r\nHướng dẫn sử dụng: Dùng uống trực tiếp.', 1, '2021-12-28 18:12:05'),
(48, 'BÁNH PHỒNG TÔM', 7, 7, 75000, 'VINH HOA PHAT 4.png', ' Tên sản phẩm: Bánh phồng tôm Vĩnh Hòa Phát\r\nThành phần: Tôm (38%), bột năng (56%), gia vị (6%).', 1, '2021-12-28 18:12:22'),
(47, 'TRÀ XẠ ĐEN', 7, 8, 99000, 'TRA XA DEN HUNG KHANH - TVT.png', ' Thành phần: Xạ đen nguyên chất 100%.\r\nThông tin, cảnh báo: Không sử dụng sản phẩm có dấu hiệu hư hỏng, hết hạn sử dụng.\r\nQuy cách đóng gói: 40 túi lọc (5 gam)/hộp; hộp giấy Ofset kích thước (10cmX20cmx7cm); khối lượng tịnh 200gam/hộp và tùy theo yêu cầu khách hàng.\r\nChất liệu bao bì: Sản phẩm bao gói bằng bao PA,PE, túi ZIP... đảm bảo chất lượng chứa đựng thực phẩm theo quy định hiện hành.', 1, '2021-12-28 18:12:29'),
(45, 'DƯA BỒN BỒN', 7, 7, 55000, 'Dua BB 1.png', ' Khối lượng: 300gr, 500rg\r\nThành phần: Bồn bồn + Nước gạo lên men\r\nCông dụng: Tăng men tiêu hóa đường ruột', 0, '2021-12-28 18:12:44'),
(46, 'BA KHÍA MUỐIBA KHÍA MUỐI', 7, 7, 45000, 'ba-khia-dam-doi-.png', ' Khối lượng: 500 gr, 1 kg\r\nThành phần: Ba khía tươi, muối trắng, nước ngọt\r\nCông dụng: Dùng làm thức ăn', 0, '2021-12-28 18:12:36'),
(44, 'TÔM KHÔ CHÀ BÔNG', 7, 7, 95000, 'SONG DAM 1.png', ' Khối lượng: 250 gr, 500 gr.\r\nThành phần: > 95% tôm đất tự nhiên, < 5% muối\r\nCông dụng: Tôm khô còn là nguồn cung cấp phốt-pho dồi dào, loại khoáng chất có hàm lượng cao thứ hai trong cơ thể sau canxi. Phốt-pho thực hiện nhiều chức năng quan trọng trong việc tái tạo mô và tế bào tổn thương, phát triển hệ xương và răng, thanh lọc các chất cặn bã trong máu và cơ thể.', 0, '2021-12-28 18:12:50'),
(43, 'TÔM KHÔ TÁCH VỎ', 7, 7, 100000, 'TAN PHAT LOI 2.png', ' Thành phần: Tôm 99%; muối 1%.\r\nHướng dẫn sử dụng: Ăn liền hoặc chế biến các món ăn dồi dào canxi.\r\nHướng dẫn bảo quản: Bảo quản nơi thoáng mát, tránh ánh nắng trực tiếp. Tốt nhất bảo quản ≤ 120C', 0, '2021-12-28 18:12:09'),
(42, 'TÔM CHÀ BÔNG', 7, 7, 100000, 'TOM CHA BONG NGOC GIAU.png', ' Khối lượng: 100gr, 250gr\r\nThành phần: Tôm, gia vị (đường, nước mắm)\r\nCông dụng: Tôm là nguồn thực phẩm mang lại dưỡng chất dồi dào cho cơ thể. Tôm rất giàu vitamin và khoáng chất như vitamin A, E, B6, B12, niacin, riboflavin, thiamin và niacin. Ngoài ra nó có chứa sắt, canxi, phốt pho, kẽm, phốt pho, magiê và kali; Thịt tôm chứa rất nhiều canxi, là loại dinh dưỡng cần thiết giúp xương và răng chắc khỏe.; Trong tôm có chứa astaxanthin, giúp giảm tình trạng mỏi mắt và cải thiện hoạt động của bộ nhớ. giảm nguy cơ mắc bệnh viêm não', 0, '2021-12-28 18:12:05'),
(40, 'MUỐI TÔM', 7, 7, 10000, 'TAN PHAT LOI 1.png', ' Khối lượng: 100 - 150 - 200 gram.\r\nThành phần: Muối, tôm, gia vị.\r\nCông dụng: Tăng cường dinh dưỡng vitamine, C, D, A...', 0, '2021-12-28 18:12:01'),
(41, 'CHUỐI XIÊM ÉP KHÔ', 7, 7, 15000, 'chuoi 7 hoang.jpg', ' Khối lượng: 500 gr, 1 kg\r\nThành phần: Chuối xiêm\r\nCông dụng: Ăn liền hoặc làm nguyên liệu', 0, '2021-12-28 18:12:42'),
(39, 'RƯỢU QUÝ', 7, 8, 10000000, 'RQuy.jpg', 'Khối lượng: 650ml.\r\n\r\nThành phần: Rượu gạo, trái nhàu.\r\n\r\nCông dụng: Trái nhàu có công dụng chữa các bệnh lý như: Đau lưng, đau gân, viêm khớp; trào ngược dịch dạ dày, nhuận tràng; ho cảm, viêm phế quản, hen suyễn; vảy nến, ban đỏ; tiểu đường, hỗ trợ hệ miễn dịch. Đặc biệt, các tinh chất trong trái nhàu có tác dụng chống oxy hóa, làm đẹp da, đẹp tóc, hạn chế quá trình lão hóa và chống ung thư.', 1, '2021-12-29 12:15:31'),
(35, 'BÁNH PHỒNG TÔM', 7, 7, 100000, 'TOM TUOI.png', ' Tên sản phẩm: Bánh phồng tôm NACAMA 38% tôm.\r\nThành phần: Tôm tươi 38%; Bột năng, trứng: 52%; Gia vị: (muối, hạt nêm từ tôm, tiêu, tỏi, nước) 10%.', 0, '2021-12-29 13:04:03'),
(36, 'BÁNH PHỒNG TÔM NACAMA TÔM ĐẤT', 7, 7, 100000, 'NCM Tom(1).jpg', ' Thành phần: Tôm đất 50%; Bột năng, trứng: 35%; Gia vị: (muối, hạt nêm từ tôm, tiêu, tỏi, nước) 10%.', 0, '2021-12-28 18:12:07'),
(37, 'BÁNH PHỒNG TÔM NACAMA TÔM SÚ', 7, 7, 100000, 'TOM SU.png', ' \r\nTên sản phẩm: Bánh phồng tôm NACAMA tôm sú\r\nThành phần: Tôm sú 65%; Bột năng, trứng: 25%; Gia vị: (muối, hạt nêm từ tôm, tiêu, tỏi, nước) 10%.', 0, '2021-12-28 18:12:07'),
(38, 'MẬT ONG RUM CM', 7, 7, 500000, 'MO 1.jpg', ' Khối lượng: 250 ml, 500 ml\r\nThành phần: 100% mật ong nguyên chất hoa tràm rừng U Minh Hạ Cà Mau\r\nCông dụng: Giúp bổ dưỡng, tăng sức đề kháng và hỗ trợ phát triển thể chất và trí tuệ; Mật ong chứa hơn 70% đường tự nhiên dễ tiêu Fructoza & Glucoza; Mật ong RUM CM còn chứa các chất dinh dưỡng như Protein, Carbohydrate, cũng như các khoáng chất thiết yếu như Sắt, Canxi, Kali...; Mật ong có tác dụng bảo vệ gan, kích thích tái tạo tế bào gan, có tác dụng khống chế nhất định đối với việc hình thành mỡ gan; Mật ong còn có tác dụng sát khuẩn, tiêu độc, tiêu viêm, giúp vết thương mau lành; Mật ong chứa các enzyme tự nhiên có thể giúp loại bỏ các tế bào chết trên da, giúp da trắng sáng, mịn màng, khỏe đẹp; Mật ong tốt cho hệ tiêu hóa, hỗ trợ điều trị viêm loét dạ dày và cùng rất nhiều lợi ích khác cho cơ thể.', 1, '2021-12-28 18:12:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `protypes`
--

CREATE TABLE `protypes` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `protypes`
--

INSERT INTO `protypes` (`type_id`, `type_name`) VALUES
(7, 'Thực phẩm'),
(8, 'Đồ uống');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf32_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf32_unicode_ci NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`user_id`, `name`, `password`, `role`) VALUES
(4, 'admin', '$2y$10$tC2zAPlAC/NLIW006eGL1OgqDhhSWzERizjuWX546q6haMER/atdS', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `manufactures`
--
ALTER TABLE `manufactures`
  ADD PRIMARY KEY (`manu_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `protypes`
--
ALTER TABLE `protypes`
  ADD PRIMARY KEY (`type_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `manufactures`
--
ALTER TABLE `manufactures`
  MODIFY `manu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT cho bảng `protypes`
--
ALTER TABLE `protypes`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
