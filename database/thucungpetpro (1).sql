-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2021 at 12:18 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thucungpetpro`
--

-- --------------------------------------------------------

--
-- Table structure for table `loaiisanpham`
--

CREATE TABLE `loaiisanpham` (
  `id` int(11) NOT NULL,
  `tenloaisanpham` varchar(200) NOT NULL,
  `hinhanhloaisanpham` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loaiisanpham`
--

INSERT INTO `loaiisanpham` (`id`, `tenloaisanpham`, `hinhanhloaisanpham`) VALUES
(1, 'Thời  Trang      ', 'https://bizweb.dktcdn.net/thumb/grande/100/067/820/articles/thoi-trang-thu-cung.jpg?v=1499849840703'),
(2, 'Dụng Cụ Hàng Ngày  ', 'https://www.petcity.vn/media/news/0203_t3.png'),
(3, 'Thức Ăn', 'https://meocun.com/wp-content/uploads/image1-12.jpg'),
(4, 'Sức Khỏe', 'https://hopquysanpham.com/wp-content/uploads/2019/06/thuoc-thu-y.png');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `tensanpham` varchar(200) NOT NULL,
  `giasanpham` int(15) NOT NULL,
  `hinhanhsanpham` varchar(200) NOT NULL,
  `motasanpham` varchar(10000) NOT NULL,
  `idsanpham` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id`, `tensanpham`, `giasanpham`, `hinhanhsanpham`, `motasanpham`, `idsanpham`) VALUES
(1, 'ÁO ĐẦM TẾT', 120000, 'http://hachikopetshop.vn/images/item/803617e1-ef1d-4bcd-a67b-b65920b0ecee-1967.jpg', '- Kiểu dáng sang trọng\r\n- thích hợp cho chó 5kg trở xuống\r\nLưu ý: số liệu trên chỉ mang tính chất tương đối. Size áo còn phụ thuộc vào giống cún và độ dày lông. Để chọn chính xác cỡ áo cho chó mèo, bạn vui lòng chat trực tiếp cho shop để được tư vấn tốt nhất\r\n', 1),
(2, 'ÁO TẾT CHO CHÓ MÈO CÓ TÚI LÌ XÌ', 185000, 'http://hachikopetshop.vn/images/item/710f49f2-53de-4b65-84ff-406e513727d2-1968.jpg', '- Kiểu dáng sang trọng\r\n- thích hợp cho chó, mèo 5kg trở xuống\r\nLưu ý: số liệu trên chỉ mang tính chất tương đối. Size áo còn phụ thuộc vào giống cún và độ dày lông. Để chọn chính xác cỡ áo cho chó mèo, bạn vui lòng chat trực tiếp cho shop để được tư vấn tốt nhất\r\n', 1),
(3, 'ÁO ĐẦM TẾT MÈO THẦN TÀI', 110000, 'http://hachikopetshop.vn/images/item/9f5e1738-3b5f-4d25-b772-aa8d34b6f139-1966.jpg', '- Kiểu dáng sang trọng\r\n- thích hợp cho chó 5kg trở xuống\r\nLưu ý: số liệu trên chỉ mang tính chất tương đối. Size áo còn phụ thuộc vào giống cún và độ dày lông. Để chọn chính xác cỡ áo cho chó mèo, bạn vui lòng chat trực tiếp cho shop để được tư vấn tốt nhất\r\n', 1),
(4, 'ÁO ĐẦM TẾT HỌA TIẾT CÁ CHÉP', 130000, 'http://hachikopetshop.vn/images/item/d96d8501-9f8a-4002-9aa6-849c654f02da-1965.jpg', '- Kiểu dáng sang trọng\r\n- Thích hợp cho chó 5kg trở xuống\r\nLưu ý: Số liệu trên chỉ mang tính chất tương đối. Size áo còn phụ thuộc vào giống cún và độ dày lông. Để chọn chính xác cỡ áo cho chó mèo, bạn vui lòng chat trực tiếp cho shop để được tư vấn tốt nhất', 1),
(5, 'YU SƠ MI NHIỀU MÀU 1-2-3-4', 65000, 'http://hachikopetshop.vn/images/item/b3b27ec5-614d-4953-a6fe-08416d2ec468-1864.jpg', 'Áo phù hợp đủ size cho các giống thú cưng từ 0.5-5kg\r\n\r\nĐược làm từ chất liệu vải cao cấp, nó là lạnh và thoáng khí, bền và chống mài mòn, dễ dàng duy trì.​', 1),
(6, 'ÁO LÍNH CÓ NÓN', 35000, 'http://hachikopetshop.vn/images/item/35877648_2011880585498450_4452815341357105152_n-1191.jpg', 'Áo phù hợp đủ size cho các giống thú cưng từ 0.5-5kg\r\n\r\nĐược làm từ chất liệu vải cao cấp, nó là lạnh và thoáng khí, bền và chống mài mòn, dễ dàng duy trì.​', 1),
(7, 'VÁY XÒE REN', 120000, 'http://hachikopetshop.vn/images/item/ao-1045.jpg', 'Áo phù hợp đủ size cho các giống thú cưng từ 0.5-5kg\r\n\r\nĐược làm từ chất liệu vải cao cấp, nó là lạnh và thoáng khí, bền và chống mài mòn, dễ dàng duy trì.​', 1),
(8, 'JUMP ÁO SƠ MI CARO QUẦN JEAN', 150000, 'http://hachikopetshop.vn/images/item/741c90939bb174ef2da0-1044.jpg', 'Áo phù hợp đủ size cho các giống thú cưng từ 0.5-5kg\r\n\r\nĐược làm từ chất liệu vải cao cấp, nó là lạnh và thoáng khí, bền và chống mài mòn, dễ dàng duy trì.​', 1),
(9, 'ÁO I LOVE MOMMY', 45000, 'http://hachikopetshop.vn/images/item/19511908_1622795704406942_219881509_n-828.png', 'Áo phù hợp đủ size cho các giống thú cưng từ 0.5-5kg\r\n\r\nĐược làm từ chất liệu vải cao cấp, nó là lạnh và thoáng khí, bền và chống mài mòn, dễ dàng duy trì.​', 1),
(10, 'ÁO THUN HOA', 80000, 'http://hachikopetshop.vn/images/item/19244201_1622791104407402_1959198886_n-823.png', 'Áo phù hợp đủ size cho các giống thú cưng từ 0.5-5kg\r\n\r\nĐược làm từ chất liệu vải cao cấp, nó là lạnh và thoáng khí, bền và chống mài mòn, dễ dàng duy trì.​', 1),
(11, 'ÁO JUMPSUIT CON SÂU', 120000, 'http://hachikopetshop.vn/images/item/17198623_1494326760587171_445236502_n-706.jpg', 'Size s dành cho chó dưới 1kg\r\nSize m dành cho chó 2-3kg\r\nSize l dành cho chó 3-4kg\r\nSize xl dành cho chó 4-5kg\r\nSize xxl dành cho chó 5-7kg\r\n', 1),
(12, 'GIÀY THỂ THAO', 160000, 'http://hachikopetshop.vn/images/item/4pcs-set-puppy-pet-font-b-dogs-b-font-denim-shoes-sport-boots-anti-slip-bootie-439.jpg', 'đẹp bền và chắc', 1),
(13, 'NÓN HÌNH THÚ', 105000, 'http://hachikopetshop.vn/images/item/947029_1057612661021629_8749008725345797918_n-526.jpg', 'Đẹp, bền, chắc và có đủ size đủ màu', 1),
(15, 'NÓN TUẦN LỘC', 145000, 'http://hachikopetshop.vn/images/item/15211598_1390302527656262_533397265_n-617.jpg', 'Đẹp, bền, chắc và có đủ size đủ màu', 1),
(16, 'KHĂN QUÀNG CỔ + NÓN', 60000, 'http://hachikopetshop.vn/images/item/15218571_1390302494322932_1965984132_n-616.jpg', 'Đẹp, bền, chắc và có đủ size đủ màu', 1),
(17, 'MÁY SẤY LÔNG CHUYÊN NGHIỆP SHERNBAO 1800W', 1750000, 'http://hachikopetshop.vn/images/item/4ffe6866-7077-44fd-8db1-f177fe99fc4c-2002.jpg', 'Máy sấy lông shernbao dành cho chó mèo \r\n- thương hiệu: shernbao\r\n- công suất: 1800w\r\n- nhiệt độ tối đa: 46 c\r\n- độ ồn: 82db\r\n- trọng lượng 5kg\r\nHàng có sẵng tại shop\r\nGiao hàng toàn quốc\r\nBảo hành nhanh chống\r\n', 2),
(18, 'MÁY SẤY CHUYÊN NGHIỆP 2 THÌ 3000W SHERNBAO', 2900000, 'http://hachikopetshop.vn/images/item/5d5385ec0210f24eab01-1961.jpg', '- Dung tích lớn giúp chứa khối lượng không khí lớn hơn và lực thổi mạnh hơn.\r\n- thiết kế công nghiệp thanh lịch, gọn gàng.\r\n- màu sắc thời thượng, sang trọng.\r\n- sản phẩm trang bị bộ sưởi ấm bổ sung, làm khô lông nhanh hơn\r\n- tiết kiệm thời gian và lượng điện dùng cho sấy lông\r\n- thích hợp cho thú cưng cỡ lớn và lông dài như husky, samoyed,…\r\n- thương hiệu nổi tiếng shernbao chuyên cung ứng các thiết bị grooming cho các spa thú cưng chuyên nghiệp\r\n- thiết bị được nhập khẩu từ thượng hải\r\n- bảo hành 1 tháng do lỗi kỹ thuật\r\n \r\nThông số kỹ thuật:\r\n- cài đặt tốc độ: 02\r\n- nhiệt năng: 600w\r\n- lực thổi: 940g\r\n- công suất tối đa: 3000w\r\n- chất liệu: nhựa, kim loại\r\n- điện áp: ac 100v – 240v\r\n- trọng lượng: 8,5 kg\r\n\r\n', 2),
(19, 'TÔNG ĐƠ CODOS 3500 CẠO & MÀI MÓNG', 550000, 'http://hachikopetshop.vn/images/item/t-ng-chuy-n-nghi-p-codos-2-trong-1-th-c-ng-ch-m-o-1973.jpg', '- Tông đơ codos 3500 2 trong 1 gồm 1 đầu đẩy lông và 1 đầu mài móng\r\n- 2 tốc độ khác nhau\r\n- có thể dùng liên tục 3 tiếng khi sạc đầ\r\n- độ rung và độ ồn thấp\r\n- rất tiện cho anh chị sử dụng tại nhà hoặc dùng cho spa\r\n- máy nhỏ gọn dễ cầm\r\n', 2),
(20, 'TÔNG ĐƠ PETKIT 2 TRONG 1', 350000, 'http://hachikopetshop.vn/images/item/3307d00e3a27ca799336-1951.jpg', 'Chống nước IPX7 bạn có thể yên tâm rửa sạch sau khi sử dụng\r\n\r\nĐộ rung và tiếng ồn thấp ( khoảng 45 db )\r\n\r\n2 đầu cắt đáp ứng yêu cầu cắt tỉa của nhiều bộ phận khác nhau\r\n\r\nLưỡi dao bằng thép chất lượng cao giúp tuổi thọ sử dụng lâu và bền hơn\r\n\r\nLưỡi tiếp xúc thiết kế góc tròn hình chữ R đặc biệt không làm tổn thương da, người mới sử dụng có thể thao tác dễ dàng\r\n\r\nCông suất định mức: DC 5V 1A\r\n\r\nThời gian sạc đầy: 5h\r\n\r\nThời gian sử dụng : 1h liên tục\r\n\r\nBẢO HÀNH ĐỘNG CƠ  1 NĂM\r\n\r\nGIAO HÀNG TOÀN QUỐC', 2),
(21, 'KÉO CẮT MÓNG CHÓ MÈO NHỎ', 75000, 'http://hachikopetshop.vn/images/item/3e88e514ada45cfa05b5-1944.jpg', 'Dùng cho thú  nhỏ, dùng được cho cả chó, mèo:\r\nSạch chân, cắt móng dễ dàng\r\nPhù hợp cho chó mèo nhỏ\r\n', 2),
(22, 'KÉO CONG GROOMING CHONRRY', 1530000, 'http://hachikopetshop.vn/images/item/5d1984996c687116c6eedb31c3457c64-1906.jpg', 'Chất liệu: thép không gỉ\r\nThiết kế dáng cong phù hợp cho các groomer\r\nTrọng lượng nhẹ, vừa tay và rất chắc chắn\r\nĐộ sắc cao, bền bỉ, sáng bóng\r\nXuất xứ: nhật bản\r\n', 2),
(23, 'MÁY MÀY MÓNG CHO CHÓ', 80000, 'http://hachikopetshop.vn/images/item/9d82b730a228e4a71c97af28a7a934fc-293.jpg', 'Máy mài móng cho chó mèo\r\nSản phẩm không thể thiếu dành cho các thú cưng sợ cắt móng hoặc chủ nhân chưa tự tin trong vấn đề cắt móng cho cún của mình.\r\n+ Động cơ mạnh mẽ hoạt động liên tục trong 2h\r\n+ Có khả năng mài móng nhanh,đẹp mà không làm thú cưng sợ hãi.\r\n+ Thiết kế gọn nhẹ có thể cắm trực tiếp đồng thời mài móng cho chó mèo', 2),
(24, 'MÁY SẤY LÔNG CS 2400', 1800000, 'http://hachikopetshop.vn/images/item/496_1_p1376385384_maysaycs24001-292.jpg', 'Máy sấy: bs2400 (nâng cấp cải tiến của cs2400)\r\nchất liệu: metal chắc chắn (không phải nhựa)\r\ncông suất thực: 2200w\r\n•Máy sấy: bs2400 ( nâng cấp cải tiến của cs2400 )\r\n•Chính hãng chunzhou thượng hải\r\n•Chất liệu: metal chắc chắn ( không phải nhựa )\r\n•Công suất thực: 2200w ( rất nhiều máy công suất ảo như 2400w, 2800w nhg khi sấy thì lại không khoẻ bằng e này, ai đã dùng codos 2400w chuyển sang e này sẽ thấy rõ )\r\n•Sức gió: 68m/s\r\n•Trọng lượng: 4,8kg (cả thùng)\r\n•Gồm 3 đầu sấy với sức gió tuỳ chỉnh. Nhiệt độ có 3 mức tuỳ chọn với nhiệt độ tối đa là 60 độ c\r\n•Bả hành động cơ 3 tháng\r\n', 2),
(25, 'LƯỢC CÀO GỠ RỐI ( KHÔNG CÓ ĐẦU BI)', 45000, 'http://hachikopetshop.vn/images/item/21a35ebe0e77fb29a266-2080.jpg', 'Công dụng:\r\n\r\n– Loại bỏ lông rối lông rụng trên cơ thể thú cưng, cơ thể chó mèo.\r\n\r\n– Đánh tơi các lớp lông, dụng cụ chuyên dùng chó các spa cho nhóm chó lông dài và xoăn như poodle, yorkshire, shihtzu, chó Nhật.\r\n\r\n– Có lớp cao su làm đệm khí, hấp thụ lưc chải dư thừa nên hoàn toàn an toàn đối với da chó mèo.\r\n\r\n– Răng lược bằng thép không gỉ siêu mỏng, đầu đươc mài tròn (có thể soi rõ khi dùng kích lúp độ phóng đại 60 lần), bố trí răng lược hợp lí nên vừa hiệu quả trong việc chải lông rối, vừa hiệu quả massage nhẹ nhàn trên da chó mèo.\r\n\r\n– Cán lược có thiết kế cong giúp xài lâu không mỏi. Chất liệu gỗ tre Nhật an toàn, bền, thân thiện môi trường.\r\n\r\n–  Khi mùa thay lông của chó mèo:  lông thường rụng rất nhiều, nếu chó mèo chạy giỡn nô đùa nhiều, lông sẽ rụng nhiều hơn. Các giống chó lông  ngắn thì lông rụng bám đầy quần áo, ghế, nệm đó là cơn ác mộng cho các bạn. Để hạn chế ác mộng này, bạn sử dụng buối sáng để lấy sạch phần lông rụng.\r\n\r\n– Sau khi tắm xong: trong quá trình vừa sấy lông cho chó mèo, bạn kết hợp vừa chải vừa sấy sẽ giúp lông mau khô khi sấy. Sau khi sấy xong lông lại bung tơi như đi spa về.\r\n\r\n– Bất cứ khi nào cần khi thấy lông chó mèo bị bệt lại.\r\n\r\n+ Thích hợp cho mọi loại chó mèo, lông ngắn lẫn lông dài\r\n\r\n+ Loại bỏ lông rụng tối đa, không làm rối, gãy, rụng lông khỏe', 2),
(26, 'LƯỢC LẤY LÔNG CHẾT GẬP 006 CÓ NÚT BẤM', 167000, 'http://hachikopetshop.vn/images/item/34155a02b73a47641e2b-1954.jpg', 'Lược chải lông chó mèo có nút bấm có tay cầm rất thoải mái, an toàn và chắc chắn.\r\nKhi chải xong bạn chỉ cần bấm vào nút tròn lông chết tự đọng đẩy lên dễ dàng, không cần sử dụng tay để gỡ\r\nCó nút bấm kết hợp với các răng lược sẽ tự động được đẩy ra.\r\nĐiều này giúp cho việc loại bỏ những lông rụng, lông thừa hay lông chết dễ dàng và nhanh chóng hơn. \r\nĐảm bảo cho chó mèo cưng có một bộ lông mềm mượt, không xơ rối.\r\nSản phẩm được thiết kế tinh xảo với thép không gỉ, chất lượng cao.\r\nLà vật dụng rất cần thiết trong nhà bất kì ai nuôi thú cưng.\r\n\r\n', 2),
(27, 'LƯỢC CHẢI LÔNG CHÓ MÈO 2 MẶT', 40000, 'http://hachikopetshop.vn/images/item/luoc-2-mat-chai-long-cho-meo-can-do-den-5f583cf3205e4-09092020092451-1920.jpg', '•Thiết kế 2 mặt tiện dụng, 1 mặt nhiều sợi có thể dùng để chà bông sữa tắm và tắm cho thú cưng, mặt còn lại sợi thưa có chức năng như một chiếc lược, vừa chải vừa mát xa giúp vật nuôi thư giãn, tạo cảm giác dễ chịu thoải mái\r\n•Được làm từ chất liệu nhựa pp, không gây hại cho người và vật nuôi, bền, chắc chắn, có thể chịu lực\r\n•Lược chải mượt mà, suôn, giúp loại bỏ phần lông rụng trên người thú cưng mà không làm ảnh hưởng đến phần lông khỏe\r\n•Kiểu dáng đẹp mắt, tay nắm dễ cầm, cứng cáp\r\n•Gọn nhẹ, dễ sử dụng, có thể mang theo đi bất cứ đâu\r\n\r\n', 2),
(28, 'GĂNG TAY LẤY LÔNG RỤNG CHO CHÓ MÈO TRUE TOUCH', 60000, 'http://hachikopetshop.vn/images/item/62bc6ff4203dd5638c2c-711.jpg', 'Găng tay lấy lông cho chó mèo True Touch\r\nGiúp bạn dễ dàng lấy lông rụng cho thú cưng trong những mùa thay lông bằng cách vuốt ve, massa.', 2),
(29, 'LỒNG ĐỨNG 45*45*45', 1100000, 'http://hachikopetshop.vn/images/item/long-dung-1556.jpg', 'Ổ nệm cực sang chảnh  cho thú cưng\r\n\r\nCực bền và chắc chắn, cực kỳ thoáng mát và dễ chịu\r\n\r\nSiêu mềm mại cho chó mèo, có khả năng chống thấm nước\r\n\r\nGiúp thú cưng của bạn có một giấc ngủ ngon\r\n\r\nGiúp cải thiện tình trạng sức khỏe, ít bệnh vặt', 2),
(30, 'VÕNG TREO CHO MÈO 1 (60*45*21)', 480000, 'http://hachikopetshop.vn/images/item/vong-01-380-1554.jpg', 'Ổ nệm cực sang chảnh  cho thú cưng\r\n\r\nCực bền và chắc chắn, cực kỳ thoáng mát và dễ chịu\r\n\r\nSiêu mềm mại cho chó mèo, có khả năng chống thấm nước\r\n\r\nGiúp thú cưng của bạn có một giấc ngủ ngon\r\n\r\nGiúp cải thiện tình trạng sức khỏe, ít bệnh vặt', 2),
(31, 'NHÀ NHỰA MÁI VÒM CHO CHÓ (PK933)', 1870000, 'http://hachikopetshop.vn/images/item/posh-pets-plastic-dog-kennel-small-ruby-a5b-1169.jpg', '- Sản phẩm với màu sắc đa dạng, nguyên liệu chất dẻo nhập khẩu, được thiết kế với khả năng chống thấm nước, thoáng mát, dễ dàng rửa sạch. \r\n- Lắp ráp đơn giản, 2 bên vách đều có lỗ thông khí cho thú cưng, sàn cứng cáp, có thể để nệm cho thú cưng vào mùa đông.\r\n- Cửa ra vào được làm bằng những thanh sắt, có thể treo thức ăn và thức uống trên cửa luôn. Rất tiên lợi và sạch sẽ.\r\n- Kích thước size lớn 87x72x75 có cửa sổ trời\r\n- Có 2 màu: xanh và hồng', 2),
(32, 'NHÀ VẢI LỚN', 300000, 'http://hachikopetshop.vn/images/item/1520_0_dsc00642_resized__61283_zoom-693.jpg', 'Thiết kế ngộ nghĩnh.\r\nPhù hợp dùng cho mọi loại chó mèo.\r\nCó thể sử dụng cho mèo.\r\nChất liệu: 100% polyester.\r\nKích thước: 50 x 50 x 335 cm', 2),
(33, 'ROYAL CANIN URINARY S/O - BỆNH SỎI THẬN Ở MÈO', 330000, 'http://hachikopetshop.vn/images/item/a9eafbca-f06b-4be1-b405-392b15f73c83-1266.jpg', 'Làm tan sỏi trong nước tiểu hiệu quả, đồng thời ngăn ngừa sự phát triển của vi khuẩn thường là nguyên nhân của sỏi.\r\n\r\nTạo môi trường nước tiểu không bão hòa ngăn sự sinh sôi của tinh thể sỏi Struvite và Canxi oxalate.\r\n\r\nGiúp tạo khối lượng nước tiểu lớn nhằm pha loãng sỏi và rửa chất cặn trong bàng quang.\r\n\r\nGiảm hàm lượng Magie trong thức ăn là một thành phần của sỏi Struvite (Magnesium ammonium phosphate).', 3),
(34, 'ROYAL CANIN RENAL - BỆNH THẬN Ở MÈO', 500000, 'http://hachikopetshop.vn/images/item/renal-1265.png', 'royal-canin-renal-benh-than-o-meoVới EPA và DHA, hệ dưỡng chất chống oxy hóa và lượng phospho thấp, công thức đặc chế để hỗ trợ, tăng cường chức năng thận đối với bệnh thận mãn tính.\r\n\r\nroyal-canin-renal-benh-than-o-meoThận hoạt động quá mức có thể gây ra khủng hoảng urê huyết. Protein chất lượng cao giúp giảm hoạt động ở thận và giảm lượng chất thải tích tụ.\r\n\r\nroyal-canin-renal-benh-than-o-meoĐặc chế alkalinizing, công thức giúp chống nhiễm axit chuyển hóa ở thận, cân bằng nồng độ pH.\r\n\r\nroyal-canin-renal-benh-than-o-meoThiết kế đặc biệt để đáp ứng sở thích của mèo, chống lại các vấn đề chán ăn, bỏ ăn, sợ thực phẩm dẫn đến giảm sức khỏe.', 3),
(35, 'ROYAL CANIN HAIR & SKIN - CHĂM SÓC DA & LÔNG', 100000, 'http://hachikopetshop.vn/images/item/61280_pla_royalcaninhairskin33_10kg_0-886.jpg', 'Một số mèo sẽ có làn da nhạy cảm và lông dễ rụng, không óng mượt. ROYAL CANIN HAIR & SKIN với nguồn dinh dưỡng cân bằng đóng vai trò quan trọng trong việc làm mới tế bào da, hỗ trợ da và lông khỏe mạnh.', 3),
(36, 'ROYAL CANIN HAIRBALL - TIÊU HÓA LÔNG CHO MÈO', 100000, 'http://hachikopetshop.vn/images/item/54dbf013142595-885.png', 'ROYAL CANIN INTENSE HAIRBALL khuyến khích vận chuyển đường ruột và giúp tạo điều kiện cho việc loại bỏ lông mèo trong dạ dày.', 3),
(37, 'HAIRBALL NGĂN BÚI LÔNG Ở MÈO', 200000, 'http://hachikopetshop.vn/images/item/1100416-center-1-507.jpg', '  Hairball For Cats là viên nhai mềm chứa các vitamin và khoáng chất nuôi dưỡng da lông khỏe mạnh, hỗ trợ dạ dày, đường ruột và đường niệu khỏe mạnh cho mèo của Pet Naturals, Mỹ. ', 3),
(38, 'THỨC ĂN MÈO REFLEX PLUS ADULT CAT FOOD URINARY CHICKEN (1,5KG)', 132000, 'http://hachikopetshop.vn/images/item/tai-xuong-1-2076.jpg', '– Thức ăn khô cho mèo siêu cao cấp với công thức cân bằng và hoàn chỉnh dành cho giống mèo trưởng thành.\r\n\r\n– Dành cho tất cả giống mèo trên 12 tháng tuổi. Thể trọng từ 2kg – 10kg.\r\n\r\n- Công thức đặc biệt cao cấp dành cho các giống mèo trưởng thành (đặc biệt trị bệnh tiết niệu ở mèo). \r\n\r\n- Trọng lượng: 1,5kg / gói\r\n\r\n– Xuất xứ: Thổ Nhĩ Kỳ – Lider Pet Food', 3),
(39, 'NUTRI SOURCE COUNTRY SELECT RECIPE', 500000, 'http://hachikopetshop.vn/images/item/tai-xuong-1-2034.jpg', 'Là một dạng thức ăn dành cho mèo không chứa ngũ cốc\r\nThức ăn cho mèo NutriSource® Country Select Recipe được pha chế để đáp ứng các nguyên tắc AAFCO cho tất cả các giai đoạn dòng đời của mèo.\r\nNutriSource® công thức không chứa ngũ cốc cung cấp dinh dưỡng cần thiết và bao gồm prebiotics và probiotics để giúp hỗ trợ đường ruột khỏe mạnh.\r\nAxit béo Omega-3 và Omega-6 cân bằng cùng với L-Carnitine, taurine, choline chloride và bổ sung DL-Methionine để tăng cường sức khỏe tim mạch làm cho công thức không chứa ngũ cốc NutriSource® trở nên nổi bật.', 3),
(40, 'THỨC ĂN MÈO ME O PERSIAN 1.1KG', 120000, 'http://hachikopetshop.vn/images/item/2359f10a-e50c-404c-b24a-c70a89b65012-1950.jpg', '- Thức ăn mèo me-o persian được sản xuất từ công thức dinh dưỡng đặc biệt để đáp ứng tất cả các nhu cầu dinh dưỡng của mèo ba tư.\r\n- thành phần dinh dưỡng cao được kết hợp để đáp ứng các nhu cầu riêng của giống mèo này như phát triển lông, cơ xương, răng, da …\r\n- ngoài ra thức ăn cho mèo me-o persian có công dụng đặc biệt là chống búi lông cực tốt!\r\n', 3),
(41, 'ISKHAN ALLERGY FREE DỊ ỨNG SỐ 5', 235000, 'http://hachikopetshop.vn/images/item/iskhan_05-1058.png', 'Thức ăn danh cho chó trưởng thành\r\n\r\nĐối tượng sử dụng: dành cho chó bị dị ứng\r\n\r\nNgăn ngừa phản ứng dị ứng, hỗ trợ chó bị viem da. Tăng sức miễn dịch, tốt cho da và lông, loại bỏ tạp chất, kích hoạt hệ vi sinh vật có lợi cho đường ruột.\r\n\r\nXuất xứ: Hàn Quốc', 3),
(42, 'ROYAL CANIN RENAL CHO CHÓ BỆNH THẬN', 420000, 'http://hachikopetshop.vn/images/item/renal-hlgt-923.jpg', 'Hạt Royal Canin Renal Cho Chó Bị Bệnh Thận, là sản phẩm mới của thương hiệu Royal Canin chuyên trị bệnh thận cho chó. Với công thức dinh dưỡng mới, những chú chó bị bệnh thận sẽ luôn cảm thấy khỏe mạnh khi được nuôi bằng Hạt Royal Renal Canin. \r\n\r\nChó suy thận thường biếng ăn vì thế rất cần loại thức ăn có tính ngon miệng. Renal canine rất dễ nhai, ngay cả đối với chó bị viêm lợi. Suy thận thường xuất hiện ở chó già. Renal Canine có hàm lượng oxi hóa cao giúp chống lại quá trình lão hóa tăng theo tuổi tác.\r\n\r\nSản phẩm còn giúp chó chống lại các vấn đề chán ăn, bỏ ăn, dễ sẫn đến suy giảm sức khỏe', 3),
(43, 'ROYAL CANIN URINARY S/O CHO CHÓ SỎI THẬN', 405000, 'http://hachikopetshop.vn/images/item/uri-921.jpg', 'Thức ăn khô hỗ trợ bàng quang dành cho chó – Royal Canin Urinary S/O 2kg.\r\n\r\nROYAL CANIN URINARY SO là một sản phẩm cung cấp chế độ ăn uống đầy đủ và cân bằng cho chó trưởng thành để hỗ trợ điều trị các bệnh về đường tiết niệu cho chó theo chỉ định của bác sĩ thú y. Và để hỗ trợ trong việc quản lý dinh dưỡng của sỏi oxalat canxi và sỏi niệu struvite.', 3),
(44, 'XƯƠNG NHAI DƯỠNG DA LÔNG SKIN + COAT GÓI 45 VIÊN', 310000, 'http://hachikopetshop.vn/images/item/petnaturalsskincoat45chews-1435572459-215.jpg', 'Xương Nhai Dưỡng Lông Skin + Coạt For Dogs là thực phẩm chức năng nuôi dưỡng và làm đẹp da lông , giảm rụng lông , có hình xương cục xương , dành cho tất cả các giống chó mọi độ tuổi của Pet Naturals , Mỹ . Skin + Coat For Dogs có Tachikopetsho BONE', 3),
(45, 'ROYAL CANIN MINI DERMACOMFORT (GIẢM NGỨA) CHO CHÓ', 600000, 'http://hachikopetshop.vn/images/item/tai-xuong-6-1889.jpg', 'Là thức ăn hoàng chỉnh cho chó trưởng thành ( trên 12 tháng tuổi) size nhỏ ( từ 2 - 10kg ) \r\n+ dành cho chó bị dị ứng da\r\n+ công thức đặc biệt với các nguồn protein chọn lọc và chất lượng rất cao đặc biệt phù hợp với chó dễ bị kích ứng và mẫn ngứa \r\n+ sau 1 tháng sử dụng, 87% chó đã giảm thiểu các dấu hiệu ngứa và kích ứng da.\r\n+ dưỡng da, phục hồi da\r\n+ trọng lượng 3kg\r\n', 3),
(46, 'THỨC ĂN HẠT MỀM CHO CHÓ TRƯỞNG THÀNH ZENITH 1,2KG', 200000, 'http://hachikopetshop.vn/images/item/tai-xuong-5-1839.jpg', 'Dành cho mọi giống chó trên 1 tuổi\r\nGiúp xương khớp chắc khoẻ, phòng tránh bệnh loãng xương\r\nKhông chứa ngũ cốc, không gây dị ứng\r\nĐược chế biến từ thịt cừu, bột gà, gạo lứt, yến mạch\r\nGiúp giảm bớt mùi phân và mùi cơ thể\r\nGiúp tăng cường sức đề kháng, phòng tránh bệnh tật\r\nDuy trì cơ thể cân đối, đốt cháy lượng mỡ dư thừa, cho các chú chó vóc dáng đẹp', 3),
(47, 'ZENITH HẠT MỀM HÀN QUỐC CHO CHÓ CON', 200000, 'http://hachikopetshop.vn/images/item/shopping-1-1343.png', 'Thức ăn được chế biến dưới dạng bán ẩm từ các thành phần thượng hạnh kích thích sự thèm ăn, dễ nhai.\r\n\r\nCung cấp dưỡng chất thiết yếu cho sự tăng trưởng của chó con. Tăng cường sức đề kháng, bảo vệ cho chó con khỏi rủi ro bênh tật.\r\n\r\nChiết xuất cây ngọc giá giúp giảm bớt mùi hôi của phân.\r\n\r\nQuy cách: gói 1,2kg, bên trong có 4 gói 300gr\r\n\r\nXuất xứ: Hàn Quốc', 3),
(48, 'NATURAL CORE PUPPY 1KG', 255000, 'http://hachikopetshop.vn/images/item/natu-pp-1341.jpg', 'Được làm từ thịt cừu Úc và nạc gà hữu cơ cung cấp đầy đủ dinh dưỡng cho sự hình thành và phát triển xương khớp cho chó con. các thành phần hữu cơ khác giúp tăng chức năng đường ruột và hệ miễn dịch.\r\n\r\nQuy cách : gói 1kg, bên trong chia ra 5 gói nhỏ 200gr, dễ bảo quản, không bị mềm và hư hạt.\r\n\r\nXuất xứ: Hàn Quốc', 3),
(49, 'THUỐC CHỐNG CHẢY NƯỚC MẮT 20ML', 150000, 'http://hachikopetshop.vn/images/item/5d77598b9054650a3c45-2031.jpg', 'Thuốc trị chảy nước mắt ở chó mèo Lacrimal Gland Fluid EYES ( Pro-white ) 20ml\r\n\r\nThuốc dạng siro ngọt\r\n\r\nLƯU Ý:  Thuốc mắt dạng uống ( không được nhỏ trực tiếp vào mắt )\r\n\r\nChảy nước mắt khiến bộ lông trắng tinh của các bé mèo, bé chó bị ố vàng ở khoé mắt , trông không xinh một chút nào….', 4),
(50, 'COMBO VỆ SINH RĂNG MIỆNG TROPICLEAN FRESH BREATH', 155000, 'http://hachikopetshop.vn/images/item/tai-xuong-17-2021.jpg', '- Bộ vệ sinh răng miệng cho chó TROPICLEAN Fresh Breath Dental Trial Kit bao gồm gel và nước vệ sinh cho răng sạch và miệng khỏe mạnh. - Chai gel chăm sóc răng miệng giúp loại bỏ mảng bám và cao răng.\r\n\r\n- Nhỏ 2 giọt vào mỗi bên miệng của chó hàng ngày theo chỉ dẫn để thấy răng sạch hơn sau 30 ngày hoặc ít hơn.\r\n\r\n- Giúp mang lại hơi thở thơm mát rõ rệt trong vòng 14 ngày hoặc ít hơn khi sử dụng hàng ngày theo chỉ dẫn\r\n\r\n- Nước chăm sóc răng miệng giúp mang lại hơi thở thơm tho đến 12 giờ và một viên nhai nha khoa làm sạch nâng cao.', 4),
(51, 'BIOLINE DUNG DỊCH NHỎ MẮT 50ML', 65000, 'http://hachikopetshop.vn/images/item/tai-xuong-1809.jpg', 'Sử dụng an toàn cho chó mèo 7 tuần tuổi và chó mèo lớn hơn\r\n\r\n• Điều trị phổ thông các bệnh truyền nhiễm về mắt, như viêm giác mạc, viêm kết mạc, viêm bờ mi…;\r\n\r\n• Điều trị hiệu quả các loại truyền nhiễm Mycoplasma, Chlamydia;\r\n\r\n• Điều trị hiệu quả các loại truyền nhiễm vi-rút, vi khuẩn;\r\n\r\n• Loại trừ các chứng viêm, chảy nước mắt, ngứa, sưng đỏ, có giử mắt, khô mắt, có chất tiết bất thường…;\r\n\r\n• Nước mắt nhân tạo Lacrimal Mimetic, giúp mắt dễ chịu và có hồn hơn.', 4),
(52, 'NƯỚC RỬA TAI PRUNUS 120ML', 180000, 'http://hachikopetshop.vn/images/item/6642a48ed2ba20e479ab-1-2030.jpg', '- Dung dịch rửa tai prunus \r\nRửa tai vệ sinh & ngừa viêm tai ngoài\r\n\r\n- có sản phẩm này trong nhà, bame k lo con bị viêm, hôi tai nữa nhé\r\n- xuất xứ: hàn quốc\r\n\r\n+ giao hàng toàn quốc\r\n+  hàng chất lượng - bame yên tâm\r\n', 4),
(53, 'NHỎ GÁY TRỊ VE RẬN CHÓ/MÈO', 25000, 'http://hachikopetshop.vn/images/item/tai-xuong-4-1903.jpg', '- Phòng và diệt dứt điểm bọ chét, ve trên chó mèo từ 8 tuần tuổi trở lên.\r\n- phòng và tiêu diệt trứng, nhộng và bọ chét trưởng thành, ngay cả bỏ chét gây viêm da dị ứng.\r\n- tiêu diệt tất cả loài bọ chét ( lây truyền bệnh lyme).\r\n- phòng và kiểm soát tái nhiêm. - tác động nhanh, kéo dài.\r\nHàng nội địa trung quốc\r\n', 4),
(54, 'FRONTLINE TRI-ACT, DIỆT VE,RUỒI,MUỖI', 150000, 'http://hachikopetshop.vn/images/item/a52173a0-7ff5-4171-a6c2-dfa9b9a143c9-1792.jpg', 'Frontline Tri-act ,diệt ve,ruồi,muỗi (hộp 3 tuýp)\r\n\r\nCHUYÊN GIA BẢO VỆ CÚN YÊU NHÀ BẠN\r\n\r\n- Diệt 99% bọ chét trong vòng 1 tháng ngay cả khi tiếp xúc với nước( 1 lần tắm xà phòng hoặc 2-3 lần tắm nước)\r\n\r\n- Hiệu quả với Ctenocephalides và C.canis\r\n\r\n- Hiệu quả tiêu diệt C.CANIS liên tục trong 1 tháng\r\n\r\nbảo vệ trong vòng 1 tháng chống lại 3 loại ve phổ biến trog đó có Demacentor reticulatus gây bệnh ký sinh trùng máu nghiêm trọng\r\n\r\nPHÒNG NGỪA CÁC BỆNH NGUY HIỂM GÂY RA DO VẾT CẮN CỦA RUỒI, MUỖI\r\n\r\n**Sản phẩm nhỏ gáy cho chó từ 8 tuần tuổi\r\n\r\n** Vạch lông, nhỏ thuốc trực tiếp lên da ở 2 điểm ở gáy và ở 2 vai của chó\r\n\r\n** Dùng hết một lần sau khi mở ống thuốc\r\n\r\n** Không tắm 2 ngày sau khi dùng thuốc\r\n\r\n** Người và các động vật khác chỉ được tiếp xúc sau khi thuốc đã khô.', 4),
(55, 'FRONIL EXTRA NHỎ GÁY PHÒNG, TRỊ VE, BỌ CHÉT, TRỨNG VÀ ẤU TRÙNG', 30000, 'http://hachikopetshop.vn/images/item/b4ca65d7-27a5-4507-a368-dfd3d206d1ff-1698.jpg', 'CÔNG DỤNG: \r\n\r\nphòng , trị ve, bọ chét cho chó từ 2-10kg\r\n\r\nFRONIL extra diệt bọ chét , trứng và ấu trùng. Ngừa tất cả các giai đoạn phát triển (trứng, ấu trùng, nhọng) của bọ chét.\r\n\r\nNgăn ngừa nhiễm bọ chét mới.\r\n\r\nDiệt bọ chét gây viêm da dị ứng.\r\n\r\nFRONIL extra diệt tất cả các giai đoạn của ve ( ấu trùng, nhọng và trưởng thành)\r\n\r\nDiệt những loài ve lây truyền nhiễm bệnh lyme, sốt Rocky mountain.\r\n\r\nFRONIL extra loại bỏ nahnh chóng việc nhiễm rận.\r\n\r\nFRONIL extra kiểm soát nhiễm cái ghẻ (sarcoptes).\r\n\r\nFRONIL extra sd được cho: chó giống, chó mang thai và cho con bú.\r\n\r\nchó con tù 8 tuần tuổi và cân nặng từ 2-10kg\r\n\r\nSẢN XUẤT : VIỆT NAM', 4),
(56, 'NHỎ GÁY NGỪA VE MÈO LỚN VETO', 200000, 'http://hachikopetshop.vn/images/item/thumb-1-1641.jpg', 'GIỚI THIỆU SẢN PHẨM\r\n\r\nBọ chét và ve có thể gây ngứa và kích ứng và ngứa cho chú mèo của bạn, ngoài ra còn có nguy cơ lây nhiễm sán dây và các mầm bệnh khác, một điều đặc biệt nguy hiểm. VETOpure Nhỏ gáy ngăn ngừa ve cho mèo chứa chiết xuất Margosa và Pyrethrum những hợp chất thiên nhiên giúp đẩy lùi ký sinh trùng một cách nhanh chóng và hiệu quả.\r\n\r\n- Sản phẩm không chứa các chất độc hại hoặc hóa chất diệt côn trùng. An toàn cho thú cưng và con người.\r\n\r\n- Phù hợp với mèo trưởng thành (Trên 1 năm tuổi). \r\n\r\nHƯỚNG DẪN SỬ DỤNG\r\n\r\n- Đặt đầu ống thuốc lên da ở phần gáy giữa xương bả vai. Bóp nhẹ ống thuốc để đẩy toàn bộ thuốc trong ống lên một điểm trên da của thú cưng.\r\n\r\n- Tránh tiếp xúc với vùng da đã nhỏ các loại thuốc khác.\r\n- Hiệu quả kéo dài 4 tuần cho mỗi lần sử dụng.', 4),
(57, 'CHAI XỊT VIÊM DA, THỐI MÓNG TERRA BLUE 220ML', 110000, 'http://hachikopetshop.vn/images/item/tai-xuong-5-1808.jpg', 'Thuốc phun xịt vết thương TERRA BLUE\r\n\r\nQuy cách: Chai xịt 220ml\r\n\r\nCÔNG DỤNG Trị thối móng, nhiễm khuẩn ở chó mèo, heo, bò', 4),
(58, 'ALKIN FABRICIL - XỊT TRỊ NGỨA, NỔI MẪN ĐỎ, DA CÓ MŨ', 130000, 'http://hachikopetshop.vn/images/item/fabricil-complex-moi-thuoc-phun-cho-man-da-co-mu-1558.jpg', 'Thuốc phun chữa ngứa, da có mủ Fabricil (Loại thẩm thấu cao)\r\n\r\n[Tên tiếng Anh] fabricil dermatosis therapy spray (for dogs & cats)\r\n\r\n[Quy cách đóng gói] 50ml/liều, mỗi gói 1 liều.\r\n\r\nĐặc tính sản phẩm: Dung dịch trong suốt màu vàng nhạt, có mùi đặc biệt.\r\n\r\n[Thành phần hiệu quả] Neomycin sulfate + Kanamycin + Lysozyme + thành phần tăng hiệu quả + thành phần kích hoạt.\r\n\r\n[Hàm lượng tổng hợp]\r\n\r\nDematologic therapy ingredients.…….………..4,6%\r\n\r\nSynergistis ingredients…………………...……..5,5%\r\n\r\nOther ingredients………………..………………89,9%\r\n\r\nTotal…………………………………….……...100,0%\r\n\r\n[Đối tượng áp dụng]\r\n\r\nSử dụng an toàn cho chó mèo 8 tuần tuổi và chó mèo lớn hơn.\r\n\r\n [Chỉ định]\r\n\r\n•        Chủ trị các chứng do lây nhiễm nấm;\r\n\r\n•        Chủ trị chứng da có mủ, viêm da, mẩn ngứa, dị ứng.\r\n\r\n•        Điều trị hiệu quả các chứng lây nhiễm tổng hợp ve, nấm.\r\n\r\n•        Loại trừ tình trạng tiết bả nhờn, mủ, ngứa, rụng long và các triệu chứng khác', 4),
(59, 'THUỐC TRỊ GHẺ VIÊM DA MITECYN (ALKIN )', 130000, 'http://hachikopetshop.vn/images/item/alkin-208.jpg', 'Mitecyn thuốc trị ghẻ nấm cho chó mèo', 4),
(60, 'THUỐC TRỊ NỘI NGOÀI KÝ SINH TRÙNG ADVOCATE ( BAYER )', 200000, 'http://hachikopetshop.vn/images/item/1454933326-04949900-201.jpg', 'Bệnh ghẻ do Demodex là một trong những bệnh da thường xảy ra trên chó. Demodex ký sinh thường trực trên da và dễ bùng phát khi hệ miễn dịch của cơ thể suy giảm. Bệnh ghẻ do Demodex là một thách thức trong điều trị vì nó dẫn đến nhiều hệ quả xấu trên chó mang bệnh. Đối với điều trị ghẻ Demodex cần kết hợp nhiều biện pháp xử lí thích hợp bao gồm điều trị kí sinh, giải quyết những lây nhiễm đang xảy ra và nguyên nhân tiềm ẩn.', 4),
(61, 'XỔ GIUN CHO MÈO DRONTAL - BAYER', 40000, 'http://hachikopetshop.vn/images/item/19cfc4dbf393fa0bae7f8f778c6e7383-1309.jpg', 'Thuốc tẩy giun sán chuyên dùng cho mèo\r\nThành phần : Pyrantel embonate..........230mg  Praziquantel.....................20 mg\r\nCông dụng \r\n Để kiểm soát tất cả giun đường tiêu hóa bao gồm cả sán dây trên mèo.Giun đũa: Toxocara cati , Toxascaris leonina.Giun móc: Ancylostoma brasiliense, Uncinaria stenocephalasán dây: Dipylidium caninum, Taenia taeniaeformis\r\n', 4),
(62, 'NHỎ GÁY TRỊ NỘI NGOẠI KÝ SINH TRÙNG REVOLUTION CHO MÈO', 230000, 'http://hachikopetshop.vn/images/item/revo-1107.jpg', 'Thuốc dạng nhỏ gáy cho chó phòng ngừa & điều trị ký sinh trong ngoài (giun tròn, giun tim, ve, rận, ghẻ tai, ghẻ sarcoptec...)\r\nDễ dàng sử dụng\r\nAn toàn, hiệu quả\r\nNhãn hàng của Zoetis - Mỹ', 4),
(63, 'NHỎ GÁY TRỊ NỘI NGOẠI KÝ SINH TRÙNG REVOLUTION CHO MÈO CON', 170000, 'http://hachikopetshop.vn/images/item/revolu-1106.jpg', 'Thuốc dạng nhỏ gáy cho chó phòng ngừa & điều trị ký sinh trong ngoài (giun tròn, giun tim, ve, rận, ghẻ tai, ghẻ sarcoptec...)\r\nDễ dàng sử dụng\r\nAn toàn, hiệu quả\r\nNhãn hàng của Zoetis - Mỹ', 4),
(64, 'HEARTGARD® PLUS XỔ GIUN TIM', 75000, 'http://hachikopetshop.vn/images/item/10765_001_xxl-707.jpg', 'Giun tim có thể xảy ra ở bất kì con chó nào. Bệnh này đã lan rộng đến mọi ngõ ngách của nước Mỹ và hàng trăm ngàn trường hợp được báo cáo mỗi năm. Giun tim là căn bệnh có thể được ngăn ngừa bằng cách phòng ngừa chúng. Hãy bảo vệ con chó của bạn chống lại giun tim một cách thuận tiện, đơn giản, và giá cả phải chăng.', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `loaiisanpham`
--
ALTER TABLE `loaiisanpham`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `loaiisanpham`
--
ALTER TABLE `loaiisanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
