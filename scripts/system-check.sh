#!/bin/bash

echo "System Report" > report.txt
echo "=============" >> report.txt

echo "" >> report.txt
echo "Date:" >> report.txt
date >> report.txt

echo "" >> report.txt
echo "Disk Usage:" >> report.txt
df -h >> report.txt

# capture disk usage percentage of root filesystem
USAGE=$(df / | tail -1 | awk '{print $5}' | sed 's/%//')

echo "" >> report.txt
echo "Root disk usage: $USAGE%" >> report.txt

echo "DISK_USAGE=$USAGE" >> $GITHUB_OUTPUT

echo "Report generated."