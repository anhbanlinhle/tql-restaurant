-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 03, 2023 at 03:32 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tql_restaurant`
--

drop database if exists `tql_restaurant`;
create database `tql_restaurant`;
use `tql_restaurant`;

-- --------------------------------------------------------

--
-- Table structure for table `available_mail`
--

CREATE TABLE `available_mail` (
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `available_mail`
--

INSERT INTO `available_mail` (`email`) VALUES
('21020229@vnu.edu.vn'),
('21020644@vnu.edu.vn'),
('21020664@vnu.edu.vn'),
('linhyeunguyen1111@gmail.com'),
('minhtuan3154@gmail.com'),
('teoemga2003@gmail.com'),
('vietlinhleviet@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `cooking`
--

CREATE TABLE `cooking` (
  `dish` int(11) NOT NULL,
  `ingredient` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cooking`
--

INSERT INTO `cooking` (`dish`, `ingredient`) VALUES
(1, 'Baguette'),
(1, 'Balsamic vinegar'),
(1, 'Fresh basil'),
(1, 'Garlic'),
(1, 'Olive oil'),
(1, 'Pepper'),
(1, 'Salt'),
(1, 'Tomatoes'),
(2, 'Brown sugar'),
(2, 'Chicken breast'),
(2, 'Garlic'),
(2, 'Ginger'),
(2, 'Lime juice'),
(2, 'Peanut butter'),
(2, 'Skewers'),
(2, 'Soy sauce'),
(3, 'Balsamic glaze'),
(3, 'Basil leaves'),
(3, 'Cherry tomatoes'),
(3, 'Fresh mozzarella balls'),
(3, 'Pepper'),
(3, 'Salt'),
(4, 'Artichoke hearts'),
(4, 'Cream cheese'),
(4, 'Garlic'),
(4, 'Mayonnaise'),
(4, 'Parmesan cheese'),
(4, 'Pepper'),
(4, 'Salt'),
(4, 'Sour cream'),
(4, 'Spinach'),
(5, 'Breadcrumbs'),
(5, 'Button mushrooms'),
(5, 'Garlic'),
(5, 'Olive oil'),
(5, 'Parmesan cheese'),
(5, 'Parsley'),
(5, 'Pepper'),
(5, 'Salt'),
(6, 'Cocktail sauce'),
(6, 'Fresh dill'),
(6, 'Lemon wedges'),
(6, 'Shrimp'),
(7, 'Dijon mustard'),
(7, 'Eggs'),
(7, 'Mayonnaise'),
(7, 'Paprika'),
(7, 'Pepper'),
(7, 'Pickle relish'),
(7, 'Salt'),
(8, 'Cheese'),
(8, 'Eggs'),
(8, 'Milk'),
(8, 'Mushrooms'),
(8, 'Onions'),
(8, 'Pepper'),
(8, 'Pie crust'),
(8, 'Salt'),
(8, 'Spinach'),
(9, 'Avocado'),
(9, 'Cilantro'),
(9, 'Garlic'),
(9, 'Lime juice'),
(9, 'Onion'),
(9, 'Pepper'),
(9, 'Salt'),
(9, 'Tomato'),
(10, 'Butter'),
(10, 'Chicken wings'),
(10, 'Garlic powder'),
(10, 'Hot sauce'),
(10, 'Pepper'),
(10, 'Salt'),
(11, 'Carrot'),
(11, 'Celery'),
(11, 'Garlic'),
(11, 'Ground beef'),
(11, 'Olive oil'),
(11, 'Onion'),
(11, 'Pepper'),
(11, 'Red wine'),
(11, 'Salt'),
(11, 'Spaghetti'),
(11, 'Tomato sauce'),
(12, 'Dill'),
(12, 'Garlic'),
(12, 'Lemon'),
(12, 'Olive oil'),
(12, 'Pepper'),
(12, 'Salmon fillets'),
(12, 'Salt'),
(13, 'Beef strips'),
(13, 'Bell peppers'),
(13, 'Broccoli'),
(13, 'Carrots'),
(13, 'Garlic'),
(13, 'Ginger'),
(13, 'Onions'),
(13, 'Soy sauce'),
(13, 'Vegetable oil'),
(14, 'Breadcrumbs'),
(14, 'Chicken breast'),
(14, 'Marinara sauce'),
(14, 'Mozzarella cheese'),
(14, 'Olive oil'),
(14, 'Parmesan cheese'),
(14, 'Pepper'),
(14, 'Salt'),
(14, 'Spaghetti'),
(15, 'Cheese'),
(15, 'Ground beef'),
(15, 'Guacamole'),
(15, 'Lettuce'),
(15, 'Salsa'),
(15, 'Sour cream'),
(15, 'Tomatoes'),
(15, 'Tortillas'),
(16, 'Coconut milk'),
(16, 'Curry paste'),
(16, 'Garlic'),
(16, 'Ginger'),
(16, 'Mixed vegetables'),
(16, 'Onion'),
(16, 'Pepper'),
(16, 'Salt'),
(16, 'Vegetable oil'),
(17, 'Bbq sauce'),
(17, 'Brown sugar'),
(17, 'Garlic powder'),
(17, 'Onion powder'),
(17, 'Paprika'),
(17, 'Pepper'),
(17, 'Pork ribs'),
(17, 'Salt'),
(18, 'Fresh basil'),
(18, 'Mozzarella cheese'),
(18, 'Olive oil'),
(18, 'Pepper'),
(18, 'Pizza dough'),
(18, 'Salt'),
(18, 'Tomato sauce'),
(19, 'Beans'),
(19, 'Cheese'),
(19, 'Flour tortillas'),
(19, 'Ground beef'),
(19, 'Lettuce'),
(19, 'Rice'),
(19, 'Salsa'),
(19, 'Sour cream'),
(20, 'Bell peppers'),
(20, 'Chicken breast'),
(20, 'Fajita seasoning'),
(20, 'Guacamole'),
(20, 'Onions'),
(20, 'Salsa'),
(20, 'Sour cream'),
(20, 'Tortillas'),
(21, 'Butter'),
(21, 'Garlic'),
(21, 'Milk'),
(21, 'Pepper'),
(21, 'Potatoes'),
(21, 'Salt'),
(22, 'Assorted vegetables'),
(22, 'Balsamic vinegar'),
(22, 'Olive oil'),
(22, 'Pepper'),
(22, 'Salt'),
(23, 'Cabbage'),
(23, 'Carrots'),
(23, 'Mayonnaise'),
(23, 'Pepper'),
(23, 'Salt'),
(23, 'Sugar'),
(23, 'Vinegar'),
(24, 'Butter'),
(24, 'Chicken or vegetable broth'),
(24, 'Garlic'),
(24, 'Onion'),
(24, 'Pepper'),
(24, 'Rice'),
(24, 'Salt'),
(25, 'Bacon'),
(25, 'Brown sugar'),
(25, 'Canned baked beans'),
(25, 'Molasses'),
(25, 'Mustard'),
(25, 'Onion'),
(25, 'Pepper'),
(25, 'Salt'),
(26, 'Baking powder'),
(26, 'Butter'),
(26, 'Cornmeal'),
(26, 'Eggs'),
(26, 'Flour'),
(26, 'Milk'),
(26, 'Salt'),
(26, 'Sugar'),
(27, 'Caesar dressing'),
(27, 'Croutons'),
(27, 'Parmesan cheese'),
(27, 'Romaine lettuce'),
(28, 'Brussels sprouts'),
(28, 'Garlic'),
(28, 'Olive oil'),
(28, 'Pepper'),
(28, 'Salt'),
(29, 'Cream cheese'),
(29, 'Garlic'),
(29, 'Heavy cream'),
(29, 'Nutmeg'),
(29, 'Pepper'),
(29, 'Salt'),
(29, 'Spinach'),
(30, 'Garlic'),
(30, 'Olive oil'),
(30, 'Pepper'),
(30, 'Potatoes'),
(30, 'Rosemary'),
(30, 'Salt'),
(31, 'Baking soda'),
(31, 'Brown sugar'),
(31, 'Butter'),
(31, 'Chocolate chips'),
(31, 'Eggs'),
(31, 'Flour'),
(31, 'Salt'),
(31, 'Sugar'),
(31, 'Vanilla extract'),
(32, 'Apples'),
(32, 'Butter'),
(32, 'Cinnamon'),
(32, 'Lemon juice'),
(32, 'Pie crust'),
(32, 'Sugar'),
(33, 'Cream cheese'),
(33, 'Eggs'),
(33, 'Graham cracker crust'),
(33, 'Sour cream'),
(33, 'Sugar'),
(33, 'Vanilla extract'),
(34, 'Butter'),
(34, 'Chocolate chips'),
(34, 'Cocoa powder'),
(34, 'Eggs'),
(34, 'Flour'),
(34, 'Salt'),
(34, 'Sugar'),
(34, 'Vanilla extract'),
(35, 'Cocoa powder'),
(35, 'Coffee'),
(35, 'Eggs'),
(35, 'Ladyfingers'),
(35, 'Mascarpone cheese'),
(35, 'Rum'),
(35, 'Sugar'),
(36, 'Assorted fruits'),
(36, 'Honey'),
(36, 'Lemon juice'),
(36, 'Mint leaves'),
(37, 'Egg yolks'),
(37, 'Heavy cream'),
(37, 'Sugar'),
(37, 'Vanilla extract'),
(38, 'Baking powder'),
(38, 'Carrots'),
(38, 'Cinnamon'),
(38, 'Cream cheese frosting'),
(38, 'Eggs'),
(38, 'Flour'),
(38, 'Sugar'),
(38, 'Vegetable oil'),
(39, 'Fresh berries'),
(39, 'Gelatin'),
(39, 'Heavy cream'),
(39, 'Sugar'),
(39, 'Vanilla extract'),
(40, 'Butter'),
(40, 'Eggs'),
(40, 'Flour'),
(40, 'Lemon juice'),
(40, 'Lemon zest'),
(40, 'Powdered sugar'),
(40, 'Sugar'),
(41, 'Ice'),
(41, 'Lime juice'),
(41, 'Mint leaves'),
(41, 'Soda water'),
(41, 'Sugar'),
(41, 'White rum'),
(42, 'Ice'),
(42, 'Lime juice'),
(42, 'Salt'),
(42, 'Tequila'),
(42, 'Triple sec'),
(43, 'Honey'),
(43, 'Ice'),
(43, 'Milk'),
(43, 'Strawberries'),
(43, 'Yogurt'),
(44, 'Bitters'),
(44, 'Ice'),
(44, 'Orange peel'),
(44, 'Sugar'),
(44, 'Whiskey'),
(45, 'Coconut cream'),
(45, 'Ice'),
(45, 'Pineapple juice'),
(45, 'White rum'),
(46, 'Cardamom'),
(46, 'Ice'),
(46, 'Mango'),
(46, 'Sugar'),
(46, 'Yogurt'),
(47, 'Chocolate shavings'),
(47, 'Cocoa powder'),
(47, 'Milk'),
(47, 'Sugar'),
(47, 'Vanilla extract'),
(47, 'Whipped cream'),
(48, 'Ice'),
(48, 'Lemon slices'),
(48, 'Sugar'),
(48, 'Tea bags'),
(48, 'Water'),
(49, 'Coffee liqueur'),
(49, 'Espresso'),
(49, 'Ice'),
(49, 'Sugar syrup'),
(49, 'Vodka'),
(50, 'Ice'),
(50, 'Lemon juice'),
(50, 'Lemon slices'),
(50, 'Sparkling water'),
(50, 'Sugar');

-- --------------------------------------------------------

--
-- Table structure for table `dish`
--

CREATE TABLE `dish` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `type` varchar(20) NOT NULL,
  `img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dish`
--

INSERT INTO `dish` (`id`, `name`, `type`, `img`) VALUES
(1, 'Bruschetta', 'appetizer', 'https://spoonacular.com/recipeImages/636355-312x231.jpg'),
(2, 'Chicken Satay', 'appetizer', 'https://spoonacular.com/recipeImages/638308-312x231.jpg'),
(3, 'Caprese Skewers', 'appetizer', 'https://spoonacular.com/recipeImages/1096288-312x231.jpg'),
(4, 'Spinach and Artichoke Dip', 'appetizer', 'https://spoonacular.com/recipeImages/664970-312x231.jpg'),
(5, 'Stuffed Mushrooms', 'appetizer', 'https://spoonacular.com/recipeImages/657682-312x231.jpg'),
(6, 'Shrimp Cocktail', 'appetizer', 'https://food.fnr.sndimg.com/content/dam/images/food/fullset/2004/4/21/0/bw2b09_shrimp_cocktail.jpg.rend.hgtvcom.826.620.suffix/1557928675507.jpeg'),
(7, 'Deviled Eggs', 'appetizer', 'https://spoonacular.com/recipeImages/661447-312x231.jpg'),
(8, 'Mini Quiches', 'appetizer', 'https://spoonacular.com/recipeImages/651996-312x231.jpg'),
(9, 'Guacamole', 'appetizer', 'https://spoonacular.com/recipeImages/645988-312x231.jpg'),
(10, 'Chicken Wings', 'appetizer', 'https://spoonacular.com/recipeImages/638420-312x231.jpg'),
(11, 'Spaghetti Bolognese', 'main_dish', 'https://spoonacular.com/recipeImages/660820-312x231.jpg'),
(12, 'Grilled Salmon', 'main_dish', 'https://spoonacular.com/recipeImages/645863-312x231.jpg'),
(13, 'Beef Stir-Fry', 'main_dish', 'https://christieathome.com/wp-content/uploads/2020/09/Chinese-Beef-and-Broccoli-9-500x500.jpg'),
(14, 'Chicken Parmesan', 'main_dish', 'https://spoonacular.com/recipeImages/638235-312x231.jpg'),
(15, 'Tacos', 'main_dish', 'https://spoonacular.com/recipeImages/511748-312x231.jpg'),
(16, 'Vegetable Curry', 'main_dish', 'https://spoonacular.com/recipeImages/658058-312x231.jpg'),
(17, 'BBQ Ribs', 'main_dish', 'https://spoonacular.com/recipeImages/654181-312x231.jpg'),
(18, 'Margherita Pizza', 'main_dish', 'https://spoonacular.com/recipeImages/622598-312x231.jpg'),
(19, 'Beef Burritos', 'main_dish', 'https://spoonacular.com/recipeImages/640851-312x231.jpg'),
(20, 'Chicken Fajitas', 'main_dish', 'https://spoonacular.com/recipeImages/638085-312x231.jpg'),
(21, 'Garlic Mashed Potatoes', 'side_dish', 'https://spoonacular.com/recipeImages/656921-312x231.jpg'),
(22, 'Grilled Vegetables', 'side_dish', 'https://spoonacular.com/recipeImages/1697635-312x231.jpg'),
(23, 'Coleslaw', 'side_dish', 'https://spoonacular.com/recipeImages/654070-312x231.jpg'),
(24, 'Rice Pilaf', 'side_dish', 'https://spoonacular.com/recipeImages/658277-312x231.jpg'),
(25, 'Baked Beans', 'side_dish', 'https://spoonacular.com/recipeImages/635068-312x231.jpg'),
(26, 'Cornbread', 'side_dish', 'https://spoonacular.com/recipeImages/640123-312x231.jpg'),
(27, 'Caesar Salad', 'side_dish', 'https://spoonacular.com/recipeImages/646512-312x231.jpg'),
(28, 'Roasted Brussels Sprouts', 'side_dish', 'https://spoonacular.com/recipeImages/658515-312x231.jpg'),
(29, 'Creamed Spinach', 'side_dish', 'https://spoonacular.com/recipeImages/1096208-312x231.jpg'),
(30, 'Roasted Potatoes', 'side_dish', 'https://spoonacular.com/recipeImages/673451-312x231.jpg'),
(31, 'Chocolate Chip Cookies', 'dessert', 'https://spoonacular.com/recipeImages/1697825-312x231.jpg'),
(32, 'Apple Pie', 'dessert', 'https://spoonacular.com/recipeImages/632577-312x231.jpg'),
(33, 'Cheesecake', 'dessert', 'https://spoonacular.com/recipeImages/637625-312x231.jpg'),
(34, 'Brownies', 'dessert', 'https://spoonacular.com/recipeImages/663059-312x231.jpg'),
(35, 'Tiramisu', 'dessert', 'https://spoonacular.com/recipeImages/642614-312x231.jpg'),
(36, 'Fruit Salad', 'dessert', 'https://spoonacular.com/recipeImages/643933-312x231.jpg'),
(37, 'Creme Brulee', 'dessert', 'https://spoonacular.com/recipeImages/640730-312x231.jpg'),
(38, 'Carrot Cake', 'dessert', 'https://spoonacular.com/recipeImages/657968-312x231.jpg'),
(39, 'Panna Cotta', 'dessert', 'https://spoonacular.com/recipeImages/648183-312x231.jpg'),
(40, 'Lemon Bars', 'dessert', 'https://spoonacular.com/recipeImages/649514-312x231.jpg'),
(41, 'Mojito', 'drink', 'https://spoonacular.com/recipeImages/642026-312x231.jpg'),
(42, 'Margarita', 'drink', 'https://spoonacular.com/recipeImages/639614-312x231.jpg'),
(43, 'Strawberry Smoothie', 'drink', 'https://spoonacular.com/recipeImages/716351-312x231.jpg'),
(44, 'Old Fashioned', 'drink', 'https://spoonacular.com/recipeImages/653570-312x231.jpg'),
(45, 'Pina Colada', 'drink', 'https://spoonacular.com/recipeImages/1098357-312x231.jpg'),
(46, 'Mango Lassi', 'drink', 'https://spoonacular.com/recipeImages/650751-312x231.jpg'),
(47, 'Hot Chocolate', 'drink', 'https://spoonacular.com/recipeImages/639203-312x231.jpg'),
(48, 'Iced Tea', 'drink', 'https://spoonacular.com/recipeImages/645530-312x231.jpg'),
(49, 'Espresso Martini', 'drink', 'https://spoonacular.com/recipeImages/642456-312x231.jpg'),
(50, 'Sparkling Lemonade', 'drink', 'https://spoonacular.com/recipeImages/1095765-312x231.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `staff_id` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ingredient`
--

CREATE TABLE `ingredient` (
  `name` varchar(50) NOT NULL,
  `price` double UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ingredient`
--

INSERT INTO `ingredient` (`name`, `price`) VALUES
('Apples', 2.15),
('Artichoke hearts', 2.51),
('Assorted fruits', 2.74),
('Assorted vegetables', 3.74),
('Avocado', 2.29),
('Bacon', 3.6),
('Baguette', 1.33),
('Baking powder', 2.93),
('Baking soda', 2.9),
('Balsamic glaze', 1.74),
('Balsamic vinegar', 2.92),
('Basil leaves', 3.15),
('Bbq sauce', 3.29),
('Beans', 1.7),
('Beef strips', 3.47),
('Bell peppers', 1.75),
('Bitters', 2.66),
('Breadcrumbs', 2.32),
('Broccoli', 3.07),
('Brown sugar', 1.19),
('Brussels sprouts', 1.41),
('Butter', 2.78),
('Button mushrooms', 2.54),
('Cabbage', 2.55),
('Caesar dressing', 1.07),
('Canned baked beans', 2.3),
('Cardamom', 1.42),
('Carrot', 3.32),
('Carrots', 3.38),
('Celery', 3.72),
('Cheese', 3.21),
('Cherry tomatoes', 2),
('Chicken breast', 3.89),
('Chicken or vegetable broth', 2.39),
('Chicken wings', 1.59),
('Chocolate chips', 3.73),
('Chocolate shavings', 1.18),
('Cilantro', 3.84),
('Cinnamon', 2.49),
('Cocktail sauce', 2.4),
('Cocoa powder', 2.83),
('Coconut cream', 3.77),
('Coconut milk', 3.21),
('Coffee', 1.72),
('Coffee liqueur', 2.47),
('Cornmeal', 2.72),
('Cream cheese', 2.7),
('Cream cheese frosting', 1.58),
('Croutons', 3.43),
('Curry paste', 1.54),
('Dijon mustard', 1.83),
('Dill', 3.37),
('Egg yolks', 3.76),
('Eggs', 3.09),
('Espresso', 1.94),
('Fajita seasoning', 2.97),
('Flour', 2.36),
('Flour tortillas', 3.93),
('Fresh basil', 3.99),
('Fresh berries', 1.71),
('Fresh dill', 1.27),
('Fresh mozzarella balls', 1.13),
('Garlic', 2.68),
('Garlic powder', 3.97),
('Gelatin', 1.5),
('Ginger', 1.44),
('Graham cracker crust', 2.03),
('Ground beef', 3.82),
('Guacamole', 2.51),
('Heavy cream', 3.75),
('Honey', 2.43),
('Hot sauce', 3.14),
('Ice', 3.29),
('Ladyfingers', 1.5),
('Lemon', 3.91),
('Lemon juice', 1.98),
('Lemon slices', 1.75),
('Lemon wedges', 3.68),
('Lemon zest', 2.3),
('Lettuce', 2.11),
('Lime juice', 1.22),
('Mango', 3.9),
('Marinara sauce', 2.44),
('Mascarpone cheese', 2.95),
('Mayonnaise', 2.09),
('Milk', 3.97),
('Mint leaves', 2.49),
('Mixed vegetables', 1.93),
('Molasses', 1.64),
('Mozzarella cheese', 1.75),
('Mushrooms', 2.75),
('Mustard', 3.27),
('Nutmeg', 1.72),
('Olive oil', 1.79),
('Onion', 2.15),
('Onion powder', 1.54),
('Onions', 1.04),
('Orange peel', 3.75),
('Paprika', 1.91),
('Parmesan cheese', 1.99),
('Parsley', 3.07),
('Peanut butter', 2.82),
('Pepper', 2.9),
('Pickle relish', 1.92),
('Pie crust', 3.38),
('Pineapple juice', 2.26),
('Pizza dough', 1.32),
('Pork ribs', 1.06),
('Potatoes', 1.03),
('Powdered sugar', 1.25),
('Red wine', 3.54),
('Rice', 3.05),
('Romaine lettuce', 1.95),
('Rosemary', 3.4),
('Rum', 1.42),
('Salmon fillets', 2.64),
('Salsa', 2.2),
('Salt', 1),
('Shrimp', 1.71),
('Skewers', 2.12),
('Soda water', 2.53),
('Sour cream', 3.92),
('Soy sauce', 2.84),
('Spaghetti', 3.31),
('Sparkling water', 1.8),
('Spinach', 3.67),
('Strawberries', 3.92),
('Sugar', 3.33),
('Sugar syrup', 2.55),
('Tea bags', 1.5),
('Tequila', 2.74),
('Tomato', 1.22),
('Tomato sauce', 2.93),
('Tomatoes', 3.18),
('Tortillas', 3.83),
('Triple sec', 3.87),
('Vanilla extract', 2.75),
('Vegetable oil', 3.41),
('Vinegar', 2.71),
('Vodka', 3.94),
('Water', 2),
('Whipped cream', 2.44),
('Whiskey', 2.3),
('White rum', 3.95),
('Yogurt', 1.9);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `weekday` int(11) NOT NULL,
  `appetizer` int(11) NOT NULL,
  `main_dish` int(11) NOT NULL,
  `side_dish` int(11) NOT NULL,
  `dessert` int(11) NOT NULL,
  `drink` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pre_order`
--

CREATE TABLE `pre_order` (
  `staff_id` int(11) NOT NULL,
  `weekday` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `email` varchar(50) NOT NULL,
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `avatar` varchar(200) DEFAULT NULL,
  `debt` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `phone` varchar(20) NOT NULL,
  `ssn` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`email`, `id`, `name`, `debt`, `type`, `phone`, `ssn`) VALUES
('21020229@vnu.edu.vn', 1, 'Quang ngu', 0, 0, '123456789', '123456789'),
('21020644@vnu.edu.vn', 2, '21020644 Lê Viết Việt Linh', 0, 0, '123456789', '123456789'),
('21020664@vnu.edu.vn', 3, 'Tuan', 0, 0, '123456789', '123456789'),
('linhyeunguyen1111@gmail.com', 4, 'Linh Le', 0, 0, '123456789', '123456789'),
('minhtuan3154@gmail.com', 5, 'Tuan Vu', 0, 0, '123456789', '123456789'),
('teoemga2003@gmail.com', 6, 'Quang Hoang', 0, 0, '123456789', '123456789'),
('vietlinhleviet@gmail.com', 7, 'ちゃんエビ', 0, 0, '123456789', '123456789');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `available_mail`
--
ALTER TABLE `available_mail`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `cooking`
--
ALTER TABLE `cooking`
  ADD PRIMARY KEY (`dish`,`ingredient`),
  ADD KEY `ingredient` (`ingredient`);

--
-- Indexes for table `dish`
--
ALTER TABLE `dish`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`staff_id`,`date`);

--
-- Indexes for table `ingredient`
--
ALTER TABLE `ingredient`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appetizer` (`appetizer`),
  ADD KEY `main_dish` (`main_dish`),
  ADD KEY `side_dish` (`side_dish`),
  ADD KEY `dessert` (`dessert`),
  ADD KEY `drink` (`drink`);

--
-- Indexes for table `pre_order`
--
ALTER TABLE `pre_order`
  ADD PRIMARY KEY (`staff_id`,`weekday`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`,`email`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dish`
--
ALTER TABLE `dish`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cooking`
--
ALTER TABLE `cooking`
  ADD CONSTRAINT `cooking_ibfk_1` FOREIGN KEY (`ingredient`) REFERENCES `ingredient` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cooking_ibfk_2` FOREIGN KEY (`dish`) REFERENCES `dish` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `history`
--
ALTER TABLE `history`
  ADD CONSTRAINT `history_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`appetizer`) REFERENCES `dish` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `menu_ibfk_2` FOREIGN KEY (`main_dish`) REFERENCES `dish` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `menu_ibfk_3` FOREIGN KEY (`side_dish`) REFERENCES `dish` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `menu_ibfk_4` FOREIGN KEY (`dessert`) REFERENCES `dish` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `menu_ibfk_5` FOREIGN KEY (`drink`) REFERENCES `dish` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pre_order`
--
ALTER TABLE `pre_order`
  ADD CONSTRAINT `pre_order_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`email`) REFERENCES `available_mail` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
