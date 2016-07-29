CREATE STATISTICS info_type_d
    ON info_type(id) 
WHERE info = 'rating';

CREATE STATISTICS mi_idx_movie_id
    ON movie_info_idx(movie_id) 
WHERE info > '2.0';

CREATE STATISTICS mi_idx_id
    ON movie_info_idx(id) 
WHERE info > '2.0';

CREATE STATISTICS mi_idx_info_type_id
    ON movie_info_idx(info_type_id) 
WHERE info > '2.0';

CREATE STATISTICS mi_idx_all
    ON movie_info_idx(movie_id,id,info_type_id) 
WHERE info > '2.0';