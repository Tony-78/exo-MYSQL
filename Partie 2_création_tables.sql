-- Dans la base de données webDevelopment, créer la table languages avec les colonnes :

-- id (type INT, auto-incrémenté, clé primaire)
-- language (type VARCHAR)

CREATE TABLE `languages` (
    `id` INT PRIMARY KEY AUTO_INCREMENT, 
    `language` VARCHAR(50)
)
ENGINE = INNODB;

-- Dans la base de données webDevelopment, créer la table tools avec les colonnes suivantes :

-- id (type INT, auto-incrémenté, clé primaire)
-- tool (type VARCHAR)

CREATE TABLE `tools` (
    `id` INT PRIMARY KEY AUTO_INCREMENT, 
    `tool` VARCHAR(50)
)
ENGINE = INNODB;

-- Dans la base de données webDevelopment, créer la table frameworks avec les colonnes suivantes :

-- id (type INT, auto-incrémenté, clé primaire)
-- name (type VARCHAR)

CREATE TABLE `frameworks` (
    `id` INT PRIMARY KEY AUTO_INCREMENT, 
    `name` VARCHAR(50)
)
ENGINE = INNODB;

-- Dans la base de données webDevelopment, créer la table libraries avec les colonnes suivantes :

-- id (type INT, auto-incrémenté, clé primaire)
-- library (type VARCHAR)

CREATE TABLE `libraries` (
    `id` INT PRIMARY KEY AUTO_INCREMENT, 
    `library` VARCHAR(50)
)
ENGINE = INNODB;

-- Dans la base de données webDevelopment, créer la table ide avec les colonnes suivantes :

-- id (type INT, auto-incrémenté, clé primaire)
-- ideName (type VARCHAR)

CREATE TABLE `ide` (
    `id` INT PRIMARY KEY AUTO_INCREMENT, 
    `ideName` VARCHAR(50)
)
ENGINE = INNODB;

-- Dans la base de données webDevelopment, créer, si elle existe pas, la table frameworks avec les colonnes suivantes :

-- id (type INT, auto-incrémenté, clé primaire)
-- name (type VARCHAR)

CREATE TABLE IF NOT EXISTS `frameworks` (
    `id` INT PRIMARY KEY AUTO_INCREMENT, 
    `name` VARCHAR(50)
)
ENGINE = INNODB;

-- Supprimer la table tools si elle existe.

DROP TABLE IF EXISTS `tools`;

-- Supprimer la table libraries.

DROP TABLE `libraries`;

-- Supprimer la table ide.

DROP TABLE `ide`;

-- Créer la base codex. Y créer une table clients qui aura comme colonnes :

-- Colonne	Type	Attributs
-- id      INT	       Auto-incrémenté, clé primaire
-- lastname	VARCHAR	
-- firstname	VARCHAR	
-- birthDate	DATE	
-- address	VARCHAR	
-- firstPhoneNumber	INT	
-- secondPhoneNumber	INT	
-- mail	VARCHAR	

CREATE DATABASE `codex`;
USE `codex`;
CREATE TABLE `clients` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `lastname` VARCHAR(50),
    `firstname` VARCHAR(50),
    `birthDate` DATE,
    `address` VARCHAR(255),
    `firstPhoneNumber` INT,
    `secondPhoneNumber` INT,
    `mail` VARCHAR(254)
)
ENGINE = INNODB;