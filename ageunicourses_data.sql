-- Insert data into course_layout - 10 courses with random course codes
INSERT INTO course_layout (course_code, course_name, min_students, max_students, hp) VALUES
('AB1234', 'Data Storage Paradigms', 50, 250, 7.5),
('CD5678', 'Discrete Mathematics', 50, 150, 7.5),
('EF9012', 'Object Oriented Programming', 40, 200, 6.0),
('GH3456', 'Web Development', 30, 100, 7.5),
('IJ7890', 'Software Engineering', 60, 300, 9.0),
('KL1234', 'Algorithms and Data Structures', 45, 180, 8.0),
('MN5678', 'Database Design', 35, 120, 6.5),
('OP9012', 'Linear Algebra', 55, 160, 7.0),
('QR3456', 'Programming Fundamentals', 40, 150, 5.0),
('ST7890', 'Human-Computer Interaction', 25, 80, 6.0);
-- ('XD2447','erat neque',31,96,'7.5');

-- Insert data into department
INSERT INTO department (department_name, manager) VALUES
('Computer Science', 'EMP001'),
('Mathematics', 'EMP002'),
('Information Systems', 'EMP003'),
('Software Engineering', 'EMP004');

-- Insert data into job_title
INSERT INTO job_title (job_title) VALUES
('Professor'),
('Associate Professor'),
('Assistant Professor'),
('PhD Student'),
('Lecturer');

-- Insert data into person
INSERT INTO person (personal_number, first_name, last_name, address) VALUES
('198501011234', 'Anna', 'Andersson', 'Oak Street 123'),
('198602022345', 'Bengt', 'Bengtsson', 'Maple Avenue 45'),
('198703033456', 'Cecilia', 'Carlsson', 'Pine Road 678'),
('198804044567', 'David', 'Davidsson', 'Birch Lane 90'),
('198905055678', 'Eva', 'Eriksson', 'Cedar Drive 234'),
('199006066789', 'Fredrik', 'Fredriksson', 'Elm Street 567'),
('199107077890', 'Gunilla', 'Gustafsson', 'Willow Way 89'),
('199208088901', 'Henrik', 'Henriksson', 'Spruce Court 123');

-- Insert data into phone_number
INSERT INTO phone_number (phone_nr, personal_number) VALUES
(123456789, '198501011234'),
(234567890, '198602022345'),
(345678901, '198703033456'),
(456789012, '198804044567'),
(567890123, '198905055678'),
(678901234, '199006066789'),
(789012345, '199107077890'),
(890123456, '199208088901');

-- Insert data into teaching_activity
INSERT INTO teaching_activity (activity_name, factor) VALUES
('Lecture', 3.6),
('Lab', 2.4),
('Tutorial', 2.4),
('Seminar', 1.8),
('Examination', 1.0),
('Administration', 1.0),
('Others', 1.0);

INSERT INTO study_period(period) VALUES
('P1'),
('P2'),
('P3'),
('P4');

-- Insert data into course_instance
INSERT INTO course_instance (instance_id, num_students, study_period, study_year, course_id) VALUES
('2025-12345', 200, 'P2', 2025, 1),
('2025-23456', 150, 'P1', 2025, 2),
('2025-34567', 180, 'P3', 2025, 3),
('2025-45678', 90, 'P2', 2025, 4),
('2025-56789', 120, 'P1', 2025, 5),
('2025-67890', 250, 'P4', 2025, 6),
('2025-78901', 110, 'P3', 2025, 7),
('2025-89012', 140, 'P1', 2025, 8),
('2025-90123', 85, 'P4', 2025, 9),
('2025-01234', 70, 'P2', 2025, 10);

-- Insert data into employee
INSERT INTO employee (employment_id, salary, supervisor, department_name, personal_number, job_title) VALUES
('EMP001', 65000, NULL, 'Computer Science', '198501011234', 'Professor'),
('EMP002', 60000, 'EMP001', 'Mathematics', '198602022345', 'Associate Professor'),
('EMP003', 55000, 'EMP001', 'Information Systems', '198703033456', 'Assistant Professor'),
('EMP004', 58000, 'EMP001', 'Software Engineering', '198804044567', 'Associate Professor'),
('EMP005', 45000, 'EMP002', 'Mathematics', '198905055678', 'PhD Student'),
('EMP006', 48000, 'EMP003', 'Information Systems', '199006066789', 'Lecturer'),
('EMP007', 52000, 'EMP004', 'Software Engineering', '199107077890', 'Assistant Professor'),
('EMP008', 47000, 'EMP004', 'Software Engineering', '199208088901', 'PhD Student');

-- Insert data into planned_activity
INSERT INTO planned_activity (activity_id, planned_hours, instance_id, activity_name) VALUES
(1, 20, '2025-12345', 'Lecture'),
(2, 80, '2025-12345', 'Tutorial'),
(3, 40, '2025-12345', 'Lab'),
(4, 80, '2025-12345', 'Seminar'),
(5, 650, '2025-12345', 'Others'),
(6, 44, '2025-23456', 'Lecture'),
(7, 64, '2025-23456', 'Seminar'),
(8, 200, '2025-23456', 'Others'),
(9, 30, '2025-34567', 'Lecture'),
(10, 60, '2025-34567', 'Lab'),
(11, 25, '2025-45678', 'Lecture'),
(12, 50, '2025-45678', 'Tutorial'),
(13, 35, '2025-56789', 'Lecture'),
(14, 45, '2025-67890', 'Lab'),
(15, 55, '2025-78901', 'Seminar'),
(16, 40, '2025-89012', 'Lecture'),
(17, 30, '2025-90123', 'Tutorial'),
(18, 20, '2025-01234', 'Lecture');

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
('Human-Computer Interaction', 'EMP003');

-- Insert data into employee_activity
INSERT INTO employee_activity (activity_id, employment_id) VALUES
(1, 'EMP001'),
(2, 'EMP005'),
(3, 'EMP008'),
(4, 'EMP006'),
(5, 'EMP001'),
(6, 'EMP002'),
(7, 'EMP003'),
(8, 'EMP002'),
(9, 'EMP004'),
(10, 'EMP007'),
(11, 'EMP003'),
(12, 'EMP006'),
(13, 'EMP004'),
(14, 'EMP007'),
(15, 'EMP003'),
(16, 'EMP002'),
(17, 'EMP005'),
(18, 'EMP001');