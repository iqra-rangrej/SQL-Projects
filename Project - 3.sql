# Project - 3 Final Project :-

CREATE DATABASE University_course_management_system;
USE University_course_management_system;

# Students Table :
CREATE TABLE Students (
	Student_id INT PRIMARY KEY,
    First_name VARCHAR (50),
    Last_name VARCHAR (50),
    Email VARCHAR (50) UNIQUE,
    Birthdate DATE,
    Enrollment_date DATE
);

# Department Table :
CREATE TABLE Departments (
	Department_id INT PRIMARY KEY,
    Department_name VARCHAR (50)
);

# Courses Table :
CREATE TABLE Courses (
	Course_id INT PRIMARY KEY,
    Course_name VARCHAR (50),
    Department_id INT,
    Credits INT,
	FOREIGN KEY (Department_id) REFERENCES Departments (Department_id)
);

# Instructors Table :
CREATE TABLE Instructors (
	Instructor_id INT PRIMARY KEY,
    first_name VARCHAR (50),
    last_name VARCHAR (50),
    Email VARCHAR (50) UNIQUE,
    Department_id INT,
	FOREIGN KEY (Department_id) REFERENCES Departments (Department_id)
);

# Enrollment Table :
CREATE TABLE Enrollments (
	Enrollment_id INT PRIMARY KEY,
    Student_id INT,
    Course_id INT,
    Enrollment_date DATE,
	FOREIGN KEY (Student_id) REFERENCES Students (Student_id),
    FOREIGN KEY (Course_id) REFERENCES Courses (Course_id)
);

# CRUD Operation : (Create, Read, Update, Delete)
# Create :
INSERT INTO Students VALUES
(1,'Ayaan','Shaikh','ayaan1@gmail.com','2001-02-10','2020-07-01'),
(2,'Zoya','Khan','zoya2@gmail.com','2002-03-12','2021-07-01'),
(3,'Arjun','Patel','arjun3@gmail.com','2000-05-20','2019-07-01'),
(4,'Sara','Ali','sara4@gmail.com','2003-01-11','2023-07-01'),
(5,'Kabir','Shah','kabir5@gmail.com','2001-09-09','2020-07-01'),
(6,'Riya','Mehta','riya6@gmail.com','2002-11-21','2022-07-01'),
(7,'Dev','Joshi','dev7@gmail.com','2000-04-15','2018-07-01'),
(8,'Isha','Kapoor','isha8@gmail.com','2003-06-30','2024-07-01'),
(9,'Yash','Verma','yash9@gmail.com','2001-08-14','2021-07-01'),
(10,'Neha','Singh','neha10@gmail.com','2002-02-18','2022-07-01'),
(11,'Rahul','Das','rahul11@gmail.com','2001-01-01','2020-07-01'),
(12,'Simran','Kaur','simran12@gmail.com','2002-02-02','2021-07-01'),
(13,'Vikram','Reddy','vikram13@gmail.com','2000-03-03','2019-07-01'),
(14,'Pooja','Nair','pooja14@gmail.com','2003-04-04','2023-07-01'),
(15,'Aditya','Yadav','aditya15@gmail.com','2001-05-05','2020-07-01'),
(16,'Sneha','Iyer','sneha16@gmail.com','2002-06-06','2022-07-01'),
(17,'Karan','Malhotra','karan17@gmail.com','2000-07-07','2018-07-01'),
(18,'Ananya','Gupta','ananya18@gmail.com','2003-08-08','2024-07-01'),
(19,'Rohit','Agarwal','rohit19@gmail.com','2001-09-09','2021-07-01'),
(20,'Meera','Sharma','meera20@gmail.com','2002-10-10','2022-07-01'),
(21,'Student21','LN21','s21@gmail.com','2001-01-01','2020-07-01'),
(22,'Student22','LN22','s22@gmail.com','2002-01-01','2021-07-01'),
(23,'Student23','LN23','s23@gmail.com','2000-01-01','2019-07-01'),
(24,'Student24','LN24','s24@gmail.com','2003-01-01','2023-07-01'),
(25,'Student25','LN25','s25@gmail.com','2001-01-01','2020-07-01'),
(26,'Student26','LN26','s26@gmail.com','2002-01-01','2022-07-01'),
(27,'Student27','LN27','s27@gmail.com','2000-01-01','2018-07-01'),
(28,'Student28','LN28','s28@gmail.com','2003-01-01','2024-07-01'),
(29,'Student29','LN29','s29@gmail.com','2001-01-01','2021-07-01'),
(30,'Student30','LN30','s30@gmail.com','2002-01-01','2022-07-01'),
(31,'Student31','LN31','s31@gmail.com','2001-01-01','2020-07-01'),
(32,'Student32','LN32','s32@gmail.com','2002-01-01','2021-07-01'),
(33,'Student33','LN33','s33@gmail.com','2000-01-01','2019-07-01'),
(34,'Student34','LN34','s34@gmail.com','2003-01-01','2023-07-01'),
(35,'Student35','LN35','s35@gmail.com','2001-01-01','2020-07-01'),
(36,'Student36','LN36','s36@gmail.com','2002-01-01','2022-07-01'),
(37,'Student37','LN37','s37@gmail.com','2000-01-01','2018-07-01'),
(38,'Student38','LN38','s38@gmail.com','2003-01-01','2024-07-01'),
(39,'Student39','LN39','s39@gmail.com','2001-01-01','2021-07-01'),
(40,'Student40','LN40','s40@gmail.com','2002-01-01','2022-07-01'),
(41,'Student41','LN41','s41@gmail.com','2001-01-01','2020-07-01'),
(42,'Student42','LN42','s42@gmail.com','2002-01-01','2021-07-01'),
(43,'Student43','LN43','s43@gmail.com','2000-01-01','2019-07-01'),
(44,'Student44','LN44','s44@gmail.com','2003-01-01','2023-07-01'),
(45,'Student45','LN45','s45@gmail.com','2001-01-01','2020-07-01'),
(46,'Student46','LN46','s46@gmail.com','2002-01-01','2022-07-01'),
(47,'Student47','LN47','s47@gmail.com','2000-01-01','2018-07-01'),
(48,'Student48','LN48','s48@gmail.com','2003-01-01','2024-07-01'),
(49,'Student49','LN49','s49@gmail.com','2001-01-01','2021-07-01'),
(50,'Student50','LN50','s50@gmail.com','2002-01-01','2022-07-01'),
(51,'Student51','LN51','s51@gmail.com','2001-01-01','2020-07-01'),
(52,'Student52','LN52','s52@gmail.com','2002-01-01','2021-07-01'),
(53,'Student53','LN53','s53@gmail.com','2000-01-01','2019-07-01'),
(54,'Student54','LN54','s54@gmail.com','2003-01-01','2023-07-01'),
(55,'Student55','LN55','s55@gmail.com','2001-01-01','2020-07-01'),
(56,'Student56','LN56','s56@gmail.com','2002-01-01','2022-07-01'),
(57,'Student57','LN57','s57@gmail.com','2000-01-01','2018-07-01'),
(58,'Student58','LN58','s58@gmail.com','2003-01-01','2024-07-01'),
(59,'Student59','LN59','s59@gmail.com','2001-01-01','2021-07-01'),
(60,'Student60','LN60','s60@gmail.com','2002-01-01','2022-07-01'),
(61,'Student61','LN61','s61@gmail.com','2001-01-01','2020-07-01'),
(62,'Student62','LN62','s62@gmail.com','2002-01-01','2021-07-01'),
(63,'Student63','LN63','s63@gmail.com','2000-01-01','2019-07-01'),
(64,'Student64','LN64','s64@gmail.com','2003-01-01','2023-07-01'),
(65,'Student65','LN65','s65@gmail.com','2001-01-01','2020-07-01'),
(66,'Student66','LN66','s66@gmail.com','2002-01-01','2022-07-01'),
(67,'Student67','LN67','s67@gmail.com','2000-01-01','2018-07-01'),
(68,'Student68','LN68','s68@gmail.com','2003-01-01','2024-07-01'),
(69,'Student69','LN69','s69@gmail.com','2001-01-01','2021-07-01'),
(70,'Student70','LN70','s70@gmail.com','2002-01-01','2022-07-01'),
(71,'Student71','LN71','s71@gmail.com','2001-01-01','2020-07-01'),
(72,'Student72','LN72','s72@gmail.com','2002-01-01','2021-07-01'),
(73,'Student73','LN73','s73@gmail.com','2000-01-01','2019-07-01'),
(74,'Student74','LN74','s74@gmail.com','2003-01-01','2023-07-01'),
(75,'Student75','LN75','s75@gmail.com','2001-01-01','2020-07-01'),
(76,'Student76','LN76','s76@gmail.com','2002-01-01','2022-07-01'),
(77,'Student77','LN77','s77@gmail.com','2000-01-01','2018-07-01'),
(78,'Student78','LN78','s78@gmail.com','2003-01-01','2024-07-01'),
(79,'Student79','LN79','s79@gmail.com','2001-01-01','2021-07-01'),
(80,'Student80','LN80','s80@gmail.com','2002-01-01','2022-07-01'),
(81,'Student81','LN81','s81@gmail.com','2001-01-01','2020-07-01'),
(82,'Student82','LN82','s82@gmail.com','2002-01-01','2021-07-01'),
(83,'Student83','LN83','s83@gmail.com','2000-01-01','2019-07-01'),
(84,'Student84','LN84','s84@gmail.com','2003-01-01','2023-07-01'),
(85,'Student85','LN85','s85@gmail.com','2001-01-01','2020-07-01'),
(86,'Student86','LN86','s86@gmail.com','2002-01-01','2022-07-01'),
(87,'Student87','LN87','s87@gmail.com','2000-01-01','2018-07-01'),
(88,'Student88','LN88','s88@gmail.com','2003-01-01','2024-07-01'),
(89,'Student89','LN89','s89@gmail.com','2001-01-01','2021-07-01'),
(90,'Student90','LN90','s90@gmail.com','2002-01-01','2022-07-01'),
(91,'Student91','LN91','s91@gmail.com','2001-01-01','2020-07-01'),
(92,'Student92','LN92','s92@gmail.com','2002-01-01','2021-07-01'),
(93,'Student93','LN93','s93@gmail.com','2000-01-01','2019-07-01'),
(94,'Student94','LN94','s94@gmail.com','2003-01-01','2023-07-01'),
(95,'Student95','LN95','s95@gmail.com','2001-01-01','2020-07-01'),
(96,'Student96','LN96','s96@gmail.com','2002-01-01','2022-07-01'),
(97,'Student97','LN97','s97@gmail.com','2000-01-01','2018-07-01'),
(98,'Student98','LN98','s98@gmail.com','2003-01-01','2024-07-01'),
(99,'Student99','LN99','s99@gmail.com','2001-01-01','2021-07-01'),
(100,'Student100','LN100','s100@gmail.com','2002-01-01','2022-07-01');

INSERT INTO Departments VALUES
(1,'Computer Science'),(2,'Mathematics'),(3,'Physics'),(4,'Commerce'),(5,'Statistics'),
(6,'Economics'),(7,'Biology'),(8,'Chemistry'),(9,'Management'),(10,'Arts'),
(11,'Computer Science 2'),(12,'Mathematics 2'),(13,'Physics 2'),(14,'Commerce 2'),(15,'Statistics 2'),
(16,'Economics 2'),(17,'Biology 2'),(18,'Chemistry 2'),(19,'Management 2'),(20,'Arts 2'),
(21,'Computer Science 3'),(22,'Mathematics 3'),(23,'Physics 3'),(24,'Commerce 3'),(25,'Statistics 3'),
(26,'Economics 3'),(27,'Biology 3'),(28,'Chemistry 3'),(29,'Management 3'),(30,'Arts 3'),
(31,'Computer Science 4'),(32,'Mathematics 4'),(33,'Physics 4'),(34,'Commerce 4'),(35,'Statistics 4'),
(36,'Economics 4'),(37,'Biology 4'),(38,'Chemistry 4'),(39,'Management 4'),(40,'Arts 4'),
(41,'Computer Science 5'),(42,'Mathematics 5'),(43,'Physics 5'),(44,'Commerce 5'),(45,'Statistics 5'),
(46,'Economics 5'),(47,'Biology 5'),(48,'Chemistry 5'),(49,'Management 5'),(50,'Arts 5'),
(51,'Computer Science 6'),(52,'Mathematics 6'),(53,'Physics 6'),(54,'Commerce 6'),(55,'Statistics 6'),
(56,'Economics 6'),(57,'Biology 6'),(58,'Chemistry 6'),(59,'Management 6'),(60,'Arts 6'),
(61,'Computer Science 7'),(62,'Mathematics 7'),(63,'Physics 7'),(64,'Commerce 7'),(65,'Statistics 7'),
(66,'Economics 7'),(67,'Biology 7'),(68,'Chemistry 7'),(69,'Management 7'),(70,'Arts 7'),
(71,'Computer Science 8'),(72,'Mathematics 8'),(73,'Physics 8'),(74,'Commerce 8'),(75,'Statistics 8'),
(76,'Economics 8'),(77,'Biology 8'),(78,'Chemistry 8'),(79,'Management 8'),(80,'Arts 8'),
(81,'Computer Science 9'),(82,'Mathematics 9'),(83,'Physics 9'),(84,'Commerce 9'),(85,'Statistics 9'),
(86,'Economics 9'),(87,'Biology 9'),(88,'Chemistry 9'),(89,'Management 9'),(90,'Arts 9'),
(91,'Computer Science 10'),(92,'Mathematics 10'),(93,'Physics 10'),(94,'Commerce 10'),(95,'Statistics 10'),
(96,'Economics 10'),(97,'Biology 10'),(98,'Chemistry 10'),(99,'Management 10'),(100,'Arts 10');

INSERT INTO Courses VALUES
(101,'Introduction to SQL',1,3),
(102,'Data Structures',1,4),
(103,'Algorithms',1,4),
(104,'DBMS',1,3),
(105,'Operating Systems',1,4),
(106,'Linear Algebra',2,3),
(107,'Calculus',2,4),
(108,'Discrete Math',2,3),
(109,'Advanced Math',2,5),
(110,'Statistics Math',2,3),
(111,'Quantum Physics',3,5),
(112,'Mechanics',3,3),
(113,'Thermodynamics',3,4),
(114,'Optics',3,3),
(115,'Modern Physics',3,4),
(116,'Accounting',4,3),
(117,'Business Studies',4,3),
(118,'Finance',4,4),
(119,'Marketing',4,3),
(120,'Management Basics',4,3),
(121,'Probability',5,3),
(122,'Statistics Basics',5,3),
(123,'Advanced Statistics',5,4),
(124,'Data Analysis',5,4),
(125,'Machine Learning',5,5),
(126,'Course126',6,3),(127,'Course127',7,4),(128,'Course128',8,3),(129,'Course129',9,4),(130,'Course130',10,3),
(131,'Course131',11,4),(132,'Course132',12,3),(133,'Course133',13,4),(134,'Course134',14,3),(135,'Course135',15,4),
(136,'Course136',16,3),(137,'Course137',17,4),(138,'Course138',18,3),(139,'Course139',19,4),(140,'Course140',20,3),
(141,'Course141',21,4),(142,'Course142',22,3),(143,'Course143',23,4),(144,'Course144',24,3),(145,'Course145',25,4),
(146,'Course146',26,3),(147,'Course147',27,4),(148,'Course148',28,3),(149,'Course149',29,4),(150,'Course150',30,3),
(151,'Course151',31,4),(152,'Course152',32,3),(153,'Course153',33,4),(154,'Course154',34,3),(155,'Course155',35,4),
(156,'Course156',36,3),(157,'Course157',37,4),(158,'Course158',38,3),(159,'Course159',39,4),(160,'Course160',40,3),
(161,'Course161',41,4),(162,'Course162',42,3),(163,'Course163',43,4),(164,'Course164',44,3),(165,'Course165',45,4),
(166,'Course166',46,3),(167,'Course167',47,4),(168,'Course168',48,3),(169,'Course169',49,4),(170,'Course170',50,3),
(171,'Course171',51,4),(172,'Course172',52,3),(173,'Course173',53,4),(174,'Course174',54,3),(175,'Course175',55,4),
(176,'Course176',56,3),(177,'Course177',57,4),(178,'Course178',58,3),(179,'Course179',59,4),(180,'Course180',60,3),
(181,'Course181',61,4),(182,'Course182',62,3),(183,'Course183',63,4),(184,'Course184',64,3),(185,'Course185',65,4),
(186,'Course186',66,3),(187,'Course187',67,4),(188,'Course188',68,3),(189,'Course189',69,4),(190,'Course190',70,3),
(191,'Course191',71,4),(192,'Course192',72,3),(193,'Course193',73,4),(194,'Course194',74,3),(195,'Course195',75,4),
(196,'Course196',76,3),(197,'Course197',77,4),(198,'Course198',78,3),(199,'Course199',79,4),(200,'Course200',80,3);

INSERT INTO Instructors VALUES
(1,'Amit','Shah','amit1@mail.com',1),
(2,'Neha','Verma','neha2@mail.com',2),
(3,'Rohit','Patel','rohit3@mail.com',1),
(4,'Sara','Ali','sara4@mail.com',3),
(5,'Zoya','Khan','zoya5@mail.com',5),
(6,'Inst6','LN6','i6@mail.com',6),
(7,'Inst7','LN7','i7@mail.com',7),
(8,'Inst8','LN8','i8@mail.com',8),
(9,'Inst9','LN9','i9@mail.com',9),
(10,'Inst10','LN10','i10@mail.com',10),
(11,'Inst11','LN11','i11@mail.com',11),
(12,'Inst12','LN12','i12@mail.com',12),
(13,'Inst13','LN13','i13@mail.com',13),
(14,'Inst14','LN14','i14@mail.com',14),
(15,'Inst15','LN15','i15@mail.com',15),
(16,'Inst16','LN16','i16@mail.com',16),
(17,'Inst17','LN17','i17@mail.com',17),
(18,'Inst18','LN18','i18@mail.com',18),
(19,'Inst19','LN19','i19@mail.com',19),
(20,'Inst20','LN20','i20@mail.com',20),
(21,'Inst21','LN21','i21@mail.com',21),
(22,'Inst22','LN22','i22@mail.com',22),
(23,'Inst23','LN23','i23@mail.com',23),
(24,'Inst24','LN24','i24@mail.com',24),
(25,'Inst25','LN25','i25@mail.com',25),
(26,'Inst26','LN26','i26@mail.com',26),
(27,'Inst27','LN27','i27@mail.com',27),
(28,'Inst28','LN28','i28@mail.com',28),
(29,'Inst29','LN29','i29@mail.com',29),
(30,'Inst30','LN30','i30@mail.com',30),
(31,'Inst31','LN31','i31@mail.com',31),
(32,'Inst32','LN32','i32@mail.com',32),
(33,'Inst33','LN33','i33@mail.com',33),
(34,'Inst34','LN34','i34@mail.com',34),
(35,'Inst35','LN35','i35@mail.com',35),
(36,'Inst36','LN36','i36@mail.com',36),
(37,'Inst37','LN37','i37@mail.com',37),
(38,'Inst38','LN38','i38@mail.com',38),
(39,'Inst39','LN39','i39@mail.com',39),
(40,'Inst40','LN40','i40@mail.com',40),
(41,'Inst41','LN41','i41@mail.com',41),
(42,'Inst42','LN42','i42@mail.com',42),
(43,'Inst43','LN43','i43@mail.com',43),
(44,'Inst44','LN44','i44@mail.com',44),
(45,'Inst45','LN45','i45@mail.com',45),
(46,'Inst46','LN46','i46@mail.com',46),
(47,'Inst47','LN47','i47@mail.com',47),
(48,'Inst48','LN48','i48@mail.com',48),
(49,'Inst49','LN49','i49@mail.com',49),
(50,'Inst50','LN50','i50@mail.com',50),
(51,'Inst51','LN51','i51@mail.com',51),
(52,'Inst52','LN52','i52@mail.com',52),
(53,'Inst53','LN53','i53@mail.com',53),
(54,'Inst54','LN54','i54@mail.com',54),
(55,'Inst55','LN55','i55@mail.com',55),
(56,'Inst56','LN56','i56@mail.com',56),
(57,'Inst57','LN57','i57@mail.com',57),
(58,'Inst58','LN58','i58@mail.com',58),
(59,'Inst59','LN59','i59@mail.com',59),
(60,'Inst60','LN60','i60@mail.com',60),
(61,'Inst61','LN61','i61@mail.com',61),
(62,'Inst62','LN62','i62@mail.com',62),
(63,'Inst63','LN63','i63@mail.com',63),
(64,'Inst64','LN64','i64@mail.com',64),
(65,'Inst65','LN65','i65@mail.com',65),
(66,'Inst66','LN66','i66@mail.com',66),
(67,'Inst67','LN67','i67@mail.com',67),
(68,'Inst68','LN68','i68@mail.com',68),
(69,'Inst69','LN69','i69@mail.com',69),
(70,'Inst70','LN70','i70@mail.com',70),
(71,'Inst71','LN71','i71@mail.com',71),
(72,'Inst72','LN72','i72@mail.com',72),
(73,'Inst73','LN73','i73@mail.com',73),
(74,'Inst74','LN74','i74@mail.com',74),
(75,'Inst75','LN75','i75@mail.com',75),
(76,'Inst76','LN76','i76@mail.com',76),
(77,'Inst77','LN77','i77@mail.com',77),
(78,'Inst78','LN78','i78@mail.com',78),
(79,'Inst79','LN79','i79@mail.com',79),
(80,'Inst80','LN80','i80@mail.com',80),
(81,'Inst81','LN81','i81@mail.com',81),
(82,'Inst82','LN82','i82@mail.com',82),
(83,'Inst83','LN83','i83@mail.com',83),
(84,'Inst84','LN84','i84@mail.com',84),
(85,'Inst85','LN85','i85@mail.com',85),
(86,'Inst86','LN86','i86@mail.com',86),
(87,'Inst87','LN87','i87@mail.com',87),
(88,'Inst88','LN88','i88@mail.com',88),
(89,'Inst89','LN89','i89@mail.com',89),
(90,'Inst90','LN90','i90@mail.com',90),
(91,'Inst91','LN91','i91@mail.com',91),
(92,'Inst92','LN92','i92@mail.com',92),
(93,'Inst93','LN93','i93@mail.com',93),
(94,'Inst94','LN94','i94@mail.com',94),
(95,'Inst95','LN95','i95@mail.com',95),
(96,'Inst96','LN96','i96@mail.com',96),
(97,'Inst97','LN97','i97@mail.com',97),
(98,'Inst98','LN98','i98@mail.com',98),
(99,'Inst99','LN99','i99@mail.com',99),
(100,'Inst100','LN100','i100@mail.com',100);

INSERT INTO Enrollments VALUES
(1,1,101,'2022-01-01'),
(2,2,101,'2022-01-02'),
(3,3,101,'2022-01-03'),
(4,4,101,'2022-01-04'),
(5,5,101,'2022-01-05'),
(6,6,101,'2022-01-06'),
(7,7,101,'2022-01-07'),
(8,8,101,'2022-01-08'),
(9,9,101,'2022-01-09'),
(10,10,101,'2022-01-10'),
(11,11,101,'2022-01-11'),
(12,12,101,'2022-01-12'),
(13,13,101,'2022-01-13'),
(14,14,101,'2022-01-14'),
(15,15,101,'2022-01-15'),
(16,1,102,'2022-02-01'),
(17,2,102,'2022-02-02'),
(18,3,102,'2022-02-03'),
(19,4,102,'2022-02-04'),
(20,5,102,'2022-02-05'),
(21,16,102,'2022-02-06'),
(22,17,102,'2022-02-07'),
(23,18,102,'2022-02-08'),
(24,19,102,'2022-02-09'),
(25,20,102,'2022-02-10'),
(26,21,102,'2022-02-11'),
(27,22,102,'2022-02-12'),
(28,23,102,'2022-02-13'),
(29,24,102,'2022-02-14'),
(30,25,102,'2022-02-15'),
(31,1,101,'2022-03-01'),
(32,1,102,'2022-03-02'),
(33,2,101,'2022-03-03'),
(34,2,102,'2022-03-04'),
(35,3,101,'2022-03-05'),
(36,3,102,'2022-03-06'),
(37,26,103,'2022-04-01'),
(38,27,103,'2022-04-02'),
(39,28,103,'2022-04-03'),
(40,29,103,'2022-04-04'),
(41,30,103,'2022-04-05'),
(42,31,103,'2022-04-06'),
(43,32,103,'2022-04-07'),
(44,33,103,'2022-04-08'),
(45,34,103,'2022-04-09'),
(46,35,103,'2022-04-10'),
(47,36,103,'2022-04-11'),
(48,37,104,'2022-05-01'),
(49,38,104,'2022-05-02'),
(50,39,104,'2022-05-03'),
(51,40,104,'2022-05-04'),
(52,41,104,'2022-05-05'),
(53,42,104,'2022-05-06'),
(54,43,104,'2022-05-07'),
(55,44,104,'2022-05-08'),
(56,45,104,'2022-05-09'),
(57,46,104,'2022-05-10'),
(58,47,105,'2022-06-01'),
(59,48,105,'2022-06-02'),
(60,49,105,'2022-06-03'),
(61,50,105,'2022-06-04'),
(62,51,105,'2022-06-05'),
(63,52,105,'2022-06-06'),
(64,53,105,'2022-06-07'),
(65,54,105,'2022-06-08'),
(66,55,105,'2022-06-09'),
(67,56,105,'2022-06-10'),
(68,57,106,'2022-07-01'),
(69,58,106,'2022-07-02'),
(70,59,106,'2022-07-03'),
(71,60,106,'2022-07-04'),
(72,61,106,'2022-07-05'),
(73,62,106,'2022-07-06'),
(74,63,106,'2022-07-07'),
(75,64,106,'2022-07-08'),
(76,65,106,'2022-07-09'),
(77,66,106,'2022-07-10'),
(78,67,107,'2022-08-01'),
(79,68,107,'2022-08-02'),
(80,69,107,'2022-08-03'),
(81,70,107,'2022-08-04'),
(82,71,107,'2022-08-05'),
(83,72,107,'2022-08-06'),
(84,73,107,'2022-08-07'),
(85,74,107,'2022-08-08'),
(86,75,107,'2022-08-09'),
(87,76,107,'2022-08-10'),
(88,77,101,'2023-01-01'),
(89,78,102,'2023-01-02'),
(90,79,103,'2023-01-03'),
(91,80,104,'2023-01-04'),
(92,81,105,'2023-01-05'),
(93,82,106,'2023-01-06'),
(94,83,107,'2023-01-07'),
(95,84,101,'2023-01-08'),
(96,85,102,'2023-01-09'),
(97,86,103,'2023-01-10'),
(98,87,104,'2023-01-11'),
(99,88,105,'2023-01-12'),
(100,89,106,'2023-01-13'),
(101,90,107,'2023-01-14'),
(102,91,101,'2023-02-01'),
(103,92,101,'2023-02-02'),
(104,93,101,'2023-02-03'),
(105,94,101,'2023-02-04'),
(106,95,102,'2023-02-05'),
(107,96,102,'2023-02-06'),
(108,97,102,'2023-02-07'),
(109,98,103,'2023-02-08'),
(110,99,103,'2023-02-09'),
(111,100,104,'2023-02-10');

# Read :
SELECT * FROM Students;
SELECT * FROM Departments;
SELECT * FROM Courses;
SELECT * FROM Instructors;
SELECT * FROM Enrollments;

# Update :
UPDATE Students
SET Email = 'siyara9@gmail.com'
WHERE Student_id = 54;

# Delete :
DELETE FROM Enrollments
WHERE Student_id = 37;
DELETE FROM Students
WHERE Student_id = 37;

# Retrieve students who enrolled after 2022 :
SELECT * FROM Students
WHERE YEAR (Enrollment_date) > 2022;

# Retrieve courses offered by the Mathematics Department with a limit of 5 Courses :
SELECT C.* 
FROM Courses C 
JOIN Departments D ON C.Department_id = D.Department_id
WHERE D.Department_name = 'Mathematics'
LIMIT 5;

# Get the number of students enrolled in each courses, filtering for courses with more than 5 Students :
SELECT Course_id , 
COUNT(Student_id) AS Total_students
FROM Enrollments
GROUP BY Course_id
HAVING  COUNT(Student_id) > 5;

# Find students who are enrolled in both Introduction to SQL and Data Structures :
SELECT S.Student_id , S.First_name 
FROM Students S
JOIN Enrollments E ON S.Student_id = E.Student_id
JOIN Courses C ON E.COurse_id = C.Course_id
WHERE C.Course_name IN ('Introduction to SQL', 'Data Structures')
GROUP BY S.Student_id , S.First_name
HAVING COUNT(DISTINCT C.Course_name) = 2;

# Find students who are either enrolled in both Introduction to SQL and Data Structures : 
SELECT DISTINCT S.Student_id, S.First_name
FROM Students S    
JOIN Enrollments E ON S.Student_id = E.Student_id
JOIN Courses C ON E.COurse_id = C.Course_id
WHERE C.Course_name IN ('Introduction to SQL', 'Data Structures');

# Calculate the average number of credits of all courses :
SELECT AVG(Credits) AS Avg_credits
FROM Courses;

# Count the number of students enrolled in each department :
SELECT d.Department_name, 
COUNT(e.Student_id) AS Total_students
FROM Departments d   
JOIN Courses c ON d.Department_id = c.Department_id
JOIN Enrollments e ON c.Course_id = e.Course_id
GROUP BY d.Department_name;

# INNER JOIN : Retrieve students and their corresponding courses :
SELECT s.First_name , c.Course_name
FROM Students s   
INNER JOIN Enrollments e ON s.Student_id = e.Student_id
INNER JOIN Courses c ON e.Course_id = c.Course_id;

# LEFT JOIN : Retrieve all students and their corresponding courses, if any :
SELECT s.First_name , c.Course_name
FROM Students s   
LEFT JOIN Enrollments e ON s.Student_id = e.Student_id
LEFT JOIN Courses c ON e.Course_id = c.Course_id;

# Subquery : Find students enrolled in courses that have more than 10 students :
SELECT * FROM Students
WHERE Student_id IN (
	SELECT Student_id
    FROM Enrollments
    WHERE Course_id IN (
    SELECT Course_id 
    FROM ENrollments
    GROUP BY Course_id
    HAVING COUNT(Student_id) > 10)
);

# Extract Year from the Enrollment date of students :
SELECT Student_id , YEAR (Enrollment_date) 
AS Enrollment_year
FROM Students;

# Concatenate the instructors first and last name :
SELECT CONCAT(first_name, ' ' , last_name) AS Full_name
FROM Instructors;

# Calculate the running total of students enrolled in courses :
SELECT Course_id ,
COUNT(Student_id) AS Total_Students,
SUM(COUNT(Student_id)) 
OVER (ORDER BY Course_id) AS Running_total
FROM ENrollments
GROUP BY Course_id;

# Label students as "Senior" or "Junior" based on their year of enrollment :
SELECT Student_id,
CASE
WHEN YEAR(CURDATE()) - YEAR(Enrollment_date) > 4 THEN 'SENIOR'
ELSE 'JUNIOR'
END AS Status
FROM Students;












