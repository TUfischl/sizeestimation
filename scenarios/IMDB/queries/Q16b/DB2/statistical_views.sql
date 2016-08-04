CREATE VIEW V1 AS (
SELECT A4.title
FROM movie_keyword AS A0,movie_companies AS A1,keyword AS A2,cast_info AS A3,title AS A4,name AS A5
WHERE A0.movie_id=A1.movie_id AND A0.movie_id=A3.movie_id AND A0.movie_id=A4.id AND A0.keyword_id=A2.id AND A3.person_id=A5.id AND A2.keyword='character-name-in-title'
);

ALTER VIEW V1 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V1 WITH DISTRIBUTION;

CREATE VIEW V2 AS (
SELECT A0.title
FROM title AS A0

);

ALTER VIEW V2 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V2 WITH DISTRIBUTION;

CREATE VIEW V4 AS (
SELECT A5.title
FROM movie_keyword AS A0,keyword AS A1,movie_companies AS A2,company_name AS A3,cast_info AS A4,title AS A5
WHERE A0.movie_id=A2.movie_id AND A0.movie_id=A4.movie_id AND A0.movie_id=A5.id AND A0.keyword_id=A1.id AND A2.company_id=A3.id AND A1.keyword='character-name-in-title' AND A3.country_code='[us]'
);

ALTER VIEW V4 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V4 WITH DISTRIBUTION;

CREATE VIEW V7 AS (
SELECT A1.title
FROM cast_info AS A0,title AS A1,movie_companies AS A2
WHERE A0.movie_id=A1.id AND A0.movie_id=A2.movie_id
);

ALTER VIEW V7 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V7 WITH DISTRIBUTION;

