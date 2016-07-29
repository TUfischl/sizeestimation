CREATE VIEW V2 AS (
SELECT A4.name
FROM title AS A0,cast_info AS A1,movie_companies AS A2,company_name AS A3,name AS A4
WHERE A0.id=A1.movie_id AND A0.id=A2.movie_id AND A1.person_id=A4.id AND A2.company_id=A3.id AND A3.country_code='[us]'
);

ALTER VIEW V2 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V2 WITH DISTRIBUTION;

CREATE VIEW V3 AS (
SELECT A4.name
FROM title AS A0,movie_keyword AS A1,keyword AS A2,cast_info AS A3,name AS A4
WHERE A0.id=A1.movie_id AND A0.id=A3.movie_id AND A1.keyword_id=A2.id AND A3.person_id=A4.id AND A2.keyword='character-name-in-title'
);

ALTER VIEW V3 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V3 WITH DISTRIBUTION;

CREATE VIEW V4 AS (
SELECT A1.name
FROM cast_info AS A0,name AS A1,title AS A2,movie_companies AS A3
WHERE A0.person_id=A1.id AND A0.movie_id=A2.id AND A0.movie_id=A3.movie_id
);

ALTER VIEW V4 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V4 WITH DISTRIBUTION;

CREATE VIEW V5 AS (
SELECT A1.name
FROM cast_info AS A0,name AS A1,title AS A2,movie_keyword AS A3
WHERE A0.person_id=A1.id AND A0.movie_id=A2.id AND A0.movie_id=A3.movie_id
);

ALTER VIEW V5 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V5 WITH DISTRIBUTION;

CREATE VIEW V6 AS (
SELECT A1.name
FROM cast_info AS A0,name AS A1
WHERE A0.person_id=A1.id
);

ALTER VIEW V6 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V6 WITH DISTRIBUTION;

CREATE VIEW V7 AS (
SELECT A1.name
FROM cast_info AS A0,name AS A1,title AS A2
WHERE A0.person_id=A1.id AND A0.movie_id=A2.id
);

ALTER VIEW V7 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V7 WITH DISTRIBUTION;

