CREATE STATISTICS company_name_id 
    ON company_name(id) 
WHERE country_code  = '[us]';

CREATE STATISTICS company_type_id 
    ON company_type(id) 
WHERE kind ='production companies';

CREATE STATISTICS info_type_id1
    ON info_type(id) 
WHERE info ='rating';

CREATE STATISTICS info_type_id2
    ON info_type(id) 
WHERE info ='release dates';

CREATE STATISTICS kind_type_id
    ON kind_type(id) 
WHERE kind ='movie';