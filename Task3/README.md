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
