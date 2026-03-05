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
├── images/
│ ├── denormalized-table.png # Figure 18 - Original denormalized table
│ ├── 1nf-table.png # Figure 19 - First Normal Form
│ ├── 2nf-tables.png # Figures 20-24 - Second Normal Form tables
│ ├── 3nf-tables.png # Figures 25-29 - Third Normal Form tables
│ ├── er-diagram.png # Figure 30 - Entity Relationship Diagram
│ ├── student-table.png # Figure 31 - Student table output
│ ├── club-table.png # Figure 32 - Club table output
│ ├── join-query.png # Figure 33 - JOIN operation output
│ ├── union-query.png # Figure 34 - UNION query
│ ├── union-venn.png # Figure 35 - UNION Venn diagram
│ ├── union-result.png # Figure 36 - UNION result
│ ├── intersect-query.png # Figure 37 - INTERSECT query
│ ├── intersect-venn.png # Figure 38 - INTERSECT Venn diagram
│ ├── intersect-result.png # Figure 39 - INTERSECT result
│ ├── except-query.png # Figure 40 - EXCEPT query
│ ├── except-venn.png # Figure 41 - EXCEPT Venn diagram
│ └── except-result.png # Figure 42 - EXCEPT result
│
└── Scripts/
├── normalize.sql # SQL scripts for normalization
└── queries.sql # SQL queries (JOIN, UNION, INTERSECT, EXCEPT)
```
