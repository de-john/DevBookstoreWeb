
DROP TABLE IF EXISTS `author`;

CREATE TABLE `author` (
  `ID` int NOT NULL,
  `Age` int NOT NULL,
  `Country` varchar(15) NOT NULL,
  `FirstName` varchar(15) NOT NULL,
  `LastName` varchar(15) NOT NULL,
  PRIMARY KEY (`ID`)
);

INSERT INTO `author` (`ID`, `Age`, `Country`, `FirstName`, `LastName`) VALUES (5, 63, 'Indonesia', 'Carolina', 'Ward');
INSERT INTO `author` (`ID`, `Age`, `Country`, `FirstName`, `LastName`) VALUES (15, 11, 'Isle of Man', 'Aliya', 'West');
INSERT INTO `author` (`ID`, `Age`, `Country`, `FirstName`, `LastName`) VALUES (25, 78, 'Saudi Arabia', 'Tyler', 'Satterfield');
INSERT INTO `author` (`ID`, `Age`, `Country`, `FirstName`, `LastName`) VALUES (26, 21, 'Bahrain', 'Alva', 'Jones');
INSERT INTO `author` (`ID`, `Age`, `Country`, `FirstName`, `LastName`) VALUES (33, 77, 'Croatia', 'Jaleel', 'Lowe');
INSERT INTO `author` (`ID`, `Age`, `Country`, `FirstName`, `LastName`) VALUES (34, 42, 'Reunion', 'Earnest', 'Rogahn');
INSERT INTO `author` (`ID`, `Age`, `Country`, `FirstName`, `LastName`) VALUES (36, 86, 'Singapore', 'Terry', 'Eichmann');
INSERT INTO `author` (`ID`, `Age`, `Country`, `FirstName`, `LastName`) VALUES (43, 10, 'Panama', 'Tracey', 'Homenick');
INSERT INTO `author` (`ID`, `Age`, `Country`, `FirstName`, `LastName`) VALUES (48, 57, 'Mexico', 'Mae', 'Feil');
INSERT INTO `author` (`ID`, `Age`, `Country`, `FirstName`, `LastName`) VALUES (55, 75, 'Thailand', 'Gerda', 'Pagac');
INSERT INTO `author` (`ID`, `Age`, `Country`, `FirstName`, `LastName`) VALUES (57, 67, 'Greenland', 'Layla', 'Frami');
INSERT INTO `author` (`ID`, `Age`, `Country`, `FirstName`, `LastName`) VALUES (58, 89, 'Denmark', 'Laurel', 'Runolfsson');
INSERT INTO `author` (`ID`, `Age`, `Country`, `FirstName`, `LastName`) VALUES (66, 26, 'Djibouti', 'Raegan', 'Legros');
INSERT INTO `author` (`ID`, `Age`, `Country`, `FirstName`, `LastName`) VALUES (70, 37, 'Saint Barthelem', 'Rowena', 'Blick');
INSERT INTO `author` (`ID`, `Age`, `Country`, `FirstName`, `LastName`) VALUES (71, 95, 'Bermuda', 'Bernice', 'Glover');
INSERT INTO `author` (`ID`, `Age`, `Country`, `FirstName`, `LastName`) VALUES (72, 14, 'New Caledonia', 'Lexus', 'Keebler');
INSERT INTO `author` (`ID`, `Age`, `Country`, `FirstName`, `LastName`) VALUES (77, 34, 'Martinique', 'Freddy', 'Jacobson');
INSERT INTO `author` (`ID`, `Age`, `Country`, `FirstName`, `LastName`) VALUES (79, 94, 'Madagascar', 'Cale', 'Kutch');
INSERT INTO `author` (`ID`, `Age`, `Country`, `FirstName`, `LastName`) VALUES (87, 44, 'Lesotho', 'Jamey', 'Lebsack');
INSERT INTO `author` (`ID`, `Age`, `Country`, `FirstName`, `LastName`) VALUES (92, 27, 'Barbados', 'Arnoldo', 'Schmidt');



DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `Phone` varchar(12) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `DOB` date NOT NULL,
  `Address` varchar(15) NOT NULL,
  `State` varchar(15) NOT NULL,
  `Zip` varchar(10) NOT NULL,
  `Country` varchar(15) NOT NULL,
  PRIMARY KEY (`FirstName`,`LastName`,`Phone`)
);

INSERT INTO `customer` (`FirstName`, `LastName`, `Phone`, `Email`, `DOB`, `Address`, `State`, `Zip`, `Country`) VALUES ('Adela', 'Torphy', '1-428-410-03', 'hvandervort@example.org', '1995-04-14', '436 Wilburn Squ', 'Washington', '40778-5215', 'Pitcairn Island');
INSERT INTO `customer` (`FirstName`, `LastName`, `Phone`, `Email`, `DOB`, `Address`, `State`, `Zip`, `Country`) VALUES ('Adolphus', 'Schinner', '+89(4)993388', 'candida92@example.com', '2015-08-02', '9986 Bergstrom ', 'NewHampshire', '53354', 'American Samoa');
INSERT INTO `customer` (`FirstName`, `LastName`, `Phone`, `Email`, `DOB`, `Address`, `State`, `Zip`, `Country`) VALUES ('Aurore', 'Altenwerth', '+02(9)985503', 'fjohnson@example.com', '1986-03-20', '114 Lillian Str', 'Pennsylvania', '12501', 'Tonga');
INSERT INTO `customer` (`FirstName`, `LastName`, `Phone`, `Email`, `DOB`, `Address`, `State`, `Zip`, `Country`) VALUES ('Devon', 'Hammes', '(266)059-736', 'una.beatty@example.org', '1974-06-18', '9412 Dallin Lan', 'Oklahoma', '13537', 'Bahrain');
INSERT INTO `customer` (`FirstName`, `LastName`, `Phone`, `Email`, `DOB`, `Address`, `State`, `Zip`, `Country`) VALUES ('Ettie', 'Rosenbaum', '175-296-3528', 'marilyne.bechtelar@example.com', '2019-12-25', '28900 Beaulah E', 'Kansas', '99074', 'Sudan');
INSERT INTO `customer` (`FirstName`, `LastName`, `Phone`, `Email`, `DOB`, `Address`, `State`, `Zip`, `Country`) VALUES ('Gennaro', 'Kassulke', '(979)471-398', 'rozella.tromp@example.com', '1993-07-02', '0216 Keven Road', 'Montana', '67154-1579', 'South Georgia a');
INSERT INTO `customer` (`FirstName`, `LastName`, `Phone`, `Email`, `DOB`, `Address`, `State`, `Zip`, `Country`) VALUES ('Hubert', 'Kris', '751-039-0334', 'wmetz@example.net', '1981-05-22', '039 Spencer Dal', 'Hawaii', '80118', 'Guinea-Bissau');
INSERT INTO `customer` (`FirstName`, `LastName`, `Phone`, `Email`, `DOB`, `Address`, `State`, `Zip`, `Country`) VALUES ('Keanu', 'Oberbrunner', '02142306494', 'randi26@example.org', '2004-04-22', '802 Patsy Squar', 'Tennessee', '50786', 'Grenada');
INSERT INTO `customer` (`FirstName`, `LastName`, `Phone`, `Email`, `DOB`, `Address`, `State`, `Zip`, `Country`) VALUES ('Kendra', 'Anderson', '+31(3)674363', 'kasey.torphy@example.org', '1975-02-19', '125 Lucio Commo', 'RhodeIsland', '47726', 'Lesotho');
INSERT INTO `customer` (`FirstName`, `LastName`, `Phone`, `Email`, `DOB`, `Address`, `State`, `Zip`, `Country`) VALUES ('Kiara', 'Osinski', '1-442-371-15', 'kuphal.ronny@example.com', '1986-06-17', '81981 Mohammad ', 'SouthCarolina', '17342-1805', 'Rwanda');
INSERT INTO `customer` (`FirstName`, `LastName`, `Phone`, `Email`, `DOB`, `Address`, `State`, `Zip`, `Country`) VALUES ('Lesly', 'Schamberger', '402.541.1724', 'yparisian@example.org', '1970-11-03', '802 Reece Lake', 'Maine', '34778', 'Uganda');
INSERT INTO `customer` (`FirstName`, `LastName`, `Phone`, `Email`, `DOB`, `Address`, `State`, `Zip`, `Country`) VALUES ('Marcus', 'Schmidt', '025-346-7906', 'ewelch@example.net', '1998-10-23', '0205 Isom Harbo', 'SouthCarolina', '02246-7973', 'Saudi Arabia');
INSERT INTO `customer` (`FirstName`, `LastName`, `Phone`, `Email`, `DOB`, `Address`, `State`, `Zip`, `Country`) VALUES ('Margot', 'Brown', '01913486720', 'alexanne18@example.org', '2015-10-14', '7656 Howell Thr', 'Massachusetts', '49639', 'Lao People');
INSERT INTO `customer` (`FirstName`, `LastName`, `Phone`, `Email`, `DOB`, `Address`, `State`, `Zip`, `Country`) VALUES ('Mariah', 'Hirthe', '671.402.3816', 'tgreenfelder@example.net', '1995-03-11', '49624 Jadyn Isl', 'NewHampshire', '22406', 'Zimbabwe');
INSERT INTO `customer` (`FirstName`, `LastName`, `Phone`, `Email`, `DOB`, `Address`, `State`, `Zip`, `Country`) VALUES ('Queen', 'Sawayn', '(158)901-857', 'nader.demarcus@example.org', '1991-02-13', '5412 Bechtelar ', 'RhodeIsland', '85070-6641', 'Venezuela');
INSERT INTO `customer` (`FirstName`, `LastName`, `Phone`, `Email`, `DOB`, `Address`, `State`, `Zip`, `Country`) VALUES ('Quinten', 'McKenzie', '(696)052-839', 'dashawn45@example.org', '1988-10-15', '23368 Weissnat ', 'Arkansas', '24371', 'South Africa');
INSERT INTO `customer` (`FirstName`, `LastName`, `Phone`, `Email`, `DOB`, `Address`, `State`, `Zip`, `Country`) VALUES ('Randi', 'Cormier', '01167185706', 'carmel06@example.org', '2015-11-15', '300 Mellie Cove', 'Washington', '45210', 'Netherlands Ant');
INSERT INTO `customer` (`FirstName`, `LastName`, `Phone`, `Email`, `DOB`, `Address`, `State`, `Zip`, `Country`) VALUES ('Roderick', 'Sporer', '843-282-8188', 'russel.alexandre@example.net', '1995-08-22', '1628 Lakin Spur', 'Oklahoma', '88832', 'Hong Kong');
INSERT INTO `customer` (`FirstName`, `LastName`, `Phone`, `Email`, `DOB`, `Address`, `State`, `Zip`, `Country`) VALUES ('Serenity', 'Purdy', '724-893-1046', 'vernon.wiza@example.com', '2004-11-06', '642 Dorothy Poi', 'NewYork', '69450-9351', 'Faroe Islands');
INSERT INTO `customer` (`FirstName`, `LastName`, `Phone`, `Email`, `DOB`, `Address`, `State`, `Zip`, `Country`) VALUES ('Shannon', 'Harris', '1-040-756-16', 'ruby99@example.net', '2006-03-04', '2440 Moen Alley', 'WestVirginia', '94895-0200', 'Saint Martin');


CREATE TABLE `publisher` (
  `PublisherID` int NOT NULL,
  `Name` varchar(30) NOT NULL,
  PRIMARY KEY (`PublisherID`)
);

INSERT INTO `publisher` (`PublisherID`, `Name`) VALUES (2, 'non');
INSERT INTO `publisher` (`PublisherID`, `Name`) VALUES (29, 'aliquam');
INSERT INTO `publisher` (`PublisherID`, `Name`) VALUES (30, 'sint');
INSERT INTO `publisher` (`PublisherID`, `Name`) VALUES (37, 'dolores');
INSERT INTO `publisher` (`PublisherID`, `Name`) VALUES (44, 'quos');
INSERT INTO `publisher` (`PublisherID`, `Name`) VALUES (46, 'qui');
INSERT INTO `publisher` (`PublisherID`, `Name`) VALUES (50, 'voluptatem');
INSERT INTO `publisher` (`PublisherID`, `Name`) VALUES (54, 'fugit');
INSERT INTO `publisher` (`PublisherID`, `Name`) VALUES (64, 'blanditiis');
INSERT INTO `publisher` (`PublisherID`, `Name`) VALUES (67, 'quo');
INSERT INTO `publisher` (`PublisherID`, `Name`) VALUES (69, 'deserunt');
INSERT INTO `publisher` (`PublisherID`, `Name`) VALUES (74, 'veniam');
INSERT INTO `publisher` (`PublisherID`, `Name`) VALUES (75, 'et');
INSERT INTO `publisher` (`PublisherID`, `Name`) VALUES (76, 'voluptas');
INSERT INTO `publisher` (`PublisherID`, `Name`) VALUES (83, 'possimus');
INSERT INTO `publisher` (`PublisherID`, `Name`) VALUES (84, 'illum');
INSERT INTO `publisher` (`PublisherID`, `Name`) VALUES (92, 'voluptates');
INSERT INTO `publisher` (`PublisherID`, `Name`) VALUES (95, 'eaque');
INSERT INTO `publisher` (`PublisherID`, `Name`) VALUES (96, 'dignissimos');
INSERT INTO `publisher` (`PublisherID`, `Name`) VALUES (97, 'omnis');

CREATE TABLE `book` (
  `ISBN` varchar(13) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `ReleaseDate` date NOT NULL,
  `PageCount` int NOT NULL,
  `Genre` varchar(15) NOT NULL,
  `Price` float NOT NULL,
  `PublisherID` int NOT NULL,
  PRIMARY KEY (`ISBN`),
  KEY `PublisherID` (`PublisherID`),
  CONSTRAINT `book_ibfk_1` FOREIGN KEY (`PublisherID`) REFERENCES `publisher` (`PublisherID`)
);
INSERT INTO `book` (`ISBN`, `Name`, `ReleaseDate`, `PageCount`, `Genre`, `Price`, `PublisherID`) VALUES ('111111111111', 'Java Programming','2019-05-23', 565, 'Java', '258.65', 1000)
INSERT INTO `book` (`ISBN`, `Name`, `ReleaseDate`, `PageCount`, `Genre`, `Price`, `PublisherID`) VALUES ('222222222222', 'Introduction .Net Programming', '2014-05-07', 650,, '.NET', '753.65', 500)
INSERT INTO `book` (`ISBN`, `Name`, `ReleaseDate`, `PageCount`, `Genre`, `Price`, `PublisherID`) VALUES ('333333333333', 'Introduction to Oracle', 'Sumen Dey','2017-08-12',315, 'NIIT', '165.65', 600);
INSERT INTO `book` (`ISBN`, `Name`, `ReleaseDate`, `PageCount`, `Genre`, `Price`, `PublisherID`) VALUES ('1157197863794', 'Perferendis et odio cupiditate tempore.', '2014-05-07', 996, 'distinctio', '230.9', 74);
INSERT INTO `book` (`ISBN`, `Name`, `ReleaseDate`, `PageCount`, `Genre`, `Price`, `PublisherID`) VALUES ('1309976642951', 'Consequatur omnis vel atque consequuntur.', '1985-07-26', 337, 'culpa', '191.87', 44);
INSERT INTO `book` (`ISBN`, `Name`, `ReleaseDate`, `PageCount`, `Genre`, `Price`, `PublisherID`) VALUES ('2028906596824', 'Quisquam aliquid voluptatum dolores laudantium.', '1992-08-26', 660, 'porro', '191.09', 2);
INSERT INTO `book` (`ISBN`, `Name`, `ReleaseDate`, `PageCount`, `Genre`, `Price`, `PublisherID`) VALUES ('2286781296133', 'Qui quasi sed est repellendus.', '1996-01-10', 74, 'sunt', '81.89', 29);
INSERT INTO `book` (`ISBN`, `Name`, `ReleaseDate`, `PageCount`, `Genre`, `Price`, `PublisherID`) VALUES ('3152152812108', 'Voluptatem repellat hic.', '2017-10-21', 395, 'blanditiis', '152.7', 75);
INSERT INTO `book` (`ISBN`, `Name`, `ReleaseDate`, `PageCount`, `Genre`, `Price`, `PublisherID`) VALUES ('3416327200829', 'Nihil saepe esse ipsam dolores tempora.', '1990-04-04', 743, 'nisi', '142.18', 95);
INSERT INTO `book` (`ISBN`, `Name`, `ReleaseDate`, `PageCount`, `Genre`, `Price`, `PublisherID`) VALUES ('3747058436274', 'Eos iusto quibusdam aliquid.', '2008-08-12', 393, 'rerum', '573.35', 92);
INSERT INTO `book` (`ISBN`, `Name`, `ReleaseDate`, `PageCount`, `Genre`, `Price`, `PublisherID`) VALUES ('3789563281461', 'Possimus corrupti culpa eum.', '1988-06-22', 599, 'sint', '422.61', 96);
INSERT INTO `book` (`ISBN`, `Name`, `ReleaseDate`, `PageCount`, `Genre`, `Price`, `PublisherID`) VALUES ('4216285003349', 'Omnis suscipit facilis dignissimos quos.', '2020-02-19', 948, 'vitae', '275.83', 83);
INSERT INTO `book` (`ISBN`, `Name`, `ReleaseDate`, `PageCount`, `Genre`, `Price`, `PublisherID`) VALUES ('4721319889649', 'Molestiae dolor non atque soluta facilis.', '2018-07-09', 696, 'doloribus', '297.91', 30);
INSERT INTO `book` (`ISBN`, `Name`, `ReleaseDate`, `PageCount`, `Genre`, `Price`, `PublisherID`) VALUES ('4836357054300', 'Tenetur praesentium dolorum repellat deleniti sequ', '2011-08-13', 654, 'rerum', '457.3', 84);
INSERT INTO `book` (`ISBN`, `Name`, `ReleaseDate`, `PageCount`, `Genre`, `Price`, `PublisherID`) VALUES ('497626634314', 'A culpa in incidunt quia aliquam.', '1991-10-03', 254, 'et', '471.66', 64);
INSERT INTO `book` (`ISBN`, `Name`, `ReleaseDate`, `PageCount`, `Genre`, `Price`, `PublisherID`) VALUES ('5828214650973', 'Ullam non quo facilis numquam ut.', '1999-10-18', 316, 'neque', '118.22', 50);
INSERT INTO `book` (`ISBN`, `Name`, `ReleaseDate`, `PageCount`, `Genre`, `Price`, `PublisherID`) VALUES ('62192301265', 'Ad atque dolorum in.', '1981-09-13', 393, 'est', '553.92', 54);
INSERT INTO `book` (`ISBN`, `Name`, `ReleaseDate`, `PageCount`, `Genre`, `Price`, `PublisherID`) VALUES ('7597661721520', 'Dolorem qui id tenetur perspiciatis.', '1994-12-04', 905, 'tempora', '224.59', 46);
INSERT INTO `book` (`ISBN`, `Name`, `ReleaseDate`, `PageCount`, `Genre`, `Price`, `PublisherID`) VALUES ('7663249750621', 'Animi nemo dolores.', '1984-02-01', 382, 'quod', '257.42', 97);
INSERT INTO `book` (`ISBN`, `Name`, `ReleaseDate`, `PageCount`, `Genre`, `Price`, `PublisherID`) VALUES ('893084048293', 'Provident molestiae est est.', '1985-04-21', 218, 'eum', '491.98', 67);
INSERT INTO `book` (`ISBN`, `Name`, `ReleaseDate`, `PageCount`, `Genre`, `Price`, `PublisherID`) VALUES ('9799623508006', 'Vitae enim repellendus dolor corrupti.', '1980-11-07', 25, 'eveniet', '410.43', 69);
INSERT INTO `book` (`ISBN`, `Name`, `ReleaseDate`, `PageCount`, `Genre`, `Price`, `PublisherID`) VALUES ('9804885862395', 'Est vel impedit accusamus doloribus ad.', '1976-08-25', 30, 'dolorum', '385.98', 37);
INSERT INTO `book` (`ISBN`, `Name`, `ReleaseDate`, `PageCount`, `Genre`, `Price`, `PublisherID`) VALUES ('984324947930', 'Libero laudantium reprehenderit recusandae.', '1976-08-30', 819, 'porro', '588.68', 76);


CREATE TABLE `purchaseorder` (
  `OrderID` int NOT NULL AUTO_INCREMENT,
  `Address` varchar(15) NOT NULL,
  `State` varchar(15) NOT NULL,
  `Zip` varchar(10) NOT NULL,
  `Date` date NOT NULL,
  `Country` varchar(15) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `Phone` varchar(12) NOT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `FirstName` (`FirstName`,`LastName`,`Phone`),
  CONSTRAINT `purchaseorder_ibfk_1` FOREIGN KEY (`FirstName`, `LastName`, `Phone`) REFERENCES `customer` (`FirstName`, `LastName`, `Phone`)
);


CREATE TABLE `contains` (
  `OrderID` int NOT NULL AUTO_INCREMENT,
  `ISBN` varchar(13) NOT NULL,
  KEY `ISBN` (`ISBN`),
  KEY `OrderID` (`OrderID`),
  CONSTRAINT `contains_ibfk_2` FOREIGN KEY (`ISBN`) REFERENCES `book` (`ISBN`),
  CONSTRAINT `contains_ibfk_3` FOREIGN KEY (`OrderID`) REFERENCES `purchase_order` (`OrderID`)
); 


CREATE TABLE `writes` (
  `ID` int NOT NULL,
  `ISBN` varchar(13) NOT NULL,
  KEY `ID` (`ID`),
  KEY `ISBN` (`ISBN`),
  CONSTRAINT `writes_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `author` (`ID`),
  CONSTRAINT `writes_ibfk_2` FOREIGN KEY (`ISBN`) REFERENCES `book` (`ISBN`)
);


LOCK TABLES `author` WRITE;
INSERT INTO `author` VALUES (1,20,'United States','Joy L.','Starks'),(2,35,'United Kingdom','Elizabeth','Wardle');
UNLOCK TABLES;


DROP TABLE IF EXISTS `book`;


