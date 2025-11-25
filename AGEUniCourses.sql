DROP TABLE IF EXISTS course_layout CASCADE;
DROP TABLE IF EXISTS department CASCADE;
DROP TABLE IF EXISTS job_title CASCADE;
DROP TABLE IF EXISTS person CASCADE;
DROP TABLE IF EXISTS phone_number CASCADE;
DROP TABLE IF EXISTS study_period CASCADE;
DROP TABLE IF EXISTS teaching_activity CASCADE;
DROP TABLE IF EXISTS course_instance CASCADE;
DROP TABLE IF EXISTS employee CASCADE;
DROP TABLE IF EXISTS planned_activity CASCADE;
DROP TABLE IF EXISTS skill_set CASCADE;
DROP TABLE IF EXISTS employee_activity CASCADE;

CREATE TABLE course_layout (
 course_id  INT NOT NULL,
 course_code CHAR(6) NOT NULL,
 course_name VARCHAR(2000) NOT NULL,
 min_students INT,
 max_students INT,
 hp FLOAT
);

ALTER TABLE course_layout ADD CONSTRAINT PK_course_layout PRIMARY KEY (course_id );


CREATE TABLE department (
 department_id INT NOT NULL,
 department_name VARCHAR(2000) NOT NULL,
 manager CHAR(10)
);

ALTER TABLE department ADD CONSTRAINT PK_department PRIMARY KEY (department_id);


CREATE TABLE job_title (
 job_title_id INT NOT NULL,
 job_title VARCHAR(20) NOT NULL
);

ALTER TABLE job_title ADD CONSTRAINT PK_job_title PRIMARY KEY (job_title_id);


CREATE TABLE person (
 personal_number CHAR(12) NOT NULL,
 first_name VARCHAR(50),
 last_name VARCHAR(50),
 address VARCHAR(50)
);

ALTER TABLE person ADD CONSTRAINT PK_person PRIMARY KEY (personal_number);


CREATE TABLE phone_number (
 phone_nr INT NOT NULL,
 personal_number CHAR(12) NOT NULL
);

ALTER TABLE phone_number ADD CONSTRAINT PK_phone_number PRIMARY KEY (phone_nr);


CREATE TABLE study_period (
 study_period CHAR(2) NOT NULL
);

ALTER TABLE study_period ADD CONSTRAINT PK_study_period PRIMARY KEY (study_period);


CREATE TABLE teaching_activity (
 teaching_id INT NOT NULL,
 activity_name VARCHAR(20) NOT NULL,
 factor FLOAT(2)
);

ALTER TABLE teaching_activity ADD CONSTRAINT PK_teaching_activity PRIMARY KEY (teaching_id);


CREATE TABLE course_instance (
 instance_id CHAR(10) NOT NULL,
 num_students INT,
 study_year INT,
 course_id  INT NOT NULL,
 study_period CHAR(2) NOT NULL
);

ALTER TABLE course_instance ADD CONSTRAINT PK_course_instance PRIMARY KEY (instance_id);


CREATE TABLE employee (
 employment_id CHAR(10) NOT NULL,
 salary INT,
 supervisor CHAR(10),
 personal_number CHAR(12) NOT NULL,
 department_id INT NOT NULL,
 job_title_id INT NOT NULL
);

ALTER TABLE employee ADD CONSTRAINT PK_employee PRIMARY KEY (employment_id);


CREATE TABLE planned_activity (
 activity_id INT NOT NULL,
 instance_id CHAR(10) NOT NULL,
 planned_hours INT,
 teaching_id INT NOT NULL
);

ALTER TABLE planned_activity ADD CONSTRAINT PK_planned_activity PRIMARY KEY (activity_id,instance_id);


CREATE TABLE skill_set (
 skill VARCHAR(50) NOT NULL,
 employment_id CHAR(10) NOT NULL
);

ALTER TABLE skill_set ADD CONSTRAINT PK_skill_set PRIMARY KEY (skill,employment_id);


CREATE TABLE employee_activity (
 employment_id CHAR(10) NOT NULL,
 activity_id INT NOT NULL,
 instance_id CHAR(10) NOT NULL
);

ALTER TABLE employee_activity ADD CONSTRAINT PK_employee_activity PRIMARY KEY (employment_id,activity_id,instance_id);


ALTER TABLE phone_number ADD CONSTRAINT FK_phone_number_0 FOREIGN KEY (personal_number) REFERENCES person (personal_number);


ALTER TABLE course_instance ADD CONSTRAINT FK_course_instance_0 FOREIGN KEY (course_id ) REFERENCES course_layout (course_id );
ALTER TABLE course_instance ADD CONSTRAINT FK_course_instance_1 FOREIGN KEY (study_period) REFERENCES study_period (study_period);


ALTER TABLE employee ADD CONSTRAINT FK_employee_0 FOREIGN KEY (personal_number) REFERENCES person (personal_number);
ALTER TABLE employee ADD CONSTRAINT FK_employee_1 FOREIGN KEY (department_id) REFERENCES department (department_id);
ALTER TABLE employee ADD CONSTRAINT FK_employee_2 FOREIGN KEY (job_title_id) REFERENCES job_title (job_title_id);


ALTER TABLE planned_activity ADD CONSTRAINT FK_planned_activity_0 FOREIGN KEY (instance_id) REFERENCES course_instance (instance_id);
ALTER TABLE planned_activity ADD CONSTRAINT FK_planned_activity_1 FOREIGN KEY (teaching_id) REFERENCES teaching_activity (teaching_id);


ALTER TABLE skill_set ADD CONSTRAINT FK_skill_set_0 FOREIGN KEY (employment_id) REFERENCES employee (employment_id);


ALTER TABLE employee_activity ADD CONSTRAINT FK_employee_activity_0 FOREIGN KEY (employment_id) REFERENCES employee (employment_id);
ALTER TABLE employee_activity ADD CONSTRAINT FK_employee_activity_1 FOREIGN KEY (activity_id,instance_id) REFERENCES planned_activity (activity_id,instance_id);


--DATA should be moved to second file
  -- ('XD2447','erat neque',31,96,'7.5'),