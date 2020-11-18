select distinct b.actorId
from (select movieId from actors natural join playsIn where name = 'Charles Chaplin') a
natural join playsIn b
intersect
select actorId
from movies 
natural join playsIn 
where duration > 90
order by actorId asc;




