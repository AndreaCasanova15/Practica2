
#1
SELECT population FROM world
  WHERE name = 'Germany'
#2
SELECT name, population FROM world
  WHERE name IN ('Sweden', 'Norway', 'Denmark');


#3
SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND 250000
#4
SELECT name, continent, population FROM world
#5
SELECT name FROM world
WHERE population >=200000000


#6
SELECT name, gdp/population
From world 
WHERE population >200000000



#7
SELECT name country, population/1000000 pop_millions
FROM world
WHERE continent = 'South America'
#8
 Show the (name) and (population) for 'France', 'Germany', 'Italy'
SELECT name country, population
FROM world
WHERE name IN ('France', 'Germany', 'Italy')


#9
SELECT name country
FROM world
WHERE name LIKE '%United%'


#10
SELECT name,population,area
  FROM world
  WHERE area>3000000
  OR population>250000000


#11

SELECT name, population,area
  FROM world
  WHERE
  (population>250000000 OR area>3000000)
  AND NOT(population>250000000 AND area>3000000)




#12
SELECT name, ROUND(population/1000000,2),
             ROUND(gdp/1000000000,2)
  FROM world
 WHERE continent='South America'


#13
SELECT name, ROUND(gdp/population,-3)
  FROM world
  WHERE
  gdp>1000000000000



#14
SELECT name, capital FROM world
WHERE LENGTH(name) = LENGTH(capital);
#15
SELECT name, capital FROM world
WHERE LEFT(name, 1) = LEFT(capital, 1) XOR name = capital


#16
SELECT name FROM world
WHERE name LIKE '%a%' AND name LIKE '%e%' AND name LIKE '%i%' AND name LIKE '%o%' AND name LIKE '%u%' AND name NOT LIKE '% %';



