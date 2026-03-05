# Task 2 – Computational Complexity Analysis (P vs NP)

## 📋 Overview
This repository demonstrates computational complexity concepts through a **classroom seating problem**, illustrating the difference between P and NP problems and comparing brute force vs heuristic approaches.

**Problem:** Arrange students in one row such that:
1. Friends are NOT sitting next to each other
2. Students from the same city are NOT sitting next to each other

## 📁 Repository Structure
```
task2/
├── README.md                 # Main documentation
├── images/                 
│   ├── seating-scenario.png      # Classroom seating problem illustration
│   ├── time-complexity-graph.png # Figure 13 - Time Complexity Graph
│   ├── brute-force-code.png      # Figure 14 - Python brute force implementation
│   ├── brute-force-output.png    # Figure 15 - Brute force output
│   ├── heuristic-code.png        # Figure 16 - Heuristic algorithm implementation
│   └── heuristic-output.png      # Figure 17 - Heuristic algorithm output
│
└── Scripts/ 
    ├── Brute-force.py    # Python script for brute force approach
    └── Heuristic.py      # Python script for heuristic approach
```


## 🧠 Understanding P vs NP

### Definitions

| Class | Definition | Example |
|-------|------------|---------|
| **P (Polynomial time)** | Problems that can be SOLVED quickly | Sorting a list, searching a file |
| **NP (Nondeterministic Polynomial time)** | Problems whose answers can be CHECKED quickly, but solving may take exponential time | Sudoku, classroom seating |

### Classroom Seating Scenario

![Classroom Seating Problem](images/seating-scenario.png)

**Why Checking is Easy (P):**
- Teacher simply walks through the row and checks each pair of adjacent students
- Only n-1 pairs to check
- Time grows linearly with number of students: **O(n)**

**Why Finding a Solution is Hard (NP):**
- Number of possible arrangements = **n!** (factorial growth)
- For 10 students: 10! = 3,628,800 arrangements
- For 15 students: 15! = 1.3 trillion arrangements

## ⏱️ Time Complexity Analysis

### Factorial Growth (n!)

The time required grows factorially:
