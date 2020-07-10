DROP DATABASE IF EXISTS cms;
-- ALTER USER `root`@`localhost`IDENTIFIED WITH mysql_native_password BY `****`;
-- flush privileges;
CREATE DATABASE cms;

USE cms;

CREATE TABLE department (

id INTEGER AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(30)
);

CREATE TABLE role (

id INTEGER AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(30),
salary DECIMAL,
department_id INTEGER
);

CREATE TABLE employee (

id INTEGER AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(30),
last_name VARCHAR(30),
role_id INTEGER,
manager_id INTEGER
);

INSERT INTO department VALUES(1,'Web Dev');
INSERT INTO role VALUES(1,'Developer',6000.00,1);
INSERT INTO employee VALUES(1,'Employee1','Lastname1',1,1);
INSERT INTO employee VALUES(0,'Employee2','Lastname2',1,1);
INSERT INTO employee VALUES(0,'Employee3','Lastname3',1,1);

SELECT*FROM employee;
SELECT*FROM department;

SELECT e.first_name, e.last_name, m.first_name, m.last_name, r.title, r.salary FROM employee AS e LEFT JOIN employee AS m ON (e.manager_id=m.id) LEFT JOIN role AS r ON(e.role_id=r.id);