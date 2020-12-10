DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `address_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `last_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `address1` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `address2` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `city` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `state` varchar(45) NOT NULL,
  `zip` varchar(45) NOT NULL,
  `country` varchar(45) NOT NULL,
  `phone` varchar(20) NOT NULL DEFAULT '',
  `address_status` smallint NOT NULL DEFAULT '1',
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table country
# ------------------------------------------------------------

DROP TABLE IF EXISTS `country`;

CREATE TABLE `country` (
  `country_id` int unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(5) NOT NULL DEFAULT '',
  `flag` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `country_status` smallint NOT NULL DEFAULT '1',
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;

INSERT INTO `country` (`country_id`, `code`, `flag`, `name`, `country_status`)
VALUES
	(1,'US','/country/countries/us.png','United States',1),
	(2,'CA','/country/countries/ca.png','Canada',1),
	(3,'AU','/country/countries/au.png','Australia',1),
	(4,'NZ','/country/countries/nz.png','New Zealand',1),
	(5,'GB','/country/countries/gb.png','Great Britain',1),
	(6,'IE','/country/countries/ie.png','Ireland',1),
	(7,'AT','/country/countries/at.png','Austria',1),
	(8,'BE','/country/countries/be.png','Belgium',1),
	(9,'BG','/country/countries/bg.png','Bulgaria',1),
	(10,'HR','/country/countries/hr.png','Croatia',1),
	(11,'CY','/country/countries/cy.png','Cyprus',1),
	(12,'CZ','/country/countries/cz.png','Czech Republic',1),
	(13,'DK','/country/countries/dk.png','Denmark',1),
	(14,'EE','/country/countries/ee.png','Estonia',1),
	(15,'FI','/country/countries/fi.png','Finland',1),
	(16,'FR','/country/countries/fr.png','France',1),
	(17,'DE','/country/countries/de.png','Germany',1),
	(18,'GR','/country/countries/gr.png','Greece',1),
	(19,'HU','/country/countries/hu.png','Hungary',1),
	(20,'IT','/country/countries/it.png','Italy',1),
	(21,'LV','/country/countries/lv.png','Latvia',1),
	(22,'LT','/country/countries/lt.png','Lithuania',1),
	(23,'LU','/country/countries/lu.png','Luxembourg',1),
	(24,'MT','/country/countries/mt.png','Malta',1),
	(25,'NL','/country/countries/nl.png','Netherlands',1),
	(26,'PL','/country/countries/po.png','Poland',1),
	(27,'PT','/country/countries/pt.png','Portugal',1),
	(28,'RO','/country/countries/ro.png','Romania',1),
	(29,'SK','/country/countries/sk.png','Slovakia',1),
	(30,'SI','/country/countries/si.png','Slovenia',1),
	(31,'ES','/country/countries/es.png','Spain',1),
	(32,'SE','/country/countries/se.png','Sweden',1),
	(33,'SG','/country/countries/sg.png','Singapore',1),
	(34,'NO','/country/countries/no.png','Norway',1),
	(35,'IL','/country/countries/il.png','Israel',1),
	(37,'CH','/country/countries/ch.png','Switzerland',1),
	(38,'HK','/country/countries/hk.png','Hong Kong',1),
	(39,'TW','/country/countries/tw.png','Taiwan',1),
	(40,'IN','/country/countries/in.png','India',0),
	(41,'ZA','/country/countries/za.png','South Africa',0),
	(42,'JP','/country/countries/jp.png','Japan',1),
	(43,'ID','/country/countries/jp.png','Indonesia',0),
	(44,'MY','/country/countries/my.png','Malaysia',0),
	(45,'PH','/country/countries/ph.png','Philippines',0),
	(46,'MX','/country/countries/mx.png','Mexico',1),
	(47,'BR','/country/countries/br.png','Brazil',1),
	(49,'CL','/country/countries/cl.png','Chile',1),
	(50,'CO','/country/countries/co.png','Colombia',1),
	(51,'KR','/country/countries/kr.png','South Korea',0),
	(52,'RU','/country/countries/ru.png','Russia',0),
	(53,'FO','/country/countries/dk.png','Faroe Islands',0),
	(54,'IS','/country/countries/is.png','Iceland',1),
	(55,'QA','/country/countries/qa.png','Qatar',0),
	(56,'SA','/country/countries/sa.png','Saudi Arabia',0),
	(57,'AE','/country/countries/ae.png','United Arab Emirates',1),
	(58,'TR','/country/countries/tr.png','Turkey',0);

/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exemptions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exemptions`;

CREATE TABLE `exemptions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int NOT NULL,
  `state_id` int DEFAULT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `exemptions` WRITE;
/*!40000 ALTER TABLE `exemptions` DISABLE KEYS */;

INSERT INTO `exemptions` (`id`, `country_id`, `state_id`, `product_id`)
VALUES
	(1,1,12,5),
	(2,8,NULL,5);

/*!40000 ALTER TABLE `exemptions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table products
# ------------------------------------------------------------

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `product_id` int unsigned NOT NULL AUTO_INCREMENT,
  `product_name` varchar(50) NOT NULL DEFAULT '',
  `product_status` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;

INSERT INTO `products` (`product_id`, `product_name`, `product_status`)
VALUES
	(1,'Fiction',1),
	(2,'Non-Fiction',1),
	(3,'Political Science',1),
	(4,'Science',1),
	(5,'Travel',1),
	(6,'Science Fiction',1),
	(7,'Education',1),
	(8,'Reference',1);

/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table state
# ------------------------------------------------------------

DROP TABLE IF EXISTS `state`;

CREATE TABLE `state` (
  `state_id` int unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int NOT NULL,
  `code` varchar(5) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `state_status` smallint NOT NULL DEFAULT '1',
  PRIMARY KEY (`state_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `state` WRITE;
/*!40000 ALTER TABLE `state` DISABLE KEYS */;

INSERT INTO `state` (`state_id`, `country_id`, `code`, `name`, `state_status`)
VALUES
	(1,1,'AA','U.S. Armed Forces - Americas',1),
	(2,1,'AE','U.S. Armed Forces - Europe',1),
	(3,1,'AP','U.S. Armed Forces - Pacific',1),
	(4,1,'AL','Alabama',1),
	(5,1,'AK','Alaska',1),
	(6,1,'AZ','Arizona',1),
	(7,1,'AR','Arkansas',1),
	(8,1,'CA','California',1),
	(9,1,'CO','Colorado',1),
	(10,1,'CT','Connecticut',1),
	(11,1,'DE','Delaware',1),
	(12,1,'DC','District of Columbia',1),
	(13,1,'FL','Florida',1),
	(14,1,'GA','Georgia',1),
	(15,1,'HI','Hawaii',1),
	(16,1,'ID','Idaho',1),
	(17,1,'IL','Illinois',1),
	(18,1,'IN','Indiana',1),
	(19,1,'IA','Iowa',1),
	(20,1,'KS','Kansas',1),
	(21,1,'KY','Kentucky',1),
	(22,1,'LA','Louisiana',1),
	(23,1,'ME','Maine',1),
	(24,1,'MD','Maryland',1),
	(25,1,'MA','Massachusetts',1),
	(26,1,'MI','Michigan',1),
	(27,1,'MN','Minnesota',1),
	(28,1,'MS','Mississippi',1),
	(29,1,'MO','Missouri',1),
	(30,1,'MT','Montana',1),
	(31,1,'NE','Nebraska',1),
	(32,1,'NV','Nevada',1),
	(33,1,'NH','New Hampshire',1),
	(34,1,'NJ','New Jersey',1),
	(35,1,'NM','New Mexico',1),
	(36,1,'NY','New York',1),
	(37,1,'NC','North Carolina',1),
	(38,1,'ND','North Dakota',1),
	(39,1,'OH','Ohio',1),
	(40,1,'OK','Oklahoma',1),
	(41,1,'OR','Oregon',1),
	(42,1,'PA','Pennsylvania',1),
	(43,1,'RI','Rhode Island',1),
	(44,1,'SC','South Carolina',1),
	(45,1,'SD','South Dakota',1),
	(46,1,'TN','Tennessee',1),
	(47,1,'TX','Texas',1),
	(48,1,'UT','Utah',1),
	(49,1,'VT','Vermont',1),
	(50,1,'VA','Virginia',1),
	(51,1,'WA','Washington',1),
	(52,1,'WV','West Virginia',1),
	(53,1,'WI','Wisconsin',1),
	(54,1,'WY','Wyoming',1),
	(55,1,'GU','Guam',1),
	(56,1,'PR','Puerto Rico',1),
	(57,1,'VI','U.S. Virgin Islands',1),
	(58,2,'AB','Alberta',1),
	(59,2,'BC','British Columbia',1),
	(60,2,'MB','Manitoba',1),
	(61,2,'NB','New Brunswick',1),
	(62,2,'NL','Newfoundland and Labrador',1),
	(63,2,'NS','Nova Scotia',1),
	(64,2,'NT','Northwest Territories',1),
	(65,2,'NU','Nunavut',1),
	(66,2,'ON','Ontario',1),
	(67,2,'PE','Prince Edward Island',1),
	(68,2,'QC','Quebec',1),
	(69,2,'SK','Saskatchewan',1),
	(70,2,'YT','Yukon',1);

/*!40000 ALTER TABLE `state` ENABLE KEYS */;
UNLOCK TABLES;
