# Foundation Assignment – Secure Data Exchange, Computational Complexity & Database Normalization

A comprehensive laboratory demonstration of **secure data transmission**, **computational complexity (P vs NP)**, and **database normalization (1NF, 2NF, 3NF)** using **Python, Docker, MySQL, and SQL scripts**. This repository simulates real-world scenarios including secure email/file transmission, classroom seating arrangement challenges, and college club membership management.

---

## Overview

This project contains **three major tasks**:

1. **Task 1 – Secure Data Exchange:** Demonstrates encoding formats (Base64, ASCII, URL, Hex) integrated with HTTPS, TLS, SMTP, REST APIs, and OAuth. Includes Docker-based file/email transmission and security analysis.  
2. **Task 2 – Computational Complexity (P vs NP):** Classroom seating arrangement problem showing brute force vs heuristic approaches. Includes Python scripts and runtime analysis.  
3. **Task 3 – Database Normalization & SQL:** College club membership management database normalized through 1NF, 2NF, 3NF. Includes ER diagram, SQL scripts, JOIN queries, and set operations.

---

## Repository Structure

```
Foundation_assignment/
│
├── LICENSE                          # Root MIT License for all tasks
├── README.md                        # Main project README
│
├── task1/                           # Secure Data Exchange
│   ├── README.md                    # Task 1 documentation
│   ├── Image/                      # Task 1 screenshots
│   │   ├── base64-docker.png
│   │   ├── url-docker.png
│   │   ├── http-post.png
│   │   ├── https-tls-flow.png
│   │   ├── docker-server.png
│   │   ├── docker-client.png
│   │   ├── http-headers.png
│   │   ├── base64-decode.png
│   │   ├── email-base64.png
│   │   ├── smtp-tls.png
│   │   ├── rest-api.png
│   │   ├── oauth-request.png
│   │   └── oauth-response.png
│   │
│   └── Script/                     # Task 1 code
│       ├── Base64_encode.sh
│       ├── Url_Encoding.py
│       └── Docker_file_transfer.cmd
│
├── task2/                           # Computational Complexity
│   ├── README.md                    # Task 2 documentation
│   ├── Images/                      # Task 2 screenshots
│   │   ├── seating-scenario.png
│   │   ├── time-complexity-graph.png
│   │   ├── brute-force-code.png
│   │   ├── brute-force-output.png
│   │   ├── heuristic-code.png
│   │   └── heuristic-output.png
│   │
│   └── Scripts/                     # Task 2 code
│       ├── Brute-force.py
│       └── Heuristic.py
│
└── task3/                           # Database Normalization
    ├── README.md                    # Task 3 documentation
    ├── Images/                       # Task 3 screenshots
    │   ├── er-diagram.png
    │   ├── union-query.png
    │   ├── union-venn.png
    │   ├── union-result.png
    │   ├── intersect-query.png
    │   ├── intersect-venn.png
    │   ├── intersect-result.png
    │   ├── except-query.png
    │   ├── except-venn.png
    │   └── except-result.png
    │
    ├── Output/                       # Task 3 output files
    │   ├── 1nf-table.txt
    │   ├── Student.txt
    │   ├── Club.txt
    │   ├── Membership.txt
    │   ├── basic_sql_operation_output.txt
    │   ├── join_operation_output.txt
    │   └── Set_Operations_output.txt
    │
    └── sql/                          # Task 3 SQL scripts
        ├── create_tables.sql
        ├── normalization_steps.sql
        ├── Basic_sql_operations.sql
        ├── join_queries.sql
        └── set_operations.sql
```
---
## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## Author

**Shrish Budhathoki**  
GitHub: [@shrishbc12](https://github.com/shrishbc12)  
Last Updated: March 2026
