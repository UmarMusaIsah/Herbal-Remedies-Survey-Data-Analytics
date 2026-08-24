/*==============================================================================
 Project      : Herbal Remedies Field Survey & Data Analytics Project
 Phase        : Phase 5 - SQL Database Development
 Module       : Data Validation
 File Name    : 05_Data_Validation.sql
 Database     : HerbalRemediesDB
 Table        : HerbalSurvey

 Author       : Umar Musa Isah
 Version      : 1.0
 Created Date : August 2026

 Purpose:
 Validates imported survey data before exploratory and business analysis.
==============================================================================*/

USE HerbalRemediesDB;
GO

/*=========================================================================
SECTION 1: Record Count
=========================================================================*/
SELECT COUNT(*) AS TotalRecords
FROM HerbalSurvey;
GO

/*=========================================================================
SECTION 2: Duplicate Respondent IDs
=========================================================================*/
SELECT
    RespondentID,
    COUNT(*) AS TotalOccurrences
FROM HerbalSurvey
GROUP BY RespondentID
HAVING COUNT(*) > 1;
GO

/*=========================================================================
SECTION 3: NULL Check
=========================================================================*/
SELECT
    SUM(CASE WHEN Gender IS NULL THEN 1 ELSE 0 END) AS NullGender,
    SUM(CASE WHEN AgeGroup IS NULL THEN 1 ELSE 0 END) AS NullAgeGroup,
    SUM(CASE WHEN Location IS NULL THEN 1 ELSE 0 END) AS NullLocation,
    SUM(CASE WHEN UsesHerbalRemedies IS NULL THEN 1 ELSE 0 END) AS NullUsesHerbalRemedies
FROM HerbalSurvey;
GO

/*=========================================================================
SECTION 4: Gender Validation
=========================================================================*/
SELECT
    Gender,
    COUNT(*) AS Total
FROM HerbalSurvey
GROUP BY Gender;
GO

/*=========================================================================
SECTION 5: Age Group Validation
=========================================================================*/
SELECT
    AgeGroup,
    COUNT(*) AS Total
FROM HerbalSurvey
GROUP BY AgeGroup;
GO

/*=========================================================================
SECTION 6: Herbal Usage Validation
=========================================================================*/
SELECT
    UsesHerbalRemedies,
    COUNT(*) AS Total
FROM HerbalSurvey
GROUP BY UsesHerbalRemedies;
GO

/*=========================================================================
SECTION 7: Effectiveness Validation
=========================================================================*/
SELECT
    IsEffective,
    COUNT(*) AS Total
FROM HerbalSurvey
GROUP BY IsEffective;
GO

/*=========================================================================
SECTION 8: Side Effects Validation
=========================================================================*/
SELECT
    HasSideEffects,
    COUNT(*) AS Total
FROM HerbalSurvey
GROUP BY HasSideEffects;
GO

/*=========================================================================
SECTION 9: Combination with Hospital Medicine
=========================================================================*/
SELECT
    CombineWithHospitalMedicine,
    COUNT(*) AS Total
FROM HerbalSurvey
GROUP BY CombineWithHospitalMedicine;
GO

/*=========================================================================
SECTION 10: Recommendation Validation
=========================================================================*/
SELECT
    RecommendToOthers,
    COUNT(*) AS Total
FROM HerbalSurvey
GROUP BY RecommendToOthers;
GO

/*=========================================================================
SECTION 11: Frequency Validation
=========================================================================*/
SELECT
    UsageFrequency,
    COUNT(*) AS Total
FROM HerbalSurvey
GROUP BY UsageFrequency
ORDER BY Total DESC;
GO

/*=========================================================================
SECTION 12: Herb Source Validation
=========================================================================*/
SELECT
    HerbSource,
    COUNT(*) AS Total
FROM HerbalSurvey
GROUP BY HerbSource
ORDER BY Total DESC;
GO

/*=========================================================================
SECTION 13: Effectiveness Level Validation
=========================================================================*/
SELECT
    EffectivenessLevel,
    COUNT(*) AS Total
FROM HerbalSurvey
GROUP BY EffectivenessLevel
ORDER BY Total DESC;
GO

/*=========================================================================
SECTION 14: Preview Dataset
=========================================================================*/
SELECT TOP (10) *
FROM HerbalSurvey;
GO

USE HerbalRemediesDB;
GO

SELECT TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES;

USE HerbalRemediesDB;
GO

SELECT *
FROM HerbalSurvey;

USE HerbalRemediesDB;
GO

SELECT COUNT(*) AS TotalRecords
FROM dbo.HerbalSurvey;
GO

SELECT Gender, COUNT(*) AS Total
FROM dbo.HerbalSurvey
GROUP BY Gender;
GO