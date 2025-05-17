CREATE DATABASE IF NOT EXISTS sakila;
USE sakila;
SOURCE /docker-entrypoint-initdb.d/sakila-schema.sql;
SOURCE /docker-entrypoint-initdb.d/sakila-data.sql;
