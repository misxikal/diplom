-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 16 2024 г., 07:15
-- Версия сервера: 8.0.30
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `ForSushi`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Admin`
--

CREATE TABLE `Admin` (
  `id` int NOT NULL,
  `Name` varchar(255) NOT NULL,
  `PhoneNumber` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Admin`
--

INSERT INTO `Admin` (`id`, `Name`, `PhoneNumber`, `Password`) VALUES
(1, 'Админчик', '+7 (992) 929 19-92', '1234');

-- --------------------------------------------------------

--
-- Структура таблицы `Cars`
--

CREATE TABLE `Cars` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `model_path` longtext NOT NULL,
  `price` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Cars`
--

INSERT INTO `Cars` (`id`, `name`, `model_path`, `price`) VALUES
(1, 'Nissan skyline R32', 'Nissan Skyline R32', 13000),
(2, 'Toyota Trueno AE86', 'Toyota AE86', 0),
(3, 'Honda NSX', 'Honda NSX', 20000),
(4, 'Mazda RX-7 FC', 'Mazda RX7 FC', 22000),
(5, 'Honda Civic', 'Honda Civic', 35000),
(6, 'Nissan Silvia S15', 'Nissan Silvia S15', 40000),
(7, 'Nissan 240 SX', 'Nissan 240 SX', 10000),
(8, 'Subaru Impreza WRX STI', 'Subaru', 15000);

-- --------------------------------------------------------

--
-- Структура таблицы `Cart`
--

CREATE TABLE `Cart` (
  `id` int NOT NULL,
  `id_User` int NOT NULL,
  `id_Product` int NOT NULL,
  `count` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Cart`
--

INSERT INTO `Cart` (`id`, `id_User`, `id_Product`, `count`) VALUES
(146, 16, 28, 1),
(148, 16, 6, 1),
(149, 16, 7, 3),
(225, 1, 2, 3),
(226, 1, 1, 5),
(227, 1, 3, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `Catalog`
--

CREATE TABLE `Catalog` (
  `id` int NOT NULL,
  `id_Office` int NOT NULL,
  `id_Product` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Catalog`
--

INSERT INTO `Catalog` (`id`, `id_Office`, `id_Product`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `Employees`
--

CREATE TABLE `Employees` (
  `id` int NOT NULL,
  `Name` varchar(255) NOT NULL,
  `NumberPhone` varchar(255) NOT NULL,
  `Age` int NOT NULL,
  `Post` varchar(255) NOT NULL,
  `id_Office` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Employees`
--

INSERT INTO `Employees` (`id`, `Name`, `NumberPhone`, `Age`, `Post`, `id_Office`) VALUES
(3, 'Юрий Иванов Иванович', '+7 (892) 342 34-12', 34, 'Уборщик', 8);

-- --------------------------------------------------------

--
-- Структура таблицы `Favourites`
--

CREATE TABLE `Favourites` (
  `id` int NOT NULL,
  `idUser` int NOT NULL,
  `idProduct` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Favourites`
--

INSERT INTO `Favourites` (`id`, `idUser`, `idProduct`) VALUES
(30, 1, 3),
(37, 28, 6),
(38, 28, 7),
(39, 28, 10),
(40, 1, 18),
(42, 1, 2),
(45, 1, 5),
(47, 1, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `Ingredients`
--

CREATE TABLE `Ingredients` (
  `id` int NOT NULL,
  `idProduct` int NOT NULL,
  `codeOrder` varchar(255) NOT NULL,
  `count` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Ingredients`
--

INSERT INTO `Ingredients` (`id`, `idProduct`, `codeOrder`, `count`) VALUES
(46, 2, 'KypOUd', 1),
(47, 2, 'nsls99', 1),
(48, 2, 'YydzNu', 1),
(49, 1, 'AdNESK', 2),
(50, 14, 'fDGH7f', 3),
(51, 10, 'N9NBrQ', 2),
(52, 1, 'LQyKcU', 1),
(53, 2, 'Lvwq7h', 7),
(54, 5, 'Lvwq7h', 4),
(55, 7, 'Lvwq7h', 3),
(56, 38, 'dMFVeb', 11),
(57, 6, 'ZVNLh1', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `Offers`
--

CREATE TABLE `Offers` (
  `id` int NOT NULL,
  `idProduct` int NOT NULL,
  `procentOffer` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Offers`
--

INSERT INTO `Offers` (`id`, `idProduct`, `procentOffer`) VALUES
(1, 18, 15),
(2, 1, 13),
(3, 29, 25),
(4, 6, 17);

-- --------------------------------------------------------

--
-- Структура таблицы `Office`
--

CREATE TABLE `Office` (
  `id` int NOT NULL,
  `id_Admin` int NOT NULL,
  `Address` varchar(255) NOT NULL,
  `nameBar` varchar(255) NOT NULL,
  `numberBar` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Office`
--

INSERT INTO `Office` (`id`, `id_Admin`, `Address`, `nameBar`, `numberBar`, `image`) VALUES
(1, 1, '124', 'test', '+7 (838) 283 12-83', ''),
(8, 1, 'Ул. Ижевка 4', 'Sakura', '+7 (993) 942 34-32', '');

-- --------------------------------------------------------

--
-- Структура таблицы `Orders`
--

CREATE TABLE `Orders` (
  `id` int NOT NULL,
  `code` varchar(255) NOT NULL,
  `total` int NOT NULL,
  `idUser` int NOT NULL,
  `date` date DEFAULT NULL,
  `id_Office` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Orders`
--

INSERT INTO `Orders` (`id`, `code`, `total`, `idUser`, `date`, `id_Office`) VALUES
(20, 'KypOUd', 369, 1, '2024-05-01', 8),
(21, 'nsls99', 369, 1, '2024-05-01', 8),
(22, 'YydzNu', 369, 1, '2024-05-02', 8),
(23, 'AdNESK', 694, 1, '2024-05-02', 8),
(24, 'fDGH7f', 1647, 1, '2024-05-03', 8),
(25, 'N9NBrQ', 1798, 1, '2024-05-03', 8),
(26, 'LQyKcU', 347, 1, '2024-05-03', 8),
(27, 'Lvwq7h', 7380, 28, '2024-05-04', 8),
(28, 'dMFVeb', 3949, 28, '2024-05-05', 8),
(29, 'ZVNLh1', 415, 1, '2024-05-05', 8);

-- --------------------------------------------------------

--
-- Структура таблицы `Product`
--

CREATE TABLE `Product` (
  `id` int NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Price` int NOT NULL,
  `Image` varchar(255) NOT NULL,
  `id_Type` int NOT NULL,
  `Descript` varchar(255) NOT NULL,
  `Weight` int NOT NULL,
  `id_Office` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Product`
--

INSERT INTO `Product` (`id`, `Name`, `Price`, `Image`, `id_Type`, `Descript`, `Weight`, `id_Office`) VALUES
(1, 'Ролл Калифорния', 399, 'rolls.jpg', 1, 'Творожный сыр, икра мацуго, рис, лист нори, огурец', 400, 8),
(2, 'Ролл Москва', 369, 'rolls.jpg', 1, 'Творожный сыр, рис, нори, соус тысяча островов, огурец', 400, 8),
(3, 'Сырный бургер', 459, 'burger.jpg', 3, 'Картофельная булочка, котлета из говядины, морковь по корейски, соус тар-тар, плавленный сыр', 500, 8),
(4, 'Тайский бургер', 599, 'burger.jpg', 3, 'Обычная булочка, ананас, котлета рыбная, соус тысяча островов', 550, 8),
(5, 'Фунчоза с говядиной', 450, 'wok.jpg', 4, 'Рисовая лапша, говядина, терияки соус, овощи', 450, 8),
(6, 'Сербский бургер', 500, 'burger.jpg', 3, 'Обычная булочка, котлета из говядины, бекон, соус белый', 500, 8),
(7, 'Пицца маргарита', 999, 'pizza.jpg', 2, 'Тесто, красный соус, помидоры, моцарелла', 1000, 8),
(8, 'Ролл Мацумото', 349, 'rolls.jpg', 1, 'Творожный сыр, шапка из сыра, нори, рис, курица', 400, 8),
(9, 'Ролл Хицугая', 359, 'rolls.jpg', 1, 'Творожный сыр, мятная шапка с сыром, рис, нори, огурец', 300, 8),
(10, 'Пицца Папа Карло', 899, 'pizza.jpg', 2, 'Тесто, белый соус, помидоры, моцарелла', 1200, 8),
(11, 'Пицца Домашняя', 699, 'pizza.jpg', 2, 'Тесто, краснобелый соус, помидоры, моцарелла', 800, 8),
(12, 'Гречневая лапша', 490, 'wok.jpg', 4, 'Лапша гречневая, соус терияки, овощи', 400, 8),
(13, 'Фунчоза с курицей', 350, 'wok.jpg', 4, 'Рисовая лапша, курица, терияки соус, овощи', 550, 8),
(14, 'Гречневая с курицей', 549, 'wok.jpg', 4, 'Лапша гречневая, курица, соус терияки, овощи', 300, 8),
(15, 'Пицца Итальяно', 899, 'pizza.jpg', 2, 'Тесто, красный соус, помидоры, моцарелла', 1400, 8),
(16, 'Бургер Королевский', 499, 'burger.jpg', 3, 'Обычная булочка, двойная котлета, соус тысяча островов', 799, 8),
(17, 'Гречневая с говядиной', 299, 'wok.jpg', 4, 'Лапша гречневая, говядина, соус терияки, овощи', 499, 8),
(18, 'Фунчоза с кальмаром', 399, 'wok.jpg', 4, 'Рисовая лапша, кальмар, терияки соус, овощи', 450, 8),
(19, 'Ролл Сырный', 509, 'rolls.jpg', 1, 'Творожный сыр, сырная шапка, курица, рис, нори', 315, 8),
(20, 'Ролл Крабовый', 659, 'rolls.jpg', 1, 'Творожный сыр, сырная шапка с крабом, краб, рис, нори', 415, 8),
(21, 'Ролл с огурцом', 549, 'rolls.jpg', 1, 'Творожный сыр, рис, нори, огурец', 350, 8),
(22, 'Пицца королевская', 450, 'pizza.jpg', 2, 'Тесто, красный соус, помидоры, моцарелла, пепперони', 1200, 8),
(23, 'Ролл Хасибаси', 399, 'rolls.jpg', 1, 'Творожный сыр, огурец, авокадо, курица, помидор, рис, нори', 439, 8),
(24, 'Пицца Мелиссино', 599, 'pizza.jpg', 2, 'Тесто, краснобелый соус, помидоры, моцарелла, петрушка', 700, 8),
(25, 'Пицца Краснорино', 500, 'pizza.jpg', 2, 'Тесто, белый соус, помидоры, моцарелла', 600, 8),
(26, 'Ролл Сингапур', 540, 'rolls.jpg', 1, 'Творожный сыр, огурец, угорь, помидоры, рис, нори', 499, 8),
(27, 'Ролл с угрем', 439, 'rolls.jpg', 1, 'Творожный сыр, угорь, рис, нори', 450, 8),
(28, 'Пицца гавайская', 400, 'pizza.jpg', 2, 'Тесто, белый соус, ананасы, колбаса', 1000, 8),
(29, 'Бургер Канадский', 400, 'burger.jpg', 3, 'Картофельная булочка, кальмар во фритюре, белый соус, помидоры', 550, 8),
(30, 'Гречневая лапша с овощами', 500, 'wok.jpg', 4, 'Лапша гречневая, соус терияки, овощи', 435, 8),
(31, 'Бургер рыбный', 540, 'burger.jpg', 3, 'Обычная булочка, котлета с рыбой, белый соус', 440, 8),
(32, 'Бургер Московский', 540, 'burger.jpg', 3, 'Рисовая булочка, котлета с говядиной, красный соус', 123, 8),
(33, 'Пицца Сеньорита', 899, 'pizza.jpg', 2, 'Тесто, белый соус, пепперони, сыр моцарелла', 1500, 8),
(34, 'Пицца Тайд', 800, 'pizza.jpg', 2, 'Тесто, белый соус, ананасы, морепродукты, кальмары', 1000, 8),
(35, 'Фунчоза острая', 559, 'wok.jpg', 4, 'Рисовая лапша, острый соус, курица, овощи, кунжут', 545, 8),
(36, 'Лапша острая', 325, 'wok.jpg', 4, 'Пшеничная лапша, острый соус, курица, овощи, кунжут', 500, 8),
(37, 'Бургер Краснодарский', 450, 'burger.jpg', 3, 'Картофельная булочка, куриная котлета, лук во фритюре, белый соус, помидоры', 123, 8),
(38, 'Бургер с кальмаром', 359, 'burger.jpg', 3, 'Картофельная булочка, кальмар во фритюре, белый соус, помидоры', 500, 8),
(39, 'Лапша с морепродуктами', 435, 'wok.jpg', 4, 'Пшеничная лапша, кальмар, овощи, кунжут', 400, 8),
(40, 'Бургер мясной', 500, 'burger.jpg', 3, 'Обычная булочка, обычная котлета, обычный соус', 600, 8);

-- --------------------------------------------------------

--
-- Структура таблицы `ProductType`
--

CREATE TABLE `ProductType` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `ProductType`
--

INSERT INTO `ProductType` (`id`, `name`) VALUES
(1, 'Роллы'),
(2, 'Пицца'),
(3, 'Бургер'),
(4, 'WOK');

-- --------------------------------------------------------

--
-- Структура таблицы `Promocodes`
--

CREATE TABLE `Promocodes` (
  `id` int NOT NULL,
  `idUser` int NOT NULL,
  `code` varchar(255) NOT NULL,
  `Procent` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Promocodes`
--

INSERT INTO `Promocodes` (`id`, `idUser`, `code`, `Procent`) VALUES
(1, 28, 'H2TEP9', 15),
(2, 1, 'YJoO3T', 10),
(3, 16, 'nI2Z7K', 5),
(4, 28, 'NRuOod', 15),
(5, 1, 'vQPmOz', 10),
(6, 16, 'ezbjvt', 5),
(7, 1, 'zNDYhq', 15),
(8, 16, 'Zn7UCM', 10),
(9, 17, 'YbRKTE', 5),
(10, 28, 'yW9jwH', 15),
(11, 1, 'vwpzvk', 10),
(12, 16, 'W3JBOR', 5),
(13, 28, 'TMMN8G', 15),
(14, 1, 'ddBzQv', 10),
(15, 16, 'FI7OWR', 5),
(16, 1, 'nZcWhl', 15),
(17, 16, 'k5CDyB', 10),
(18, 17, 'nJopIH', 5),
(19, 28, 'Smq0Zb', 15),
(20, 1, 'HO08Z3', 10),
(21, 16, 'yrhyqH', 5),
(22, 28, '9SsGNm', 15),
(23, 1, 'XvljCd', 10),
(24, 16, 'rKmAzu', 5),
(25, 28, 'tDe1sn', 15),
(26, 1, 'jlJElP', 10),
(27, 16, 'fLcB17', 5),
(28, 1, 'vSN6Td', 15),
(29, 16, '82RXpM', 10),
(30, 17, 'SqEUTa', 5),
(31, 28, 'z8g6jo', 15),
(32, 1, 'i72xY9', 10),
(33, 16, '9vbjgt', 5),
(34, 28, 'SsPylI', 15),
(35, 1, 'eOyZlF', 10),
(36, 16, '7Ueq8V', 5),
(37, 1, 'jfQqL9', 15),
(38, 16, 'aWkh0w', 10),
(39, 17, 'UWbcFr', 5),
(40, 1, 'S3VAHH', 15),
(41, 16, 'PFg9Wy', 10),
(42, 17, 'mzj7X5', 5),
(43, 1, 'qc4EgW', 15),
(44, 16, 'J1ctkS', 10),
(45, 1, 'kwRk4b', 15),
(46, 17, 'I2f80m', 5),
(47, 16, '7ANFls', 10),
(48, 17, '8bslil', 5),
(49, 1, '1cD6OL', 15),
(50, 16, 'Hquff3', 10),
(51, 17, 'p0QEHq', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `slidesOffer`
--

CREATE TABLE `slidesOffer` (
  `id` int NOT NULL,
  `idOffer` int NOT NULL,
  `slide` int NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `slidesOffer`
--

INSERT INTO `slidesOffer` (`id`, `idOffer`, `slide`, `description`) VALUES
(1, 1, 1, 'Крутяк'),
(2, 2, 3, 'Норм продукт'),
(3, 3, 2, 'Лайк, покупайте'),
(4, 4, 4, 'Берите');

-- --------------------------------------------------------

--
-- Структура таблицы `User`
--

CREATE TABLE `User` (
  `id` int NOT NULL,
  `Name` varchar(255) NOT NULL,
  `SecondName` varchar(255) NOT NULL,
  `NumberPhone` varchar(255) NOT NULL,
  `Score` int DEFAULT '0',
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `User`
--

INSERT INTO `User` (`id`, `Name`, `SecondName`, `NumberPhone`, `Score`, `Email`, `Password`) VALUES
(1, 'test', 'test', 'test', 4578, 'test@test4', '12345678'),
(16, 'Test', 'Test', '+7 (555) 555 55-55', 0, 'test@test5', '12345678'),
(17, 'test1', 'test1', '+7 (902) 123 12-31', 0, 'evgen@test.ru', '12345678'),
(18, 'dwdwad', 'awdawdawd', '+7 (555) 555 55-55', 0, 'teetetete@ms', '123'),
(19, 'y54ytrhre', 'ergergerg', '+7 (345) 345 34-53', 0, 'grdgdrg@hhhh', '123'),
(20, 'test', 'test', '+7 (888) 888 88-88', 0, 'test@test.ru', '12345678'),
(21, 'rwer', 'werwe', '+7 (132) 42', 0, 'twer@tewtew', '1'),
(22, 'Lexus', 'Samail', '+7 (333) 333 33-33', 0, 'lexus@mail.ru', '12345678'),
(23, 'Джон', 'Сите', '+7 (777) 777 77-77', 0, 'john@mail.ru', '12345678'),
(24, 'Юрий', 'Иванов', '+7 (892) 342 34-12', 0, 'test@mail.ru', '1234'),
(25, '', '', '', 0, '', ''),
(26, 'Дмитрий', 'Обухов', '+7 (444) 444 44-44', 0, 'dimka@yandere.jp', '123456789'),
(27, 'Валерия', 'Кучеря', '+7 (222) 256 74-23', 0, 'kitty@yandex.ru', '123456789'),
(28, 'Никита323', 'Фалалеев', '+7 (908) 453 45-34', 0, 'n!ceK1d@yandere.jp', '123456789'),
(29, 'Иван', 'Иванов', '+7 (902) 123 45-67', 0, 'ivanov_ivan@mail.ru', '12345678');

-- --------------------------------------------------------

--
-- Структура таблицы `UserCars`
--

CREATE TABLE `UserCars` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `car_id` int NOT NULL,
  `car_color` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `UserCars`
--

INSERT INTO `UserCars` (`id`, `user_id`, `car_id`, `car_color`) VALUES
(12, 1, 7, '#FF0000FF'),
(13, 1, 8, 'green'),
(14, 26, 2, '#432938FF'),
(15, 27, 2, '#4A002CFF'),
(16, 27, 6, '#02052DFF'),
(17, 27, 3, '#2D0208FF'),
(18, 27, 4, '#3C4A2DFF'),
(19, 27, 1, '#CC551BFF'),
(20, 26, 7, '#00FF56FF'),
(21, 26, 1, '#00FF5EFF'),
(22, 26, 8, '#0085FFFF'),
(23, 28, 2, '#930034FF');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Admin`
--
ALTER TABLE `Admin`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Cars`
--
ALTER TABLE `Cars`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Cart`
--
ALTER TABLE `Cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_Product` (`id_Product`),
  ADD KEY `id_User` (`id_User`);

--
-- Индексы таблицы `Catalog`
--
ALTER TABLE `Catalog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_Office` (`id_Office`),
  ADD KEY `id_Product` (`id_Product`);

--
-- Индексы таблицы `Employees`
--
ALTER TABLE `Employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_Office` (`id_Office`);

--
-- Индексы таблицы `Favourites`
--
ALTER TABLE `Favourites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idProduct` (`idProduct`),
  ADD KEY `idUser` (`idUser`);

--
-- Индексы таблицы `Ingredients`
--
ALTER TABLE `Ingredients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idOrder` (`codeOrder`),
  ADD KEY `idProduct` (`idProduct`);

--
-- Индексы таблицы `Offers`
--
ALTER TABLE `Offers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idProduct` (`idProduct`);

--
-- Индексы таблицы `Office`
--
ALTER TABLE `Office`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_Admin` (`id_Admin`);

--
-- Индексы таблицы `Orders`
--
ALTER TABLE `Orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idUser` (`idUser`),
  ADD KEY `id_Office` (`id_Office`);

--
-- Индексы таблицы `Product`
--
ALTER TABLE `Product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_Type` (`id_Type`),
  ADD KEY `id_Office` (`id_Office`);

--
-- Индексы таблицы `ProductType`
--
ALTER TABLE `ProductType`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Promocodes`
--
ALTER TABLE `Promocodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idUser` (`idUser`);

--
-- Индексы таблицы `slidesOffer`
--
ALTER TABLE `slidesOffer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idOffer` (`idOffer`);

--
-- Индексы таблицы `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `UserCars`
--
ALTER TABLE `UserCars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `car_id` (`car_id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Admin`
--
ALTER TABLE `Admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `Cars`
--
ALTER TABLE `Cars`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `Cart`
--
ALTER TABLE `Cart`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- AUTO_INCREMENT для таблицы `Catalog`
--
ALTER TABLE `Catalog`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `Employees`
--
ALTER TABLE `Employees`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `Favourites`
--
ALTER TABLE `Favourites`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT для таблицы `Ingredients`
--
ALTER TABLE `Ingredients`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT для таблицы `Offers`
--
ALTER TABLE `Offers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `Office`
--
ALTER TABLE `Office`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `Orders`
--
ALTER TABLE `Orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT для таблицы `Product`
--
ALTER TABLE `Product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT для таблицы `ProductType`
--
ALTER TABLE `ProductType`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `Promocodes`
--
ALTER TABLE `Promocodes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT для таблицы `slidesOffer`
--
ALTER TABLE `slidesOffer`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `User`
--
ALTER TABLE `User`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT для таблицы `UserCars`
--
ALTER TABLE `UserCars`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `Cart`
--
ALTER TABLE `Cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`id_Product`) REFERENCES `Product` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`id_User`) REFERENCES `User` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `Catalog`
--
ALTER TABLE `Catalog`
  ADD CONSTRAINT `catalog_ibfk_1` FOREIGN KEY (`id_Product`) REFERENCES `Product` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `catalog_ibfk_2` FOREIGN KEY (`id_Office`) REFERENCES `Office` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `Employees`
--
ALTER TABLE `Employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`id_Office`) REFERENCES `Office` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `Favourites`
--
ALTER TABLE `Favourites`
  ADD CONSTRAINT `favourites_ibfk_1` FOREIGN KEY (`idProduct`) REFERENCES `Product` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `favourites_ibfk_2` FOREIGN KEY (`idUser`) REFERENCES `User` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `Ingredients`
--
ALTER TABLE `Ingredients`
  ADD CONSTRAINT `ingredients_ibfk_2` FOREIGN KEY (`idProduct`) REFERENCES `Product` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `Offers`
--
ALTER TABLE `Offers`
  ADD CONSTRAINT `offers_ibfk_1` FOREIGN KEY (`idProduct`) REFERENCES `Product` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `Office`
--
ALTER TABLE `Office`
  ADD CONSTRAINT `office_ibfk_1` FOREIGN KEY (`id_Admin`) REFERENCES `Admin` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `Orders`
--
ALTER TABLE `Orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `User` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`id_Office`) REFERENCES `Office` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `Product`
--
ALTER TABLE `Product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`id_Type`) REFERENCES `ProductType` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`id_Office`) REFERENCES `Office` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `Promocodes`
--
ALTER TABLE `Promocodes`
  ADD CONSTRAINT `promocodes_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `User` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `slidesOffer`
--
ALTER TABLE `slidesOffer`
  ADD CONSTRAINT `slidesoffer_ibfk_1` FOREIGN KEY (`idOffer`) REFERENCES `Offers` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `UserCars`
--
ALTER TABLE `UserCars`
  ADD CONSTRAINT `usercars_ibfk_1` FOREIGN KEY (`car_id`) REFERENCES `Cars` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `usercars_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `User` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
