CREATE DATABASE university_analysis;

USE university_analysis;

#Q1--What is the total number of university records?

CREATE VIEW USA_TOTAL_RECORDS AS
SELECT 
    COUNT(*) AS Total_Records
FROM USA_university_data;

SELECT * FROM USA_TOTAL_RECORDS;



#Q2--What is the average GRE score of applicants?

CREATE VIEW AVG_GRE AS
SELECT 
    AVG(CAST(NULLIF(TRIM(GRE_SCORE), '') AS DECIMAL(10,2))) AS Average_GRE_Score
FROM USA_university_data;

SELECT * FROM AVG_GRE;


#Q3--What is the average English test score?

CREATE VIEW ENGLISH_TEST_AVG AS
SELECT
    Eng_test,
    AVG(Test_score) AS Average_English_Score
FROM USA_university_data
WHERE Eng_test IN ('TOEFL', 'IELTS')
GROUP BY Eng_test;

SELECT * FROM ENGLISH_TEST_AVG;



#Q4--How much work experience do applicants have?

CREATE VIEW WORK_EXPERIENCE AS
SELECT
    `work_ex (Months)` AS Work_Experience_Months,
    COUNT(*) AS Applicant_Count
FROM USA_university_data
GROUP BY `work_ex (Months)`
ORDER BY Work_Experience_Months;

SELECT * FROM WORK_EXPERIENCE;



#Q5--What is the current status of the applications?

CREATE VIEW APPLICATION_STATUS AS
SELECT
    Status,
    COUNT(*) AS Application_Count
FROM USA_university_data
GROUP BY Status;

SELECT * FROM APPLICATION_STATUS;



#Q6--Which universities receive the most applications?

CREATE VIEW UNIVERSITY_APPLICA AS
SELECT 
    COUNT(*) AS Application_Count
FROM USA_university_data
GROUP BY University
ORDER BY Application_Count DESC;

SELECT * FROM UNIVERSITY_APPLICA;



#Q7--How has the average score changed over the years?

CREATE VIEW YEARLY_AVG_SCORE AS
SELECT
    Year,
    'GRE' AS Metric,
    AVG(CAST(NULLIF(TRIM(GRE_SCORE), '') AS DECIMAL(10,2))) AS Average_Score
FROM USA_university_data
GROUP BY Year

UNION ALL

SELECT
    Year,
    'TOEFL' AS Metric,
    AVG(CASE 
        WHEN Eng_test = 'TOEFL' THEN Test_score 
    END) AS Average_Score
FROM USA_university_data
GROUP BY Year

UNION ALL

SELECT
    Year,
    'IELTS' AS Metric,
    AVG(CASE 
        WHEN Eng_test = 'IELTS' THEN Test_score 
    END) AS Average_Score
FROM USA_university_data
GROUP BY Year;

SELECT * FROM YEARLY_AVG_SCORE;



#Q8--How do average scores vary across universities?

CREATE VIEW UNIVERSITY_AVG_METRIC_SCORE AS
SELECT
    University,
    'GRE' AS Metric,
    AVG(CAST(NULLIF(TRIM(GRE_SCORE), '') AS DECIMAL(10,2))) AS Average_Score
FROM USA_university_data
GROUP BY University

UNION ALL

SELECT
    University,
    'TOEFL' AS Metric,
    AVG(CASE 
        WHEN Eng_test = 'TOEFL' THEN Test_score 
    END) AS Average_Score
FROM USA_university_data
GROUP BY University

UNION ALL

SELECT
    University,
    'IELTS' AS Metric,
    AVG(CASE 
        WHEN Eng_test = 'IELTS' THEN Test_score 
    END) AS Average_Score
FROM USA_university_data
GROUP BY University;

SELECT * FROM UNIVERSITY_AVG_METRIC_SCORE;



#Q9--What percentage of applications were admitted?

CREATE VIEW ADMISSION_PERCENTAGE AS
SELECT
    University,
    COUNT(CASE WHEN Status = 'Admit' THEN 1 END) * 100.0
        / COUNT(*) AS Admission_Percentage
FROM USA_university_data
GROUP BY University;


SELECT * FROM ADMISSION_PERCENTAGE;




#Q10--What percentage of applications were rejected and admitted?

CREATE VIEW ADMITTED_REJECTION_PERCENTAGE AS
SELECT
    University,

    ROUND(
        SUM(CASE WHEN Status = 'Admit' THEN 1 ELSE 0 END)
        / COUNT(Status),
        2
    ) AS Percentage_Admitted,

    ROUND(
        SUM(CASE WHEN Status = 'Reject' THEN 1 ELSE 0 END)
        / COUNT(Status),
        2
    ) AS Percentage_Rejected

FROM USA_university_data
GROUP BY University;

SELECT * FROM  ADMITTED_REJECTION_PERCENTAGE;



#Q11--How does undergraduate performance vary by scoring metric?

CREATE VIEW UNDERGRADUATE_PERFORMANCE AS
SELECT
    Undergrad_score_Metric,
    AVG(Undergrad_score) AS Average_Undergrad_Score
FROM USA_university_data
GROUP BY Undergrad_score_Metric;

SELECT * FROM UNDERGRADUATE_PERFORMANCE;



#Q12--How do application factors vary by application status?

CREATE VIEW ADMISSION_FACTORS_SCORE AS
SELECT
    Status,
    COUNT(*) AS Application_Count,

    ROUND(
        AVG(CAST(NULLIF(TRIM(GRE_SCORE), '') AS DECIMAL(10,2))),
        2
    ) AS Average_GRE,

    ROUND(
        AVG(CASE 
            WHEN Eng_test = 'TOEFL' THEN Test_score
        END),
        2
    ) AS Average_TOEFL,

    ROUND(
        AVG(CASE 
            WHEN Eng_test = 'IELTS' THEN Test_score
        END),
        2
    ) AS Average_IELTS,

    ROUND(
        AVG(Undergrad_score),
        2
    ) AS Average_Undergrad_Score

FROM USA_university_data
GROUP BY Status;

SELECT *  FROM ADMISSION_FACTORS_SCORE;



#Q13--How do university scores compare across GRE, TOEFL and IELTS?

CREATE VIEW UNIVERSITY_STATUS_SCORE AS

SELECT
    University,
    Status,
    'GRE' AS Metric,
    ROUND(
        AVG(CAST(NULLIF(TRIM(GRE_SCORE), '') AS DECIMAL(10,2))),
        2
    ) AS Average_Score
FROM USA_university_data
GROUP BY University, Status

UNION ALL

SELECT
    University,
    Status,
    'TOEFL' AS Metric,
    ROUND(
        AVG(CASE 
            WHEN Eng_test = 'TOEFL' THEN Test_score
        END),
        2
    ) AS Average_Score
FROM USA_university_data
GROUP BY University, Status

UNION ALL

SELECT
    University,
    Status,
    'IELTS' AS Metric,
    ROUND(
        AVG(CASE 
            WHEN Eng_test = 'IELTS' THEN Test_score
        END),
        2
    ) AS Average_Score
FROM USA_university_data
GROUP BY University, Status;

SELECT * FROM UNIVERSITY_STATUS_SCORE;
