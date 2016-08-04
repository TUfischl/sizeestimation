CREATE STATISTICS company_name_id
    ON company_name(id) 
WHERE company_name.country_code ='[us]';

CREATE STATISTICS role_type_id
    ON role_type(id) 
WHERE role_type.role ='writer';