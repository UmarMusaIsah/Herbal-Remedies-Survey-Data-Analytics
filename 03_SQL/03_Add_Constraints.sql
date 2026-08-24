/*==============================================================================
 Project      : Herbal Remedies Field Survey & Data Analytics Project
 Phase        : Phase 5 - SQL Database Development
 Module       : Add Constraints
 File Name    : 03_Add_Constraints.sql
==============================================================================*/

USE HerbalRemediesDB;
GO

ALTER TABLE HerbalSurvey
ADD CONSTRAINT PK_HerbalSurvey
PRIMARY KEY (RespondentID);
GO

ALTER TABLE HerbalSurvey
ADD CONSTRAINT CHK_AgeGroup
CHECK (AgeGroup BETWEEN 1 AND 120);
GO

ALTER TABLE HerbalSurvey
ADD CONSTRAINT CHK_Gender
CHECK (Gender IN ('Male','Female'));
GO

ALTER TABLE HerbalSurvey
ADD CONSTRAINT CHK_UsesHerbalRemedies
CHECK (UsesHerbalRemedies IN ('Yes','No'));
GO

ALTER TABLE HerbalSurvey
ADD CONSTRAINT CHK_IsEffective
CHECK (IsEffective IN ('Yes','No'));
GO

ALTER TABLE HerbalSurvey
ADD CONSTRAINT CHK_HasSideEffects
CHECK (HasSideEffects IN ('Yes','No'));
GO

ALTER TABLE HerbalSurvey
ADD CONSTRAINT CHK_CombineMedicine
CHECK (CombineWithHospitalMedicine IN ('Yes','No'));
GO

ALTER TABLE HerbalSurvey
ADD CONSTRAINT CHK_Recommend
CHECK (RecommendToOthers IN ('Yes','No'));
GO

SELECT
    name AS ConstraintName,
    type_desc AS ConstraintType
FROM sys.objects
WHERE parent_object_id = OBJECT_ID('HerbalSurvey')
ORDER BY type_desc, name;