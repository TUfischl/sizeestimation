CREATE STATISTICS company_name_id 
    ON company_name(id) 
WHERE country_code  = '[ru]';

CREATE STATISTICS role_type_id 
    ON role_type(id) 
WHERE role  = 'actor';

CREATE STATISTICS title_id 
    ON title(id) 
WHERE production_year > 2010;