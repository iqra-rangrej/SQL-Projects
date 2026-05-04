🎓 Student Management System (SQL Project)

📌 Project Overview

This project is a Student Management System developed using SQL. It manages data related to students, courses, departments, instructors, and enrollments. The project demonstrates the use of database design, relationships, and SQL queries.

---

🗂️ Database Structure

The project consists of the following tables:

- Students – Stores student details
- Departments – Contains department information
- Courses – Course details with department reference
- Instructors – Instructor details linked to departments
- Enrollments – Connects students with courses

---

🔗 Relationships

- One Department → Many Courses
- One Department → Many Instructors
- One Student → Many Enrollments
- One Course → Many Enrollments

Foreign keys are used to maintain data consistency.

---

⚙️ Features Implemented

- CRUD Operations (Insert, Update, Delete, Select)
- Filtering using WHERE
- Grouping using GROUP BY & HAVING
- Joins:
  - INNER JOIN
  - LEFT JOIN
- Subqueries
- Aggregate Functions:
  - COUNT()
  - AVG()
  - MAX()
- Date Functions
- CASE statements (Senior / Junior classification)
- Window Functions (Running Total)

---

📊 Sample Queries

- Find students enrolled after a specific year
- Count students per course
- Find students enrolled in both SQL and Data Structures
- Get instructor details by department
- Calculate running totals

---

🧪 Dataset

- 100 Students
- 100 Departments
- 100 Courses
- 100 Instructors
- 100+ Enrollments

The dataset is designed to:

- Support complex queries
- Provide realistic relationships
- Ensure meaningful outputs

---

🚀 How to Run

1. Create the database
2. Execute table creation queries
3. Insert data into all tables
4. Run the SQL queries

---

📚 Learning Outcomes

- Understanding relational databases
- Writing SQL queries effectively
- Working with joins and subqueries
- Handling structured data


⭐ Conclusion

This project demonstrates the practical use of SQL in managing structured data and performing advanced queries, which are essential for real-world database applications.