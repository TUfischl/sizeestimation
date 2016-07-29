CREATE STATISTICS company_name_id 
    ON company_name(id) 
WHERE country_code  = '[us]';

CREATE STATISTICS title_id 
    ON title(id) 
WHERE production_year > 1990;