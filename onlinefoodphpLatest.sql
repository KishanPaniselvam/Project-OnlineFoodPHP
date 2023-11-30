-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2023 at 04:06 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinefoodphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(1, 'admin', 'CAC29D7A34687EB14B37068EE4708E7B', 'admin@mail.com', '', '2022-05-27 13:21:52');

-- --------------------------------------------------------

--
-- Table structure for table `creditcards`
--

CREATE TABLE `creditcards` (
  `cardID` int(11) NOT NULL,
  `cardName` varchar(255) NOT NULL,
  `cardNumber` varchar(16) NOT NULL,
  `cardMonth` int(11) NOT NULL,
  `cardYear` int(11) NOT NULL,
  `cardCvv` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `creditcards`
--

INSERT INTO `creditcards` (`cardID`, `cardName`, `cardNumber`, `cardMonth`, `cardYear`, `cardCvv`) VALUES
(2, 'Kishan Paniselvam', '8764 7642 8487 6', 4, 2025, '926'),
(3, 'Zikishal', '5272 9816 1441 3', 6, 2024, '873'),
(4, 'Sharmilah', '3223 2323 2322 3', 4, 2025, '837'),
(5, 'Kishan Paniselvam', '5937 4837 8383 9', 3, 2025, '486'),
(10, 'Maddy', '4334 3556 7688 9', 2, 2027, '726'),
(12, 'Renugha', '5834 8725 7789 7', 4, 2024, '674'),
(13, 'Tharsh', '4424 2422 2897 8', 3, 2024, '649'),
(14, 'Kavya', '7556 6666 6666 6', 3, 2024, '838'),
(15, 'AKSHAYA', '2978 6734 0098 7', 10, 2023, '746'),
(17, 'Xin ru', '7867 8879 7675 6', 5, 2025, '836'),
(20, 'fatin', '1234 5678 1234 5', 10, 2024, '980'),
(21, 'Tharshini', '5528 3875 3784 9', 4, 2028, '535'),
(22, 'nisa', '0909 8765 1234 1', 11, 2023, '786'),
(23, 'Kishan', '5314 6434 5547 8', 2, 2024, '369'),
(24, 'Henry', '2645 8879 7454 6', 3, 2025, '265'),
(25, '', '', 0, 0, '0'),
(26, '', '', 0, 0, '0'),
(27, '', '', 0, 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `d_id` int(222) NOT NULL,
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(3, 10, 'Sizzling Tandoori Chicken', 'Chicken marinated in tandoori spices, roasted and served on a sizzling platter', '27.00', '65261a4c353df.jpg'),
(6, 8, 'Grilled Chicken Wings', 'Chicken wings grilled to a crispy and smoky finish', '21.00', '6526389b56e56.jpg'),
(7, 5, 'Caramel Apples', 'Sweet and crunchy, with a layer of caramel coating over crisp apples', '7.00', '65263a30890ce.jpg'),
(8, 1, 'Lemon Grilled Chicken And Pasta', 'Marinated rosemary grilled chicken breast served with mashed potatoes and your choice of pasta.', '10.00', '650fe92672550.jpg'),
(9, 5, 'Chocolate Cake', 'A lusciously moist and rich cake, every bite of chocolate cake is a celebration of deep cocoa flavor and velvety texture', '3.00', '652536bde2660.jpg'),
(10, 3, 'Prawn Crackers', '12 pieces deep-fried prawn crackers', '7.00', '606d75a7e21ec.jpg'),
(11, 2, 'Lasagna', 'Includes a hearty Bolognese sauce made with ground meat (usually beef or pork), tomatoes, onions, and aromatic herbs.', '8.00', '650feb27a422d.jpg'),
(12, 2, 'Pizza Margherita', 'It features a thin, chewy crust topped with vibrant red tomato sauce, fresh mozzarella cheese, fragrant basil leaves, and a drizzle of olive oil.', '12.00', '650fea8c7a24f.jpg'),
(13, 4, 'Char Kway Teow', ' Char Kway Teow boasts a delightful balance of sweet, savory, and spicy flavors.', '9.00', '650fe388108ee.jpg'),
(14, 4, 'Kaya & Butter Toast', 'Kaya and Butter which melt in your mouth, and are quick and easy to make.', '3.00', '650dc28f9c5af.jpg'),
(15, 4, 'Nasi Lemak with Crispy Chicken', 'Nasi Lemak with Crispy Chicken which smell so good and the chicken melt in your month and alos quick and easy to make.', '6.00', '650fe1aa22400.jpg'),
(16, 4, 'Garlic Toast & Mushroom Soup', 'Garlic Toast & Mushroom Soup which smell so good and  quick and easy to make.', '4.30', '650dba5fca8fb.jpg'),
(17, 1, 'Pink Spaghetti Gamberoni', 'This dish originates from Southern Italy and with the combination of prawns, garlic, chilli and pasta.', '10.00', '650fe7aedbf33.jpg'),
(18, 2, 'Osso Buco', 'The dish is prepared by gently simmering the veal shanks in a mixture of white wine, broth, onions, carrots, celery, and aromatic herbs. ', '15.00', '650feca072f16.jpg'),
(19, 2, 'Ravioli', 'Ravioli are delightful pockets of pasta filled with a delicious mixture, often made with ingredients like cheese, spinach, mushrooms, or meat.', '12.00', '650fee8a08c11.jpg'),
(20, 5, 'Fruit Salad', 'Often served with a light drizzle of honey or a sprinkle of mint leaves for added flavor,  fruit slices, such as succulent watermelon, juicy oranges, crisp apples, and tangy berries ', '4.00', '652538b0661c4.jpg'),
(21, 5, 'Banana Split', 'It features a ripe banana sliced in half lengthwise, with scoops of luscious ice cream nestled in between', '6.00', '65253a19dedad.jpg'),
(23, 6, 'Vegetable Spring Rolls', 'Thin wrappers envelop a medley of julienned vegetables, such as carrots, cabbage, and bean sprouts, along with fragrant herbs like cilantro and mint', '18.00', '652531ec43389.jpg'),
(24, 6, 'Vegetable Pizza', 'A crispy, hand-tossed crust is generously adorned with a colorful medley of farm-fresh vegetables, including vibrant bell peppers, juicy tomatoes, earthy mushrooms, and tender spinach', '20.00', '652511706bc9a.jpg'),
(25, 6, 'Vegetable Sushi Rolls', 'Delight in a medley of crisp, vibrant vegetables encased in perfectly seasoned sushi rice, all wrapped snugly in a sheet of nori seaweed', '12.00', '652510464f327.jpg'),
(26, 6, 'Rojak', ' This unique salad combines a colorful assortment of ingredients, such as crisp cucumber, crunchy jicama, tart pineapple, tender tofu or youtiao (fried dough sticks), and sometimes even cuttlefish, all generously doused in', '5.00', '652535cfb543f.jpg'),
(27, 6, 'Aloo Gobi', 'Comforting and aromatic North Indian dish that combines tender cauliflower florets and soft potato chunks cooked in a medley of fragrant spices', '10.00', '6525347a91673.jpg'),
(28, 5, 'Lemon Bars', 'Sweet and tart dessert bars made with a lemony filling on a shortbread crust.', '2.00', '65253adf5dcdd.jpg'),
(29, 5, 'Mousse au Chocolat', 'A French dessert consisting of airy chocolate mousse, often garnished with whipped cream or chocolate shavings', '2.50', '65253b9592604.jpg'),
(30, 9, 'Coffee', 'Caffeinated beverage made from roasted coffee beans', '2.00', '65253c321c9ef.jpg'),
(31, 9, 'Chai Tea', 'Made with black tea, milk, and a blend of aromatic spices like cinnamon, cardamom, and cloves', '2.00', '65253dcada3f7.jpg'),
(32, 9, 'Iced Tea', 'Chilled tea, often sweetened, and sometimes flavored with lemon or peach', '4.50', '65253e5054e6e.jpg'),
(33, 9, 'Mocha Latte ', 'Combines the rich flavors of espresso, chocolate, and steamed milk', '8.00', '65253eddef710.jpg'),
(35, 9, 'Pina Colada', 'A tropical cocktail made with rum, coconut cream, and pineapple juice, often blended with ice for a creamy, frosty texture', '10.00', '65254109621e4.jpg'),
(36, 9, 'Cappuccino', 'Espresso topped with steamed milk and a layer of frothed milk, creating a creamy and espresso-forward coffee beverage', '4.00', '6525427fbfff1.jpg'),
(37, 11, 'Chicken Noodle Soup', 'Comforting and hearty, with chicken, vegetables, and noodles', '9.00', '652612f9bc31a.jpg'),
(38, 11, 'Potato Leek Soup', 'Creamy and flavorful, made with potatoes and leeks', '7.00', '6526135f048cc.jpg'),
(39, 11, 'Butternut Squash Soup', 'Creamy and slightly sweet, made with roasted butternut squash', '11.00', '652614007971f.jpg'),
(40, 11, 'Thai Tom Yum Soup', 'A spicy and sour Thai soup with shrimp or chicken', '13.00', '652615bfd2ba7.jpg'),
(41, 11, 'Gazpacho', 'A cold Spanish soup made with ripe tomatoes, peppers, and cucumbers', '7.00', '652616390c35f.jpg'),
(42, 8, 'Barbecue Shrimp', 'Large shrimp marinated and grilled with a BBQ twist', '16.00', '652616da34ba6.jpg'),
(43, 8, 'Barbecue Tofu Skewers', 'Tofu cubes and veggies on skewers, grilled with BBQ sauce', '25.00', '65261725a625d.jpg'),
(44, 8, 'Barbecue Portobello Mushrooms', 'Grilled portobello mushrooms with a BBQ marinade', '18.00', '652617c72a1bf.jpg'),
(46, 8, 'Barbecue Sausages', 'Grilled sausages served with barbecue sauce', '23.00', '652618d6e61f5.jpg'),
(48, 9, 'Virgin Mojito', 'Made with mint, lime, and soda water.', '5.00', '65263b3a1ae31.jpg'),
(49, 10, 'Sizzling Mongolian Lamb', 'Tender lamb stir-fried with vegetables and a savory sauce', '18.00', '65263cf056a44.jpg'),
(50, 10, 'Sizzling Seafood Paella', 'A Spanish dish with saffron-infused rice, seafood, and sizzling spices', '25.00', '65263dedae716.jpg'),
(51, 10, 'Sizzling Cajun Jambalaya', 'A flavorful Louisiana dish with rice, sausage, and various ingredients', '22.00', '65263efb0707e.jpg'),
(52, 10, 'Sizzling Teppanyaki', 'Japanese cuisine featuring a variety of ingredients cooked on a sizzling hot griddle', '28.00', '65264045147a9.jpg'),
(53, 10, 'Sizzling Scallops in Garlic Butter', 'Plump scallops cooked in sizzling garlic butter for a rich, flavorful treat', '26.00', '65264121191db.jpg'),
(54, 13, 'Bruschetta', 'Toasted bread topped with diced tomatoes, garlic, basil, and olive oil', '16.00', '652646cfd94dd.jpg'),
(55, 13, 'Deviled Eggs', 'Hard-boiled eggs filled with a creamy, seasoned yolk mixture', '10.00', '6526475016cf3.jpg'),
(56, 13, 'Mini Meatballs', 'Small, seasoned meatballs served with toothpicks', '18.00', '65264799da8ee.jpg'),
(57, 13, 'Samosas', 'Fried or baked pastry filled with spiced potatoes, peas, and sometimes meat', '13.00', '6526483486795.jpg'),
(58, 13, 'Mozzarella Sticks', 'Breaded and fried mozzarella cheese sticks served with marinara sauce', '12.00', '652649884c185.jpg'),
(59, 12, 'Nasi Goreng', 'Fried rice, cooked with a variety of ingredients, such as shrimp, chicken, vegetables, and a blend of spices', '8.00', '65264b1726ed2.jpg'),
(60, 12, 'Mee Goreng', 'Fried noodles, typically stir-fried with a spicy and flavorful sauce, vegetables, and your choice of protein like chicken, shrimp, or tofu', '7.00', '65264b73eca6e.jpg'),
(61, 12, 'Nasi Lemak with Crispy Chicken', 'Nasi Lemak with Crispy Chicken which smell so good and the chicken melt in your month and alos quick and easy to make.', '9.00', '65264c3282fc8.jpg'),
(62, 12, 'Mee Rebus', 'A dish consisting of boiled noodles served with a sweet and spicy peanut-based sauce, often garnished with fried shallots and boiled eggs', '6.00', '65264caa1137f.jpg'),
(63, 12, 'Mee Siam Goreng', 'Stir-fried vermicelli noodles with a sweet and tangy tamarind-based sauce, often served with prawns and hard-boiled eggs', '2.00', '65264d7fb964f.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(9, 9, 'rejected', 'thank you', '2022-05-27 13:03:53'),
(10, 7, 'closed', 'thank you for your ordering with us', '2022-05-27 13:04:33'),
(11, 8, 'closed', 'thanks ', '2022-05-27 13:05:24'),
(12, 5, 'closed', 'none', '2022-05-27 13:18:03'),
(13, 11, 'in process', 'otw', '2023-09-22 15:31:59'),
(14, 31, 'in process', 'your order is otw', '2023-10-10 00:34:46'),
(16, 39, 'in process', 'otw', '2023-10-16 03:01:35'),
(17, 39, 'closed', 'deliver', '2023-10-16 03:02:16'),
(19, 57, 'in process', 'Your Ordered food is on the way to your home.', '2023-11-04 11:59:43'),
(20, 72, 'in process', 'OTW Mam. Please Be patient', '2023-11-24 04:32:59'),
(21, 70, 'closed', 'Your Order On The Way', '2023-11-26 07:31:07');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `rs_id` int(222) NOT NULL,
  `c_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(5, 6, 'Sugar & Serenity Sweets', 'SSS@gmail.com', '01983568924', 'www.SSSCafe.com', '8am', '6pm', 'mon-fri', 'Jalan Bukit Sebukor, Bukit Baru, 75150 Melaka\r\nInternational College of Yayasan Melaka (ICYM), address', '6524f47e52399.jpg', '2023-10-10 06:51:42'),
(6, 7, 'The Veggie Haven', 'TVHFood@gmail.com', '0118275294', 'www.TVHFood.com', '7am', '6pm', 'mon-fri', 'Jalan Bukit Sebukor, Bukit Baru, 75150 Melaka\r\nInternational College of Yayasan Melaka (ICYM), address', '6524f4e795238.jpg', '2023-10-10 06:53:27'),
(8, 11, 'Smokehouse Grill', 'SHouse@gmail.com', '0112753846', 'www.SHouse.com', '9am', '6pm', 'mon-fri', 'Jalan Bukit Sebukor, Bukit Baru, 75150 Melaka\r\nInternational College of Yayasan Melaka (ICYM), address\r\n ', '65250763d6f80.jpg', '2023-10-10 08:12:19'),
(9, 10, 'Beverage Bliss', 'BBliss@gmail.com', '0113746345', 'www.BeverageBliss.com', '7am', '6pm', 'Mon-Fri', 'Jalan Bukit Sebukor, Bukit Baru, 75150 Melaka\r\nInternational College of Yayasan Melaka (ICYM), address', '6524ede43ed25.jpg', '2023-10-10 06:23:32'),
(10, 12, 'Sizzling Skillets Cafe', 'SSCafe@gmail.com', '0174693467', 'www.SSCafe.com', '9am', '6pm', 'Mon-Fri', 'Jalan Bukit Sebukor, Bukit Baru, 75150 Melaka\r\nInternational College of Yayasan Melaka (ICYM), address', '6524f07f39722.jpg', '2023-10-10 06:34:39'),
(11, 14, 'Steamy Delights', 'SDelights@gmail.com', '0138594034', 'www.SDelights.com', '8am', '6pm', 'mon-fri', ' Jalan Bukit Sebukor, Bukit Baru, 75150 Melaka\r\nInternational College of Yayasan Melaka (ICYM), address ', '6524f3dc5ec4c.jpg', '2023-10-10 06:49:00'),
(12, 12, 'Fry Me to the Moon', 'FMTTM@gmail.com', '0186380753', 'www.FMTTMoon.com', '9am', '6pm', 'Mon-Fri', 'Jalan Bukit Sebukor, Bukit Baru, 75150 Melaka\r\nInternational College of Yayasan Melaka (ICYM), address', '652643a37cb70.jpg', '2023-10-11 06:41:39'),
(13, 15, 'Temptation Tapas', 'TTapas@gmail.com', '0119583624', 'www.TTapas.com', '7am', '6pm', 'Mon-Fri', 'Jalan Bukit Sebukor, Bukit Baru, 75150 Melaka\r\nInternational College of Yayasan Melaka (ICYM), address', '6526464206bef.jpg', '2023-10-11 06:52:50');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(222) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(6, 'Dessert', '2023-10-10 00:52:38'),
(7, 'Vegetarian', '2023-10-10 00:53:25'),
(10, 'Beverage', '2023-10-10 00:57:04'),
(11, 'Barbeque', '2023-10-10 04:22:20'),
(12, 'Sizzling', '2023-10-10 06:28:06'),
(14, 'Soup ', '2023-10-10 06:48:26'),
(15, 'Appetizers', '2023-10-11 06:48:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(222) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(14, 'Renugha', 'Renu', 'Selvamurugan', 'RenughaShan@gmail.com', '0176790234', '3f7405f8a6d73063a1b4313ef0f71c0e', 'No 15, Petaling Jaya', 1, '2023-11-03 02:12:58'),
(15, 'Sham', 'Sharmilah', 'Paniselvam', 'sham@gmail.com', '0137191870', 'd60afe4f67ffcd3e374ddf7bd0be805b', '342 kampung kenangan tun dr ismail 5 jalan cenderawasih', 1, '2023-11-03 02:24:34'),
(16, 'que', 'quratul', 'alyssa', 'quratulalyssa03@gmail.com', '0173647046', '22e0f2d337152fc65fcc7c9ab036fdab', 'Jalan Bukit sebukor ICYM', 1, '2023-11-03 02:26:18'),
(17, 'ZIKISHAL', 'Kishan', 'Paniselvam', 'Zikishal@gmail.com', '01834582344', '0d1d9c11ee8a81068e9fe9c5ae6217c4', 'No 19, Jalan AP 17 Taman Alai Perdana', 1, '2023-11-04 11:46:38'),
(19, 'azlin', 'nor', 'azlin', 'azlin80@gmail.com', '0137022272', 'e10adc3949ba59abbe56e057f20f883e', '342 kampung kenangan tun dr ismail 5 jalan cenderaw', 1, '2023-11-07 00:44:26');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(31, 7, 'Crispy Chicken Strips', 1, '9.00', 'rejected', '2023-10-10 00:35:28'),
(33, 7, 'Barbecue Tofu Skewers', 2, '25.00', NULL, '2023-10-11 06:32:44'),
(34, 7, 'Sizzling Tandoori Chicken', 8, '27.00', NULL, '2023-10-11 06:32:44'),
(35, 7, 'Sizzling Seafood Paella', 36, '25.00', NULL, '2023-10-11 06:32:44'),
(37, 7, 'Nasi Lemak with Crispy Chicken', 7, '9.00', NULL, '2023-10-12 11:31:48'),
(38, 7, 'Mozzarella Sticks', 5, '12.00', NULL, '2023-10-12 11:31:48'),
(39, 7, 'Barbecue Tofu Skewers', 10, '25.00', 'closed', '2023-10-16 03:02:16'),
(40, 7, 'Grilled Chicken Wings', 1, '21.00', NULL, '2023-10-16 02:55:25'),
(41, 7, 'Caramel Apples', 2, '7.00', NULL, '2023-10-24 01:53:13'),
(42, 7, 'Vegetable Spring Rolls', 1, '18.00', NULL, '2023-10-24 01:53:13'),
(43, 7, 'Chicken Noodle Soup', 1, '9.00', 'closed', '2023-10-26 01:34:12'),
(44, 7, 'Grilled Chicken Wings', 8, '21.00', NULL, '2023-11-03 02:32:39'),
(45, 7, 'Barbecue Shrimp', 2, '16.00', NULL, '2023-11-03 02:32:39'),
(46, 7, 'Barbecue Tofu Skewers', 3, '25.00', NULL, '2023-11-03 02:32:39'),
(47, 7, 'Sizzling Tandoori Chicken', 7, '27.00', NULL, '2023-11-03 02:32:39'),
(48, 7, 'Virgin Mojito', 4, '5.00', NULL, '2023-11-03 02:32:39'),
(49, 7, 'Chai Tea', 2, '2.00', NULL, '2023-11-03 02:32:39'),
(50, 7, 'Nasi Goreng', 4, '8.00', NULL, '2023-11-03 02:32:39'),
(51, 7, 'Nasi Lemak with Crispy Chicken', 1, '9.00', NULL, '2023-11-03 02:32:39'),
(52, 7, 'Mozzarella Sticks', 3, '12.00', NULL, '2023-11-03 02:32:39'),
(53, 7, 'Bruschetta', 4, '16.00', NULL, '2023-11-03 02:32:39'),
(54, 7, 'Vegetable Spring Rolls', 3, '18.00', NULL, '2023-11-03 02:32:39'),
(55, 7, 'Vegetable Pizza', 2, '20.00', NULL, '2023-11-03 02:32:39'),
(56, 7, 'Lemon Bars', 1, '2.00', NULL, '2023-11-04 11:39:04'),
(70, 19, 'Sizzling Tandoori Chicken', 19, '27.00', 'closed', '2023-11-26 07:31:07'),
(72, 19, 'Barbecue Shrimp', 1, '16.00', 'in process', '2023-11-24 04:32:59'),
(73, 19, 'Mocha Latte ', 1, '8.00', NULL, '2023-11-25 04:16:41'),
(74, 19, 'Coffee', 3, '2.00', NULL, '2023-11-25 04:16:41');

-- --------------------------------------------------------

--
-- Table structure for table `user_accounts`
--

CREATE TABLE `user_accounts` (
  `id` int(11) NOT NULL,
  `bank` varchar(255) NOT NULL,
  `account_number` varchar(20) NOT NULL,
  `pin_number` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_accounts`
--

INSERT INTO `user_accounts` (`id`, `bank`, `account_number`, `pin_number`) VALUES
(1, 'bank5', '8757656465543453', '986757'),
(2, 'bank6', '238675', '655555'),
(3, 'bank7', '0959459459354545', '356532'),
(4, 'bank9', '2427642764726827', '877656'),
(5, 'bank2', '2323232323232323', '787567'),
(7, 'bank5', '7766746546546546464', '999999'),
(12, 'bank3', '7576576564534524', '846295'),
(13, 'bank4', '65646', '6565'),
(14, 'bank5', '7657657657656754', '825637'),
(17, 'bank6', '8767567476273273', '926562'),
(18, 'bank6', '876876878', '987878'),
(19, 'bank10', '2575656378902345', '121580'),
(20, 'bank2', '2344546455554677', '85121'),
(21, 'bank2', '1111111111111111', '123456'),
(22, 'bank1', '7', '5'),
(23, 'bank1', '7', '5');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `creditcards`
--
ALTER TABLE `creditcards`
  ADD PRIMARY KEY (`cardID`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- Indexes for table `user_accounts`
--
ALTER TABLE `user_accounts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `creditcards`
--
ALTER TABLE `creditcards`
  MODIFY `cardID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `user_accounts`
--
ALTER TABLE `user_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
