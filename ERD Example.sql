
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