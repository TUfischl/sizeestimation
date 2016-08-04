CREATE STATISTICS keyword_id
    ON keyword(id) 
WHERE keyword ='character-name-in-title';

CREATE STATISTICS company_name_id
    ON company_name(id) 
WHERE country_code ='[nl]';