CREATE TABLE ab_test (
    user_id VARCHAR(50),
    timestamp DATETIME,
    group_name VARCHAR(20),        -- control / treatment
    landing_page VARCHAR(20),      -- old_page / new_page
    converted INT,                 -- 0 / 1
    country VARCHAR(10)
);
--basic data check
SELECT COUNT(*) FROM ab_test;
SELECT * FROM ab_test LIMIT 10;
--distribution by group
SELECT group_name, COUNT(*) as cnt
FROM ab_test
GROUP BY group_name;
--distribution by country
SELECT country, COUNT(*) as cnt
FROM ab_test
GROUP BY country;

--Check whether the grouping correctly matches the page
SELECT
    group_name,
    landing_page,
    COUNT(*) as cnt
FROM ab_test
GROUP BY group_name, landing_page;
--Delete mismatching data
DELETE FROM ab_test
WHERE (group_name == 'control' AND landing_page = 'new_page') OR
      (group_name == 'treatment' AND landing_page = 'old_page');
--Check again
SELECT
    group_name,
    landing_page,
    COUNT(*) as cnt
FROM ab_test
GROUP BY group_name, landing_page;

--Overall conversion rate
SELECT
    COUNT(*) as total_users,
    SUM(converted) as converted_users,
    ROUND(SUM(converted) * 100.0 / COUNT(*), 2) as conversion_rate_pct
FROM ab_test;

--Conversion rate by group
SELECT
    group_name,
    COUNT(*) as total_users,
    SUM(converted) as converted_users,
    ROUND(SUM(converted) * 100.0 / COUNT(*), 2) as conversion_rate_pct
FROM ab_test
GROUP BY group_name;
