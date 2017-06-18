/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : yii2_loc

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2016-12-24 23:22:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '0', 'Sportswear', null, null);
INSERT INTO `category` VALUES ('2', '0', 'Mens', null, null);
INSERT INTO `category` VALUES ('3', '0', 'Womens', null, null);
INSERT INTO `category` VALUES ('4', '1', 'Nike', null, null);
INSERT INTO `category` VALUES ('5', '1', 'Under Armour', null, null);
INSERT INTO `category` VALUES ('6', '1', 'Adidas', null, null);
INSERT INTO `category` VALUES ('7', '1', 'Puma', null, null);
INSERT INTO `category` VALUES ('8', '1', 'ASICS', null, null);
INSERT INTO `category` VALUES ('9', '2', 'Fendi', null, null);
INSERT INTO `category` VALUES ('10', '2', 'Guess', null, null);
INSERT INTO `category` VALUES ('11', '2', 'Valentino', null, null);
INSERT INTO `category` VALUES ('12', '2', 'Dior', null, null);
INSERT INTO `category` VALUES ('13', '2', 'Versace', null, null);
INSERT INTO `category` VALUES ('14', '2', 'Armani', null, null);
INSERT INTO `category` VALUES ('15', '2', 'Prada', null, null);
INSERT INTO `category` VALUES ('16', '2', 'Dolce and Gabbana', null, null);
INSERT INTO `category` VALUES ('17', '2', 'Chanel', null, null);
INSERT INTO `category` VALUES ('18', '2', 'Gucci', null, null);
INSERT INTO `category` VALUES ('19', '3', 'Fendi', null, null);
INSERT INTO `category` VALUES ('20', '3', 'Guess', null, null);
INSERT INTO `category` VALUES ('21', '3', 'Valentino', null, null);
INSERT INTO `category` VALUES ('22', '3', 'Dior', null, null);
INSERT INTO `category` VALUES ('23', '3', 'Versace', null, null);
INSERT INTO `category` VALUES ('24', '0', 'Kids', null, null);
INSERT INTO `category` VALUES ('25', '0', 'Fashion', null, null);
INSERT INTO `category` VALUES ('26', '0', 'Households', null, null);
INSERT INTO `category` VALUES ('27', '0', 'Interiors', null, null);
INSERT INTO `category` VALUES ('28', '0', 'Clothing', null, null);
INSERT INTO `category` VALUES ('29', '0', 'Bags', 'сумки ключевики...', 'сумки описание...');
INSERT INTO `category` VALUES ('30', '0', 'Shoes', null, null);

-- ----------------------------
-- Table structure for `product`
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` text,
  `price` float NOT NULL DEFAULT '0',
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT 'no-image.png',
  `hit` enum('0','1') NOT NULL DEFAULT '0',
  `new` enum('0','1') NOT NULL DEFAULT '0',
  `sale` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', '4', 'Джинсы Garcia 244/32/856 28-32 р Серо-синие', 'Великолепные джинсы винтажно-голубого цвета. Настоящая находка для любителей качественного денима.\n\nОсобенности:\n\n    Зауженные к низу\n    Пять карманов\n    Высококачественный деним\n    Высокая посадка (high fit)\n    Выгодно подчеркивают фигуру', '10', null, null, 'product1.jpg', '0', '0', '0');
INSERT INTO `product` VALUES ('2', '4', 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', '\n\nMR520 – амбициозный восточноевропейский бренд, который предлагает качественную и стильную одежду, сделанную специально для молодых людей, следящих за своим внешним видом.\n\nЖенские джинсы фасона boyfriend fit (в переводе с англ. – \"джинсы моего парня\"). Модель с зауженными штанинами. Застегивается на пуговицы. Изделие с низкой посадкой. Джинсы дополнены прорезными карманами спереди и накладными карманами сзади.\n\nИзделие декорировано эффектом потертости, вареным эффектом и необычными швами.\n', '56', null, null, 'product2.jpg', '1', '0', '0');
INSERT INTO `product` VALUES ('3', '9', 'Блуза Mango 53005681-05 M Бежевая', 'Испанский бренд модной одежды \"Mango\" родился в 1984 году в Барселоне, где и по сей день находится штаб-квартира компании. В том же городе появился и первый магазин — на улице Пасео де Грасия (Paseo de Gracia). Компания, основанная братьями Исааком и Нахманом Андиком (Isaac & Nahman Andic), очень быстро набрала популярность — всего лишь годом позднее был открыт магазин в другом городе, на этот раз в Валенсии. Одежда \"Mango\" отличается высоким качеством, приемлемой ценой, современным дизайном и неповторимым стилем.', '20', null, null, 'product3.jpg', '1', '1', '0');
INSERT INTO `product` VALUES ('4', '21', 'Блуза Tom Tailor TT 20312490071 7610 M Зелёная', '\r\n\r\nTom Tailor Group — один из ведущих и быстро развивающихся Fashion холдингов германии и европы, продукция которого ориентирована на целевую аудиторию в возрасте от 0 до 60 лет.\r\n\r\nTom Tailor известен на рынке текстиля с 1962 года и до сих пор сохраняет стандарты немецкого качества. Tom Tailor предлагает повседневную одежду и аксессуары высокого качества для женщин, мужчин и детей.\r\n\r\nОдежда от Tom Tailor поможет создать активный повседневный образ с нотками элегантности.', '70', null, null, 'product4.jpg', '1', '0', '1');
INSERT INTO `product` VALUES ('5', '25', 'Блузка Kira Plastinina 17-16-17453-SM-29 S', null, '0', null, null, 'product5.jpg', '1', '0', '0');
INSERT INTO `product` VALUES ('6', '28', 'Кардиган Levi\'s Icy Grey Heather M', null, '100', null, null, 'product6.jpg', '1', '0', '0');
INSERT INTO `product` VALUES ('7', '28', 'Кардиган ONLY ON 15102048 M Black Tan/Partridg', '\r\n\r\nCasual марка молодежной женской одежды ONLY является частью датской компании Bestseller AS. Изначально Bestseller занимался производством детской одежды, а в 1995 году появилась на свет марка ONLY. Популярность этой марки возрастала быстрыми темпами и теперь ONLY владеет 770 магазинами в более чем 40 странах мира.\r\n\r\nONLY — бренд стильной молодежной одежды. Это бренд для тех, кто любит добиваться успеха и быть не таким, как все. Демократичные цены, модные модели, экологически чистые ткани делают одежду от ONLY сверхпопулярной.', '0', null, null, 'no-image.png', '1', '1', '0');
INSERT INTO `product` VALUES ('8', '26', 'Брюки SK House 2211-1972кор L Коричневые', '\r\n\r\nКомпания SK House — это украинский производитель модной женской одежды с безупречной репутацией и тысячами поклонников по всему СНГ. SK House изготавливает качественный и долговечный товар, созданный из высококачественных тканей. Компания использует современные методы пошива и, изучая текущие мировые тенденции и локальные требования покупателей, создает модели, которые не задерживаются на полках длительное время и быстро раскупаются во всех странах.', '99', null, null, 'no-image.png', '0', '0', '1');
INSERT INTO `product` VALUES ('9', '26', 'Брюки Kira Plastinina 17-07-17418-FL-58 L', null, '0', null, null, 'product1.jpg', '0', '0', '0');
INSERT INTO `product` VALUES ('10', '29', 'Сумка GUSSACI TUGUS13A060-3-10', 'Простота, инновационный стиль бренда, высококачественные требования к продукции, благодаря этому GUSSACI Italy пользуется высокой репутацией во многих странах Европы. Превосходное качество, отличный дизайн, соответствующие цены делают \"Гуссачи\" модным и популярным!\r\n\r\nОсобенности:\r\n\r\nКоличество основных отделений: 1. Сумка имеет прорезной карман на молнии, а также два небольших накладных кармана для хранения мобильного телефона, разных портативных гаджетов и мелочей. На лицевой стороне модели есть узкий прорезной карман на \"молнии\". На тыльной стороне модели есть прорезной карман на \"молнии\". Особенностью данной модели является возможность изменения ее формы при помощи дополнительной внешней застежки-молнии. Сумка имеет 2 ручки для переноса на локте или в руке. Их длина не регулируется и составляет 45 см, а высота от крайней точки ручки до сумки — 16 см. В комплект к изделию прилагается съемный плечевой ремень. Его длина может регулироваться при помощи металлической пряжки от 78 до 137.5 см. Сумка закрывается при помощи застежки-молнии.\r\n\r\nМатериал подкладки: плотная ткань.\r\nМатериал сумки: кожезаменитель.\r\nЦвет фурнитуры: золото.\r\nРазмеры сумки: 26 х 25 х 10.5 см', '15', null, null, 'product3.jpg', '0', '1', '0');
INSERT INTO `product` VALUES ('11', '29', 'Cумка Michael Kors Jet Set Travel Нежно-розовая', '\r\n\r\nОсобенность стиля Michael Kors заключается в том, что простота его коллекций гармонирует с роскошью. Этому дизайнеру под силу объединить американский утилитаризм в манере одеваться с европейской изысканностью и шармом. Все его работы отличает изящная утонченность, которая рождается из строгих, почти примитивных линий. Все аксессуары поддерживают общий стиль человека с безупречным вкусом.\r\n\r\nМодели Michael Kors могут оставаться оригинальными, стильными и неотразимыми в течение многих лет, что особо важно для покупательниц, не желающих постоянно обновлять свой гардероб.', '200', null, null, 'no-image.png', '0', '0', '1');
INSERT INTO `product` VALUES ('12', '29', 'Cумка Michael Kors Selma Золотистая', '\r\n\r\nОсобенность стиля Michael Kors заключается в том, что простота его коллекций гармонирует с роскошью. Этому дизайнеру под силу объединить американский утилитаризм в манере одеваться с европейской изысканностью и шармом. Все его работы отличает изящная утонченность, которая рождается из строгих, почти примитивных линий. Все аксессуары поддерживают общий стиль человека с безупречным вкусом.\r\n\r\nМодели Michael Kors могут оставаться оригинальными, стильными и неотразимыми в течение многих лет, что особо важно для покупательниц, не желающих постоянно обновлять свой гардероб.', '205', null, null, 'product5.jpg', '0', '0', '0');
INSERT INTO `product` VALUES ('13', '29', 'Cумка Michael Kors Bedford Красная', '\r\n\r\nОсобенность стиля Michael Kors заключается в том, что простота его коллекций гармонирует с роскошью. Этому дизайнеру под силу объединить американский утилитаризм в манере одеваться с европейской изысканностью и шармом. Все его работы отличает изящная утонченность, которая рождается из строгих, почти примитивных линий. Все аксессуары поддерживают общий стиль человека с безупречным вкусом.\r\n\r\nМодели Michael Kors могут оставаться оригинальными, стильными и неотразимыми в течение многих лет, что особо важно для покупательниц, не желающих постоянно обновлять свой гардероб.', '0', null, null, 'no-image.png', '0', '0', '0');
INSERT INTO `product` VALUES ('14', '29', 'Cумка Michael Kors JS Travel Светло-розовая', '\r\n\r\nОсобенность стиля Michael Kors заключается в том, что простота его коллекций гармонирует с роскошью. Этому дизайнеру под силу объединить американский утилитаризм в манере одеваться с европейской изысканностью и шармом. Все его работы отличает изящная утонченность, которая рождается из строгих, почти примитивных линий. Все аксессуары поддерживают общий стиль человека с безупречным вкусом.\r\n\r\nМодели Michael Kors могут оставаться оригинальными, стильными и неотразимыми в течение многих лет, что особо важно для покупательниц, не желающих постоянно обновлять свой гардероб.', '0', null, null, 'no-image.png', '0', '0', '0');
