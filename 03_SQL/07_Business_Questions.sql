/*==============================================================================
BUSINESS QUESTION 1

Which herbal remedy is most commonly used?

==============================================================================*/

SELECT
    HerbsUsed,
    COUNT(*) AS TotalUsers
FROM dbo.HerbalSurvey
GROUP BY HerbsUsed
ORDER BY TotalUsers DESC;
GO

/*==============================================================================
BUSINESS QUESTION 2

Which age group uses herbal remedies the most?

==============================================================================*/

SELECT
    AgeGroup,
    COUNT(*) AS TotalUsers
FROM dbo.HerbalSurvey
WHERE UsesHerbalRemedies='Yes'
GROUP BY AgeGroup
ORDER BY TotalUsers DESC;
GO

/*==============================================================================
BUSINESS QUESTION 3

Does gender influence herbal medicine usage?

==============================================================================*/

SELECT

    Gender,

    UsesHerbalRemedies,

    COUNT(*) AS Total

FROM dbo.HerbalSurvey

GROUP BY

    Gender,

    UsesHerbalRemedies

ORDER BY Gender;
GO

/*==============================================================================
BUSINESS QUESTION 4

Main reasons for herbal remedy usage.

==============================================================================*/

SELECT

    ReasonForUse,

    COUNT(*) AS TotalRespondents

FROM dbo.HerbalSurvey

GROUP BY ReasonForUse

ORDER BY TotalRespondents DESC;
GO

/*==============================================================================
BUSINESS QUESTION 5

Most common source of herbs.

==============================================================================*/

SELECT

    HerbSource,

    COUNT(*) AS TotalRespondents

FROM dbo.HerbalSurvey

GROUP BY HerbSource

ORDER BY TotalRespondents DESC;
GO

/*==============================================================================
BUSINESS QUESTION 6

Frequency vs Effectiveness

==============================================================================*/

SELECT

    UsageFrequency,

    EffectivenessLevel,

    COUNT(*) AS TotalRespondents

FROM dbo.HerbalSurvey

GROUP BY

    UsageFrequency,

    EffectivenessLevel

ORDER BY UsageFrequency;
GO

/*==============================================================================
BUSINESS QUESTION 7

Side Effects vs Recommendation

==============================================================================*/

SELECT

    HasSideEffects,

    RecommendToOthers,

    COUNT(*) AS Total

FROM dbo.HerbalSurvey

GROUP BY

    HasSideEffects,

    RecommendToOthers;
GO

/*==============================================================================
BUSINESS QUESTION 8

Hospital Medicine Combination

==============================================================================*/

SELECT

    CombineWithHospitalMedicine,

    COUNT(*) AS TotalRespondents

FROM dbo.HerbalSurvey

GROUP BY CombineWithHospitalMedicine;
GO

/*==============================================================================
BUSINESS QUESTION 9

Executive KPI Summary

==============================================================================*/

SELECT

    COUNT(*) AS TotalRespondents,

    SUM(CASE WHEN UsesHerbalRemedies='Yes' THEN 1 ELSE 0 END) AS HerbalUsers,

    SUM(CASE WHEN IsEffective='Yes' THEN 1 ELSE 0 END) AS BelieveEffective,

    SUM(CASE WHEN HasSideEffects='Yes' THEN 1 ELSE 0 END) AS ExperiencedSideEffects,

    SUM(CASE WHEN RecommendToOthers='Yes' THEN 1 ELSE 0 END) AS RecommendHerbs

FROM dbo.HerbalSurvey;
GO

