￼ 

🏥 HOSPITAL MANAGEMENT SYSTEM

SQL Server • T-SQL • SSMS • Database Engineering

￼ 
￼ ￼ ￼ 



A complete relational database solution for managing core hospital operations using Microsoft SQL Server Management Studio (SSMS).

🌟 Project Overview

The Hospital Management System (HMS) is a SQL Server database project designed to manage essential hospital operations through a structured relational database.

The system covers:

👤 Patients → 👨‍⚕️ Doctors → 📅 Appointments → 🛏️ Admissions → 🧾 Billing → 💊 Pharmacy

It demonstrates practical database design, normalization, relationships, constraints, T-SQL programming, stored procedures, views, triggers and reporting queries.

🎯 Project Goal

🏥 HOSPITAL │ ┌────────────────┼────────────────┐ │ │ │ 👤 PATIENTS 👨‍⚕️ DOCTORS 👩‍💼 STAFF │ │ └──────────┬─────┘ │ 📅 APPOINTMENTS │ ┌────────┴────────┐ │ │ 🛏️ ADMISSIONS 💊 PRESCRIPTIONS │ │ 🛌 BEDS 💊 MEDICINES │ 🧾 BILLING 

⚡ Features

👤 Patient Management

Patient records

Demographic details

Contact information

Medical information

Database validation

👨‍⚕️ Doctor Management

Doctor master records

Specializations

Department mapping

Appointment scheduling

Doctor workload reporting

📅 Appointment Management

Appointment booking

Status tracking

Scheduled appointments

Completed appointments

Cancelled appointments

Double-booking prevention

🛏️ Admission Management

Ward management

Room management

Bed management

Admission tracking

Discharge tracking

Bed availability

💊 Pharmacy

Medicine inventory

Stock tracking

Medicine pricing

Expiry tracking

Prescription management

🧾 Billing

Patient billing

Service billing

Payment status

Revenue calculations

Daily/monthly reporting

🧠 Database Architecture

flowchart TB A["🏥 HOSPITAL MANAGEMENT SYSTEM"] A --> B["👤 Patient Management"] A --> C["👨‍⚕️ Doctor Management"] A --> D["📅 Appointment Management"] A --> E["🛏️ Admission Management"] A --> F["💊 Pharmacy Management"] A --> G["🧾 Billing Management"] A --> H["🔐 User & Role Management"] B --> D C --> D D --> E D --> F E --> G F --> G H --> B H --> C H --> G 

🗄️ Real Database Relationship Diagram

The ER structure below is based on the entities described in this project rather than a fake placeholder image.

erDiagram PATIENTS { int PatientID PK string Name int Age string Gender string ContactNo } DOCTORS { int DoctorID PK string Name int DepartmentID FK string Specialization } DEPARTMENTS { int DepartmentID PK string DepartmentName } APPOINTMENTS { int AppointmentID PK int PatientID FK int DoctorID FK datetime AppointmentDate string Status } ADMISSIONS { int AdmissionID PK int PatientID FK int DoctorID FK int BedID FK datetime AdmissionDate datetime DischargeDate } WARDS { int WardID PK string WardName } BEDS { int BedID PK int WardID FK string BedStatus } BILLING { int BillID PK int PatientID FK date BillDate decimal TotalAmount string PaymentStatus } MEDICINES { int MedicineID PK string MedicineName int Stock decimal Price date ExpiryDate } PRESCRIPTIONS { int PrescriptionID PK int PatientID FK int DoctorID FK int MedicineID FK int Quantity } STAFF { int StaffID PK string Name string Role string ContactNo } USERS { int UserID PK string Username string Password string Role } DEPARTMENTS ||--o{ DOCTORS : contains PATIENTS ||--o{ APPOINTMENTS : books DOCTORS ||--o{ APPOINTMENTS : handles PATIENTS ||--o{ ADMISSIONS : has DOCTORS ||--o{ ADMISSIONS : manages BEDS ||--o{ ADMISSIONS : assigned WARDS ||--o{ BEDS : contains PATIENTS ||--o{ BILLING : receives PATIENTS ||--o{ PRESCRIPTIONS : receives DOCTORS ||--o{ PRESCRIPTIONS : writes MEDICINES ||--o{ PRESCRIPTIONS : contains 

🔄 Hospital Workflow

flowchart LR P["👤 Patient Registration"] D["👨‍⚕️ Doctor Assignment"] A["📅 Appointment"] C["🩺 Consultation"] R["💊 Prescription"] AD["🛏️ Admission"] B["🧾 Billing"] PAY["💳 Payment"] DIS["🚪 Discharge"] P --> D D --> A A --> C C --> R C --> AD AD --> B R --> B B --> PAY PAY --> DIS 

⚙️ T-SQL Database Layer

The project uses multiple SQL Server features to implement business logic directly inside the database.

┌───────────────────────────────────────────┐ │ APPLICATION LAYER │ │ Future Frontend / Backend │ └─────────────────────┬─────────────────────┘ │ ▼ ┌───────────────────────────────────────────┐ │ SQL SERVER DATABASE │ │ │ │ ┌────────────┐ ┌───────────────────┐ │ │ │ TABLES │ │ CONSTRAINTS │ │ │ └────────────┘ └───────────────────┘ │ │ │ │ ┌────────────┐ ┌───────────────────┐ │ │ │ PROCEDURES │ │ VIEWS │ │ │ └────────────┘ └───────────────────┘ │ │ │ │ ┌────────────┐ ┌───────────────────┐ │ │ │ TRIGGERS │ │ REPORTING QUERIES │ │ │ └────────────┘ └───────────────────┘ │ └───────────────────────────────────────────┘ 

⚙️ Stored Procedures

ProcedurePurposesp_AddPatientInsert a new patientsp_UpdatePatientUpdate patient informationsp_DeletePatientDelete patient recordsp_BookAppointmentBook an appointmentsp_CancelAppointmentCancel an appointmentsp_GenerateBillGenerate billing informationsp_GetDoctorScheduleRetrieve doctor appointments 

Example

EXEC sp_AddPatient @Name = 'John Doe', @Age = 34, @Gender = 'Male', @ContactNo = '9876543210'; 

👁️ Database Views

ViewPurposevw_PatientAppointmentsPatient + doctor + appointment informationvw_ActiveAdmissionsCurrently admitted patientsvw_DailyRevenueDaily hospital revenue SELECT * FROM vw_PatientAppointments WHERE AppointmentDate = CAST(GETDATE() AS DATE); 

🔔 Database Triggers

flowchart TD A["Database Event"] A --> B{"Trigger"} B --> C["🛏️ Update Bed Status"] B --> D["📝 Audit Patient Changes"] B --> E["🚫 Prevent Appointment Overbooking"] C --> F["Database State Updated"] D --> G["Audit Information Stored"] E --> H["Invalid Transaction Blocked"] TriggerTablePurposetrg_UpdateBedStatusAdmissionsMaintains bed availabilitytrg_AuditPatientChangesPatientsRecords patient changestrg_PreventOverbookingAppointmentsPrevents double-booking 

📊 Reporting & Analytics

The database can support operational reporting such as:

flowchart LR DB[("🏥 Hospital Database")] DB --> R1["📊 Department Admissions"] DB --> R2["💰 Monthly Revenue"] DB --> R3["👨‍⚕️ Doctor Workload"] DB --> R4["🛏️ Bed Occupancy"] DB --> R5["📅 Appointment Statistics"] DB --> R6["💊 Medicine Inventory"] 

Example — Monthly Revenue

SELECT FORMAT(BillDate, 'yyyy-MM') AS Month, SUM(TotalAmount) AS Revenue FROM Billing GROUP BY FORMAT(BillDate, 'yyyy-MM') ORDER BY Month; 

Example — Doctor Workload

SELECT doc.Name, COUNT(*) AS AppointmentCount FROM Appointments ap JOIN Doctors doc ON ap.DoctorID = doc.DoctorID WHERE ap.AppointmentDate >= DATEADD(DAY, -7, GETDATE()) GROUP BY doc.Name ORDER BY AppointmentCount DESC; 

🧱 Normalization

The database design follows relational database principles with normalization targeting 3NF.

UNNORMALIZED │ ▼ 1NF │ ▼ 2NF │ ▼ 3NF │ ▼ 🚀 RELATIONAL DATABASE 

Database Integrity

🔑 Primary Keys

🔗 Foreign Keys

✅ NOT NULL

🚫 UNIQUE

✔️ CHECK Constraints

🔄 Referential Integrity

⚙️ Stored Procedures

🔔 Triggers

📁 Project Structure

hospital-management-system/ │ ├── 📂 scripts/ │ ├── 01_create_database.sql │ ├── 02_create_tables.sql │ ├── 03_seed_data.sql │ ├── 04_stored_procedures.sql │ ├── 05_views.sql │ └── 06_triggers.sql │ ├── 📂 docs/ │ ├── er-diagram.png │ ├── database-architecture.png │ ├── hospital-workflow.png │ └── ssms-screenshot.png │ ├── 📂 backup/ │ └── HospitalManagementDB.bak │ ├── 📄 README.md └── 📄 LICENSE 

🚀 Installation

1️⃣ Clone

git clone https://github.com/harshpandey97/hospital-management-system.git cd hospital-management-system 

2️⃣ Open SQL Server Management Studio

Connect to your local SQL Server instance.

3️⃣ Create Database

Run:

scripts/01_create_database.sql 

4️⃣ Create Tables

Run:

scripts/02_create_tables.sql 

5️⃣ Insert Data

Run:

scripts/03_seed_data.sql 

6️⃣ Create Database Logic

Run:

04_stored_procedures.sql 05_views.sql 06_triggers.sql 

7️⃣ Verify

USE HospitalManagementDB; SELECT * FROM Patients; 

🛠️ Technology Stack

TechnologyUsage🗄️ Microsoft SQL ServerDatabase Engine🖥️ SSMSDatabase Development💻 T-SQLQuery & Programming Language📊 SQL ReportingAnalytics & Reporting🧩 Database DiagramsSchema Visualization 

🗺️ Development Roadmap

[x] Database Schema ↓ [x] Tables & Relationships ↓ [x] Stored Procedures ↓ [x] Views ↓ [x] Triggers ↓ [x] Sample Queries ↓ [ ] Query Optimization ↓ [ ] Advanced SQL Security ↓ [ ] SSIS Integration ↓ [ ] SSRS Reporting ↓ [ ] Full-Stack Application 

💡 Future Expansion

The database can serve as the backend foundation for a future:

🏥 HOSPITAL SYSTEM │ ┌────────────┼────────────┐ ▼ ▼ ▼ 🌐 WEB APP 📱 MOBILE APP 📊 BI │ │ │ └────────────┼────────────┘ ▼ 🗄️ SQL SERVER │ ┌─────────────┼─────────────┐ ▼ ▼ ▼ REST API Reporting Analytics 

Potential future integrations:

REST API

Web dashboard

Mobile application

Power BI

SSRS

SSIS

Advanced role-based security

📈 Project Statistics

￼ ￼ ￼ ￼ 

🏆 What This Project Demonstrates

🧑‍💻 DATABASE ENGINEERING │ ┌─────────────────┼─────────────────┐ ▼ ▼ ▼ 🗄️ DATABASE ⚙️ SQL LOGIC 📊 ANALYTICS DESIGN │ │ │ ▼ ▼ ▼ Normalization Procedures Reporting Relationships Views Aggregation Constraints Triggers Business Queries │ │ │ └─────────────────┼─────────────────┘ ▼ 🏥 HOSPITAL HMS 

📬 Contact

Harsh Pandey

￼ ￼ 



￼ 

￼ 

🏥 Built with SQL Server • Designed for Real-World Hospital Operations

Patients • Doctors • Appointments • Admissions • Pharmacy • Billing

⭐ If you found this project useful, consider giving it a star! ⭐

￼ 

