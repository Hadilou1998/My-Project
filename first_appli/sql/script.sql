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
) ENGINE=InnoDB;

CREATE TABLE Produit (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    reference VARCHAR(20) NOT NULL,
    categorie VARCHAR(20) NOT NULL,
    titre VARCHAR(100) NOT NULL,   
    description TEXT NOT NULL,
    couleur VARCHAR(25) NOT NULL,
    taille INT NOT NULL,
    public ENUM('m','f','mixte') NOT NULL,
    image TEXT NOT NULL,
    prix FLOAT UNSIGNED NOT NULL,
    stock FLOAT UNSIGNED NOT NULL,    
    UNIQUE (reference)
) ENGINE=InnoDB;

CREATE TABLE Commande (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    id_client INT NULL DEFAULT NULL,
    montant INT NOT NULL,
    date_enregistrement DATETIME NOT NULL,
    etat ENUM('en cours de traitement', 'envoyé', 'livré') NOT NULL,    
) ENGINE=InnoDB;

CREATE TABLE detail_commande (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    id_commande INT NULL DEFAULT NULL,
    id_produit INT NULL DEFAULT NULL,
    quantite INT NOT NULL,
    prix INT NOT NULL
) ENGINE=InnoDB;

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

INSERT INTO produit VALUES
(NULL,  'DZ5485-303',   'chaussures',   'Air Jordan 1 Retro High OG Celtics',   'Chaussures Air Jordan 1 pour homme aux couleurs des Celtics de Boston' ,   'Green' ,   40  ,   'm' ,   'air-jordan-1-retro-high-og-gorge-green-dz5485-303.jpg' , 180.00,   1),
(),                 
(),
(),
();
