CREATE TABLE `movies` (
  ` ID` int(11) NOT NULL,
  `Movie_Name` text,
  `Genre` text,
  PRIMARY KEY (` ID`)
) ;
CREATE TABLE `participants` (
  `ID` int(11) NOT NULL,
  `First Name` text,
  `Last Name` text,
  `Age` int(11) DEFAULT NULL,
  `Gender` text,
  PRIMARY KEY (`ID`)
) ;
CREATE TABLE `rating` (
  `RatingID` int(11) NOT NULL,
  `Description` text,
  PRIMARY KEY (`RatingID`)
) ;
CREATE TABLE `surveytable` (
  `PersonID` int(11) NOT NULL,
  `MovieID` int(11) NOT NULL,
  `RatingID` int(11) NOT NULL,
  KEY `ID_idx` (`PersonID`),
  KEY `ID_idx1` (`MovieID`),
  KEY `ID_idx2` (`RatingID`),
  CONSTRAINT `ID` FOREIGN KEY (`PersonID`) REFERENCES `participants` (`ID`)
) ;
