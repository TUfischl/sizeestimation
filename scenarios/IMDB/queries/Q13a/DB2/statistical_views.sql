--Size: 1066175
CREATE VIEW V1 AS (
SELECT DISTINCT mi.info AS A0, miidx.info_type_id AS A1
FROM info_type AS it2, movie_info AS mi, movie_info_idx AS miidx, title AS t, movie_companies AS mc, company_type AS ct
WHERE it2.id=mi.info_type_id
	 AND mi.movie_id=miidx.movie_id
	 AND miidx.movie_id=t.id
	 AND mi.movie_id=mc.movie_id
	 AND mc.company_type_id=ct.id
	 AND ct.kind='production companies'
	 AND it2.info='release dates'
);

ALTER VIEW V1 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V1 WITH DISTRIBUTION;

--Size: 66822
CREATE VIEW V2 AS (
SELECT DISTINCT mi.info AS A0
FROM movie_info AS mi, movie_companies AS mc, company_name AS cn, info_type AS it2, company_type AS ct, movie_info_idx AS miidx
WHERE mi.movie_id=mc.movie_id
	 AND mc.company_id=cn.id
	 AND it2.id=mi.info_type_id
	 AND mc.company_type_id=ct.id
	 AND mi.movie_id=miidx.movie_id
	 AND cn.country_code='[de]'
	 AND ct.kind='production companies'
	 AND it2.info='release dates'
);

ALTER VIEW V2 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V2 WITH DISTRIBUTION;

--Size: 614177
CREATE VIEW V3 AS (
SELECT DISTINCT miidx.info_type_id AS A0, mi.info AS A1
FROM movie_companies AS mc, company_type AS ct, movie_info AS mi, company_name AS cn, movie_info_idx AS miidx, title AS t
WHERE mc.company_type_id=ct.id
	 AND mi.movie_id=mc.movie_id
	 AND mc.company_id=cn.id
	 AND mi.movie_id=miidx.movie_id
	 AND miidx.movie_id=t.id
	 AND cn.country_code='[de]'
	 AND ct.kind='production companies'
);

ALTER VIEW V3 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V3 WITH DISTRIBUTION;

--Size: 5509047
CREATE VIEW V4 AS (
SELECT DISTINCT mi.info AS A0, t.title AS A1
FROM kind_type AS kt, title AS t, movie_info_idx AS miidx, movie_info AS mi, info_type AS it
WHERE t.kind_id=kt.id
	 AND miidx.movie_id=t.id
	 AND mi.movie_id=miidx.movie_id
	 AND miidx.info_type_id=it.id
	 AND it.info='rating'
	 AND kt.kind='movie'
);

ALTER VIEW V4 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V4 WITH DISTRIBUTION;

--Size: 5
CREATE VIEW V5 AS (
SELECT DISTINCT miidx.info_type_id AS A0
FROM movie_companies AS mc, company_type AS ct, movie_info AS mi, company_name AS cn, movie_info_idx AS miidx
WHERE mc.company_type_id=ct.id
	 AND mi.movie_id=mc.movie_id
	 AND mc.company_id=cn.id
	 AND mi.movie_id=miidx.movie_id
	 AND cn.country_code='[de]'
	 AND ct.kind='production companies'
);

ALTER VIEW V5 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V5 WITH DISTRIBUTION;
