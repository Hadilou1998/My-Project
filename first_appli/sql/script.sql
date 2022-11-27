--  ------------------------
--  BDD SuperBasket
--  ------------------------

DROP DATABASE SuperBasket;

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
    montant FLOAT UNSIGNED NOT NULL,
    date_enregistrement DATETIME NOT NULL,
    etat ENUM('en cours de traitement', 'envoyé', 'livré') NOT NULL,    
) ENGINE=InnoDB;

CREATE TABLE detail_commande (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    id_commande INT NULL DEFAULT NULL,
    id_produit INT NULL DEFAULT NULL,
    quantite FLOAT UNSIGNED NOT NULL,
    prix FLOAT UNSIGNED NOT NULL
) ENGINE=InnoDB;

--  ------------------------
--  INSERTION DES DONNEES
--  ------------------------

INSERT INTO client VALUES
(NULL,  'ABDALLAH'  ,   'Mourad'    ,   'abdallah.mourad@example.com'   ,   'Paris'     ,   '0612345678',   1),
(NULL,  'BENARZID'  ,   'Abdel'     ,   'benarzid.abdel@example.com'    ,   'Paris'     ,   '0724681012',   1),
(NULL,  'DEMBELE'   ,   'Oussman'   ,   'dembele.oussman@example.com'   ,   'Caen'      ,   '0636912156',   2),
(NULL,  'LAOUARI'   ,   'Nassima'   ,   'laouari.nassima@example.com'   ,   'Rouen'     ,   '0748121620',   2),
(NULL,  'MARTIN'    ,   'Flora'     ,   'martin.flora@example.com'      ,   'Bordeaux'  ,   '0651015204',   3),
(NULL,  'MOUGHTADIN',   'Dounia'    ,   'moughtadin.dounia@example.com' ,   'Bordeaux'  ,   '0761218248',   3),
(NULL,  'DELAVEINE' ,   'Bastien'   ,   'delaveine.bastien@example.com' ,   'Versailles',   '0671421282',   4),
(NULL,  'DELAVEINE' ,   'Claire'    ,   'delaveine.claire@example.com'  ,   'Versailles',   '0781624326',   4),
(NULL,  'ABDALLAH'  ,   'Myriam'    ,   'abdallah.myriam@example.com'   ,   'Paris'     ,   '0691827360',   5),
(NULL,  'LEMAITRE'  ,   'Adrien'    ,   'lemaitre.adrien@example.com'   ,   'Rouen'     ,   '0710203044',   5);


INSERT INTO produit VALUES
(NULL,  'DZ5485-303',   'chaussures',   'Air Jordan 1 Retro High OG Celtics',   'Chaussures Air Jordan 1 pour homme aux couleurs des Celtics de Boston'     ,   'Green' ,   40  ,   'm'     ,   'air-jordan-1-retro-high-og-gorge-green-dz5485-303.jpg' ,   179.99  ,   1),
(NULL,  'GV9586'    ,   'chaussures',   'Adidas Harden Vol.6 Taxi'          ,   'Chaussures Adidas Harden pour adulte mixte'                                ,   'Yellow',   40  ,   'mixte' ,   'adidas-harden-vol-6-taxi-gv9586.jpg'                   ,   150.00  ,   2),                 
(NULL,  'DD9538-013',   'chaussures',   'Nike KD Trey 5 X Team Durant'      ,   'Basketball Shoes pour femme tout age'                                      ,   'Purple',   38  ,   'f'     ,   'nike-kd-trey-5-x-team-durant.jpg'                      ,   100.00  ,   2),        
(NULL,  'GX3881'    ,   'chaussures',   'Reebok Shaq Attaq Orlando OG'      ,   'Chaussures Reebok Pump Shaq Attaq pour adulte mixte'                       ,   'White' ,   42  ,   'mixte' ,   'reebok-shaq-attaq-orlando-og-nba-gx3881.jpg'           ,   171.00  ,   2),
(NULL,  'DN1772-104',   'chaussures',   'Jordan Luka 1 Legend of 7'         ,   'Chaussures signature de Luka Doncic pour femme aux couleurs bleu turquoise',   'Blue'  ,   36  ,   'mixte' ,   'jordan-luka-1-neo-turquoise-dn1772-104.jpg'            ,   110.00  ,   1);

INSERT INTO commande VALUES
(NULL,  NULL,   179.99  ,   '2022-12-01 13:13:13'   ,   'en cours de traitement'),
(NULL,  NULL,   179.99  ,   '2022-11-28 11:11:11'   ,   'envoyé'                ),
(NULL,  NULL,   150.00  ,   '2022-11-29 10:10:10'   ,   'livré'                 ),
(NULL,  NULL,   150.00  ,   '2022-11-30 09:09:09'   ,   'en cours de traitement'),
(NULL,  NULL,   100.00  ,   '2022-11-28 08:08:08'   ,   'envoyé'                ),
(NULL,  NULL,   100.00  ,   '2022-11-29 12:12:12'   ,   'livré'                 ),
(NULL,  NULL,   192.83  ,   '2022-12-02 11:11:11'   ,   'en cours de traitement'),
(NULL,  NULL,   192.83  ,   '2022-11-30 10:10:10'   ,   'envoyé'                ),
(NULL,  NULL,   110.00  ,   '2022-11-29 09:09:09'   ,   'livré'                 ),
(NULL,  NULL,   110.00  ,   '2022-12-03 08:08:08'   ,   'en cours de traitement');

INSERT INTO detail_commande VALUES
(NULL,  NULL,   NULL,   4,  179.99),
(NULL,  NULL,   NULL,   4,  179.99),
(NULL,  NULL,   NULL,   5,  150.00),
(NULL,  NULL,   NULL,   5,  150.00),
(NULL,  NULL,   NULL,   6,  100.00),
(NULL,  NULL,   NULL,   6,  100.00),
(NULL,  NULL,   NULL,   7,  192.83),
(NULL,  NULL,   NULL,   7,  192.83),
(NULL,  NULL,   NULL,   8,  110.00),
(NULL,  NULL,   NULL,   8,  110.00);