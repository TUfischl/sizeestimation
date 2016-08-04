CREATE TABLE aka_name (
    id integer NOT NULL PRIMARY KEY,
    person_id integer NOT NULL,
    name VARCHAR(30000) NOT NULL,
    imdb_index character varying(12),
    name_pcode_cf character varying(5),
    name_pcode_nf character varying(5),
    surname_pcode character varying(5),
    md5sum character varying(32)
);

CREATE TABLE aka_title (
    id integer NOT NULL PRIMARY KEY,
    movie_id integer NOT NULL,
    title VARCHAR(30000) NOT NULL,
    imdb_index character varying(12),
    kind_id integer NOT NULL,
    production_year integer,
    phonetic_code character varying(5),
    episode_of_id integer,
    season_nr integer,
    episode_nr integer,
    note VARCHAR(30000),
    md5sum character varying(32)
);

CREATE TABLE cast_info (
    id integer NOT NULL PRIMARY KEY,
    person_id integer NOT NULL,
    movie_id integer NOT NULL,
    person_role_id integer,
    note VARCHAR(30000),
    nr_order integer,
    role_id integer NOT NULL
);

CREATE TABLE char_name (
    id integer NOT NULL PRIMARY KEY,
    name VARCHAR(30000) NOT NULL,
    imdb_index character varying(12),
    imdb_id integer,
    name_pcode_nf character varying(5),
    surname_pcode character varying(5),
    md5sum character varying(32)
);

CREATE TABLE comp_cast_type (
    id integer NOT NULL PRIMARY KEY,
    kind character varying(32) NOT NULL
);

CREATE TABLE company_name (
    id integer NOT NULL PRIMARY KEY,
    name VARCHAR(30000) NOT NULL,
    country_code character varying(255),
    imdb_id integer,
    name_pcode_nf character varying(5),
    name_pcode_sf character varying(5),
    md5sum character varying(32)
);

CREATE TABLE company_type (
    id integer NOT NULL PRIMARY KEY,
    kind character varying(32) NOT NULL
);

CREATE TABLE complete_cast (
    id integer NOT NULL PRIMARY KEY,
    movie_id integer,
    subject_id integer NOT NULL,
    status_id integer NOT NULL
);

CREATE TABLE info_type (
    id integer NOT NULL PRIMARY KEY,
    info character varying(32) NOT NULL
);

CREATE TABLE keyword (
    id integer NOT NULL PRIMARY KEY,
    keyword VARCHAR(30000) NOT NULL,
    phonetic_code character varying(5)
);

CREATE TABLE kind_type (
    id integer NOT NULL PRIMARY KEY,
    kind character varying(15) NOT NULL
);

CREATE TABLE link_type (
    id integer NOT NULL PRIMARY KEY,
    link character varying(32) NOT NULL
);

CREATE TABLE movie_companies (
    id integer NOT NULL PRIMARY KEY,
    movie_id integer NOT NULL,
    company_id integer NOT NULL,
    company_type_id integer NOT NULL,
    note VARCHAR(30000)
);

CREATE TABLE movie_info (
    id integer NOT NULL PRIMARY KEY,
    movie_id integer NOT NULL,
    info_type_id integer NOT NULL,
    info VARCHAR(30000) NOT NULL,
    note VARCHAR(30000)
);

CREATE TABLE movie_info_idx (
    id integer NOT NULL PRIMARY KEY,
    movie_id integer NOT NULL,
    info_type_id integer NOT NULL,
    info VARCHAR(30000) NOT NULL,
    note VARCHAR(30000)
);

CREATE TABLE movie_keyword (
    id integer NOT NULL PRIMARY KEY,
    movie_id integer NOT NULL,
    keyword_id integer NOT NULL
);

CREATE TABLE movie_link (
    id integer NOT NULL PRIMARY KEY,
    movie_id integer NOT NULL,
    linked_movie_id integer NOT NULL,
    link_type_id integer NOT NULL
);

CREATE TABLE name (
    id integer NOT NULL PRIMARY KEY,
    name VARCHAR(30000) NOT NULL,
    imdb_index character varying(12),
    imdb_id integer,
    gender character varying(1),
    name_pcode_cf character varying(5),
    name_pcode_nf character varying(5),
    surname_pcode character varying(5),
    md5sum character varying(32)
);

CREATE TABLE person_info (
    id integer NOT NULL PRIMARY KEY,
    person_id integer NOT NULL,
    info_type_id integer NOT NULL,
    info VARCHAR(30000) NOT NULL,
    note VARCHAR(30000)
);

CREATE TABLE role_type (
    id integer NOT NULL PRIMARY KEY,
    role character varying(32) NOT NULL
);

CREATE TABLE title (
    id integer NOT NULL PRIMARY KEY,
    title CLOB(147000000) NOT NULL,
    imdb_index character varying(12),
    kind_id integer NOT NULL,
    production_year integer,
    imdb_id integer,
    phonetic_code character varying(5),
    episode_of_id integer,
    season_nr integer,
    episode_nr integer,
    series_years character varying(49),
    md5sum character varying(32)
);

ALTER TABLE aka_name
ADD CONSTRAINT aka_name_person_id FOREIGN KEY (person_id)
    REFERENCES name(id);
	
ALTER TABLE cast_info
ADD CONSTRAINT cast_info_person_id FOREIGN KEY (person_id)
    REFERENCES name(id);
	
ALTER TABLE cast_info
ADD CONSTRAINT cast_info_person_role_id FOREIGN KEY (person_role_id)
    REFERENCES char_name(id);

ALTER TABLE cast_info
ADD CONSTRAINT cast_info_role_id FOREIGN KEY (role_id)
    REFERENCES role_type(id);
	
ALTER TABLE cast_info
ADD CONSTRAINT cast_info_movie_id FOREIGN KEY (movie_id)
    REFERENCES title(id);
	
ALTER TABLE complete_cast
ADD CONSTRAINT complete_cast_movie_id FOREIGN KEY (movie_id)
    REFERENCES title(id);

ALTER TABLE complete_cast
ADD CONSTRAINT complete_cast_subject_id FOREIGN KEY (subject_id)
    REFERENCES comp_cast_type(id);
	
ALTER TABLE complete_cast
ADD CONSTRAINT complete_cast_status_id FOREIGN KEY (status_id)
    REFERENCES comp_cast_type(id);
	
ALTER TABLE movie_companies
ADD CONSTRAINT movie_companies_movie_id FOREIGN KEY (movie_id)
    REFERENCES title(id);

ALTER TABLE movie_companies
ADD CONSTRAINT movie_companies_company_id FOREIGN KEY (company_id)
    REFERENCES company_name(id);
	
ALTER TABLE movie_companies
ADD CONSTRAINT movie_companies_company_type_id FOREIGN KEY (company_type_id)
    REFERENCES company_type(id);

ALTER TABLE movie_info
ADD CONSTRAINT movie_info_movie_id FOREIGN KEY (movie_id)
    REFERENCES title(id);

ALTER TABLE movie_info_idx
ADD CONSTRAINT movie_info_idx_info_type_id FOREIGN KEY (info_type_id)
    REFERENCES info_type(id);

ALTER TABLE movie_info_idx
ADD CONSTRAINT movie_info_idx_movie_id FOREIGN KEY (movie_id)
    REFERENCES title(id);

ALTER TABLE movie_keyword
ADD CONSTRAINT movie_keyword_movie_id FOREIGN KEY (movie_id)
    REFERENCES title(id);

ALTER TABLE movie_keyword
ADD CONSTRAINT movie_keyword_keyword_id FOREIGN KEY (keyword_id)
    REFERENCES keyword(id);

ALTER TABLE movie_link
ADD CONSTRAINT movie_link_linked_movie_id FOREIGN KEY (linked_movie_id)
    REFERENCES title(id);

ALTER TABLE movie_link
ADD CONSTRAINT movie_link_linked_type_id FOREIGN KEY (link_type_id)
    REFERENCES link_type(id);

ALTER TABLE movie_link
ADD CONSTRAINT movie_link_movie_id FOREIGN KEY (movie_id)
    REFERENCES title(id);

ALTER TABLE person_info
ADD CONSTRAINT person_info_person_id FOREIGN KEY (person_id)
    REFERENCES name(id);

ALTER TABLE person_info
ADD CONSTRAINT person_info_info_type_id FOREIGN KEY (info_type_id)
    REFERENCES info_type(id);

ALTER TABLE title
ADD CONSTRAINT title_episode_of_id FOREIGN KEY (episode_of_id)
    REFERENCES title(id);

ALTER TABLE title
ADD CONSTRAINT title_kind_id FOREIGN KEY (kind_id)
    REFERENCES kind_type(id);