CREATE VIEW V1 AS (
SELECT DISTINCT t.title AS A0
FROM title AS t, cast_info AS ci, char_name AS chn, movie_companies AS mc, company_type AS ct, role_type AS rt
WHERE ci.movie_id=t.id
	 AND ci.person_role_id=chn.id
	 AND mc.movie_id=t.id
	 AND mc.company_type_id=ct.id
	 AND ci.role_id=rt.id
	 AND ci.note LIKE '%(producer)%'
	 AND t.production_year > 1990
);

ALTER VIEW V1 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V1 WITH DISTRIBUTION;

CREATE VIEW V2 AS (
SELECT DISTINCT chn.name AS A0
FROM title AS t, movie_companies AS mc, cast_info AS ci, company_type AS ct, role_type AS rt, char_name AS chn
WHERE mc.movie_id=t.id
	 AND ci.movie_id=t.id
	 AND mc.company_type_id=ct.id
	 AND ci.role_id=rt.id
	 AND ci.person_role_id=chn.id
	 AND ci.note LIKE '%(producer)%'
	 AND t.production_year > 1990
);

ALTER VIEW V2 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V2 WITH DISTRIBUTION;

CREATE VIEW V3 AS (
SELECT DISTINCT t.title AS A0
FROM company_type AS ct, movie_companies AS mc, title AS t, company_name AS cn, cast_info AS ci, role_type AS rt
WHERE mc.company_type_id=ct.id
	 AND mc.movie_id=t.id
	 AND mc.company_id=cn.id
	 AND ci.movie_id=t.id
	 AND ci.role_id=rt.id
	 AND ci.note LIKE '%(producer)%'
	 AND cn.country_code='[us]'
	 AND t.production_year > 1990
);

ALTER VIEW V3 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V3 WITH DISTRIBUTION;

CREATE VIEW V4 AS (
SELECT DISTINCT chn.name AS A0
FROM char_name AS chn, cast_info AS ci, role_type AS rt
WHERE ci.person_role_id=chn.id
	 AND ci.role_id=rt.id
	 AND ci.note LIKE '%(producer)%'
	 );

ALTER VIEW V4 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V4 WITH DISTRIBUTION;

CREATE VIEW V5 AS (
SELECT DISTINCT t.title AS A0
FROM company_type AS ct, movie_companies AS mc, title AS t, cast_info AS ci
WHERE mc.company_type_id=ct.id
	 AND mc.movie_id=t.id
	 AND ci.movie_id=t.id
	 AND ci.note LIKE '%(producer)%'
	 AND t.production_year > 1990
	 );

ALTER VIEW V5 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V5 WITH DISTRIBUTION;

