select distinct actorId
from playsIn
except
select actorId
from playsIn
natural join (select movieId from movies where rating <= 7 or rating is null) a
order by actorId asc;





