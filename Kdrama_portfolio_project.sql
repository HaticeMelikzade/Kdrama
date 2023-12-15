
--All K-dramas released by year--

SELECT name, year_of_release, Genre, rank,tags
FROM PortfolioProject.. kdrama
Order by year_of_release desc


--by genre-

SELECT name, year_of_release, Genre, rank
FROM PortfolioProject.. kdrama
WHERE genre  LIKE '%law%'
ORDER BY genre asc


-- SHOWÝNG COUNT OF EACH GENRE--


SELECT  
       SUM(CASE WHEN genre LIKE '%action%' THEN 1 ELSE 0 END) AS action,
	   SUM(CASE WHEN genre LIKE '%romance%' THEN 1 ELSE 0 END) AS romance,
	   SUM(CASE WHEN genre LIKE '%thriller%' THEN 1 ELSE 0 END) AS thriller,
	   SUM(CASE WHEN genre LIKE '%comedy%' THEN 1 ELSE 0 END) AS comedy,
	   SUM(CASE WHEN genre LIKE '%crime%' THEN 1 ELSE 0 END) AS crime,
	   SUM(CASE WHEN genre LIKE '%horror%' THEN 1 ELSE 0 END) AS horror,
	   SUM(CASE WHEN genre LIKE '%fantasy%' THEN 1 ELSE 0 END) AS fantasy,
	   SUM(CASE WHEN genre LIKE '%law%' THEN 1 ELSE 0 END) AS law,
	   SUM(CASE WHEN genre LIKE '%business%' THEN 1 ELSE 0 END) AS business,
	   SUM(CASE WHEN genre LIKE '%friendship%' THEN 1 ELSE 0 END) AS friendship,
	   SUM(CASE WHEN genre LIKE '%political%' THEN 1 ELSE 0 END) AS political,
	   SUM(CASE WHEN genre LIKE '%medical%' THEN 1 ELSE 0 END) AS medical,
	   SUM(CASE WHEN genre LIKE '%psychological%' THEN 1 ELSE 0 END) AS psychological
FROM PortfolioProject.. kdrama
WHERE genre LIKE '%action%' OR
	 genre LIKE '%romance%' OR
	 genre LIKE '%thriller%' OR
	 genre LIKE '%comedy%' OR
	 genre LIKE '%crime%' OR
	 genre LIKE '%horror%' OR
	 genre LIKE '%fantasy%' OR
	 genre LIKE '%law%' OR
	 genre LIKE '%business%' OR
	 genre LIKE '%friendship%' OR
	 genre LIKE '%political%' OR
	 genre LIKE '%medical%' OR
	 genre LIKE '%psychological%'




--CREATING TABLE WÝTH TOP 20 RANKED KDRAMA--


CREATE TABLE #Top20Kdramaa
(
rank float (53),
name nvarchar(255),
Genre nvarchar(255),
tags nvarchar(255),
cast nvarchar(255),
year_of_release float,
number_of_episodes float
)

INSERT INTO #Top20Kdramaa
SELECT rank, name, Genre ,tags, cast,year_of_release, number_of_episodes
FROM PortfolioProject.. kdrama
WHERE rank <= 20 
Order by rank asc


SELECT *
FROM #Top20Kdramaa
order by rank asc


-- What are the most ranked genres--

SELECT  
       SUM(CASE WHEN genre LIKE '%action%' THEN 1 ELSE 0 END) AS action,
	   SUM(CASE WHEN genre LIKE '%romance%' THEN 1 ELSE 0 END) AS romance,
	   SUM(CASE WHEN genre LIKE '%thriller%' THEN 1 ELSE 0 END) AS thriller,
	   SUM(CASE WHEN genre LIKE '%comedy%' THEN 1 ELSE 0 END) AS comedy,
	   SUM(CASE WHEN genre LIKE '%crime%' THEN 1 ELSE 0 END) AS crime,
	   SUM(CASE WHEN genre LIKE '%horror%' THEN 1 ELSE 0 END) AS horror,
	   SUM(CASE WHEN genre LIKE '%fantasy%' THEN 1 ELSE 0 END) AS fantasy,
	   SUM(CASE WHEN genre LIKE '%law%' THEN 1 ELSE 0 END) AS law,
	   SUM(CASE WHEN genre LIKE '%business%' THEN 1 ELSE 0 END) AS business,
	   SUM(CASE WHEN genre LIKE '%friendship%' THEN 1 ELSE 0 END) AS friendship,
	   SUM(CASE WHEN genre LIKE '%political%' THEN 1 ELSE 0 END) AS political,
	   SUM(CASE WHEN genre LIKE '%medical%' THEN 1 ELSE 0 END) AS medical,
	   SUM(CASE WHEN genre LIKE '%psychological%' THEN 1 ELSE 0 END) AS psychological
FROM PortfolioProject.. #Top20kdramaa
WHERE genre LIKE '%action%' OR
	 genre LIKE '%romance%' OR
	 genre LIKE '%thriller%' OR
	 genre LIKE '%comedy%' OR
	 genre LIKE '%crime%' OR
	 genre LIKE '%horror%' OR
	 genre LIKE '%fantasy%' OR
	 genre LIKE '%law%' OR
	 genre LIKE '%business%' OR
	 genre LIKE '%friendship%' OR
	 genre LIKE '%political%' OR
	 genre LIKE '%medical%' OR
	 genre LIKE '%psychological%'


-- COUNT OF EACH TAGS--


SELECT  
   SUM(CASE WHEN tags LIKE '%male lead%' THEN 1 ELSE 0 END) AS male_lead,
   SUM(CASE WHEN tags LIKE '%female lead%' THEN 1 ELSE 0 END) AS female_lead,
   SUM(CASE WHEN tags LIKE '%badass female lead%' THEN 1 ELSE 0 END) AS badass_female_lead,
   SUM(CASE WHEN tags LIKE '%badass male lead%' THEN 1 ELSE 0 END) AS badass_male_lead,
   SUM(CASE WHEN tags LIKE '%smart male lead%' THEN 1 ELSE 0 END) AS smart_male_lead,
   SUM(CASE WHEN tags LIKE '%smart female lead%' THEN 1 ELSE 0 END) AS smart_female_lead,
   SUM(CASE WHEN tags LIKE '%investigation%' THEN 1 ELSE 0 END) AS investigation,
   SUM(CASE WHEN tags LIKE '%corruption%' THEN 1 ELSE 0 END) AS corruption,
   SUM(CASE WHEN tags LIKE '%best friend%' THEN 1 ELSE 0 END) AS best_friend,
   SUM(CASE WHEN tags LIKE '%Joseon Dynasty%' THEN 1 ELSE 0 END) AS joseon_dynasty,
   SUM(CASE WHEN tags LIKE '%revenge%' THEN 1 ELSE 0 END) AS revenge,
   SUM(CASE WHEN tags LIKE '%murder%' THEN 1 ELSE 0 END) AS murder,
   SUM(CASE WHEN tags LIKE '%hardworking female lead%' THEN 1 ELSE 0 END) AS hardworking_female_lead,
   SUM(CASE WHEN tags LIKE '%female chases male first%' THEN 1 ELSE 0 END) AS female_cases_male_first,
   SUM(CASE WHEN tags LIKE '%healing%' THEN 1 ELSE 0 END) AS healing,
   SUM(CASE WHEN tags LIKE '%serial killer%' THEN 1 ELSE 0 END) AS serial_killer,
   SUM(CASE WHEN tags LIKE '%tragic_past%' THEN 1 ELSE 0 END) AS tragic_past,
   SUM(CASE WHEN tags LIKE '%high school%' THEN 1 ELSE 0 END) AS high_school,
   SUM(CASE WHEN tags LIKE '%teamwork%' THEN 1 ELSE 0 END) AS teamwork,
   SUM(CASE WHEN tags LIKE '%bromance%' THEN 1 ELSE 0 END) AS bromance,
   SUM(CASE WHEN tags LIKE '%death%' THEN 1 ELSE 0 END) AS death,
   SUM(CASE WHEN tags LIKE '%suspense%' THEN 1 ELSE 0 END) AS suspense,
   SUM(CASE WHEN tags LIKE '%eccentric male lead%' THEN 1 ELSE 0 END) AS eccentric_male_lead,
   SUM(CASE WHEN tags LIKE '%interspecies romance%' THEN 1 ELSE 0 END) AS interspecies_romance,
   SUM(CASE WHEN tags LIKE '%ghost%' THEN 1 ELSE 0 END) AS ghost,
   SUM(CASE WHEN tags LIKE '%older woman/younger man%' THEN 1 ELSE 0 END) AS older_woman_younger_man,
   SUM(CASE WHEN tags LIKE '%gore%' THEN 1 ELSE 0 END) AS gore,
   SUM(CASE WHEN tags LIKE '%steamy kiss%' THEN 1 ELSE 0 END) AS steamy_kiss,
   SUM(CASE WHEN tags LIKE '%hardship%' THEN 1 ELSE 0 END) AS hardship,
   SUM(CASE WHEN tags LIKE '%hidden identity%' THEN 1 ELSE 0 END) AS hidden_identity,
   SUM(CASE WHEN tags LIKE '%lying%' THEN 1 ELSE 0 END) AS lying,
   SUM(CASE WHEN tags LIKE '%power struggle%' THEN 1 ELSE 0 END) AS power_struggle,
   SUM(CASE WHEN tags LIKE '%euthanasia%' THEN 1 ELSE 0 END) AS euthanasia,
   SUM(CASE WHEN tags LIKE '%sibling rivalry%' THEN 1 ELSE 0 END) AS sibling_rivalry,
   SUM(CASE WHEN tags LIKE '%fake identity%' THEN 1 ELSE 0 END) AS fake_identity,
   SUM(CASE WHEN tags LIKE '%celebrity%' THEN 1 ELSE 0 END) AS celebrity,
   SUM(CASE WHEN tags LIKE '%fake incest%' THEN 1 ELSE 0 END) AS fake_incest,
   SUM(CASE WHEN tags LIKE '%sassy female lead%' THEN 1 ELSE 0 END) AS sassy_female_lead,
   SUM(CASE WHEN tags LIKE '%family secret%' THEN 1 ELSE 0 END) AS family_secret,
   SUM(CASE WHEN tags LIKE '%street fight%' THEN 1 ELSE 0 END) AS street_fight,
   SUM(CASE WHEN tags LIKE '%father-daughter relationship%' THEN 1 ELSE 0 END) AS father_daughter_relationship,
   SUM(CASE WHEN tags LIKE '%double identity%' THEN 1 ELSE 0 END) AS double_identity,
   SUM(CASE WHEN tags LIKE '%female antagonist%' THEN 1 ELSE 0 END) AS female_antagonist,
   SUM(CASE WHEN tags LIKE '%orphan male lead%' THEN 1 ELSE 0 END) AS orphan_male_lead,
   SUM(CASE WHEN tags LIKE '%female centered plot%' THEN 1 ELSE 0 END) AS female_centered_plot,
   SUM(CASE WHEN tags LIKE '%character development%' THEN 1 ELSE 0 END) AS character_development,
   SUM(CASE WHEN tags LIKE '%alcoholic male lead%' THEN 1 ELSE 0 END) AS alcoholic_male_lead,
   SUM(CASE WHEN tags LIKE '%senior citizen%' THEN 1 ELSE 0 END) AS senior_citizen,
   SUM(CASE WHEN tags LIKE '%gaslighting%' THEN 1 ELSE 0 END) AS gaslighting,
   SUM(CASE WHEN tags LIKE '%clingy female lead%' THEN 1 ELSE 0 END) AS clingy_female_lead,
   SUM(CASE WHEN tags LIKE '%crime solving duo%' THEN 1 ELSE 0 END) AS crime_solving_duo,
   SUM(CASE WHEN tags LIKE '%cold female lead%' THEN 1 ELSE 0 END) AS cold_female_lead,
   SUM(CASE WHEN tags LIKE '%Goguryeo Dynasty%' THEN 1 ELSE 0 END) AS goguryeo_dynasty,
   SUM(CASE WHEN tags LIKE '%motherhood%' THEN 1 ELSE 0 END) AS motherhood,
   SUM(CASE WHEN tags LIKE '%criminal profiler%' THEN 1 ELSE 0 END) AS criminal_profiler,
   SUM(CASE WHEN tags LIKE '%car accident%' THEN 1 ELSE 0 END) AS car_accident,
   SUM(CASE WHEN tags LIKE '%Gwangju Uprising%' THEN 1 ELSE 0 END) AS gwangju_uprising,
   SUM(CASE WHEN tags LIKE '%eccentric female lead%' THEN 1 ELSE 0 END) AS eccentric_female_lead,
   SUM(CASE WHEN tags LIKE '%conspiracy%' THEN 1 ELSE 0 END) AS conspiracy,
   SUM(CASE WHEN tags LIKE '%poor family%' THEN 1 ELSE 0 END) AS poor_family,
   SUM(CASE WHEN tags LIKE '%antihero%' THEN 1 ELSE 0 END) AS antihero,
   SUM(CASE WHEN tags LIKE '%rebellion%' THEN 1 ELSE 0 END )as rebellion
FROM PortfolioProject .. kdrama





-- FINDING MY FAVORÝTE OPPA--


SELECT name, genre, cast, synopsis, year_of_release, rank
FROM PortfolioProject..kdrama
WHERE ',' + cast + ',' LIKE '%,Ji Chang Wook,%';


--WHÝCH ACTOR/ACTRESS HAS THE MOST DRAMA-
--Im too lazy to to write down this code for each actor and I dont know to the easy way so I made a table on excell sorry--

SELECT *
FROM PortfolioProject . . Kdrama_cast


-- K-dramas based on artist--


SELECT
    kc.cast,
    kc.Count_of_cast,
    kd.name,
    kd.genre,
	kd.rank,
	kd.synopsis,
    kd.year_of_release
FROM
    PortfolioProject..kdrama_cast kc
JOIN
    PortfolioProject..kdrama kd ON CHARINDEX(kc.cast, kd.cast) > 0;





