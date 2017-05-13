CREATE SCHEMA `university`  DEFAULT CHARACTER SET utf8;
use university;
--创建department表
/*主码：`dept_name`
  外码：

*/
CREATE TABLE  `university`.`department` (
  `dept_name` varchar(45) NOT NULL,
  `Building` varchar(45) DEFAULT NULL,
  `budget` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`dept_name`)
)

--创建student表
/*主码：`ID`
  外码：`dept_name`

*/
CREATE TABLE `university`.`student` (
  `ID` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `age` int(10) unsigned DEFAULT NULL,
  `emotion_state` varchar(45) DEFAULT NULL,
  `dept_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_student_1_idx` (`dept_name`),
  CONSTRAINT `fk_student_1` FOREIGN KEY (`dept_name`) REFERENCES `department` (`dept_name`) ON DELETE NO ACTION ON UPDATE NO ACTION
)
--创建exam表
/*主码：`student_ID`
  外码：`student_ID`

*/
CREATE TABLE `university`.`exam` (
  `student_ID` int(11) NOT NULL,
  `exam_name` varchar(45) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL,
  PRIMARY KEY (`student_ID`),
  CONSTRAINT `fk_exam_1` FOREIGN KEY (`student_ID`) REFERENCES `student` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) 
