-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2017 at 08:05 AM
-- Server version: 5.7.15-log
-- PHP Version: 7.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bnardci`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`) VALUES
(1, 'Business', '2017-04-07 08:59:09'),
(2, 'Tecnology', '2017-04-07 08:59:09'),
(3, 'Science', '2017-04-12 07:15:15');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `name`, `email`, `body`, `created_at`) VALUES
(4, 13, 'Clarence Castiel', 'clarence.castiel@gmail.com', 'This is a test comment! Good post! :)', '2017-04-12 09:54:32'),
(5, 13, 'Dean Winchester', 'dean.winchester@yahoo.com', 'Yeah! Good post! Haha', '2017-04-12 10:08:16'),
(6, 14, 'Rea Guno', 'rea.guno@gmail.com', 'Why did you post this??? Huhuhuhu', '2017-04-12 10:14:58');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `post_image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `body`, `post_image`, `created_at`) VALUES
(1, 2, 1, 'Post One', 'Post-One', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam id egestas nisl. Vivamus efficitur ut velit in vestibulum. Sed maximus urna hendrerit, efficitur risus et, hendrerit turpis. Aliquam volutpat dui nunc, vel tincidunt dui vulputate et. Aliquam cursus nulla quis dolor bibendum, vitae imperdiet ante tempor. Cras eu nunc orci. Maecenas ornare risus urna, at luctus est volutpat quis. Quisque quam justo, molestie sit amet mauris at, vehicula consequat lectus. Nullam sed malesuada eros. Nulla vulputate ultricies ex, sed gravida magna auctor sed. Integer ullamcorper quam elit, interdum bibendum urna volutpat at. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla libero massa, ornare ut ante eget, euismod porttitor massa. Phasellus accumsan auctor purus. Pellentesque vulputate auctor enim non bibendum.</p>\r\n', 'noimage.jpg', '2017-04-06 08:31:10'),
(4, 2, 1, 'Post Two', 'Post-Two', 'This has been edited. Duis sollicitudin orci condimentum diam convallis vestibulum. Suspendisse venenatis tellus metus, imperdiet pulvinar ex congue vel. Morbi porta cursus hendrerit. Morbi felis urna, pulvinar sed nunc sit amet, interdum faucibus felis. Sed sit amet ligula non metus porta tincidunt. Duis facilisis, magna et accumsan consequat, nibh sapien elementum leo, ut imperdiet odio elit sed velit. Nam erat nisi, congue eu efficitur non, gravida sit amet eros.', 'noimage.jpg', '2017-04-07 07:16:43'),
(5, 1, 1, 'Post Three', 'Post-Three', '<p>This is post three.</p>\r\n', 'noimage.jpg', '2017-04-07 09:07:45'),
(10, 2, 1, 'Post Five', 'Post-Five', '<p>Post with no image.</p>\r\n', 'error.PNG', '2017-04-07 09:46:30'),
(12, 2, 1, 'Post Six', 'Post-Six', '<p>Posting smaller image</p>\r\n', 'gallifreyan_img.jpg', '2017-04-07 09:49:05'),
(13, 1, 1, 'Post Seven', 'Post-Seven', '<p>Testing post with a bigger image!</p>\r\n', 'gallifreyan_image.png', '2017-04-07 09:56:18'),
(14, 1, 1, 'Testing Post 1', 'Testing-Post-1', '<h1><strong>Testing Post 1</strong></h1>\r\n\r\n<p>This is the body of testing post 1...</p>\r\n', 'wtf.PNG', '2017-04-12 06:49:05'),
(15, 3, 1, 'Post for Science!', 'Post-for-Science', '<p>This is a science post!</p>\r\n', 'noimage.jpg', '2017-04-12 07:51:22'),
(16, 3, 2, 'Castiel\'s First Post', 'Castiels-First-Post', '<p>This is my first post.</p>\r\n', '12079494_10156219022695389_8502562067200767926_n.jpg', '2017-04-19 07:50:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `registered_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `zipcode`, `email`, `username`, `password`, `registered_date`) VALUES
(1, 'Bernardino Silvestre', '1011', 'bnard.spn@gmail.com', 'bnard_spn', '0f359740bd1cda994f8b55330c86d845', '2017-04-18 11:24:42'),
(2, 'Clarence Castiel', '1011', 'clarence.castiel@gmail.com', 'castiel026', '0f359740bd1cda994f8b55330c86d845', '2017-04-19 07:45:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
