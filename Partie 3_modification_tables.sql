-- Dans la base de données webDevelopment, ajouter à la table languages une colonne versions (VARCHAR).

ALTER TABLE `languages` ADD `versions` VARCHAR(255);

-- Dans la base de données webDevelopment, ajouter à la table frameworks une colonne version (INT).

ALTER TABLE `frameworks` ADD `version` INT;

-- Dans la base de données webDevelopment, dans la table languages renommer la colonne versions en version.

ALTER TABLE `languages` CHANGE `versions` `version` VARCHAR(255);

-- Dans la base de données webDevelopment, dans la table frameworks, renommer la colonne name en framework.

ALTER TABLE `frameworks` CHANGE `name` `framework` VARCHAR(255);

-- Dans la base de données webDevelopment, dans la table frameworks changer le type de la colonne version en VARCHAR de taille 10.

ALTER TABLE `frameworks` MODIFY `version` VARCHAR(10);

-- Dans la base codex, dans la table clients :

-- supprimer la colonne secondPhoneNumber
-- renommer la colonne firstPhoneNumber en phoneNumber
-- changer le type de la colonne phoneNumber en VARCHAR
-- ajouter les colonnes zipCode(VARCHAR) et city(VARCHAR)

USE `codex`;
ALTER TABLE `clients` DROP `secondPhoneNumber`;
ALTER TABLE `clients` CHANGE `firstPhoneNumber` `phoneNumber` INT;
ALTER TABLE `clients` MODIFY `phoneNumber` VARCHAR(20);
ALTER TABLE `clients` ADD `zipCode` VARCHAR(10);
ALTER TABLE `clients` ADD `city` VARCHAR(20);