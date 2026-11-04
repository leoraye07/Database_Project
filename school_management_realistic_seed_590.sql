-- Reduced realistic sample data for school_management (MariaDB 10.4+).
-- Target total: 590 rows = 84 existing lookup/reference rows + 506 sample rows.
-- IMPORTANT: This REBUILDS the sample dataset by deleting rows from the 24 transaction tables below.
-- Use only if those tables contain only the previously imported sample data; back up first.
-- Lookup/status/role tables are not modified. No FK checks are disabled.
USE `school_management`;
START TRANSACTION;

DELETE FROM `grades`;
DELETE FROM `attendance`;
DELETE FROM `payments`;
DELETE FROM `student_bills`;
DELETE FROM `student_subjects`;
DELETE FROM `student_materials`;
DELETE FROM `student_guardians`;
DELETE FROM `student_previous_schools`;
DELETE FROM `application_reviews`;
DELETE FROM `application_applicants`;
DELETE FROM `application_guardians`;
DELETE FROM `application_previous_schools`;
DELETE FROM `section_transfers`;
DELETE FROM `teacher_assignments`;
DELETE FROM `enrollment_applications`;
DELETE FROM `enrollments`;
DELETE FROM `students`;
DELETE FROM `guardians`;
DELETE FROM `materials`;
DELETE FROM `subjects`;
DELETE FROM `sections`;
DELETE FROM `school_years`;
DELETE FROM `staff`;
DELETE FROM `users`;

-- users: 20 sample rows
INSERT IGNORE INTO `users` (`user_id`, `username`, `password_hash`, `role_id`, `status_id`, `is_active`, `last_login`, `created_at`, `updated_at`) VALUES
(1, 'admin.mercado', 'ACCOUNT_DISABLED_NO_PASSWORD_LOGIN', 1, 1, 0, NULL, '2026-10-01 09:00:00', '2026-10-01 09:00:00'),
(2, 'paula.rosario', 'ACCOUNT_DISABLED_NO_PASSWORD_LOGIN', 2, 1, 0, NULL, '2026-10-01 09:00:00', '2026-10-01 09:00:00'),
(3, 'ramon.bautista', 'ACCOUNT_DISABLED_NO_PASSWORD_LOGIN', 3, 1, 0, NULL, '2026-10-01 09:00:00', '2026-10-01 09:00:00'),
(4, 'fiona.delacruz', 'ACCOUNT_DISABLED_NO_PASSWORD_LOGIN', 4, 1, 0, NULL, '2026-10-01 09:00:00', '2026-10-01 09:00:00'),
(5, 'tina.santos', 'ACCOUNT_DISABLED_NO_PASSWORD_LOGIN', 5, 1, 0, NULL, '2026-10-01 09:00:00', '2026-10-01 09:00:00'),
(6, 'marco.reyes', 'ACCOUNT_DISABLED_NO_PASSWORD_LOGIN', 5, 1, 0, NULL, '2026-10-01 09:00:00', '2026-10-01 09:00:00'),
(7, 'liza.cruz', 'ACCOUNT_DISABLED_NO_PASSWORD_LOGIN', 5, 1, 0, NULL, '2026-10-01 09:00:00', '2026-10-01 09:00:00'),
(8, 'noel.garcia', 'ACCOUNT_DISABLED_NO_PASSWORD_LOGIN', 5, 1, 0, NULL, '2026-10-01 09:00:00', '2026-10-01 09:00:00'),
(9, 'maya.delarosa', 'ACCOUNT_DISABLED_NO_PASSWORD_LOGIN', 5, 1, 0, NULL, '2026-10-01 09:00:00', '2026-10-01 09:00:00'),
(10, 'ivan.mendoza', 'ACCOUNT_DISABLED_NO_PASSWORD_LOGIN', 5, 1, 0, NULL, '2026-10-01 09:00:00', '2026-10-01 09:00:00'),
(11, 'althea.santos', 'ACCOUNT_DISABLED_NO_PASSWORD_LOGIN', 6, 1, 0, NULL, '2026-10-01 09:00:00', '2026-10-01 09:00:00'),
(12, 'miguel.reyes', 'ACCOUNT_DISABLED_NO_PASSWORD_LOGIN', 6, 1, 0, NULL, '2026-10-01 09:00:00', '2026-10-01 09:00:00'),
(13, 'sofia.cruz', 'ACCOUNT_DISABLED_NO_PASSWORD_LOGIN', 6, 1, 0, NULL, '2026-10-01 09:00:00', '2026-10-01 09:00:00'),
(14, 'gabriel.garcia', 'ACCOUNT_DISABLED_NO_PASSWORD_LOGIN', 6, 1, 0, NULL, '2026-10-01 09:00:00', '2026-10-01 09:00:00'),
(15, 'andrea.mendoza', 'ACCOUNT_DISABLED_NO_PASSWORD_LOGIN', 6, 1, 0, NULL, '2026-10-01 09:00:00', '2026-10-01 09:00:00'),
(16, 'joshua.ramos', 'ACCOUNT_DISABLED_NO_PASSWORD_LOGIN', 6, 1, 0, NULL, '2026-10-01 09:00:00', '2026-10-01 09:00:00'),
(17, 'isabella.flores', 'ACCOUNT_DISABLED_NO_PASSWORD_LOGIN', 6, 1, 0, NULL, '2026-10-01 09:00:00', '2026-10-01 09:00:00'),
(18, 'nathan.villanueva', 'ACCOUNT_DISABLED_NO_PASSWORD_LOGIN', 6, 1, 0, NULL, '2026-10-01 09:00:00', '2026-10-01 09:00:00'),
(19, 'chloe.aquino', 'ACCOUNT_DISABLED_NO_PASSWORD_LOGIN', 6, 1, 0, NULL, '2026-10-01 09:00:00', '2026-10-01 09:00:00'),
(20, 'ethan.castillo', 'ACCOUNT_DISABLED_NO_PASSWORD_LOGIN', 6, 1, 0, NULL, '2026-10-01 09:00:00', '2026-10-01 09:00:00');

-- staff: 10 sample rows
INSERT IGNORE INTO `staff` (`staff_id`, `user_id`, `employee_number`, `first_name`, `middle_name`, `last_name`, `contact_number`, `email`, `employment_status_id`) VALUES
(1, 1, 'EMP-2026-001', 'Alicia', 'M.', 'Mercado', '0900-000-1001', 'alicia.mercado@school.example', 1),
(2, 2, 'EMP-2026-002', 'Paula', 'R.', 'Rosario', '0900-000-1002', 'paula.rosario@school.example', 1),
(3, 3, 'EMP-2026-003', 'Ramon', 'L.', 'Bautista', '0900-000-1003', 'ramon.bautista@school.example', 1),
(4, 4, 'EMP-2026-004', 'Fiona', 'S.', 'Delacruz', '0900-000-1004', 'fiona.delacruz@school.example', 1),
(5, 5, 'EMP-2026-005', 'Tina', 'M.', 'Santos', '0900-000-1005', 'tina.santos@school.example', 1),
(6, 6, 'EMP-2026-006', 'Marco', 'D.', 'Reyes', '0900-000-1006', 'marco.reyes@school.example', 1),
(7, 7, 'EMP-2026-007', 'Liza', 'P.', 'Cruz', '0900-000-1007', 'liza.cruz@school.example', 1),
(8, 8, 'EMP-2026-008', 'Noel', 'A.', 'Garcia', '0900-000-1008', 'noel.garcia@school.example', 1),
(9, 9, 'EMP-2026-009', 'Maya', 'C.', 'Dela Rosa', '0900-000-1009', 'maya.delarosa@school.example', 1),
(10, 10, 'EMP-2026-010', 'Ivan', 'J.', 'Mendoza', '0900-000-1010', 'ivan.mendoza@school.example', 1);

-- school_years: 1 sample rows
INSERT IGNORE INTO `school_years` (`school_year_id`, `school_year`, `start_date`, `end_date`, `school_year_status_id`) VALUES
(1, '2026-2027', '2026-08-24', '2027-05-28', 2);

-- sections: 12 sample rows
INSERT IGNORE INTO `sections` (`section_id`, `school_year_id`, `grade_level_id`, `section_name`, `capacity`, `section_status_id`) VALUES
(1, 1, 3, 'Mabini', 40, 1),
(2, 1, 3, 'Rizal', 40, 1),
(3, 1, 4, 'Bonifacio', 40, 1),
(4, 1, 4, 'Luna', 40, 1),
(5, 1, 5, 'Del Pilar', 40, 1),
(6, 1, 5, 'Quezon', 40, 1),
(7, 1, 6, 'Mabini', 40, 1),
(8, 1, 6, 'Rizal', 40, 1),
(9, 1, 7, 'Bonifacio', 40, 1),
(10, 1, 7, 'Luna', 40, 1),
(11, 1, 8, 'Del Pilar', 40, 1),
(12, 1, 8, 'Quezon', 40, 1);

-- students: 10 sample rows
INSERT IGNORE INTO `students` (`student_id`, `user_id`, `student_number`, `first_name`, `middle_name`, `last_name`, `suffix`, `birth_date`, `gender_id`, `address`, `contact_number`, `email`, `student_status_id`, `registration_date`) VALUES
(1, 11, '2026-0001', 'Althea', 'Marie', 'Santos', NULL, '2018-03-05', 1, 'Pueblo de Oro, Cagayan de Oro City', '0900-100-2001', 'althea.santos@student.school.example', 1, '2026-08-20'),
(2, 12, '2026-0002', 'Miguel', 'Jose', 'Reyes', NULL, '2017-06-10', 2, 'Macasandig, Cagayan de Oro City', '0900-100-2002', 'miguel.reyes@student.school.example', 1, '2026-08-20'),
(3, 13, '2026-0003', 'Sofia', 'Anne', 'Cruz', NULL, '2016-09-15', 1, 'Nazareth, Cagayan de Oro City', '0900-100-2003', 'sofia.cruz@student.school.example', 1, '2026-08-20'),
(4, 14, '2026-0004', 'Gabriel', 'Luis', 'Garcia', NULL, '2015-12-20', 2, 'Carmen, Cagayan de Oro City', '0900-100-2004', 'gabriel.garcia@student.school.example', 1, '2026-08-20'),
(5, 15, '2026-0005', 'Andrea', 'Mae', 'Mendoza', NULL, '2014-03-25', 1, 'Lapasan, Cagayan de Oro City', '0900-100-2005', 'andrea.mendoza@student.school.example', 1, '2026-08-20'),
(6, 16, '2026-0006', 'Joshua', 'Paolo', 'Ramos', NULL, '2013-06-03', 2, 'Bulua, Cagayan de Oro City', '0900-100-2006', 'joshua.ramos@student.school.example', 1, '2026-08-20'),
(7, 17, '2026-0007', 'Isabella', 'Grace', 'Flores', NULL, '2018-09-08', 1, 'Kauswagan, Cagayan de Oro City', '0900-100-2007', 'isabella.flores@student.school.example', 1, '2026-08-20'),
(8, 18, '2026-0008', 'Nathan', 'Miguel', 'Villanueva', NULL, '2017-12-13', 2, 'Puerto, Cagayan de Oro City', '0900-100-2008', 'nathan.villanueva@student.school.example', 1, '2026-08-20'),
(9, 19, '2026-0009', 'Chloe', 'Rose', 'Aquino', NULL, '2016-03-18', 1, 'Bugo, Cagayan de Oro City', '0900-100-2009', 'chloe.aquino@student.school.example', 1, '2026-08-20'),
(10, 20, '2026-0010', 'Ethan', 'James', 'Castillo', NULL, '2015-06-23', 2, 'Camaman-an, Cagayan de Oro City', '0900-100-2010', 'ethan.castillo@student.school.example', 1, '2026-08-20');

-- enrollments: 10 sample rows
INSERT IGNORE INTO `enrollments` (`enrollment_id`, `student_id`, `school_year_id`, `section_id`, `enrollment_date`, `enrollment_type_id`, `enrollment_method_id`, `enrollment_status_id`) VALUES
(1, 1, 1, 2, '2026-08-24', 1, 2, 2),
(2, 2, 1, 4, '2026-08-24', 1, 2, 2),
(3, 3, 1, 5, '2026-08-24', 2, 2, 2),
(4, 4, 1, 8, '2026-08-24', 1, 2, 2),
(5, 5, 1, 9, '2026-08-24', 1, 2, 2),
(6, 6, 1, 12, '2026-08-24', 2, 2, 2),
(7, 7, 1, 2, '2026-08-24', 1, 2, 2),
(8, 8, 1, 4, '2026-08-24', 1, 2, 2),
(9, 9, 1, 5, '2026-08-24', 2, 2, 2),
(10, 10, 1, 8, '2026-08-24', 1, 2, 2);

-- guardians: 10 sample rows
INSERT IGNORE INTO `guardians` (`guardian_id`, `first_name`, `middle_name`, `last_name`, `contact_number`, `email`, `address`) VALUES
(1, 'Maricel', 'A.', 'Santos', '0900-200-3001', 'maricel.santos@family.example', 'Pueblo de Oro, Cagayan de Oro City'),
(2, 'Roberto', 'L.', 'Reyes', '0900-200-3002', 'roberto.reyes@family.example', 'Macasandig, Cagayan de Oro City'),
(3, 'Joanna', 'M.', 'Cruz', '0900-200-3003', 'joanna.cruz@family.example', 'Nazareth, Cagayan de Oro City'),
(4, 'Edgar', 'P.', 'Garcia', '0900-200-3004', 'edgar.garcia@family.example', 'Carmen, Cagayan de Oro City'),
(5, 'Cecilia', 'R.', 'Mendoza', '0900-200-3005', 'cecilia.mendoza@family.example', 'Lapasan, Cagayan de Oro City'),
(6, 'Rogelio', 'D.', 'Ramos', '0900-200-3006', 'rogelio.ramos@family.example', 'Bulua, Cagayan de Oro City'),
(7, 'Jennifer', 'S.', 'Flores', '0900-200-3007', 'jennifer.flores@family.example', 'Kauswagan, Cagayan de Oro City'),
(8, 'Michael', 'T.', 'Villanueva', '0900-200-3008', 'michael.villanueva@family.example', 'Puerto, Cagayan de Oro City'),
(9, 'Lourdes', 'C.', 'Aquino', '0900-200-3009', 'lourdes.aquino@family.example', 'Bugo, Cagayan de Oro City'),
(10, 'Anthony', 'J.', 'Castillo', '0900-200-3010', 'anthony.castillo@family.example', 'Camaman-an, Cagayan de Oro City');

-- student_guardians: 10 sample rows
INSERT IGNORE INTO `student_guardians` (`student_guardian_id`, `student_id`, `guardian_id`, `relationship_id`, `is_primary`, `is_emergency_contact`) VALUES
(1, 1, 1, 1, 1, 1),
(2, 2, 2, 2, 1, 1),
(3, 3, 3, 1, 1, 1),
(4, 4, 4, 2, 1, 1),
(5, 5, 5, 1, 1, 1),
(6, 6, 6, 2, 1, 1),
(7, 7, 7, 1, 1, 1),
(8, 8, 8, 2, 1, 1),
(9, 9, 9, 1, 1, 1),
(10, 10, 10, 2, 1, 1);

-- student_previous_schools: 10 sample rows
INSERT IGNORE INTO `student_previous_schools` (`previous_school_id`, `student_id`, `school_name`, `school_address`, `previous_grade_level`, `school_year`, `transfer_date`) VALUES
(1, 1, 'St. Marys Academy of Cagayan', 'Pueblo de Oro, Cagayan de Oro City', 'Grade 1', '2025-2026', '2026-06-01'),
(2, 2, 'Cagayan de Oro City Elementary School', 'Macasandig, Cagayan de Oro City', 'Grade 1', '2025-2026', '2026-06-01'),
(3, 3, 'Xavier University Grade School', 'Nazareth, Cagayan de Oro City', 'Grade 2', '2025-2026', '2026-06-01'),
(4, 4, 'Lourdes College Basic Education', 'Carmen, Cagayan de Oro City', 'Grade 3', '2025-2026', '2026-06-01'),
(5, 5, 'Corpus Christi School CDO', 'Lapasan, Cagayan de Oro City', 'Grade 4', '2025-2026', '2026-06-01'),
(6, 6, 'Cong. Vicente Emano Memorial Elementary School', 'Bulua, Cagayan de Oro City', 'Grade 5', '2025-2026', '2026-06-01'),
(7, 7, 'Macasandig Elementary School', 'Macasandig, Cagayan de Oro City', 'Grade 1', '2025-2026', '2026-06-01'),
(8, 8, 'West City Central School', 'Puerto, Cagayan de Oro City', 'Grade 1', '2025-2026', '2026-06-01'),
(9, 9, 'Bulua Central School', 'Bulua, Cagayan de Oro City', 'Grade 2', '2025-2026', '2026-06-01'),
(10, 10, 'Carmen Elementary School', 'Carmen, Cagayan de Oro City', 'Grade 3', '2025-2026', '2026-06-01');

-- materials: 5 sample rows
INSERT IGNORE INTO `materials` (`material_id`, `material_name`, `description`, `price`, `material_status_id`) VALUES
(1, 'Standard Primary Student Notebook Pack', 'Pack of 5 writing notebooks and composition books', 180.0, 1),
(2, 'HB Pencil & Eraser Stationery Kit', 'Box of 12 pencils, erasers, and pencil sharpener', 75.0, 1),
(3, 'Deluxe Primary Art & Color Set', 'Crayons, watercolor, sketchpad, and safety scissors', 250.0, 1),
(4, 'English Reading Companion & Workbook', 'Storybooks and vocabulary exercise workbook', 320.0, 1),
(5, 'Hands-On Elementary Science Experiment Kit', 'Basic science equipment and activity sheets', 450.0, 1);

-- student_materials: 10 sample rows
INSERT IGNORE INTO `student_materials` (`student_material_id`, `enrollment_id`, `material_id`, `quantity`, `amount`, `issued`, `issued_date`) VALUES
(1, 1, 1, 1, 180.0, 1, '2026-08-25'),
(2, 2, 2, 1, 75.0, 1, '2026-08-25'),
(3, 3, 3, 1, 250.0, 1, '2026-08-25'),
(4, 4, 4, 1, 320.0, 1, '2026-08-25'),
(5, 5, 5, 1, 450.0, 1, '2026-08-25'),
(6, 6, 1, 1, 180.0, 1, '2026-08-25'),
(7, 7, 2, 1, 75.0, 1, '2026-08-25'),
(8, 8, 3, 1, 250.0, 1, '2026-08-25'),
(9, 9, 4, 1, 320.0, 1, '2026-08-25'),
(10, 10, 5, 1, 450.0, 1, '2026-08-25');

-- subjects: 36 sample rows
INSERT IGNORE INTO `subjects` (`subject_id`, `subject_code`, `subject_name`, `grade_level_id`, `subject_status_id`) VALUES
(1, 'ENG-G1', 'English Grade 1', 3, 1),
(2, 'MATH-G1', 'Mathematics Grade 1', 3, 1),
(3, 'SCI-G1', 'Science Grade 1', 3, 1),
(4, 'FIL-G1', 'Filipino Grade 1', 3, 1),
(5, 'AP-G1', 'Araling Panlipunan Grade 1', 3, 1),
(6, 'MAPEH-G1', 'MAPEH Grade 1', 3, 1),
(7, 'ENG-G2', 'English Grade 2', 4, 1),
(8, 'MATH-G2', 'Mathematics Grade 2', 4, 1),
(9, 'SCI-G2', 'Science Grade 2', 4, 1),
(10, 'FIL-G2', 'Filipino Grade 2', 4, 1),
(11, 'AP-G2', 'Araling Panlipunan Grade 2', 4, 1),
(12, 'MAPEH-G2', 'MAPEH Grade 2', 4, 1),
(13, 'ENG-G3', 'English Grade 3', 5, 1),
(14, 'MATH-G3', 'Mathematics Grade 3', 5, 1),
(15, 'SCI-G3', 'Science Grade 3', 5, 1),
(16, 'FIL-G3', 'Filipino Grade 3', 5, 1),
(17, 'AP-G3', 'Araling Panlipunan Grade 3', 5, 1),
(18, 'MAPEH-G3', 'MAPEH Grade 3', 5, 1),
(19, 'ENG-G4', 'English Grade 4', 6, 1),
(20, 'MATH-G4', 'Mathematics Grade 4', 6, 1),
(21, 'SCI-G4', 'Science Grade 4', 6, 1),
(22, 'FIL-G4', 'Filipino Grade 4', 6, 1),
(23, 'AP-G4', 'Araling Panlipunan Grade 4', 6, 1),
(24, 'MAPEH-G4', 'MAPEH Grade 4', 6, 1),
(25, 'ENG-G5', 'English Grade 5', 7, 1),
(26, 'MATH-G5', 'Mathematics Grade 5', 7, 1),
(27, 'SCI-G5', 'Science Grade 5', 7, 1),
(28, 'FIL-G5', 'Filipino Grade 5', 7, 1),
(29, 'AP-G5', 'Araling Panlipunan Grade 5', 7, 1),
(30, 'MAPEH-G5', 'MAPEH Grade 5', 7, 1),
(31, 'ENG-G6', 'English Grade 6', 8, 1),
(32, 'MATH-G6', 'Mathematics Grade 6', 8, 1),
(33, 'SCI-G6', 'Science Grade 6', 8, 1),
(34, 'FIL-G6', 'Filipino Grade 6', 8, 1),
(35, 'AP-G6', 'Araling Panlipunan Grade 6', 8, 1),
(36, 'MAPEH-G6', 'MAPEH Grade 6', 8, 1);

-- teacher_assignments: 72 sample rows
INSERT IGNORE INTO `teacher_assignments` (`assignment_id`, `staff_id`, `subject_id`, `section_id`, `school_year_id`) VALUES
(1, 5, 1, 1, 1),
(2, 6, 2, 1, 1),
(3, 7, 3, 1, 1),
(4, 8, 4, 1, 1),
(5, 9, 5, 1, 1),
(6, 10, 6, 1, 1),
(7, 5, 1, 2, 1),
(8, 6, 2, 2, 1),
(9, 7, 3, 2, 1),
(10, 8, 4, 2, 1),
(11, 9, 5, 2, 1),
(12, 10, 6, 2, 1),
(13, 5, 7, 3, 1),
(14, 6, 8, 3, 1),
(15, 7, 9, 3, 1),
(16, 8, 10, 3, 1),
(17, 9, 11, 3, 1),
(18, 10, 12, 3, 1),
(19, 5, 7, 4, 1),
(20, 6, 8, 4, 1),
(21, 7, 9, 4, 1),
(22, 8, 10, 4, 1),
(23, 9, 11, 4, 1),
(24, 10, 12, 4, 1),
(25, 5, 13, 5, 1),
(26, 6, 14, 5, 1),
(27, 7, 15, 5, 1),
(28, 8, 16, 5, 1),
(29, 9, 17, 5, 1),
(30, 10, 18, 5, 1),
(31, 5, 13, 6, 1),
(32, 6, 14, 6, 1),
(33, 7, 15, 6, 1),
(34, 8, 16, 6, 1),
(35, 9, 17, 6, 1),
(36, 10, 18, 6, 1),
(37, 5, 19, 7, 1),
(38, 6, 20, 7, 1),
(39, 7, 21, 7, 1),
(40, 8, 22, 7, 1),
(41, 9, 23, 7, 1),
(42, 10, 24, 7, 1),
(43, 5, 19, 8, 1),
(44, 6, 20, 8, 1),
(45, 7, 21, 8, 1),
(46, 8, 22, 8, 1),
(47, 9, 23, 8, 1),
(48, 10, 24, 8, 1),
(49, 5, 25, 9, 1),
(50, 6, 26, 9, 1),
(51, 7, 27, 9, 1),
(52, 8, 28, 9, 1),
(53, 9, 29, 9, 1),
(54, 10, 30, 9, 1),
(55, 5, 25, 10, 1),
(56, 6, 26, 10, 1),
(57, 7, 27, 10, 1),
(58, 8, 28, 10, 1),
(59, 9, 29, 10, 1),
(60, 10, 30, 10, 1),
(61, 5, 31, 11, 1),
(62, 6, 32, 11, 1),
(63, 7, 33, 11, 1),
(64, 8, 34, 11, 1),
(65, 9, 35, 11, 1),
(66, 10, 36, 11, 1),
(67, 5, 31, 12, 1),
(68, 6, 32, 12, 1),
(69, 7, 33, 12, 1),
(70, 8, 34, 12, 1),
(71, 9, 35, 12, 1),
(72, 10, 36, 12, 1);

-- student_subjects: 30 sample rows
INSERT IGNORE INTO `student_subjects` (`student_subject_id`, `enrollment_id`, `subject_id`, `assignment_id`, `student_subject_status_id`) VALUES
(1, 1, 1, 7, 1),
(2, 1, 2, 8, 1),
(3, 1, 3, 9, 1),
(7, 2, 7, 19, 1),
(8, 2, 8, 20, 1),
(9, 2, 9, 21, 1),
(13, 3, 13, 25, 1),
(14, 3, 14, 26, 1),
(15, 3, 15, 27, 1),
(19, 4, 19, 43, 1),
(20, 4, 20, 44, 1),
(21, 4, 21, 45, 1),
(25, 5, 25, 49, 1),
(26, 5, 26, 50, 1),
(27, 5, 27, 51, 1),
(31, 6, 31, 67, 1),
(32, 6, 32, 68, 1),
(33, 6, 33, 69, 1),
(37, 7, 1, 7, 1),
(38, 7, 2, 8, 1),
(39, 7, 3, 9, 1),
(43, 8, 7, 19, 1),
(44, 8, 8, 20, 1),
(45, 8, 9, 21, 1),
(49, 9, 13, 25, 1),
(50, 9, 14, 26, 1),
(51, 9, 15, 27, 1),
(55, 10, 19, 43, 1),
(56, 10, 20, 44, 1),
(57, 10, 21, 45, 1);

-- grades: 120 sample rows
INSERT IGNORE INTO `grades` (`grade_id`, `student_subject_id`, `quarter_id`, `grade`, `remarks`, `entered_by`, `entered_at`, `grade_status_id`) VALUES
(1, 1, 1, 86.25, 'Quarterly written and performance assessment', 5, '2026-09-15 09:00:00', 3),
(2, 1, 2, 87.5, 'Class participation and written assessment', 5, '2026-10-15 09:00:00', 3),
(3, 1, 3, 88.75, 'Quarterly examination and activities', 5, '2026-11-15 09:00:00', 3),
(4, 1, 4, 90.0, 'Performance task and quarterly assessment', 5, '2026-12-15 09:00:00', 3),
(5, 2, 1, 88.25, 'Quarterly written and performance assessment', 6, '2026-09-15 09:00:00', 3),
(6, 2, 2, 89.5, 'Class participation and written assessment', 6, '2026-10-15 09:00:00', 3),
(7, 2, 3, 90.75, 'Quarterly examination and activities', 6, '2026-11-15 09:00:00', 3),
(8, 2, 4, 92.0, 'Performance task and quarterly assessment', 6, '2026-12-15 09:00:00', 3),
(9, 3, 1, 90.25, 'Quarterly written and performance assessment', 7, '2026-09-15 09:00:00', 3),
(10, 3, 2, 91.5, 'Class participation and written assessment', 7, '2026-10-15 09:00:00', 3),
(11, 3, 3, 92.75, 'Quarterly examination and activities', 7, '2026-11-15 09:00:00', 3),
(12, 3, 4, 94.0, 'Performance task and quarterly assessment', 7, '2026-12-15 09:00:00', 3),
(25, 7, 1, 89.25, 'Quarterly written and performance assessment', 5, '2026-09-15 09:00:00', 3),
(26, 7, 2, 90.5, 'Class participation and written assessment', 5, '2026-10-15 09:00:00', 3),
(27, 7, 3, 91.75, 'Quarterly examination and activities', 5, '2026-11-15 09:00:00', 3),
(28, 7, 4, 93.0, 'Performance task and quarterly assessment', 5, '2026-12-15 09:00:00', 3),
(29, 8, 1, 91.25, 'Quarterly written and performance assessment', 6, '2026-09-15 09:00:00', 3),
(30, 8, 2, 92.5, 'Class participation and written assessment', 6, '2026-10-15 09:00:00', 3),
(31, 8, 3, 93.75, 'Quarterly examination and activities', 6, '2026-11-15 09:00:00', 3),
(32, 8, 4, 95.0, 'Performance task and quarterly assessment', 6, '2026-12-15 09:00:00', 3),
(33, 9, 1, 93.25, 'Quarterly written and performance assessment', 7, '2026-09-15 09:00:00', 3),
(34, 9, 2, 94.5, 'Class participation and written assessment', 7, '2026-10-15 09:00:00', 3),
(35, 9, 3, 95.75, 'Quarterly examination and activities', 7, '2026-11-15 09:00:00', 3),
(36, 9, 4, 97.0, 'Performance task and quarterly assessment', 7, '2026-12-15 09:00:00', 3),
(49, 13, 1, 92.25, 'Quarterly written and performance assessment', 5, '2026-09-15 09:00:00', 3),
(50, 13, 2, 93.5, 'Class participation and written assessment', 5, '2026-10-15 09:00:00', 3),
(51, 13, 3, 94.75, 'Quarterly examination and activities', 5, '2026-11-15 09:00:00', 3),
(52, 13, 4, 96.0, 'Performance task and quarterly assessment', 5, '2026-12-15 09:00:00', 3),
(53, 14, 1, 94.25, 'Quarterly written and performance assessment', 6, '2026-09-15 09:00:00', 3),
(54, 14, 2, 95.5, 'Class participation and written assessment', 6, '2026-10-15 09:00:00', 3),
(55, 14, 3, 96.75, 'Quarterly examination and activities', 6, '2026-11-15 09:00:00', 3),
(56, 14, 4, 98.0, 'Performance task and quarterly assessment', 6, '2026-12-15 09:00:00', 3),
(57, 15, 1, 96.25, 'Quarterly written and performance assessment', 7, '2026-09-15 09:00:00', 3),
(58, 15, 2, 97.5, 'Class participation and written assessment', 7, '2026-10-15 09:00:00', 3),
(59, 15, 3, 98.75, 'Quarterly examination and activities', 7, '2026-11-15 09:00:00', 3),
(60, 15, 4, 83.0, 'Performance task and quarterly assessment', 7, '2026-12-15 09:00:00', 3),
(73, 19, 1, 95.25, 'Quarterly written and performance assessment', 5, '2026-09-15 09:00:00', 3),
(74, 19, 2, 96.5, 'Class participation and written assessment', 5, '2026-10-15 09:00:00', 3),
(75, 19, 3, 97.75, 'Quarterly examination and activities', 5, '2026-11-15 09:00:00', 3),
(76, 19, 4, 99.0, 'Performance task and quarterly assessment', 5, '2026-12-15 09:00:00', 3),
(77, 20, 1, 97.25, 'Quarterly written and performance assessment', 6, '2026-09-15 09:00:00', 3),
(78, 20, 2, 98.5, 'Class participation and written assessment', 6, '2026-10-15 09:00:00', 3),
(79, 20, 3, 82.75, 'Quarterly examination and activities', 6, '2026-11-15 09:00:00', 3),
(80, 20, 4, 84.0, 'Performance task and quarterly assessment', 6, '2026-12-15 09:00:00', 3),
(81, 21, 1, 82.25, 'Quarterly written and performance assessment', 7, '2026-09-15 09:00:00', 3),
(82, 21, 2, 83.5, 'Class participation and written assessment', 7, '2026-10-15 09:00:00', 3),
(83, 21, 3, 84.75, 'Quarterly examination and activities', 7, '2026-11-15 09:00:00', 3),
(84, 21, 4, 86.0, 'Performance task and quarterly assessment', 7, '2026-12-15 09:00:00', 3),
(97, 25, 1, 98.25, 'Quarterly written and performance assessment', 5, '2026-09-15 09:00:00', 3),
(98, 25, 2, 82.5, 'Class participation and written assessment', 5, '2026-10-15 09:00:00', 3),
(99, 25, 3, 83.75, 'Quarterly examination and activities', 5, '2026-11-15 09:00:00', 3),
(100, 25, 4, 85.0, 'Performance task and quarterly assessment', 5, '2026-12-15 09:00:00', 3),
(101, 26, 1, 83.25, 'Quarterly written and performance assessment', 6, '2026-09-15 09:00:00', 3),
(102, 26, 2, 84.5, 'Class participation and written assessment', 6, '2026-10-15 09:00:00', 3),
(103, 26, 3, 85.75, 'Quarterly examination and activities', 6, '2026-11-15 09:00:00', 3),
(104, 26, 4, 87.0, 'Performance task and quarterly assessment', 6, '2026-12-15 09:00:00', 3),
(105, 27, 1, 85.25, 'Quarterly written and performance assessment', 7, '2026-09-15 09:00:00', 3),
(106, 27, 2, 86.5, 'Class participation and written assessment', 7, '2026-10-15 09:00:00', 3),
(107, 27, 3, 87.75, 'Quarterly examination and activities', 7, '2026-11-15 09:00:00', 3),
(108, 27, 4, 89.0, 'Performance task and quarterly assessment', 7, '2026-12-15 09:00:00', 3),
(121, 31, 1, 84.25, 'Quarterly written and performance assessment', 5, '2026-09-15 09:00:00', 3),
(122, 31, 2, 85.5, 'Class participation and written assessment', 5, '2026-10-15 09:00:00', 3),
(123, 31, 3, 86.75, 'Quarterly examination and activities', 5, '2026-11-15 09:00:00', 3),
(124, 31, 4, 88.0, 'Performance task and quarterly assessment', 5, '2026-12-15 09:00:00', 3),
(125, 32, 1, 86.25, 'Quarterly written and performance assessment', 6, '2026-09-15 09:00:00', 3),
(126, 32, 2, 87.5, 'Class participation and written assessment', 6, '2026-10-15 09:00:00', 3),
(127, 32, 3, 88.75, 'Quarterly examination and activities', 6, '2026-11-15 09:00:00', 3),
(128, 32, 4, 90.0, 'Performance task and quarterly assessment', 6, '2026-12-15 09:00:00', 3),
(129, 33, 1, 88.25, 'Quarterly written and performance assessment', 7, '2026-09-15 09:00:00', 3),
(130, 33, 2, 89.5, 'Class participation and written assessment', 7, '2026-10-15 09:00:00', 3),
(131, 33, 3, 90.75, 'Quarterly examination and activities', 7, '2026-11-15 09:00:00', 3),
(132, 33, 4, 92.0, 'Performance task and quarterly assessment', 7, '2026-12-15 09:00:00', 3),
(145, 37, 1, 87.25, 'Quarterly written and performance assessment', 5, '2026-09-15 09:00:00', 3),
(146, 37, 2, 88.5, 'Class participation and written assessment', 5, '2026-10-15 09:00:00', 3),
(147, 37, 3, 89.75, 'Quarterly examination and activities', 5, '2026-11-15 09:00:00', 3),
(148, 37, 4, 91.0, 'Performance task and quarterly assessment', 5, '2026-12-15 09:00:00', 3),
(149, 38, 1, 89.25, 'Quarterly written and performance assessment', 6, '2026-09-15 09:00:00', 3),
(150, 38, 2, 90.5, 'Class participation and written assessment', 6, '2026-10-15 09:00:00', 3),
(151, 38, 3, 91.75, 'Quarterly examination and activities', 6, '2026-11-15 09:00:00', 3),
(152, 38, 4, 93.0, 'Performance task and quarterly assessment', 6, '2026-12-15 09:00:00', 3),
(153, 39, 1, 91.25, 'Quarterly written and performance assessment', 7, '2026-09-15 09:00:00', 3),
(154, 39, 2, 92.5, 'Class participation and written assessment', 7, '2026-10-15 09:00:00', 3),
(155, 39, 3, 93.75, 'Quarterly examination and activities', 7, '2026-11-15 09:00:00', 3),
(156, 39, 4, 95.0, 'Performance task and quarterly assessment', 7, '2026-12-15 09:00:00', 3),
(169, 43, 1, 90.25, 'Quarterly written and performance assessment', 5, '2026-09-15 09:00:00', 3),
(170, 43, 2, 91.5, 'Class participation and written assessment', 5, '2026-10-15 09:00:00', 3),
(171, 43, 3, 92.75, 'Quarterly examination and activities', 5, '2026-11-15 09:00:00', 3),
(172, 43, 4, 94.0, 'Performance task and quarterly assessment', 5, '2026-12-15 09:00:00', 3),
(173, 44, 1, 92.25, 'Quarterly written and performance assessment', 6, '2026-09-15 09:00:00', 3),
(174, 44, 2, 93.5, 'Class participation and written assessment', 6, '2026-10-15 09:00:00', 3),
(175, 44, 3, 94.75, 'Quarterly examination and activities', 6, '2026-11-15 09:00:00', 3),
(176, 44, 4, 96.0, 'Performance task and quarterly assessment', 6, '2026-12-15 09:00:00', 3),
(177, 45, 1, 94.25, 'Quarterly written and performance assessment', 7, '2026-09-15 09:00:00', 3),
(178, 45, 2, 95.5, 'Class participation and written assessment', 7, '2026-10-15 09:00:00', 3),
(179, 45, 3, 96.75, 'Quarterly examination and activities', 7, '2026-11-15 09:00:00', 3),
(180, 45, 4, 98.0, 'Performance task and quarterly assessment', 7, '2026-12-15 09:00:00', 3),
(193, 49, 1, 93.25, 'Quarterly written and performance assessment', 5, '2026-09-15 09:00:00', 3),
(194, 49, 2, 94.5, 'Class participation and written assessment', 5, '2026-10-15 09:00:00', 3),
(195, 49, 3, 95.75, 'Quarterly examination and activities', 5, '2026-11-15 09:00:00', 3),
(196, 49, 4, 97.0, 'Performance task and quarterly assessment', 5, '2026-12-15 09:00:00', 3),
(197, 50, 1, 95.25, 'Quarterly written and performance assessment', 6, '2026-09-15 09:00:00', 3),
(198, 50, 2, 96.5, 'Class participation and written assessment', 6, '2026-10-15 09:00:00', 3),
(199, 50, 3, 97.75, 'Quarterly examination and activities', 6, '2026-11-15 09:00:00', 3),
(200, 50, 4, 99.0, 'Performance task and quarterly assessment', 6, '2026-12-15 09:00:00', 3),
(201, 51, 1, 97.25, 'Quarterly written and performance assessment', 7, '2026-09-15 09:00:00', 3),
(202, 51, 2, 98.5, 'Class participation and written assessment', 7, '2026-10-15 09:00:00', 3),
(203, 51, 3, 82.75, 'Quarterly examination and activities', 7, '2026-11-15 09:00:00', 3),
(204, 51, 4, 84.0, 'Performance task and quarterly assessment', 7, '2026-12-15 09:00:00', 3),
(217, 55, 1, 96.25, 'Quarterly written and performance assessment', 5, '2026-09-15 09:00:00', 3),
(218, 55, 2, 97.5, 'Class participation and written assessment', 5, '2026-10-15 09:00:00', 3),
(219, 55, 3, 98.75, 'Quarterly examination and activities', 5, '2026-11-15 09:00:00', 3),
(220, 55, 4, 83.0, 'Performance task and quarterly assessment', 5, '2026-12-15 09:00:00', 3),
(221, 56, 1, 98.25, 'Quarterly written and performance assessment', 6, '2026-09-15 09:00:00', 3),
(222, 56, 2, 82.5, 'Class participation and written assessment', 6, '2026-10-15 09:00:00', 3),
(223, 56, 3, 83.75, 'Quarterly examination and activities', 6, '2026-11-15 09:00:00', 3),
(224, 56, 4, 85.0, 'Performance task and quarterly assessment', 6, '2026-12-15 09:00:00', 3),
(225, 57, 1, 83.25, 'Quarterly written and performance assessment', 7, '2026-09-15 09:00:00', 3),
(226, 57, 2, 84.5, 'Class participation and written assessment', 7, '2026-10-15 09:00:00', 3),
(227, 57, 3, 85.75, 'Quarterly examination and activities', 7, '2026-11-15 09:00:00', 3),
(228, 57, 4, 87.0, 'Performance task and quarterly assessment', 7, '2026-12-15 09:00:00', 3);

-- attendance: 80 sample rows
INSERT IGNORE INTO `attendance` (`attendance_id`, `enrollment_id`, `attendance_date`, `attendance_status_id`, `recorded_by`, `remarks`, `created_at`) VALUES
(1, 1, '2026-09-01', 1, 5, 'Present during morning attendance', '2026-09-01 08:00:00'),
(2, 1, '2026-09-02', 1, 6, 'Marked present by the class adviser', '2026-09-02 08:00:00'),
(3, 1, '2026-09-03', 1, 7, 'Attendance recorded during homeroom', '2026-09-03 08:00:00'),
(4, 1, '2026-09-04', 1, 8, 'Attendance checked at the start of class', '2026-09-04 08:00:00'),
(5, 1, '2026-09-07', 1, 9, 'Present during morning attendance', '2026-09-07 08:00:00'),
(6, 1, '2026-09-08', 1, 10, 'Marked present by the class adviser', '2026-09-08 08:00:00'),
(7, 1, '2026-09-09', 1, 5, 'Attendance recorded during homeroom', '2026-09-09 08:00:00'),
(8, 1, '2026-09-10', 1, 6, 'Attendance checked at the start of class', '2026-09-10 08:00:00'),
(9, 1, '2026-09-11', 1, 7, 'Present during morning attendance', '2026-09-11 08:00:00'),
(10, 1, '2026-09-14', 1, 8, 'Marked present by the class adviser', '2026-09-14 08:00:00'),
(11, 2, '2026-09-01', 1, 5, 'Attendance recorded during homeroom', '2026-09-01 08:00:00'),
(12, 2, '2026-09-02', 1, 6, 'Attendance checked at the start of class', '2026-09-02 08:00:00'),
(13, 2, '2026-09-03', 1, 7, 'Present during morning attendance', '2026-09-03 08:00:00'),
(14, 2, '2026-09-04', 1, 8, 'Marked present by the class adviser', '2026-09-04 08:00:00'),
(15, 2, '2026-09-07', 1, 9, 'Attendance recorded during homeroom', '2026-09-07 08:00:00'),
(16, 2, '2026-09-08', 1, 10, 'Attendance checked at the start of class', '2026-09-08 08:00:00'),
(17, 2, '2026-09-09', 1, 5, 'Present during morning attendance', '2026-09-09 08:00:00'),
(18, 2, '2026-09-10', 1, 6, 'Marked present by the class adviser', '2026-09-10 08:00:00'),
(19, 2, '2026-09-11', 1, 7, 'Attendance recorded during homeroom', '2026-09-11 08:00:00'),
(20, 2, '2026-09-14', 3, 8, 'Attendance checked at the start of class', '2026-09-14 08:00:00'),
(21, 3, '2026-09-01', 1, 5, 'Present during morning attendance', '2026-09-01 08:00:00'),
(22, 3, '2026-09-02', 1, 6, 'Marked present by the class adviser', '2026-09-02 08:00:00'),
(23, 3, '2026-09-03', 1, 7, 'Attendance recorded during homeroom', '2026-09-03 08:00:00'),
(24, 3, '2026-09-04', 1, 8, 'Attendance checked at the start of class', '2026-09-04 08:00:00'),
(25, 3, '2026-09-07', 1, 9, 'Present during morning attendance', '2026-09-07 08:00:00'),
(26, 3, '2026-09-08', 1, 10, 'Marked present by the class adviser', '2026-09-08 08:00:00'),
(27, 3, '2026-09-09', 1, 5, 'Attendance recorded during homeroom', '2026-09-09 08:00:00'),
(28, 3, '2026-09-10', 1, 6, 'Attendance checked at the start of class', '2026-09-10 08:00:00'),
(29, 3, '2026-09-11', 3, 7, 'Present during morning attendance', '2026-09-11 08:00:00'),
(30, 3, '2026-09-14', 1, 8, 'Marked present by the class adviser', '2026-09-14 08:00:00'),
(31, 4, '2026-09-01', 1, 5, 'Attendance recorded during homeroom', '2026-09-01 08:00:00'),
(32, 4, '2026-09-02', 1, 6, 'Attendance checked at the start of class', '2026-09-02 08:00:00'),
(33, 4, '2026-09-03', 1, 7, 'Present during morning attendance', '2026-09-03 08:00:00'),
(34, 4, '2026-09-04', 1, 8, 'Marked present by the class adviser', '2026-09-04 08:00:00'),
(35, 4, '2026-09-07', 1, 9, 'Attendance recorded during homeroom', '2026-09-07 08:00:00'),
(36, 4, '2026-09-08', 1, 10, 'Attendance checked at the start of class', '2026-09-08 08:00:00'),
(37, 4, '2026-09-09', 1, 5, 'Present during morning attendance', '2026-09-09 08:00:00'),
(38, 4, '2026-09-10', 3, 6, 'Marked present by the class adviser', '2026-09-10 08:00:00'),
(39, 4, '2026-09-11', 1, 7, 'Attendance recorded during homeroom', '2026-09-11 08:00:00'),
(40, 4, '2026-09-14', 1, 8, 'Attendance checked at the start of class', '2026-09-14 08:00:00'),
(41, 5, '2026-09-01', 1, 5, 'Present during morning attendance', '2026-09-01 08:00:00'),
(42, 5, '2026-09-02', 1, 6, 'Marked present by the class adviser', '2026-09-02 08:00:00'),
(43, 5, '2026-09-03', 1, 7, 'Attendance recorded during homeroom', '2026-09-03 08:00:00'),
(44, 5, '2026-09-04', 1, 8, 'Attendance checked at the start of class', '2026-09-04 08:00:00'),
(45, 5, '2026-09-07', 1, 9, 'Present during morning attendance', '2026-09-07 08:00:00'),
(46, 5, '2026-09-08', 1, 10, 'Marked present by the class adviser', '2026-09-08 08:00:00'),
(47, 5, '2026-09-09', 3, 5, 'Attendance recorded during homeroom', '2026-09-09 08:00:00'),
(48, 5, '2026-09-10', 1, 6, 'Attendance checked at the start of class', '2026-09-10 08:00:00'),
(49, 5, '2026-09-11', 1, 7, 'Present during morning attendance', '2026-09-11 08:00:00'),
(50, 5, '2026-09-14', 1, 8, 'Marked present by the class adviser', '2026-09-14 08:00:00'),
(51, 6, '2026-09-01', 1, 5, 'Attendance recorded during homeroom', '2026-09-01 08:00:00'),
(52, 6, '2026-09-02', 1, 6, 'Attendance checked at the start of class', '2026-09-02 08:00:00'),
(53, 6, '2026-09-03', 1, 7, 'Present during morning attendance', '2026-09-03 08:00:00'),
(54, 6, '2026-09-04', 1, 8, 'Marked present by the class adviser', '2026-09-04 08:00:00'),
(55, 6, '2026-09-07', 1, 9, 'Attendance recorded during homeroom', '2026-09-07 08:00:00'),
(56, 6, '2026-09-08', 3, 10, 'Attendance checked at the start of class', '2026-09-08 08:00:00'),
(57, 6, '2026-09-09', 1, 5, 'Present during morning attendance', '2026-09-09 08:00:00'),
(58, 6, '2026-09-10', 1, 6, 'Marked present by the class adviser', '2026-09-10 08:00:00'),
(59, 6, '2026-09-11', 1, 7, 'Attendance recorded during homeroom', '2026-09-11 08:00:00'),
(60, 6, '2026-09-14', 1, 8, 'Attendance checked at the start of class', '2026-09-14 08:00:00'),
(61, 7, '2026-09-01', 1, 5, 'Present during morning attendance', '2026-09-01 08:00:00'),
(62, 7, '2026-09-02', 1, 6, 'Marked present by the class adviser', '2026-09-02 08:00:00'),
(63, 7, '2026-09-03', 1, 7, 'Attendance recorded during homeroom', '2026-09-03 08:00:00'),
(64, 7, '2026-09-04', 1, 8, 'Attendance checked at the start of class', '2026-09-04 08:00:00'),
(65, 7, '2026-09-07', 3, 9, 'Present during morning attendance', '2026-09-07 08:00:00'),
(66, 7, '2026-09-08', 1, 10, 'Marked present by the class adviser', '2026-09-08 08:00:00'),
(67, 7, '2026-09-09', 1, 5, 'Attendance recorded during homeroom', '2026-09-09 08:00:00'),
(68, 7, '2026-09-10', 1, 6, 'Attendance checked at the start of class', '2026-09-10 08:00:00'),
(69, 7, '2026-09-11', 1, 7, 'Present during morning attendance', '2026-09-11 08:00:00'),
(70, 7, '2026-09-14', 1, 8, 'Marked present by the class adviser', '2026-09-14 08:00:00'),
(71, 8, '2026-09-01', 1, 5, 'Attendance recorded during homeroom', '2026-09-01 08:00:00'),
(72, 8, '2026-09-02', 1, 6, 'Attendance checked at the start of class', '2026-09-02 08:00:00'),
(73, 8, '2026-09-03', 1, 7, 'Present during morning attendance', '2026-09-03 08:00:00'),
(74, 8, '2026-09-04', 3, 8, 'Marked present by the class adviser', '2026-09-04 08:00:00'),
(75, 8, '2026-09-07', 1, 9, 'Attendance recorded during homeroom', '2026-09-07 08:00:00'),
(76, 8, '2026-09-08', 1, 10, 'Attendance checked at the start of class', '2026-09-08 08:00:00'),
(77, 8, '2026-09-09', 1, 5, 'Present during morning attendance', '2026-09-09 08:00:00'),
(78, 8, '2026-09-10', 1, 6, 'Marked present by the class adviser', '2026-09-10 08:00:00'),
(79, 8, '2026-09-11', 1, 7, 'Attendance recorded during homeroom', '2026-09-11 08:00:00'),
(80, 8, '2026-09-14', 1, 8, 'Attendance checked at the start of class', '2026-09-14 08:00:00');

-- student_bills: 20 sample rows
INSERT IGNORE INTO `student_bills` (`bill_id`, `enrollment_id`, `bill_type_id`, `amount_paid`, `due_date`, `bill_status_id`) VALUES
(1, 1, 1, 5000.0, '2026-10-31', 2),
(2, 1, 2, 1000.0, '2026-09-30', 3),
(3, 2, 1, 5000.0, '2026-10-31', 2),
(4, 2, 2, 1000.0, '2026-09-30', 3),
(5, 3, 1, 5000.0, '2026-10-31', 2),
(6, 3, 2, 1000.0, '2026-09-30', 3),
(7, 4, 1, 5000.0, '2026-10-31', 2),
(8, 4, 2, 1000.0, '2026-09-30', 3),
(9, 5, 1, 5000.0, '2026-10-31', 2),
(10, 5, 2, 1000.0, '2026-09-30', 3),
(11, 6, 1, 5000.0, '2026-10-31', 2),
(12, 6, 2, 1000.0, '2026-09-30', 3),
(13, 7, 1, 5000.0, '2026-10-31', 2),
(14, 7, 2, 1000.0, '2026-09-30', 3),
(15, 8, 1, 5000.0, '2026-10-31', 2),
(16, 8, 2, 1000.0, '2026-09-30', 3),
(17, 9, 1, 5000.0, '2026-10-31', 2),
(18, 9, 2, 1000.0, '2026-09-30', 3),
(19, 10, 1, 5000.0, '2026-10-31', 2),
(20, 10, 2, 1000.0, '2026-09-30', 3);

-- payments: 20 sample rows
INSERT IGNORE INTO `payments` (`payment_id`, `bill_id`, `receipt_number`, `amount`, `payment_method_id`, `payment_date`, `received_by`, `reference_number`, `remarks`) VALUES
(1, 1, 'OR-2026-0001-T', 5000.0, 2, '2026-09-05 10:00:00', 4, 'GCASH-2026-0001', 'Partial tuition payment for September 2026'),
(2, 2, 'OR-2026-0001-R', 1000.0, 1, '2026-08-25 10:00:00', 4, NULL, 'Registration fee received'),
(3, 3, 'OR-2026-0002-T', 5000.0, 2, '2026-09-05 10:00:00', 4, 'GCASH-2026-0002', 'Partial tuition payment for September 2026'),
(4, 4, 'OR-2026-0002-R', 1000.0, 1, '2026-08-25 10:00:00', 4, NULL, 'Registration fee received'),
(5, 5, 'OR-2026-0003-T', 5000.0, 2, '2026-09-05 10:00:00', 4, 'GCASH-2026-0003', 'Partial tuition payment for September 2026'),
(6, 6, 'OR-2026-0003-R', 1000.0, 1, '2026-08-25 10:00:00', 4, NULL, 'Registration fee received'),
(7, 7, 'OR-2026-0004-T', 5000.0, 2, '2026-09-05 10:00:00', 4, 'GCASH-2026-0004', 'Partial tuition payment for September 2026'),
(8, 8, 'OR-2026-0004-R', 1000.0, 1, '2026-08-25 10:00:00', 4, NULL, 'Registration fee received'),
(9, 9, 'OR-2026-0005-T', 5000.0, 2, '2026-09-05 10:00:00', 4, 'GCASH-2026-0005', 'Partial tuition payment for September 2026'),
(10, 10, 'OR-2026-0005-R', 1000.0, 1, '2026-08-25 10:00:00', 4, NULL, 'Registration fee received'),
(11, 11, 'OR-2026-0006-T', 5000.0, 2, '2026-09-05 10:00:00', 4, 'GCASH-2026-0006', 'Partial tuition payment for September 2026'),
(12, 12, 'OR-2026-0006-R', 1000.0, 1, '2026-08-25 10:00:00', 4, NULL, 'Registration fee received'),
(13, 13, 'OR-2026-0007-T', 5000.0, 2, '2026-09-05 10:00:00', 4, 'GCASH-2026-0007', 'Partial tuition payment for September 2026'),
(14, 14, 'OR-2026-0007-R', 1000.0, 1, '2026-08-25 10:00:00', 4, NULL, 'Registration fee received'),
(15, 15, 'OR-2026-0008-T', 5000.0, 2, '2026-09-05 10:00:00', 4, 'GCASH-2026-0008', 'Partial tuition payment for September 2026'),
(16, 16, 'OR-2026-0008-R', 1000.0, 1, '2026-08-25 10:00:00', 4, NULL, 'Registration fee received'),
(17, 17, 'OR-2026-0009-T', 5000.0, 2, '2026-09-05 10:00:00', 4, 'GCASH-2026-0009', 'Partial tuition payment for September 2026'),
(18, 18, 'OR-2026-0009-R', 1000.0, 1, '2026-08-25 10:00:00', 4, NULL, 'Registration fee received'),
(19, 19, 'OR-2026-0010-T', 5000.0, 2, '2026-09-05 10:00:00', 4, 'GCASH-2026-0010', 'Partial tuition payment for September 2026'),
(20, 20, 'OR-2026-0010-R', 1000.0, 1, '2026-08-25 10:00:00', 4, NULL, 'Registration fee received');

-- section_transfers: 2 sample rows
INSERT IGNORE INTO `section_transfers` (`transfer_id`, `enrollment_id`, `from_section_id`, `to_section_id`, `transfer_date`, `reason_id`, `remarks`) VALUES
(1, 1, 1, 2, '2026-08-25', 4, 'Section reassignment approved by the registrar before regular classes'),
(2, 7, 1, 2, '2026-08-25', 4, 'Section reassignment approved by the registrar before regular classes');

-- enrollment_applications: 4 sample rows
INSERT IGNORE INTO `enrollment_applications` (`application_id`, `application_number`, `school_year_id`, `student_id`, `requested_grade_level_id`, `enrollment_type_id`, `enrollment_method_id`, `application_status_id`, `submitted_at`) VALUES
(1, 'ENR-2026-0001', 1, 1, 3, 1, 2, 3, '2026-08-11 09:00:00'),
(2, 'ENR-2026-0002', 1, 2, 4, 2, 2, 3, '2026-08-12 09:00:00'),
(3, 'ENR-2026-0003', 1, 3, 5, 1, 2, 2, '2026-08-13 09:00:00'),
(4, 'ENR-2026-0004', 1, 4, 6, 2, 2, 1, '2026-08-14 09:00:00');

-- application_applicants: 4 sample rows
INSERT IGNORE INTO `application_applicants` (`applicant_id`, `application_id`, `first_name`, `middle_name`, `last_name`, `suffix`, `birth_date`, `gender_id`, `address`, `contact_number`, `email`) VALUES
(1, 1, 'Althea', 'Marie', 'Santos', NULL, '2018-05-12', 1, 'Pueblo de Oro, Cagayan de Oro City', '0900-300-4001', 'althea.santos@applicant.example'),
(2, 2, 'Miguel', 'Jose', 'Reyes', NULL, '2017-05-12', 2, 'Macasandig, Cagayan de Oro City', '0900-300-4002', 'miguel.reyes@applicant.example'),
(3, 3, 'Sofia', 'Anne', 'Cruz', NULL, '2016-05-12', 1, 'Nazareth, Cagayan de Oro City', '0900-300-4003', 'sofia.cruz@applicant.example'),
(4, 4, 'Gabriel', 'Luis', 'Garcia', NULL, '2015-05-12', 2, 'Carmen, Cagayan de Oro City', '0900-300-4004', 'gabriel.garcia@applicant.example');

-- application_guardians: 4 sample rows
INSERT IGNORE INTO `application_guardians` (`application_guardian_id`, `application_id`, `first_name`, `middle_name`, `last_name`, `relationship_id`, `contact_number`, `email`, `address`, `is_primary`) VALUES
(1, 1, 'Maricel', 'A.', 'Santos', 1, '0900-400-5001', 'maricel.santos@guardian.example', 'Pueblo de Oro, Cagayan de Oro City', 1),
(2, 2, 'Roberto', 'L.', 'Reyes', 2, '0900-400-5002', 'roberto.reyes@guardian.example', 'Macasandig, Cagayan de Oro City', 1),
(3, 3, 'Joanna', 'M.', 'Cruz', 1, '0900-400-5003', 'joanna.cruz@guardian.example', 'Nazareth, Cagayan de Oro City', 1),
(4, 4, 'Edgar', 'P.', 'Garcia', 2, '0900-400-5004', 'edgar.garcia@guardian.example', 'Carmen, Cagayan de Oro City', 1);

-- application_previous_schools: 4 sample rows
INSERT IGNORE INTO `application_previous_schools` (`application_previous_school_id`, `application_id`, `school_name`, `school_address`, `previous_grade_level`, `school_year`) VALUES
(1, 1, 'St. Marys Academy of Cagayan', 'Pueblo de Oro, Cagayan de Oro City', 'Grade 1', '2025-2026'),
(2, 2, 'Cagayan de Oro City Elementary School', 'Macasandig, Cagayan de Oro City', 'Grade 1', '2025-2026'),
(3, 3, 'Xavier University Grade School', 'Nazareth, Cagayan de Oro City', 'Grade 2', '2025-2026'),
(4, 4, 'Lourdes College Basic Education', 'Carmen, Cagayan de Oro City', 'Grade 3', '2025-2026');

-- application_reviews: 2 sample rows
INSERT IGNORE INTO `application_reviews` (`review_id`, `application_id`, `reviewed_by`, `application_status_id`, `reviewed_at`, `remarks`) VALUES
(1, 1, 3, 3, '2026-08-21 10:00:00', 'Application documents checked and complete'),
(2, 2, 3, 3, '2026-08-22 10:00:00', 'Eligibility confirmed and awaiting final processing');

COMMIT;
-- Expected total row count after rebuild: 590 (assuming 84 lookup/reference rows remain).
