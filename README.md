# Crunchbase Startup Funding Analysis – SQL Project

## Overview

This project analyses investments in Italy using Crunchbase data.
The goal is to identify investment trends, top-funded industries, and leading investors.

Data was taken from Crunchbase's public investments data (tutorial.crunchbase_investments).

## Objective

The project addresses the following questions:

1. Which industries in Italy raised the most money?
2. How has startup funding in Italy changed over time?
3. Which Italian companies secured the most funding?
4. Who are the top investors funding Italian startups?
5. How does Italy compare to other European countries?
  

## Skills

This project showcases my ability to use SQL for business insights and analysis, including:

- Filtering & Aggregation (SUM(), AVG())
- Grouping & Sorting (GROUP BY, ORDER BY)
- Handling NULL Values (COALESCE())
- Time-Based Analysis (EXTRACT(YEAR FROM date))


## Insights

* 1. Which industries in Italy raised the most money?
    Italy’s startup funding is heavily concentrated in a few key industries, with Manufacturing leading the way with a total of €193M invested in the industry, followed by Other industries (€138M) and Biotech (€115M).

    Finance, social platforms, and mobile sectors follow at lower levels, highlighting Italy’s focus on traditional and deep-tech industries over software and digital-first businesses.

* 2. How has startup funding in Italy changed over time?
    Italy’s startup funding landscape has evolved significantly, with slow growth in the early 2000s, followed by a surge in the 2010s. In 2000, total funding was just $1.3M, and it remained relatively low until 2006, when it jumped to $34.6M. The funding fluctuated for a few years before skyrocketing after 2010, reaching $216M in 2012 and stabilizing above $200M in 2014. This sharp increase suggests a rise in investor confidence, possibly driven by policy changes, international investments, or sector-specific growth.

* 3. Which Italian companies secured the most funding?  
    The startup who has secured the most funding in Italy is GreenItaly1, which has raised $135M  across 3 funding rounds. 
    The manufacturing company Turbocoating is the second most successful company, having secured $78M in 3 rounds. The third most founded company is  Dedalus Group, active in biotech industry and raising $64M in one round of fundings.

    This funding landscape highlights Italy’s strong presence in industrial and biotech sectors, rather than digital-first or tech-driven startups.

* 4. Who are the top investors funding Italian startups?
    Italy’s startup ecosystem is backed by a mix of domestic and international investors, with Fondo Italiano di Investimento leading the charge with $208M across 15 funding rounds. 
    The second most generous investors is the British Hutton Collins Partners, investing $64M in a single funding round and follow by Principia SGR with $56M across 21 funding rounds.

    Other notable investors include AIM Italia, Innogest, and Edmond de Rothschild Venture Capital, demonstrating the diverse investment landscape in Italy. While domestic funds play a major role, foreign investors are also contributing significantly to the country’s startup growth.

* 5. How does Italy compare to other European countries?
    Italy lags far behind its European peers in total startup funding, securing just €9 billion—the lowest among major economies.

    - Spain (€37.8B) – 4x more than Italy
    - France (€119.2B) – 13x more
    - Germany (€158.7B) – 18x more
    - United Kingdom (€351.6B) – 39x more

    This gap highlights Italy’s struggles in attracting venture capital and fostering a thriving startup ecosystem, putting it at a competitive disadvantage.


## Data structure

The analysis was conducted using the following key fields:

company_name → Startup name
company_category_code → Industry sector
company_country_code → Country of the company
raised_amount_usd → Funding received (USD)
funded_at → Date of investment
investor_name → Name of the investor


## Conclusion

This project demonstrates how SQL can be used to analyse real-world business and investment trends, providing valuable insights into Italy’s startup ecosystem and its position in the European market.
