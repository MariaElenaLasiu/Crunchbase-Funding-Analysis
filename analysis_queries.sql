-- 1️. Top 10 industries in Italy by total funding
SELECT 
    company_category_code AS industry, 
    SUM(COALESCE(raised_amount_usd, 0)) AS total_funding
FROM tutorial.crunchbase_investments
WHERE company_country_code = 'ITA'
GROUP BY industry
ORDER BY total_funding DESC
LIMIT 10;


-- 1️.2 Average invesment per industry in Italy
SELECT 
    company_category_code AS industry, 
    funded_year AS founded_year,
    AVG(COALESCE(raised_amount_usd, 0)) AS average_funding
FROM tutorial.crunchbase_investments
WHERE company_country_code = 'ITA'
GROUP BY industry, founded_year
ORDER BY average_funding DESC
LIMIT 10;


-- 2. How has startup funding in Italy changed over time?
SELECT 
    EXTRACT(YEAR FROM TO_DATE(funded_at, 'MM/DD/YY')) AS funding_year, 
    SUM(raised_amount_usd) AS total_funding
FROM tutorial.crunchbase_investments
WHERE company_country_code = 'ITA'
GROUP BY funding_year
ORDER BY funding_year ASC;


-- 3. Which Italian companies secured the most funding?
SELECT 
    company_name, 
    company_category_code AS industry, 
    funded_year AS founded_year,
    SUM(COALESCE(raised_amount_usd, 0)) AS total_funding,
    COUNT(DISTINCT id) AS num_funding_rounds
FROM tutorial.crunchbase_investments
WHERE company_country_code = 'ITA'
GROUP BY company_name, industry, founded_year
ORDER BY total_funding DESC
LIMIT 10;


-- 4. Who are the top investors funding Italian startups?
SELECT 
    investor_name, 
    investor_category_code AS investor_type, 
    investor_country_code,
    SUM(COALESCE(raised_amount_usd, 0)) AS total_funding,
    COUNT(DISTINCT id) AS num_funding_rounds
FROM tutorial.crunchbase_investments
WHERE company_country_code = 'ITA'
GROUP BY investor_name, investor_type, investor_country_code
ORDER BY total_funding DESC
LIMIT 10;


-- 5. How does Italy compare to other European countries?
SELECT 
    company_country_code, 
    SUM(raised_amount_usd) AS total_funding
FROM tutorial.crunchbase_investments
WHERE company_country_code IN ('ITA', 'FRA', 'DEU', 'ESP', 'GBR')
GROUP BY company_country_code
ORDER BY total_funding DESC;