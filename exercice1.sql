-- Database: public

-- DROP DATABASE IF EXISTS public;

CREATE DATABASE public
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'French_France.1252'
    LC_CTYPE = 'French_France.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;
	
-- 	Tous les articles, classés par prix (du plus bas au plus élevé)
	SELECT * FROM items ORDER BY price DESC;
	
-- 	Articles avec un prix supérieur à 80 (80 inclus), classés par prix (du plus élevé au plus bas)
	SELECT * FROM items WHERE price >= 80 ORDER BY price DESC;
	
-- 	Les 3 premiers clients dans l’ordre alphabétique du prénom (A-Z) – excluent la colonne clé primaire des résultats
	SELECT lastname, firstname FROM customers ORDER BY firstname LIMIT 3;
	
-- 	Tous les noms de famille (pas d’autres colonnes!), dans l’ordre alphabétique inverse (Z-A)
	SELECT lastname FROM customers ORDER BY lastname DESC;
	 