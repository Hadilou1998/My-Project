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
    adresse VARCHAR(100) NOT NULL,
    ville VARCHAR(75) NOT NULL,
    telephone CHAR(10) NOT NULL,
    id_produit INT
);

CREATE TABLE Produit (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(50) NOT NULL,
    description VARCHAR(255) NOT NULL,
    prix DECIMAL(7, 2) NOT NULL,
    couleur VARCHAR(25) NOT NULL,
    id_commande INT
);

CREATE TABLE Commande (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    date_achat DATE,
    heure_achat TIMESTAMP,
);