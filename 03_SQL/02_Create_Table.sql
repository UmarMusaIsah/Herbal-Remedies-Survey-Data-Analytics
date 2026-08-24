/*==============================================================================
 Project      : Herbal Remedies Field Survey & Data Analytics Project
 Phase        : Phase 5 - SQL Database Development
 Module       : Table Creation
 File Name    : 02_Create_Table.sql
 Database     : HerbalRemediesDB
 Table        : HerbalSurvey

 Author       : Umar Musa Isah
 Version      : 1.0
 Created Date : August 2026

 Purpose:
 This script creates the HerbalSurvey table based on the approved
 database schema for the Herbal Remedies Field Survey Project.

 Notes:
 - This script only creates the table structure.
 - Constraints will be added in File 03.
 - Data import will be handled in File 04.
==============================================================================*/

USE HerbalRemediesDB;
GO

-- ============================================================================
-- Create HerbalSurvey Table
-- Description:
-- Creates the main table that stores cleaned survey responses.
-- ============================================================================

CREATE TABLE HerbalSurvey
(
    RespondentID INT NOT NULL,
    Gender VARCHAR(20) NOT NULL,
    AgeGroup VARCHAR(20) NOT NULL,
    Location VARCHAR(100) NOT NULL,
    UsesHerbalRemedies VARCHAR(10) NOT NULL,
    HerbsUsed VARCHAR(255) NULL,
    UsageFrequency VARCHAR(50) NULL,
    ReasonForUse VARCHAR(255) NULL,
    HerbSource VARCHAR(100) NULL,
    IsEffective VARCHAR(10) NULL,
    EffectivenessLevel VARCHAR(50) NULL,
    HasSideEffects VARCHAR(10) NULL,
    CombineWithHospitalMedicine VARCHAR(10) NULL,
    RecommendToOthers VARCHAR(10) NULL
);
GO

SELECT *
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_NAME = 'HerbalSurvey';

SELECT
    COLUMN_NAME,
    DATA_TYPE,
    IS_NULLABLE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'HerbalSurvey'
ORDER BY ORDINAL_POSITION;

DROP TABLE HerbalSurvey;
GO