-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Jan 2024 pada 18.57
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cafe`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `customer_id` int(100) NOT NULL,
  `prod_id` varchar(100) NOT NULL,
  `prod_name` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `price` double NOT NULL,
  `date` date DEFAULT NULL,
  `image` varchar(500) NOT NULL,
  `em_username` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`id`, `customer_id`, `prod_id`, `prod_name`, `type`, `quantity`, `price`, `date`, `image`, `em_username`) VALUES
(4, 1, 'P02', 'Wagyu Steak', 'Meals', 1, 500, '2023-12-02', 'C:\\\\\\\\Users\\\\\\\\ACER\\\\\\\\Downloads\\\\\\\\steak.jpg', 'aipp'),
(5, 1, 'P01', 'Amer', 'Drinks', 1, 10, '2023-12-02', 'C:\\\\\\\\Users\\\\\\\\ACER\\\\\\\\Downloads\\\\\\\\amer.jpg', 'aipp'),
(6, 2, 'P02', 'Wagyu Steak', 'Meals', 1, 500, '2023-12-02', 'C:\\\\\\\\Users\\\\\\\\ACER\\\\\\\\Downloads\\\\\\\\steak.jpg', 'aipp'),
(7, 3, 'P02', 'Wagyu Steak', 'Meals', 3, 1500, '2023-12-02', 'C:\\\\\\\\Users\\\\\\\\ACER\\\\\\\\Downloads\\\\\\\\steak.jpg', 'aipp'),
(8, 3, 'P01', 'Amer', 'Drinks', 2, 20, '2023-12-02', 'C:\\\\\\\\Users\\\\\\\\ACER\\\\\\\\Downloads\\\\\\\\amer.jpg', 'aipp'),
(9, 3, 'P02', 'Wagyu Steak', 'Meals', 1, 500, '2023-12-03', 'C:\\\\\\\\Users\\\\\\\\ACER\\\\\\\\Downloads\\\\\\\\steak.jpg', 'aipp'),
(10, 4, 'P01', 'Amer', 'Drinks', 1, 10, '2023-12-03', 'C:\\\\\\\\Users\\\\\\\\ACER\\\\\\\\Downloads\\\\\\\\amer.jpg', 'aipp'),
(11, 5, 'P02', 'Wagyu Steak', 'Meals', 1, 500, '2024-01-04', 'C:\\\\\\\\Users\\\\\\\\ACER\\\\\\\\Downloads\\\\\\\\steak.jpg', 'aipp'),
(12, 5, 'P01', 'Amer', 'Drinks', 1, 10, '2024-01-04', 'C:\\\\\\\\Users\\\\\\\\ACER\\\\\\\\Downloads\\\\\\\\amer.jpg', 'aipp'),
(13, 6, 'P01', 'Amer', 'Drinks', 1, 10, '2024-01-04', 'C:\\\\\\\\Users\\\\\\\\ACER\\\\\\\\Downloads\\\\\\\\amer.jpg', 'aipp'),
(14, 6, 'P02', 'Wagyu Steak', 'Meals', 1, 500, '2024-01-04', 'C:\\\\\\\\Users\\\\\\\\ACER\\\\\\\\Downloads\\\\\\\\steak.jpg', 'aipp'),
(15, 7, 'P02', 'Wagyu Steak', 'Meals', 1, 500, '2024-01-04', 'C:\\\\\\\\Users\\\\\\\\ACER\\\\\\\\Downloads\\\\\\\\steak.jpg', 'aipp');

-- --------------------------------------------------------

--
-- Struktur dari tabel `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `question` varchar(100) NOT NULL,
  `answer` varchar(100) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `employee`
--

INSERT INTO `employee` (`id`, `username`, `password`, `question`, `answer`, `date`) VALUES
(1, 'aipp', 'aipp12345', 'What is your favorite Color?', 'red', '2023-12-02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `prod_id` varchar(100) NOT NULL,
  `prod_name` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `stock` int(100) NOT NULL,
  `price` double NOT NULL,
  `status` varchar(100) NOT NULL,
  `image` varchar(500) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `product`
--

INSERT INTO `product` (`id`, `prod_id`, `prod_name`, `type`, `stock`, `price`, `status`, `image`, `date`) VALUES
(2, 'P01', 'Amer', 'Drinks', 0, 10, 'Available', 'C:\\\\Users\\\\ACER\\\\Downloads\\\\amer.jpg', '2023-12-02'),
(3, 'P02', 'Wagyu Steak', 'Meals', 2, 500, 'Available', 'C:\\\\Users\\\\ACER\\\\Downloads\\\\steak.jpg', '2023-12-02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `receipt`
--

CREATE TABLE `receipt` (
  `id` int(11) NOT NULL,
  `customer_id` int(100) NOT NULL,
  `total` double NOT NULL,
  `date` date DEFAULT NULL,
  `em_username` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `receipt`
--

INSERT INTO `receipt` (`id`, `customer_id`, `total`, `date`, `em_username`) VALUES
(4, 3, 2020, '2023-12-03', 'aipp'),
(5, 4, 10, '2023-12-03', 'aipp'),
(6, 5, 510, '2024-01-04', 'aipp'),
(7, 6, 510, '2024-01-04', 'aipp'),
(8, 7, 500, '2024-01-04', 'aipp');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `receipt`
--
ALTER TABLE `receipt`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `receipt`
--
ALTER TABLE `receipt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
