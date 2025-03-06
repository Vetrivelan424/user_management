-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 06, 2025 at 04:11 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user_central`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `maidenName` varchar(50) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `gender` enum('male','female','other') DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `birthDate` date DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `bloodGroup` varchar(5) DEFAULT NULL,
  `height` float DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `eyeColor` varchar(20) DEFAULT NULL,
  `hairColor` varchar(50) DEFAULT NULL,
  `hairType` varchar(50) DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `address` text,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `stateCode` varchar(10) DEFAULT NULL,
  `postalCode` varchar(20) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `macAddress` varchar(20) DEFAULT NULL,
  `university` varchar(100) DEFAULT NULL,
  `cardExpire` varchar(10) DEFAULT NULL,
  `cardNumber` varchar(20) DEFAULT NULL,
  `cardType` varchar(50) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `iban` varchar(34) DEFAULT NULL,
  `companyName` varchar(100) DEFAULT NULL,
  `companyDepartment` varchar(50) DEFAULT NULL,
  `companyTitle` varchar(50) DEFAULT NULL,
  `companyAddress` text,
  `ein` varchar(20) DEFAULT NULL,
  `ssn` varchar(20) DEFAULT NULL,
  `userAgent` text,
  `cryptoCoin` varchar(50) DEFAULT NULL,
  `cryptoWallet` varchar(100) DEFAULT NULL,
  `cryptoNetwork` varchar(50) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `maidenName`, `age`, `gender`, `email`, `phone`, `username`, `password`, `birthDate`, `image`, `bloodGroup`, `height`, `weight`, `eyeColor`, `hairColor`, `hairType`, `ip`, `address`, `city`, `state`, `stateCode`, `postalCode`, `country`, `macAddress`, `university`, `cardExpire`, `cardNumber`, `cardType`, `currency`, `iban`, `companyName`, `companyDepartment`, `companyTitle`, `companyAddress`, `ein`, `ssn`, `userAgent`, `cryptoCoin`, `cryptoWallet`, `cryptoNetwork`, `role`) VALUES
(1, 'Emily', 'Johnson', 'Smith', 28, 'female', 'emily.johnson@x.dummyjson.com', '+81 965-431-3024', 'emilys', 'emilyspass', '1996-05-30', 'https://dummyjson.com/icon/emilys/128', 'O-', 193.24, 63.16, 'Green', 'Brown', 'Curly', '42.48.100.32', '626 Main Street', 'Phoenix', 'Mississippi', 'MS', '29112', 'United States', '47:fa:41:18:ec:eb', 'University of Wisconsin--Madison', '03/26', '9289760655481815', 'Elo', 'CNY', 'YPUXISOBI7TTHPK2BR3HAIXL', 'Dooley, Kozey and Cronin', 'Engineering', 'Sales Manager', '263 Tenth Street, San Francisco, Wisconsin, 37657, United States', '977-175', '900-590-289', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'Bitcoin', '0xb9fc2fe63b2a6c003f1c324c3bfa53259162181a', 'Ethereum (ERC20)', 'admin'),
(2, 'John', 'Doe', 'Williams', 32, 'male', 'john.doe@x.dummyjson.com', '+44 123-456-7890', 'johndoe', 'johnspass', '1992-08-15', 'https://dummyjson.com/icon/johndoe/128', 'A+', 180.5, 75.2, 'Blue', 'Black', 'Straight', '51.23.45.67', '456 Elm Street', 'New York', 'New York', 'NY', '10001', 'United States', '91:ab:23:cd:45:ef', 'Harvard University', '12/25', '9876543210123456', 'Visa', 'USD', 'GB29NWBK60161331926819', 'Tech Solutions Inc.', 'IT', 'Software Engineer', '789 Park Avenue, New York, NY, 10001, United States', '123-456', '321-98-7654', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Ethereum', '0x123456789abcdef', 'Ethereum (ERC20)', 'user'),
(3, 'Tom', 'Menon', 'Smith', 28, 'female', 'emily.johnson1@x.dummyjson.com', '+81 965-431-3024', 'emilys', 'emilyspass', '1996-05-30', 'https://dummyjson.com/icon/emilys/128', 'O-', 193.24, 63.16, 'Green', 'Brown', 'Curly', '42.48.100.32', '626 Main Street', 'Phoenix', 'Mississippi', 'MS', '29112', 'United States', '47:fa:41:18:ec:eb', 'University of Wisconsin--Madison', '03/26', '9289760655481815', 'Elo', 'CNY', 'YPUXISOBI7TTHPK2BR3HAIXL', 'Dooley, Kozey and Cronin', 'Engineering', 'Sales Manager', '263 Tenth Street, San Francisco, Wisconsin, 37657, United States', '977-175', '900-590-289', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'Bitcoin', '0xb9fc2fe63b2a6c003f1c324c3bfa53259162181a', 'Ethereum (ERC20)', 'admin'),
(4, 'Mena', 'Koa', 'Williams', 32, 'male', 'john.doe2@x.dummyjson.com', '+44 123-456-7890', 'johndoe', 'johnspass', '1992-08-15', 'https://dummyjson.com/icon/johndoe/128', 'A+', 180.5, 75.2, 'Blue', 'Black', 'Straight', '51.23.45.67', '456 Elm Street', 'New York', 'New York', 'NY', '10001', 'United States', '91:ab:23:cd:45:ef', 'Harvard University', '12/25', '9876543210123456', 'Visa', 'USD', 'GB29NWBK60161331926819', 'Tech Solutions Inc.', 'IT', 'Software Engineer', '789 Park Avenue, New York, NY, 10001, United States', '123-456', '321-98-7654', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Ethereum', '0x123456789abcdef', 'Ethereum (ERC20)', 'user'),
(5, 'Lena', 'Soga', 'Smith', 28, 'female', 'emily.johnson3@x.dummyjson.com', '+81 965-431-3024', 'emilys', 'emilyspass', '1996-05-30', 'https://dummyjson.com/icon/emilys/128', 'O-', 193.24, 63.16, 'Green', 'Brown', 'Curly', '42.48.100.32', '626 Main Street', 'Phoenix', 'Mississippi', 'MS', '29112', 'United States', '47:fa:41:18:ec:eb', 'University of Wisconsin--Madison', '03/26', '9289760655481815', 'Elo', 'CNY', 'YPUXISOBI7TTHPK2BR3HAIXL', 'Dooley, Kozey and Cronin', 'Engineering', 'Sales Manager', '263 Tenth Street, San Francisco, Wisconsin, 37657, United States', '977-175', '900-590-289', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'Bitcoin', '0xb9fc2fe63b2a6c003f1c324c3bfa53259162181a', 'Ethereum (ERC20)', 'admin'),
(6, 'Venam', 'Kal', 'Williams', 32, 'male', 'john.doe3@x.dummyjson.com', '+44 123-456-7890', 'johndoe', 'johnspass', '1992-08-15', 'https://dummyjson.com/icon/johndoe/128', 'A+', 180.5, 75.2, 'Blue', 'Black', 'Straight', '51.23.45.67', '456 Elm Street', 'New York', 'New York', 'NY', '10001', 'United States', '91:ab:23:cd:45:ef', 'Harvard University', '12/25', '9876543210123456', 'Visa', 'USD', 'GB29NWBK60161331926819', 'Tech Solutions Inc.', 'IT', 'Software Engineer', '789 Park Avenue, New York, NY, 10001, United States', '123-456', '321-98-7654', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Ethereum', '0x123456789abcdef', 'Ethereum (ERC20)', 'user'),
(7, 'Doll', 'Wlles', 'Smith', 28, 'female', 'emily.johnson3@x.dummyjson.com', '+81 965-431-3024', 'emilys', 'emilyspass', '1996-05-30', 'https://dummyjson.com/icon/emilys/128', 'O-', 193.24, 63.16, 'Green', 'Brown', 'Curly', '42.48.100.32', '626 Main Street', 'Phoenix', 'Mississippi', 'MS', '29112', 'United States', '47:fa:41:18:ec:eb', 'University of Wisconsin--Madison', '03/26', '9289760655481815', 'Elo', 'CNY', 'YPUXISOBI7TTHPK2BR3HAIXL', 'Dooley, Kozey and Cronin', 'Engineering', 'Sales Manager', '263 Tenth Street, San Francisco, Wisconsin, 37657, United States', '977-175', '900-590-289', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'Bitcoin', '0xb9fc2fe63b2a6c003f1c324c3bfa53259162181a', 'Ethereum (ERC20)', 'admin'),
(8, 'Bals', 'duck', 'Williams', 32, 'male', 'john.doe@x.dummyjson.com', '+44 123-456-7890', 'johndoe', 'johnspass', '1992-08-15', 'https://dummyjson.com/icon/johndoe/128', 'A+', 180.5, 75.2, 'Blue', 'Black', 'Straight', '51.23.45.67', '456 Elm Street', 'New York', 'New York', 'NY', '10001', 'United States', '91:ab:23:cd:45:ef', 'Harvard University', '12/25', '9876543210123456', 'Visa', 'USD', 'GB29NWBK60161331926819', 'Tech Solutions Inc.', 'IT', 'Software Engineer', '789 Park Avenue, New York, NY, 10001, United States', '123-456', '321-98-7654', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Ethereum', '0x123456789abcdef', 'Ethereum (ERC20)', 'user'),
(9, 'Emily', 'Johnson', 'Smith', 28, 'female', 'emily.johnson@x.dummyjson.com', '+81 965-431-3024', 'emilys', 'emilyspass', '1996-05-30', 'https://dummyjson.com/icon/emilys/128', 'O-', 193.24, 63.16, 'Green', 'Brown', 'Curly', '42.48.100.32', '626 Main Street', 'Phoenix', 'Mississippi', 'MS', '29112', 'United States', '47:fa:41:18:ec:eb', 'University of Wisconsin--Madison', '03/26', '9289760655481815', 'Elo', 'CNY', 'YPUXISOBI7TTHPK2BR3HAIXL', 'Dooley, Kozey and Cronin', 'Engineering', 'Sales Manager', '263 Tenth Street, San Francisco, Wisconsin, 37657, United States', '977-175', '900-590-289', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'Bitcoin', '0xb9fc2fe63b2a6c003f1c324c3bfa53259162181a', 'Ethereum (ERC20)', 'admin'),
(10, 'John', 'Doe', 'Williams', 32, 'male', 'john.doe@x.dummyjson.com', '+44 123-456-7890', 'johndoe', 'johnspass', '1992-08-15', 'https://dummyjson.com/icon/johndoe/128', 'A+', 180.5, 75.2, 'Blue', 'Black', 'Straight', '51.23.45.67', '456 Elm Street', 'New York', 'New York', 'NY', '10001', 'United States', '91:ab:23:cd:45:ef', 'Harvard University', '12/25', '9876543210123456', 'Visa', 'USD', 'GB29NWBK60161331926819', 'Tech Solutions Inc.', 'IT', 'Software Engineer', '789 Park Avenue, New York, NY, 10001, United States', '123-456', '321-98-7654', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Ethereum', '0x123456789abcdef', 'Ethereum (ERC20)', 'user'),
(11, 'Tom', 'Menon', 'Smith', 28, 'female', 'emily.johnson@x.dummyjson.com', '+81 965-431-3024', 'emilys', 'emilyspass', '1996-05-30', 'https://dummyjson.com/icon/emilys/128', 'O-', 193.24, 63.16, 'Green', 'Brown', 'Curly', '42.48.100.32', '626 Main Street', 'Phoenix', 'Mississippi', 'MS', '29112', 'United States', '47:fa:41:18:ec:eb', 'University of Wisconsin--Madison', '03/26', '9289760655481815', 'Elo', 'CNY', 'YPUXISOBI7TTHPK2BR3HAIXL', 'Dooley, Kozey and Cronin', 'Engineering', 'Sales Manager', '263 Tenth Street, San Francisco, Wisconsin, 37657, United States', '977-175', '900-590-289', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'Bitcoin', '0xb9fc2fe63b2a6c003f1c324c3bfa53259162181a', 'Ethereum (ERC20)', 'admin'),
(12, 'Mena', 'Koa', 'Williams', 32, 'male', 'john.doe@x.dummyjson.com', '+44 123-456-7890', 'johndoe', 'johnspass', '1992-08-15', 'https://dummyjson.com/icon/johndoe/128', 'A+', 180.5, 75.2, 'Blue', 'Black', 'Straight', '51.23.45.67', '456 Elm Street', 'New York', 'New York', 'NY', '10001', 'United States', '91:ab:23:cd:45:ef', 'Harvard University', '12/25', '9876543210123456', 'Visa', 'USD', 'GB29NWBK60161331926819', 'Tech Solutions Inc.', 'IT', 'Software Engineer', '789 Park Avenue, New York, NY, 10001, United States', '123-456', '321-98-7654', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Ethereum', '0x123456789abcdef', 'Ethereum (ERC20)', 'user'),
(13, 'Lena', 'Soga', 'Smith', 28, 'female', 'emily.johnson@x.dummyjson.com', '+81 965-431-3024', 'emilys', 'emilyspass', '1996-05-30', 'https://dummyjson.com/icon/emilys/128', 'O-', 193.24, 63.16, 'Green', 'Brown', 'Curly', '42.48.100.32', '626 Main Street', 'Phoenix', 'Mississippi', 'MS', '29112', 'United States', '47:fa:41:18:ec:eb', 'University of Wisconsin--Madison', '03/26', '9289760655481815', 'Elo', 'CNY', 'YPUXISOBI7TTHPK2BR3HAIXL', 'Dooley, Kozey and Cronin', 'Engineering', 'Sales Manager', '263 Tenth Street, San Francisco, Wisconsin, 37657, United States', '977-175', '900-590-289', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'Bitcoin', '0xb9fc2fe63b2a6c003f1c324c3bfa53259162181a', 'Ethereum (ERC20)', 'admin'),
(14, 'Venam', 'Kal', 'Williams', 32, 'male', 'john.doe@x.dummyjson.com', '+44 123-456-7890', 'johndoe', 'johnspass', '1992-08-15', 'https://dummyjson.com/icon/johndoe/128', 'A+', 180.5, 75.2, 'Blue', 'Black', 'Straight', '51.23.45.67', '456 Elm Street', 'New York', 'New York', 'NY', '10001', 'United States', '91:ab:23:cd:45:ef', 'Harvard University', '12/25', '9876543210123456', 'Visa', 'USD', 'GB29NWBK60161331926819', 'Tech Solutions Inc.', 'IT', 'Software Engineer', '789 Park Avenue, New York, NY, 10001, United States', '123-456', '321-98-7654', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Ethereum', '0x123456789abcdef', 'Ethereum (ERC20)', 'user'),
(15, 'Doll', 'Wlles', 'Smith', 28, 'female', 'emily.johnson@x.dummyjson.com', '+81 965-431-3024', 'emilys', 'emilyspass', '1996-05-30', 'https://dummyjson.com/icon/emilys/128', 'O-', 193.24, 63.16, 'Green', 'Brown', 'Curly', '42.48.100.32', '626 Main Street', 'Phoenix', 'Mississippi', 'MS', '29112', 'United States', '47:fa:41:18:ec:eb', 'University of Wisconsin--Madison', '03/26', '9289760655481815', 'Elo', 'CNY', 'YPUXISOBI7TTHPK2BR3HAIXL', 'Dooley, Kozey and Cronin', 'Engineering', 'Sales Manager', '263 Tenth Street, San Francisco, Wisconsin, 37657, United States', '977-175', '900-590-289', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'Bitcoin', '0xb9fc2fe63b2a6c003f1c324c3bfa53259162181a', 'Ethereum (ERC20)', 'admin'),
(16, 'Bals', 'duck', 'Williams', 32, 'male', 'john.doe@x.dummyjson.com', '+44 123-456-7890', 'johndoe', 'johnspass', '1992-08-15', 'https://dummyjson.com/icon/johndoe/128', 'A+', 180.5, 75.2, 'Blue', 'Black', 'Straight', '51.23.45.67', '456 Elm Street', 'New York', 'New York', 'NY', '10001', 'United States', '91:ab:23:cd:45:ef', 'Harvard University', '12/25', '9876543210123456', 'Visa', 'USD', 'GB29NWBK60161331926819', 'Tech Solutions Inc.', 'IT', 'Software Engineer', '789 Park Avenue, New York, NY, 10001, United States', '123-456', '321-98-7654', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Ethereum', '0x123456789abcdef', 'Ethereum (ERC20)', 'user'),
(17, 'Emily', 'Johnson', 'Smith', 28, 'female', 'emily.johnson@x.dummyjson.com', '+81 965-431-3024', 'emilys', 'emilyspass', '1996-05-30', 'https://dummyjson.com/icon/emilys/128', 'O-', 193.24, 63.16, 'Green', 'Brown', 'Curly', '42.48.100.32', '626 Main Street', 'Phoenix', 'Mississippi', 'MS', '29112', 'United States', '47:fa:41:18:ec:eb', 'University of Wisconsin--Madison', '03/26', '9289760655481815', 'Elo', 'CNY', 'YPUXISOBI7TTHPK2BR3HAIXL', 'Dooley, Kozey and Cronin', 'Engineering', 'Sales Manager', '263 Tenth Street, San Francisco, Wisconsin, 37657, United States', '977-175', '900-590-289', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'Bitcoin', '0xb9fc2fe63b2a6c003f1c324c3bfa53259162181a', 'Ethereum (ERC20)', 'admin'),
(18, 'John', 'Doe', 'Williams', 32, 'male', 'john.doe@x.dummyjson.com', '+44 123-456-7890', 'johndoe', 'johnspass', '1992-08-15', 'https://dummyjson.com/icon/johndoe/128', 'A+', 180.5, 75.2, 'Blue', 'Black', 'Straight', '51.23.45.67', '456 Elm Street', 'New York', 'New York', 'NY', '10001', 'United States', '91:ab:23:cd:45:ef', 'Harvard University', '12/25', '9876543210123456', 'Visa', 'USD', 'GB29NWBK60161331926819', 'Tech Solutions Inc.', 'IT', 'Software Engineer', '789 Park Avenue, New York, NY, 10001, United States', '123-456', '321-98-7654', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Ethereum', '0x123456789abcdef', 'Ethereum (ERC20)', 'user'),
(19, 'Tom', 'Menon', 'Smith', 28, 'female', 'emily.johnson@x.dummyjson.com', '+81 965-431-3024', 'emilys', 'emilyspass', '1996-05-30', 'https://dummyjson.com/icon/emilys/128', 'O-', 193.24, 63.16, 'Green', 'Brown', 'Curly', '42.48.100.32', '626 Main Street', 'Phoenix', 'Mississippi', 'MS', '29112', 'United States', '47:fa:41:18:ec:eb', 'University of Wisconsin--Madison', '03/26', '9289760655481815', 'Elo', 'CNY', 'YPUXISOBI7TTHPK2BR3HAIXL', 'Dooley, Kozey and Cronin', 'Engineering', 'Sales Manager', '263 Tenth Street, San Francisco, Wisconsin, 37657, United States', '977-175', '900-590-289', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'Bitcoin', '0xb9fc2fe63b2a6c003f1c324c3bfa53259162181a', 'Ethereum (ERC20)', 'admin'),
(20, 'Mena', 'Koa', 'Williams', 32, 'male', 'john.doe@x.dummyjson.com', '+44 123-456-7890', 'johndoe', 'johnspass', '1992-08-15', 'https://dummyjson.com/icon/johndoe/128', 'A+', 180.5, 75.2, 'Blue', 'Black', 'Straight', '51.23.45.67', '456 Elm Street', 'New York', 'New York', 'NY', '10001', 'United States', '91:ab:23:cd:45:ef', 'Harvard University', '12/25', '9876543210123456', 'Visa', 'USD', 'GB29NWBK60161331926819', 'Tech Solutions Inc.', 'IT', 'Software Engineer', '789 Park Avenue, New York, NY, 10001, United States', '123-456', '321-98-7654', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Ethereum', '0x123456789abcdef', 'Ethereum (ERC20)', 'user'),
(21, 'Lena', 'Soga', 'Smith', 28, 'female', 'emily.johnson@x.dummyjson.com', '+81 965-431-3024', 'emilys', 'emilyspass', '1996-05-30', 'https://dummyjson.com/icon/emilys/128', 'O-', 193.24, 63.16, 'Green', 'Brown', 'Curly', '42.48.100.32', '626 Main Street', 'Phoenix', 'Mississippi', 'MS', '29112', 'United States', '47:fa:41:18:ec:eb', 'University of Wisconsin--Madison', '03/26', '9289760655481815', 'Elo', 'CNY', 'YPUXISOBI7TTHPK2BR3HAIXL', 'Dooley, Kozey and Cronin', 'Engineering', 'Sales Manager', '263 Tenth Street, San Francisco, Wisconsin, 37657, United States', '977-175', '900-590-289', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'Bitcoin', '0xb9fc2fe63b2a6c003f1c324c3bfa53259162181a', 'Ethereum (ERC20)', 'admin'),
(22, 'Venam', 'Kal', 'Williams', 32, 'male', 'john.doe@x.dummyjson.com', '+44 123-456-7890', 'johndoe', 'johnspass', '1992-08-15', 'https://dummyjson.com/icon/johndoe/128', 'A+', 180.5, 75.2, 'Blue', 'Black', 'Straight', '51.23.45.67', '456 Elm Street', 'New York', 'New York', 'NY', '10001', 'United States', '91:ab:23:cd:45:ef', 'Harvard University', '12/25', '9876543210123456', 'Visa', 'USD', 'GB29NWBK60161331926819', 'Tech Solutions Inc.', 'IT', 'Software Engineer', '789 Park Avenue, New York, NY, 10001, United States', '123-456', '321-98-7654', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Ethereum', '0x123456789abcdef', 'Ethereum (ERC20)', 'user'),
(23, 'Doll', 'Wlles', 'Smith', 28, 'female', 'emily.johnson@x.dummyjson.com', '+81 965-431-3024', 'emilys', 'emilyspass', '1996-05-30', 'https://dummyjson.com/icon/emilys/128', 'O-', 193.24, 63.16, 'Green', 'Brown', 'Curly', '42.48.100.32', '626 Main Street', 'Phoenix', 'Mississippi', 'MS', '29112', 'United States', '47:fa:41:18:ec:eb', 'University of Wisconsin--Madison', '03/26', '9289760655481815', 'Elo', 'CNY', 'YPUXISOBI7TTHPK2BR3HAIXL', 'Dooley, Kozey and Cronin', 'Engineering', 'Sales Manager', '263 Tenth Street, San Francisco, Wisconsin, 37657, United States', '977-175', '900-590-289', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'Bitcoin', '0xb9fc2fe63b2a6c003f1c324c3bfa53259162181a', 'Ethereum (ERC20)', 'admin'),
(24, 'Bals', 'duck', 'Williams', 32, 'male', 'john.doe@x.dummyjson.com', '+44 123-456-7890', 'johndoe', 'johnspass', '1992-08-15', 'https://dummyjson.com/icon/johndoe/128', 'A+', 180.5, 75.2, 'Blue', 'Black', 'Straight', '51.23.45.67', '456 Elm Street', 'New York', 'New York', 'NY', '10001', 'United States', '91:ab:23:cd:45:ef', 'Harvard University', '12/25', '9876543210123456', 'Visa', 'USD', 'GB29NWBK60161331926819', 'Tech Solutions Inc.', 'IT', 'Software Engineer', '789 Park Avenue, New York, NY, 10001, United States', '123-456', '321-98-7654', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Ethereum', '0x123456789abcdef', 'Ethereum (ERC20)', 'user'),
(25, 'Emily', 'Johnson', 'Smith', 28, 'female', 'emily.johnson@x.dummyjson.com', '+81 965-431-3024', 'emilys', 'emilyspass', '1996-05-30', 'https://dummyjson.com/icon/emilys/128', 'O-', 193.24, 63.16, 'Green', 'Brown', 'Curly', '42.48.100.32', '626 Main Street', 'Phoenix', 'Mississippi', 'MS', '29112', 'United States', '47:fa:41:18:ec:eb', 'University of Wisconsin--Madison', '03/26', '9289760655481815', 'Elo', 'CNY', 'YPUXISOBI7TTHPK2BR3HAIXL', 'Dooley, Kozey and Cronin', 'Engineering', 'Sales Manager', '263 Tenth Street, San Francisco, Wisconsin, 37657, United States', '977-175', '900-590-289', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'Bitcoin', '0xb9fc2fe63b2a6c003f1c324c3bfa53259162181a', 'Ethereum (ERC20)', 'admin'),
(26, 'John', 'Doe', 'Williams', 32, 'male', 'john.doe@x.dummyjson.com', '+44 123-456-7890', 'johndoe', 'johnspass', '1992-08-15', 'https://dummyjson.com/icon/johndoe/128', 'A+', 180.5, 75.2, 'Blue', 'Black', 'Straight', '51.23.45.67', '456 Elm Street', 'New York', 'New York', 'NY', '10001', 'United States', '91:ab:23:cd:45:ef', 'Harvard University', '12/25', '9876543210123456', 'Visa', 'USD', 'GB29NWBK60161331926819', 'Tech Solutions Inc.', 'IT', 'Software Engineer', '789 Park Avenue, New York, NY, 10001, United States', '123-456', '321-98-7654', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Ethereum', '0x123456789abcdef', 'Ethereum (ERC20)', 'user'),
(27, 'Tom', 'Menon', 'Smith', 28, 'female', 'emily.johnson@x.dummyjson.com', '+81 965-431-3024', 'emilys', 'emilyspass', '1996-05-30', 'https://dummyjson.com/icon/emilys/128', 'O-', 193.24, 63.16, 'Green', 'Brown', 'Curly', '42.48.100.32', '626 Main Street', 'Phoenix', 'Mississippi', 'MS', '29112', 'United States', '47:fa:41:18:ec:eb', 'University of Wisconsin--Madison', '03/26', '9289760655481815', 'Elo', 'CNY', 'YPUXISOBI7TTHPK2BR3HAIXL', 'Dooley, Kozey and Cronin', 'Engineering', 'Sales Manager', '263 Tenth Street, San Francisco, Wisconsin, 37657, United States', '977-175', '900-590-289', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'Bitcoin', '0xb9fc2fe63b2a6c003f1c324c3bfa53259162181a', 'Ethereum (ERC20)', 'admin'),
(28, 'Mena', 'Koa', 'Williams', 32, 'male', 'john.doe@x.dummyjson.com', '+44 123-456-7890', 'johndoe', 'johnspass', '1992-08-15', 'https://dummyjson.com/icon/johndoe/128', 'A+', 180.5, 75.2, 'Blue', 'Black', 'Straight', '51.23.45.67', '456 Elm Street', 'New York', 'New York', 'NY', '10001', 'United States', '91:ab:23:cd:45:ef', 'Harvard University', '12/25', '9876543210123456', 'Visa', 'USD', 'GB29NWBK60161331926819', 'Tech Solutions Inc.', 'IT', 'Software Engineer', '789 Park Avenue, New York, NY, 10001, United States', '123-456', '321-98-7654', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Ethereum', '0x123456789abcdef', 'Ethereum (ERC20)', 'user'),
(29, 'Lena', 'Soga', 'Smith', 28, 'female', 'emily.johnson@x.dummyjson.com', '+81 965-431-3024', 'emilys', 'emilyspass', '1996-05-30', 'https://dummyjson.com/icon/emilys/128', 'O-', 193.24, 63.16, 'Green', 'Brown', 'Curly', '42.48.100.32', '626 Main Street', 'Phoenix', 'Mississippi', 'MS', '29112', 'United States', '47:fa:41:18:ec:eb', 'University of Wisconsin--Madison', '03/26', '9289760655481815', 'Elo', 'CNY', 'YPUXISOBI7TTHPK2BR3HAIXL', 'Dooley, Kozey and Cronin', 'Engineering', 'Sales Manager', '263 Tenth Street, San Francisco, Wisconsin, 37657, United States', '977-175', '900-590-289', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'Bitcoin', '0xb9fc2fe63b2a6c003f1c324c3bfa53259162181a', 'Ethereum (ERC20)', 'admin'),
(30, 'Venam', 'Kal', 'Williams', 32, 'male', 'john.doe@x.dummyjson.com', '+44 123-456-7890', 'johndoe', 'johnspass', '1992-08-15', 'https://dummyjson.com/icon/johndoe/128', 'A+', 180.5, 75.2, 'Blue', 'Black', 'Straight', '51.23.45.67', '456 Elm Street', 'New York', 'New York', 'NY', '10001', 'United States', '91:ab:23:cd:45:ef', 'Harvard University', '12/25', '9876543210123456', 'Visa', 'USD', 'GB29NWBK60161331926819', 'Tech Solutions Inc.', 'IT', 'Software Engineer', '789 Park Avenue, New York, NY, 10001, United States', '123-456', '321-98-7654', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Ethereum', '0x123456789abcdef', 'Ethereum (ERC20)', 'user'),
(31, 'Doll', 'Wlles', 'Smith', 28, 'female', 'emily.johnson@x.dummyjson.com', '+81 965-431-3024', 'emilys', 'emilyspass', '1996-05-30', 'https://dummyjson.com/icon/emilys/128', 'O-', 193.24, 63.16, 'Green', 'Brown', 'Curly', '42.48.100.32', '626 Main Street', 'Phoenix', 'Mississippi', 'MS', '29112', 'United States', '47:fa:41:18:ec:eb', 'University of Wisconsin--Madison', '03/26', '9289760655481815', 'Elo', 'CNY', 'YPUXISOBI7TTHPK2BR3HAIXL', 'Dooley, Kozey and Cronin', 'Engineering', 'Sales Manager', '263 Tenth Street, San Francisco, Wisconsin, 37657, United States', '977-175', '900-590-289', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'Bitcoin', '0xb9fc2fe63b2a6c003f1c324c3bfa53259162181a', 'Ethereum (ERC20)', 'admin'),
(32, 'Bals', 'duck', 'Williams', 32, 'male', 'john.doe@x.dummyjson.com', '+44 123-456-7890', 'johndoe', 'johnspass', '1992-08-15', 'https://dummyjson.com/icon/johndoe/128', 'A+', 180.5, 75.2, 'Blue', 'Black', 'Straight', '51.23.45.67', '456 Elm Street', 'New York', 'New York', 'NY', '10001', 'United States', '91:ab:23:cd:45:ef', 'Harvard University', '12/25', '9876543210123456', 'Visa', 'USD', 'GB29NWBK60161331926819', 'Tech Solutions Inc.', 'IT', 'Software Engineer', '789 Park Avenue, New York, NY, 10001, United States', '123-456', '321-98-7654', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Ethereum', '0x123456789abcdef', 'Ethereum (ERC20)', 'user');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
