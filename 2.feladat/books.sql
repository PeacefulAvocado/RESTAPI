-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Már 23. 15:49
-- Kiszolgáló verziója: 10.4.28-MariaDB
-- PHP verzió: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `books`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `availability` enum('available','not available') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `availability`) VALUES
(1, 'To Kill a Mockingbird', 'Harper Lee', 'not available'),
(2, '1984', 'George Orwell', 'available'),
(3, 'The Great Gatsby', 'F. Scott Fitzgerald', 'not available'),
(4, 'Pride and Prejudice', 'Jane Austen', 'available'),
(5, 'The Catcher in the Rye', 'J.D. Salinger', 'not available'),
(6, 'Animal Farm', 'George Orwell', 'available'),
(7, 'Lord of the Flies', 'William Golding', 'available'),
(8, 'Brave New World', 'Aldous Huxley', 'available'),
(9, 'The Hobbit', 'J.R.R. Tolkien', 'available'),
(10, 'To the Lighthouse', 'Virginia Woolf', 'available'),
(11, 'The Old Man and the Sea', 'Ernest Hemingway', 'available'),
(12, 'One Hundred Years of Solitude', 'Gabriel Garcia Marquez', 'available'),
(13, 'Beloved', 'Toni Morrison', 'available'),
(14, 'The Lord of the Rings', 'J.R.R. Tolkien', 'not available'),
(15, 'War and Peace', 'Leo Tolstoy', 'not available'),
(16, 'Moby-Dick', 'Herman Melville', 'available'),
(17, 'The Picture of Dorian Gray', 'Oscar Wilde', 'not available'),
(18, 'A Tale of Two Cities', 'Charles Dickens', 'not available'),
(19, 'The Brothers Karamazov', 'Fyodor Dostoevsky', 'available'),
(20, 'Crime and Punishment', 'Fyodor Dostoevsky', 'available'),
(21, 'Gone with the Wind', 'Margaret Mitchell', 'not available'),
(22, 'The Sound and the Fury', 'William Faulkner', 'not available'),
(23, 'Alice\'s Adventures in Wonderland', 'Lewis Carroll', 'not available'),
(24, 'Frankenstein', 'Mary Shelley', 'available'),
(25, 'The Scarlet Letter', 'Nathaniel Hawthorne', 'not available'),
(26, 'Don Quixote', 'Miguel de Cervantes', 'not available'),
(27, 'Anna Karenina', 'Leo Tolstoy', 'not available'),
(28, 'The Grapes of Wrath', 'John Steinbeck', 'available'),
(29, 'The Count of Monte Cristo', 'Alexandre Dumas', 'not available'),
(30, 'The Adventures of Huckleberry Finn', 'Mark Twain', 'available'),
(31, 'Wuthering Heights', 'Emily Brontë', 'available'),
(32, 'Heart of Darkness', 'Joseph Conrad', 'available'),
(33, 'The Odyssey', 'Homer', 'not available'),
(34, 'Jane Eyre', 'Charlotte Brontë', 'available'),
(35, 'Catch-22', 'Joseph Heller', 'available'),
(36, 'Les Misérables', 'Victor Hugo', 'available'),
(37, 'The Road', 'Cormac McCarthy', 'not available'),
(38, 'The Stranger', 'Albert Camus', 'available'),
(39, 'Slaughterhouse-Five', 'Kurt Vonnegut', 'not available'),
(40, 'Catch-22', 'Joseph Heller', 'not available'),
(41, 'The Hitchhiker\'s Guide to the Galaxy', 'Douglas Adams', 'available'),
(42, 'The Bell Jar', 'Sylvia Plath', 'available'),
(43, 'The Iliad', 'Homer', 'not available'),
(44, 'The Divine Comedy', 'Dante Alighieri', 'not available'),
(45, 'The Canterbury Tales', 'Geoffrey Chaucer', 'available'),
(46, 'Walden', 'Henry David Thoreau', 'not available'),
(47, 'The Sun Also Rises', 'Ernest Hemingway', 'not available'),
(48, 'The Jungle', 'Upton Sinclair', 'not available'),
(49, 'The Alchemist', 'Paulo Coelho', 'not available'),
(50, 'Fahrenheit 451', 'Ray Bradbury', 'available'),
(51, 'The Color Purple', 'Alice Walker', 'available'),
(52, 'The Name of the Rose', 'Umberto Eco', 'available'),
(53, 'The Joy Luck Club', 'Amy Tan', 'not available'),
(54, 'The Chronicles of Narnia', 'C.S. Lewis', 'available'),
(55, 'The Secret Garden', 'Frances Hodgson Burnett', 'available'),
(56, 'A Christmas Carol', 'Charles Dickens', 'available'),
(57, 'The Silmarillion', 'J.R.R. Tolkien', 'not available'),
(58, 'The Girl with the Dragon Tattoo', 'Stieg Larsson', 'available'),
(59, 'The Wind in the Willows', 'Kenneth Grahame', 'available'),
(60, 'A Wrinkle in Time', 'Madeleine L\'Engle', 'available'),
(61, 'Little Women', 'Louisa May Alcott', 'available'),
(62, 'Charlotte\'s Web', 'E.B. White', 'not available'),
(63, 'Anne of Green Gables', 'L.M. Montgomery', 'not available'),
(64, 'Dracula', 'Bram Stoker', 'available'),
(65, 'The War of the Worlds', 'H.G. Wells', 'not available'),
(66, 'Jurassic Park', 'Michael Crichton', 'not available'),
(67, 'Matilda', 'Roald Dahl', 'not available'),
(68, 'Harry Potter and the Philosopher\'s Stone', 'J.K. Rowling', 'not available'),
(69, 'The Hunger Games', 'Suzanne Collins', 'not available'),
(70, 'The Da Vinci Code', 'Dan Brown', 'available'),
(71, 'The Help', 'Kathryn Stockett', 'available'),
(72, 'The Shining', 'Stephen King', 'available'),
(73, 'The Martian', 'Andy Weir', 'not available'),
(74, 'The Handmaid\'s Tale', 'Margaret Atwood', 'available'),
(75, 'A Clockwork Orange', 'Anthony Burgess', 'not available'),
(76, 'The Lovely Bones', 'Alice Sebold', 'not available'),
(77, 'The Book Thief', 'Markus Zusak', 'available'),
(78, 'Life of Pi', 'Yann Martel', 'not available'),
(79, 'The Road Less Traveled', 'M. Scott Peck', 'available'),
(80, 'The Stand', 'Stephen King', 'available'),
(81, 'Twilight', 'Stephenie Meyer', 'not available'),
(82, 'The Kite Runner', 'Khaled Hosseini', 'available'),
(83, 'The Night Circus', 'Erin Morgenstern', 'not available'),
(84, 'Ender\'s Game', 'Orson Scott Card', 'not available'),
(85, 'The Princess Bride', 'William Goldman', 'available'),
(86, 'The Goldfinch', 'Donna Tartt', 'not available'),
(87, 'The Pillars of the Earth', 'Ken Follett', 'not available'),
(88, 'The Thorn Birds', 'Colleen McCullough', 'not available'),
(89, 'The Shadow of the Wind', 'Carlos Ruiz Zafón', 'available'),
(90, 'Me Before You', 'Jojo Moyes', 'not available'),
(91, 'The Help', 'Kathryn Stockett', 'not available'),
(92, 'The Catcher in the Rye', 'J.D. Salinger', 'available'),
(93, 'The Nightingale', 'Kristin Hannah', 'not available');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
