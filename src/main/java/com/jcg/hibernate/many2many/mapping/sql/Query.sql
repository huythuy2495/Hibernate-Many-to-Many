CREATE DATABASE tutorialDb;
 
USE tutorialDb;
 
CREATE TABLE employee (
	employee_id int(10) NOT NULL AUTO_INCREMENT,
	firstname VARCHAR(50) NULL DEFAULT NULL,
	lastname VARCHAR(50) NULL DEFAULT NULL,
	PRIMARY KEY (employee_id)
);

CREATE TABLE meeting (
	meeting_id int(20) NOT NULL AUTO_INCREMENT,
	subject VARCHAR(50) NOT NULL,
	meeting_date DATE NOT NULL,
	PRIMARY KEY (meeting_id)
);

CREATE TABLE employee_meeting (
	employee_id int(20) NOT NULL,
	meeting_id int(20) NOT NULL,
	PRIMARY KEY (employee_id, meeting_id),
	INDEX FK_MEETING (meeting_id),
	CONSTRAINT FK_EMPLOYEE FOREIGN KEY (employee_id) REFERENCES employee (employee_id),
	CONSTRAINT FK_MEETING FOREIGN KEY (meeting_id) REFERENCES meeting (meeting_id)
);