DROP TABLE IF EXISTS dbo.SECTION;
DROP TABLE IF EXISTS dbo.COURSES;
DROP TABLE IF EXISTS dbo.STUDENTS;
DROP TABLE IF EXISTS dbo.INSTRUCTORS;
DROP TABLE IF EXISTS dbo.DEPARTMENTS;
DROP TABLE IF EXISTS dbo.CLASSROOMS;



CREATE TABLE CLASSROOMS (
	dept_building INT NOT NULL PRIMARY KEY,
	dept_room_number varchar(50),
	dept_room_capacity INT NOT NULL,
);

CREATE TABLE DEPARTMENTS (
	dept_name INT NOT NULL PRIMARY KEY,
	dept_building INT NOT NULL,
	dept_budget INT,
	FOREIGN KEY(dept_building) REFERENCES dbo.CLASSROOMS(dept_building)	
);

CREATE TABLE INSTRUCTORS (
	dept_name INT NOT NULL,
	instructor_id INT NOT NULL,
	instructor_name varchar(50),
	instructor_salary INT,
	FOREIGN KEY(dept_name) REFERENCES dbo.DEPARTMENTS(dept_name)	
);

CREATE TABLE STUDENTS (
	dept_name INT NOT NULL,
	student_id INT NOT NULL,
	student_name varchar(50),
	student_total_credit INT,
	FOREIGN KEY(dept_name) REFERENCES dbo.DEPARTMENTS(dept_name)	
);

CREATE TABLE COURSES (
	dept_name INT NOT NULL,
	Course_id  INT NOT NULL PRIMARY KEY,
	Course_title varchar(50),
	Course_credits INT,
	Course_prerequisites varchar(50),
	FOREIGN KEY(dept_name) REFERENCES dbo.DEPARTMENTS(dept_name)	
);

CREATE TABLE SECTION (
	Course_id  INT NOT NULL,
	Section_id INT NOT NULL,
	Section_year INT,
	Section_semester varchar(50),
	FOREIGN KEY(Course_id) REFERENCES dbo.COURSES(Course_id)	
);