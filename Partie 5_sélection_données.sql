-- Dans la table languages, afficher toutes les données de la table.

SELECT * FROM `languages`;

-- Dans la table languages, afficher toutes les versions de PHP.

SELECT * FROM `languages` WHERE `language` = "PHP";

-- Dans la table languages, afficher toutes les versions de PHP et de JavaScript.

SELECT * FROM `languages` WHERE `language` = "PHP" OR `language` = "JavaScript";

-- Dans la table languages, afficher toutes les lignes ayant pour id 3,5,7.

SELECT * FROM `languages` WHERE `id` = 3 OR `id` = 5 OR `id` = 7;
-- SELECT * FROM `languages` WHERE `id` IN (3, 5, 7);

-- Dans la table languages, afficher les deux première entrées de JavaScript.

SELECT * FROM `languages` WHERE `language` = "JavaScript" LIMIT 2;

-- Dans la table languages, afficher toutes les lignes qui ne sont pas du PHP.

SELECT * FROM `languages` WHERE `language` != "PHP";
-- SELECT * FROM `languages` WHERE `language` <> "PHP";
-- SELECT * FROM `languages` WHERE `language` IS NOT "PHP";

-- Dans la table languages, afficher toutes les données par ordre alphabétique.

SELECT * FROM `languages` ORDER BY `version`, `language` ASC;
