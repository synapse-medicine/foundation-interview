-- Création des tables
DROP TABLE IF EXISTS generiques_specialites;

DROP TABLE IF EXISTS medicaments_specialites;

DROP TABLE IF EXISTS medicaments_generiques;

-- Création des tables
CREATE TABLE medicaments_generiques (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nom_generique TEXT NOT NULL,
    sp_gref_datecr DATE,
    sp_datejogene DATE,
    gen_ref INTEGER
);

CREATE TABLE medicaments_specialites (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nom_commercial TEXT NOT NULL,
    prix REAL NOT NULL,
    laboratoire TEXT NOT NULL
);

CREATE TABLE generiques_specialites (
    id_generique INTEGER NOT NULL,
    id_specialite INTEGER NOT NULL,
    PRIMARY KEY (id_generique, id_specialite),
    FOREIGN KEY (id_generique) REFERENCES medicaments_generiques (id),
    FOREIGN KEY (id_specialite) REFERENCES medicaments_specialites (id)
);

-- Insertion des médicaments génériques
INSERT INTO
    medicaments_generiques (
        nom_generique,
        sp_gref_datecr,
        sp_datejogene,
        gen_ref
    )
VALUES
    ('Paracétamol', '2021-05-27', '2021-06-06', 1001);

INSERT INTO
    medicaments_generiques (
        nom_generique,
        sp_gref_datecr,
        sp_datejogene,
        gen_ref
    )
VALUES
    ('Ibuprofène', '2021-05-20', '2021-05-27', 1002);

INSERT INTO
    medicaments_generiques (
        nom_generique,
        sp_gref_datecr,
        sp_datejogene,
        gen_ref
    )
VALUES
    ('Amoxicilline', '2020-12-14', '2020-12-25', 1003);

INSERT INTO
    medicaments_generiques (
        nom_generique,
        sp_gref_datecr,
        sp_datejogene,
        gen_ref
    )
VALUES
    (
        'Acide acétylsalicylique',
        '2022-05-21',
        '2022-06-07',
        1004
    );

INSERT INTO
    medicaments_generiques (
        nom_generique,
        sp_gref_datecr,
        sp_datejogene,
        gen_ref
    )
VALUES
    ('Oméprazole', '2020-01-11', '2020-01-20', 1005);

INSERT INTO
    medicaments_generiques (
        nom_generique,
        sp_gref_datecr,
        sp_datejogene,
        gen_ref
    )
VALUES
    ('Esoméprazole', '2020-08-06', '2020-08-08', 1006);

INSERT INTO
    medicaments_generiques (
        nom_generique,
        sp_gref_datecr,
        sp_datejogene,
        gen_ref
    )
VALUES
    ('Salbutamol', '2022-04-15', '2022-05-02', 1007);

INSERT INTO
    medicaments_generiques (
        nom_generique,
        sp_gref_datecr,
        sp_datejogene,
        gen_ref
    )
VALUES
    ('Lévothyroxine', '2021-05-06', '2021-05-09', 1008);

INSERT INTO
    medicaments_generiques (
        nom_generique,
        sp_gref_datecr,
        sp_datejogene,
        gen_ref
    )
VALUES
    ('Metformine', '2022-07-26', '2022-08-19', 1009);

INSERT INTO
    medicaments_generiques (
        nom_generique,
        sp_gref_datecr,
        sp_datejogene,
        gen_ref
    )
VALUES
    ('Ramipril', '2020-08-23', '2020-09-01', 1010);

INSERT INTO
    medicaments_generiques (
        nom_generique,
        sp_gref_datecr,
        sp_datejogene,
        gen_ref
    )
VALUES
    ('Simvastatine', '2022-02-25', '2022-03-10', 1011);

INSERT INTO
    medicaments_generiques (
        nom_generique,
        sp_gref_datecr,
        sp_datejogene,
        gen_ref
    )
VALUES
    ('Cétirizine', '2022-05-23', '2022-06-19', 1012);

INSERT INTO
    medicaments_generiques (
        nom_generique,
        sp_gref_datecr,
        sp_datejogene,
        gen_ref
    )
VALUES
    ('Loratadine', '2020-06-24', '2020-07-15', 1013);

INSERT INTO
    medicaments_generiques (
        nom_generique,
        sp_gref_datecr,
        sp_datejogene,
        gen_ref
    )
VALUES
    ('Prednisone', '2021-08-28', '2021-09-14', 1014);

INSERT INTO
    medicaments_generiques (
        nom_generique,
        sp_gref_datecr,
        sp_datejogene,
        gen_ref
    )
VALUES
    ('Tramadol', '2021-11-21', '2021-12-01', 1015);

INSERT INTO
    medicaments_generiques (
        nom_generique,
        sp_gref_datecr,
        sp_datejogene,
        gen_ref
    )
VALUES
    ('Codéine', '2022-04-29', '2022-05-01', 1016);

INSERT INTO
    medicaments_generiques (
        nom_generique,
        sp_gref_datecr,
        sp_datejogene,
        gen_ref
    )
VALUES
    ('Hydroxyzine', '2021-03-11', '2021-03-25', 1017);

INSERT INTO
    medicaments_generiques (
        nom_generique,
        sp_gref_datecr,
        sp_datejogene,
        gen_ref
    )
VALUES
    ('Dompéridone', '2021-12-29', '2022-01-12', 1018);

INSERT INTO
    medicaments_generiques (
        nom_generique,
        sp_gref_datecr,
        sp_datejogene,
        gen_ref
    )
VALUES
    ('Diazépam', '2021-10-07', '2021-10-10', 1019);

INSERT INTO
    medicaments_generiques (
        nom_generique,
        sp_gref_datecr,
        sp_datejogene,
        gen_ref
    )
VALUES
    ('Alprazolam', '2021-08-14', '2021-08-24', 1020);

-- Insertion des spécialités
INSERT INTO
    medicaments_specialites (nom_commercial, prix, laboratoire)
VALUES
    ('Doliprane', 13.47, 'Sanofi');

INSERT INTO
    medicaments_specialites (nom_commercial, prix, laboratoire)
VALUES
    ('Efferalgan', 11.83, 'UPSA');

INSERT INTO
    medicaments_specialites (nom_commercial, prix, laboratoire)
VALUES
    ('Dafalgan', 5.65, 'Bayer');

INSERT INTO
    medicaments_specialites (nom_commercial, prix, laboratoire)
VALUES
    ('Nurofen', 5.64, 'GSK');

INSERT INTO
    medicaments_specialites (nom_commercial, prix, laboratoire)
VALUES
    ('Spifen', 13.6, 'Janssen');

INSERT INTO
    medicaments_specialites (nom_commercial, prix, laboratoire)
VALUES
    ('Clamoxyl', 1.85, 'Sanofi');

INSERT INTO
    medicaments_specialites (nom_commercial, prix, laboratoire)
VALUES
    ('Augmentin', 14.62, 'GSK');

INSERT INTO
    medicaments_specialites (nom_commercial, prix, laboratoire)
VALUES
    ('Aspégic', 6.11, 'Janssen');

INSERT INTO
    medicaments_specialites (nom_commercial, prix, laboratoire)
VALUES
    ('Kardégic', 11.85, 'Pfizer');

INSERT INTO
    medicaments_specialites (nom_commercial, prix, laboratoire)
VALUES
    ('Mopral', 13.92, 'AstraZeneca');

INSERT INTO
    medicaments_specialites (nom_commercial, prix, laboratoire)
VALUES
    ('Losec', 1.03, 'Bayer');

INSERT INTO
    medicaments_specialites (nom_commercial, prix, laboratoire)
VALUES
    ('Inexium', 9.85, 'Bayer');

INSERT INTO
    medicaments_specialites (nom_commercial, prix, laboratoire)
VALUES
    ('Ventoline', 8.66, 'Bayer');

INSERT INTO
    medicaments_specialites (nom_commercial, prix, laboratoire)
VALUES
    ('Lévothyrox', 9.98, 'Pfizer');

INSERT INTO
    medicaments_specialites (nom_commercial, prix, laboratoire)
VALUES
    ('Euthyrox', 1.67, 'GSK');

INSERT INTO
    medicaments_specialites (nom_commercial, prix, laboratoire)
VALUES
    ('Glucophage', 10.13, 'GSK');

INSERT INTO
    medicaments_specialites (nom_commercial, prix, laboratoire)
VALUES
    ('Triatec', 6.7, 'AstraZeneca');

INSERT INTO
    medicaments_specialites (nom_commercial, prix, laboratoire)
VALUES
    ('Zocor', 8.82, 'Teva');

INSERT INTO
    medicaments_specialites (nom_commercial, prix, laboratoire)
VALUES
    ('Zyrtec', 3.06, 'Janssen');

INSERT INTO
    medicaments_specialites (nom_commercial, prix, laboratoire)
VALUES
    ('Clarityne', 10.32, 'Pfizer');

INSERT INTO
    medicaments_specialites (nom_commercial, prix, laboratoire)
VALUES
    ('Cortancyl', 6.19, 'Pfizer');

INSERT INTO
    medicaments_specialites (nom_commercial, prix, laboratoire)
VALUES
    ('Ixprim', 11.52, 'MSD');

INSERT INTO
    medicaments_specialites (nom_commercial, prix, laboratoire)
VALUES
    ('Codoliprane', 13.98, 'Reckitt');

INSERT INTO
    medicaments_specialites (nom_commercial, prix, laboratoire)
VALUES
    ('Atarax', 3.67, 'Pfizer');

INSERT INTO
    medicaments_specialites (nom_commercial, prix, laboratoire)
VALUES
    ('Motilium', 5.8, 'Reckitt');

INSERT INTO
    medicaments_specialites (nom_commercial, prix, laboratoire)
VALUES
    ('Valium', 9.44, 'AstraZeneca');

INSERT INTO
    medicaments_specialites (nom_commercial, prix, laboratoire)
VALUES
    ('Xanax', 6.1, 'Bayer');

-- Associations
INSERT INTO
    generiques_specialites (id_generique, id_specialite)
VALUES
    (1, 1);

-- Paracétamol -> Doliprane
INSERT INTO
    generiques_specialites (id_generique, id_specialite)
VALUES
    (1, 2);

-- Paracétamol -> Efferalgan
INSERT INTO
    generiques_specialites (id_generique, id_specialite)
VALUES
    (1, 3);

-- Paracétamol -> Dafalgan
INSERT INTO
    generiques_specialites (id_generique, id_specialite)
VALUES
    (2, 4);

-- Ibuprofène -> Nurofen
INSERT INTO
    generiques_specialites (id_generique, id_specialite)
VALUES
    (2, 5);

-- Ibuprofène -> Spifen
INSERT INTO
    generiques_specialites (id_generique, id_specialite)
VALUES
    (3, 6);

-- Amoxicilline -> Clamoxyl
INSERT INTO
    generiques_specialites (id_generique, id_specialite)
VALUES
    (3, 7);

-- Amoxicilline -> Augmentin
INSERT INTO
    generiques_specialites (id_generique, id_specialite)
VALUES
    (4, 8);

-- Acide acétylsalicylique -> Aspégic
INSERT INTO
    generiques_specialites (id_generique, id_specialite)
VALUES
    (4, 9);

-- Acide acétylsalicylique -> Kardégic
INSERT INTO
    generiques_specialites (id_generique, id_specialite)
VALUES
    (5, 10);

-- Oméprazole -> Mopral
INSERT INTO
    generiques_specialites (id_generique, id_specialite)
VALUES
    (5, 11);

-- Oméprazole -> Losec
INSERT INTO
    generiques_specialites (id_generique, id_specialite)
VALUES
    (6, 12);

-- Esoméprazole -> Inexium
INSERT INTO
    generiques_specialites (id_generique, id_specialite)
VALUES
    (7, 13);

-- Salbutamol -> Ventoline
INSERT INTO
    generiques_specialites (id_generique, id_specialite)
VALUES
    (8, 14);

-- Lévothyroxine -> Lévothyrox
INSERT INTO
    generiques_specialites (id_generique, id_specialite)
VALUES
    (8, 15);

-- Lévothyroxine -> Euthyrox
INSERT INTO
    generiques_specialites (id_generique, id_specialite)
VALUES
    (9, 16);

-- Metformine -> Glucophage
INSERT INTO
    generiques_specialites (id_generique, id_specialite)
VALUES
    (10, 17);

-- Ramipril -> Triatec
INSERT INTO
    generiques_specialites (id_generique, id_specialite)
VALUES
    (11, 18);

-- Simvastatine -> Zocor
INSERT INTO
    generiques_specialites (id_generique, id_specialite)
VALUES
    (12, 19);

-- Cétirizine -> Zyrtec
INSERT INTO
    generiques_specialites (id_generique, id_specialite)
VALUES
    (13, 20);

-- Loratadine -> Clarityne
INSERT INTO
    generiques_specialites (id_generique, id_specialite)
VALUES
    (14, 21);

-- Prednisone -> Cortancyl
INSERT INTO
    generiques_specialites (id_generique, id_specialite)
VALUES
    (15, 22);

-- Tramadol -> Ixprim
INSERT INTO
    generiques_specialites (id_generique, id_specialite)
VALUES
    (16, 23);

-- Codéine -> Codoliprane
INSERT INTO
    generiques_specialites (id_generique, id_specialite)
VALUES
    (17, 24);

-- Hydroxyzine -> Atarax
INSERT INTO
    generiques_specialites (id_generique, id_specialite)
VALUES
    (18, 25);

-- Dompéridone -> Motilium
INSERT INTO
    generiques_specialites (id_generique, id_specialite)
VALUES
    (19, 26);

-- Diazépam -> Valium
INSERT INTO
    generiques_specialites (id_generique, id_specialite)
VALUES
    (20, 27);

-- Alprazolam -> Xanax
