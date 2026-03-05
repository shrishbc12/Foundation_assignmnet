# Task 3 – Database Normalization and Optimization

## Overview
This repository demonstrates database normalization concepts through a **College Club Membership Management** scenario, showing how to eliminate redundancy and improve data integrity using 1NF, 2NF, and 3NF.

**Problem:** A denormalized table storing student club memberships causes:
- Data redundancy
- Update anomalies
- Insertion anomalies
- Deletion anomalies

## Repository Structure
```
task3/
├── README.md # Main documentation
├── Images/
│ ├── er-diagram.png # Entity Relationship Diagram
│ ├── union-query.png # UNION query screenshot
│ ├── union-venn.png # UNION Venn diagram
│ ├── union-result.png # UNION result screenshot
│ ├── intersect-query.png # INTERSECT query screenshot
│ ├── intersect-venn.png # INTERSECT Venn diagram
│ ├── intersect-result.png # INTERSECT result screenshot
│ ├── except-query.png # EXCEPT query screenshot
│ ├── except-venn.png # EXCEPT Venn diagram
│ └── except-result.png # EXCEPT result screenshot
│
├── Output/
│ ├── 1nf-table.txt # 1NF table output
│ ├── Student.txt # Student table output
│ ├── Club.txt # Club table output
│ ├── Membership.txt # Membership table output
│ ├── basic_sql_operation_output.txt # Basic SQL operations output
│ ├── join_operation_output.txt # JOIN operation output
│ └── Set_Operations_output.txt # Set operations output
│
└── sql/
├── create_tables.sql # Create database tables
├── normalization_steps.sql # Normalization process (1NF, 2NF, 3NF)
├── Basic_sql_operations.sql # Basic SQL queries
├── join_queries.sql # JOIN operation queries
└── set_operations.sql # UNION, INTERSECT, EXCEPT queries
```


## Original Problem - Denormalized Table

The original table had the following problems:

| Problem | Example | Impact |
|---------|---------|--------|
| **Data Redundancy** | Asha's name appears twice (Music & Sports club) | Wasted storage, inconsistency risk |
| **Update Anomaly** | Changing Music Club mentor requires updating 3 rows | Inconsistent data if one row missed |
| **Insertion Anomaly** | Can't add Photography Club without a student | Unrealistic restriction |
| **Deletion Anomaly** | Deleting Aman removes Coding Club info completely | Loss of club data |

## Normalization Process

### First Normal Form (1NF)
**Requirement:** All attributes must be atomic (indivisible)

Output file: [`output/1nf-table.txt`](Output/1nf-table.txt)

### Second Normal Form (2NF)
**Requirement:** Must be in 1NF + No partial dependencies

**Solution:** Split into 3 tables

Output files:
- [`output/Student.txt`](Output/Student.txt)
- [`output/Club.txt`](Output/Club.txt)
- [`output/Membership.txt`](Output/Membership.txt)

### Third Normal Form (3NF)
**Requirement:** Must be in 2NF + No transitive dependencies

**Solution:** Add ClubID as primary key

## Entity Relationship Diagram

![ER Diagram](Images/er-diagram.png)

**Relationships:**
- **Student** ────< **Membership** >──── **Club**
- One student can join many clubs
- One club can have many students
- Membership table links them with JoinDate

## SQL Operations

### Basic SQL Operations
Output file: [`Output/basic_sql_operation_output.txt`](Output/basic_sql_operation_output.txt)

Includes:
- NSERT (adding new clubs and students)
- SELECT (viewing all records)

### JOIN Operation
Output file: [`Output/join_operation_output.txt`](Output/join_operation_output.txt)

```sql
SELECT s.StudentName, c.ClubName, m.JoinDate
FROM Membership m
JOIN Student s ON m.StudentID = s.StudentID
JOIN Club c ON m.ClubID = c.ClubID;
ORDER BY s.StudentName, m.JoinDate;
```

## Set Operations with Venn Diagrams
### 1. UNION - Students in Either Club
#### SQL Query
```sql
SELECT s.StudentID, s.StudentName
FROM Student s
JOIN Membership m ON s.StudentID = m.StudentID
JOIN Club c ON m.ClubID = c.ClubID
WHERE c.ClubName = 'Music Club'
UNION 
SELECT s.StudentID, s.StudentName
FROM Student s
JOIN Membership m ON s.StudentID = m.StudentID
JOIN Club c ON m.ClubID = c.ClubID
WHERE c.ClubName = 'Sports Club';
```

#### Venn Diagram
![venn diagram](Images/union-venn.png)

#### Result
![Result](Images/union-result.png)

### 2. INTERSECT - Students in Both Clubs
#### SQL Query
```sql
SELECT s.StudentID, s.StudentName
FROM Student s
JOIN Membership m ON s.StudentID = m.StudentID
JOIN Club c ON m.ClubID = c.ClubID
WHERE c.ClubName = 'Music Club'
INTERSECT
SELECT s.StudentID, s.StudentName
FROM Student s
JOIN Membership m ON s.StudentID = m.StudentID
JOIN Club c ON m.ClubID = c.ClubID
WHERE c.ClubName = 'Sports Club';
```

#### Venn Diagram
![venn diagram](Images/intersect-venn.png)

#### Result
![Result](Images/intersect-result.png)

### 3. EXCEPT - Students in One Club Only
#### SQL Query
```sql
SELECT s.StudentID, s.StudentName
FROM Student s
JOIN Membership m ON s.StudentID = m.StudentID
JOIN Club c ON m.ClubID = c.ClubID
WHERE c.ClubName = 'Music Club'
EXCEPT
SELECT s.StudentID, s.StudentName
FROM Student s
JOIN Membership m ON s.StudentID = m.StudentID
JOIN Club c ON m.ClubID = c.ClubID
WHERE c.ClubName = 'Sports Club';
```

#### Venn Diagram
![venn diagram](Images/except-venn.png)

#### Result
![Result](Images/except-result.png)

