--  ------------------------
--  BDD SuperBasket
--  ------------------------

CREATE DATABASE SuperBasket;

USE SuperBasket;

--  ------------------------
--  CREATION DES TABLES
--  ------------------------

CREATE TABLE Client (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(50) NOT NULL,
    prenom VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    ville VARCHAR(75) NOT NULL,
    telephone CHAR(10) NOT NULL,
    id_produit INT
);

CREATE TABLE Produit (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(50) NOT NULL,
    image TEXT NOT NULL,
    description VARCHAR(255) NOT NULL,
    prix FLOAT UNSIGNED NOT NULL,
    couleur VARCHAR(25) NOT NULL,
    id_commande INT
);

CREATE TABLE Commande (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    date_achat DATE,
    heure_achat TIMESTAMP,
    id_produit INT,
    id_client INT
);

--  ------------------------
--  INSERTION DES DONNEES
--  ------------------------

INSERT INTO client VALUES
(NULL,  "ABDALLAH"  ,   "Mourad"    ,   "abdallah.mourad@example.com"   ,  "Paris"      ,    "0612345678",   1),
(NULL,  "BENARZID"  ,   "Abdel"     ,   "benarzid.abdel@example.com"    ,  "Paris"      ,    "0724681012",   1),
(NULL,  "DEMBELE"   ,   "Oussman"   ,   "dembele.oussman@example.com"   ,  "Caen"       ,    "0636912156",   2),
(NULL,  "LAOUARI"   ,   "Nassima"   ,   "laouari.nassima@example.com"   ,  "Rouen"      ,    "0748121620",   2),
(NULL,  "MARTIN"    ,   "Flora"     ,   "martin.flora@example.com"      ,  "Bordeaux"   ,    "0651015204",   3),
(NULL,  "MOUGHTADIN",   "Dounia"    ,   "moughtadin.dounia@example.com" ,  "Bordeaux"   ,    "0761218248",   3),
(NULL,  "DELAVEINE" ,   "Bastien"   ,   "delaveine.bastien@example.com" ,  "Versailles" ,    "0671421282",   4),
(NULL,  "DELAVEINE" ,   "Claire"    ,   "delaveine.claire@example.com"  ,  "Versailles" ,    "0781624326",   4),
(NULL,  "ABDALLAH"  ,   "Myriam"    ,   "abdallah.myriam@example.com"   ,  "Paris"      ,    "0691827360",   5);