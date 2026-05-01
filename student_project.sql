--creating table
create table students(
          id INT,
          name VARCHAR(50),
          branch VARCHAR(20),
          gender VARCHAR(10),
          age INT,
          marks INT);
--inserting table
insert into students(id,name,branch,gender,age,marks) values
      (1,'kalyani','csd','f',21,89),
      (2,'hemanth','csd','m',22,91),
      (3,'navya','ece','f',21,90),
      (4,'leela','cse','f',20,92),
      (5,'mahi','csm','f',23,85),
      (6,'poojitha','IT','f',19,75),
      (7,'visesh','csd','m',23,85),
      (9,'soniya','mba','f',23,97),
      (9,'sukumar','mtech','m',26,79),
      (10,'sita','csd','f',21,76),
      (11,'sudha','eee','m',20,83),
      (12,'jaanu','mtech','f',25,77),
      (13,'rahul','csd','m',22,82),
      (14,'siri','vlsi','f',23,99),
      (15,'bala','mca','m',22,100),
      (16,'sowji','cse','f',21,81),
      (17,'sivaji','mech','m',20,98);
select * from students;
select * from students WHERE marks>85;
update students SET marks = 92 WHERE marks=100;
-- only girls
SELECT * FROM students WHERE gender = 'f';
-- only boys
SELECT * FROM students WHERE gender = 'm';
-- increase all marks by 5
UPDATE students 
SET marks = marks + 5;
-- change kalyani marks
UPDATE students 
SET marks = 95 
WHERE name = 'kalyani';
-- highest marks
SELECT MAX(marks) FROM students;
-- lowest marks
SELECT MIN(marks) FROM students;
-- average marks
SELECT AVG(marks) FROM students;
-- count students
SELECT COUNT(*) FROM students;
SELECT * FROM students WHERE branch = 'csd';
SELECT * FROM students WHERE marks BETWEEN 80 AND 95;
SELECT * FROM students WHERE marks = (SELECT MAX(marks) FROM students);
SELECT AVG(marks) AS avg_marks FROM students;
SELECT gender, COUNT(*) FROM students GROUP BY gender;
SELECT branch, COUNT(*) FROM students GROUP BY branch;
-- highest to lowest
SELECT * FROM students ORDER BY marks DESC;
-- lowest to highest
SELECT * FROM students ORDER BY marks ASC;
SELECT * FROM students WHERE marks BETWEEN 80 AND 95;
