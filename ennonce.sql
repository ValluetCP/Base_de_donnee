/**
* Objectif : Créer dans PHPMyAdmin une base de données haribo dont la modélisation est ci-dessous, les étapes sont détaillées ensuite.
*/

/**
+---------------+----------------+------+------+---------+----------------+
| Field         | Type           | Null | Key  | Default | Extra          |
+---------------+----------------+------+------+---------+----------------+
| id_stagiaire  | int(11)        | NO   | PRI  | NULL    | auto_increment |
| prenom        | varchar(100)   | NO   |      | NULL    |                |
| yeux          | varchar(30)    | NO   |      | NULL    |                |
| genre         | enum('h','f')  | NO   |      | NULL    |                |
+---------------+----------------+------+------+---------+----------------+

+---------------+----------------+------+------+---------+----------------+
| Field         | Type           | Null | Key  | Default | Extra          |
+---------------+----------------+------+------+---------+----------------+
| id_bonbon     | int(11)        | NO   | PRI  | NULL    | auto_increment |
| nom           | varchar(100)   | NO   |      | NULL    |                |
| saveur        | varchar(100)   | NO   |      | NULL    |                |
+---------------+----------------+------+------+---------+----------------+
 
+---------------+----------------+------+------+---------+----------------+
| Field         | Type           | Null | Key  | Default | Extra          |
+---------------+----------------+------+------+---------+----------------+
| id_manger     | int(11)        | NO   | PRI  | NULL    | auto_increment |
| id_bonbon     | int(11)        | YES  |      | NULL    |                |
| id_stagiaire  | int(11)        | YES  |      | NULL    |                |
| date_manger   | date           | NO   |      | NULL    |                |
| quantite      | int(11)        | NO   |      | NULL    |                |
+---------------+----------------+------+------+---------+----------------+

*/

/**
* REQUETES A EFFECTUER dans le SHELL
*/

--0-- Se connecter au serveur MySQL en tant qu'utilisateur
mysql -u VOTRE_UTILISATEUR -p
-- ou se connecter au serveur MySQL et sélectionner directement la base de données "haribo"
mysql -u VOTRE_UTILISATEUR -p haribo


--1-- lister toutes les BDD de PHPMyAdmin
SHOW DATABASES;

--2-- Créer une base de données SQL nommée HARIBO
CREATE DATABASE nom_de_la_base_de_donnees;
CREATE DATABASE HARIBO;
-- Sélectionnez la base de données nouvellement créée pour y travailler dessus :
USE HARIBO;

--3--
/**
* créer une table stagiaire
* qui comporte 3 champs :
* - id_stagiaire => nombre qui s'auto-incrémente, requis et clé primaire
* - prenom => 100 caractères, requis
* - couleur des yeux => 30 caractères, requis
* - genre => homme ou femme, requis
*/
/* TABLE STAGIAIRES */
CREATE TABLE stagiaire (
    id INT AUTO_INCREMENT PRIMARY KEY,
    prenom VARCHAR(100) NOT NULL,
    yeux VARCHAR(30) NOT NULL,
    genre ENUM('homme', 'femme') NOT NULL
);
-- Explications :

/*Le champ "id" est de type INT et sera auto-incrémenté avec la clé primaire.
Le champ "prenom" est de type VARCHAR(100) et doit être non nul (NOT NULL).
Le champ "yeux" est de type VARCHAR(30) et doit être non nul (NOT NULL).
Le champ "genre" est de type ENUM et ne peut contenir que les valeurs "homme" ou "femme", il doit également être non nul (NOT NULL).*/


--4--
/**
* insérer dans cette table les informations de votre groupe (faites un copier-coller des lignes ci-dessous) :
*/
INSERT INTO stagiaires (prenom, yeux, genre) VALUES ('Jordan', 'marron','h');
-- Explications :

/*
- INSERT INTO est utilisé pour insérer des données dans une table recommandée.
- stagiaire est le nom de la table dans laquelle nous voulons insérer les données.
- (prenom, yeux, genre)précisez les colonnes dans lesquelles nous insérons les données.
- VALUES ('Jean', 'Bleu', 'homme')préciser les valeurs que nous voulons insérer dans les colonnes respectives. Chaque valeur correspond à une colonne dans l'ordre indiqué.
Si vous souhaitez insérer plusieurs enregistrements en une seule fois, vous pouvez utiliser la syntaxe suivante avec plusieurs ensembles de valeurs séparés par des virgules : */
INSERT INTO stagiaire (prenom, yeux, genre) VALUES
    ('Jean', 'Bleu', 'homme'),
    ('Marie', 'Vert', 'femme'),
    ('Pierre', 'Marron', 'homme');
-- Après avoir effectué ces commandes, les données seront insérées dans la table "stagiaire" de la base de données "HARIBO". Vous pouvez vérifier que les données enregistrées ont été insérées en utilisant une requête SELECT pour afficher les données de la table :
SELECT * FROM stagiaire;

-- Remplir la table stagiaire avec tous les éléments suivants :

INSERT INTO stagiaires (id, prenom, yeux, genre) VALUES (40, 'jhordan', 'marron','m');
INSERT INTO stagiaires (prenom, yeux, genre) VALUES ('MohamedA', 'marron','m');
INSERT INTO stagiaires (prenom, yeux, genre) VALUES ('Anas', 'marron','m');
INSERT INTO stagiaires (prenom, yeux, genre) VALUES ('MohamedB', 'marron','m');
INSERT INTO stagiaires (prenom, yeux, genre) VALUES ('Mehdi', 'marron','m');
INSERT INTO stagiaires (prenom, yeux, genre) VALUES ('Mathieu', 'marron','m');
INSERT INTO stagiaires (prenom, yeux, genre) VALUES ('Hakim', 'marron','m');
INSERT INTO stagiaires (prenom, yeux, genre) VALUES ('Sonia', 'marron','f');
INSERT INTO stagiaires (prenom, yeux, genre) VALUES ('Julie', 'marron','f');
INSERT INTO stagiaires (prenom, yeux, genre) VALUES ('Assa', 'marron','f');
INSERT INTO stagiaires (prenom, yeux, genre) VALUES ('Magalie', 'marron','f');
INSERT INTO stagiaires (prenom, yeux, genre) VALUES ('Yvette', 'marron','f');



--5--
/**
* créer une table bonbon
* qui comporte 3 champs :
* - id_bonbon => nombre qui s'auto-incrémente, requis et clé primaire
* - nom => 100 caractères, requis
* - saveur => 100 caractères, requis
*/
/* TABLE BONBONS */
CREATE TABLE bonbons(id INT(11) PRIMARY KEY AUTO_INCREMENT NOT NULL, nom varchar(100) NOT NULL, saveur varchar(100) NOT NULL);


--6--
/**
* insérer dans cette table des bonbons haribo (faites un copier-coller des lignes ci-dessous) :
*/
INSERT INTO bonbons (nom, saveur) VALUES ('dragibus', 'mûre');

-- Remplir la table bonbons avec tous les éléments suivants :

INSERT INTO bonbons (nom, saveur) VALUES ('dragibus', 'cola');
INSERT INTO bonbons (nom, saveur) VALUES ('tagada', 'fraise');
INSERT INTO bonbons (nom, saveur) VALUES ('bams', 'banane');
INSERT INTO bonbons (nom, saveur) VALUES ('rotella', 'reglisse');
INSERT INTO bonbons (nom, saveur) VALUES ('floppys', 'sucre');
INSERT INTO bonbons (nom, saveur) VALUES ('rainbollows', 'marshmallow');
INSERT INTO bonbons (nom, saveur) VALUES ('bigharri', 'cerise');
INSERT INTO bonbons (nom, saveur) VALUES ('oursor', 'fruits');
INSERT INTO bonbons (nom, saveur) VALUES ('croco', 'fruits');
INSERT INTO bonbons (nom, saveur) VALUES ('oeufoplat', 'guimauve');
INSERT INTO bonbons (nom, saveur) VALUES ('flanbotti', 'caramel');


--7--
/**
* créer une table manger
* qui comporte 5 champs :
* - id_manger => nombre qui s'auto-incrémente, requis et clé primaire
* - id_stagiaire => champs de la table stagiaire (la structure de la colonne doit être identique à celle crée dans la table où il est clef primaire, ne pas mettre les paramètres lié à la spécificité clef primaire)
* - id_bonbon => champs de la table bonbon (idem)
* - date_manger => type date, requis
* - quantite => nombre, requis
*/
/* TABLE BONBON MANGÉS PAR LES STAGIAIRES nommé CANDISPLAY */
CREATE TABLE candisplay(id INT(11) PRIMARY KEY AUTO_INCREMENT NOT NULL, id_bonbon INT(11) DEFAULT NULL, id_stagiaire INT(11) DEFAULT NULL, date_manger DATE NOT NULL, quantite INT(11) NOT NULL);

-- Remplir la table CANDISPLAY avec tous les éléments suivants :
INSERT INTO candisplay (id_bonbon, id_stagiaire, date_manger, quantite) VALUES (4,7,'2018-12-20', 5);
INSERT INTO candisplay (id_bonbon, id_stagiaire, date_manger, quantite) VALUES (1,1,'2018-12-05', 5);
INSERT INTO candisplay (id_bonbon, id_stagiaire, date_manger, quantite) VALUES (2,2,'2018-12-03', 5);
INSERT INTO candisplay (id_bonbon, id_stagiaire, date_manger, quantite) VALUES (3,3,'2018-12-04', 5);
INSERT INTO candisplay (id_bonbon, id_stagiaire, date_manger, quantite) VALUES (5,4,'2018-12-15', 5);
INSERT INTO candisplay (id_bonbon, id_stagiaire, date_manger, quantite) VALUES (6,5,'2018-12-18', 5);
INSERT INTO candisplay (id_bonbon, id_stagiaire, date_manger, quantite) VALUES (7,6,'2018-12-22', 5);
INSERT INTO candisplay (id_bonbon, id_stagiaire, date_manger, quantite) VALUES (8,8,'2018-12-25', 5);
INSERT INTO candisplay (id_bonbon, id_stagiaire, date_manger, quantite) VALUES (9,9,'2018-12-24', 5);
INSERT INTO candisplay (id_bonbon, id_stagiaire, date_manger, quantite) VALUES (10,10,'2018-12-01', 5);
INSERT INTO candisplay (id_bonbon, id_stagiaire, date_manger, quantite) VALUES (11,11,'2018-12-06', 5);



--8--
/**
* insérer dans la table manger des informations sur qui a consommé quel bonbon, quand et dans quelles quantités (faites un copier-coller des lignes ci-dessous) :
*/
INSERT INTO manger (id_bonbon, id_stagiaire, date_manger, quantite) VALUES (4,7,'2018-09-20', 5);


--9-- Lister les tables de la BDD *haribo*
-- si nous ne sommes pas déjà dans la bbd *haribo*
mysql -u VOTRE_UTILISATEUR -p haribo
-- puis utilisez la commande SQL SHOW TABLES pour afficher la liste des tables contenues dans cette base de données
SHOW TABLES;


--10-- voir les paramètres (structure) de la table MySQL *bonbon*, vous pouvez utiliser la commande SQL DESCRIBE ou SHOW COLUMNS FROM
DESCRIBE nom_de_la_table;
-- Explication : Cette commande affichera les informations concernant les colonnes de la table, y compris le nom de la colonne, le type de données, s'il s'agit d'une clé primaire, s'il autorise les valeurs NULL, etc.
SHOW COLUMNS FROM nom_de_la_table;
-- Explication : Ces deux commandes SQL vous permettent d'afficher les paramètres et la structure de la table affichée dans la base de données MySQL. Vous pouvez utiliser l'une ou l'autre de ces commandes en fonction de votre préférence.



--11-- Sélectionner tous les champs de tous les enregistrements de la table *stagiaire*
SELECT * FROM stagiaires;
-- Cette commande récupérera toutes les colonnes (champs) de tous les enregistrés (lignes) présents dans la table "stagiaires".


--12-- Rajouter un nouveau stagiaire *Patriiiick* en forçant la numérotation de l'id
INSERT INTO stagiaires (id, prenom, yeux, genre) VALUES ('35', 'Patriiiick', 'marron', 'm');


--13-- Rajouter un nouveau stagiaire *Mila* SANS forcer la numérotation de l'id
INSERT INTO stagiaires (prenom, yeux, genre) VALUES ('Mila', 'bleu', 'f');


--14-- Changer le prénom du stagiaire qui a l'id 100 de *Patriiiick* à *Patrick*
UPDATE stagiaires
SET prenom = 'Patrick'
WHERE id = 100;


--15-- Rajouter dans la table manger que Patrick a mangé 5 Tagada purpule le 15 septembre

--16-- Sélectionner tous les noms des bonbons

--17-- Sélectionner tous les noms des bonbons en enlevant les doublons

--18-- Récupérer les couleurs des yeux des stagiaires (Sélectionner plusieurs champs dans une table)

--19-- Dédoublonner un résultat sur plusieurs champs

--20-- Sélectionner le stagiaire qui a l'id 5

--21-- Sélectionner tous les stagiaires qui ont les yeux marrons

--22-- Sélectionner tous les stagiaires dont l'id est plus grand que 9

--23-- Sélectionner tous les stagiaires SAUF celui dont l'id est 13 (soyons supersticieux !) :!\ il y a 2 façons de faire


--24-- Sélectionner tous les stagiaires qui ont un id inférieur ou égal à 10

--25-- Sélectionner tous les stagiaires dont l'id est compris entre 7 et 11

--26-- Sélectionner les stagiaires dont le prénom commence par un *S*

--27-- Trier les stagiaires femmes par id décroissant

--28-- Trier les stagiaires hommes par prénom dans l'ordre alphabétique

--29-- Trier les stagiaires en affichant les femmes en premier et en classant les couleurs des yeux dans l'ordre alphabétique

--30-- Limiter l'affichage d'une requête de sélection de tous les stagiaires aux 3 premires résultats
SELECT * FROM stagiaires LIMIT 0, 3;
-- SELECT * FROM stagiaires LIMIT 3;

--31-- Limiter l'affichage d'une requête de sélection de tous les stagiaires à partir du 3ème résultat et des 5 suivants
SELECT * FROM stagiaires LIMIT 5 OFFSET 2;
-- ou SELECT * FROM stagiaires LIMIT 2, 5;

--32-- Afficher les 4 premiers stagiaires qui ont les yeux marron
SELECT * FROM stagiaires WHERE yeux = 'marron' LIMIT 4;

--33-- Pareil mais en triant les prénoms dans l'ordre alphabétique
SELECT * FROM stagiaires WHERE yeux = 'marron' ORDER BY prenom ASC LIMIT 4;

--34-- Compter le nombre de stagiaires
SELECT COUNT(*) AS nombre_stagiaires FROM stagiaires;
-- AS : attribuer un nom au tableau
-- COUNT(*) : compter le nombre
--35-- Compter le nombre de stagiaires hommes mais en changeant le nom de la colonne de résultat par *nb_stagiaires_H*
SELECT COUNT(*) AS nb_stagiaires_H FROM stagiaires WHERE genre = 'm';

--36-- Compter le nombre de couleurs d'yeux différentes
SELECT COUNT(DISTINCT yeux) AS couleurs_de_yeux FROM stagiaires;
-- DISTINCT : enlève les doublons. Trie par espèce, sorte. Va donner le nbr de sorte différent.

--37-- Afficher le prénom et les yeux du stagiaire qui a l'id le plus petit
SELECT `prenom`, `yeux` FROM stagiaires ORDER BY id ASC LIMIT 1;
-- ou SELECT MIN(id),prenom, yeux FROM `stagiaires`;
-- ou SELECT prenom, yeux FROM stagiaires WHERE id = ( SELECT MIN(id) FROM stagiaires );
-- ou SELECT prenom, yeux FROM stagiaires WHERE ( SELECT MIN(id) FROM stagiaires ) LIMIT 1;

--38-- Afficher le prénom et les yeux du stagiaire qui a l'id le plus grand /!\ c'est une requête imbriquée qu'il faut faire (requête sur le résultat d'une autre requête)
SELECT prenom, yeux FROM stagiaires WHERE id = ( SELECT MAX(id) FROM stagiaires );
-- ou SELECT `prenom`, `yeux` FROM stagiaires ORDER BY id DESC LIMIT 1;

--39-- Afficher les stagiaires qui ont les yeux bleu et vert
SELECT * FROM stagiaires WHERE yeux IN ('bleu', 'vert');
-- ou SELECT * FROM stagiaires WHERE yeux LIKE "bleu" <> yeux LIKE "vert";
-- LIKE : trie les chaînes de caractère 
-- LIKE (%m) : Trie tous les mots qui finissent par un "m"
-- <> : pour AND car sinon ce n'est pas pris en compte

--40-- A l'inverse maintenant, afficher les stagiaires qui n'ont pas les yeux bleu ni vert
SELECT * FROM stagiaires WHERE yeux NOT IN ('bleu', 'vert');
-- ou SELECT * FROM stagiaires WHERE NOT (yeux='bleu'OR yeux='vert');
-- ou SELECT * FROM stagiaires WHERE yeux!='bleu' AND yeux!='vert';
-- SELECT * FROM `stagiaires` WHERE yeux <> 'bleu' and yeux <>'vert';


-- // Récupérer les données dans plusieurs tables par les jointures "JOIN": https://sql.sh/cours/jointures //

--41-- récupérer tous les stagiaires avec le détail de leurs consommations de bonbons
-- récupérer tous les stagiaires, même ceux qui n'ont mangé de bonbons, avec le détail de leurs consommations de bonbons
SELECT * FROM stagiaires LEFT JOIN candisplay ON stagiaires.id = candisplay.id_stagiaire LEFT JOIN bonbons ON bonbons.id = candisplay.id_bonbon;

--42-- récupérer que les stagiaires qui ont mangé des bonbons, avec le détail de leurs consommations

--43-- prénom du stagiaire, le nom du bonbon, la date de consommation pour tous les stagiaires qui ont mangé au moins une fois

--44-- Afficher les quantités consommées par les stagiaires (uniquement ceux qui ont mangé !)

--45-- Calculer combien de bonbons ont été mangés au total par chaque stagiaire et afficher le nombre de fois où ils ont mangé

--46-- Afficher combien de bonbons ont été consommés au total

--47-- Afficher le total de *Tagada* consommées

--48-- Afficher les prénoms des stagiaires qui n'ont rien mangé

--49-- Afficher les saveurs des bonbons (sans doublons)

--50-- Afficher le prénom du stagiaire qui a mangé le plus de bonbons