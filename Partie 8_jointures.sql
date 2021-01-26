-- Création de la base
CREATE DATABASE IF NOT EXISTS `development`;
-- On se positione dans la base nouvellement créé
USE `development`;
-- Création de la table languages
CREATE TABLE IF NOT EXISTS `languages` (
`id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
`name` VARCHAR(40) NOT NULL,
PRIMARY KEY (`id`)
)ENGINE=INNODB;
-- Création de la table frameworks qui contient une clé étrangère
CREATE TABLE IF NOT EXISTS `frameworks` (
`id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
`name` VARCHAR(40) NOT NULL,
`languagesId` INT NOT NULL,
PRIMARY KEY (`id`)
)ENGINE=INNODB;
-- Insertion des données dans la table languages
INSERT INTO `languages` (`name`) VALUES ('Assembleur');
INSERT INTO `languages` (`name`) VALUES ('C');
INSERT INTO `languages` (`name`) VALUES ('C++');
INSERT INTO `languages` (`name`) VALUES ('Java');
INSERT INTO `languages` (`name`) VALUES ('HTML');
INSERT INTO `languages` (`name`) VALUES ('CSS');
INSERT INTO `languages` (`name`) VALUES ('JavaScript');
INSERT INTO `languages` (`name`) VALUES ('PHP');
INSERT INTO `languages` (`name`) VALUES ('C#');
INSERT INTO `languages` (`name`) VALUES ('VB');
INSERT INTO `languages` (`name`) VALUES ('Python');
INSERT INTO `languages` (`name`) VALUES ('Ruby');
INSERT INTO `languages` (`name`) VALUES ('Swift');
-- Insertion des données dans la table frameworks
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Qt',3);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('SDK Android',4);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Bootstrap',6);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Foundation',6);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('KNACSS',6);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Avalanche',6);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Miligram',6);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Skeleton',6);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Hoisin',6);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Inuit',6);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Mimic',6);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Ministrap',6);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Lotus',6);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Jquery',7);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Angular',7);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('ReactJS',7);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Vue.js',7);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Ember.js',7);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Meteor.js',7);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Laravel',8);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Symfony',8);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('CodeIgniter',8);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Yii',8);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Phalcon',8);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Lumen',8);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Silex',8);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Slim',8);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('.NET',9);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('.NET',10);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Django',11);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Ruby On Rails',12);







-- Afficher tous les frameworks associés à leurs langages. Si un langage n'a pas de framework l'afficher aussi.

SELECT `languages`.`name` AS `languagesName`, `frameworks`.`name` AS `frameworksName`
FROM `languages` 
LEFT JOIN `frameworks`
ON `languages`.`id` = `frameworks`.`languagesId`;

-- +---------------+----------------+
-- | languagesName | frameworksName |
-- +---------------+----------------+
-- | C++           | Qt             |
-- | Java          | SDK Android    |
-- | CSS           | Bootstrap      |
-- | CSS           | Foundation     |
-- | CSS           | KNACSS         |
-- | CSS           | Avalanche      |
-- | CSS           | Miligram       |
-- | CSS           | Skeleton       |
-- | CSS           | Hoisin         |
-- | CSS           | Inuit          |
-- | CSS           | Mimic          |
-- | CSS           | Ministrap      |
-- | CSS           | Lotus          |
-- | JavaScript    | Jquery         |
-- | JavaScript    | Angular        |
-- | JavaScript    | ReactJS        |
-- | JavaScript    | Vue.js         |
-- | JavaScript    | Ember.js       |
-- | JavaScript    | Meteor.js      |
-- | PHP           | Laravel        |
-- | PHP           | Symfony        |
-- | PHP           | CodeIgniter    |
-- | PHP           | Yii            |
-- | PHP           | Phalcon        |
-- | PHP           | Lumen          |
-- | PHP           | Silex          |
-- | PHP           | Slim           |
-- | C#            | .NET           |
-- | VB            | .NET           |
-- | Python        | Django         |
-- | Ruby          | Ruby On Rails  |
-- | Assembleur    | NULL           |
-- | C             | NULL           |
-- | HTML          | NULL           |
-- | Swift         | NULL           |
-- +---------------+----------------+



-- Afficher tous les frameworks associés à leurs langages. Si un langage n'a pas de framework ne pas l'afficher.

SELECT `languages`.`name`, `frameworks`.`name`
FROM `languages` 
JOIN `frameworks` 
ON `languages`.`id` = `frameworks`.`languagesId`;

-- +------------+---------------+
-- | name       | name          |
-- +------------+---------------+
-- | C++        | Qt            |
-- | Java       | SDK Android   |
-- | CSS        | Bootstrap     |
-- | CSS        | Foundation    |
-- | CSS        | KNACSS        |
-- | CSS        | Avalanche     |
-- | CSS        | Miligram      |
-- | CSS        | Skeleton      |
-- | CSS        | Hoisin        |
-- | CSS        | Inuit         |
-- | CSS        | Mimic         |
-- | CSS        | Ministrap     |
-- | CSS        | Lotus         |
-- | JavaScript | Jquery        |
-- | JavaScript | Angular       |
-- | JavaScript | ReactJS       |
-- | JavaScript | Vue.js        |
-- | JavaScript | Ember.js      |
-- | JavaScript | Meteor.js     |
-- | PHP        | Laravel       |
-- | PHP        | Symfony       |
-- | PHP        | CodeIgniter   |
-- | PHP        | Yii           |
-- | PHP        | Phalcon       |
-- | PHP        | Lumen         |
-- | PHP        | Silex         |
-- | PHP        | Slim          |
-- | C#         | .NET          |
-- | VB         | .NET          |
-- | Python     | Django        |
-- | Ruby       | Ruby On Rails |
-- +------------+---------------+



-- Afficher le nombre de framework qu'a un langage.

SELECT `languages`.`name`, COUNT(`frameworks`.`name`) AS `frameworksNumber`
FROM `languages` 
LEFT JOIN `frameworks` 
ON `languages`.`id` = `frameworks`.`languagesId`
GROUP BY `languages`.`name`;

-- +------------+------------------+
-- | name       | frameworksNumber |
-- +------------+------------------+
-- | Assembleur |                0 |
-- | C          |                0 |
-- | C#         |                1 |
-- | C++        |                1 |
-- | CSS        |               11 |
-- | HTML       |                0 |
-- | Java       |                1 |
-- | JavaScript |                6 |
-- | PHP        |                8 |
-- | Python     |                1 |
-- | Ruby       |                1 |
-- | Swift      |                0 |
-- | VB         |                1 |
-- +------------+------------------+


-- Afficher les langages ayant plus de 3 frameworks.

SELECT `languages`.`name`, COUNT(*) AS `frameworksNumber`
FROM `languages` 
LEFT JOIN `frameworks` 
ON `languages`.`id` = `frameworks`.`languagesId`
GROUP BY `languages`.`name`
HAVING COUNT(*) > 3;

-- +------------+------------------+
-- | name       | frameworksNumber |
-- +------------+------------------+
-- | CSS        |               11 |
-- | JavaScript |                6 |
-- | PHP        |                8 |
-- +------------+------------------+