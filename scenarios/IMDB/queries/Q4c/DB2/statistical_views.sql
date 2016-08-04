CREATE VIEW V1 AS (
SELECT DISTINCT t.title AS A0
FROM keyword AS k, movie_keyword AS mk, title AS t
WHERE mk.keyword_id=k.id
	 AND mk.movie_id=t.id
	 AND k.keyword LIKE '%sequel%'
	 AND t.production_year>1990
);

ALTER VIEW V1 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V1 WITH DISTRIBUTION;

CREATE VIEW V2 AS (
SELECT DISTINCT t.title AS A0
FROM keyword AS k, movie_keyword AS mk, title AS t, movie_info_idx AS mi_idx
WHERE mk.keyword_id=k.id
	 AND mk.movie_id=t.id
	 AND mi_idx.movie_id=t.id
	 AND k.keyword LIKE '%sequel%'
	 AND mi_idx.info>'2.0'
	 AND t.production_year>1990
);

ALTER VIEW V2 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V2 WITH DISTRIBUTION;

CREATE VIEW V3 AS (
SELECT DISTINCT t.title AS A0
FROM info_type AS it, movie_info_idx AS mi_idx, title AS t
WHERE mi_idx.info_type_id=it.id
	 AND mi_idx.movie_id=t.id
	 AND it.info='rating'
	 AND mi_idx.info>'2.0'
	 AND t.production_year>1990
);

ALTER VIEW V3 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V3 WITH DISTRIBUTION;

CREATE VIEW V4 AS (
SELECT DISTINCT mi_idx.id AS A0
FROM info_type AS it, movie_info_idx AS mi_idx
WHERE mi_idx.info_type_id=it.id
	 AND it.info='rating'
	 AND mi_idx.info>'2.0'
);

ALTER VIEW V4 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V4 WITH DISTRIBUTION;

CREATE VIEW V5 AS (
SELECT DISTINCT mi_idx.id AS A0
FROM info_type AS it, movie_info_idx AS mi_idx, title AS t
WHERE mi_idx.info_type_id=it.id
	 AND mi_idx.movie_id=t.id
	 AND it.info='rating'
	 AND mi_idx.info>'2.0'
	 AND t.production_year>1990
);

ALTER VIEW V5 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V5 WITH DISTRIBUTION;
