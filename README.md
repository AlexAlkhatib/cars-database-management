# 🚗 Cars Database Management

**Analyse, gestion et manipulation d’une base de données automobile complète via SQL**

Ce projet regroupe un ensemble d’exercices et de scripts SQL permettant d’explorer, gérer et analyser une base de données dédiée à un réseau de concessions automobiles.
Il couvre aussi bien les requêtes fondamentales que les opérations avancées de création et de jointures entre tables.


## 📦 Présentation du Projet

Le repo contient :

### **1️⃣ Writing SQL Queries**

Entraînement intensif sur les fondations du SQL :

* Sélections : `SELECT *`, `SELECT columns`
* Filtrages : `WHERE`, `AND`, `OR`, `BETWEEN`, `IN`, `LIKE`, `NOT`
* Tri & limites : `ORDER BY`, `LIMIT`
* Agrégations : `COUNT`, `SUM`, `AVG`, `MAX`, `MIN`
* Groupements : `GROUP BY`, `HAVING`
* Manipulation des données : `INSERT`, `UPDATE`, `DELETE`

👉 Objectif : maîtriser toutes les commandes essentielles pour interroger efficacement une base de données.


### **2️⃣ Creating and Joining Tables**

Création et gestion d’un modèle relationnel complet :

* Création de tables (`CREATE TABLE`)
* Modification de structure (`ALTER TABLE`)
* Jointures de tous types :

  * `INNER JOIN`
  * `LEFT JOIN` / `RIGHT JOIN`
  * `FULL JOIN`
* Suppression de tables (`DROP`)
* Jointures multiples
* Agrégations croisées

👉 Objectif : comprendre et manipuler des relations complexes entre plusieurs tables.


## 🗃️ Structure de la Base de Données

Le projet utilise un schéma relationnel composé de **4 tables principales** :

### **🛒 cars**

Stocke les voitures du catalogue.

| Colonne   | Type      | Description                      |
| --------- | --------- | -------------------------------- |
| id        | SERIAL PK | Identifiant unique               |
| brand     | TEXT      | Marque                           |
| model     | TEXT      | Modèle                           |
| year      | INTEGER   | Année                            |
| price     | INTEGER   | Prix                             |
| color     | TEXT      | Couleur                          |
| condition | INTEGER   | État du véhicule (0–5)           |
| sold      | BOOLEAN   | Indique si la voiture est vendue |


### **🏢 dealerships**

Liste les concessions automobiles.

| Colonne     | Type      | Description      |
| ----------- | --------- | ---------------- |
| id          | SERIAL PK | Identifiant      |
| city        | TEXT      | Ville            |
| state       | CHAR(2)   | État             |
| established | DATE      | Date de création |


### **🧑‍🔧 staff**

Liste le personnel de chaque concession.

| Colonne       | Type       | Description                  |
| ------------- | ---------- | ---------------------------- |
| id            | SERIAL PK  | Identifiant                  |
| dealership_id | INTEGER FK | Référence vers `dealerships` |
| name          | TEXT       | Nom du membre                |
| role          | TEXT       | Poste occupé                 |


### **💸 sold_cars**

Historique des ventes réalisées.

| Colonne    | Type       | Description            |
| ---------- | ---------- | ---------------------- |
| id         | SERIAL PK  | Identifiant            |
| cars_id    | INTEGER FK | Référence vers `cars`  |
| seller     | INTEGER FK | Référence vers `staff` |
| sold_date  | DATE       | Date de vente          |
| sold_price | INTEGER    | Prix de vente          |


## 🧪 Contenu Pédagogique

Ce projet te permet d’apprendre :

* À interroger une base de données via des requêtes efficaces
* À analyser des ventes, du personnel et des prix
* À manipuler un schéma SQL complet (CRUD + JOINS)
* À comprendre comment modéliser une base relationnelle professionnelle
* À analyser des données métier (voitures, ventes, équipes, concessions)

C’est un excellent support de progression pour les métiers liés à :
**Data Engineering, Data Analysis, Backend Development, Business Intelligence**.

---

## 🛠️ Exemple de Requêtes

### 🔍 Obtenir toutes les voitures non vendues

```sql
SELECT brand, model, price
FROM cars
WHERE sold = false;
```

### 💼 Trouver les voitures vendues et leur vendeur

```sql
SELECT c.brand, c.model, s.name AS seller_name, sc.sold_price
FROM sold_cars sc
JOIN cars c ON sc.cars_id = c.id
JOIN staff s ON sc.seller = s.id;
```

### 🏙️ Nombre de ventes par concession

```sql
SELECT d.city, COUNT(sc.id) AS total_sales
FROM dealerships d
JOIN staff s ON d.id = s.dealership_id
JOIN sold_cars sc ON s.id = sc.seller
GROUP BY d.city;
```


## 📁 Structure du Repo

```
cars-database-management/
│
├── 01. Writing SQL Queries/
│   ├── select.sql
│   ├── filtering.sql
│   ├── aggregates.sql
│   ├── insert-update-delete.sql
│   └── ...
│
├── 02. Creating and Joining Tables/
│   ├── schema-definition.sql
│   ├── joins.sql
│   ├── multiple-joins.sql
│   ├── aggregates.sql
│   └── ...
│
└── README.md
```


## 📚 Technologies Utilisées

* **PostgreSQL**
* **SQL Standard**
* **DDL / DML / DQL**
* Outils compatibles : PgAdmin, DBeaver, DataGrip, psql


## 👤 Auteur

**Alex Alkhatib**
Projet SQL & Base de Données — Apprentissage et pratique avancée.


## 📄 Licence

MIT License  Copyright (c) 2025 Alex Alkhatib
