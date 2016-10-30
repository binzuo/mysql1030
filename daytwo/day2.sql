DROP DATABASE IF EXISTS demo;
CREATE DATABASE demo;
DROP TABLE IF EXISTS demo.student;
CREATE TABLE demo.student(
  id INT AUTO_INCREMENT PRIMARY KEY ,
  snumber VARBINARY(50),
  sname VARBINARY(20),
  sage INT(3),
  height DOUBLE(3,2)
);
#DESC demo.student;
INSERT INTO demo.student VALUE (NULL ,'001','贤二',22,1.78);
INSERT INTO demo.student VALUE (NULL ,'002','王小五',22,1.78);
INSERT INTO demo.student VALUE (NULL ,'003','李四',22,1.78);
#SELECT *FROM demo.student;
DROP TABLE IF EXISTS demo.course;
CREATE TABLE demo.course(
  id        INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(20) COMMENT 'course title',
  score INT(1) COMMENT '学分'
)
  COMMENT '课程表';
INSERT INTO demo.course VALUES (NULL, 'HTML', 1);
INSERT INTO demo.course VALUES (NULL, 'CSS', 2);
INSERT INTO demo.course VALUES (NULL, 'Java SE', 3);
DROP TABLE IF EXISTS demo.student_course;
CREATE TABLE demo.student_course(
  id INT AUTO_INCREMENT PRIMARY KEY ,
  studentId INT COMMENT 'student id',
  courseId  INT COMMENT 'course id',
  grade     INT(3) COMMENT 'test grade'


)
  COMMENT '学生选课表';
INSERT INTO demo.student_course VALUE (NULL ,1,2,NULL );
INSERT INTO demo.student_course VALUE (NULL ,2,2,NULL );
INSERT INTO demo.student_course VALUE (NULL ,3,3,NULL );
ALTER TABLE demo.student_course
    ADD CONSTRAINT student_course_studentId
FOREIGN KEY (studentId)
  REFERENCES demo.student(id);
ALTER TABLE demo.student_course
    ADD CONSTRAINT  student_course_courseId
FOREIGN KEY (courseId)
  REFERENCES demo.course(id);
SELECT *FROM demo.student;
SELECT *FROM demo.course;
SELECT *FROM demo.student_course;
