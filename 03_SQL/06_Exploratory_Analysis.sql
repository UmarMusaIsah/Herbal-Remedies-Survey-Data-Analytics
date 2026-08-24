/*=========================================================================
SECTION 1.1 - Total Survey Respondents
Purpose:
Determine the total number of respondents included in the survey.
=========================================================================*/

SELECT COUNT(*) AS TotalRespondents
FROM dbo.HerbalSurvey;
GO

/*=========================================================================
SECTION 1.2 - Dataset Preview
Purpose:
Display a sample of imported records for verification.
=========================================================================*/

SELECT TOP (10) *
FROM dbo.HerbalSurvey;
GO

/*=========================================================================
SECTION 1.3 - Total Columns
Purpose:
Determine the number of columns in the survey table.
=========================================================================*/

SELECT COUNT(*) AS TotalColumns
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'HerbalSurvey'
AND TABLE_SCHEMA = 'dbo';
GO

/*=========================================================================
SECTION 1.4 - Table Structure
Purpose:
Display the structure of the HerbalSurvey table.
=========================================================================*/

EXEC sp_help 'dbo.HerbalSurvey';
GO

/*=========================================================================
SECTION 2.1 - Gender Distribution

Business Purpose:
Determine the distribution of respondents by gender.

=========================================================================*/

SELECT
    Gender,
    COUNT(*) AS TotalRespondents,
    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM dbo.HerbalSurvey),
        2
    ) AS Percentage
FROM dbo.HerbalSurvey
GROUP BY Gender
ORDER BY TotalRespondents DESC;
GO

/*=========================================================================
SECTION 2.2 - Age Group Distribution

Business Purpose:
Determine the distribution of respondents across age groups.

=========================================================================*/

SELECT
    AgeGroup,
    COUNT(*) AS TotalRespondents,
    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM dbo.HerbalSurvey),
        2
    ) AS Percentage
FROM dbo.HerbalSurvey
GROUP BY AgeGroup
ORDER BY TotalRespondents DESC;
GO

/*=========================================================================
SECTION 2.3 - Location Distribution

Business Purpose:
Determine the geographical distribution of respondents.

=========================================================================*/

SELECT
    Location,
    COUNT(*) AS TotalRespondents,
    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM dbo.HerbalSurvey),
        2
    ) AS Percentage
FROM dbo.HerbalSurvey
GROUP BY Location
ORDER BY TotalRespondents DESC;
GO

/*=========================================================================
SECTION 3.1 - Herbal Remedies Usage

Business Purpose:
Determine how many respondents use herbal remedies.

=========================================================================*/

SELECT
    UsesHerbalRemedies,
    COUNT(*) AS TotalRespondents,
    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM dbo.HerbalSurvey),
        2
    ) AS Percentage
FROM dbo.HerbalSurvey
GROUP BY UsesHerbalRemedies
ORDER BY TotalRespondents DESC;
GO

/*=========================================================================
SECTION 3.2 - Most Common Herbs Used

Business Purpose:
Identify the most frequently used herbal remedies.

=========================================================================*/

SELECT
    HerbsUsed,
    COUNT(*) AS TotalUsers
FROM dbo.HerbalSurvey
GROUP BY HerbsUsed
ORDER BY TotalUsers DESC;
GO

/*=========================================================================
SECTION 3.3 - Frequency of Herbal Usage

Business Purpose:
Determine how frequently respondents use herbal remedies.

=========================================================================*/

SELECT
    UsageFrequency,
    COUNT(*) AS TotalRespondents,
    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM dbo.HerbalSurvey),
        2
    ) AS Percentage
FROM dbo.HerbalSurvey
GROUP BY UsageFrequency
ORDER BY TotalRespondents DESC;
GO

/*=========================================================================
SECTION 3.4 - Reasons for Using Herbal Remedies

Business Purpose:
Identify the main reasons respondents prefer herbal remedies.

=========================================================================*/

SELECT
    ReasonForUse,
    COUNT(*) AS TotalRespondents,
    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM dbo.HerbalSurvey),
        2
    ) AS Percentage
FROM dbo.HerbalSurvey
GROUP BY ReasonForUse
ORDER BY TotalRespondents DESC;
GO

/*=========================================================================
SECTION 3.5 - Sources of Herbal Remedies

Business Purpose:
Identify the common sources from which respondents obtain herbal remedies.

=========================================================================*/

SELECT
    HerbSource,
    COUNT(*) AS TotalRespondents,
    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM dbo.HerbalSurvey),
        2
    ) AS Percentage
FROM dbo.HerbalSurvey
GROUP BY HerbSource
ORDER BY TotalRespondents DESC;
GO

/*=========================================================================
SECTION 4.1 - Perceived Effectiveness

Business Purpose:
Determine whether respondents believe herbal remedies are effective.

=========================================================================*/

SELECT
    IsEffective,
    COUNT(*) AS TotalRespondents,
    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM dbo.HerbalSurvey),
        2
    ) AS Percentage
FROM dbo.HerbalSurvey
GROUP BY IsEffective
ORDER BY TotalRespondents DESC;
GO

/*=========================================================================
SECTION 4.2 - Level of Effectiveness

Business Purpose:
Assess the perceived level of effectiveness of herbal remedies.

=========================================================================*/

SELECT
    EffectivenessLevel,
    COUNT(*) AS TotalRespondents,
    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM dbo.HerbalSurvey),
        2
    ) AS Percentage
FROM dbo.HerbalSurvey
GROUP BY EffectivenessLevel
ORDER BY TotalRespondents DESC;
GO

/*=========================================================================
SECTION 4.3 - Side Effects

Business Purpose:
Determine whether respondents experienced side effects after using
herbal remedies.

=========================================================================*/

SELECT
    HasSideEffects,
    COUNT(*) AS TotalRespondents,
    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM dbo.HerbalSurvey),
        2
    ) AS Percentage
FROM dbo.HerbalSurvey
GROUP BY HasSideEffects
ORDER BY TotalRespondents DESC;
GO

/*=========================================================================
SECTION 4.4 - Combination with Hospital Medicine

Business Purpose:
Determine whether respondents combine herbal remedies with
hospital medicine.

=========================================================================*/

SELECT
    CombineWithHospitalMedicine,
    COUNT(*) AS TotalRespondents,
    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM dbo.HerbalSurvey),
        2
    ) AS Percentage
FROM dbo.HerbalSurvey
GROUP BY CombineWithHospitalMedicine
ORDER BY TotalRespondents DESC;
GO

/*=========================================================================
SECTION 4.5 - Recommendation to Others

Business Purpose:
Assess respondents' willingness to recommend herbal remedies to others.

=========================================================================*/

SELECT
    RecommendToOthers,
    COUNT(*) AS TotalRespondents,
    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM dbo.HerbalSurvey),
        2
    ) AS Percentage
FROM dbo.HerbalSurvey
GROUP BY RecommendToOthers
ORDER BY TotalRespondents DESC;
GO

/*=========================================================================
SECTION 5.1 - Gender vs Herbal Usage

Business Purpose:
Compare herbal remedy usage across gender groups.

=========================================================================*/

SELECT
    Gender,
    UsesHerbalRemedies,
    COUNT(*) AS TotalRespondents
FROM dbo.HerbalSurvey
GROUP BY
    Gender,
    UsesHerbalRemedies
ORDER BY
    Gender,
    UsesHerbalRemedies;
GO

/*=========================================================================
SECTION 5.2 - Age Group vs Herbal Usage

=========================================================================*/

SELECT
    AgeGroup,
    UsesHerbalRemedies,
    COUNT(*) AS TotalRespondents
FROM dbo.HerbalSurvey
GROUP BY
    AgeGroup,
    UsesHerbalRemedies
ORDER BY
    AgeGroup;
GO

/*=========================================================================
SECTION 5.3 - Age Group vs Effectiveness

=========================================================================*/

SELECT
    AgeGroup,
    IsEffective,
    COUNT(*) AS TotalRespondents
FROM dbo.HerbalSurvey
GROUP BY
    AgeGroup,
    IsEffective
ORDER BY
    AgeGroup;
GO

/*=========================================================================
SECTION 5.4 - Usage Frequency vs Effectiveness

=========================================================================*/

SELECT
    UsageFrequency,
    EffectivenessLevel,
    COUNT(*) AS TotalRespondents
FROM dbo.HerbalSurvey
GROUP BY
    UsageFrequency,
    EffectivenessLevel
ORDER BY
    UsageFrequency;
GO

/*=========================================================================
SECTION 5.5 - Side Effects vs Recommendation

=========================================================================*/

SELECT
    HasSideEffects,
    RecommendToOthers,
    COUNT(*) AS TotalRespondents
FROM dbo.HerbalSurvey
GROUP BY
    HasSideEffects,
    RecommendToOthers
ORDER BY
    HasSideEffects;
GO

/*=========================================================================
SECTION 5.6 - Hospital Medicine vs Effectiveness

=========================================================================*/

SELECT
    CombineWithHospitalMedicine,
    EffectivenessLevel,
    COUNT(*) AS TotalRespondents
FROM dbo.HerbalSurvey
GROUP BY
    CombineWithHospitalMedicine,
    EffectivenessLevel
ORDER BY
    CombineWithHospitalMedicine;
GO

/*=========================================================================
SECTION 5.7 - Gender Summary Dashboard

Business Purpose:
Generate a summary table for dashboard reporting.

=========================================================================*/

SELECT
    Gender,
    COUNT(*) AS TotalRespondents,
    SUM(CASE WHEN UsesHerbalRemedies = 'Yes' THEN 1 ELSE 0 END) AS HerbalUsers,
    SUM(CASE WHEN IsEffective = 'Yes' THEN 1 ELSE 0 END) AS BelieveEffective,
    SUM(CASE WHEN RecommendToOthers = 'Yes' THEN 1 ELSE 0 END) AS RecommendHerbs
FROM dbo.HerbalSurvey
GROUP BY Gender;
GO

/*==============================================================================
SECTION 6 - EXPLORATORY INSIGHTS SUMMARY

The exploratory analysis of the Herbal Remedies Survey dataset revealed
several important findings:

1. The survey dataset contains 60 valid respondents.

2. Respondents included both male and female participants.

3. Young adults (18–30 years) represented the largest age group
   within the survey population.

4. Herbal remedy usage was common among respondents.

5. Several herbal remedies were repeatedly identified as commonly
   used traditional medicines.

6. The majority of respondents reported positive perceptions regarding
   the effectiveness of herbal remedies.

7. Most respondents reported little or no side effects associated with
   herbal medicine use.

8. Many respondents expressed willingness to recommend herbal remedies
   to others.

9. The findings indicate continued reliance on traditional medicine
   alongside modern healthcare practices.

These findings provide the foundation for deeper analytical
investigation in the Business Questions and Advanced SQL Analysis
modules.

==============================================================================*/
