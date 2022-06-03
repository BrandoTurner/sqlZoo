-0 Basics

1) SELECT population FROM world
Where name = 'Germany'

2) SELECT name, population FROM world
   WHERE name IN ('Sweden', 'Norway', 'Denmark')

3) SELECT name , area FROM world 
    WHERE name

-1 Name

1) SELECT name FROM world
    WHERE name LIKE 'Y%'

2) SELECT name from world
  WHERE name LIKE '%Y'

3) SELECT name FROM world
    WHERE name LIKE '%x%'

4) SELECT name FROM world
    WHERE name LIKE '%land'

5) SELECT name FROM world
  WHERE name LIKE 'C%ia'

6) SELECT name FROM world
    WHERE name LIKE '%oo%'

7) SELECT name FROM world
  WHERE name LIKE '%a%a%a%'

8) SELECT name FROM world
WHERE name LIKE '_t&'
ORDER BY name

9) SELECT name FROM world
WHERE name LIKE '%o__o%'

10) SELECT name FROM world
WHERE name LIKE '____'



-2 World

1) SELECT name, continent, population
FROM world

2) SELECT name
FROM world
WHERE population >= 200000000

3) SELECT name, gdp/population 
as per_cap_GDP 
FROM world
WHERE population >= 20000000

4) SELECT name, population/1000000 
as pop_millions 
FROM world
WHERE continent = "South America"

5) SELECT name, population 
FROM world
WHERE name in (
    'France',
    'Germany',
    'Italy'
)

6) SELECT name
FROM world
WHERE name LIKE '%United%'

7) SELECT name, population, area FROM world
WHERE area >= 3000000 OR
population > 2500000000

8) SELECT name, population, area FROM world
WHERE area >= 3000000 XOR
population > 2500000000

9) SELECT name,
ROUND(population/1000000, 2) pop_millions,
ROUND(gdp/10000000000, 2) gdp_billions
FROM world
WHERE continent = 'South America'

10) SELECT name,
ROUND((gdp/population), -3) AS per_cap_GDP
FROM world
WHERE gdp >= 100000000000






-3 nobel

1) SELECT yr, subject, winner
    FROM nobel
    WHERE yr = 1950

2) SELECT winner
FROM nobel
WHERE yr = 1962
AND subject = 'Literature'

3) SELECT yr, subject
FROM nobel
WHERE winner = 'Albert Einstein'

4) SELECT winner
FROM nobel
WHERE subject = "Peace"
AND yr >= 2000

5) SELECT yr, subject, winner
FROM nobel
WHERE subject = 'Literature'
AND yr between 1980 AND 1989

6) SELECT * 
FROM nobel
WHERE winner IN (
    'Theodore Roosevelt',
    'Woodrow Wilson',
    'Jimmy Carter',
    'Barack Obama'
)

7) SELECT winner
 FROM nobel
 WHERE winner LIKE 'John%'
    

8) SELECT yr, subject,winner
FROM nobel
WHERE yr = 1980
    OR subject = 'Chemistry'
    AND yr = 1984

9) SELECT yr, subject, winner
FROM nobel
WHERE yr = 1980
    AND subject NOT IN ('Chemistry', 'Medicine')

10) SELECT yr, subject, winner
FROM nobel
WHERE subject = 'Medicine'
AND yr < 1910 OR
subject = 'Literature'
AND yr >= 2004
