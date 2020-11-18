select distinct c.movieId, c.title
from movies c
where exists(
select a.actorId, b.actorId from (select actorId, movieId, byear from playsIn natural join actors) a, 
(select actorId, movieId, byear from playsIn natural join actors) b
where a.actorId != b.actorId and a.movieId = c.movieId and b.movieId = c.movieId
and ABS(a.byear - b.byear) > 60)
order by c.movieId asc, c.title asc;
