/*
The following SQL queries demonstrate:

1. **Data Retrieval:**
   - Selecting specific columns and filtering data based on conditions.

2. **Data Transformation:**
   - Calculating percentages, handling null values, and formatting results for clear presentation.

3. **Window Functions:**
   - Using window functions (e.g., LAG, SUM with OVER) to analyze data trends over time.

4. **Aggregation:**
   - Aggregating data at different levels, such as country and continent, to derive meaningful insights.

5. **Temporary Tables:**
   - Creating and utilizing temporary tables to store and process intermediate results.

6. **Common Table Expressions (CTE):**
   - Utilizing CTEs to simplify complex queries and improve readability.

7. **View Creation:**
   - Creating views to encapsulate and store reusable data sets for further analysis or visualization.

8. **Handling Edge Cases:**
   - Dealing with edge cases, such as avoiding divide-by-zero errors and addressing variations in data.

9. **Ordering and Sorting:**
    - Ordering results based on specific columns for better presentation.
*/

-- Selecting key COVID-19 metrics for various locations

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


-- Calculating death percentage for a specific location (Poland) with null handling
-- Represents the likelihood of dying if someone gets COVID-19 in Poland
-- Note: Percentages may vary based on age groups

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

-- Calculating the percentage of the population infected and its daily change for a specific location (Poland)
-- Provides an overview of the percentage of the population that got COVID-19 and the daily change

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

-- Calculating the percentage of the population infected for different continents
-- Presents the continents with the highest percentage of population infected

SELECT
	location,
	population,
	ROUND(MAX(total_cases/population)* 100, 2)  AS PercentPopulationInfected
FROM
	portfolio..CovidDeaths
WHERE
	continent IS NULL AND location NOT LIKE '%income%'
GROUP BY
	location, population
ORDER BY 
	PercentPopulationInfected DESC

-- Calculating the percentage of the population infected for different income levels
-- Presents the income levels with the highest percentage of population infected

SELECT
	location,
	population,
	ROUND(MAX(total_cases/population)* 100, 2)  AS PercentPopulationInfected
FROM
	portfolio..CovidDeaths
WHERE
	continent IS NULL AND location LIKE '%income%'
GROUP BY
	location, population
ORDER BY 
	PercentPopulationInfected DESC

-- Calculating the percentage of the population infected for different countries
-- Presents the countries with the highest percentage of population infected

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

-- Breaking down total death counts by continent
-- Identifying continents with the highest death counts

SELECT
	location,
	MAX(total_deaths) AS TotalDeathCount
FROM
	portfolio..CovidDeaths
WHERE
	location NOT LIKE '%income%' AND continent IS NULL AND location <> 'World'
GROUP BY
	location
ORDER BY 
	TotalDeathCount DESC

-- Identifying countries with the highest total death count

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

-- Aggregating global COVID-19 metrics

SELECT
	SUM(new_cases) AS TotalCases,
	SUM(new_deaths) AS TotalDeaths,
	SUM(new_deaths)/NULLIF(SUM(new_cases), 0) * 100 AS DeathPercentage
FROM
	portfolio..CovidDeaths
WHERE 
	continent IS NOT NULL

-- Analyzing total population vs vaccinations

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
WHERE 
	dea.continent IS NOT NULL
ORDER BY 
	2, 3

-- Using Common Table Expressions (CTE) to analyze population vs vaccinations for countries

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
	WHERE dea.continent IS NOT NULL
)
-- Analyzing population vs vaccinations for Poland using the CTE
SELECT *, (RollingPeopleVaccinated/population)*100
FROM PopvsVac

-- Using a Temporary Table to store data for population vs vaccinations

DROP Table IF EXISTS #PercentPopulationVaccinated
CREATE Table #PercentPopulationVaccinated
	(Continent nvarchar(255),
	location nvarchar(255),
	date datetime,
	population numeric,
	new_vaccinations numeric,
	RollingPeopleVaccinated numeric)

INSERT INTO #PercentPopulationVaccinated
	SELECT 
	   dea.continent,
	   dea.location, 
	   dea.date, 
	   dea.population,
	   vac.new_vaccinations,
	   SUM(CAST(vac.new_vaccinations AS BIGINT)) OVER (Partition by dea.location ORDER BY dea.location, dea.date) AS RollingPeopleVaccinated
	FROM portfolio..CovidDeaths dea
		JOIN portfolio..CovidVaccinations vac
			ON dea.location = vac.location
			AND dea.date = vac.date
	WHERE 
		dea.continent IS NOT NULL

-- Analyzing population vs vaccinations using the Temporary Table

SELECT *, (RollingPeopleVaccinated/population)*100
FROM #PercentPopulationVaccinated
ORDER BY 2, 3

-- Creating a view to store data for Tableau visualization

CREATE VIEW PercentPopulationVaccinated AS
	SELECT 
	   dea.continent,
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
	WHERE 
		dea.continent IS NOT NULL