select distinct a.name, p.character
from actors a
natural join playsIn p
where character like 'George%'
order by a.name asc, p.character asc;





