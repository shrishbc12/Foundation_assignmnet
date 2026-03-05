# Task 1 – Secure Data Exchange

## Overview
Demonstrates how **encoding formats** ensure safe data transmission across modern web protocols while highlighting security risks.

**Encoding formats:** Base64, ASCII, URL Encoding, Hex  
**Protocols:** HTTPS, TLS, SMTP, REST API, OAuth  

## Features
- Encoding demonstrations via Python  
- File/email transmission between Docker containers  
- Diagrams of encoding & protocol flow  
- Security analysis and mitigation strategies  

### Task Structure
```
Task1/
├── README.md                 # Main documentation 
├── image/                 
│   ├── base64-docker.png     # Figure 1
│   ├── url-docker.png        # Figure 2
│   ├── http-post.png         # Figure 3
│   ├── https-tls-flow.png    # Figure 4
│   ├── docker-server.png     # Figure 5
│   ├── docker-client.png     # Figure 6
│   ├── http-headers.png      # Figure 7
│   ├── base64-decode.png     # Figure 8
│   ├── email-base64.png      # Figure 9
│   ├── smtp-tls.png          # Figure 10
│   ├── rest-api.png          # Figure 11
│   ├── oauth-request.png     # Figure 12
│   └── oauth-response.png    # Figure 13
│
└── Script/ 
  ├── Base64_encode.sh # Bash script for Base64 encoding
  ├── Url_Encoding.py # Python script for URL encoding
  └── Docker_file_transfer.cmd # file transfer in docker
```

## Encoding Formats Covered

### 1. ASCII Encoding
- Standard character encoding system for text data
- Assigns numerical codes to characters, digits, and symbols
- **Use Case**: Basic text representation across platforms

### 2. Base64 Encoding
- Converts binary data into text format
- Enables transmission over text-based protocols
- **Use Case**: Email attachments, API authentication

### 3. URL Encoding
- Converts characters into safe URL format
- Replaces unsafe characters with % followed by hex digits
- **Use Case**: Web forms, HTTP requests

---

## Protocol Integration

| Protocol | Role | Encoding Integration |
|----------|------|---------------------|
| **HTTPS** | Secure HTTP communication | Base64-encoded credentials in headers |
| **TLS** | Transport layer security | Encrypts encoded payloads |
| **SMTP** | Email transmission | Base64 for attachments |
| **REST API** | Web service communication | JSON with Base64 encoding |
| **OAuth** | Authorization framework | Token encoding |

---

## Docker Demo: File Transmission Between Containers (CMD)

This demonstration shows secure file transfer between Docker containers using direct CMD commands:

### Step 1: Setting up file server in Docker container

Open **Command Prompt (CMD)** and run:

**Server Container Setup:**
```bash
# Create network
docker network create secure-net
# Commands I used to create and serve file
docker run -it --name server-container ubuntu bash
echo "Hello from Docker Container" > myfile.txt
python3 -m http.server 8081
```

### Step 2: Client Container Download:
```bash
# Commands I used to download from another container
docker run -it --name client-container ubuntu bash
apt-get update && apt-get install wget
wget http://<server-ip>:8081/myfile.txt
```

## Security Risks I Identified
Based on my implementation, these are the key risks:

- **Base64 Malware Hiding:**  Attackers can encode malicious scripts to bypass scanners
- **URL Encoding Exploits:** Double encoding can bypass WAF filters
- **Chained Encoding:** Combining multiple encodings hides malicious intent

---

## Mitigation Strategies Implemented
- Context-Aware Decoding: Validate after decoding at application entry points
- TLS Encryption: All transmissions encrypted
- Secure API Gateway: Centralized validation of REST API payloads

---

## License
This project is licensed under the MIT License - see the [root LICENSE file](../LICENSE) for details.

---

## References from My Assignment
- Cloudflare. (2025). What is HTTPS?
- Cloudflare. (2025). What is TLS?
- GeeksforGeeks. (2023). SMTP and REST API
- Okta. (2024). What is OAuth 2.0?
- HackerOne. (2024). URL Encoding Security
