-- Aggregate global COVID-19 metrics for Tableau visualization.

SELECT
	SUM(new_cases) AS TotalCases,
	SUM(new_deaths) AS TotalDeaths,
	SUM(new_deaths)/NULLIF(SUM(new_cases), 0) * 100 AS DeathPercentage
FROM
	portfolio..CovidDeaths
WHERE 
	continent IS NOT NULL

-- Identify countries with the highest death count per population for Tableau visualization.

SELECT
	location,
	MAX(total_deaths) AS TotalDeathCount
FROM
	portfolio..CovidDeaths
WHERE
	location NOT IN ('European Union', 'World') AND location NOT LIKE '%income%' AND continent IS NULL
GROUP BY
	location
ORDER BY 
	TotalDeathCount DESC

-- Calculate the highest infection count and percentage of population infected over time for Tableau.

SELECT
	location,
	population,
	MAX(total_cases) AS HighestInfectionCount,
	ROUND(MAX(total_cases/population)* 100, 2)  AS PercentPopulationInfected
FROM
	portfolio..CovidDeaths
GROUP BY
	location, population
ORDER BY 
	PercentPopulationInfected DESC

-- Calculate the highest infection count and percentage of population infected over time with date for Tableau.

SELECT
	location,
	population,
	date,
	MAX(total_cases) AS HighestInfectionCount,
	ROUND(MAX(total_cases/population)* 100, 2)  AS PercentPopulationInfected
FROM
	portfolio..CovidDeaths
GROUP BY
	location, population, date
ORDER BY 
	PercentPopulationInfected DESC
