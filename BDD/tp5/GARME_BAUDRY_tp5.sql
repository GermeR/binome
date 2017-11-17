# TP 5 Voyages SQL
# @author Robin Germe
# @author Oscar Baudry

# Q1
select distinct c.eid,max(a.portee) from certifications c natural join avions a where exists (select c2.aid from certifications c2 where c.eid = c2.eid and c.aid <> c2.aid) group by c.eid order by c.eid;

# Q2
select e.enom,e.salaire from employes e where e.salaire < (select min(prix) as prix from vols where dep='CDG' and arr='NOU');

# Q3
CREATE view distance_minimal_pilote_100K as (select min(portee) from employes natural join certifications natural join avions where salaire > 100000);

  # Q3.1
  select dep,arr from vols where distance <
  (select * from distance_minimal_pilote_100K) order by dep;

  # Q3.2
  select dep,arr from vols where not exists
  (select eid from employes natural join certifications natural join avions where salaire > 100000 and distance > (select * from distance_minimal_pilote_100K))
  order by dep;

DROP view distance_minimal_pilote_100K;

# Q4
select distinct e.enom from employes e join certifications c using(eid) join avions a using(aid) where a.portee >= 1500 and not exists(
select * from employes e2 join certifications c2 using(eid) join avions a2 using(aid) where a2.portee < 1500 and e2.eid = e.eid);

# Q4 avec group by
select enom from employes join certifications using(eid) join avions using(aid) group by enom having every(portee >= 1500) = 't' order by enom;

# Q5
select distinct e.enom from employes e join certifications c using(eid) join avions a using(aid) where a.portee >= 1500 and not exists(
select * from certifications c2 join avions a2 using (aid) where c.eid = c2.eid and a.aid <> a2.aid and a2.portee < 1500)
group by eid having count(distinct aid) >= 2;

# Q6
select distinct e.enom from employes e join certifications c using(eid) join avions a using(aid) where a.portee >= 1500 and a.anom LIKE '%Boeing%' and not exists(
select * from certifications c2 join avions a2 using (aid) where c.eid = c2.eid and a.aid <> a2.aid and a2.portee < 1500)
group by eid having count(distinct aid) >= 2;

# Q7
select enom,eid,salaire from employes where salaire =
(select max(e.salaire) from employes e join certifications c using(eid) where exists
((select e2.salaire from employes e2 join certifications c2 using(eid) where e2.salaire > e.salaire)));


# Q8
select distinct e.enom from employes e join certifications c using(eid) join avions a using(aid) where a.portee >= 2000
and not exists (select * from certifications c2 join avions a2 using (aid) where c.eid = c2.eid and a2.anom LIKE '%Boeing%');

# Q9
select eid,salaire from employes where eid not in (select eid from employes join certifications using(eid)) and salaire >
(select avg(e.salaire) from employes e join certifications c using(eid));

# Q10
CREATE view salaire_pilote as (select avg(e.salaire) from employes e join certifications c using(eid));
CREATE view salaire_employes as (select avg(salaire) from employes e2);

select((select * from salaire_pilote) - (select * from salaire_employes)) AS Difference_Salaire;

DROP view salaire_pilote;
DROP view salaire_employes;

# Q11
select concat(extract(hour from h_dep),'h',extract(minute from h_dep),'m') as Heure_Depart_Madison from vols where extract(hour from h_arr) < 18 and dep='Madison'
and exists
(select * from vols v1 where v1.arr='New York' and (v1.dep in (select v2.arr from vols v2 where v2.dep='Madison') or v1.dep='Madison'));
