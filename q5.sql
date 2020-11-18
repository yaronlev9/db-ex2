select distinct a.actorId as actorId1, b.actorId as actorId2 from playsIn a, playsIn b
where not exists (
(select movieId from playsIn where actorId = b.actorId)
except
(select movieId from playsIn where actorId = a.actorId)) and a.actorId != b.actorId
order by a.actorId asc, b.actorId asc;

