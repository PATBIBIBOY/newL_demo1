-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2024 at 05:20 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `new`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `slug` varchar(225) NOT NULL,
  `parent` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `parent`) VALUES
(1, 'phạm cả', '234', 0),
(2, 'viết giang', '345', 0),
(3, 'tuấn', '456', 0);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `title` varchar(225) NOT NULL,
  `excerpt` varchar(225) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(225) NOT NULL,
  `category` int(11) NOT NULL,
  `featured` int(11) NOT NULL,
  `views` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `author` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `title`, `excerpt`, `content`, `image`, `category`, `featured`, `views`, `created_at`, `updated_at`, `author`) VALUES
(1, 'Jose Mourinho nhận thẻ đỏ, Man Utd vẫn không thắng Fenerbahce', '(VTC News) - Man Utd bị Fenerbahce cầm hòa 1-1, dù sớm có bàn dẫn trước của Christian Eriksen.', 'Rạng sáng 25/10, Man Utd và Fenerbahce cầm hòa nhau với tỉ số 1-1 tại vòng 3 Europa League 2024-25. Trong thế trận kín kẽ, tâm điểm của cuộc đối đầu này lại nằm ở tấm thẻ đỏ của Jose Mourinho.\r\n\r\n<img src=\"https://cdn-i.vtcnews.vn/resize/th/upload/2024/10/25/mou-07212480.png\">\r\nJose Mourinho nhận thẻ đỏ rời sân.\r\n\r\nPhút 56, khi tỉ số là 1-1, \"Người đặc biệt\" đòi penalty cho đội chủ nhà, sau khi Manuel Ugarte va chạm với Bright Osayi-Samuel, khiến cầu thủ Fenerbahce ngã trong vòng cấm. Tuy nhiên, trọng tài chính Clement Turpin không thổi phạt đền và cũng không xem lại màn hình VAR.\r\n\r\nPhản ứng gay gắt với tổ trọng tài, Mourinho nhận thẻ đỏ và phải lên khán đài xem phần còn lại trận đấu. Ông chọn chỗ ngồi ngay phía sau băng ghế huấn luyện, chỉ đạo cầu thủ thông qua các mẩu giấy gửi trợ lý.\r\n\r\nSau khi Mourinho rời sân, Fenerbahce và Man Utd không ghi thêm bàn thắng. Man Utd là đội mở tỉ số nhờ công của Christian Eriksen. Từ đường lên bóng phía cánh trái, Joshua Zirkzee nhận bóng trong vòng cấm, trả ngược tuyến hai cho tiền vệ Đan Mạch. Eriksen tung cú sút gọn gàng vào góc phải của thủ môn, mở tỉ số trận đấu.\r\n\r\n<img src=\"https://cdn-i.vtcnews.vn/resize/th/upload/2024/10/25/erij-07223890.png\">\r\nEriksen ghi bàn thắng duy nhất cho Man Utd.\r\n\r\nFenerbahce nhiều lần đáp trả bằng nỗ lực của Szymanski và Saint-Maximin, nhưng cũng phải tới hiệp 2 mới tìm được bàn gỡ hòa. Phút 49, tiền đạo Youssef En-Nesyri đánh đầu quân bình tỉ số cho đội chủ nhà. Kết quả 1-1 được giữ nguyên tới cuối trận, Man Utd và Fenerbahce mỗi đội giành được 1 điểm.\r\n\r\nMan Utd tiếp nỗi chuỗi trận thất vọng tại Europa Leauge khi toàn hòa 3 trận đấu, hiện xếp thứ 21 trên 36 đội, xếp dưới Fenerbahce tới 7 bậc. Trận hòa Fenerbahce cũng đánh dấu tròn 1 năm, từ ngày Man Utd thắng trận gần nhất tại cúp châu Âu.\r\n\r\nNgày 25/10/2023, họ thắng Copenhagen 1-0 trên sân nhà, trước khi hòa hoặc thua cả 3 trận vòng bảng Champions League còn lại và rời giải. Tới Europa League 2024-25, Man Utd cũng hòa 3 trận liên tiếp dù những đối thủ đã dễ thở hơn. Đối thủ tiếp theo của Man Utd là đội bóng Hy Lạp - PAOK. Trận đấu diễn ra vào ngày 7/11.\r\n\r\n', 'mou-07212480.png', 1, 1, 1, '2024-10-25 02:17:38', '2024-10-25 02:17:38', 1),
(2, 'Sao Man Utd tặng quà bất ngờ cho thí sinh Đường lên đỉnh Olympia', '(VTC News) - Joshua Zirkzee, Andy Cole tặng chiếc áo Man Utd cho Nguyễn Quốc Nhật Minh - thí sinh giành giải Ba chung kết Đường lên đỉnh Olympia 2024.', 'Sáng 13/10, chung kết Đường lên đỉnh Olympia năm thứ 24 chính thức khép lại với phần thắng nghiêng về Vũ Quang Phú Đức, học sinh trường THPT chuyên Quốc học Huế. Nam sinh này giành chiến thắng ở cả 4 phần thi và lên ngôi vô địch đầy thuyết phục. \r\n\r\nNgoài kết quả chung cuộc, khán giả xem chương trình được chứng kiến món quà bất ngờ mà ban tổ chức chương trình Đường lên đỉnh Olympia chuẩn bị cho thí sinh Nguyễn Quốc Nhật Minh, đại diện của trường THPT chuyên Hùng Vương (Gia Lai).\r\n\r\n<img src=\"https://cdn-i.vtcnews.vn/resize/th/upload/2024/10/13/462231872102241057876229637303048741428529035n-14225619.jpg\">\r\nJoshua Zirkzee và cựu danh thủ Andy Cole gửi tặng áo đấu Man Utd tới Nhật Minh.\r\n\r\nNgay trước phần thi Về đích, chương trình chiếu đoạn video quay tại sân vận động Old Trafford, sân nhà của đội bóng Nhật Minh đặc biệt yêu thích là Manchester Utd.\r\n\r\nTrong đoạn video, phóng viên Lê Tùng giới thiệu chiếc áo đấu Man Utd mà ban tổ chức dành tặng cho Nhật Minh. Chiếc áo được in tên Nhật Minh và số 7, số áo từng gắn liền với những huyền thoại như Eric Cantona hay Cristiano Ronaldo.\r\n<img src=\"https://cdn-i.vtcnews.vn/resize/th/upload/2024/10/13/462231872102241057876229637303048741428529035n-14225619.jpg\">\r\nMón quà càng có ý nghĩa khi cựu danh thủ Andy Cole, hay tiền đạo Joshua Zirkzee đã trực tiếp cầm áo, gửi lời chúc mừng tới nam thí sinh Olympia.\r\n\r\n<img src=\"https://cdn-i.vtcnews.vn/resize/th/upload/2024/10/13/1-14282523.png\">\r\nNguyễn Quốc Nhật Minh (trái) giành giải Ba, nhận thưởng 100 triệu đồng.\r\n\r\nĐây là món quà tinh thần cho Nhật Minh trước khi bước vào phần thi quyết định. Thí sinh Gia Lai kết thúc phần thi với số điểm là 85, giành giải Ba chung cuộc và nhận thưởng 100 triệu đồng.\r\n\r\nQuán quân Võ Quang Phú Đức là chủ nhân của chiếc vòng nguyệt quế và phần thưởng 50.000 USD (1,25 tỷ đồng). ', '1-14282523.png', 1, 1, 1, '2024-10-23 02:18:03', '2024-10-30 02:18:03', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`) VALUES
(1, 'phạm cả'),
(2, 'giang'),
(3, 'tuấn '),
(4, 'lan'),
(5, 'ánh');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
