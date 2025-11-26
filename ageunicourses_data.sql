-- Insert data into course_layout - 10 courses
INSERT INTO course_layout (course_id, course_code, course_name, min_students, max_students, hp) VALUES
(1, 'AB1234', 'Data Storage Paradigms', 50, 250, 7.5),
(2, 'CD5678', 'Discrete Mathematics', 50, 150, 7.5),
(3, 'EF9012', 'Object Oriented Programming', 40, 200, 6.0),
(4, 'GH3456', 'Web Development', 30, 100, 7.5),
(5, 'IJ7890', 'Software Engineering', 60, 300, 9.0),
(6, 'KL1234', 'Algorithms and Data Structures', 45, 180, 8.0),
(7, 'MN5678', 'Database Design', 35, 120, 6.5),
(8, 'OP9012', 'Linear Algebra', 55, 160, 7.0),
(9, 'QR3456', 'Programming Fundamentals', 40, 150, 5.0),
(10, 'ST7890', 'Human-Computer Interaction', 25, 80, 6.0),
(11, 'XD2447', 'erat neque', 30, 90, 7.5),
(12, 'WX5678', 'Operating Systems', 45, 150, 8.0),
(13, 'YZ9012', 'Artificial Intelligence', 35, 100, 9.0),
(14, 'BC3456', 'Machine Learning', 30, 80, 8.5),
(15, 'DE7890', 'Data Science', 40, 120, 7.0),
(16, 'FG1234', 'Cloud Computing', 35, 100, 6.5),
(17, 'HI5678', 'Cybersecurity', 25, 70, 7.5),
(18, 'JK9012', 'Mobile Development', 30, 90, 6.0),
(19, 'LM3456', 'Software Testing', 40, 110, 5.5),
(20, 'NP7890', 'Project Management', 50, 150, 6.0);

-- Insert data into department
INSERT INTO department (department_id, department_name, manager) VALUES
(1, 'Computer Science', 'EMP001'),
(2, 'Mathematics', 'EMP002'),
(3, 'Information Systems', 'EMP003'),
(4, 'Software Engineering', 'EMP004');

-- Insert data into job_title
INSERT INTO job_title (job_title_id, job_title_name) VALUES
(1, 'Professor'),
(2, 'Associate Professor'),
(3, 'Assistant Professor'),
(4, 'PhD Student'),
(5, 'Lecturer'),
(6, 'Teaching Assistant');  

-- Insert data into person
INSERT INTO person (personal_number, first_name, last_name, address) VALUES
('198501011234', 'Anna', 'Andersson', 'Oak Street 123'),
('198602022345', 'Bengt', 'Bengtsson', 'Maple Avenue 45'),
('198703033456', 'Cecilia', 'Carlsson', 'Pine Road 678'),
('198804044567', 'David', 'Davidsson', 'Birch Lane 90'),
('198905055678', 'Eva', 'Eriksson', 'Cedar Drive 234'),
('199006066789', 'Fredrik', 'Fredriksson', 'Elm Street 567'),
('199107077890', 'Gunilla', 'Gustafsson', 'Willow Way 89'),
('199208088901', 'Henrik', 'Henriksson', 'Spruce Court 123'),
('199309099012', 'Ida', 'Isaksson', 'Pine Street 456'),      -- New TA
('199410101123', 'Johan', 'Johansson', 'Oak Avenue 789'),    -- New TA
('199511111234', 'Karin', 'Karlsson', 'Birch Road 123'),     -- New TA
('199612121345', 'Lars', 'Larsson', 'Maple Lane 456');       -- New TA

-- Insert data into phone_number
INSERT INTO phone_number (phone_nr, personal_number) VALUES
(123456789, '198501011234'),
(234567890, '198602022345'),
(345678901, '198703033456'),
(456789012, '198804044567'),
(567890123, '198905055678'),
(678901234, '199006066789'),
(789012345, '199107077890'),
(890123456, '199208088901'),
(901234567, '199309099012'),  -- New TA
(112233445, '199410101123'),  -- New TA
(223344556, '199511111234'),  -- New TA
(334455667, '199612121345');  -- New TA

-- Insert data into study_period
INSERT INTO study_period (period) VALUES
('P1'),
('P2'),
('P3'),
('P4');

-- Insert data into teaching_activity
INSERT INTO teaching_activity (teaching_id, activity_name, factor) VALUES
(1, 'Lecture', 1.8),
(2, 'Lab', 1.4),
(3, 'Tutorial', 1.4),
(4, 'Seminar', 1.6),
(5, 'Examination', 1.8),
(6, 'Administration', 1.2),
(7, 'Others', 1.0);

-- Insert data into course_instance
INSERT INTO course_instance (instance_id, num_students, study_year, course_id, period) VALUES
('2025-12345', 200, 2025, 1, 'P2'),
('2025-23456', 150, 2025, 2, 'P1'),
('2025-34567', 180, 2025, 3, 'P3'),
('2025-45678', 90, 2025, 4, 'P2'),
('2025-56789', 120, 2025, 5, 'P1'),
('2025-67890', 250, 2025, 6, 'P4'),
('2025-78901', 110, 2025, 7, 'P3'),
('2025-89012', 140, 2025, 8, 'P1'),
('2025-90123', 85, 2025, 9, 'P4'),
('2025-01234', 70, 2025, 10, 'P2'),
('2025-11235', 45, 2025, 11, 'P3'),
('2025-93857', 45, 2025, 11, 'P1'),
('2025-22346', 110, 2025, 12, 'P1'),
('2025-33457', 65, 2025, 13, 'P4'),
('2025-44568', 80, 2025, 14, 'P2'),
('2025-55679', 105, 2025, 15, 'P3'),
('2025-66780', 75, 2025, 16, 'P1'),
('2025-77891', 60, 2025, 17, 'P4'),
('2025-88902', 85, 2025, 18, 'P2'),
('2025-99013', 95, 2025, 19, 'P3'),
('2025-10124', 120, 2025, 20, 'P1');

-- Insert data into employee
INSERT INTO employee (employment_id, salary, supervisor, personal_number, department_id, job_title_id) VALUES
('EMP001', 65000, NULL, '198501011234', 1, 1),
('EMP002', 60000, 'EMP001', '198602022345', 2, 2),
('EMP003', 55000, 'EMP001', '198703033456', 3, 3),
('EMP004', 58000, 'EMP001', '198804044567', 4, 2),
('EMP005', 45000, 'EMP002', '198905055678', 2, 4),
('EMP006', 48000, 'EMP003', '199006066789', 3, 5),
('EMP007', 52000, 'EMP004', '199107077890', 4, 3),
('EMP008', 47000, 'EMP004', '199208088901', 4, 4),
('EMP009', 35000, 'EMP001', '199309099012', 1, 6),  -- New TA
('EMP010', 36000, 'EMP002', '199410101123', 2, 6),  -- New TA
('EMP011', 34000, 'EMP003', '199511111234', 3, 6),  -- New TA
('EMP012', 35500, 'EMP004', '199612121345', 4, 6);  -- New TA

-- Insert data into planned_activity
INSERT INTO planned_activity (activity_id, instance_id, planned_hours, teaching_id) VALUES
(1, '2025-12345', 20, 1),
(2, '2025-12345', 80, 3),
(3, '2025-12345', 40, 2),
(4, '2025-12345', 80, 4),
(5, '2025-12345', 650, 7),
(6, '2025-23456', 44, 1),
(7, '2025-23456', 64, 4),
(8, '2025-23456', 200, 7),
(9, '2025-34567', 30, 1),
(10, '2025-34567', 60, 2),
(11, '2025-45678', 25, 1),
(12, '2025-45678', 50, 3),
(13, '2025-56789', 35, 1),
(14, '2025-67890', 45, 2),
(15, '2025-78901', 55, 4),
(16, '2025-89012', 40, 1),
(17, '2025-90123', 30, 3),
(18, '2025-01234', 20, 1),

-- Additional admin and exam activities
(19, '2025-12345', 15, 6),  -- Admin for Data Storage Paradigms
(20, '2025-12345', 25, 5),  -- Exam for Data Storage Paradigms
(21, '2025-23456', 12, 6),  -- Admin for Discrete Mathematics
(22, '2025-23456', 20, 5),  -- Exam for Discrete Mathematics
(23, '2025-34567', 10, 6),  -- Admin for Object Oriented Programming
(24, '2025-34567', 18, 5),  -- Exam for Object Oriented Programming
(25, '2025-45678', 8, 6),   -- Admin for Web Development
(26, '2025-45678', 15, 5),  -- Exam for Web Development
(27, '2025-56789', 12, 6),  -- Admin for Software Engineering
(28, '2025-56789', 22, 5),  -- Exam for Software Engineering
(29, '2025-67890', 10, 6),  -- Admin for Algorithms and Data Structures
(30, '2025-67890', 20, 5),  -- Exam for Algorithms and Data Structures
(31, '2025-78901', 8, 6),   -- Admin for Database Design
(32, '2025-78901', 15, 5),  -- Exam for Database Design
(33, '2025-89012', 10, 6),  -- Admin for Linear Algebra
(34, '2025-89012', 18, 5),  -- Exam for Linear Algebra
(35, '2025-90123', 6, 6),   -- Admin for Programming Fundamentals
(36, '2025-90123', 12, 5),  -- Exam for Programming Fundamentals
(37, '2025-01234', 5, 6),   -- Admin for Human-Computer Interaction
(38, '2025-01234', 10, 5),  -- Exam for Human-Computer Interaction
(39, '2025-93857', 7, 5),  -- Exam for Erat Neque
(40, '2025-93857', 10, 6),  -- Admin for Erat Neque
(41, '2025-93857', 63, 1),  -- Lectures for Erat Neque
(42, '2025-93857', 40, 2),  -- Labs for Erat Neque
(43, '2025-93857', 1444, 3),  -- Tutorial for Erat Neque
(44, '2025-11235', 30, 1),   -- Lecture for Computer Networks
(45, '2025-11235', 40, 2),   -- Lab for Computer Networks
(46, '2025-22346', 35, 1),   -- Lecture for Operating Systems
(47, '2025-22346', 45, 2),   -- Lab for Operating Systems
(48, '2025-33457', 25, 1),   -- Lecture for AI
(49, '2025-33457', 35, 4),   -- Seminar for AI
(50, '2025-44568', 28, 1),   -- Lecture for Machine Learning
(51, '2025-44568', 50, 2),   -- Lab for Machine Learning
(52, '2025-55679', 32, 1),   -- Lecture for Data Science
(53, '2025-55679', 40, 3),   -- Tutorial for Data Science
(54, '2025-66780', 26, 1),   -- Lecture for Cloud Computing
(55, '2025-66780', 38, 2),   -- Lab for Cloud Computing
(56, '2025-77891', 22, 1),   -- Lecture for Cybersecurity
(57, '2025-77891', 30, 4),   -- Seminar for Cybersecurity
(58, '2025-88902', 29, 1),   -- Lecture for Mobile Development
(59, '2025-88902', 42, 2),   -- Lab for Mobile Development
(60, '2025-99013', 27, 1),   -- Lecture for Software Testing
(61, '2025-99013', 35, 3),   -- Tutorial for Software Testing
(62, '2025-10124', 33, 1),   -- Lecture for Project Management
(63, '2025-10124', 25, 4);   -- Seminar for Project Management

-- Insert data into skill_set
INSERT INTO skill_set (skill, employment_id) VALUES
('Database Systems', 'EMP001'),
('Mathematics', 'EMP002'),
('Web Development', 'EMP003'),
('Software Engineering', 'EMP004'),
('Data Structures', 'EMP005'),
('Algorithms', 'EMP006'),
('Object Oriented Programming', 'EMP007'),
('System Design', 'EMP008'),
('Linear Algebra', 'EMP002'),
('Human-Computer Interaction', 'EMP003'),
('Networking', 'EMP009'),        -- TA skills
('Operating Systems', 'EMP010'),  -- TA skills
('Python Programming', 'EMP011'), -- TA skills
('Java Programming', 'EMP012');   -- TA skills

-- Insert data into employee_activity
INSERT INTO employee_activity (employment_id, activity_id, instance_id) VALUES
('EMP001', 1, '2025-12345'),
('EMP005', 2, '2025-12345'),
('EMP008', 3, '2025-12345'),
('EMP006', 4, '2025-12345'),
('EMP001', 5, '2025-12345'),
('EMP002', 6, '2025-23456'),
('EMP003', 7, '2025-23456'),
('EMP002', 8, '2025-23456'),
('EMP004', 9, '2025-34567'),
('EMP007', 10, '2025-34567'),
('EMP003', 11, '2025-45678'),
('EMP006', 12, '2025-45678'),
('EMP004', 13, '2025-56789'),
('EMP007', 14, '2025-67890'),
('EMP003', 15, '2025-78901'),
('EMP002', 16, '2025-89012'),
('EMP005', 17, '2025-90123'),
('EMP001', 18, '2025-01234'),

-- Additional assignments for admin and exam activities
('EMP001', 19, '2025-12345'),  -- Admin by Professor
('EMP002', 20, '2025-12345'),  -- Exam by Math Professor
('EMP002', 21, '2025-23456'),  -- Admin by Math Professor
('EMP002', 22, '2025-23456'),  -- Exam by Math Professor
('EMP004', 23, '2025-34567'),  -- Admin by Software Eng Professor
('EMP007', 24, '2025-34567'),  -- Exam by Assistant Professor
('EMP003', 25, '2025-45678'),  -- Admin by Info Systems Professor
('EMP006', 26, '2025-45678'),  -- Exam by Lecturer
('EMP004', 27, '2025-56789'),  -- Admin by Software Eng Professor
('EMP004', 28, '2025-56789'),  -- Exam by Software Eng Professor
('EMP007', 29, '2025-67890'),  -- Admin by Assistant Professor
('EMP007', 30, '2025-67890'),  -- Exam by Assistant Professor
('EMP003', 31, '2025-78901'),  -- Admin by Info Systems Professor
('EMP003', 32, '2025-78901'),  -- Exam by Info Systems Professor
('EMP002', 33, '2025-89012'),  -- Admin by Math Professor
('EMP002', 34, '2025-89012'),  -- Exam by Math Professor
('EMP005', 35, '2025-90123'),  -- Admin by PhD Student
('EMP005', 36, '2025-90123'),  -- Exam by PhD Student
('EMP001', 37, '2025-01234'),  -- Admin by Professor
('EMP001', 38, '2025-01234'),  -- Exam by Professor
('EMP006', 39, '2025-93857'), 
('EMP006', 40, '2025-93857'), 
('EMP006', 41, '2025-93857'), 
('EMP008', 42, '2025-93857'),
('EMP001', 43, '2025-93857'), 
('EMP008', 43, '2025-93857'),
('EMP006', 43, '2025-93857'),
('EMP009', 44, '2025-11235'),  -- TA for Computer Networks Lecture
('EMP009', 45, '2025-11235'),  -- TA for Computer Networks Lab
('EMP010', 46, '2025-22346'),  -- TA for Operating Systems Lecture
('EMP010', 47, '2025-22346'),  -- TA for Operating Systems Lab
('EMP011', 48, '2025-33457'),  -- TA for AI Lecture
('EMP011', 49, '2025-33457'),  -- TA for AI Seminar
('EMP012', 50, '2025-44568'),  -- TA for Machine Learning Lecture
('EMP012', 51, '2025-44568'),  -- TA for Machine Learning Lab
('EMP009', 52, '2025-55679'),  -- TA for Data Science Lecture
('EMP009', 53, '2025-55679'),  -- TA for Data Science Tutorial
('EMP010', 54, '2025-66780'),  -- TA for Cloud Computing Lecture
('EMP010', 55, '2025-66780'),  -- TA for Cloud Computing Lab
('EMP011', 56, '2025-77891'),  -- TA for Cybersecurity Lecture
('EMP011', 57, '2025-77891'),  -- TA for Cybersecurity Seminar
('EMP012', 58, '2025-88902'),  -- TA for Mobile Development Lecture
('EMP012', 59, '2025-88902'),  -- TA for Mobile Development Lab
('EMP009', 60, '2025-99013'),  -- TA for Software Testing Lecture
('EMP009', 61, '2025-99013'),  -- TA for Software Testing Tutorial
('EMP010', 62, '2025-10124'),  -- TA for Project Management Lecture
('EMP010', 63, '2025-10124');  -- TA for Project Management Seminar
