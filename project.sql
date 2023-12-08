

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";




CREATE TABLE `area` (
  `area_id` int NOT NULL,
  `area_name` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `city_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `area` (`area_id`, `area_name`, `city_id`) VALUES
(1, 'Vijay nagar', 1),
(2, 'Mahalakshmi Nagar', 1),
(3, 'Bhavarkuva', 1),
(4, 'Nipania', 1),
(5, 'New Palasiya', 1),
(6, 'Rau', 1),
(7, 'LIG Colony', 1);



CREATE TABLE `category` (
  `cat_id` int NOT NULL,
  `cat_name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
(1, 'Food_donation'),
(2, 'Clothes_donation'),
(3, 'Medicine_donation'),
(4, 'Warm_clothes(Winter_wear)'),
(5, 'Blanket');



CREATE TABLE `city` (
  `city_id` int NOT NULL,
  `city_name` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `state_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `city` (`city_id`, `city_name`, `state_id`) VALUES
(1, 'Indore', 1);



CREATE TABLE `donation` (
  `d_id` int NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci NOT NULL,
  `cat_id` int NOT NULL,
  `donation_date` date NOT NULL,
  `address` text COLLATE utf8mb4_general_ci NOT NULL,
  `city_id` int NOT NULL,
  `area_id` int NOT NULL,
  `status` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `fromtime` time NOT NULL,
  `user_id` int NOT NULL,
  `contact_name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `contact_number` bigint NOT NULL,
  `totime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `donation` (`d_id`, `title`, `description`, `cat_id`, `donation_date`, `address`, `city_id`, `area_id`, `status`, `fromtime`, `user_id`, `contact_name`, `contact_number`, `totime`) VALUES
(8, 'chai', 'chai', 1, '2023-11-22', 'kshipra', 1, 1, 'pending', '00:55:00', 3, '7000162743', 7000162743, '04:55:00'),
(9, 'chai', 'chai', 1, '2023-11-22', 'kshipra', 1, 1, 'pending', '00:55:00', 3, '7000162743', 7000162743, '04:55:00');



CREATE TABLE `event` (
  `e_id` int NOT NULL,
  `title` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `date` date NOT NULL,
  `user_id` int NOT NULL,
  `status` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `event_type` varchar(30) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



CREATE TABLE `feedback` (
  `f_id` int NOT NULL,
  `date` date NOT NULL,
  `user_id` int NOT NULL,
  `comment` text COLLATE utf8mb4_general_ci NOT NULL,
  `rating` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



CREATE TABLE `inquiry` (
  `inq_id` int NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `contact` bigint NOT NULL,
  `message` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



CREATE TABLE `money_donation` (
  `m_id` int NOT NULL,
  `user_id` int NOT NULL,
  `amount` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `date` date NOT NULL,
  `d_name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `money_donation` (`m_id`, `user_id`, `amount`, `description`, `date`, `d_name`) VALUES
(17, 3, '1001', 'a', '2023-11-22', 'Abhishek patel');



CREATE TABLE `role` (
  `role_id` int NOT NULL,
  `role_name` varchar(20) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `role` (`role_id`, `role_name`) VALUES
(1, 'admin'),
(2, 'user'),
(3, 'volunteer');



CREATE TABLE `state` (
  `state_id` int NOT NULL,
  `state_name` varchar(20) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `state` (`state_id`, `state_name`) VALUES
(1, 'Madhya Pradesh ');



CREATE TABLE `user` (
  `user_id` int NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `contact` bigint NOT NULL,
  `gender` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `dob` date NOT NULL,
  `address` text COLLATE utf8mb4_general_ci NOT NULL,
  `city_id` int NOT NULL,
  `area_id` int NOT NULL,
  `image` text COLLATE utf8mb4_general_ci NOT NULL,
  `reg_date` date NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `role_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `user` (`user_id`, `name`, `email`, `contact`, `gender`, `dob`, `address`, `city_id`, `area_id`, `image`, `reg_date`, `password`, `role_id`) VALUES
(1, 'Abhishek Patel', 'abhishek@gmail.com', 885522663, 'Male', '2023-01-10', 'Kshipra', 1, 1, 'WhatsApp Image 2022-11-21 at 7.24.58 PM.jpeg', '2023-01-10', '123', 1),
(2, 'Abhishek volunteer', 'abhishek.volunteer@gmail.com', 1231231231, 'Male', '1999-01-01', 'kshipra', 1, 1, 'WhatsApp Image 2023-11-22 at 22.39.24_14c874d9.jpg', '2023-11-22', '123', 3),
(3, 'Abhishek User', 'abhishek.user@gmail.com', 1231231231, 'Male', '1999-01-01', 'kshipra', 1, 1, 'WhatsApp Image 2023-11-22 at 22.39.24_14c874d9.jpg', '2023-11-22', '123', 2);



CREATE TABLE `volunteer_acceptance` (
  `v_id` int NOT NULL,
  `user_id` int NOT NULL,
  `datetime` datetime NOT NULL,
  `status` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `d_id` int NOT NULL,
  `description` text COLLATE utf8mb4_general_ci NOT NULL,
  `receive_datetime` datetime NOT NULL,
  `receive_message` text COLLATE utf8mb4_general_ci NOT NULL,
  `delivery_datetime` datetime NOT NULL,
  `delivery_message` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `volunteer_acceptance`
--

INSERT INTO `volunteer_acceptance` (`v_id`, `user_id`, `datetime`, `status`, `d_id`, `description`, `receive_datetime`, `receive_message`, `delivery_datetime`, `delivery_message`) VALUES
(2, 15, '2023-01-29 08:11:25', 'accept', 2, 'i will come in evening...', '2023-01-29 08:11:51', 'i will collect 10 person meal...', '2023-01-29 08:12:14', 'i will delivered 10 person meal into ngo.');


ALTER TABLE `area`
  ADD PRIMARY KEY (`area_id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`),
  ADD KEY `state_id` (`state_id`);

--
-- Indexes for table `donation`
--
ALTER TABLE `donation`
  ADD PRIMARY KEY (`d_id`),
  ADD KEY `cat_id` (`cat_id`,`city_id`,`area_id`,`user_id`),
  ADD KEY `area_id` (`area_id`),
  ADD KEY `city_id` (`city_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`e_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`f_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `inquiry`
--
ALTER TABLE `inquiry`
  ADD PRIMARY KEY (`inq_id`);

--
-- Indexes for table `money_donation`
--
ALTER TABLE `money_donation`
  ADD PRIMARY KEY (`m_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `area_id` (`area_id`,`city_id`,`role_id`),
  ADD KEY `city_id` (`city_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `volunteer_acceptance`
--
ALTER TABLE `volunteer_acceptance`
  ADD PRIMARY KEY (`v_id`),
  ADD KEY `user_id` (`user_id`,`d_id`);


ALTER TABLE `area`
  MODIFY `area_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;


ALTER TABLE `category`
  MODIFY `cat_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;


ALTER TABLE `city`
  MODIFY `city_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;


ALTER TABLE `donation`
  MODIFY `d_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;


ALTER TABLE `event`
  MODIFY `e_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;


ALTER TABLE `feedback`
  MODIFY `f_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;


ALTER TABLE `inquiry`
  MODIFY `inq_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;


ALTER TABLE `money_donation`
  MODIFY `m_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `state_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `volunteer_acceptance`
--
ALTER TABLE `volunteer_acceptance`
  MODIFY `v_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `area`
--
ALTER TABLE `area`
  ADD CONSTRAINT `area_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `city_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `state` (`state_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `donation`
--
ALTER TABLE `donation`
  ADD CONSTRAINT `donation_ibfk_1` FOREIGN KEY (`area_id`) REFERENCES `area` (`area_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `donation_ibfk_2` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `donation_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `event`
--
ALTER TABLE `event`
  ADD CONSTRAINT `event_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `money_donation`
--
ALTER TABLE `money_donation`
  ADD CONSTRAINT `money_donation_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;


ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_ibfk_2` FOREIGN KEY (`area_id`) REFERENCES `area` (`area_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_ibfk_3` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

