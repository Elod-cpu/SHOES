CREATE DATABASE shoes;

USE allshoes;

CREATE USER 'hello'@'localhost' IDENTIFIED BY 'pass';

SELECT User, Host FROM mysql.user;


CREATE TABLE clients(
    clientID int NOT NULL,
    OrderNumber int NOT NULL,
    nom VARCHAR (150) NOT NULL,
    prenom VARCHAR (75) NOT NULL,
    contact int(11) NOT NULL,
    ville VARCHAR (45) NOT NULL,
    PRIMARY KEY (ClientID)
)ENGINE=Innodb DEFAULT CHARSET=utf8;

CREATE TABLE commandes(
  id_commande int(9) NOT NULL AUTO_INCREMENT,
  ClientID int(9) NOT NULL,
  date varchar(10) NOT NULL,
  PRIMARY KEY (id_commande),
  FOREIGN KEY (ClientID) REFERENCES clients(ClientID)
) ENGINE=Innodb DEFAULT CHARSET=utf8;


CREATE TABLE marque (
    id_marque INTEGER NOT NULL AUTO_INCREMENT,
    nom_de_la_marque VARCHAR (100),
    logo VARCHAR (100),
    PRIMARY KEY (id_marque)
) ENGINE=Innodb DEFAULT CHARSET=utf8;

CREATE TABLE chaussures (
    id_chaussures INTEGER NOT NULL AUTO_INCREMENT,
    id_marque int NOT NULL,
    couleur VARCHAR (100),
    taille VARCHAR (100),
    prix VARCHAR (100),
    PRIMARY KEY (id_chaussures),
    FOREIGN KEY (id_marque) REFERENCES marque(id_marque)
) ENGINE=Innodb DEFAULT CHARSET=utf8;

CREATE TABLE listCommandes (
  id_commande int(9) NOT NULL,
  id_chaussures int(9) NOT NULL,
  quantité int(3) NOT NULL,
  FOREIGN KEY (id_commande) REFERENCES commandes(id_commande)
) ENGINE=Innodb DEFAULT CHARSET=utf8;

INSERT INTO `marques` (`id_marque`,`nom_de_la_marque`, `logo`)
VALUES
(NULL, 'NIKE', 'Nike-Logo'),
(NULL, 'PUMA', 'Puma-Logo.png'),
(NULL, 'ASICS', 'Asics-Logo.png');

INSERT INTO `chaussures` (`id_chaussures`,`id_marque`, `couleur`, `taille`, `prix`)
VALUES
(NULL, 2, 'rose', '38', '15000f'),
(NULL, 1, 'blanche', '42', '25000f'),
(NULL, 3, 'noire', '37', '55000f');