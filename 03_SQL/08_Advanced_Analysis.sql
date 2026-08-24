/*==============================================================================
SECTION 1 - Executive Dashboard KPIs
==============================================================================*/

SELECT
    COUNT(*) AS TotalRespondents,

    SUM(CASE WHEN UsesHerbalRemedies='Yes' THEN 1 ELSE 0 END) AS HerbalUsers,

    SUM(CASE WHEN IsEffective='Yes' THEN 1 ELSE 0 END) AS BelieveEffective,

    SUM(CASE WHEN HasSideEffects='Yes' THEN 1 ELSE 0 END) AS SideEffects,

    SUM(CASE WHEN RecommendToOthers='Yes' THEN 1 ELSE 0 END) AS Recommendations
FROM dbo.HerbalSurvey;
GO

/*==============================================================================
SECTION 2 - Herb Ranking
==============================================================================*/

SELECT
    HerbsUsed,
    COUNT(*) AS TotalUsers,
    RANK() OVER(ORDER BY COUNT(*) DESC) AS HerbRank
FROM dbo.HerbalSurvey
GROUP BY HerbsUsed;
GO

/*==============================================================================
SECTION 3 - Age Group Ranking
==============================================================================*/

SELECT

    AgeGroup,

    COUNT(*) AS Total,

    DENSE_RANK() OVER(ORDER BY COUNT(*) DESC) AS AgeRank

FROM dbo.HerbalSurvey

GROUP BY AgeGroup;
GO

/*==============================================================================
SECTION 4 - Herb Source Ranking
==============================================================================*/

SELECT

    HerbSource,

    COUNT(*) AS Total,

    ROW_NUMBER() OVER(ORDER BY COUNT(*) DESC) AS Ranking

FROM dbo.HerbalSurvey

GROUP BY HerbSource;
GO

/*==============================================================================
SECTION 5 - Common Table Expression
==============================================================================*/

WITH UsageSummary AS
(
    SELECT

        UsageFrequency,

        COUNT(*) AS TotalUsers

    FROM dbo.HerbalSurvey

    GROUP BY UsageFrequency
)

SELECT *

FROM UsageSummary

ORDER BY TotalUsers DESC;
GO

/*==============================================================================
SECTION 6 - Dashboard Percentage KPIs
==============================================================================*/

SELECT DISTINCT
    RecommendToOthers,
    '[' + RecommendToOthers + ']' AS ActualValue,
    DATALENGTH(RecommendToOthers) AS BytesUsed,
    LEN(RecommendToOthers) AS Characters
FROM dbo.HerbalSurvey;
GO


/*==============================================================================
SECTION 7 - Most Active Demographic
==============================================================================*/

SELECT TOP (1)

    Gender,

    AgeGroup,

    COUNT(*) AS Total

FROM dbo.HerbalSurvey

GROUP BY

    Gender,

    AgeGroup

ORDER BY Total DESC;
GO

/*==============================================================================
ADVANCED ANALYTICAL SUMMARY

This module demonstrates advanced SQL analytical techniques including:

• Ranking Functions
• Window Functions
• Common Table Expressions (CTEs)
• Conditional Aggregation
• Dashboard-ready KPI Queries
• Executive Reporting Queries

The outputs generated in this module are suitable for integration into
Power BI dashboards, executive reports, and GitHub portfolio case studies.

==============================================================================*/

SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'HerbalSurvey'
ORDER BY ORDINAL_POSITION;

