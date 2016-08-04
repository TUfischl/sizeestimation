SELECT DISTINCT aka_name.name AS writer_pseudo_name, title.title AS movie_title 
FROM aka_name AS aka_name, cast_info AS cast_info, company_name AS company_name, movie_companies AS movie_companies, name AS name, role_type AS role_type, title AS title 
WHERE company_name.country_code ='[us]' AND 
role_type.role ='costume designer' AND 
aka_name.person_id = name.id AND 
cast_info.movie_id = title.id AND 
title.id = movie_companies.movie_id AND 
movie_companies.company_id = company_name.id AND 
cast_info.role_id = role_type.id AND 
aka_name.person_id = cast_info.person_id;
