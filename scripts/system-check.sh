#!/bin/bash

echo "System Report" > report.txt
echo "=============" >> report.txt

echo "" >> report.txt
echo "Date:" >> report.txt
date >> report.txt

echo "" >> report.txt
echo "Kernel Info:" >> report.txt
uname -a >> report.txt

echo "" >> report.txt
echo "Disk Usage:" >> report.txt
df -h >> report.txt

echo "" >> report.txt
echo "Directory Contents:" >> report.txt
ls -la >> report.txt

echo ""
echo "Report generated successfully."