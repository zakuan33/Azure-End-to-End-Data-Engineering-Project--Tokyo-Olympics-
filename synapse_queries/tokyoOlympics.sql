--– List all disciplines represented by athletes from Malaysia.

SELECT DISTINCT Discipline
FROM [tokyoOlympic].[dbo].[Athletes]
WHERE Country = 'Malaysia';

--Count how many coaches there are per country

SELECT Country, COUNT(*) AS NumberOfCoaches
FROM [tokyoOlympic].[dbo].[Coaches]
GROUP BY Country
ORDER BY NumberOfCoaches DESC;

--Which disciplines have more female than male participants

SELECT Discipline, Female, Male
FROM [tokyoOlympic].[dbo].[EntriesGender]
WHERE Female > Male;

--Find countries that have both athletes and coaches in the same discipline.

SELECT DISTINCT A.Country, A.Discipline
FROM [tokyoOlympic].[dbo].[Athletes] A
JOIN [tokyoOlympic].[dbo].[Coaches] C
    ON A.Country = C.Country AND A.Discipline = C.Discipline;

--Which medal-winning countries have teams participating in Football?

SELECT DISTINCT M.TeamCountry
FROM [tokyoOlympic].[dbo].[Medals] M
JOIN [tokyoOlympic].[dbo].[Teams] T
    ON M.TeamCountry = T.Country
WHERE T.Discipline = 'Football';
