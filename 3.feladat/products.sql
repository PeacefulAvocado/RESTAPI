-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Már 25. 22:52
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `products`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `stock`) VALUES
(1, 'Laptop ASUS ROG Strix G15', '15.6\" FHD, AMD Ryzen 7 5800H, NVIDIA GeForce RTX 3060, 16GB RAM, 512GB SSD', 1499.99, 8),
(2, 'Smartphone Samsung Galaxy S21 Ultra', '6.8\" Dynamic AMOLED, 256GB, 12GB RAM, 108MP Camera, 5000mAh Battery', 1199.99, 15),
(3, 'Television LG OLED65C1PUB', '65\" OLED 4K UHD Smart TV, HDR, Dolby Vision IQ, Google Assistant, Alexa Built-in', 2299.99, 5),
(4, 'Headphones Bose Noise Cancelling Headphones 700', 'Wireless Bluetooth, Over-Ear, with Alexa Voice Control', 379.99, 20),
(5, 'Tablet Microsoft Surface Pro 7', '12.3\" Touchscreen, Intel Core i5, 8GB RAM, 128GB SSD, Windows 10 Home', 899.99, 10),
(6, 'Gaming Console Sony PlayStation 5', 'Ultra HD Blu-ray, AMD Ryzen Zen 2 CPU, AMD Radeon RDNA 2 GPU, 16GB GDDR6 RAM', 499.99, 25),
(7, 'Digital Camera Canon EOS R5', '45MP Full-Frame CMOS Sensor, 8K30 Raw and 4K120 10-Bit Internal Video', 3899.99, 3),
(8, 'Smartwatch Apple Watch Series 7', '41mm GPS + Cellular, Always-On Retina Display, Blood Oxygen Sensor', 399.99, 30),
(9, 'Wireless Router ASUS ROG Rapture GT-AX11000', 'AX11000 Tri-Band WiFi 6 Gaming Router, 2.5G WAN/LAN Port, AiMesh Compatible', 449.99, 12),
(10, 'Drone DJI Mavic Air 2', '4K/60fps Video, 48MP Photo, 34-min Max Flight Time, OcuSync 2.0 Transmission', 799.99, 7),
(11, 'External SSD Samsung T7 Portable SSD', '1TB - Up to 1050MB/s - USB 3.2 External Solid State Drive, Blue', 169.99, 18),
(12, 'Bluetooth Speaker JBL Flip 5', 'Portable Waterproof Speaker, Wireless Bluetooth Streaming, Up to 12 Hours of Playtime', 119.99, 22),
(13, 'Monitor Dell UltraSharp U2720Q', '27\" 4K UHD LED Monitor, IPS, 3840x2160, 60Hz, 5ms, DisplayPort, HDMI', 549.99, 9),
(14, 'Printer HP OfficeJet Pro 9025', 'Wireless All-in-One Printer, Smart Home Office Productivity, Instant Ink Ready', 329.99, 14),
(15, 'Webcam Logitech C920 HD Pro', '1080p Video Calling, Dual Stereo Audio, HD Light Correction, AutoFocus', 79.99, 35),
(16, 'Graphics Card NVIDIA GeForce RTX 3080', '10GB GDDR6X, PCI Express 4.0, DirectX 12 Ultimate, Ray Tracing', 699.99, 6),
(17, 'Wireless Mouse Logitech MX Master 3', 'Advanced Ergonomic Design, Ultrafast Scrolling, 4000 DPI, 7 Customizable Buttons', 99.99, 27),
(18, 'Keyboard Razer BlackWidow V3', 'RGB Mechanical Gaming Keyboard, Green Mechanical Switches, Tactile & Clicky', 139.99, 16),
(19, 'Gaming Chair Secretlab Titan', '2022 Series, PU Leather, Integrated Lumbar Support, Adjustable Headrest & Armrests', 399.99, 8),
(20, 'Fitness Tracker Fitbit Charge 5', 'Advanced Health & Fitness Tracker, Built-in GPS, Heart Rate, Sleep & Stress Monitoring', 179.99, 11),
(21, 'Security Camera Arlo Pro 4', 'Wire-Free Security Camera, 2K Video, Color Night Vision, Spotlight, 6-Month Battery', 199.99, 19),
(22, 'Projector Epson Home Cinema 2150', '1080p Full HD Wireless 3LCD Projector, Miracast, 2500 lumens, HDMI', 899.99, 4),
(23, 'Bluetooth Earbuds Sony WF-1000XM4', 'Industry Leading Noise Canceling Truly Wireless Earbuds, Alexa Built-in', 279.99, 13),
(24, 'Electric Scooter Segway Ninebot MAX', '40.4 Miles Long-range Battery, Portable Folding Design, 10-inch Pneumatic Tires', 799.99, 6),
(25, 'VR Headset Oculus Quest 2', '64GB All-In-One Virtual Reality Headset, PC VR Compatible, Guardian System', 299.99, 15),
(26, 'Coffee Maker Keurig K-Elite', 'Single Serve K-Cup Pod Coffee Brewer, Iced Coffee Capability, Brushed Silver Finish', 129.99, 23),
(27, 'Kitchen Blender Vitamix E310', 'Professional-Grade, 48 oz. Container, Black', 349.99, 9),
(28, 'Vacuum Cleaner Dyson V15 Detect', 'Laser Slim Fluffy, Cordless Stick Vacuum Cleaner, LCD Screen, Whole-Home Cleaning', 699.99, 7),
(29, 'Robot Vacuum iRobot Roomba i7+', 'Self-Emptying, Wi-Fi Connected, Works with Alexa, Ideal for Pet Hair', 799.99, 5),
(30, 'Security System Ring Alarm 5-Piece Kit', 'Home Security System, Works with Alexa, No Long-Term Commitments', 199.99, 12),
(31, 'Wireless Earphones Beats Studio Buds', 'True Wireless Noise Cancelling Earbuds, IPX4 Sweat and Water Resistant', 149.99, 18),
(32, 'Desk Chair Herman Miller Aeron', 'Ergonomic Office Chair, Size B, Graphite', 1395.00, 3),
(33, 'Desktop Computer Alienware Aurora R12', '10th Gen Intel Core i7 10700KF, NVIDIA GeForce RTX 3080, 16GB DDR4 RAM, 1TB SSD', 2399.99, 4),
(34, 'Gaming Monitor ASUS ROG Swift PG279Q', '27\" 2K WQHD IPS, 165Hz, G-SYNC, Eye Care Gaming Monitor', 599.99, 8),
(35, 'Smart Thermostat Nest Learning Thermostat', 'Programs itself, Alexa Built-in, Wi-Fi Connected, Stainless Steel', 249.99, 11),
(36, 'Wireless Charger Anker PowerWave Pad', '10W Max Qi-Certified Fast Charging Pad, Compatible with iPhone 12, Galaxy, AirPods', 25.99, 36),
(37, 'Car Vacuum BLACK+DECKER Flex Vac', '12V Cordless Handheld Vacuum Cleaner, Cyclonic Action, Lithium Flex Hand Vacuum', 59.99, 14);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
