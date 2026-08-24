/*==============================================================================
 Project      : Herbal Remedies Field Survey & Data Analytics Project
 Module       : Database Foundation
 File Name    : 01_Create_Database.sql
 Database     : HerbalRemediesDB
 Author       : Umar Musa Isah
 Version      : 1.0
 Description  : Creates the project database.
==============================================================================*/

CREATE DATABASE HerbalRemediesDB;
GO

USE HerbalRemediesDB;
GO

SELECT name
FROM sys.databases
WHERE name='HerbalRemediesDB';