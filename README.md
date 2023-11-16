# Nice to meet you

Welcome to my GitHub Business Intelligence Portfolio!

I'm delighted to have you here. This repository is a showcase of my work in the field of business intelligence, where I've applied data analysis, visualization, and other BI techniques to derive meaningful insights from data.

Feel free to explore the various projects and code snippets available here. Whether you're a fellow developer, a data enthusiast, or someone interested in the intersection of technology and business, I hope you find something insightful and inspiring.

If you have any questions or suggestions, don't hesitate to reach out. Collaboration is always welcome!

# Tech Stack
![Microsoft Excel](https://img.shields.io/badge/-Microsoft%20Excel-217346?logo=microsoft%20excel&logoColor=white&style=for-the-badge)
![MySQL](https://img.shields.io/badge/-MySQL-4479A1?logo=mysql&logoColor=white&style=for-the-badge) ![MS SQL](https://img.shields.io/badge/-MS%20SQL-CC2927?logo=microsoft%20sql%20server&logoColor=white&style=for-the-badge) ![R](https://img.shields.io/badge/-R-276DC3?logo=r&logoColor=white&style=for-the-badge) ![Tableau](https://img.shields.io/badge/-Tableau-E97627?logo=tableau&logoColor=white&style=for-the-badge) ![MS Power BI](https://img.shields.io/badge/-MS%20Power%20BI-F2C811?logo=power%20bi&logoColor=white&style=for-the-badge)

# Table of Contents
<a href="#project-1-global-covid-19-data-exploration-and-tableau-visualisation">Project 1: Global COVID-19 Data Exploration and Tableau Visualisation</a>
<a href="#project-2-exploratory-data-analysis-with-r">Project 2: Exploratory Data Analysis with R</a>


# [Project 1: Global COVID-19 Data Exploration and Tableau Visualisation](https://github.com/KamilKozera/business-intelligence-portfolio/tree/main/Project%201%20-%20SQL%20and%20Tableau)

This GitHub project is dedicated to the analysis and visualization of COVID-19 data using SQL queries. The SQL code provided covers a wide range of operations, from fundamental data selection to advanced calculations and aggregations. The primary goal is to extract meaningful insights into excel files and visualize them in Tableau public.

## Project Structure

```
 Project 1 - SQL and Tableau 
   ├── Datasets 
   │   ├── CovidDeaths.xlsx 
   │   ├── CovidVaccinations.xlsx 
   │   ├── covid_dataset.csv 
   ├── SQL-queries 
   │   ├── sql_exploration.sql 
   │   ├── tableau_queries.sql 
   ├── TableauViz 
   │   ├── tableau_table_1.xlsx 
   │   ├── tableau_table_2.xlsx 
   │   ├── tableau_table_3.xlsx 
   │   ├── tableau_table_4.xlsx
   │   ├── tableau_dashboard.png
```
## Finished Dashboard

My main aim in crafting this Tableau visualization was to convey the gravity of COVID-19 statistics while ensuring visual appeal. Overall, the goal was to present the severity of the situation in a clear, impactful, and considerate manner.

![tableau_dashboard.png](https://github.com/KamilKozera/business-intelligence-portfolio/blob/main/Project%201%20-%20SQL%20and%20Tableau/TableauViz/tableau_dashboard.png)


# [Project 2: Exploratory Data Analysis with R](https://github.com/KamilKozera/business-intelligence-portfolio/tree/main/Project%202%20-%20Exploratory%20Data%20Analysis%20with%20R)

## Data Exploration with R
Kamil Kozera <br>
2023-11-16

## Introduction

Bellabeat, founded by Urška Sršen and Sando Mur, pioneers high-tech
health-focused smart products. Using beautifully designed technology,
Bellabeat empowers women worldwide with insights on activity, sleep,
stress, and reproductive health. Established in 2013, the company
rapidly expanded globally, offering a range of products through online
retailers and their own e-commerce platform. Bellabeat employs a
strategic mix of traditional and digital marketing, including Google
Search, social media, YouTube, and the Google Display Network. Sršen
seeks to leverage consumer data analysis to enhance product usage
insights and inform future marketing strategies. Urška believes that
analyzing smart device fitness data can unlock new opportunities. My
task is to analyze smart device data, and derive insights into consumer
usage patterns. These insights will shape the company’s marketing
strategy. My findings and high-level recommendations will be presented
to the Bellabeat executive team.

### Bellabeat products

- **Bellabeat App**: An application providing comprehensive health data,
  including activity, sleep, stress, menstrual cycle, and mindfulness
  habits. It aids users in understanding their habits and making
  healthier decisions. The app connects to Bellabeat’s smart wellness
  products.

- **Leaf**: A versatile wellness tracker wearable as a bracelet,
  necklace, or clip. It links to the Bellabeat app, monitoring activity,
  sleep, and stress for a holistic health overview.

- **Time**: A wellness watch blending classic aesthetics with smart
  technology, tracking activity, sleep, and stress. The Time watch
  connects to the Bellabeat app, offering insights into daily wellness
  routines.

- **Spring**: A smart water bottle ensuring proper hydration by tracking
  daily water intake. The Spring bottle links to the Bellabeat app,
  monitoring hydration levels throughout the day.

- **Bellabeat** Membership: A subscription-based program granting users
  24/7 access to personalized guidance on nutrition, activity, sleep,
  health, beauty, and mindfulness. Tailored to individual lifestyles and
  goals, this membership provides holistic support for overall
  well-being.

## Understanding the market

The [FitBit](https://www.kaggle.com/datasets/arashnic/fitbit) dataset
provided by the stakeholder is a bit outdated because the data is from
2016, meaning a lot has changed, partly due to the pandemic. During my
research, I found out that many people bought smartwatches or other
wellness wearables simply because they were worried about their health.
Additionally, the smart wearables market is emerging and very dynamic. I
decided to obtain additional data to assist me further.

- In wearable market reasearch done by Canalys - Global wearable band
  shipments declined by 1% year-on-year to 41 million units in Q1 2023.
  The excelling performance of the Indian market, growing 122%
  year-on-year, offset the 14% annual decline across the globe. The
  global basic band shipments continued to shrink, dropping 24% to 7.5
  million units, as vendors and consumers continued to shift toward
  larger screens. In contrast, the global basic watch shipments boasted
  a strong 28% growth with 18.0 million units, driven by the surging
  demand in India. Shipments of smartwatches declined by 11%, to 15.8
  million units.

<img src="https://canalys-prod-public.s3.eu-west-1.amazonaws.com/cosi/campaign/3366/fS9hcyjvPmWA9hDKmd1mbvPMwgO5arFM.jpg">

<br>

- India’s wearable band market is booming, having exceptional
  triple-digit growth in Q1 2023, local vendors such as Fire Boltt,
  Noise and boAt are propelling the market forward with value-for-money
  focused strategies, capturing rising demand for basic watches.
  However, relying solely on entry-level hardware will be insufficient
  to sustain strong volumes in the long term. To create upgrade
  opportunities, vendors must adapt to changing consumer demands for
  improved features and integrated device experiences.Indian market
  might be a good choice for marketing purposes for Bellabeat.

<img src="https://canalys-prod-public.s3.eu-west-1.amazonaws.com/cosi/campaign/3366/M7hmzR5p5_loIIKE_C15bcIv2uzFPmaV.jpg">

## Data Cleaning

This dataset was collected from 30 Fitbit users who willingly shared
their fitness data through an online survey on Amazon Mechanical Turk
between March 12 and May 12, 2016. The dataset includes daily activity
(calories, intensities, and steps), heart rate, METs, sleep, and weight.
The variations in the data reflect the use of different Fitbit trackers
and individual tracking habits, making it a valuable resource for
understanding diverse fitness behaviors.

### Importing the data

I need to load specific libraries before I can study the data. These
will help me understand the information better and find important
details.

``` r
# Load tidyverse: Collection of packages for data manipulation and visualization.
library(tidyverse)

# Load ggcorrplot: Creates correlation plots using ggplot2 for data visualization.
library(ggcorrplot)

# Load gridExtra: Enables arrangement of multiple grid-based figures on one page.
library(gridExtra)
```

<br> Instead of reading the files separately (18 in total), I’ll gather
a list of file paths using ‘list.files()’ Then, using the ‘lapply()’
method, I’ll apply the ‘read_csv()’ function to each item in the list.
After that, I’ll rename the datasets by removing the ‘\_merged.csv’ part
of the file name with ‘gsub()’ to make them simpler to handle. <br><br>

``` r
# Get a list of file names in the specified directory.
flist <- list.files("C:/bellabeats")

# Read each CSV file in the list and store them in a list of datasets.
datasets <- lapply(flist, read_csv)

# Extract base names from file paths and remove "_merged.csv" part, then set them as names for the datasets list.
names(datasets) <- gsub("_merged\\.csv", "", basename(flist))
```

### Examining the data

In the datasets analyzed, information is categorized by day, hour,
minute, and second.

- Daily data includes steps, calories, and intensity levels (sedentary,
  light, moderate, very active), along with sleep duration, weight, and
  BMI.
- Hourly data offers insights into calories, intensity, and steps.
- Minute-level data covers calories, intensity levels, and steps in both
  narrow and wide formats. Additionally, minute data includes sleep
  duration and METs (used to estimate calorie expenditure for fitness
  monitoring).
- The seconds dataset offers heart rate information with
  second-by-second precision.

I’ll explore the datasets using the ‘data.frame()’ function, which
combines vectors into a data frame. Additionally, ‘sapply()’ will apply
functions to each dataset in the list.

``` r
# Create a summary data frame with information about the datasets.
summary <- data.frame(
  "Rows" = sapply(datasets, function(x) nrow(x)),               
  "Columns" = sapply(datasets, function(x) ncol(x)),            
  "Unique_id" = sapply(datasets, function(x) n_distinct(x[[1]])),
  "Duplicated" = sapply(datasets, function(x) sum(duplicated(x))), 
  "Missing_values" = sapply(datasets, function(x) sum(is.na(x)))  
)

summary
```

    ##                            Rows Columns Unique_id Duplicated Missing_values
    ## dailyActivity               940      15        33          0              0
    ## dailyCalories               940       3        33          0              0
    ## dailyIntensities            940      10        33          0              0
    ## dailySteps                  940       3        33          0              0
    ## heartrate_seconds       2483658       3        14          0              0
    ## hourlyCalories            22099       3        33          0              0
    ## hourlyIntensities         22099       4        33          0              0
    ## hourlySteps               22099       3        33          0              0
    ## minuteCaloriesNarrow    1325580       3        33          0              0
    ## minuteCaloriesWide        21645      62        33          0              0
    ## minuteIntensitiesNarrow 1325580       3        33          0              0
    ## minuteIntensitiesWide     21645      62        33          0              0
    ## minuteMETsNarrow        1325580       3        33          0              0
    ## minuteSleep              188521       4        24        543              0
    ## minuteStepsNarrow       1325580       3        33          0              0
    ## minuteStepsWide           21645      62        33          0              0
    ## sleepDay                    413       5        24          3              0
    ## weightLogInfo                67       8         8          0             65

<br> The dataset contains a variety of rows and columns.
‘heartrate_seconds’ and ‘weightLogInfo’ have fewer unique observations.
About 77.7% of the data relates to 33 unique IDs. ‘minuteSleep’ and
‘sleepDay’ have 24 unique IDs, ‘heartrate_seconds’ have 14, and
‘weightLogInfo’ have 8. There are 543 duplicated rows in ‘minuteSleep’
and 3 in ‘sleepDay’. ‘weightLogInfo’ is the only dataset with missing
values, all found in the ‘Fat’ column. Therefore, I will exclude this
column from my analysis. <br><br>

``` r
# Calculate the number of missing values in the 'weightLogInfo' dataset for each column.
sapply(datasets$weightLogInfo,function(x) sum(is.na(x)))
```

    ##             Id           Date       WeightKg   WeightPounds            Fat 
    ##              0              0              0              0             65 
    ##            BMI IsManualReport          LogId 
    ##              0              0              0

### Daily datasets

The daily datasets were cleaned up by removing the time component and
renaming the date column, unnecessary columns were dropped, duplicate
entries were removed, and a new column called ‘TotalMinutesNotAsleep’
was created. This column indicates the time spent restless or awake
while in bed.

``` r
# Process the 'dailyActivity' dataset: rename columns, remove unnecessary columns.
datasets$dailyActivity <- datasets$dailyActivity %>%
    rename(Date = ActivityDate) %>%                  
    select(-c(TrackerDistance, LoggedActivitiesDistance)) #

# Process the 'sleepDay' dataset: separate column, calculate additional column, remove unnecessary columns, keep distinct rows.
datasets$sleepDay <- datasets$sleepDay %>%
    separate(SleepDay, c("Date", "Time"), sep = " ") %>% 
    mutate(TotalMinutesNotAsleep = TotalTimeInBed - TotalMinutesAsleep) %>% 
    select(-c(TotalSleepRecords, TotalTimeInBed, Time)) %>% 
    distinct()

# Process the 'weightLogInfo' dataset: separate columns, remove specified columns.
datasets$weightLogInfo <- datasets$weightLogInfo %>%
    separate(Date, c("Date", "Time"), sep = " ") %>% 
    select(-c(WeightKg, Fat, IsManualReport, LogId, Time))
```

<br> Then the daily datasets were combined via a full join using ‘Id’
and ‘Date’ as the keys. <br><br>

``` r
# Merge the 'dailyActivity', 'sleepDay', and 'weightLogInfo' datasets using full join on 'Id' and 'Date' columns.
daily <- datasets$dailyActivity %>% 
    full_join(datasets$sleepDay, by = c("Id", "Date")) %>% 
    full_join(datasets$weightLogInfo, by = c("Id", "Date")) 
```

<br> The ‘Date’ column was formatted correctly using ‘mdy()’, and a new
column ‘Weekday’ was added for day-to-day analysis. Integer data was
converted to numeric, and the ‘Id’ column was changed to a character
type. <br><br>

``` r
# Convert 'Date' column to Date format using mdy() function from lubridate package.
daily$Date <- mdy(daily$Date)

# Add a new column 'Weekday' indicating the day of the week.
daily <- mutate(daily,
               Weekday =  wday(daily$Date, 
                               label = TRUE, 
                               abbr = FALSE,
                               week_start = getOption("lubridate.week.start", 1)),
                               .after = Date)

# Convert integer columns to numeric in the 'daily' dataset.
daily <- mutate_if(daily, is.integer, as.numeric)

# Convert 'Id' column to character type.
daily$Id <- as.character(daily$Id)
```

<div style="overflow-x: auto;">

<table class="my-table">
<thead>
<tr>
<th style="text-align:left;">
Id
</th>
<th style="text-align:left;">
Date
</th>
<th style="text-align:left;">
Weekday
</th>
<th style="text-align:right;">
TotalSteps
</th>
<th style="text-align:right;">
TotalDistance
</th>
<th style="text-align:right;">
VeryActiveDistance
</th>
<th style="text-align:right;">
ModeratelyActiveDistance
</th>
<th style="text-align:right;">
LightActiveDistance
</th>
<th style="text-align:right;">
SedentaryActiveDistance
</th>
<th style="text-align:right;">
VeryActiveMinutes
</th>
<th style="text-align:right;">
FairlyActiveMinutes
</th>
<th style="text-align:right;">
LightlyActiveMinutes
</th>
<th style="text-align:right;">
SedentaryMinutes
</th>
<th style="text-align:right;">
Calories
</th>
<th style="text-align:right;">
TotalMinutesAsleep
</th>
<th style="text-align:right;">
TotalMinutesNotAsleep
</th>
<th style="text-align:right;">
WeightPounds
</th>
<th style="text-align:right;">
BMI
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
1503960366
</td>
<td style="text-align:left;">
2016-04-12
</td>
<td style="text-align:left;">
Tuesday
</td>
<td style="text-align:right;">
13162
</td>
<td style="text-align:right;">
8.50
</td>
<td style="text-align:right;">
1.88
</td>
<td style="text-align:right;">
0.55
</td>
<td style="text-align:right;">
6.06
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
25
</td>
<td style="text-align:right;">
13
</td>
<td style="text-align:right;">
328
</td>
<td style="text-align:right;">
728
</td>
<td style="text-align:right;">
1985
</td>
<td style="text-align:right;">
327
</td>
<td style="text-align:right;">
19
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
1503960366
</td>
<td style="text-align:left;">
2016-04-13
</td>
<td style="text-align:left;">
Wednesday
</td>
<td style="text-align:right;">
10735
</td>
<td style="text-align:right;">
6.97
</td>
<td style="text-align:right;">
1.57
</td>
<td style="text-align:right;">
0.69
</td>
<td style="text-align:right;">
4.71
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
21
</td>
<td style="text-align:right;">
19
</td>
<td style="text-align:right;">
217
</td>
<td style="text-align:right;">
776
</td>
<td style="text-align:right;">
1797
</td>
<td style="text-align:right;">
384
</td>
<td style="text-align:right;">
23
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
1503960366
</td>
<td style="text-align:left;">
2016-04-14
</td>
<td style="text-align:left;">
Thursday
</td>
<td style="text-align:right;">
10460
</td>
<td style="text-align:right;">
6.74
</td>
<td style="text-align:right;">
2.44
</td>
<td style="text-align:right;">
0.40
</td>
<td style="text-align:right;">
3.91
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
30
</td>
<td style="text-align:right;">
11
</td>
<td style="text-align:right;">
181
</td>
<td style="text-align:right;">
1218
</td>
<td style="text-align:right;">
1776
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
1503960366
</td>
<td style="text-align:left;">
2016-04-15
</td>
<td style="text-align:left;">
Friday
</td>
<td style="text-align:right;">
9762
</td>
<td style="text-align:right;">
6.28
</td>
<td style="text-align:right;">
2.14
</td>
<td style="text-align:right;">
1.26
</td>
<td style="text-align:right;">
2.83
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
29
</td>
<td style="text-align:right;">
34
</td>
<td style="text-align:right;">
209
</td>
<td style="text-align:right;">
726
</td>
<td style="text-align:right;">
1745
</td>
<td style="text-align:right;">
412
</td>
<td style="text-align:right;">
30
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
1503960366
</td>
<td style="text-align:left;">
2016-04-16
</td>
<td style="text-align:left;">
Saturday
</td>
<td style="text-align:right;">
12669
</td>
<td style="text-align:right;">
8.16
</td>
<td style="text-align:right;">
2.71
</td>
<td style="text-align:right;">
0.41
</td>
<td style="text-align:right;">
5.04
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
36
</td>
<td style="text-align:right;">
10
</td>
<td style="text-align:right;">
221
</td>
<td style="text-align:right;">
773
</td>
<td style="text-align:right;">
1863
</td>
<td style="text-align:right;">
340
</td>
<td style="text-align:right;">
27
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
1503960366
</td>
<td style="text-align:left;">
2016-04-17
</td>
<td style="text-align:left;">
Sunday
</td>
<td style="text-align:right;">
9705
</td>
<td style="text-align:right;">
6.48
</td>
<td style="text-align:right;">
3.19
</td>
<td style="text-align:right;">
0.78
</td>
<td style="text-align:right;">
2.51
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
38
</td>
<td style="text-align:right;">
20
</td>
<td style="text-align:right;">
164
</td>
<td style="text-align:right;">
539
</td>
<td style="text-align:right;">
1728
</td>
<td style="text-align:right;">
700
</td>
<td style="text-align:right;">
12
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
</tr>
</tbody>
</table>

</div>

### Long Data

To create meaningful visualizations, the data needed to be transformed
into long format. A subset of data was extracted from the ‘daily’
dataset, including ‘Id’, ‘Date’, ‘Weekday’, ‘TotalMinutesAsleep,’ and
‘TotalMinutesNotAsleep.’ The ‘complete.cases()’ function was applied to
retain only complete records. Subsequently, ‘TotalMinutesAsleep’ and
‘TotalMinutesNotAsleep’ were renamed to ‘Asleep’ and ‘NotAsleep’ for
clarity. Finally, the ‘gather’ function was used to convert the data
from wide to long format.

``` r
sleep_long <- daily[, c(1:3, 15:16)] %>%
  filter(complete.cases(.)) %>%
  rename(Asleep = TotalMinutesAsleep, 
         NotAsleep = TotalMinutesNotAsleep) %>%
  gather(key = "ActivityType", 
         value = "Minutes",
         Asleep, NotAsleep)

head(sleep_long)
```

    ## # A tibble: 6 × 5
    ##   Id         Date       Weekday   ActivityType Minutes
    ##   <chr>      <date>     <ord>     <chr>          <dbl>
    ## 1 1503960366 2016-04-12 Tuesday   Asleep           327
    ## 2 1503960366 2016-04-13 Wednesday Asleep           384
    ## 3 1503960366 2016-04-15 Friday    Asleep           412
    ## 4 1503960366 2016-04-16 Saturday  Asleep           340
    ## 5 1503960366 2016-04-17 Sunday    Asleep           700
    ## 6 1503960366 2016-04-19 Tuesday   Asleep           304

<br> To transform intensity data into long format, minutes and distances
were initially converted separately. These transformed datasets were
later merged with ‘inner_join()’, resulting in the final long format
representation with columns labeled ‘Distance’ and ‘Minutes’. <br><br>

``` r
distance_long <- daily[, c(1:3, 6:9)] %>% 
  rename(LightlyActiveDistance = LightActiveDistance) %>% 
  gather(key = "ActivityType", 
         value = "Distance", 
         factor_key = TRUE, 
         VeryActiveDistance, ModeratelyActiveDistance, 
         LightlyActiveDistance, SedentaryActiveDistance) %>% 
  mutate(ActivityType = gsub("Distance", "", ActivityType))

minutes_long <- daily[, c(1:3, 10:13)] %>% 
  rename(ModeratelyActiveMinutes = FairlyActiveMinutes, 
         SedentaryActiveMinutes = SedentaryMinutes) %>% 
  gather(key = "ActivityType", 
         value = "Minutes", 
         factor_key = TRUE, 
         VeryActiveMinutes, ModeratelyActiveMinutes, 
         LightlyActiveMinutes, SedentaryActiveMinutes) %>% 
  mutate(ActivityType = gsub("Minutes", "", ActivityType))

intensities_long <- inner_join(distance_long, minutes_long, 
                               by = c("Id", "Date", "Weekday","ActivityType"))

head(intensities_long)
```

    ## # A tibble: 6 × 6
    ##   Id         Date       Weekday   ActivityType Distance Minutes
    ##   <chr>      <date>     <ord>     <chr>           <dbl>   <dbl>
    ## 1 1503960366 2016-04-12 Tuesday   VeryActive       1.88      25
    ## 2 1503960366 2016-04-13 Wednesday VeryActive       1.57      21
    ## 3 1503960366 2016-04-14 Thursday  VeryActive       2.44      30
    ## 4 1503960366 2016-04-15 Friday    VeryActive       2.14      29
    ## 5 1503960366 2016-04-16 Saturday  VeryActive       2.71      36
    ## 6 1503960366 2016-04-17 Sunday    VeryActive       3.19      38

<br> To analyze daily minutes spent on different activity types (Very,
Moderately, Lightly, Sedentary, Asleep, NotAsleep), two datasets,
‘sleep_long’ and ‘intensities_long,’ were merged. Since the column names
were identical, a simple merging process sufficed. The data was then
organized after the merge. <br><br>

``` r
activity_long <- sleep_long %>% 
  full_join(intensities_long[, c(1:4, 6)], by = colnames(sleep_long)) %>% 
  arrange(Id, Date)

head(activity_long)
```

    ## # A tibble: 6 × 5
    ##   Id         Date       Weekday ActivityType     Minutes
    ##   <chr>      <date>     <ord>   <chr>              <dbl>
    ## 1 1503960366 2016-04-12 Tuesday Asleep               327
    ## 2 1503960366 2016-04-12 Tuesday NotAsleep             19
    ## 3 1503960366 2016-04-12 Tuesday VeryActive            25
    ## 4 1503960366 2016-04-12 Tuesday ModeratelyActive      13
    ## 5 1503960366 2016-04-12 Tuesday LightlyActive        328
    ## 6 1503960366 2016-04-12 Tuesday SedentaryActive      728

<br> Finally, data not included in the ‘intensities’ or ‘sleep’ tables
(‘TotalSteps’, ‘TotalDistance’, ‘Calories’, ‘BMI,’ and ‘WeightInfo’)
will be converted into long format. To handle the numerous NA values in
the ‘BMI’ and ‘WeightInfo’ columns, the ‘complete.cases()’ function will
be applied to remove rows with missing data. <br><br>

``` r
daily_long <- daily[, c(1:5, 14, 17:18)] %>% 
  gather(key = "Variable", value = "Value", -Id, -Date, -Weekday) %>% 
  filter(complete.cases(.)) %>% 
  arrange(Id, Date)

head(daily_long)
```

    ## # A tibble: 6 × 5
    ##   Id         Date       Weekday   Variable         Value
    ##   <chr>      <date>     <ord>     <chr>            <dbl>
    ## 1 1503960366 2016-04-12 Tuesday   TotalSteps    13162   
    ## 2 1503960366 2016-04-12 Tuesday   TotalDistance     8.5 
    ## 3 1503960366 2016-04-12 Tuesday   Calories       1985   
    ## 4 1503960366 2016-04-13 Wednesday TotalSteps    10735   
    ## 5 1503960366 2016-04-13 Wednesday TotalDistance     6.97
    ## 6 1503960366 2016-04-13 Wednesday Calories       1797

# Analysis

### Examining the data

First, the ‘daily_long’ dataset was grouped by the ‘Variable’ column,
which was subsequently renamed as ‘ActivityType.’ The ‘summarise()’
function was applied to compute the mean, median, minimum, and maximum
values for the grouped data. Similar operations were performed on the
‘activity_long’ dataset, without the need for column renaming. Finally,
the data from both datasets was combined using the ‘bind_rows()’
function.

``` r
daily_stats <- daily_long %>% 
  group_by(Variable) %>%
  rename(ActivityType = "Variable") %>% 
  summarise(Mean = round(mean(Value), 1),
            Median = round(median(Value), 1),
            Min = round(min(Value), 1),
            Max = round(max(Value), 1))

activity_stats <- activity_long %>% 
  group_by(ActivityType) %>% 
  summarise(Mean = round(mean(Minutes), 1),
            Median = round(median(Minutes), 1),
            Min = round(min(Minutes), 1),
            Max = round(max(Minutes), 1))

daily_stats <- rbind(daily_stats, activity_stats)
daily_stats
```

    ## # A tibble: 11 × 5
    ##    ActivityType       Mean Median   Min     Max
    ##    <chr>             <dbl>  <dbl> <dbl>   <dbl>
    ##  1 BMI                25.2   24.4  21.5    47.5
    ##  2 Calories         2304.  2134     0    4900  
    ##  3 TotalDistance       5.5    5.2   0      28  
    ##  4 TotalSteps       7638.  7406.    0   36019  
    ##  5 WeightPounds      159.   138.  116     294. 
    ##  6 Asleep            419.   432.   58     796  
    ##  7 LightlyActive     193.   199     0     518  
    ##  8 ModeratelyActive   13.6    6     0     143  
    ##  9 NotAsleep          39.3   25.5   0     371  
    ## 10 SedentaryActive   991.  1058.    0    1440  
    ## 11 VeryActive         21.2    4     0     210

<br> To avoid mixing intensities by distance and minutes, two separate
tables were created. <br><br>

``` r
distance_stats <- intensities_long %>% 
  group_by(ActivityType) %>% 
  summarise(Mean = round(mean(Distance), 1),
            Median = round(median(Distance), 1),
            Min = round(min(Distance), 1),
            Max = round(max(Distance), 1))

distance_stats
```

    ## # A tibble: 4 × 5
    ##   ActivityType      Mean Median   Min   Max
    ##   <chr>            <dbl>  <dbl> <dbl> <dbl>
    ## 1 LightlyActive      3.3    3.4     0  10.7
    ## 2 ModeratelyActive   0.6    0.2     0   6.5
    ## 3 SedentaryActive    0      0       0   0.1
    ## 4 VeryActive         1.5    0.2     0  21.9

<br> After reviewing the data, it’s evident that there are excessive ‘0’
values in the table, suggesting potential data collection issues. Daily
calorie intake, sedentary activity time, and total distance should not
be recorded as ‘0,’ indicating a possible data skew. Let’s explore daily
activity and sleep over time with some graphs. Let’s visualize the daily
activity and sleep patterns over time with graphs. <br><br>

``` r
ggplot(daily_long, aes(x = Date, y = Id)) +
  geom_point(aes(col = Variable)) +
  labs(title = "Activity Over Time", x = "Date", y = "ID") +
  facet_wrap(~Variable, scales = "free_y") +
  theme(plot.title = element_text(hjust = 0.5, size = 20),
        axis.title.y = element_text(size = 20),
        axis.title.x = element_text(size = 20),
        axis.text.x = element_blank(), 
        axis.text.y = element_blank(),
        axis.ticks = element_blank(),
        legend.position = "none",
        strip.text = element_text(size = 15))
```

<img src="https://github.com/KamilKozera/business-intelligence-portfolio/blob/main/Project%202%20-%20Exploratory%20Data%20Analysis%20with%20R/data_exploration_with_r_files/figure-gfm/unnamed-chunk-17-1.png" />

<br> The plots reveal that only 2 individuals consistently tracked their
weight.
[BMI](https://www.nhs.uk/live-well/healthy-weight/bmi-calculator/#:~:text=The%20BMI%20calculation%20divides%20an,dividing%2070%20by%202.99%20%3D%2023.41)
is calculated by dividing an adult’s weight in kilograms (kg) by their
height in meters (m) squared. Weight plays a pivotal role in this
calculation, which is why weight and BMI are interconnected. FitBit
calculated BMI only for the recorded weight data. As for ‘TotalSteps,’
‘Calories,’ and ‘TotalDistance,’ it appears that individuals who stopped
tracking these metrics ceased their activity altogether. However, most
of them displayed consistent tracking habits. <br><br>

``` r
ggplot(sleep_long, aes(x = Date, y = Id)) +
    geom_point(aes(col = ActivityType, size = Minutes)) +
    labs(title = "Sleep Over Time", x = "Date", y = "ID") +
    theme(plot.title = element_text(hjust = 0.5, size = 10),
          axis.text.x = element_blank(),
          axis.text.y = element_blank(),
          axis.ticks = element_blank(),
          axis.title.y = element_text(size = 10),
          axis.title.x = element_text(size = 10), 
          legend.key.height = unit(1, 'cm'),
          legend.key.width = unit(1, 'cm'), 
          legend.title = element_text(size = 8), 
          legend.text = element_text(size = 7))  +
          guides(color = guide_legend(override.aes = list(size = 3))) 
```

<img src="https://github.com/KamilKozera/business-intelligence-portfolio/blob/main/Project%202%20-%20Exploratory%20Data%20Analysis%20with%20R/data_exploration_with_r_files/figure-gfm/unnamed-chunk-18-1.png" style="display: block; margin: auto;" />
<br> The ‘Sleep Over Time’ plot presents a distinct scenario. Only 3
individuals consistently recorded their sleep throughout the entire
month. Among them, some tracked their sleep frequently, while others did
so only occasionally throughout the entire period. Interestingly, it’s
evident that people spend a significant amount of time in bed, not
necessarily sleeping, and some get very little sleep. The intensity data
was further analyzed using two different graphs. <br><br>

``` r
intensities_plot1 <- ggplot(intensities_long, aes(x = Date, y = Distance)) +
  geom_point(aes(col = ActivityType, size = Minutes)) + 
  labs(title = "Activity Over Time", col = "Intensity") +
  theme(plot.title = element_text(hjust = 0.5, size = 10),
        axis.text.x = element_text(size = 5),
        axis.text.y = element_text(size = 5),
        axis.title.y = element_text(size = 10),
        axis.title.x = element_text(size = 10),
        legend.key.height = unit(1, 'cm'), 
        legend.key.width = unit(1, 'cm'), 
        legend.title = element_text(size = 8), 
        legend.text = element_text(size = 7))  +
        guides(color = guide_legend(override.aes = list(size = 3)))

intensities_plot2 <- ggplot(intensities_long, aes(x = Minutes, y = Distance)) +
  geom_point(aes(col = ActivityType)) +
  geom_smooth(method = "loess") +
  labs(title = "Minutes vs Distance", col = "Intensity") +
  theme(plot.title = element_text(hjust = 0.5, size = 10),
        axis.text.x = element_text(size = 5),
        axis.text.y = element_text(size = 5),
        axis.title.y = element_text(size = 10),
        axis.title.x = element_text(size = 10),
        legend.key.height = unit(1, 'cm'), 
        legend.key.width = unit(1, 'cm'),
        legend.title = element_text(size = 8),
        legend.text = element_text(size = 7))  +
        guides(color = guide_legend(override.aes = list(size = 4)))
 

grid.arrange(intensities_plot1,intensities_plot2, ncol = 2)
```

<img src="https://github.com/KamilKozera/business-intelligence-portfolio/blob/main/Project%202%20-%20Exploratory%20Data%20Analysis%20with%20R/data_exploration_with_r_files/figure-gfm/unnamed-chunk-19-1.png" style="display: block; margin: auto;" />
<br> At first glance, the plots reveal outliers in the ‘VeryActive’ data
and indicate a correlation between distance and time for each intensity
level. The intensities also demonstrate daily fluctuations, which
warrant deeper investigation. To explore potential correlations within
the data, a correlogram was made. <br><br>

``` r
daily_corr <- round(cor(daily[, 4:18], use = "na.or.complete"), 1)

ggcorrplot(
  daily_corr,
  hc.order = TRUE, 
  type = "upper",   
  method = "circle", 
  title = "Daily Data Correlations",
  lab = TRUE, 
  lab_size = 4,
) +
theme(title = element_text(size = 20),
      axis.text.x = element_text(size = 15), 
      axis.text.y = element_text(size = 15))
```

<img src="https://github.com/KamilKozera/business-intelligence-portfolio/blob/main/Project%202%20-%20Exploratory%20Data%20Analysis%20with%20R/data_exploration_with_r_files/figure-gfm/unnamed-chunk-20-1.png" style="display: block; margin: auto;" />
<br> As expected, minutes and distance intensities are positively
correlated. For example, the more someone exercises lightly, the greater
the distance they cover. Interestingly, the correlogram reveals a
negative correlation between ‘TotalMinutesAsleep’ and
‘SedentaryMinutes’. A new plot was created to explore this phenomenon.
<br><br>

``` r
ggplot(daily, aes(x = SedentaryMinutes, y = TotalMinutesAsleep)) + 
  geom_point(col = "darkblue") +
  geom_smooth(method = "lm", se = FALSE, col = "red") +
  labs(title="Sedentary Minutes Vs Minutes Asleep", 
       x = "Sedentary Minutes", y = "Minutes Asleep") +
  theme(plot.title = element_text(hjust = 0.5, size = 10),
        axis.text.x = element_text(size = 5),
        axis.text.y = element_text(size = 5),
        axis.title.y = element_text(size = 10),
        axis.title.x = element_text(size = 10))
```

<img src="https://github.com/KamilKozera/business-intelligence-portfolio/blob/main/Project%202%20-%20Exploratory%20Data%20Analysis%20with%20R/data_exploration_with_r_files/figure-gfm/unnamed-chunk-21-1.png" style="display: block; margin: auto;" />
<br> Higher sedentary minutes might indicate a less active lifestyle,
which could potentially affect sleep patterns. Individuals with more
sedentary behavior might find it harder to fall asleep or maintain a
deep sleep, leading to a reduction in total time asleep. <br><br>

### Health data

To analyze the data, additional information about steps, calories, BMI,
and sleep is required to compare the data to population standards.
Firstly, let’s consider steps recommendations for adults. According to
[research](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3197470/)
conducted worldwide, scientists have concluded:

> In summary, research suggests that healthy adults typically take
> between 4,000 and 18,000 steps per day, with 10,000 steps being a
> reasonable target for health. Studies show a strong relationship
> between step cadence (64-170 steps/minute) and exercise intensity. A
> minimum of 100 steps/minute (equivalent to 3,000 steps in 30 minutes)
> represents moderate intensity walking. To meet physical activity
> guidelines, steps should be taken above habitual activities, in bouts
> of at least 10 minutes. Recommended daily steps with moderate
> intensity activity range from 7,000 to 11,000 steps, with a threshold
> of 7,000-8,000 steps associated with current health guidelines.

The calorie data is what FitBit calculated to be the users calorie
expenditure. This calculation is detailed on
[fitabase](https://www.fitabase.com/media/1930/fitabasedatadictionary102320.pdf)

> Fitbit uses the gender, age, height, and weight data entered into the
> user profile to calculate basal metabolic rate (BMR). The estimated
> energy expenditure that Fitbit provides takes into account the user’s
> BMR, the activity recorded by the device, and any manually logged
> activities. The provided data includes calorie expenditure but lacks
> user profiles or BMI information.

However, general average calorie expenditure ranges can be found for
each gender on
[Healthline](https://www.healthline.com/health/fitness-exercise/how-many-calories-do-i-burn-a-day#how-to-calculate):

> Most female adults need 1,600–2,200 calories per day, while adult
> males need 2,200–3,000 calories per day. However, the amount of
> calories you need each day is unique to your body and activity levels.
> If you’re looking to maintain your weight, you’ll want to ensure your
> calorie intake matches your calorie expenditure.

To calculate the ideal weight for each gender, we need the average
heights for each group. Referencing the [Wikipedia
Data](https://en.wikipedia.org/wiki/Average_human_height_by_country),
the minimum and maximum average heights for women range from 148.1 cm to
171.8 cm, and for men, it ranges from 158.7 cm to 185.6 cm. [According
to the World Health
Organization:](https://www.who.int/europe/news-room/fact-sheets/item/a-healthy-lifestyle---who-recommendations)

> BMI (formerly called the Quetelet index) is a measure for indicating
> nutritional status in adults. It is defined as a person’s weight in
> kilograms divided by the square of the person’s height in metres
> (kg/m2). For example, an adult who weighs 70 kg and whose height is
> 1.75 m will have a BMI of 22.9. \* Below 18.5 - Underweight \* 18.5 –
> 24.9 - Normal weight \* 25.0 – 29.9 - Pre-obesity \* 30 and above -
> Obesity

Ideal weight was calculated based on a BMI range of 18.5 to 24.9, which
falls under the category of ‘Normal Weight’ and an average height. For
females, the ideal weight range is from 40.6 kg to 73.5 kg, and for
males, it is from 46.6 kg to 85.8 kg.

[National sleep
foundation](https://www.thensf.org/how-many-hours-of-sleep-do-you-really-need/)
offers current research indicating that the ideal amount of sleep needed
for adults is 7 to 9 hours. To make the above data accessible, a table
was created. <br> <br>

| Steps            | Calories           | Weight.kg.             | BMI                   | Sleep     |
|:-----------------|:-------------------|:-----------------------|:----------------------|:----------|
| Low: 4k          | Women: 1,600–2,200 | Women: 40.6 to 73.5 kg | Underweight: \< 18.5  | 7-9 hours |
| Recommended: 10k | Men 2,200–3,000    | Men: 46.6 to 85.8 kg   | Normal: 18.5–24.9     |           |
|                  |                    |                        | Overweight: 25.0–29.9 |           |
|                  |                    |                        | Obese: \> 30          |           |

### Averages by ID

The next step involves comparing averages in the data for each user. To
accomplish this, the ‘daily’ data was grouped by ID, and for sleep and
intensity data, the grouping was done by ID and activity type.
Subsequently, the mean of each variable was calculated.

``` r
daily_averages <- daily %>% 
  group_by(Id) %>% 
  summarise(TotalSteps = round(mean(TotalSteps, na.rm = TRUE), 1),
            TotalDistance = round(mean(TotalDistance, na.rm = TRUE), 1),
            Calories = round(mean(Calories, na.rm = TRUE), 1),
            WeightKilos = round(mean(WeightPounds/2.20462, na.rm = TRUE), 1),
            BMI = round(mean(BMI, na.rm = TRUE), 1))
head(daily_averages)
```

    ## # A tibble: 6 × 6
    ##   Id         TotalSteps TotalDistance Calories WeightKilos   BMI
    ##   <chr>           <dbl>         <dbl>    <dbl>       <dbl> <dbl>
    ## 1 1503960366     12117.           7.8    1816.        52.6  22.6
    ## 2 1624580081      5744.           3.9    1483.       NaN   NaN  
    ## 3 1644430081      7283            5.3    2811.       NaN   NaN  
    ## 4 1844505072      2580.           1.7    1574.       NaN   NaN  
    ## 5 1927972279       916.           0.6    2173.       134.   47.5
    ## 6 2022484408     11371.           8.1    2510        NaN   NaN

<br>

``` r
sleep_averages <- sleep_long %>% 
  group_by(Id, ActivityType) %>% 
  summarise(Activity = round(mean(Minutes/60), 1));
head(sleep_averages)
```

    ## # A tibble: 6 × 3
    ## # Groups:   Id [3]
    ##   Id         ActivityType Activity
    ##   <chr>      <chr>           <dbl>
    ## 1 1503960366 Asleep            6  
    ## 2 1503960366 NotAsleep         0.4
    ## 3 1644430081 Asleep            4.9
    ## 4 1644430081 NotAsleep         0.9
    ## 5 1844505072 Asleep           10.9
    ## 6 1844505072 NotAsleep         5.2

<br>

``` r
intensities_averages <- intensities_long %>% 
  group_by(Id, ActivityType) %>% 
  summarise(Distance = round(mean(Distance), 1),
            Hours = round(mean(Minutes/60), 1));
head(intensities_averages)
```

    ## # A tibble: 6 × 4
    ## # Groups:   Id [2]
    ##   Id         ActivityType     Distance Hours
    ##   <chr>      <chr>               <dbl> <dbl>
    ## 1 1503960366 LightlyActive         4.2   3.7
    ## 2 1503960366 ModeratelyActive      0.8   0.3
    ## 3 1503960366 SedentaryActive       0    14.1
    ## 4 1503960366 VeryActive            2.9   0.6
    ## 5 1624580081 LightlyActive         2.6   2.6
    ## 6 1624580081 ModeratelyActive      0.4   0.1

<br>

``` r
activity_averages <- activity_long %>% 
  group_by(Id, ActivityType) %>% 
  summarise(Hours = round(mean(Minutes/60), 1));
head(activity_averages)
```

    ## # A tibble: 6 × 3
    ## # Groups:   Id [1]
    ##   Id         ActivityType     Hours
    ##   <chr>      <chr>            <dbl>
    ## 1 1503960366 Asleep             6  
    ## 2 1503960366 LightlyActive      3.7
    ## 3 1503960366 ModeratelyActive   0.3
    ## 4 1503960366 NotAsleep          0.4
    ## 5 1503960366 SedentaryActive   14.1
    ## 6 1503960366 VeryActive         0.6

<br> All variables were then visualized in separate bar graphs. Please
refer to the code for detailed notes on how the graphs were created.
<br> <br> <br>

``` r
steps_plot <- ggplot(daily_averages, aes(x = Id, y = TotalSteps)) + 
  geom_col(fill = "lightblue4") +
  geom_hline(aes(yintercept = 4000, col = "Low")) +
  geom_hline(aes(yintercept = 10000, col = "Ideal")) +
  labs(title = "Average TotalSteps per ID", x = "ID", y = "TotalSteps", col = "Steps") +
  guides(x = "none") +
  theme(plot.title = element_text(hjust = 0.5, size = 20),
        axis.text.y = element_text(size = 10),
        axis.title.y = element_text(size = 20),
        axis.title.x = element_text(size = 20),
        legend.key.height = unit(1, 'cm'), 
        legend.key.width = unit(1, 'cm'),
        legend.title = element_text(size = 16),
        legend.text = element_text(size = 14))  +
        guides(color = guide_legend(override.aes = list(size = 5)))


calories_plot <- ggplot(daily_averages) +
  geom_col(aes(x = Id, y = Calories), fill = "lightblue4") +
  geom_rect(aes(xmin = 0, xmax = length(Id) + 1, ymin = 1600, ymax = 2200,
                col = "Woman"), fill = "pink", alpha = 0.03) +
  geom_rect(aes(xmin = 0, xmax = length(Id) + 1, ymin = 2200, ymax = 3000,
                col = "Men"), fill = "lightblue", alpha = 0.03) +
  guides(x = "none") +
  labs(title = "Average Calories per ID", x = "ID", y = "Calories", col = "Gender") +
  scale_color_manual(values = c(Woman = "red", Men = "blue")) +
  theme(plot.title = element_text(hjust = 0.5, size = 20),
        axis.text.y = element_text(size = 10),
        axis.title.y = element_text(size = 20),
        axis.title.x = element_text(size = 20),
        legend.key.height = unit(1, 'cm'), 
        legend.key.width = unit(1, 'cm'),
        legend.title = element_text(size = 16),
        legend.text = element_text(size = 14))  +
        guides(color = guide_legend(override.aes = list(size = 5)))
  
grid.arrange(steps_plot, calories_plot, ncol = 2)
```

<img src="https://github.com/KamilKozera/business-intelligence-portfolio/blob/main/Project%202%20-%20Exploratory%20Data%20Analysis%20with%20R/data_exploration_with_r_files/figure-gfm/unnamed-chunk-27-1.png" style="display: block; margin: auto;" />
<br> Average ‘TotalSteps per ID’ plot clearly shows that the averages
vary significantly. Most people average at least a minimum of 4000 steps
per day. Although the majority of people meet the minimum daily step
requirement, there is still considerable room for improvement to reach
the recommended ideal step count of 10000 steps per day.
<br>
Based on the “Average Calories per ID” graph, most of the users are
within the recommended calorie range, with a couple of users falling
below and above the recommended range. After comparing the charts side
by side, it’s evident that more steps don’t necessarily result in higher
calorie expenditure. This finding aligns with insights from the
corellogram, which indicates a moderate correlation of 0.5 between Steps
and Calories. FitBit doesn’t provide data indicating which ID
corresponds to which gender, making the analysis much shallower than
necessary. We can only assume that IDs falling within the Women’s
calorie range belong to women and those within the Men’s calorie range
belong to men, but we can’t be certain. This limitation significantly
impacts the depth of the analysis.

<br>

``` r
weight_plot <- ggplot(daily_averages[complete.cases(daily_averages$WeightKilos),]) +
  geom_col(aes(x = Id, y = WeightKilos), fill = "lightblue4") +
  geom_rect(aes(xmin = 0, xmax = length(Id) +1, ymin = 40.6, ymax = 73.5, col = "Women"),
            fill = "pink", alpha = 0.03) +
  geom_rect(aes(xmin = 0, xmax = length(Id) +1, ymin = 46.6, ymax = 85.8, col = "Men"),
            fill = "lightblue", alpha = 0.03) +
  guides(x = "none") +
  labs(title = "Average Weight per ID", x = "ID", y = "Wight(kg)", col = "Gender") +
  theme(plot.title = element_text(hjust = 0.5, size = 20),
        axis.text.y = element_text(size = 10),
        axis.title.y = element_text(size = 20),
        axis.title.x = element_text(size = 20),
        legend.key.height = unit(1, 'cm'), 
        legend.key.width = unit(1, 'cm'),
        legend.title = element_text(size = 16),
        legend.text = element_text(size = 14))  +
  guides(color = guide_legend(override.aes = list(size = 5)))

bmi_plot <- ggplot(daily_averages[complete.cases(daily_averages$BMI),]) +
  geom_col(aes(x = Id, y = BMI), fill = "lightblue4") +
  geom_rect(aes(xmin = 0, xmax = length(Id) + 1, ymin = -0.5, ymax = 18,
                col = "Underweight"), alpha = 0.03, fill = "purple") +
  geom_rect(aes(xmin = 0, xmax = length(Id) + 1, ymin = 18.5, ymax = 24.5,
                col = "Normal"), alpha = 0.03, fill = "red") +
  geom_rect(aes(xmin = 0, xmax = length(Id) + 1, ymin = 25, ymax = 29.5,
                col = "Overweight"), alpha = 0.03, fill = "green") +
  geom_rect(aes(xmin = 0, xmax = length(Id) + 1, ymin = 30, ymax = 50,
                col = "Obese"), alpha = 0.03, fill = "lightblue") +
  labs(title = "Average BMI per ID", x = "ID", y = "BMI", col = "Range") +
  guides(x = "none") +
  scale_color_manual(values = c(Underweight = "purple", Normal = "red",
                                Overweight = "green", Obese = "blue")) +
  theme(plot.title = element_text(hjust = 0.5, size = 20),
        axis.text.y = element_text(size = 10),
        axis.title.y = element_text(size = 20),
        axis.title.x = element_text(size = 20),
        legend.key.height = unit(1, 'cm'), 
        legend.key.width = unit(1, 'cm'),
        legend.title = element_text(size = 16),
        legend.text = element_text(size = 14))  +
   guides(color = guide_legend(override.aes = list(size = 5)))

grid.arrange(weight_plot, bmi_plot, ncol = 2)
```

<img src="https://github.com/KamilKozera/business-intelligence-portfolio/blob/main/Project%202%20-%20Exploratory%20Data%20Analysis%20with%20R/data_exploration_with_r_files/figure-gfm/unnamed-chunk-28-1.png" style="display: block; margin: auto;" />
<br>

##### **Average Weight per ID**

Without gender-specific data, we are unable to delve into the details.
However, it is evident that most people fall within the recommended
weight range. There are two users who exceed these ranges, classifying
them as slightly or very obese. Generally, the majority of users
maintain a healthy weight.

<br>

##### **Average BMI per ID**

When considering BMI, gender-specific data is not necessary to determine
the users’ health status. The majority of users have a healthy BMI or
are slightly overweight, with only one user classified as obese.

<br> <br>

``` r
sleep_plot <- ggplot(sleep_averages) +
  geom_col(aes(x = Id, y = Activity, fill = ActivityType),
           position = position_stack(reverse = TRUE)) +
  geom_rect(aes(xmin = 0, xmax = length(Id)/2 + 1, ymin = 7, ymax = 9, 
                col = "Recommended"), fill = "pink", alpha = 0.02) +
  labs(title = "Sleep per ID", x = "ID", y = "Hours", col = "Sleep") +
  guides(x = "none") +
  theme(plot.title = element_text(hjust = 0.5, size = 20),
        axis.text.y = element_text(size = 10),
        axis.title.y = element_text(size = 20),
        axis.title.x = element_text(size = 20),
        legend.key.height = unit(1, 'cm'), 
        legend.key.width = unit(1, 'cm'),
        legend.title = element_text(size = 16),
        legend.text = element_text(size = 14))  +
   guides(color = guide_legend(override.aes = list(size = 5)))

activity_plot <- ggplot(activity_averages) +
  geom_col(aes(x = Id, y = Hours, fill = ActivityType)) +
  labs(title = "Activity Type per ID", x = "ID", y = "Hours") +
  geom_hline(aes(yintercept = 24)) +
  guides(x = "none") +
  theme(plot.title = element_text(hjust = 0.5, size = 20),
        axis.text.y = element_text(size = 10),
        axis.title.y = element_text(size = 20),
        axis.title.x = element_text(size = 20),
        legend.key.height = unit(1, 'cm'), 
        legend.key.width = unit(1, 'cm'),
        legend.title = element_text(size = 16),
        legend.text = element_text(size = 14))  +
   guides(color = guide_legend(override.aes = list(size = 5)))

grid.arrange(sleep_plot, activity_plot, ncol = 2)
```

<img src="https://github.com/KamilKozera/business-intelligence-portfolio/blob/main/Project%202%20-%20Exploratory%20Data%20Analysis%20with%20R/data_exploration_with_r_files/figure-gfm/unnamed-chunk-29-1.png" />

##### **Sleep per ID**

Most people fall within the recommended sleep range of 7 to 9 hours,
although one person consistently spends an extended period in bed.
Additionally, three individuals have unusually low sleep durations,
possibly indicating issues with the accuracy of sleep data collection.

<br>

##### **Activity per ID**

This chart was done to showcase activity type across the day per ID. The
data most likely overlap because some individuals have over 24h of
activity which is impossible. I’m assuming that sleep data isn’t
accurate and because of that intensity graph was generated.

<br>

``` r
int_plot_distance <- ggplot(intensities_averages) +
  geom_col(aes(x = Id, y = Distance, fill = ActivityType)) +
  labs(title = "Activity Type Distance per ID", x = "ID", y = "Distance") +
  guides(x = "none") +
  theme(plot.title = element_text(hjust = 0.5, size = 20),
        axis.text.y = element_text(size = 10),
        axis.title.y = element_text(size = 20),
        axis.title.x = element_text(size = 20),
        legend.key.height = unit(1, 'cm'), 
        legend.key.width = unit(1, 'cm'),
        legend.title = element_text(size = 16),
        legend.text = element_text(size = 14))  +
   guides(color = guide_legend(override.aes = list(size = 5)))


int_plot_hours <- ggplot(intensities_averages) +
  geom_col(aes(x = Id, y = Hours, fill = ActivityType)) +
  labs(title = "Activity Type Minutes per ID", x = "ID", y = "Hours") +
  guides(x = "none") +
  theme(plot.title = element_text(hjust = 0.5, size = 20),
        axis.text.y = element_text(size = 10),
        axis.title.y = element_text(size = 20),
        axis.title.x = element_text(size = 20),
        legend.key.height = unit(1, 'cm'), 
        legend.key.width = unit(1, 'cm'),
        legend.title = element_text(size = 16),
        legend.text = element_text(size = 14))  +
   guides(color = guide_legend(override.aes = list(size = 5)))

grid.arrange(int_plot_distance, int_plot_hours, ncol = 2)
```

<img src="https://github.com/KamilKozera/business-intelligence-portfolio/blob/main/Project%202%20-%20Exploratory%20Data%20Analysis%20with%20R/data_exploration_with_r_files/figure-gfm/unnamed-chunk-30-1.png" style="display: block; margin: auto;" />

<br>

Based on the charts, when users were in the sedentary active zone, as
expected, they haven’t covered much distance. The majority of users
spend at least 10 hours in the sedentary active category. Additionally,
most users are active in every zone, with the lightly active zone being
the most common. A new chart was created to illustrate the relationship
between distance and minutes spent in each activity type.

<br> <br>

``` r
light_data <- intensities_long %>% 
  filter(ActivityType == "LightlyActive")
moderate_data <- intensities_long %>% 
  filter(ActivityType == "ModeratelyActive")
very_data <- intensities_long %>% 
  filter(ActivityType == "VeryActive")


ggplot() +
  geom_smooth(data = light_data, aes(x = Minutes, y = Distance, color = "Light"), 
              se = FALSE, method = "lm") +
  geom_smooth(data = moderate_data, aes(x = Minutes, y = Distance, color = "Moderate"), 
              se = FALSE, method = "lm") +
  geom_smooth(data = very_data, aes(x = Minutes, y = Distance, color = "Very"), 
              se = FALSE, method = "lm") +
  labs(title = "Distance vs. Time in Different Activity Zones", color = "How Active") +
  theme(plot.title = element_text(hjust = 0.5, size = 20),
        axis.text.x = element_text(size = 10),
        axis.text.y = element_text(size = 10),
        axis.title.y = element_text(size = 20),
        axis.title.x = element_text(size = 20),
        legend.key.height = unit(1, 'cm'), 
        legend.key.width = unit(1, 'cm'),
        legend.title = element_text(size = 16),
        legend.text = element_text(size = 14))  +
   guides(color = guide_legend(override.aes = list(size = 5)))
```

<img src="https://github.com/KamilKozera/business-intelligence-portfolio/blob/main/Project%202%20-%20Exploratory%20Data%20Analysis%20with%20R/data_exploration_with_r_files/figure-gfm/unnamed-chunk-31-1.png" style="display: block; margin: auto;" />

<br>

The chart clearly illustrates the difference in how quickly distance is
gained in each intensity zone, with the light intensity showing the
slowest progress and the very active zone exhibiting the fastest pace.

### Averages by day of week

The next step of the analysis was to look at the daily tracking averages
for each day of the week to see if there’s any trends in tracking.
Distance and calories are based on step count tracking and BMI is based
on weight tracking, so these variables will be ignored for this part of
the analysis.

``` r
daily_wday_avg <- daily %>%
  group_by(Weekday) %>%
  summarise(TotalSteps = round(mean(TotalSteps, na.rm = TRUE), 1),
            HoursAsleep = round(mean(TotalMinutesAsleep, na.rm = TRUE)/60, 1),
            HoursNotAsleep = round(mean(TotalMinutesNotAsleep, na.rm = TRUE)/60, 1),
            Weight = round(mean(WeightPounds, na.rm = TRUE)/2.205, 1))
daily_wday_avg
```

    ## # A tibble: 7 × 5
    ##   Weekday   TotalSteps HoursAsleep HoursNotAsleep Weight
    ##   <ord>          <dbl>       <dbl>          <dbl>  <dbl>
    ## 1 Monday         7781.         7              0.6   69.5
    ## 2 Tuesday        8125          6.7            0.6   71.2
    ## 3 Wednesday      7559.         7.2            0.6   78.2
    ## 4 Thursday       7406.         6.7            0.6   69  
    ## 5 Friday         7448.         6.8            0.7   69.3
    ## 6 Saturday       8153          7              0.7   71.7
    ## 7 Sunday         6933.         7.5            0.8   73.5

<br>

``` r
sleep_wday_avg <- sleep_long %>% 
  group_by(Weekday, ActivityType) %>% 
  summarise(Hours = round(mean(Minutes)/60, 1))

head(sleep_wday_avg)
```

    ## # A tibble: 6 × 3
    ## # Groups:   Weekday [3]
    ##   Weekday   ActivityType Hours
    ##   <ord>     <chr>        <dbl>
    ## 1 Monday    Asleep         7  
    ## 2 Monday    NotAsleep      0.6
    ## 3 Tuesday   Asleep         6.7
    ## 4 Tuesday   NotAsleep      0.6
    ## 5 Wednesday Asleep         7.2
    ## 6 Wednesday NotAsleep      0.6

``` r
intensities_wday_avg <- intensities_long %>% 
  group_by(Weekday, ActivityType) %>% 
  summarise(Distance = round(mean(Distance), 1),
            Hours = round(mean(Minutes), 1))

head(intensities_wday_avg)
```

    ## # A tibble: 6 × 4
    ## # Groups:   Weekday [2]
    ##   Weekday ActivityType     Distance  Hours
    ##   <ord>   <chr>               <dbl>  <dbl>
    ## 1 Monday  LightlyActive         3.4  192. 
    ## 2 Monday  ModeratelyActive      0.6   14  
    ## 3 Monday  SedentaryActive       0   1028. 
    ## 4 Monday  VeryActive            1.5   23.1
    ## 5 Tuesday LightlyActive         3.5  197. 
    ## 6 Tuesday ModeratelyActive      0.6   14.3

<br>

The steps and weight seem to be about the same over each day of the week
with the exception of a high weight on Tuesday which is likely due to
the obese person tracking their weight on that day. Graphs were made of
each to better visualise this.

<br> <br>

``` r
ggplot(daily_wday_avg) +
  geom_col(aes(x = Weekday, y = TotalSteps), fill = "lightblue4") +
  geom_hline(aes(yintercept = 4000, col = "Low")) +
  geom_hline(aes(yintercept = 10000, col = "Recommended")) +
  labs(title = "TotalSteps per Weekday", col = "Steps") +
  theme(plot.title = element_text(hjust = 0.5, size = 20),
        axis.text.x = element_text(size = 10),
        axis.text.y = element_text(size = 10),
        axis.title.y = element_text(size = 20),
        axis.title.x = element_text(size = 20),
        legend.key.height = unit(1, 'cm'), 
        legend.key.width = unit(1, 'cm'),
        legend.title = element_text(size = 16),
        legend.text = element_text(size = 14))  +
   guides(color = guide_legend(override.aes = list(size = 5)))
```

<img src="https://github.com/KamilKozera/business-intelligence-portfolio/blob/main/Project%202%20-%20Exploratory%20Data%20Analysis%20with%20R/data_exploration_with_r_files/figure-gfm/unnamed-chunk-34-1.png" style="display: block; margin: auto;" />

<br>

The step count doesn’t vary significantly from day to day, with Sunday
recording the lowest count. On average, users take about 7500 steps,
which falls 2500 steps below the recommended target.

<br> <br>

``` r
ggplot(daily_wday_avg) +
  geom_col(aes(x = Weekday, y = Weight), fill = "lightblue4") +
  geom_rect(aes(xmin = 0, xmax = length(Weekday) +1, ymin = 40.6, ymax = 73.5, col = "Women"),
            fill = "pink", alpha = 0.03) +
  geom_rect(aes(xmin = 0, xmax = length(Weekday) +1, ymin = 46.6, ymax = 85.8, col = "Men"),
            fill = "lightblue", alpha = 0.03) +
  labs(title = "Weight per Weekday", col = "Gender") +
  theme(plot.title = element_text(hjust = 0.5, size = 20),
        axis.text.x = element_text(size = 10),
        axis.text.y = element_text(size = 10),
        axis.title.y = element_text(size = 20),
        axis.title.x = element_text(size = 20),
        legend.key.height = unit(1, 'cm'), 
        legend.key.width = unit(1, 'cm'),
        legend.title = element_text(size = 16),
        legend.text = element_text(size = 14))  +
   guides(color = guide_legend(override.aes = list(size = 5)))
```

<img src="https://github.com/KamilKozera/business-intelligence-portfolio/blob/main/Project%202%20-%20Exploratory%20Data%20Analysis%20with%20R/data_exploration_with_r_files/figure-gfm/unnamed-chunk-35-1.png" style="display: block; margin: auto;" />

<br>

The averages fall within the weight ranges for both men and women, with
Wednesday showing a slight increase due to the obese individual tracking
their weight on that day. Generally, there isn’t much variation in
weight throughout the week. As previously mentioned, the higher weight
observed on Wednesday is likely attributed to the obese individual
weighing themselves on that specific day.

<br> <br>

``` r
ggplot(sleep_wday_avg) +
  geom_col(aes(x = Weekday, y = Hours, fill = ActivityType), 
           position = position_stack(reverse = TRUE)) +
  geom_rect(aes(xmin = 0, xmax = length(Weekday)/2 + 1, ymin = 7, ymax = 9, col = "Sleep"),
            fill = "pink", alpha = 0.03) + 
  labs(title = "Time in Bed per Weekday", col = "Recommended") +
  theme(plot.title = element_text(hjust = 0.5, size = 20),
        axis.text.x = element_text(size = 10),
        axis.text.y = element_text(size = 10),
        axis.title.y = element_text(size = 20),
        axis.title.x = element_text(size = 20),
        legend.key.height = unit(1, 'cm'), 
        legend.key.width = unit(1, 'cm'),
        legend.title = element_text(size = 16),
        legend.text = element_text(size = 14))  +
  guides(color = guide_legend(override.aes = list(size = 5)))
```

<img src="https://github.com/KamilKozera/business-intelligence-portfolio/blob/main/Project%202%20-%20Exploratory%20Data%20Analysis%20with%20R/data_exploration_with_r_files/figure-gfm/unnamed-chunk-36-1.png" style="display: block; margin: auto;" />

<br>

Generally, people likely get enough sleep on average, although some
sleep data appears to be unusually low. Sleep duration is shortest on
Tuesday and Thursday, and longest on Sunday

<br> <br>

``` r
ggplot(intensities_wday_avg) +
  geom_col(aes(x = Weekday, y = Distance, fill = ActivityType)) +
  labs(title = "Intensity Distance per Weekday") +
  theme(plot.title = element_text(hjust = 0.5, size = 20),
        axis.text.x = element_text(size = 10),
        axis.text.y = element_text(size = 10),
        axis.title.y = element_text(size = 20),
        axis.title.x = element_text(size = 20),
        legend.key.height = unit(1, 'cm'), 
        legend.key.width = unit(1, 'cm'),
        legend.title = element_text(size = 16),
        legend.text = element_text(size = 14))  +
  guides(color = guide_legend(override.aes = list(size = 5)))
```

<img src="https://github.com/KamilKozera/business-intelligence-portfolio/blob/main/Project%202%20-%20Exploratory%20Data%20Analysis%20with%20R/data_exploration_with_r_files/figure-gfm/unnamed-chunk-37-1.png" style="display: block; margin: auto;" />

<br>

Based on the graph, user activity levels don’t vary significantly from
day to day. Similar to the overall user data, the weekday data indicates
that a significant portion of the distance (nearly half) is comprised of
more intense activity. Sunday exhibits slightly lower activity, aligning
with the lower step count recorded on that day.

<br> <br>

``` r
ggplot(intensities_wday_avg) +
  geom_col(aes(x = Weekday, y = Hours, fill = ActivityType)) +
  labs(title = "Intensity Time per Weekday") +
  theme(plot.title = element_text(hjust = 0.5, size = 20),
        axis.text.x = element_text(size = 10),
        axis.text.y = element_text(size = 10),
        axis.title.y = element_text(size = 20),
        axis.title.x = element_text(size = 20),
        legend.key.height = unit(1, 'cm'), 
        legend.key.width = unit(1, 'cm'),
        legend.title = element_text(size = 16),
        legend.text = element_text(size = 14))  +
  guides(color = guide_legend(override.aes = list(size = 5)))
```

<img src="https://github.com/KamilKozera/business-intelligence-portfolio/blob/main/Project%202%20-%20Exploratory%20Data%20Analysis%20with%20R/data_exploration_with_r_files/figure-gfm/unnamed-chunk-38-1.png" style="display: block; margin: auto;" />

<br>

This graph highlights even more clearly than the “ID” data that users
spend the majority of their time being sedentary, averaging over 15
hours a day. Users then spend approximately 2-3 hours engaging in likely
active activities and less than an hour in more intense activities.

<br> <br>

## Summary and Marketing Recommendations

### Summary

The analysis show that every user has been tracking steps, with most of
them on a regular basis,and that the step count didn’t vary much on a
day to day basis. Most users haven’t met the recommended 10k steps per
day, with 7.5k being the average. Fourth of the users were tracking
their weight with only 2 doing it on a regular basis. According to BMI,
all but one user are within recommended BMI range or slightly
overweight. The data shows that some of the users quit tracking
everything altogether during a month.

Three quarters tracked their sleep, but there seems to be some errors
within sleep data that have very low sleep time. Having said that, day
to day data supports the idea that all of the users slept well and fall
inside recommended sleep range. Despite step count being lower than
recommended level, the intensity data show that many users exercize
daily. The data supports theory that FitBit users mostly work remote or
office jobs that don’t require much phisical activity like for example
outdoor labor.

### Marketing Recommendations

The FitBit data has a limited sample size, encompassing both users and
data measured over a short time span. It is highly discouraged to invest
in high-effort marketing campaigns with large budgets based solely on
this data. However, the analyzed data could provide valuable insights
for BellaBeat to explore. Taking the above into consideration, easily
testable and implementable solutions within the BellaBeat environment
will be taken into account. This approach helps avoid the substantial
costs associated with marketing campaigns. Given BellaBeat’s expertise
as an IoT (Internet of Things) company, particularly in software
development, it is well-equipped to implement software-based solutions
effectively.

**1. Educational Content and Tips:**

- Create informative content within the Bellabeat app, addressing the
  importance of reaching 10k steps daily and providing tips on how to
  incorporate more steps into daily routines. Consider gamification
  elements within the app to encourage users to achieve their step
  goals.

- Educate users about the significance of weight tracking and offer
  incentives or rewards for regular weight tracking. Highlight success
  stories to motivate users who are reluctant to track their weight.

**2. Promote Active Lifestyles Outside of Workouts:**

- Leverage the intensity data to create challenges or achievements
  within the Bellabeat app. Encourage users to engage in short bursts of
  activity throughout the day, especially those working in office jobs,
  to bridge the gap between their lower step count and active lifestyle.

To make more impactful, data-driven marketing decisions, a larger sample
size is crucial. A larger sample size provides a more representative and
accurate reflection of the target audience. Small sample size can lead
to skewed or unreliable results, making it difficult for data analysts
to draw meaningful conclusions or make confident recommendiations based
on the data, as demonstrated by our observations with sleep and weight
data.

## Further analysis

**1. Sample size**

A larger sample size provides a clearer picture of the target audience
and enables to draw more accurate conclusions. Previous experiences with
sleep and weight data have highlighted the unreliability of results from
small groups. Therefore, having a larger and diverse dataset is crucial
for making well-informed decisions and recommendations based on the
analysis.

**2. New market opportunity**

India’s wearable band market is flourishing, with significant
triple-digit growth in Q1 2023. Local vendors like Fire Boltt, Noise,
and boAt are driving this growth by offering value-for-money basic
watches, meeting the rising demand. However, relying solely on
entry-level hardware won’t ensure long-term success. Vendors need to
evolve to meet changing consumer demands for enhanced features and
integrated device experiences to create upgrade opportunities.

BellaBeat has an edge as IoT company that can bridge seemless basic
watch with a tracking features. On top of that, BellaBeat already has
infrastructure which is **BellaBeat App** and **Time**, a wellness watch
blending classic aesthetics with smart technology. To gather first-hand
data from the Indian market, BellaBeat could collaborate with local
health and fitness experts, yoga instructors, nutritionists, and
wellness influencers to introduce their products to the targeted
audience.


