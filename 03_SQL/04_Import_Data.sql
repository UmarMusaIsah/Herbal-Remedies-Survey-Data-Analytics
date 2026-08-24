/*==============================================================================
 Project      : Herbal Remedies Field Survey & Data Analytics Project
 Phase        : Phase 5 - SQL Database Development
 Module       : Data Import
 File Name    : 04_Import_Data.sql
 Database     : HerbalRemediesDB
 Table        : HerbalSurvey

 Author       : Umar Musa Isah
 Version      : 1.0
 Created Date : August 2026

 Purpose:
 Imports the cleaned Herbal Remedies survey dataset from a CSV file
 into the HerbalSurvey table using BULK INSERT.

 Import Source:
 02_Data/Cleaned_Data/HerbalSurvey_Cleaned.csv

==============================================================================*/
USE HerbalRemediesDB;
GO

BULK INSERT dbo.HerbalSurvey
FROM 'C:\Users\Press Teck Solutions\Documents\UMAR_MUSA_ISAH_DATA_ANALYTICS_PORFOLIO\06_Herbal_Remedies_Survey_&_Data_Analytics_Project\02_Data\Cleaned_Data\HerbalSurvey_Cleaned.csv'
WITH
(
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0A',
    CODEPAGE = '65001',
    TABLOCK
);
GO