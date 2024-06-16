-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2023 at 03:54 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Admin_ID` int(11) NOT NULL,
  `Admin_Name` varchar(50) DEFAULT NULL,
  `Role` varchar(50) DEFAULT NULL,
  `Admin_Email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Admin_ID`, `Admin_Name`, `Role`, `Admin_Email`) VALUES
(1, 'John Doe', 'enroll student', 'john.doe@example.com'),
(2, 'Jane Smith', 'finance', 'jane.smith@example.com'),
(3, 'Bob Johnson', 'hire teacher', 'bob.johnson@example.com'),
(4, 'Sara Lee', 'IT support', 'sara.lee@example.com'),
(5, 'Tom Wilson', 'finance', 'tom.wilson@example.com'),
(6, 'Emily Davis', 'enroll student', 'emily.davis@example.com'),
(7, 'Mike Anderson', 'hire teacher', 'mike.anderson@example.com'),
(8, 'Lisa Jackson', 'IT support', 'lisa.jackson@example.com'),
(9, 'David Garcia', 'finance', 'david.garcia@example.com'),
(10, 'Karen Lee', 'enroll student', 'karen.lee@example.com');

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `username` varchar(100) DEFAULT NULL,
  `password` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`username`, `password`) VALUES
('John Doe', 1),
('Jane Smith', 2),
('Bob Johnson', 3),
('Sara Lee', 4),
('Tom Wilson', 5),
('Emily Davis', 6),
('Mike Anderson', 7),
('Lisa Jackson', 8),
('David Garcia', 9),
('Karen Lee', 10);

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `StudentID` int(11) NOT NULL,
  `ClassCode` varchar(20) NOT NULL,
  `Attendance_Date` date DEFAULT NULL,
  `Status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `Class_Code` varchar(20) NOT NULL,
  `Class_Name` varchar(50) DEFAULT NULL,
  `Maximum_Capacity` int(11) DEFAULT NULL,
  `Room_Number` varchar(20) DEFAULT NULL,
  `Day` varchar(10) DEFAULT NULL,
  `Time` varchar(20) DEFAULT NULL,
  `Subject` int(11) DEFAULT NULL,
  `Teacher` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`Class_Code`, `Class_Name`, `Maximum_Capacity`, `Room_Number`, `Day`, `Time`, `Subject`, `Teacher`) VALUES
('ART101', 'Introduction to Art', 20, '305', 'Friday', '1:00 PM - 3:00 PM', 12, 109),
('BIO101', 'Biology I', 30, '303', 'Monday', '9:00 AM - 11:00 AM', 4, 108),
('BIO201', 'Biology II', 25, '304', 'Wednesday', '2:00 PM - 4:00 PM', 4, 108),
('CHEM101', 'General Chemistry I', 30, '301', 'Tuesday', '2:00 PM - 4:00 PM', 3, 107),
('CHEM201', 'General Chemistry II', 25, '302', 'Thursday', '11:00 AM - 1:00 PM', 3, 115),
('CS101', 'Intro to Computer Science', 30, '101', 'Monday', '10:00 AM - 12:00 PM', 5, 101),
('EC101', 'Introduction to Economics', 50, 'B-203', 'Monday', '9:00 AM - 10:30 AM', 9, 114),
('ENG101', 'English Composition', 20, '103', 'Monday', '1:00 PM - 3:00 PM', 6, 103),
('ENG201', 'Advanced Writing', 20, '203', 'Wednesday', '1:00 PM - 3:00 PM', 6, 103),
('HIST101', 'World History I', 30, '104', 'Wednesday', '10:00 AM - 12:00 PM', 7, 104),
('HIST201', 'World History II', 30, '204', 'Thursday', '10:00 AM - 12:00 PM', 7, 104),
('MATH101', 'Calculus I', 25, '102', 'Tuesday', '9:00 AM - 11:00 AM', 1, 102),
('MATH201', 'Calculus II', 25, '202', 'Tuesday', '11:00 AM - 1:00 PM', 1, 102),
('MUS101', 'Music Appreciation', 20, '306', 'Thursday', '2:00 PM - 4:00 PM', 12, 110),
('PHIL101', 'Introduction to Philosophy', 30, '307', 'Monday', '11:00 AM - 1:00 PM', 12, 111),
('PHYS101', 'Physics I', 25, '105', 'Thursday', '9:00 AM - 11:00 AM', 2, 105),
('PHYS201', 'Physics II', 25, '205', 'Friday', '9:00 AM - 11:00 AM', 2, 105),
('PSYC101', 'Intro to Psychology', 25, '308', 'Tuesday', '1:00 PM - 3:00 PM', 10, 112),
('SOC101', 'Introduction to Sociology', 30, '309', 'Wednesday', '11:00 AM - 1:00 PM', 12, 113);

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE `grade` (
  `St_ID` int(11) NOT NULL,
  `gradeID` int(11) NOT NULL,
  `Clcode` varchar(20) DEFAULT NULL,
  `Attained_Grade` varchar(10) DEFAULT NULL,
  `Exam_Date` date DEFAULT NULL,
  `Exam_Title` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grade`
--

INSERT INTO `grade` (`St_ID`, `gradeID`, `Clcode`, `Attained_Grade`, `Exam_Date`, `Exam_Title`) VALUES
(21101034, 1, 'CS101', 'B', '2022-01-25', 'Midterm'),
(21101034, 2, 'ENG101', 'C', '2022-02-15', 'Midterm'),
(21101034, 3, 'CS101', 'A', '2022-04-12', 'Final'),
(21101067, 4, 'PHYS101', 'A', '2022-03-02', 'Midterm'),
(21101067, 5, 'MATH201', 'B', '2022-04-20', 'Final'),
(21101100, 23, 'PSYC101', 'B', '2022-02-02', 'Midterm'),
(21101100, 24, 'BIO101', 'B', '2022-02-03', 'Midterm'),
(21101133, 25, 'CHEM201', 'A', '2022-02-04', 'Midterm'),
(21101133, 26, 'ENG201', 'B', '2022-02-05', 'Midterm'),
(21101134, 20, 'PHIL101', 'C', '2022-04-22', 'Final'),
(21101166, 27, 'BIO101', 'C', '2022-02-06', 'Midterm'),
(21101167, 21, 'ENG101', 'A', '2022-02-15', 'Midterm'),
(21101167, 22, 'HIST101', 'A', '2022-04-18', 'Final'),
(21101199, 28, 'PHYS201', 'B', '2022-02-07', 'Midterm'),
(21101232, 29, 'ENG101', 'C', '2022-02-08', 'Midterm'),
(21101232, 30, 'PHYS101', 'B', '2022-02-09', 'Midterm'),
(21101234, 6, 'ENG201', 'C', '2022-02-28', 'Midterm'),
(21101234, 7, 'HIST201', 'B', '2022-04-18', 'Final'),
(21101265, 31, 'MATH201', 'A', '2022-02-15', 'Midterm'),
(21101298, 32, 'ENG201', 'A', '2022-02-15', 'Midterm'),
(21101298, 33, 'HIST201', 'A', '2022-04-18', 'Final'),
(21101345, 8, 'MATH201', 'B', '2022-04-20', 'Final'),
(21101567, 9, 'CHEM101', 'A', '2022-03-10', 'Midterm'),
(21101890, 10, 'PHYS101', 'B', '2022-03-02', 'Midterm'),
(21101890, 11, 'CHEM101', 'A', '2022-04-10', 'Final'),
(21102012, 12, 'BIO201', 'C', '2022-02-22', 'Midterm'),
(21102345, 13, 'ENG101', 'B', '2022-04-15', 'Final'),
(21102567, 14, 'SOC101', 'C', '2022-01-30', 'Midterm'),
(21102567, 15, 'EC101', 'A', '2022-03-20', 'Final'),
(21102789, 16, 'MUS101', 'B', '2022-02-18', 'Midterm'),
(21103012, 17, 'ART101', 'A', '2022-02-10', 'Midterm'),
(21103012, 18, 'MUS101', 'C', '2022-03-28', 'Final'),
(21103012, 19, 'PHIL101', 'B', '2022-04-22', 'Final');

-- --------------------------------------------------------

--
-- Table structure for table `guardian`
--

CREATE TABLE `guardian` (
  `Stu_ID` int(11) NOT NULL,
  `Guardian_Name` varchar(50) DEFAULT NULL,
  `Guardian_Phone` varchar(20) DEFAULT NULL,
  `Relation` varchar(20) DEFAULT NULL,
  `Guardian_Address` varchar(200) DEFAULT NULL,
  `Guardian_Email` varchar(100) DEFAULT NULL,
  `Designation` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guardian`
--

INSERT INTO `guardian` (`Stu_ID`, `Guardian_Name`, `Guardian_Phone`, `Relation`, `Guardian_Address`, `Guardian_Email`, `Designation`) VALUES
(21101034, 'John Smith', '555-1234', 'Father', '123 Main St.', 'john.smith@email.com', 'Manager'),
(21101067, 'Jane Doe', '555-5678', 'Mother', '456 Oak St.', 'jane.doe@email.com', 'Engineer'),
(21101100, 'Michael Garcia', '555-1111', 'Uncle', '789 Pine St.', 'michael.garcia@email.com', 'Doctor'),
(21101133, 'Emily Hernandez', '555-2222', 'Aunt', '987 Elm St.', 'emily.hernandez@email.com', 'Teacher'),
(21101134, 'Chris Brown', '555-0987', 'Father', '123 Main St.', 'chris.brown@email.com', 'Teacher'),
(21101166, 'Daniel Martinez', '555-3333', 'Father', '654 Birch St.', 'daniel.martinez@email.com', 'Programmer'),
(21101167, 'Olivia Taylor', '555-6543', 'Mother', '456 Oak St.', 'olivia.taylor@email.com', 'Manager'),
(21101199, 'Isabella Rodriguez', '555-4444', 'Mother', '321 Maple St.', 'isabella.rodriguez@email.com', 'Lawyer'),
(21101232, 'Ethan Wilson', '555-5555', 'Father', '456 Oak St.', 'ethan.wilson@email.com', 'Engineer'),
(21101234, 'David Lee', '555-9876', 'Uncle', '789 Pine St.', 'david.lee@email.com', 'Doctor'),
(21101265, 'Sofia Smith', '555-6666', 'Mother', '789 Pine St.', 'sofia.smith@email.com', 'Artist'),
(21101298, 'Mia Johnson', '555-7777', 'Aunt', '654 Birch St.', 'mia.johnson@email.com', 'Dentist'),
(21101345, 'Lisa Wang', '555-4321', 'Aunt', '987 Elm St.', 'lisa.wang@email.com', 'Teacher'),
(21101567, 'Sarah Kim', '555-8765', 'Mother', '654 Birch St.', 'sarah.kim@email.com', 'Nurse'),
(21101890, 'Peter Nguyen', '555-2345', 'Father', '321 Maple St.', 'peter.nguyen@email.com', 'Programmer'),
(21102012, 'Anna Chen', '555-6789', 'Aunt', '456 Oak St.', 'anna.chen@email.com', 'Lawyer'),
(21102345, 'Michael Johnson', '555-3456', 'Uncle', '789 Pine St.', 'michael.johnson@email.com', 'Artist'),
(21102567, 'Kim Lee', '555-7890', 'Mother', '654 Birch St.', 'kim.lee@email.com', 'Dentist'),
(21102789, 'Brian Davis', '555-8901', 'Father', '321 Maple St.', 'brian.davis@email.com', 'Salesperson'),
(21103012, 'Amy Wilson', '555-4567', 'Mother', '987 Elm St.', 'amy.wilson@email.com', 'Engineer');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Student_ID` int(11) NOT NULL,
  `Student_Name` varchar(50) DEFAULT NULL,
  `Student_Email` varchar(100) DEFAULT NULL,
  `Student_DOB` date DEFAULT NULL,
  `Student_Address` varchar(200) DEFAULT NULL,
  `Student_Phone` varchar(20) DEFAULT NULL,
  `enrolled_by` int(11) DEFAULT NULL,
  `enrolled_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Student_ID`, `Student_Name`, `Student_Email`, `Student_DOB`, `Student_Address`, `Student_Phone`, `enrolled_by`, `enrolled_date`) VALUES
(21101034, 'Emma Smith', 'emma.smith@example.com', '2004-05-12', '123 Main St, Anytown USA', '123-456-7890', 1, '2022-03-15'),
(21101056, 'Rahmanni Safwaan', 'Rahmanni.Safwaan@gmail.com', '2001-05-11', '421 high street avenue', '123-456-7891', 1, '2023-04-06'),
(21101067, 'William Brown', 'william.brown@example.com', '2003-09-21', '456 High St, Anytown USA', '456-789-0123', 6, '2022-02-28'),
(21101100, 'Emily Brown', 'emily.brown@example.com', '2003-11-24', '789 Elm St, Anytown USA', '555-555-1212', 10, '2022-02-28'),
(21101133, 'Michael Davis', 'michael.davis@example.com', '2003-02-15', '987 Maple St, Anytown USA', '555-555-1234', 1, '2022-03-15'),
(21101134, 'Jessica Smith', 'jessica.smith@example.com', '2003-05-12', '123 Main St, Anytown USA', '555-123-4567', 1, '2022-02-15'),
(21101166, 'Avery Wilson', 'avery.wilson@example.com', '2003-06-07', '234 Pine St, Anytown USA', '555-555-4321', 6, '2022-03-02'),
(21101167, 'William Johnson', 'william.johnson@example.com', '2003-08-03', '456 Oak St, Anytown USA', '555-987-6543', 6, '2022-03-05'),
(21101199, 'Liam Lee', 'liam.lee@example.com', '2003-09-28', '567 Cedar St, Anytown USA', '555-555-6789', 10, '2022-03-10'),
(21101232, 'Ella Hernandez', 'ella.hernandez@example.com', '2003-12-19', '890 Walnut St, Anytown USA', '555-444-3333', 1, '2022-02-24'),
(21101234, 'Olivia Garcia', 'olivia.garcia@example.com', '2005-01-01', '789 Elm St, Anytown USA', '789-012-3456', 10, '2022-02-10'),
(21101265, 'Benjamin Garcia', 'benjamin.garcia@example.com', '2003-03-12', '345 Birch St, Anytown USA', '555-222-1111', 6, '2022-03-12'),
(21101298, 'Chloe Martinez', 'chloe.martinez@example.com', '2003-07-03', '678 Chestnut St, Anytown USA', '555-777-8888', 10, '2022-02-18'),
(21101345, 'Liam Martinez', 'liam.martinez@example.com', '2004-06-11', '321 Oak St, Anytown USA', '012-345-6789', 1, '2022-03-02'),
(21101567, 'Ava Rodriguez', 'ava.rodriguez@example.com', '2003-12-15', '654 Pine St, Anytown USA', '345-678-9012', 6, '2022-02-18'),
(21101890, 'Noah Wilson', 'noah.wilson@example.com', '2005-03-27', '987 Maple St, Anytown USA', '678-901-2345', 10, '2022-03-08'),
(21102012, 'Sophia Anderson', 'sophia.anderson@example.com', '2004-07-23', '246 Cedar St, Anytown USA', '901-234-5678', 1, '2022-02-14'),
(21102345, 'Logan Taylor', 'logan.taylor@example.com', '2003-10-05', '135 Oak St, Anytown USA', '234-567-8901', 6, '2022-03-05'),
(21102567, 'Isabella Hernandez', 'isabella.hernandez@example.com', '2005-02-28', '864 Maple St, Anytown USA', '567-890-1234', 10, '2022-02-21'),
(21102789, 'Mason Moore', 'mason.moore@example.com', '2004-09-03', '753 Elm St, Anytown USA', '890-123-4567', 1, '2022-02-02'),
(21103012, 'Mia Jackson', 'mia.jackson@example.com', '2003-11-19', '975 Main St, Anytown USA', '123-456-7890', 6, '2022-03-11');

-- --------------------------------------------------------

--
-- Table structure for table `studentlogin`
--

CREATE TABLE `studentlogin` (
  `user` varchar(100) DEFAULT NULL,
  `pass` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `studentlogin`
--

INSERT INTO `studentlogin` (`user`, `pass`) VALUES
('Emma Smith', 21101034),
('Rahmanni Safwaan', 21101056),
('Avery Wilson', 21101166),
('Noah Wilson', 21101890);

-- --------------------------------------------------------

--
-- Table structure for table `student_class`
--

CREATE TABLE `student_class` (
  `stu_ID` int(11) NOT NULL,
  `clsCODE` varchar(20) NOT NULL,
  `Fee` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_class`
--

INSERT INTO `student_class` (`stu_ID`, `clsCODE`, `Fee`) VALUES
(21101034, 'CS101', 15000),
(21101034, 'ENG101', 12000),
(21101034, 'MATH201', 16000),
(21101056, 'BIO101', 16000),
(21101067, 'MATH201', 16000),
(21101067, 'PHYS101', 18000),
(21101100, 'BIO101', 16000),
(21101100, 'PSYC101', 20000),
(21101133, 'CHEM201', 18000),
(21101133, 'ENG201', 13000),
(21101134, 'PHIL101', 17000),
(21101166, 'BIO101', 16000),
(21101167, 'ENG101', 12000),
(21101167, 'HIST101', 17000),
(21101199, 'PHYS201', 19000),
(21101232, 'ENG101', 12000),
(21101232, 'PHYS101', 18000),
(21101234, 'ENG201', 13000),
(21101234, 'HIST201', 17000),
(21101265, 'MATH201', 16000),
(21101298, 'ENG201', 13000),
(21101298, 'HIST201', 17000),
(21101345, 'MATH201', 16000),
(21101567, 'CHEM101', 19000),
(21101890, 'CHEM101', 19000),
(21101890, 'PHYS101', 18000),
(21102012, 'BIO201', 20000),
(21102345, 'ENG101', 12000),
(21102567, 'EC101', 13000),
(21102567, 'SOC101', 11000),
(21102789, 'MUS101', 14000),
(21103012, 'ART101', 15000),
(21103012, 'MUS101', 14000),
(21103012, 'PHIL101', 17000);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `Subject_ID` int(11) NOT NULL,
  `Subject_Name` varchar(50) DEFAULT NULL,
  `Description` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`Subject_ID`, `Subject_Name`, `Description`) VALUES
(1, 'Mathematics', 'A subject that deals with the study of numbers, quantities, and shapes'),
(2, 'Physics', 'The study of matter and energy and their interactions'),
(3, 'Chemistry', 'The study of matter, its properties, and how it interacts and changes'),
(4, 'Biology', 'The study of living organisms and their interactions with each other and their environment'),
(5, 'Computer Science', 'The study of computers and computational systems'),
(6, 'English', 'The study of literature and language'),
(7, 'History', 'The study of past events, particularly in human affairs'),
(8, 'Geography', 'The study of the Earth and its features, inhabitants, and phenomena'),
(9, 'Economics', 'The study of how societies use scarce resources to produce valuable commodities and distribute them among different people'),
(10, 'Psychology', 'The study of the human mind and behavior'),
(12, 'Arts', 'The study of art, social studies and music');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `Teacher_ID` int(11) NOT NULL,
  `Teacher_Name` varchar(50) DEFAULT NULL,
  `Teacher_Email` varchar(100) DEFAULT NULL,
  `Teacher_DOB` date DEFAULT NULL,
  `Teacher_Address` varchar(200) DEFAULT NULL,
  `Super_Admin` int(11) DEFAULT NULL,
  `Hired_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`Teacher_ID`, `Teacher_Name`, `Teacher_Email`, `Teacher_DOB`, `Teacher_Address`, `Super_Admin`, `Hired_date`) VALUES
(101, 'Jennifer Smith', 'jennifer.smith@example.com', '1985-05-12', '123 Main St, Anytown, USA', 3, '2020-09-01'),
(102, 'Mark Johnson', 'mark.johnson@example.com', '1978-08-23', '456 Oak St, Anytown, USA', 4, '2019-06-15'),
(103, 'Emily Brown', 'emily.brown@example.com', '1990-02-17', '789 Maple Ave, Anytown, USA', 3, '2021-01-05'),
(104, 'Brian Davis', 'brian.davis@example.com', '1983-11-30', '234 Elm St, Anytown, USA', 4, '2018-03-22'),
(105, 'Amanda Wilson', 'amanda.wilson@example.com', '1989-06-03', '567 Pine St, Anytown, USA', 3, '2022-02-10'),
(106, 'Kevin Lee', 'kevin.lee@example.com', '1975-09-19', '890 Cedar St, Anytown, USA', 4, '2020-11-11'),
(107, 'Jessica Hernandez', 'jessica.hernandez@example.com', '1987-03-15', '12 Birch Ln, Anytown, USA', 3, '2017-09-03'),
(108, 'Erica Taylor', 'erica.taylor@example.com', '1982-12-28', '345 Oak Ave, Anytown, USA', 4, '2019-05-02'),
(109, 'Brandon Perez', 'brandon.perez@example.com', '1993-07-21', '678 Pine Ave, Anytown, USA', 3, '2021-03-17'),
(110, 'Lauren Martin', 'lauren.martin@example.com', '1980-01-08', '901 Cedar Ave, Anytown, USA', 4, '2018-07-29'),
(111, 'Samuel Rodriguez', 'samuel.rodriguez@example.com', '1988-04-25', '234 Birch St, Anytown, USA', 3, '2022-05-01'),
(112, 'Olivia Anderson', 'olivia.anderson@example.com', '1977-10-14', '567 Elm Ave, Anytown, USA', 4, '2020-02-14'),
(113, 'Jacob Smith', 'jacob.smith@example.com', '1992-03-08', '890 Pine St, Anytown, USA', 3, '2019-11-27'),
(114, 'Sarah Garcia', 'sarah.garcia@example.com', '1981-12-01', '123 Cedar Ln, Anytown, USA', 4, '2021-08-08'),
(115, 'Daniel Martin', 'daniel.martin@example.com', '1990-05-24', '456 Birch Ave, Anytown, USA', 3, '2018-01-20'),
(116, 'Amy Santiago', 'AmySantiago@gmail.com', '1992-04-07', '890 Pine St, Anytown, USA', 1, '2023-05-12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Admin_ID`);

--
-- Indexes for table `adminlogin`
--
ALTER TABLE `adminlogin`
  ADD PRIMARY KEY (`password`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`StudentID`,`ClassCode`),
  ADD KEY `ClassCode` (`ClassCode`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`Class_Code`),
  ADD KEY `Subject` (`Subject`),
  ADD KEY `Teacher` (`Teacher`);

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`St_ID`,`gradeID`),
  ADD KEY `Clcode` (`Clcode`);

--
-- Indexes for table `guardian`
--
ALTER TABLE `guardian`
  ADD PRIMARY KEY (`Stu_ID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Student_ID`),
  ADD KEY `enrolled_by` (`enrolled_by`);

--
-- Indexes for table `studentlogin`
--
ALTER TABLE `studentlogin`
  ADD PRIMARY KEY (`pass`);

--
-- Indexes for table `student_class`
--
ALTER TABLE `student_class`
  ADD PRIMARY KEY (`stu_ID`,`clsCODE`),
  ADD KEY `clsCODE` (`clsCODE`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`Subject_ID`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`Teacher_ID`),
  ADD KEY `Super_Admin` (`Super_Admin`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `adminlogin`
--
ALTER TABLE `adminlogin`
  ADD CONSTRAINT `adminlogin_ibfk_1` FOREIGN KEY (`password`) REFERENCES `admin` (`Admin_ID`);

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `student` (`Student_ID`),
  ADD CONSTRAINT `attendance_ibfk_2` FOREIGN KEY (`ClassCode`) REFERENCES `class` (`Class_Code`);

--
-- Constraints for table `class`
--
ALTER TABLE `class`
  ADD CONSTRAINT `class_ibfk_1` FOREIGN KEY (`Subject`) REFERENCES `subject` (`Subject_ID`),
  ADD CONSTRAINT `class_ibfk_2` FOREIGN KEY (`Teacher`) REFERENCES `teacher` (`Teacher_ID`);

--
-- Constraints for table `grade`
--
ALTER TABLE `grade`
  ADD CONSTRAINT `grade_ibfk_1` FOREIGN KEY (`St_ID`) REFERENCES `student` (`Student_ID`),
  ADD CONSTRAINT `grade_ibfk_2` FOREIGN KEY (`Clcode`) REFERENCES `class` (`Class_Code`);

--
-- Constraints for table `guardian`
--
ALTER TABLE `guardian`
  ADD CONSTRAINT `guardian_ibfk_1` FOREIGN KEY (`Stu_ID`) REFERENCES `student` (`Student_ID`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`enrolled_by`) REFERENCES `admin` (`Admin_ID`);

--
-- Constraints for table `studentlogin`
--
ALTER TABLE `studentlogin`
  ADD CONSTRAINT `studentlogin_ibfk_1` FOREIGN KEY (`pass`) REFERENCES `student` (`Student_ID`);

--
-- Constraints for table `student_class`
--
ALTER TABLE `student_class`
  ADD CONSTRAINT `student_class_ibfk_1` FOREIGN KEY (`stu_ID`) REFERENCES `student` (`Student_ID`),
  ADD CONSTRAINT `student_class_ibfk_2` FOREIGN KEY (`clsCODE`) REFERENCES `class` (`Class_Code`);

--
-- Constraints for table `teacher`
--
ALTER TABLE `teacher`
  ADD CONSTRAINT `teacher_ibfk_1` FOREIGN KEY (`Super_Admin`) REFERENCES `admin` (`Admin_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
