# Automatic Log Archiver

## Overview

Automatic Log Archiver is a Linux Bash Script project that automates log management tasks.

The script performs the following operations:

1. Scan log files in a directory.
2. Extract ERROR messages.
3. Compress logs into a `.tar.gz` archive.
4. Remove logs older than 7 days.

This project simulates a real-world log retention workflow commonly used by DevOps Engineers, SREs, and Data Engineers.

---

## Project Structure

```text
log-archiver/
│
├── logs/
│   ├── app.log
│   ├── api.log
│   └── db.log
│
├── archive/
│
├── scripts/
│   ├── archive_logs.sh
│   └── errors.log
│
└── README.md
```

---

## Technologies Used

* Linux
* Bash
* grep
* tar
* find

---

## How to Run

Move to the scripts directory:

```bash
cd scripts
```

Grant execute permission:

```bash
chmod +x archive_logs.sh
```

Run the script:

```bash
./archive_logs.sh
```

---

## Example Output

### Extracted Errors

```text
../logs/api.log:2025-06-08 ERROR Internal Server Error
../logs/app.log:2025-06-08 ERROR Database Timeout
../logs/db.log:2025-06-08 ERROR Connection Lost
```

### Archive File

```text
archive/logs_20260608.tar.gz
```

---

## Script Explanation

### Extract ERROR Logs

```bash
grep "ERROR" $LOG_DIR/*.log > errors.log
```

Search all log files and save ERROR messages into errors.log.

---

### Compress Logs

```bash
tar -czf archive.tar.gz *.log
```

Create a compressed archive containing log files.

---

### Delete Old Logs

```bash
find $LOG_DIR -name "*.log" -mtime +7 -delete
```

Delete log files that are older than 7 days.

---

## Learning Outcomes

Through this project, I practiced:

* Bash scripting
* Linux file management
* Log processing
* Archive management
* Log retention policies

```
```
