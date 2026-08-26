<div align="center">

# 🏥 Hospital Management System — Using Microsoft SQL Server Management Studio 

### A complete relational database solution for managing hospital operations, built entirely in Microsoft SQL Server Management Studio (SSMS).

[![SQL Server](https://img.shields.io/badge/Microsoft%20SQL%20Server-CC2927?logo=microsoft-sql-server&logoColor=white)](https://www.microsoft.com/en-us/sql-server)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![Issues](https://img.shields.io/github/issues/yourusername/hospital-management-system-sql)](https://github.com/yourusername/hospital-management-system-sql/issues)
[![Stars](https://img.shields.io/github/stars/yourusername/hospital-management-system-sql)](https://github.com/yourusername/hospital-management-system-sql/stargazers)

[Report Bug](../../issues) · [Request Feature](../../issues)

</div>

---

## 📖 Table of Contents

- [About the Project](#-about-the-project)
- [Features](#-features)
- [Tech Stack](#-tech-stack)
- [Database Schema (ER Diagram)](#-database-schema-er-diagram)
- [Tables Overview](#-tables-overview)
- [Getting Started](#-getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Stored Procedures](#-stored-procedures)
- [Views](#-views)
- [Triggers](#-triggers)
- [Sample Queries](#-sample-queries)
- [Project Structure](#-project-structure)
- [Roadmap](#-roadmap)
- [Contributing](#-contributing)
- [License](#-license)
- [Contact](#-contact)

---

## 📋 About the Project

**Hospital Management System (HMS)** is a fully normalized SQL Server database designed and built in **SQL Server Management Studio (SSMS)**. It models core hospital operations — patient records, doctor and staff details, appointments, admissions, billing, and pharmacy inventory — using T-SQL tables, constraints, stored procedures, views, and triggers.

This project is **database-only**: there is no frontend or backend application layer. It's intended for learning, academic submission, database administration practice, or as the foundation for a future full-stack application.

> Replace this section with specifics about your implementation — purpose (academic project, portfolio, production-ready schema), scale, and what makes your schema design notable.

---

## ✨ Features

- 🗄️ **Normalized Relational Schema** (up to 3NF) with proper primary/foreign key relationships
- 👤 **Patient & Doctor Master Tables** with full demographic and contact details
- 📅 **Appointment Scheduling** table with status tracking (Scheduled, Completed, Cancelled)
- 🛏️ **Ward, Room & Bed Management** with admission/discharge tracking
- 💊 **Pharmacy & Medicine Inventory** with stock and expiry tracking
- 🧾 **Billing Table** linked to patients, services, and payment status
- 🔐 **Login/Role Table** for Admin, Doctor, Receptionist access levels
- ⚙️ **Stored Procedures** for CRUD operations (Insert/Update/Delete/Search)
- 👁️ **Views** for commonly-used joined data (e.g., patient appointment summary)
- 🔔 **Triggers** for audit logging and automatic status updates
- 📊 **Sample Queries** for reporting (revenue, occupancy, doctor workload, etc.)
- ✅ **Constraints & Validation** — CHECK, UNIQUE, NOT NULL, FOREIGN KEY enforced at DB level

---

## 🛠️ Tech Stack

| Component | Technology |
|---|---|
| **Database Engine** | Microsoft SQL Server (2019 / 2022) |
| **IDE / Tool** | SQL Server Management Studio (SSMS) |
| **Language** | T-SQL (Transact-SQL) |
| **Diagramming** | SSMS Database Diagrams / dbdiagram.io |

---

## 🗂️ Database Schema (ER Diagram)

<div align="center">

![ER Diagram](https://via.placeholder.com/800x500?text=ER+Diagram+-+Add+your+schema+diagram+here)

</div>

> Export your ER diagram from **SSMS → Database Diagrams**, or generate one via [dbdiagram.io](https://dbdiagram.io), and place the image in `/docs/er-diagram.png`.

---

## 📊 Tables Overview

| Table Name | Description |
|---|---|
| `Patients` | Stores patient personal and medical details |
| `Doctors` | Stores doctor details, specialization, department |
| `Departments` | Hospital departments (Cardiology, Neurology, etc.) |
| `Appointments` | Links patients and doctors with date/time and status |
| `Admissions` | Tracks patient admission, ward, and discharge |
| `Wards` / `Beds` | Ward and bed availability |
| `Billing` | Invoice details linked to patient and services |
| `Medicines` | Pharmacy inventory — stock, price, expiry |
| `Prescriptions` | Medicines prescribed per appointment |
| `Staff` | Non-doctor staff (nurses, receptionists, admin) |
| `Users` | Login credentials and role-based access |

> Update table names/columns to match your actual `CREATE TABLE` scripts.

---

## 🚀 Getting Started

### Prerequisites

- [SQL Server](https://www.microsoft.com/en-us/sql-server/sql-server-downloads) (Developer or Express edition)
- [SQL Server Management Studio (SSMS)](https://learn.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms)
- Windows Authentication or a SQL login with `db_creator` privileges

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/hospital-management-system-sql.git
   cd hospital-management-system-sql
   ```

2. **Open SSMS and connect to your local server instance**

3. **Run the database creation script**
   - Open `scripts/01_create_database.sql` in SSMS
   - Execute (▶️ or `F5`)

4. **Create tables**
   - Open and run `scripts/02_create_tables.sql`

5. **Insert sample/seed data**
   - Open and run `scripts/03_seed_data.sql`

6. **Create stored procedures, views, and triggers**
   - Run `scripts/04_stored_procedures.sql`
   - Run `scripts/05_views.sql`
   - Run `scripts/06_triggers.sql`

7. **Verify installation**
   ```sql
   USE HospitalManagementDB;
   SELECT * FROM Patients;
   ```

> Alternatively, restore from the provided `.bak` backup file via **SSMS → Databases → Restore Database**.

---

## ⚙️ Stored Procedures

| Procedure | Description |
|---|---|
| `sp_AddPatient` | Inserts a new patient record |
| `sp_UpdatePatient` | Updates existing patient details |
| `sp_DeletePatient` | Removes a patient record |
| `sp_BookAppointment` | Books a new appointment for a patient with a doctor |
| `sp_CancelAppointment` | Updates appointment status to Cancelled |
| `sp_GenerateBill` | Calculates and inserts a billing record |
| `sp_GetDoctorSchedule` | Returns a doctor's appointments for a given date |

```sql
EXEC sp_AddPatient
    @Name = 'John Doe',
    @Age = 34,
    @Gender = 'Male',
    @ContactNo = '9876543210';
```

---

## 👁️ Views

| View | Description |
|---|---|
| `vw_PatientAppointments` | Joined view of patients, doctors, and appointment details |
| `vw_ActiveAdmissions` | Currently admitted patients with ward/bed info |
| `vw_DailyRevenue` | Aggregated billing totals by day |

```sql
SELECT * FROM vw_PatientAppointments
WHERE AppointmentDate = CAST(GETDATE() AS DATE);
```

---

## 🔔 Triggers

| Trigger | Table | Purpose |
|---|---|---|
| `trg_UpdateBedStatus` | `Admissions` | Auto-updates bed availability on admission/discharge |
| `trg_AuditPatientChanges` | `Patients` | Logs changes to an audit table |
| `trg_PreventOverbooking` | `Appointments` | Prevents double-booking a doctor's time slot |

---

## 🔍 Sample Queries

```sql
-- Total patients admitted per department
SELECT d.DepartmentName, COUNT(a.AdmissionID) AS TotalAdmissions
FROM Admissions a
JOIN Doctors doc ON a.DoctorID = doc.DoctorID
JOIN Departments d ON doc.DepartmentID = d.DepartmentID
GROUP BY d.DepartmentName;

-- Monthly revenue report
SELECT FORMAT(BillDate, 'yyyy-MM') AS Month, SUM(TotalAmount) AS Revenue
FROM Billing
GROUP BY FORMAT(BillDate, 'yyyy-MM')
ORDER BY Month;

-- Doctors with the most appointments this week
SELECT doc.Name, COUNT(*) AS AppointmentCount
FROM Appointments ap
JOIN Doctors doc ON ap.DoctorID = doc.DoctorID
WHERE ap.AppointmentDate >= DATEADD(DAY, -7, GETDATE())
GROUP BY doc.Name
ORDER BY AppointmentCount DESC;
```

---

## 📁 Project Structure

```
hospital-management-system-sql/
├── scripts/
│   ├── 01_create_database.sql
│   ├── 02_create_tables.sql
│   ├── 03_seed_data.sql
│   ├── 04_stored_procedures.sql
│   ├── 05_views.sql
│   └── 06_triggers.sql
├── docs/
│   └── er-diagram.png
├── backup/
│   └── HospitalManagementDB.bak
├── README.md
└── LICENSE
```

---

## 🗺️ Roadmap

- [x] Core schema design (Patients, Doctors, Appointments)
- [x] Stored procedures for CRUD operations
- [x] Views for reporting
- [x] Triggers for auditing and business rules
- [ ] Indexing & query performance optimization
- [ ] Role-based SQL security (logins, users, permissions)
- [ ] SSIS package for data import/export
- [ ] SSRS reports integration

See [open issues](../../issues) for a full list of proposed enhancements.

---

## 🤝 Contributing

Contributions are welcome!

1. Fork the project
2. Create your feature branch (`git checkout -b feature/NewProcedure`)
3. Commit your changes (`git commit -m 'Add sp_GenerateInvoice procedure'`)
4. Push to the branch (`git push origin feature/NewProcedure`)
5. Open a Pull Request

---

## 📄 License

Distributed under the MIT License. See [`LICENSE`](LICENSE) for details.

---

## 📬 Contact

**Your Name** — youremail@example.com

Project Link: [https://github.com/yourusername/hospital-management-system-sql](https://github.com/yourusername/hospital-management-system-sql)

<div align="center">

⭐ **If you found this project useful, consider giving it a star!** ⭐

</div>
