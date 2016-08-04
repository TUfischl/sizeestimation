CREATE TABLE memberOf (
s	INT,
o	INT);

CREATE TABLE mastersDegreeFrom (
s	INT,
o	INT);

CREATE TABLE ResearchAssistant (
s	INT);

CREATE TABLE orgPublication (
s	INT,
o	INT);

CREATE TABLE publicationAuthor (
s	INT,
o	INT);

CREATE TABLE TechnicalReport (
s	INT);

CREATE TABLE Course (
s	INT);

CREATE TABLE worksFor (
s	INT,
o	INT);

CREATE TABLE headOf (
s	INT,
o	INT);

CREATE TABLE age (
s	INT,
o	INT);

CREATE TABLE Research (
s	INT);

CREATE TABLE degreeFrom (
s	INT,
o	INT);

CREATE TABLE JournalArticle (
s	INT);

CREATE TABLE member (
s	INT,
o	INT);

CREATE TABLE title (
s	INT,
o	INT);

CREATE TABLE listedCourse (
s	INT,
o	INT);

CREATE TABLE tenured (
s	INT,
o	INT);

CREATE TABLE Ontology (
s	INT);

CREATE TABLE AssistantProfessor (
s	INT);

CREATE TABLE researchInterest (
s	INT,
o	INT);

CREATE TABLE teachingAssistantOf (
s	INT,
o	INT);

CREATE TABLE entities (
id	INT,
lexical_form	VARCHAR(100),
datatype_iri	VARCHAR(100));

CREATE TABLE Employee (
s	INT);

CREATE TABLE Program (
s	INT);

CREATE TABLE AssociateProfessor (
s	INT);

CREATE TABLE Student (
s	INT);

CREATE TABLE FullProfessor (
s	INT);

CREATE TABLE publicationDate (
s	INT,
o	INT);

CREATE TABLE Schedule (
s	INT);

CREATE TABLE ConferencePaper (
s	INT);

CREATE TABLE softwareVersion (
s	INT,
o	INT);

CREATE TABLE Lecturer (
s	INT);

CREATE TABLE publicationResearch (
s	INT,
o	INT);

CREATE TABLE Faculty (
s	INT);

CREATE TABLE ClericalStaff (
s	INT);

CREATE TABLE PostDoc (
s	INT);

CREATE TABLE ResearchGroup (
s	INT);

CREATE TABLE GraduateStudent (
s	INT);

CREATE TABLE next_entity_id (
id	INT);

CREATE TABLE Person (
s	INT);

CREATE TABLE UnofficialPublication (
s	INT);

CREATE TABLE GraduateCourse (
s	INT);

CREATE TABLE Professor (
s	INT);

CREATE TABLE Work (
s	INT);

CREATE TABLE VisitingProfessor (
s	INT);

CREATE TABLE telephone (
s	INT,
o	INT);

CREATE TABLE Department (
s	INT);

CREATE TABLE subOrganizationOf (
s	INT,
o	INT);

CREATE TABLE researchProject (
s	INT,
o	INT);

CREATE TABLE hasAlumnus (
s	INT,
o	INT);

CREATE TABLE TeachingAssistant (
s	INT);

CREATE TABLE Publication (
s	INT);

CREATE TABLE undergraduateDegreeFrom (
s	INT,
o	INT);

CREATE TABLE College (
s	INT);

CREATE TABLE emailAddress (
s	INT,
o	INT);

CREATE TABLE AdministrativeStaff (
s	INT);

CREATE TABLE Manual (
s	INT);

CREATE TABLE advisor (
s	INT,
o	INT);

CREATE TABLE Article (
s	INT);

CREATE TABLE Software (
s	INT,
o	INT);

CREATE TABLE softwareDocumentation (
s	INT,
o	INT);

CREATE TABLE tables (
uri	VARCHAR(100),
table_name	VARCHAR(100),
arity	INT);

CREATE TABLE takesCourse (
s	INT,
o	INT);

CREATE TABLE imports (
s	INT,
o	INT);

CREATE TABLE Organization (
s	INT);

CREATE TABLE affiliatedOrganizationOf (
s	INT,
o	INT);

CREATE TABLE SystemsStaff (
s	INT);

CREATE TABLE affiliateOf (
s	INT,
o	INT);

CREATE TABLE name (
s	INT,
o	INT);

CREATE TABLE University (
s	INT);

CREATE TABLE Specification (
s	INT);

CREATE TABLE Institute (
s	INT);

CREATE TABLE Director (
s	INT);

CREATE TABLE Dean (
s	INT);

CREATE TABLE teacherOf (
s	INT,
o	INT);

CREATE TABLE doctoralDegreeFrom (
s	INT,
o	INT);

CREATE TABLE Book (
s	INT);

CREATE TABLE UndergraduateStudent (
s	INT);

CREATE TABLE Chair (
s	INT);