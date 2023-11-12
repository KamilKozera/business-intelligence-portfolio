--select data that I will be using

SELECT location, date, total_cases, new_cases, total_deaths, population
FROM portfolio..CovidDeaths
ORDER BY 1, 2


--calculate death percentage with handling null values
--shows likelihood of dying if you get covid in your contry
--beware that percentages vary between age groups

SELECT 
	location, 
	date, 
	total_cases,
	total_deaths, 
	FORMAT(total_deaths * 1.0 / NULLIF(total_cases, 0), 'P2') AS DeathPercentage
FROM portfolio..CovidDeaths
WHERE location = 'Poland'
ORDER BY 1, 2

--calculate % of infected
--shows what % of population got covid overall
--shows % change on a daily basis

SELECT 
	location,
	date,
	total_cases,
	population,
	FORMAT(total_cases/population, 'P3') AS InfectedPercentage,
	FORMAT(total_cases/population - LAG(total_cases/population) OVER (PARTITION BY location ORDER BY date), 'P5') AS DailyChange
FROM portfolio..CovidDeaths
WHERE location = 'Poland'
ORDER BY 1, 2

--calculate the total infected compared to country population

SELECT
	location,
	population,
	ROUND(MAX(total_cases/population)* 100, 2)  AS PercentPopulationInfected
FROM
	portfolio..CovidDeaths
GROUP BY
	location, population
ORDER BY 
	PercentPopulationInfected DESC

--calculate countries with highest death count per population

SELECT
	location,
	population,
	ROUND(MAX(total_deaths/population)* 100, 2)  AS PercentPopulationDead
FROM
	portfolio..CovidDeaths
GROUP BY
	location, population
ORDER BY 
	PercentPopulationDead DESC

