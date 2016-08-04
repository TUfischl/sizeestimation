CREATE VIEW V1 AS (
SELECT A3.title
FROM movie_keyword AS A0,keyword AS A1,movie_companies AS A2,title AS A3
WHERE A0.movie_id=A2.movie_id AND A0.movie_id=A3.id AND A0.keyword_id=A1.id AND A1.keyword='character-name-in-title'
);

ALTER VIEW V1 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V1 WITH DISTRIBUTION;

CREATE VIEW V2 AS (
SELECT A0.title
FROM title AS A0

);

ALTER VIEW V2 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V2 WITH DISTRIBUTION;

CREATE VIEW V3 AS (
SELECT A2.title
FROM movie_keyword AS A0,movie_companies AS A1,title AS A2
WHERE A0.movie_id=A1.movie_id AND A0.movie_id=A2.id
);

ALTER VIEW V3 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V3 WITH DISTRIBUTION;

CREATE VIEW V5 AS (
SELECT A3.title
FROM movie_companies AS A0,company_name AS A1,movie_keyword AS A2,title AS A3
WHERE A0.movie_id=A2.movie_id AND A0.movie_id=A3.id AND A0.company_id=A1.id AND A1.country_code='[us]'
);

ALTER VIEW V5 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V5 WITH DISTRIBUTION;

