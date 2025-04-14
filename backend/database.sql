-- Création de la table pour les médicaments génériques
CREATE TABLE medicaments_generiques (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nom_generique TEXT NOT NULL,
    sp_gref_datecr DATE, -- Date de création
    sp_datejogene DATE, -- Date de parution au journal officiel
    gen_ref INTEGER -- ID de référence de groupe
);

-- Création de la table pour les médicaments spécialités
CREATE TABLE medicaments_specialites (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nom_commercial TEXT NOT NULL,
    prix REAL NOT NULL,
    laboratoire TEXT NOT NULL
);

-- Création de la table intermédiaire pour la relation n-n
CREATE TABLE generiques_specialites (
    id_generique INTEGER NOT NULL,
    id_specialite INTEGER NOT NULL,
    PRIMARY KEY (id_generique, id_specialite),
    FOREIGN KEY (id_generique) REFERENCES medicaments_generiques (id),
    FOREIGN KEY (id_specialite) REFERENCES medicaments_specialites (id)
);

-- Exemple d'insertion de données dans la table des médicaments génériques
INSERT INTO medicaments_generiques (nom_generique, sp_gref_datecr, sp_datejogene, gen_ref) 
VALUES ('Paracétamol', '2023-01-01', '2023-02-01', 101);
INSERT INTO medicaments_generiques (nom_generique, sp_gref_datecr, sp_datejogene, gen_ref) 
VALUES ('Ibuprofène', '2023-03-01', '2023-04-01', 102);

-- Exemple d'insertion de données dans la table des médicaments spécialités
INSERT INTO medicaments_specialites (nom_commercial, prix, laboratoire) VALUES ('Doliprane', 2.5, 'Sanofi');
INSERT INTO medicaments_specialites (nom_commercial, prix, laboratoire) VALUES ('Efferalgan', 3.0, 'UPSA');
INSERT INTO medicaments_specialites (nom_commercial, prix, laboratoire) VALUES ('Nurofen', 4.5, 'Reckitt Benckiser');
INSERT INTO medicaments_specialites (nom_commercial, prix, laboratoire) VALUES ('Advil', 4.0, 'Pfizer');

-- Exemple d'insertion de données dans la table intermédiaire
INSERT INTO generiques_specialites (id_generique, id_specialite) VALUES (1, 1);
INSERT INTO generiques_specialites (id_generique, id_specialite) VALUES (1, 2);
INSERT INTO generiques_specialites (id_generique, id_specialite) VALUES (2, 3);
INSERT INTO generiques_specialites (id_generique, id_specialite) VALUES (2, 4);