--select data that I will be using

SELECT 
	location, 
	date, 
	total_cases, 
	new_cases, 
	total_deaths, 
	population
FROM 
	portfolio..CovidDeaths
WHERE 
	continent IS NOT NULL
ORDER BY 
	1, 2


--calculate death percentage with handling null values
--shows likelihood of dying if you get covid in your contry
--beware that percentages vary between age groups

SELECT 
	location, 
	date, 
	total_cases,
	total_deaths, 
	FORMAT(total_deaths * 1.0 / NULLIF(total_cases, 0), 'P2') AS DeathPercentage
FROM 
	portfolio..CovidDeaths
WHERE 
	location = 'Poland' AND continent IS NOT NULL
ORDER BY 
	1, 2

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
FROM 
	portfolio..CovidDeaths
WHERE 
	location = 'Poland' AND continent IS NOT NULL
ORDER BY 
	1, 2

--calculate the total infected compared to country population

SELECT
	location,
	population,
	ROUND(MAX(total_cases/population)* 100, 2)  AS PercentPopulationInfected
FROM
	portfolio..CovidDeaths
WHERE
	continent IS NOT NULL
GROUP BY
	location, population
ORDER BY 
	PercentPopulationInfected DESC

--calculate countries with highest death count per population

SELECT
	location,
	MAX(total_deaths) AS TotalDeathCount
FROM
	portfolio..CovidDeaths
WHERE
	location NOT LIKE '%income%' AND continent IS NOT NULL
GROUP BY
	location
ORDER BY 
	TotalDeathCount DESC

--break everything down by continent
--Showing continents with the highest death counts

SELECT
	location,
	MAX(total_deaths) AS TotalDeathCount
FROM
	portfolio..CovidDeaths
WHERE
	location NOT LIKE '%income%' AND continent IS NULL
GROUP BY
	location
ORDER BY 
	TotalDeathCount DESC

-- GLOBAL NUMBERS

SELECT
	SUM(new_cases) AS TotalCases,
	SUM(new_deaths) AS TotalDeaths,
	SUM(new_deaths)/NULLIF(SUM(new_cases), 0) * 100 AS DeathPercentage
FROM
	portfolio..CovidDeaths
WHERE 
	continent IS NOT NULL

--total population vs vaccinations

SELECT dea.continent,
	   dea.location, 
	   dea.date, 
	   dea.population,
	   vac.new_vaccinations,
	   SUM(CAST(vac.new_vaccinations AS BIGINT)) OVER (Partition by dea.location ORDER BY dea.location, dea.date) AS RollingPeopleVaccinated
FROM
	portfolio..CovidDeaths dea
	JOIN portfolio..CovidVaccinations vac
		ON dea.location = vac.location
		AND dea.date = vac.date
WHERE dea.continent IS NOT NULL
ORDER BY 2, 3

--USE CTE

WITH PopvsVac (continent, location, date, population, new_vaccinations,RollingPeopleVaccinated)
AS (
	SELECT dea.continent,
	   dea.location, 
	   dea.date, 
	   dea.population,
	   vac.new_vaccinations,
	   SUM(CAST(vac.new_vaccinations AS BIGINT)) OVER (Partition by dea.location ORDER BY dea.location, dea.date) AS RollingPeopleVaccinated
	FROM
		portfolio..CovidDeaths dea
		JOIN portfolio..CovidVaccinations vac
			ON dea.location = vac.location
			AND dea.date = vac.date
	WHERE dea.continent IS NOT NULL and dea.location = 'Poland'
)

SELECT *, (RollingPeopleVaccinated/population)*100
FROM PopvsVac

--TEMP TABLE

DROP Table IF EXISTS #PercentPopulationVaccinated
CREATE Table #PercentPopulationVaccinated
(Continent nvarchar(255),
location nvarchar(255),
date datetime,
population numeric,
new_vaccinations numeric,
RollingPeopleVaccinated numeric)

INSERT INTO #PercentPopulationVaccinated
SELECT dea.continent,
	   dea.location, 
	   dea.date, 
	   dea.population,
	   vac.new_vaccinations,
	   SUM(CAST(vac.new_vaccinations AS BIGINT)) OVER (Partition by dea.location ORDER BY dea.location, dea.date) AS RollingPeopleVaccinated
	FROM
		portfolio..CovidDeaths dea
		JOIN portfolio..CovidVaccinations vac
			ON dea.location = vac.location
			AND dea.date = vac.date
	WHERE dea.continent IS NOT NULL

SELECT *, (RollingPeopleVaccinated/population)*100
FROM #PercentPopulationVaccinated
ORDER BY 2, 3

--Creating view to store data for Tableau visualization
USE portfolio
CREATE VIEW PercentPopulationVaccinated 
AS
	SELECT dea.continent,
	   dea.location, 
	   dea.date, 
	   dea.population,
	   vac.new_vaccinations,
	   SUM(CAST(vac.new_vaccinations AS BIGINT)) OVER (Partition by dea.location ORDER BY dea.location, dea.date) AS RollingPeopleVaccinated
	FROM
		portfolio..CovidDeaths dea
		JOIN portfolio..CovidVaccinations vac
			ON dea.location = vac.location
			AND dea.date = vac.date
	WHERE dea.continent IS NOT NULL


