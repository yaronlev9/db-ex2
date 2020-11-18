select distinct a.movieId, a.title 
from (select movieId, title, year from movies where genre = 'Drama' or genre = 'Documentary') a
natural join (select actorId, movieId from playsIn) b
natural join (select actorId, dyear from actors) c
where year = dyear
order by movieId asc, title asc;





