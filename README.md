<div align="center">

# 🏥 Hospital Management System (SQL)

### A complete relational database project simulating real-world hospital operations — patient records, doctors, appointments, billing, and pharmacy — built entirely in SQL.

![SQL](https://img.shields.io/badge/SQL-Server-CC2927?style=for-the-badge&logo=microsoftsqlserver&logoColor=white)
![Status](https://img.shields.io/badge/Status-In%20Progress-yellow?style=for-the-badge)
![License](https://img.shields.io/badge/License-MIT-blue?style=for-the-badge)
![Last Updated](https://img.shields.io/badge/Updated-Aug%202026-informational?style=for-the-badge)

</div>

---

## 📌 About the Project

This project models the core database of a hospital — patients, doctors, departments, appointments, prescriptions, and billing — using pure SQL. It's designed to demonstrate practical database design and query-writing skills: schema design, normalization, joins, subqueries, views, indexes, stored procedures, and window functions applied to a realistic healthcare dataset.

No application layer — this is a **SQL-only** project focused on database design, querying, and data analysis.

---

## 🧱 Database Schema

```
patients        → patient_id, name, dob, gender, contact, address, blood_group
doctors         → doctor_id, name, specialization, department_id, contact, experience_years
departments     → department_id, department_name, head_doctor_id, floor
appointments    → appointment_id, patient_id, doctor_id, appointment_date, status
prescriptions   → prescription_id, appointment_id, medicine_name, dosage, duration
billing         → bill_id, patient_id, appointment_id, amount, payment_status, bill_date
rooms           → room_id, room_type, patient_id, admission_date, discharge_date
staff           → staff_id, name, role, department_id, shift
```

> Entity-relationship diagram: `/docs/erd.png` *(add once generated)*

---

## 🗺️ Project Roadmap

| Phase | Topic | Status |
|-------|-------|--------|
| 1 | Schema Design & ERD | ✅ Complete |
| 2 | Table Creation (DDL) & Constraints | ✅ Complete |
| 3 | Sample Data Insertion (DML) | ✅ Complete |
| 4 | Core Queries — Filtering, Sorting, Aggregates | ✅ Complete |
| 5 | Joins Across Departments/Doctors/Patients | ✅ Complete |
| 6 | Subqueries & Nested Queries | 🔄 In Progress |
| 7 | Views (e.g. active admissions, pending bills) | ⬜ Planned |
| 8 | Stored Procedures (e.g. book appointment, discharge patient) | ⬜ Planned |
| 9 | Triggers (e.g. auto-update room status) | ⬜ Planned |
| 10 | Indexes & Query Optimization | ⬜ Planned |
| 11 | Window Functions & Analytics Queries | ⬜ Planned |
| 12 | Final Report / Dashboard Queries | ⬜ Planned |

**Progress:** `█████████░░░░░░░░░░░` **5/12 phases (42%)**

*(Update the checklist and progress bar as phases are completed.)*

---

## 📂 Repository Structure

```
Hospital-Management-System/
│
├── schema/
│   ├── 01_create_tables.sql
│   ├── 02_constraints.sql
│   └── 03_indexes.sql
│
├── data/
│   └── sample_data.sql
│
├── queries/
│   ├── basic_queries.sql
│   ├── joins.sql
│   ├── subqueries.sql
│   ├── views.sql
│   ├── stored_procedures.sql
│   ├── triggers.sql
│   └── analytics_window_functions.sql
│
├── docs/
│   └── erd.png
│
└── README.md
```

---

## 🔍 Sample Queries Included

- List all doctors and the number of patients they've treated
- Find patients with pending bills above a threshold
- Get daily/weekly appointment counts per department
- Identify the most prescribed medicines
- Rank doctors by patient load using window functions
- View currently admitted patients with room details

---

## 🛠️ Tech Stack

- **Database:** SQL Server (SSMS)
- **Concepts covered:** DDL, DML, joins, subqueries, aggregates, views, indexes, stored procedures, triggers, window functions

---

## 🚀 Getting Started

1. Clone the repo
   ```bash
   git clone https://github.com/harshpandey97/Hospital-Management-System.git
   ```
2. Open SSMS (or your SQL client) and run scripts in order:
   - `schema/01_create_tables.sql`
   - `schema/02_constraints.sql`
   - `data/sample_data.sql`
3. Explore query files under `queries/` to see the schema in action.

---

## 📈 What This Project Demonstrates

- Relational schema design & normalization (up to 3NF)
- Real-world entity relationships (one-to-many, many-to-many)
- Query writing across all major SQL categories
- Practical use of views, procedures, and triggers in a healthcare context

---

## 👤 Author

**Harsh Pandey**
Data Analyst | BI Analyst | AI Analyst
🔗 [GitHub](https://github.com/harshpandey97)

---

<div align="center">
<sub>Part of a growing portfolio of SQL and data analytics projects. ⭐ Star this repo if you find it useful!</sub>
</div>
