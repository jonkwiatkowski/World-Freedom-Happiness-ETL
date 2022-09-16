-- view entire world_happiness table
select * from world_happiness;

-- view entire human_freedom_index table
select * from human_freedom_index;

-- join tables by country to compare human freedom index and happiness score
select world_happiness.country, world_happiness.region,  world_happiness.happiness_score, human_freedom_index.human_freedom_score
from world_happiness
join human_freedom_index
on world_happiness.country = human_freedom_index.country
order by human_freedom_index.human_freedom_score desc;