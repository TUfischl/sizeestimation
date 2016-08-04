--Size: 413028
CREATE VIEW V1 AS (
SELECT DISTINCT title.title AS A0
FROM movie_companies, title, cast_info, company_name, role_type
WHERE movie_companies.movie_id=title.id
	 AND cast_info.movie_id=title.id
	 AND movie_companies.company_id=company_name.id
	 AND cast_info.role_id=role_type.id
	 AND company_name.country_code='[us]'
	 AND role_type.role='writer'
);

ALTER VIEW V1 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V1 WITH DISTRIBUTION;

--Size: 633731
CREATE VIEW V2 AS (
SELECT DISTINCT title.title AS A0
FROM title, cast_info, aka_name, role_type, name
WHERE cast_info.movie_id=title.id
	 AND aka_name.person_id=cast_info.person_id
	 AND cast_info.role_id=role_type.id
	 AND aka_name.person_id=name.id
	 AND role_type.role='writer'
);

ALTER VIEW V2 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V2 WITH DISTRIBUTION;


--Size: 463619
CREATE VIEW V3 AS (
SELECT DISTINCT title.title AS A0
FROM title, cast_info, aka_name, role_type, name, movie_companies
WHERE cast_info.movie_id=title.id
	 AND aka_name.person_id=cast_info.person_id
	 AND cast_info.role_id=role_type.id
	 AND aka_name.person_id=name.id
	 AND movie_companies.movie_id=title.id
	 AND role_type.role='writer'
);

ALTER VIEW V3 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V3 WITH DISTRIBUTION;


--Size: 665851
CREATE VIEW V4 AS (
SELECT DISTINCT title.title AS A0
FROM title, movie_companies, company_name
WHERE movie_companies.movie_id=title.id
	 AND movie_companies.company_id=company_name.id
	 AND company_name.country_code='[us]'
);

ALTER VIEW V4 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V4 WITH DISTRIBUTION;


--Size: 804880
CREATE VIEW V5 AS (
SELECT DISTINCT title.title AS A0
FROM title, movie_companies, cast_info, role_type
WHERE movie_companies.movie_id=title.id
	 AND cast_info.movie_id=title.id
	 AND cast_info.role_id=role_type.id
	 AND role_type.role='writer'
);

ALTER VIEW V5 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V5 WITH DISTRIBUTION;

