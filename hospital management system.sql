-- ============================================================
-- Hospital Management System — Sample Data (Medium: ~40 rows/table)
-- SQL Server (T-SQL)
-- Run AFTER HospitalManagementSystem_Schema.sql
-- ============================================================
USE HospitalManagementSystem;
GO

-- Safe to re-run: clears existing data first, in FK-safe (child-to-parent) order
DELETE FROM TestResults;
DELETE FROM Payments;
DELETE FROM Prescriptions;
DELETE FROM LabTests;
DELETE FROM Billing;
DELETE FROM Treatments;
DELETE FROM Admissions;
DELETE FROM Appointments;
DELETE FROM Nurses;
DELETE FROM Doctors;
DELETE FROM Patients;
DELETE FROM Medicines;
DELETE FROM Rooms;
DELETE FROM Departments;
GO

SET IDENTITY_INSERT Departments ON;
GO
-- Departments
INSERT INTO Departments (department_id, department_name, floor_no) VALUES
(1, 'Cardiology', 3),
(2, 'Orthopedics', 2),
(3, 'Neurology', 4),
(4, 'Pediatrics', 1),
(5, 'General Medicine', 1),
(6, 'Dermatology', 2),
(7, 'ENT', 2),
(8, 'Oncology', 5);
GO
SET IDENTITY_INSERT Departments OFF;
GO

-- Rooms
SET IDENTITY_INSERT Rooms ON;
GO
INSERT INTO Rooms (room_id, room_number, room_type, charges_per_day, availability) VALUES
(1, 'B101', 'General Ward', 1200.00, 'Occupied'),
(2, 'C102', 'Private', 4600.00, 'Available'),
(3, 'D103', 'General Ward', 1200.00, 'Occupied'),
(4, 'E104', 'ICU', 9000.00, 'Available'),
(5, 'A105', 'General Ward', 1300.00, 'Available'),
(6, 'B106', 'Deluxe', 7000.00, 'Occupied'),
(7, 'C107', 'Private', 4400.00, 'Available'),
(8, 'D108', 'ICU', 9200.00, 'Available'),
(9, 'E109', 'Private', 4400.00, 'Occupied'),
(10, 'A110', 'Semi-Private', 2600.00, 'Available'),
(11, 'B111', 'Semi-Private', 2500.00, 'Available'),
(12, 'C112', 'ICU', 9000.00, 'Occupied'),
(13, 'D113', 'Semi-Private', 2700.00, 'Available'),
(14, 'E114', 'ICU', 9000.00, 'Occupied'),
(15, 'A115', 'General Ward', 1400.00, 'Occupied'),
(16, 'B116', 'Semi-Private', 2600.00, 'Available'),
(17, 'C117', 'General Ward', 1300.00, 'Occupied'),
(18, 'D118', 'General Ward', 1300.00, 'Available'),
(19, 'E119', 'ICU', 9200.00, 'Occupied'),
(20, 'A120', 'Semi-Private', 2600.00, 'Occupied'),
(21, 'B121', 'Semi-Private', 2600.00, 'Occupied'),
(22, 'C122', 'General Ward', 1300.00, 'Occupied'),
(23, 'D123', 'Private', 4600.00, 'Occupied'),
(24, 'E124', 'ICU', 9200.00, 'Occupied'),
(25, 'A125', 'Private', 4700.00, 'Available'),
(26, 'B126', 'Private', 4500.00, 'Occupied'),
(27, 'C127', 'ICU', 9200.00, 'Available'),
(28, 'D128', 'Private', 4700.00, 'Available'),
(29, 'E129', 'ICU', 8900.00, 'Occupied'),
(30, 'A130', 'Private', 4700.00, 'Available'),
(31, 'B131', 'Private', 4700.00, 'Occupied'),
(32, 'C132', 'ICU', 8900.00, 'Occupied'),
(33, 'D133', 'Private', 4600.00, 'Occupied'),
(34, 'E134', 'ICU', 9000.00, 'Available'),
(35, 'A135', 'General Ward', 1300.00, 'Available'),
(36, 'B136', 'ICU', 9000.00, 'Occupied'),
(37, 'C137', 'ICU', 8900.00, 'Occupied'),
(38, 'D138', 'Semi-Private', 2500.00, 'Available'),
(39, 'E139', 'Deluxe', 7200.00, 'Occupied'),
(40, 'A140', 'General Ward', 1400.00, 'Occupied');
GO
SET IDENTITY_INSERT Rooms OFF;
GO

-- Medicines
SET IDENTITY_INSERT Medicines ON;
GO
INSERT INTO Medicines (medicine_id, medicine_name, manufacturer, price, stock) VALUES
(1, 'Paracetamol 500mg', 'Cipla', 83.8, 1),
(2, 'Amoxicillin 250mg', 'Sun Pharma', 429.91, 448),
(3, 'Azithromycin 500mg', 'Zydus', 328.06, 497),
(4, 'Metformin 500mg', 'Mankind', 232.75, 91),
(5, 'Atorvastatin 10mg', 'Dr Reddys', 235.84, 54),
(6, 'Omeprazole 20mg', 'Cipla', 393.68, 152),
(7, 'Cetirizine 10mg', 'GSK', 381.13, 259),
(8, 'Ibuprofen 400mg', 'Sun Pharma', 279.9, 78),
(9, 'Amlodipine 5mg', 'Torrent', 177.65, 82),
(10, 'Losartan 50mg', 'Mankind', 249.63, 398),
(11, 'Insulin Glargine', 'Sanofi', 416.26, 470),
(12, 'Salbutamol Inhaler', 'Cipla', 15.25, 165),
(13, 'Vitamin D3', 'Mankind', 227.54, 57),
(14, 'Calcium Carbonate', 'Zydus', 419.16, 449),
(15, 'Pantoprazole 40mg', 'Sun Pharma', 443.61, 413),
(16, 'Paracetamol 500mg (Batch 16)', 'Cipla', 148.77, 29),
(17, 'Amoxicillin 250mg (Batch 17)', 'Sun Pharma', 119.78, 290),
(18, 'Azithromycin 500mg (Batch 18)', 'Zydus', 426.92, 43),
(19, 'Metformin 500mg (Batch 19)', 'Mankind', 333.38, 417),
(20, 'Atorvastatin 10mg (Batch 20)', 'Dr Reddys', 45.11, 389),
(21, 'Omeprazole 20mg (Batch 21)', 'Cipla', 246.73, 64),
(22, 'Cetirizine 10mg (Batch 22)', 'GSK', 70.85, 243),
(23, 'Ibuprofen 400mg (Batch 23)', 'Sun Pharma', 426.88, 84),
(24, 'Amlodipine 5mg (Batch 24)', 'Torrent', 130.3, 446),
(25, 'Losartan 50mg (Batch 25)', 'Mankind', 278.87, 493),
(26, 'Insulin Glargine (Batch 26)', 'Sanofi', 107.13, 276),
(27, 'Salbutamol Inhaler (Batch 27)', 'Cipla', 343.54, 353),
(28, 'Vitamin D3 (Batch 28)', 'Mankind', 102.5, 159),
(29, 'Calcium Carbonate (Batch 29)', 'Zydus', 188.56, 343),
(30, 'Pantoprazole 40mg (Batch 30)', 'Sun Pharma', 297.7, 224),
(31, 'Paracetamol 500mg (Batch 31)', 'Cipla', 406.33, 231),
(32, 'Amoxicillin 250mg (Batch 32)', 'Sun Pharma', 67.64, 115),
(33, 'Azithromycin 500mg (Batch 33)', 'Zydus', 42.85, 10),
(34, 'Metformin 500mg (Batch 34)', 'Mankind', 270.91, 117),
(35, 'Atorvastatin 10mg (Batch 35)', 'Dr Reddys', 270.97, 3),
(36, 'Omeprazole 20mg (Batch 36)', 'Cipla', 45.88, 323),
(37, 'Cetirizine 10mg (Batch 37)', 'GSK', 40.61, 34),
(38, 'Ibuprofen 400mg (Batch 38)', 'Sun Pharma', 408.86, 440),
(39, 'Amlodipine 5mg (Batch 39)', 'Torrent', 158.74, 263),
(40, 'Losartan 50mg (Batch 40)', 'Mankind', 118.53, 342);
GO
SET IDENTITY_INSERT Medicines OFF;
GO

-- Patients
SET IDENTITY_INSERT Patients ON;
GO
INSERT INTO Patients (patient_id, first_name, last_name, gender, dob, phone, email, blood_group, city, state, registration_date) VALUES
(1, 'Isaac', 'Bakshi', 'Female', '2003-08-25', '9330035022', 'isaac.bakshi1@mail.com', 'B+', 'Chandigarh', 'Chandigarh', '2024-10-19'),
(2, 'Yash', 'Kapoor', 'Female', '1952-06-23', '9360916298', 'yash.kapoor2@mail.com', 'AB-', 'Jaipur', 'Rajasthan', '2024-04-07'),
(3, 'Harsh', 'Chahal', 'Male', '1990-10-22', '9204078666', 'harsh.chahal3@mail.com', 'AB+', 'Pune', 'Maharashtra', '2024-08-04'),
(4, 'Azad', 'Balan', 'Female', '1948-07-30', '9601463916', 'azad.balan4@mail.com', 'A+', 'Ahmedabad', 'Gujarat', '2024-11-30'),
(5, 'Viraj', 'Tiwari', 'Male', '1991-10-15', '9165082363', 'viraj.tiwari5@mail.com', 'AB+', 'Chandigarh', 'Chandigarh', '2024-06-22'),
(6, 'Rushil', 'Saini', 'Male', '1959-05-09', '9366992705', 'rushil.saini6@mail.com', 'B-', 'Hyderabad', 'Telangana', '2024-10-01'),
(7, 'Arunima', 'Ahuja', 'Female', '2005-02-10', '9250519597', 'arunima.ahuja7@mail.com', 'AB+', 'Bengaluru', 'Karnataka', '2024-05-22'),
(8, 'Nathaniel', 'Sami', 'Female', '1969-07-15', '9368227631', 'nathaniel.sami8@mail.com', 'A-', 'Lucknow', 'Uttar Pradesh', '2024-10-08'),
(9, 'Nachiket', 'Kale', 'Male', '2021-12-23', '9154318806', 'nachiket.kale9@mail.com', 'A+', 'Mumbai', 'Maharashtra', '2024-05-01'),
(10, 'Gayathri', 'Chaudry', 'Male', '1948-07-01', '9536383774', 'gayathri.chaudry10@mail.com', 'AB-', 'Lucknow', 'Uttar Pradesh', '2024-04-19'),
(11, 'Gunbir', 'Parmer', 'Female', '2012-08-26', '9162959284', 'gunbir.parmer11@mail.com', 'B+', 'Jaipur', 'Rajasthan', '2024-01-02'),
(12, 'Aishani', 'Bassi', 'Female', '2002-08-23', '9384759615', 'aishani.bassi12@mail.com', 'AB-', 'Chennai', 'Tamil Nadu', '2024-08-04'),
(13, 'Jeet', 'Radhakrishnan', 'Female', '1947-04-25', '9266211829', 'jeet.radhakrishnan13@mail.com', 'B-', 'Chennai', 'Tamil Nadu', '2024-04-21'),
(14, 'Chaaya', 'Pathak', 'Male', '1989-09-09', '9721890096', 'chaaya.pathak14@mail.com', 'A+', 'Chandigarh', 'Chandigarh', '2024-06-09'),
(15, 'Ekaraj', 'Bath', 'Male', '1996-10-27', '9153839920', 'ekaraj.bath15@mail.com', 'AB-', 'Kolkata', 'West Bengal', '2024-09-28'),
(16, 'Bimala', 'Buch', 'Male', '2013-04-26', '9161073976', 'bimala.buch16@mail.com', 'A-', 'Bengaluru', 'Karnataka', '2024-02-05'),
(17, 'Harrison', 'Rai', 'Male', '1964-03-29', '9825003955', 'harrison.rai17@mail.com', 'B-', 'Jaipur', 'Rajasthan', '2024-03-02'),
(18, 'Janya', 'Gaba', 'Male', '1972-01-30', '9721609600', 'janya.gaba18@mail.com', 'A+', 'Noida', 'Uttar Pradesh', '2024-02-11'),
(19, 'Shaurya', 'Loke', 'Female', '2000-04-08', '9805849060', 'shaurya.loke19@mail.com', 'O-', 'Chennai', 'Tamil Nadu', '2024-04-14'),
(20, 'Ekbal', 'Garg', 'Female', '1986-01-06', '9356287095', 'ekbal.garg20@mail.com', 'O+', 'Jaipur', 'Rajasthan', '2024-03-08'),
(21, 'Yash', 'Gade', 'Female', '1979-11-28', '9590941149', 'yash.gade21@mail.com', 'O-', 'Mumbai', 'Maharashtra', '2024-01-05'),
(22, 'Anamika', 'Kanda', 'Female', '1998-10-22', '9766964667', 'anamika.kanda22@mail.com', 'A-', 'Mumbai', 'Maharashtra', '2024-10-02'),
(23, 'Daksh', 'Karnik', 'Male', '2010-06-20', '9643189555', 'daksh.karnik23@mail.com', 'O+', 'Bengaluru', 'Karnataka', '2024-06-27'),
(24, 'Diya', 'Rattan', 'Male', '1963-05-17', '9362298393', 'diya.rattan24@mail.com', 'O-', 'Chennai', 'Tamil Nadu', '2024-03-21'),
(25, 'Siddharth', 'Murty', 'Female', '1958-09-09', '9995226828', 'siddharth.murty25@mail.com', 'O+', 'Noida', 'Uttar Pradesh', '2024-11-30'),
(26, 'Xalak', 'Randhawa', 'Male', '2015-10-24', '9817112652', 'xalak.randhawa26@mail.com', 'O+', 'Ahmedabad', 'Gujarat', '2024-02-23'),
(27, 'Tara', 'Dhar', 'Male', '1963-02-17', '9383968123', 'tara.dhar27@mail.com', 'A-', 'Mumbai', 'Maharashtra', '2024-10-10'),
(28, 'Yatin', 'Yohannan', 'Male', '1962-12-13', '9392431670', 'yatin.yohannan28@mail.com', 'O+', 'Noida', 'Uttar Pradesh', '2024-04-17'),
(29, 'Priya', 'Rastogi', 'Female', '1971-05-21', '9318610946', 'priya.rastogi29@mail.com', 'O+', 'Kolkata', 'West Bengal', '2024-09-07'),
(30, 'Lakshit', 'Upadhyay', 'Female', '1982-07-25', '9154544899', 'lakshit.upadhyay30@mail.com', 'A-', 'Ahmedabad', 'Gujarat', '2024-08-04'),
(31, 'Champak', 'Choudhary', 'Female', '1953-08-10', '9147337803', 'champak.choudhary31@mail.com', 'A+', 'Pune', 'Maharashtra', '2024-03-07'),
(32, 'Nathaniel', 'Sami', 'Female', '1991-04-24', '9273497327', 'nathaniel.sami32@mail.com', 'AB-', 'Kolkata', 'West Bengal', '2024-12-27'),
(33, 'Lekha', 'Raj', 'Female', '1991-04-07', '9702269164', 'lekha.raj33@mail.com', 'A+', 'Mumbai', 'Maharashtra', '2024-02-08'),
(34, 'Upadhriti', 'Wadhwa', 'Male', '1961-12-26', '9685823118', 'upadhriti.wadhwa34@mail.com', 'A+', 'Pune', 'Maharashtra', '2024-10-25'),
(35, 'Advay', 'Contractor', 'Male', '1998-07-24', '9561479973', 'advay.contractor35@mail.com', 'B+', 'Delhi', 'Delhi', '2024-06-06'),
(36, 'Amara', 'Oak', 'Female', '1950-02-05', '9954829815', 'amara.oak36@mail.com', 'A+', 'Pune', 'Maharashtra', '2024-04-17'),
(37, 'Radhika', 'Dugar', 'Male', '1979-03-08', '9816114302', 'radhika.dugar37@mail.com', 'A-', 'Pune', 'Maharashtra', '2024-10-13'),
(38, 'Adya', 'Tella', 'Female', '2005-05-19', '9766430218', 'adya.tella38@mail.com', 'B+', 'Hyderabad', 'Telangana', '2024-03-24'),
(39, 'Yashica', 'Cherian', 'Male', '2014-08-11', '9542697755', 'yashica.cherian39@mail.com', 'A+', 'Bengaluru', 'Karnataka', '2024-06-19'),
(40, 'Chanchal', 'Tripathi', 'Female', '1992-05-18', '9961393416', 'chanchal.tripathi40@mail.com', 'B-', 'Chennai', 'Tamil Nadu', '2024-03-22');
GO
SET IDENTITY_INSERT Patients OFF;
GO

-- Doctors
SET IDENTITY_INSERT Doctors ON;
GO
INSERT INTO Doctors (doctor_id, department_id, first_name, last_name, specialization, phone, email, consultation_fee, experience) VALUES
(1, 2, 'Michael', 'Prakash', 'Orthopedic Surgeon', '8510751046', 'dr.michael.prakash1@hospital.com', 300.00, 28),
(2, 8, 'Neel', 'Zacharia', 'Oncologist', '8338836384', 'dr.neel.zacharia2@hospital.com', 600.00, 27),
(3, 8, 'Aadi', 'Naik', 'Oncologist', '8475442872', 'dr.aadi.naik3@hospital.com', 700.00, 27),
(4, 4, 'Vrinda', 'Bahl', 'Pediatrician', '8339362341', 'dr.vrinda.bahl4@hospital.com', 300.00, 22),
(5, 4, 'Isaac', 'Patil', 'Pediatrician', '8527849588', 'dr.isaac.patil5@hospital.com', 800.00, 9),
(6, 2, 'Damyanti', 'Khatri', 'Orthopedic Surgeon', '8930353157', 'dr.damyanti.khatri6@hospital.com', 700.00, 12),
(7, 7, 'Dalbir', 'Khosla', 'ENT Specialist', '8829627019', 'dr.dalbir.khosla7@hospital.com', 800.00, 1),
(8, 2, 'Farhan', 'Chada', 'Orthopedic Surgeon', '8380477683', 'dr.farhan.chada8@hospital.com', 500.00, 19),
(9, 5, 'Vedika', 'Biswas', 'General Physician', '8141078352', 'dr.vedika.biswas9@hospital.com', 400.00, 20),
(10, 7, 'Jeremiah', 'Dave', 'ENT Specialist', '8471178705', 'dr.jeremiah.dave10@hospital.com', 800.00, 14),
(11, 2, 'Vaishnavi', 'Gandhi', 'Orthopedic Surgeon', '8513600440', 'dr.vaishnavi.gandhi11@hospital.com', 600.00, 9),
(12, 1, 'Alka', 'Wable', 'Cardiologist', '8861052404', 'dr.alka.wable12@hospital.com', 1000.00, 1),
(13, 4, 'Pallavi', 'Kakar', 'Pediatrician', '8491079829', 'dr.pallavi.kakar13@hospital.com', 1000.00, 3),
(14, 6, 'Sai', 'Muni', 'Dermatologist', '8769108025', 'dr.sai.muni14@hospital.com', 800.00, 22),
(15, 2, 'Mohini', 'Prakash', 'Orthopedic Surgeon', '8872830248', 'dr.mohini.prakash15@hospital.com', 700.00, 17),
(16, 5, 'Raksha', 'Varughese', 'General Physician', '8816070802', 'dr.raksha.varughese16@hospital.com', 1000.00, 11),
(17, 7, 'Siya', 'Dara', 'ENT Specialist', '8848621833', 'dr.siya.dara17@hospital.com', 700.00, 18),
(18, 3, 'Yug', 'Kar', 'Neurologist', '8305986733', 'dr.yug.kar18@hospital.com', 1000.00, 22),
(19, 7, 'Devansh', 'Nigam', 'ENT Specialist', '8827264603', 'dr.devansh.nigam19@hospital.com', 500.00, 20),
(20, 5, 'Ansh', 'Karpe', 'General Physician', '8536019893', 'dr.ansh.karpe20@hospital.com', 300.00, 10),
(21, 5, 'Thomas', 'Amble', 'General Physician', '8325681936', 'dr.thomas.amble21@hospital.com', 1000.00, 26),
(22, 6, 'Ekavir', 'Bhargava', 'Dermatologist', '8599277266', 'dr.ekavir.bhargava22@hospital.com', 1200.00, 15),
(23, 4, 'Veer', 'Bir', 'Pediatrician', '8648868899', 'dr.veer.bir23@hospital.com', 1200.00, 26),
(24, 3, 'Azad', 'Narayanan', 'Neurologist', '8807435606', 'dr.azad.narayanan24@hospital.com', 400.00, 10),
(25, 6, 'Ekavir', 'Varkey', 'Dermatologist', '8200273738', 'dr.ekavir.varkey25@hospital.com', 600.00, 22);
GO
SET IDENTITY_INSERT Doctors OFF;
GO

-- Nurses
SET IDENTITY_INSERT Nurses ON;
GO
INSERT INTO Nurses (nurse_id, department_id, first_name, last_name, shift, phone) VALUES
(1, 5, 'Wazir', 'Mallick', 'Morning', '7966040317'),
(2, 4, 'Vedika', 'Kala', 'Morning', '7126226563'),
(3, 1, 'Kevin', 'Solanki', 'Morning', '7610173760'),
(4, 2, 'Xavier', 'Solanki', 'Evening', '7545002643'),
(5, 4, 'Niharika', 'Gupta', 'Night', '7847704681'),
(6, 7, 'Girindra', 'Chatterjee', 'Evening', '7529123992'),
(7, 4, 'Raagini', 'Pandya', 'Morning', '7804436922'),
(8, 1, 'Pallavi', 'Roy', 'Morning', '7935822550'),
(9, 7, 'Unni', 'Bhagat', 'Morning', '7288856883'),
(10, 8, 'Guneet', 'Bhat', 'Morning', '7698509918'),
(11, 4, 'Neha', 'Nori', 'Morning', '7590122159'),
(12, 3, 'Ikbal', 'Kothari', 'Evening', '7816806128'),
(13, 6, 'Rehaan', 'Gupta', 'Evening', '7757830420'),
(14, 7, 'Saumya', 'Dey', 'Night', '7578796089'),
(15, 3, 'Pahal', 'Goswami', 'Night', '7609677794'),
(16, 8, 'Arya', 'Shere', 'Evening', '7907214179'),
(17, 4, 'Zaid', 'Borra', 'Night', '7397760792'),
(18, 8, 'Saanvi', 'Chaudhari', 'Night', '7356888294'),
(19, 5, 'Chandresh', 'Zachariah', 'Evening', '7183197117'),
(20, 5, 'Alexander', 'Chander', 'Morning', '7391751878'),
(21, 6, 'Warjas', 'Ganesan', 'Evening', '7679984033'),
(22, 2, 'Niharika', 'Sunder', 'Morning', '7261953189'),
(23, 4, 'Vasana', 'Kala', 'Evening', '7845122940'),
(24, 3, 'Nandini', 'Bhargava', 'Night', '7329730155'),
(25, 2, 'Nitesh', 'Raghavan', 'Evening', '7537656494'),
(26, 6, 'Aarnav', 'Ramakrishnan', 'Night', '7600282414'),
(27, 7, 'Alka', 'Sha', 'Morning', '7322086735'),
(28, 7, 'Bhavika', 'Sampath', 'Evening', '7926561919'),
(29, 1, 'Vidhi', 'Dubey', 'Night', '7508431021'),
(30, 8, 'Ranveer', 'Minhas', 'Morning', '7477698143'),
(31, 5, 'Teerth', 'Bhardwaj', 'Evening', '7997356828'),
(32, 7, 'Darsh', 'Murthy', 'Night', '7902638839'),
(33, 4, 'Dakshesh', 'Bedi', 'Evening', '7335602191'),
(34, 5, 'Vansha', 'Thakkar', 'Evening', '7621454127'),
(35, 1, 'Nakul', 'Bhandari', 'Evening', '7460916347'),
(36, 7, 'Yashoda', 'Buch', 'Night', '7277215428'),
(37, 8, 'Quincy', 'Biswas', 'Morning', '7768143326'),
(38, 1, 'Ekansh', 'Keer', 'Evening', '7735540030'),
(39, 1, 'Netra', 'Dar', 'Morning', '7790147183'),
(40, 7, 'Yatin', 'Baral', 'Morning', '7595744935');
GO
SET IDENTITY_INSERT Nurses OFF;
GO

-- Appointments
SET IDENTITY_INSERT Appointments ON;
GO
INSERT INTO Appointments (appointment_id, patient_id, doctor_id, appointment_date, appointment_status, symptoms) VALUES
(1, 12, 2, '2024-05-13', 'Scheduled', 'Fatigue'),
(2, 14, 15, '2024-06-16', 'Completed', 'Skin rash'),
(3, 18, 25, '2024-08-03', 'Completed', 'Chest pain'),
(4, 31, 1, '2024-10-03', 'Completed', 'Fatigue'),
(5, 15, 21, '2024-02-05', 'Completed', 'Fever'),
(6, 16, 7, '2024-01-11', 'Cancelled', 'Headache'),
(7, 16, 5, '2024-08-30', 'Completed', 'Routine checkup'),
(8, 14, 15, '2024-12-24', 'Completed', 'Fatigue'),
(9, 11, 20, '2024-11-06', 'Completed', 'Headache'),
(10, 20, 4, '2024-10-23', 'Completed', 'Cough and cold'),
(11, 37, 22, '2024-07-11', 'Scheduled', 'Joint pain'),
(12, 5, 19, '2024-12-19', 'Completed', 'Chest pain'),
(13, 20, 22, '2024-11-03', 'Completed', 'Routine checkup'),
(14, 3, 12, '2024-09-29', 'Scheduled', 'Fatigue'),
(15, 5, 17, '2024-11-27', 'Completed', 'Fever'),
(16, 27, 16, '2024-02-24', 'Scheduled', 'Fatigue'),
(17, 30, 23, '2024-03-19', 'Scheduled', 'Headache'),
(18, 34, 21, '2024-05-18', 'Cancelled', 'Follow-up visit'),
(19, 31, 15, '2024-08-11', 'Cancelled', 'Cough and cold'),
(20, 21, 8, '2024-02-14', 'Completed', 'Abdominal pain'),
(21, 16, 25, '2024-08-25', 'Cancelled', 'Routine checkup'),
(22, 25, 11, '2024-01-15', 'Scheduled', 'Fatigue'),
(23, 12, 16, '2024-04-18', 'Completed', 'Cough and cold'),
(24, 22, 9, '2024-11-01', 'Completed', 'Follow-up visit'),
(25, 1, 17, '2024-04-07', 'Completed', 'Joint pain'),
(26, 27, 16, '2024-10-11', 'Completed', 'Abdominal pain'),
(27, 32, 15, '2024-01-09', 'Completed', 'Cough and cold'),
(28, 15, 13, '2024-12-20', 'Completed', 'Cough and cold'),
(29, 38, 12, '2024-08-30', 'Cancelled', 'Follow-up visit'),
(30, 23, 14, '2024-10-08', 'Completed', 'Fatigue'),
(31, 30, 9, '2024-06-05', 'Completed', 'Joint pain'),
(32, 8, 24, '2024-04-08', 'Completed', 'Chest pain'),
(33, 35, 25, '2024-12-19', 'Completed', 'Joint pain'),
(34, 14, 24, '2024-09-04', 'Completed', 'Routine checkup'),
(35, 34, 20, '2024-05-24', 'Completed', 'Joint pain'),
(36, 19, 8, '2024-07-03', 'Completed', 'Cough and cold'),
(37, 1, 23, '2024-09-30', 'Completed', 'Cough and cold'),
(38, 3, 2, '2024-10-10', 'Completed', 'Headache'),
(39, 32, 4, '2024-01-07', 'Cancelled', 'Cough and cold'),
(40, 31, 16, '2024-08-13', 'Completed', 'Headache'),
(41, 4, 9, '2024-09-01', 'Completed', 'Chest pain'),
(42, 26, 16, '2024-02-07', 'Cancelled', 'Fever'),
(43, 10, 5, '2024-10-15', 'Completed', 'Chest pain'),
(44, 16, 4, '2024-10-12', 'Scheduled', 'Routine checkup'),
(45, 39, 20, '2024-04-25', 'Cancelled', 'Skin rash'),
(46, 29, 15, '2024-06-01', 'Cancelled', 'Skin rash'),
(47, 20, 19, '2024-11-13', 'Completed', 'Routine checkup'),
(48, 7, 25, '2024-04-16', 'Completed', 'Cough and cold'),
(49, 6, 6, '2024-05-02', 'Completed', 'Follow-up visit'),
(50, 5, 6, '2024-01-02', 'Scheduled', 'Abdominal pain'),
(51, 39, 16, '2024-05-29', 'Completed', 'Joint pain'),
(52, 19, 23, '2024-05-24', 'Scheduled', 'Chest pain'),
(53, 15, 9, '2024-11-16', 'Cancelled', 'Joint pain'),
(54, 28, 4, '2024-10-05', 'Completed', 'Headache'),
(55, 18, 5, '2024-02-06', 'Completed', 'Headache'),
(56, 20, 20, '2024-10-18', 'Completed', 'Abdominal pain'),
(57, 8, 15, '2024-12-18', 'Completed', 'Skin rash'),
(58, 18, 17, '2024-10-03', 'Scheduled', 'Abdominal pain'),
(59, 6, 20, '2024-01-21', 'Scheduled', 'Fatigue'),
(60, 39, 9, '2024-01-14', 'Completed', 'Joint pain');
GO
SET IDENTITY_INSERT Appointments OFF;
GO

-- Admissions
SET IDENTITY_INSERT Admissions ON;
GO
INSERT INTO Admissions (admission_id, patient_id, room_id, admission_date, discharge_date, diagnosis) VALUES
(1, 37, 38, '2024-01-11', '2024-01-22', 'Pneumonia'),
(2, 12, 31, '2024-09-22', '2024-10-03', 'Dengue'),
(3, 12, 38, '2024-08-11', '2024-08-22', 'Fracture'),
(4, 31, 23, '2024-07-28', '2024-08-03', 'Fracture'),
(5, 11, 22, '2024-07-29', '2024-08-10', 'Appendicitis'),
(6, 36, 3, '2024-08-20', '2024-08-22', 'Typhoid'),
(7, 8, 26, '2024-09-20', '2024-09-21', 'Kidney stone removal'),
(8, 27, 4, '2024-04-06', '2024-04-15', 'Kidney stone removal'),
(9, 29, 4, '2024-04-14', '2024-04-19', 'Dengue'),
(10, 29, 32, '2024-03-03', '2024-03-04', 'Cardiac observation'),
(11, 11, 20, '2024-10-09', '2024-10-10', 'Fracture'),
(12, 15, 8, '2024-08-24', '2024-08-26', 'Post-surgery recovery'),
(13, 32, 19, '2024-09-17', '2024-09-29', 'Kidney stone removal'),
(14, 31, 16, '2024-08-21', NULL, 'Cardiac observation'),
(15, 39, 33, '2024-03-10', '2024-03-12', 'Appendicitis'),
(16, 22, 33, '2024-05-16', '2024-05-17', 'Dengue'),
(17, 38, 38, '2024-09-07', '2024-09-10', 'Kidney stone removal'),
(18, 23, 22, '2024-10-09', '2024-10-18', 'Typhoid'),
(19, 13, 16, '2024-10-19', '2024-10-26', 'Appendicitis'),
(20, 3, 21, '2024-08-30', '2024-09-11', 'Appendicitis');
GO
SET IDENTITY_INSERT Admissions OFF;
GO

-- Treatments
SET IDENTITY_INSERT Treatments ON;
GO
INSERT INTO Treatments (treatment_id, patient_id, doctor_id, treatment_name, treatment_date, treatment_cost) VALUES
(1, 25, 22, 'Chemotherapy Session', '2024-09-10', 24138.2),
(2, 9, 17, 'Suture Removal', '2024-06-18', 21807.66),
(3, 29, 4, 'Cast Application', '2024-08-21', 876.02),
(4, 10, 14, 'Chemotherapy Session', '2024-02-08', 12002.52),
(5, 17, 11, 'Suture Removal', '2024-12-20', 10238.34),
(6, 6, 11, 'Cast Application', '2024-07-13', 23876.42),
(7, 32, 18, 'Physiotherapy Session', '2024-11-12', 2176.31),
(8, 19, 8, 'Minor Surgery', '2024-08-10', 24469.27),
(9, 7, 15, 'Chemotherapy Session', '2024-12-21', 7836.92),
(10, 2, 2, 'ECG Monitoring', '2024-01-29', 7687.51),
(11, 24, 14, 'Chemotherapy Session', '2024-05-05', 13513.57),
(12, 37, 22, 'Chemotherapy Session', '2024-03-28', 4789.2),
(13, 40, 13, 'Suture Removal', '2024-12-15', 6400.33),
(14, 38, 5, 'Dialysis', '2024-08-24', 16128.66),
(15, 30, 9, 'Physiotherapy Session', '2024-08-26', 22579.63),
(16, 35, 6, 'Minor Surgery', '2024-08-14', 23658.27),
(17, 38, 10, 'IV Therapy', '2024-12-19', 6627.41),
(18, 20, 7, 'IV Therapy', '2024-09-04', 3113.01),
(19, 25, 19, 'ECG Monitoring', '2024-10-21', 7748.87),
(20, 19, 1, 'IV Therapy', '2024-05-20', 698.4),
(21, 4, 20, 'Nebulization', '2024-05-26', 19505.65),
(22, 15, 20, 'ECG Monitoring', '2024-04-22', 16097.14),
(23, 40, 9, 'Chemotherapy Session', '2024-11-17', 2880.52),
(24, 3, 10, 'Nebulization', '2024-01-18', 14699.56),
(25, 9, 3, 'Wound Dressing', '2024-06-16', 18813.28),
(26, 12, 7, 'Chemotherapy Session', '2024-10-03', 21973.28),
(27, 24, 17, 'Cast Application', '2024-05-19', 20846.58),
(28, 17, 16, 'Wound Dressing', '2024-06-22', 20203.7),
(29, 30, 3, 'Chemotherapy Session', '2024-04-25', 21573.44),
(30, 26, 18, 'ECG Monitoring', '2024-02-16', 19871.71),
(31, 1, 9, 'Cast Application', '2024-03-04', 11642.26),
(32, 17, 19, 'IV Therapy', '2024-11-22', 23537.15),
(33, 7, 22, 'Dialysis', '2024-08-29', 1113.1),
(34, 36, 11, 'Suture Removal', '2024-04-23', 16367.48),
(35, 30, 23, 'Wound Dressing', '2024-11-28', 10503.25),
(36, 9, 2, 'Physiotherapy Session', '2024-06-04', 24900.22),
(37, 8, 4, 'Dialysis', '2024-10-02', 3823.77),
(38, 30, 12, 'Cast Application', '2024-08-02', 14889.84),
(39, 10, 14, 'Minor Surgery', '2024-09-07', 15583.48),
(40, 18, 2, 'ECG Monitoring', '2024-04-21', 11362.89),
(41, 16, 12, 'Minor Surgery', '2024-12-17', 9499.71),
(42, 23, 2, 'IV Therapy', '2024-05-21', 5150.31),
(43, 8, 15, 'Minor Surgery', '2024-12-05', 5696.59),
(44, 39, 1, 'Physiotherapy Session', '2024-06-19', 6467.44),
(45, 9, 19, 'Dialysis', '2024-02-05', 20830.54);
GO
SET IDENTITY_INSERT Treatments OFF;
GO

-- Prescriptions
SET IDENTITY_INSERT Prescriptions ON;
GO
INSERT INTO Prescriptions (prescription_id, treatment_id, medicine_id, dosage, duration) VALUES
(1, 36, 14, '1 capsule at bedtime', '5 days'),
(2, 15, 22, '1 tablet once daily', '14 days'),
(3, 1, 18, '1 tablet once daily', '5 days'),
(4, 35, 17, '1 tablet once daily', '3 days'),
(5, 43, 2, '1 tablet once daily', '3 days'),
(6, 23, 16, '1 capsule at bedtime', '7 days'),
(7, 2, 12, '2 tablets thrice daily', '3 days'),
(8, 9, 27, '1 capsule at bedtime', '3 days'),
(9, 5, 31, '5ml twice daily', '7 days'),
(10, 33, 38, '1 tablet twice daily', '10 days'),
(11, 33, 15, '1 capsule at bedtime', '3 days'),
(12, 43, 34, '2 tablets thrice daily', '10 days'),
(13, 42, 2, '1 tablet twice daily', '10 days'),
(14, 26, 28, 'As needed', '3 days'),
(15, 32, 29, '1 tablet twice daily', '3 days'),
(16, 21, 39, '1 tablet once daily', '3 days'),
(17, 9, 18, '1 capsule at bedtime', '1 month'),
(18, 38, 36, 'As needed', '7 days'),
(19, 25, 39, '1 capsule at bedtime', '7 days'),
(20, 30, 33, '1 capsule at bedtime', '10 days'),
(21, 7, 8, 'As needed', '1 month'),
(22, 36, 14, '5ml twice daily', '10 days'),
(23, 15, 27, '2 tablets thrice daily', '10 days'),
(24, 26, 27, 'As needed', '3 days'),
(25, 21, 28, '2 tablets thrice daily', '1 month'),
(26, 17, 24, '1 tablet once daily', '1 month'),
(27, 31, 5, '1 tablet twice daily', '3 days'),
(28, 6, 28, '1 tablet twice daily', '1 month'),
(29, 24, 9, '1 capsule at bedtime', '3 days'),
(30, 38, 36, '1 capsule at bedtime', '7 days'),
(31, 43, 8, '5ml twice daily', '7 days'),
(32, 43, 28, 'As needed', '3 days'),
(33, 19, 39, '2 tablets thrice daily', '7 days'),
(34, 7, 37, '1 capsule at bedtime', '5 days'),
(35, 10, 31, '1 tablet once daily', '3 days'),
(36, 23, 36, '2 tablets thrice daily', '3 days'),
(37, 18, 37, '1 tablet once daily', '10 days'),
(38, 36, 40, '1 capsule at bedtime', '1 month'),
(39, 42, 36, '1 tablet twice daily', '14 days'),
(40, 43, 18, '1 tablet twice daily', '5 days'),
(41, 18, 20, '2 tablets thrice daily', '7 days'),
(42, 1, 12, '1 tablet once daily', '14 days'),
(43, 43, 26, '1 tablet twice daily', '5 days'),
(44, 41, 2, '1 tablet twice daily', '1 month'),
(45, 34, 14, '5ml twice daily', '10 days'),
(46, 30, 22, '1 tablet once daily', '7 days'),
(47, 20, 21, '1 capsule at bedtime', '14 days'),
(48, 6, 4, '1 tablet once daily', '5 days'),
(49, 40, 4, 'As needed', '3 days'),
(50, 18, 29, 'As needed', '10 days'),
(51, 32, 39, '5ml twice daily', '10 days'),
(52, 18, 14, '1 capsule at bedtime', '3 days'),
(53, 23, 28, '1 tablet twice daily', '7 days'),
(54, 44, 38, '5ml twice daily', '14 days'),
(55, 43, 20, '1 tablet twice daily', '5 days');
GO
SET IDENTITY_INSERT Prescriptions OFF;
GO

-- LabTests
SET IDENTITY_INSERT LabTests ON;
GO
INSERT INTO LabTests (test_id, patient_id, doctor_id, test_name, test_date, test_cost) VALUES
(1, 26, 20, 'CBC (Complete Blood Count)', '2024-01-04', 550.00),
(2, 20, 7, 'Lipid Profile', '2024-05-10', 750.00),
(3, 21, 4, 'CBC (Complete Blood Count)', '2024-09-11', 600.00),
(4, 12, 5, 'Urine Routine', '2024-09-29', 350.00),
(5, 33, 18, 'CT Scan', '2024-06-30', 4500.00),
(6, 26, 24, 'CBC (Complete Blood Count)', '2024-08-11', 500.00),
(7, 30, 3, 'Thyroid Profile (T3 T4 TSH)', '2024-10-21', 800.00),
(8, 37, 13, 'HbA1c', '2024-11-23', 750.00),
(9, 19, 4, 'Urine Routine', '2024-01-11', 250.00),
(10, 11, 20, 'ECG', '2024-12-19', 350.00),
(11, 6, 14, 'Blood Sugar (Fasting)', '2024-05-04', 300.00),
(12, 38, 13, 'X-Ray Chest', '2024-02-10', 700.00),
(13, 20, 24, 'Thyroid Profile (T3 T4 TSH)', '2024-04-23', 650.00),
(14, 11, 3, 'X-Ray Chest', '2024-11-20', 600.00),
(15, 34, 17, 'Liver Function Test', '2024-06-27', 850.00),
(16, 10, 8, 'Blood Sugar (Fasting)', '2024-03-15', 150.00),
(17, 13, 6, 'MRI Scan', '2024-03-19', 5500.00),
(18, 12, 25, 'CT Scan', '2024-09-09', 4600.00),
(19, 37, 25, 'MRI Scan', '2024-08-17', 5450.00),
(20, 21, 5, 'ECG', '2024-02-04', 500.00),
(21, 29, 21, 'Kidney Function Test', '2024-05-20', 850.00),
(22, 23, 17, 'Blood Sugar (Fasting)', '2024-06-07', 300.00),
(23, 29, 2, 'CBC (Complete Blood Count)', '2024-07-07', 450.00),
(24, 5, 21, 'Blood Sugar (Fasting)', '2024-11-10', 300.00),
(25, 30, 19, 'X-Ray Chest', '2024-01-22', 700.00),
(26, 37, 21, 'Liver Function Test', '2024-06-13', 1000.00),
(27, 33, 5, 'CBC (Complete Blood Count)', '2024-08-18', 500.00),
(28, 22, 23, 'Blood Sugar (Fasting)', '2024-09-15', 250.00),
(29, 3, 8, 'HbA1c', '2024-08-12', 750.00),
(30, 34, 17, 'MRI Scan', '2024-03-22', 5450.00),
(31, 24, 10, 'Urine Routine', '2024-07-28', 250.00),
(32, 39, 2, 'CT Scan', '2024-11-27', 4450.00),
(33, 5, 11, 'Blood Sugar (Fasting)', '2024-10-12', 300.00),
(34, 19, 9, 'HbA1c', '2024-12-02', 700.00),
(35, 22, 3, 'MRI Scan', '2024-12-05', 5550.00),
(36, 23, 10, 'CT Scan', '2024-12-23', 4600.00),
(37, 9, 20, 'HbA1c', '2024-02-13', 600.00),
(38, 36, 13, 'CT Scan', '2024-06-17', 4550.00),
(39, 34, 3, 'CT Scan', '2024-12-09', 4600.00),
(40, 33, 12, 'CBC (Complete Blood Count)', '2024-07-04', 450.00);
GO
SET IDENTITY_INSERT LabTests OFF;
GO

-- TestResults (One-to-One with LabTests; ~80% of tests have results back)
SET IDENTITY_INSERT TestResults ON;
GO
INSERT INTO TestResults (result_id, test_id, result, remarks, report_date) VALUES
(1, 12, 'Normal', 'Consult specialist', '2024-02-12'),
(2, 14, 'Normal', 'No abnormality detected', '2024-11-23'),
(3, 22, 'Normal', 'Requires follow-up', '2024-06-12'),
(4, 32, 'Abnormal', 'Consult specialist', '2024-12-01'),
(5, 13, 'Abnormal', 'Consult specialist', '2024-04-28'),
(6, 15, 'Normal', 'Retest recommended in 3 months', '2024-06-30'),
(7, 9, 'Normal', 'No abnormality detected', '2024-01-16'),
(8, 10, 'Normal', 'Requires follow-up', '2024-12-21'),
(9, 5, 'Normal', 'Requires follow-up', '2024-07-03'),
(10, 33, 'Normal', 'Retest recommended in 3 months', '2024-10-15'),
(11, 28, 'Normal', 'Within normal range', '2024-09-20'),
(12, 26, 'Normal', 'Consult specialist', '2024-06-14'),
(13, 4, 'Abnormal', 'Consult specialist', '2024-10-03'),
(14, 17, 'Normal', 'Requires follow-up', '2024-03-23'),
(15, 25, 'Normal', 'Requires follow-up', '2024-01-26'),
(16, 18, 'Borderline', 'Within normal range', '2024-09-13'),
(17, 24, 'Normal', 'Retest recommended in 3 months', '2024-11-15'),
(18, 27, 'Borderline', 'Requires follow-up', '2024-08-22'),
(19, 2, 'Normal', 'Consult specialist', '2024-05-12'),
(20, 11, 'Normal', 'Consult specialist', '2024-05-05'),
(21, 20, 'Borderline', 'Requires follow-up', '2024-02-06'),
(22, 37, 'Normal', 'Consult specialist', '2024-02-17'),
(23, 36, 'Abnormal', 'Retest recommended in 3 months', '2024-12-27'),
(24, 19, 'Normal', 'Within normal range', '2024-08-18'),
(25, 6, 'Normal', 'Consult specialist', '2024-08-13'),
(26, 3, 'Abnormal', 'No abnormality detected', '2024-09-16'),
(27, 39, 'Normal', 'Retest recommended in 3 months', '2024-12-10'),
(28, 40, 'Borderline', 'Requires follow-up', '2024-07-07'),
(29, 31, 'Normal', 'Within normal range', '2024-07-30'),
(30, 35, 'Normal', 'No abnormality detected', '2024-12-09'),
(31, 8, 'Normal', 'Within normal range', '2024-11-27'),
(32, 1, 'Normal', 'No abnormality detected', '2024-01-05');
GO
SET IDENTITY_INSERT TestResults OFF;
GO

-- Billing
SET IDENTITY_INSERT Billing ON;
GO
INSERT INTO Billing (bill_id, patient_id, bill_date, consultation_charge, room_charge, medicine_charge, lab_charge, total_amount) VALUES
(1, 33, '2024-10-21', 300.00, 9000.00, 430.73, 800.00, 10530.73),
(2, 1, '2024-11-10', 400.00, 0.00, 1711.99, 0.00, 2111.99),
(3, 6, '2024-09-25', 400.00, 0.00, 2860.21, 1500.00, 4760.21),
(4, 33, '2024-09-16', 600.00, 0.00, 1171.36, 800.00, 2571.36),
(5, 3, '2024-11-21', 500.00, 1200.00, 760.95, 0.00, 2460.95),
(6, 23, '2024-02-04', 400.00, 0.00, 2198.82, 4500.00, 7098.82),
(7, 7, '2024-10-24', 800.00, 1200.00, 400.23, 500.00, 2900.23),
(8, 35, '2024-06-22', 800.00, 0.00, 2491.15, 4500.00, 7791.15),
(9, 30, '2024-12-22', 500.00, 9000.00, 546.83, 0.00, 10046.83),
(10, 5, '2024-08-22', 0.00, 1200.00, 604.77, 0.00, 1804.77),
(11, 3, '2024-06-10', 400.00, 4500.00, 1194.67, 1500.00, 7594.67),
(12, 31, '2024-05-09', 0.00, 9000.00, 573.31, 500.00, 10073.31),
(13, 4, '2024-12-01', 400.00, 1200.00, 373.43, 500.00, 2473.43),
(14, 28, '2024-07-23', 800.00, 2500.00, 2683.91, 800.00, 6783.91),
(15, 22, '2024-04-05', 500.00, 9000.00, 1492.57, 1500.00, 12492.57),
(16, 18, '2024-02-12', 800.00, 2500.00, 236.78, 1500.00, 5036.78),
(17, 12, '2024-10-06', 400.00, 1200.00, 307.79, 500.00, 2407.79),
(18, 19, '2024-06-05', 500.00, 4500.00, 2152.99, 0.00, 7152.99),
(19, 29, '2024-06-28', 500.00, 0.00, 2180.44, 500.00, 3180.44),
(20, 40, '2024-08-10', 400.00, 9000.00, 2940.08, 0.00, 12340.08),
(21, 5, '2024-12-09', 800.00, 2500.00, 1089.93, 4500.00, 8889.93),
(22, 11, '2024-01-16', 300.00, 4500.00, 2034.27, 800.00, 7634.27),
(23, 3, '2024-03-05', 0.00, 0.00, 2335.55, 500.00, 2835.55),
(24, 24, '2024-07-15', 600.00, 0.00, 1815.28, 4500.00, 6915.28),
(25, 29, '2024-07-08', 400.00, 2500.00, 2289.25, 1500.00, 6689.25),
(26, 9, '2024-09-28', 400.00, 2500.00, 943.16, 500.00, 4343.16),
(27, 16, '2024-02-28', 0.00, 9000.00, 558.14, 1500.00, 11058.14),
(28, 25, '2024-10-14', 0.00, 1200.00, 2324.89, 4500.00, 8024.89),
(29, 29, '2024-04-19', 600.00, 1200.00, 2081.94, 800.00, 4681.94),
(30, 13, '2024-03-03', 300.00, 0.00, 1356.13, 4500.00, 6156.13),
(31, 29, '2024-02-14', 800.00, 1200.00, 2003.52, 4500.00, 8503.52),
(32, 5, '2024-10-08', 600.00, 1200.00, 2674.0, 0.00, 4474.0),
(33, 12, '2024-07-04', 600.00, 0.00, 364.09, 0.00, 964.09),
(34, 9, '2024-05-01', 500.00, 0.00, 1082.69, 1500.00, 3082.69),
(35, 24, '2024-08-27', 600.00, 0.00, 1835.85, 0.00, 2435.85),
(36, 5, '2024-06-07', 500.00, 9000.00, 2156.61, 1500.00, 13156.61),
(37, 27, '2024-07-28', 600.00, 0.00, 375.98, 500.00, 1475.98),
(38, 5, '2024-08-18', 500.00, 9000.00, 1552.08, 0.00, 11052.08),
(39, 36, '2024-11-23', 600.00, 0.00, 2303.34, 0.00, 2903.34),
(40, 28, '2024-09-14', 0.00, 0.00, 1554.31, 500.00, 2054.31),
(41, 11, '2024-03-23', 400.00, 9000.00, 676.41, 1500.00, 11576.41),
(42, 19, '2024-02-10', 400.00, 0.00, 1905.17, 1500.00, 3805.17),
(43, 18, '2024-03-05', 800.00, 1200.00, 1843.28, 0.00, 3843.28),
(44, 33, '2024-11-24', 300.00, 4500.00, 2824.82, 0.00, 7624.82),
(45, 11, '2024-12-03', 600.00, 9000.00, 2706.0, 500.00, 12806.0),
(46, 37, '2024-01-22', 0.00, 0.00, 136.39, 4500.00, 4636.39),
(47, 37, '2024-05-15', 800.00, 0.00, 2300.88, 800.00, 3900.88),
(48, 40, '2024-11-23', 0.00, 2500.00, 2666.99, 1500.00, 6666.99),
(49, 19, '2024-11-24', 400.00, 2500.00, 734.63, 4500.00, 8134.63),
(50, 26, '2024-06-01', 500.00, 0.00, 2065.84, 0.00, 2565.84);
GO
SET IDENTITY_INSERT Billing OFF;
GO

-- Payments (One-to-One with Billing)
SET IDENTITY_INSERT Payments ON;
GO
INSERT INTO Payments (payment_id, bill_id, payment_method, payment_date, amount, payment_status) VALUES
(1, 1, 'Insurance', '2024-09-04', 5265.36, 'Pending'),
(2, 2, 'UPI', '2024-11-06', 2111.99, 'Paid'),
(3, 3, 'UPI', '2024-06-12', 4760.21, 'Paid'),
(4, 4, 'Credit Card', '2024-03-07', 1285.68, 'Pending'),
(5, 5, 'Debit Card', '2024-02-24', 1230.47, 'Failed'),
(6, 6, 'UPI', '2024-03-03', 3549.41, 'Pending'),
(7, 7, 'Insurance', '2024-03-13', 2900.23, 'Paid'),
(8, 8, 'Cash', '2024-05-28', 7791.15, 'Paid'),
(9, 9, 'Insurance', '2024-08-02', 0.0, 'Failed'),
(10, 10, 'UPI', '2024-10-22', 1804.77, 'Paid'),
(11, 11, 'Credit Card', '2024-03-22', 7594.67, 'Paid'),
(12, 12, 'Insurance', '2024-08-27', 5036.65, 'Failed'),
(13, 13, 'Credit Card', '2024-01-12', 0.0, 'Pending'),
(14, 14, 'Insurance', '2024-08-22', 0.0, 'Failed'),
(15, 15, 'UPI', '2024-06-29', 0.0, 'Failed'),
(16, 16, 'Cash', '2024-09-10', 5036.78, 'Paid'),
(17, 17, 'Debit Card', '2024-05-26', 0.0, 'Pending'),
(18, 18, 'Cash', '2024-03-09', 3576.49, 'Pending'),
(19, 19, 'Credit Card', '2024-07-06', 0.0, 'Pending'),
(20, 20, 'Insurance', '2024-10-18', 12340.08, 'Paid'),
(21, 21, 'Debit Card', '2024-07-04', 8889.93, 'Paid'),
(22, 22, 'Debit Card', '2024-02-07', 7634.27, 'Paid'),
(23, 23, 'Insurance', '2024-08-18', 1417.78, 'Failed'),
(24, 24, 'Debit Card', '2024-03-01', 0.0, 'Failed'),
(25, 25, 'Cash', '2024-07-10', 3344.62, 'Pending'),
(26, 26, 'Debit Card', '2024-03-14', 4343.16, 'Paid'),
(27, 27, 'UPI', '2024-09-17', 5529.07, 'Failed'),
(28, 28, 'Debit Card', '2024-01-24', 8024.89, 'Paid'),
(29, 29, 'Cash', '2024-12-31', 4681.94, 'Paid'),
(30, 30, 'Credit Card', '2024-09-22', 3078.07, 'Pending'),
(31, 31, 'UPI', '2024-09-20', 0.0, 'Failed'),
(32, 32, 'Credit Card', '2024-06-12', 0.0, 'Failed'),
(33, 33, 'Insurance', '2024-06-02', 482.05, 'Failed'),
(34, 34, 'Debit Card', '2024-09-29', 1541.35, 'Failed'),
(35, 35, 'Debit Card', '2024-08-31', 2435.85, 'Paid'),
(36, 36, 'Cash', '2024-06-18', 13156.61, 'Paid'),
(37, 37, 'Cash', '2024-10-25', 737.99, 'Pending'),
(38, 38, 'Cash', '2024-08-30', 5526.04, 'Failed'),
(39, 39, 'Debit Card', '2024-04-26', 0.0, 'Failed'),
(40, 40, 'Debit Card', '2024-03-28', 1027.15, 'Pending'),
(41, 41, 'UPI', '2024-01-17', 11576.41, 'Paid'),
(42, 42, 'Debit Card', '2024-04-07', 3805.17, 'Paid'),
(43, 43, 'Cash', '2024-06-09', 1921.64, 'Pending'),
(44, 44, 'UPI', '2024-12-19', 0.0, 'Pending'),
(45, 45, 'Insurance', '2024-11-09', 6403.0, 'Failed'),
(46, 46, 'Cash', '2024-09-22', 4636.39, 'Paid'),
(47, 47, 'UPI', '2024-06-15', 1950.44, 'Failed'),
(48, 48, 'Debit Card', '2024-06-09', 0.0, 'Pending'),
(49, 49, 'Insurance', '2024-06-24', 4067.32, 'Failed'),
(50, 50, 'Credit Card', '2024-09-04', 0.0, 'Failed');
GO
SET IDENTITY_INSERT Payments OFF;
GO

-- ============================================================
-- Verify row counts
-- ============================================================
SELECT 'Departments' AS TableName, COUNT(*) AS TotalRows FROM Departments
UNION ALL SELECT 'Rooms', COUNT(*) FROM Rooms
UNION ALL SELECT 'Medicines', COUNT(*) FROM Medicines
UNION ALL SELECT 'Patients', COUNT(*) FROM Patients
UNION ALL SELECT 'Doctors', COUNT(*) FROM Doctors
UNION ALL SELECT 'Nurses', COUNT(*) FROM Nurses
UNION ALL SELECT 'Appointments', COUNT(*) FROM Appointments
UNION ALL SELECT 'Admissions', COUNT(*) FROM Admissions
UNION ALL SELECT 'Treatments', COUNT(*) FROM Treatments
UNION ALL SELECT 'Prescriptions', COUNT(*) FROM Prescriptions
UNION ALL SELECT 'LabTests', COUNT(*) FROM LabTests
UNION ALL SELECT 'TestResults', COUNT(*) FROM TestResults
UNION ALL SELECT 'Billing', COUNT(*) FROM Billing
UNION ALL SELECT 'Payments', COUNT(*) FROM Payments;
GO

-- ============================================================
-- Hospital Management System — Data Analysis Question Solutions
-- SQL Server (T-SQL)
-- Run against the HospitalManagementSystem database
-- ============================================================
USE HospitalManagementSystem;
GO

-- ============================================================
-- Q1. Which department has the most doctors?
-- ============================================================
SELECT TOP 1
    d.department_id,
    d.department_name,
    COUNT(doc.doctor_id) AS doctor_count
FROM Departments d
JOIN Doctors doc ON doc.department_id = d.department_id
GROUP BY d.department_id, d.department_name
ORDER BY doctor_count DESC;
GO

-- ============================================================
-- Q2. Which doctor sees the most patients?
-- (based on appointment count; distinct patients handled separately in Q12)
-- ============================================================
SELECT TOP 5
    doc.doctor_id,
    doc.first_name + ' ' + doc.last_name AS doctor_name,
    COUNT(a.appointment_id) AS total_appointments,
    RANK() OVER (ORDER BY COUNT(a.appointment_id) DESC) AS doctor_rank
FROM Doctors doc
JOIN Appointments a ON a.doctor_id = doc.doctor_id
GROUP BY doc.doctor_id, doc.first_name, doc.last_name
ORDER BY total_appointments DESC;
GO

-- ============================================================
-- Q3. Monthly revenue generated by the hospital
-- ============================================================
SELECT
    YEAR(bill_date)  AS bill_year,
    MONTH(bill_date) AS bill_month,
    FORMAT(bill_date, 'MMMM yyyy') AS month_label,
    SUM(total_amount) AS monthly_revenue
FROM Billing
GROUP BY YEAR(bill_date), MONTH(bill_date), FORMAT(bill_date, 'MMMM yyyy')
ORDER BY bill_year, bill_month;
GO

-- ============================================================
-- Q4. Average consultation fee by department
-- ============================================================
SELECT
    d.department_name,
    AVG(doc.consultation_fee) AS avg_consultation_fee
FROM Departments d
JOIN Doctors doc ON doc.department_id = d.department_id
GROUP BY d.department_name
ORDER BY avg_consultation_fee DESC;
GO

-- ============================================================
-- Q5. Most prescribed medicines
-- ============================================================
SELECT TOP 10
    m.medicine_id,
    m.medicine_name,
    COUNT(p.prescription_id) AS times_prescribed
FROM Medicines m
JOIN Prescriptions p ON p.medicine_id = m.medicine_id
GROUP BY m.medicine_id, m.medicine_name
ORDER BY times_prescribed DESC;
GO

-- ============================================================
-- Q6. Most common lab tests
-- ============================================================
SELECT TOP 10
    test_name,
    COUNT(*) AS times_performed
FROM LabTests
GROUP BY test_name
ORDER BY times_performed DESC;
GO

-- ============================================================
-- Q7. Average treatment cost by department
-- (Treatments link to doctors, doctors link to departments)
-- ============================================================
SELECT
    d.department_name,
    AVG(t.treatment_cost) AS avg_treatment_cost,
    COUNT(t.treatment_id) AS total_treatments
FROM Treatments t
JOIN Doctors doc ON doc.doctor_id = t.doctor_id
JOIN Departments d ON d.department_id = doc.department_id
GROUP BY d.department_name
ORDER BY avg_treatment_cost DESC;
GO

-- ============================================================
-- Q8. Room occupancy rate
-- ============================================================
SELECT
    COUNT(*) AS total_rooms,
    SUM(CASE WHEN availability = 'Occupied' THEN 1 ELSE 0 END) AS occupied_rooms,
    SUM(CASE WHEN availability = 'Available' THEN 1 ELSE 0 END) AS available_rooms,
    CAST(SUM(CASE WHEN availability = 'Occupied' THEN 1 ELSE 0 END) AS DECIMAL(10,2))
        * 100.0 / COUNT(*) AS occupancy_pct
FROM Rooms;
GO

-- ============================================================
-- Q9. Patient distribution by city
-- ============================================================
SELECT
    city,
    COUNT(*) AS patient_count
FROM Patients
GROUP BY city
ORDER BY patient_count DESC;
GO

-- ============================================================
-- Q10. Revenue by payment method
-- ============================================================
SELECT
    payment_method,
    COUNT(*) AS total_payments,
    SUM(amount) AS total_revenue
FROM Payments
WHERE payment_status = 'Paid'
GROUP BY payment_method
ORDER BY total_revenue DESC;
GO

-- ============================================================
-- Q11. Daily appointment trend
-- ============================================================
SELECT
    appointment_date,
    COUNT(*) AS appointment_count
FROM Appointments
GROUP BY appointment_date
ORDER BY appointment_date;
GO

-- ============================================================
-- Q12. Top doctors by (unique) patient count
-- ============================================================
SELECT TOP 5
    doc.doctor_id,
    doc.first_name + ' ' + doc.last_name AS doctor_name,
    COUNT(DISTINCT a.patient_id) AS unique_patients,
    DENSE_RANK() OVER (ORDER BY COUNT(DISTINCT a.patient_id) DESC) AS patient_rank
FROM Doctors doc
JOIN Appointments a ON a.doctor_id = doc.doctor_id
GROUP BY doc.doctor_id, doc.first_name, doc.last_name
ORDER BY unique_patients DESC;
GO

-- ============================================================
-- Q13. Average hospital stay duration
-- (only counts completed stays, i.e. discharge_date is not null)
-- ============================================================
SELECT
    AVG(DATEDIFF(DAY, admission_date, discharge_date)) AS avg_stay_days
FROM Admissions
WHERE discharge_date IS NOT NULL;
GO

-- ============================================================
-- Q14. Most frequently used room type
-- ============================================================
SELECT TOP 1
    r.room_type,
    COUNT(ad.admission_id) AS times_used
FROM Rooms r
JOIN Admissions ad ON ad.room_id = r.room_id
GROUP BY r.room_type
ORDER BY times_used DESC;
GO

-- ============================================================
-- Q15. Insurance vs Cash payment analysis
-- ============================================================
SELECT
    payment_method,
    COUNT(*) AS payment_count,
    SUM(amount) AS total_revenue,
    AVG(amount) AS avg_payment_amount
FROM Payments
WHERE payment_method IN ('Insurance', 'Cash')
GROUP BY payment_method;
GO

-- ============================================================
-- BONUS: KPI Views (reusable, matches "Views" skill from the brief)
-- ============================================================

-- View: Monthly revenue KPI
CREATE OR ALTER VIEW vw_MonthlyRevenue AS
SELECT
    YEAR(bill_date)  AS bill_year,
    MONTH(bill_date) AS bill_month,
    SUM(total_amount) AS monthly_revenue
FROM Billing
GROUP BY YEAR(bill_date), MONTH(bill_date);
GO

-- View: Doctor performance KPI (appointments + unique patients + revenue via treatments)
CREATE OR ALTER VIEW vw_DoctorPerformance AS
SELECT
    doc.doctor_id,
    doc.first_name + ' ' + doc.last_name AS doctor_name,
    d.department_name,
    COUNT(DISTINCT a.appointment_id) AS total_appointments,
    COUNT(DISTINCT a.patient_id)     AS unique_patients,
    RANK() OVER (ORDER BY COUNT(DISTINCT a.appointment_id) DESC) AS appointment_rank
FROM Doctors doc
JOIN Departments d ON d.department_id = doc.department_id
LEFT JOIN Appointments a ON a.doctor_id = doc.doctor_id
GROUP BY doc.doctor_id, doc.first_name, doc.last_name, d.department_name;
GO

-- View: Room occupancy KPI
CREATE OR ALTER VIEW vw_RoomOccupancy AS
SELECT
    room_type,
    COUNT(*) AS total_rooms,
    SUM(CASE WHEN availability = 'Occupied' THEN 1 ELSE 0 END) AS occupied,
    CAST(SUM(CASE WHEN availability = 'Occupied' THEN 1 ELSE 0 END) AS DECIMAL(10,2))
        * 100.0 / COUNT(*) AS occupancy_pct
FROM Rooms
GROUP BY room_type;
GO

-- Usage:
-- SELECT * FROM vw_MonthlyRevenue ORDER BY bill_year, bill_month;
-- SELECT * FROM vw_DoctorPerformance ORDER BY appointment_rank;
-- SELECT * FROM vw_RoomOccupancy ORDER BY occupancy_pct DESC;


